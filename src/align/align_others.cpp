
void SeqAlign::align(stream<ap_uint<2>, query_length>& query_stream,
    stream<ap_uint<2>, ref_length>& reference_stream,
    stream<tbp_t, ref_length + query_length>& tb_stream,
    type_t& dummy)
{
    // TBContainer<TB_LINE_SIZE> container;
    // write_lock<tbp_line_t> *wt_acc_arr[PE_num];  // this is used to point to the arrays of write accessors
    // stream_of_blocks<tbp_line_t> tb_ptr_stream;  // This is used to hold the output from the PEs

    TraceBack tracer;
    tbp_t tb_out[ref_length + query_length]; // FIXME: Passed by reference in the input

    type_t temp = 0;

    ShiftRegister<type_t, 2> phoney_pe;
    ShiftRegister<type_t, 1> phoney_pe_Ix;

    stream<ap_fixed<M, N>, ref_length> last_pe_score[2];
    stream<ap_fixed<M, N>, ref_length> last_pe_score_Ix[2];
    stream<ap_fixed<M, N>, ref_length> ab_reference_stream[2];

    // Use to trace the global maximium
    int max_pe_idx = 0;
    int max_pe_cnt = 0;
    type_t max_score = 0;

    for (int i = 0; i < ref_length; i++)
    {
        last_pe_score[0].write(zero_fp);
        last_pe_score_Ix[0].write(zero_fp);
        ab_reference_stream[0].write(reference_stream.read());
    }

    // write_lock<tbp_line_t> _write_acc(tb_ptr_stream);
    // wt_acc_arr[0] = &_write_acc;

    ShiftRegister<ap_uint<2>, PE_num> query;     // each PE process a element in query
    ShiftRegister<ap_uint<2>, PE_num> reference; // create local reference

    LinearPE PE_group[PE_num];

    // iterating through the chunks of the larger dp matrix
compute_block:
    for (int qq = 0; qq < query_chunks + 1; qq++)
    {

        int predicate = 1;

        // beginning loops
    compute_row_pre:
        for (int ii = 0; ii < PE_num - 1; ii++)
        {
#pragma HLS PIPELINE II = 1
            reference.shift_right(ab_reference_stream[qq % 2].read());   // update reference shift register
            ab_reference_stream[(qq + 1) % 2].write(reference[0]); // copy the reference stream

            phoney_pe.shift_right(last_pe_score[qq % 2].read());
            phoney_pe_Ix.shift_right(last_pe_score_Ix[qq % 2].read());

            if (qq == query_chunks)
            {
                if (ii < extra_PE_num)
                {
                    query.shift_right(query_stream.read());
                }
                else
                {
                    query.shift_right(0);
                }
            }
            else
            {
                query.shift_right(query_stream.read());
            }

            PE_group[0].compute(reference[0], query[0], phoney_pe);
            // PE_group[0].compute(reference[0], query[0], phoney_pe, phoney_pe_Ix);

            // ap_uint<2> reference_read = reference.read();
            // local_reference.shift_right(reference_read);  // shift one element to the local reference for each wavefront

        pe_expand_pre:
            for (int kk = 1; kk < PE_num; kk++)
            {
#pragma HLS UNROLL
                PE_group[kk].compute(reference[kk], query[kk], PE_group[kk - 1].score_reg);
                // PE_group[kk].compute(reference[kk], query[kk], PE_group[kk-1].score_reg,
                // 	PE_group[kk-1].Ix_reg);
            }

            for (int kk = 0; kk < PE_num; kk++)
            {
#pragma HLS unroll
                if (kk < predicate)
                {
                    tracer.set_ptr(PE_group[kk].update(), kk);
                }
            }

            ++predicate;
        }

        // FIXME: This is a hack to make the last PE to work
        if (qq == query_chunks)
        {
            if (PE_num - 1 == extra_PE_num)
            {
                query.shift_right(query_stream.read());
            }
            else
            {
                query.shift_right(0);
            }
        }
        else
        {
            query.shift_right(query_stream.read());
        }

        // shifting while no predicate change is needed
    compute_row_mid:
        for (int ii = PE_num - 1; ii < ref_length; ii++)
        { // ii index wavefront

#pragma HLS PIPELINE II = 1

            // local_reference.shift_right(reference.read());  // shift one element to the local reference for each wavefront
            reference.shift_right(ab_reference_stream[qq % 2].read());   // update reference shift register
            ab_reference_stream[(qq + 1) % 2].write(reference[0]); // copy the reference stream

            phoney_pe.shift_right(last_pe_score[qq % 2].read());
            phoney_pe_Ix.shift_right(last_pe_score_Ix[qq % 2].read());

            PE_group[0].compute(reference[0], query[0], phoney_pe);
            // PE_group[0].compute(reference[0], query[0], phoney_pe, phoney_pe_Ix);

            // temp = last_pe_score.read();

        pe_expand_mid:
            for (int kk = 1; kk < PE_num; kk++)
            { // for each PE, indexed by kk
#pragma HLS UNROLL
                PE_group[kk].compute(reference[kk], query[kk], PE_group[kk - 1].score_reg);
                // PE_group[kk].compute(reference[kk], query[kk], PE_group[kk].score_reg,
                // 	PE_group[kk - 1].Ix_reg);
            }

            for (int kk = 0; kk < PE_num; kk++)
            {
#pragma HLS unroll
                tracer.set_ptr(PE_group[kk].update(), kk);
            }

            last_pe_score[(qq + 1) % 2].write(PE_group[PE_num - 1].score_reg[0]);
            last_pe_score_Ix[(qq + 1) % 2].write(PE_group[PE_num - 1].score_reg[0]);
            // last_pe_score_Ix[(qq+1) % 2].write(PE_group[PE_num - 1].Ix_reg[0]);

            // pack from PENUM - (PE_NUM-1) mod PE_NUM
        }

        // initialize the max scores
        max_pe_cnt = PE_group[0].pe_max_score_cnt;
        max_pe_idx = 0;
        max_score = PE_group[0].pe_max_score;

        predicate = 1;

    compute_row_post:
        for (int ii = ref_length; ii < PE_num + ref_length - 1; ii++)
        {
#pragma HLS PIPELINE II = 1

            reference.shift_right(0);
            query.shift_right(0);

            // NOTICE: in the post row computation, it's pretty sure that we don't need PE 0 to do anything.

        pe_expand_post:
            for (int kk = 1; kk < PE_num; kk++)
            { // for each PE, indexed by kk
#pragma HLS UNROLL
                PE_group[kk].compute(reference[kk], query[kk], PE_group[kk - 1].score_reg);
                // PE_group[kk].compute(reference[kk], query[kk], PE_group[kk-1].score_reg,
                // 	PE_group[kk - 1].Ix_reg);
            }

            for (int kk = 0; kk < PE_num; kk++)
            {
#pragma HLS UNROLL
                if (kk >= predicate)
                {
                    tracer.set_ptr(PE_group[kk].update(), kk);
                }
            }

            // finding the global max score on the fly
            if (max_score < PE_group[predicate].pe_max_score)
            {
                max_score = PE_group[predicate].pe_max_score;
                max_pe_cnt = PE_group[predicate].pe_max_score_cnt;
                max_pe_idx = predicate;
            }

            ++predicate;

            last_pe_score[(qq + 1) % 2].write(PE_group[PE_num - 1].score_reg[0]);
            last_pe_score_Ix[(qq + 1) % 2].write(PE_group[PE_num - 1].score_reg[0]);
            // last_pe_score_Ix[(qq+1) % 2].write(PE_group[PE_num - 1].Ix_reg[0]);
        }
    }

    // compute the max location
    int max_row = max_pe_cnt / ref_length * PE_num + max_pe_idx;
    int max_col = max_pe_cnt % ref_length;
    tracer.traceback(tb_stream, max_row, max_col);

    // Clean up the FIFO
    // Need to clean the rest of the FIFO or the CoSim would hang
    for (int i = 0; i < ref_length; i++)
    {
#pragma HLS unroll
        last_pe_score[(query_chunks) % 2].read();
        last_pe_score_Ix[(query_chunks) % 2].read();
        ab_reference_stream[(query_chunks) % 2].read();
    }

    dummy = max_score;
}