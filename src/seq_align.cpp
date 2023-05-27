#include <hls_stream.h>
#include <ap_int.h>
#include <ap_fixed.h>

#include "params.h"
#include "seq_align_multiple.h"
#include "seq_align.h"
#include "PE.h"
#include "shift_reg.h"
#include "loop_counter.h"
#include <hls_streamofblocks.h>
#include "traceback.h"

#ifdef DEBUG
#include "debug.h"
#endif // DEBUG


using namespace hls;

void SeqAlign::align(stream<ap_uint<2>, query_length> &query_stream,
                     stream<ap_uint<2>, ref_length> &reference_stream,
                     stream<tbp_t, ref_length + query_length> &tb_stream,
                     type_t &dummy)
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
            reference.shift(ab_reference_stream[qq % 2].read());   // update reference shift register
            ab_reference_stream[(qq + 1) % 2].write(reference[0]); // copy the reference stream

            phoney_pe.shift(last_pe_score[qq % 2].read());
            phoney_pe_Ix.shift(last_pe_score_Ix[qq % 2].read());

            if (qq == query_chunks)
            {
                if (ii < extra_PE_num)
                {
                    query.shift(query_stream.read());
                }
                else
                {
                    query.shift(0);
                }
            }
            else
            {
                query.shift(query_stream.read());
            }

            PE_group[0].compute(reference[0], query[0], phoney_pe);
            // PE_group[0].compute(reference[0], query[0], phoney_pe, phoney_pe_Ix);

            // ap_uint<2> reference_read = reference.read();
            // local_reference.shift(reference_read);  // shift one element to the local reference for each wavefront

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
                query.shift(query_stream.read());
            }
            else
            {
                query.shift(0);
            }
        }
        else
        {
            query.shift(query_stream.read());
        }

    // shifting while no predicate change is needed
    compute_row_mid:
        for (int ii = PE_num - 1; ii < ref_length; ii++)
        { // ii index wavefront

#pragma HLS PIPELINE II = 1

            // local_reference.shift(reference.read());  // shift one element to the local reference for each wavefront
            reference.shift(ab_reference_stream[qq % 2].read());   // update reference shift register
            ab_reference_stream[(qq + 1) % 2].write(reference[0]); // copy the reference stream

            phoney_pe.shift(last_pe_score[qq % 2].read());
            phoney_pe_Ix.shift(last_pe_score_Ix[qq % 2].read());

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

            reference.shift(0);
            query.shift(0);

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

void AlignGlobalLinear::align(hls::stream<char_t, query_length> &query_stream, hls::stream<char_t, ref_length> &reference_stream, type_t *dummy)
{
    ap_uint<2> traceback[inflated_query_length][ref_length]; // declare traceback matrix
    type_t dp_mem[3][PE_num];
    type_t last_pe_score[ref_length];

    ap_uint<2> final_traceback[ref_length + inflated_query_length];
    type_t ultimate_max_score = 0;
    type_t ultimate_col_value = 0;
    type_t ultimate_row_value = 0;

    ShiftRegister<char_t, PE_num> query; // declare shift register for query
    ShiftRegister<char_t, PE_num> reference;

    char_t local_reference[ref_length]; // a group of PE process all references by shifting

// partition array for better access
#pragma HLS ARRAY_PARTITION variable = dp_mem dim = 0 complete
#pragma HLS ARRAY_PARTITION variable = traceback dim = 1 cyclic factor = 32
#pragma HLS ARRAY_PARTITION variable = local_reference cyclic dim = 1 factor = 32

local_dpmem_loop:
    for (int gg = 0; gg < 3; gg++)
    {
        for (int ij = 0; ij < PE_num; ij++)
        {
            dp_mem[gg][ij] = 0;
        }
    }

    for (int ip = 0; ip < ref_length; ip++)
    {

        last_pe_score[ip] = (ip + 1) * mismatch_score;
    }

    for (int i = 0; i < inflated_query_length + ref_length; i++)
    {

        final_traceback[i] = 0;
    }

    // initialize the traceback matrix to 0
    for (int pp = 0; pp < inflated_query_length; pp++)
    {
        for (int rr = 0; rr < ref_length; rr++)
        {
            // #pragma HLS UNROLL
            traceback[pp][rr] = 0;
        }
    }

    for (int i = 0; i < ref_length; i++)
    {
        local_reference[i] = reference_stream.read();
    }

    type_t temp = 0;

    int fix = 0;

    PEGlobalLinear PE_group[PE_num];

kernel:
    for (int qq = 0; qq < inflated_query_chunks; qq++)
    {
        if (extra_PE_num != 0 && qq == query_chunks)
        { // last query block of corner case scenario

            const char_t zero_value = 0;

            for (int i = 0; i < extra_PE_num; i++)
            {
#pragma HLS PIPELINE II = 1
                query.shift(query_stream.read());
            }

            for (int i = 0; i < PE_num - extra_PE_num; i++)
            { // since all values won't be available for last query block of corner case, push 0
#pragma HLS PIPELINE II = 1
                query.shift(zero_value);
            }
        }
        else
        {
            for (int i = 0; i < PE_num; i++)
            {
#pragma HLS PIPELINE II = 1
                query.shift(query_stream.read());
            }
        }

    kernel1:
        for (int ii = 0; ii < (PE_num + ref_length - 1); ii++)
        {

#pragma HLS PIPELINE II = 1

            // shifting wavefronts
        cbuff:
            for (int ix = 0; ix < PE_num; ix++)
#pragma HLS UNROLL
            {
                dp_mem[0][ix] = (ii == 0) ? zero_fp : dp_mem[1][ix];
                dp_mem[1][ix] = (ii == 0) ? zero_fp : dp_mem[2][ix];
                dp_mem[2][ix] = zero_fp;
            }

            dp_mem[1][0] = (ii == 0) ? mismatch_score * (fix + 1) : (int)dp_mem[1][0];
            temp = (ii == 0) ? mismatch_score * fix : (int)temp;

        peloop:
            for (int kk = 0; kk < PE_num; kk++)
            {
#pragma HLS UNROLL

                if ((ii - kk) >= 0 && (ii - kk) < ref_length)
                {
                    if (kk == 0)
                    {
                        PE_group[kk].compute(local_reference[ii], query[kk], last_pe_score[ii], dp_mem[1][0], temp, &dp_mem[2][0],
                           &traceback[kk + qq * PE_num][ii]);

                        temp = last_pe_score[ii];
                    }
                    else
                    {
                        if ((ii - kk) == 0)
                        {
                            PE_group[kk].compute(local_reference[0], query[kk], dp_mem[1][kk - 1], mismatch_score * (kk + fix + 1), mismatch_score * (kk + fix), &dp_mem[2][kk],
                               &traceback[kk + qq * PE_num][ii - kk]);
                        }
                        else
                        {
                            PE_group[kk].compute(local_reference[ii - kk], query[kk], dp_mem[1][kk - 1], dp_mem[1][kk], dp_mem[0][kk - 1], &dp_mem[2][kk],
                               &traceback[kk + qq * PE_num][ii - kk]);
                        }
                    }

                    if (ii > PE_num - 2 && kk == PE_num - 1)
                    {
                        last_pe_score[ii - PE_num + 1] = dp_mem[2][PE_num - 1];
                    }
                }
            }
        }
        fix = fix + PE_num;
    }

    type_t count = 0;
    ultimate_max_score = dp_mem[2][PE_num - 1];
    ultimate_row_value = query_length - 1;
    ultimate_col_value = ref_length - 1;

// traceback logic
traceback_logic:
    while (ultimate_row_value > -1 && ultimate_col_value > -1)
    {

        if (traceback[ultimate_row_value][ultimate_col_value] == 1)
        {

            final_traceback[count] = 1;
            count = count + 1;
            ultimate_row_value = ultimate_row_value - 1;
            ultimate_col_value = ultimate_col_value - 1;
        }
        else if (traceback[ultimate_row_value][ultimate_col_value] == 2)
        {

            final_traceback[count] = 2;
            count = count + 1;
            ultimate_col_value = ultimate_col_value - 1;
        }
        else if (traceback[ultimate_row_value][ultimate_col_value] == 3)
        {

            final_traceback[count] = 3;
            count = count + 1;
            ultimate_row_value = ultimate_row_value - 1;
        }

        if ((ultimate_row_value + 1) == 0 || (ultimate_col_value + 1) == 0)
            break;
    }

    *dummy = ultimate_max_score;
}

void AlignGlobalAffine::align(hls::stream<char_t, query_length> &query_stream, hls::stream<char_t, ref_length> &reference_stream, type_t *dummy)
{
    ap_uint<3> traceback[inflated_query_length][ref_length]; // declare traceback matrix
    type_t dp_mem[3][PE_num];
    type_t Iy_mem[2][PE_num];
    type_t Ix_mem[2][PE_num];
    type_t last_pe_score[ref_length];
    type_t last_pe_scoreIx[ref_length];

    ap_uint<3> final_traceback[ref_length + inflated_query_length];
    type_t ultimate_max_score = 0;
    type_t ultimate_col_value = 0;
    type_t ultimate_row_value = 0;

    ShiftRegister<char_t, PE_num> query; // declare shift register for query
    ShiftRegister<char_t, PE_num> reference;

    char_t local_reference[ref_length]; // a group of PE process all references by shifting

// partition array for better access
#pragma HLS ARRAY_PARTITION variable = dp_mem dim = 0 complete
#pragma HLS ARRAY_PARTITION variable = Iy_mem dim = 0 complete
#pragma HLS ARRAY_PARTITION variable = Ix_mem dim = 0 complete
#pragma HLS ARRAY_PARTITION variable = traceback dim = 1 cyclic factor = 32
#pragma HLS ARRAY_PARTITION variable = local_reference cyclic dim = 1 factor = 32

local_dpmem_loop:
    for (int gg = 0; gg < 3; gg++)
    {
        for (int ij = 0; ij < PE_num; ij++)
        {
            dp_mem[gg][ij] = 0;
        }
    }

local_Ixmem_loop:
    for (int mm = 0; mm < 2; mm++)
    {
        for (int nn = 0; nn < PE_num; nn++)
        {
            Ix_mem[mm][nn] = 0;
            Iy_mem[mm][nn] = 0;
        }
    }

    for (int ip = 0; ip < ref_length; ip++)
    {

        last_pe_score[ip] = opening_score - ip;
        last_pe_scoreIx[ip] = opening_score - ip;
    }

    for (int i = 0; i < inflated_query_length + ref_length; i++)
    {

        final_traceback[i] = 0;
    }

    // initialize the traceback matrix to 0
    for (int pp = 0; pp < inflated_query_length; pp++)
    {
        for (int rr = 0; rr < ref_length; rr++)
        {
            // #pragma HLS UNROLL
            traceback[pp][rr] = 0;
        }
    }

    for (int i = 0; i < ref_length; i++)
    {
        local_reference[i] = reference_stream.read();
    }


    type_t temp = 0;

    int fix = 0;

    PEGlobalAffine PE_group[PE_num];

kernel:
    for (int qq = 0; qq < inflated_query_chunks; qq++)
    {
        if (extra_PE_num != 0 && qq == query_chunks)
        { // last query block of corner case scenario

            const char_t zero_value = 0;

            for (int i = 0; i < extra_PE_num; i++)
            {
#pragma HLS PIPELINE II = 1
                query.shift(query_stream.read());
            }

            for (int i = 0; i < PE_num - extra_PE_num; i++)
            { // since all values won't be available for last query block of corner case, push 0
#pragma HLS PIPELINE II = 1
                query.shift(zero_value);
            }
        }
        else
        {
            for (int i = 0; i < PE_num; i++)
            {
#pragma HLS PIPELINE II = 1
                query.shift(query_stream.read());
            }
        }

    kernel1:
        for (int ii = 0; ii < (PE_num + ref_length - 1); ii++)
        {

#pragma HLS PIPELINE II = 1

            // shifting wavefronts
        cbuff:
            for (int ix = 0; ix < PE_num; ix++)
#pragma HLS UNROLL
            {
                dp_mem[0][ix] = (ii == 0) ? zero_fp : dp_mem[1][ix];
                dp_mem[1][ix] = (ii == 0) ? zero_fp : dp_mem[2][ix];
                dp_mem[2][ix] = zero_fp;
                Ix_mem[0][ix] = (ii == 0) ? zero_fp : Ix_mem[1][ix];
                Ix_mem[1][ix] = zero_fp;
                Iy_mem[0][ix] = (ii == 0) ? zero_fp : Iy_mem[1][ix];
                Iy_mem[1][ix] = zero_fp;
            }

            dp_mem[1][0] = (ii == 0) ? opening_score - fix : (int)dp_mem[1][0];
            Iy_mem[0][0] = (ii == 0) ? opening_score - fix : (int)Iy_mem[0][0];
            temp = (ii == 0 & fix != 0) ? opening_score - fix + 1 : (int)temp;

        peloop:
            for (int kk = 0; kk < PE_num; kk++)
            {
#pragma HLS UNROLL

                if ((ii - kk) >= 0 && (ii - kk) < ref_length)
                {
                    if (kk == 0)
                    {
                        PE_group[kk].compute(local_reference[ii], query[kk], last_pe_score[ii], dp_mem[1][0], temp, &dp_mem[2][0],
                           last_pe_scoreIx[ii], &Ix_mem[1][0], Iy_mem[0][0], &Iy_mem[1][0],
                           &traceback[kk + qq * PE_num][ii]);

                        temp = last_pe_score[ii];
                    }
                    else
                    {
                        if ((ii - kk) == 0)
                        {
                            PE_group[kk].compute(local_reference[0], query[kk], dp_mem[1][kk - 1], opening_score - fix - kk, opening_score - fix - kk + 1, &dp_mem[2][kk],
                               Ix_mem[0][kk - 1], &Ix_mem[1][kk], mismatch_score * (kk + fix + 1), &Iy_mem[1][kk],
                               &traceback[kk + qq * PE_num][ii - kk]);
                        }
                        else
                        {
                            PE_group[kk].compute(local_reference[ii - kk], query[kk], dp_mem[1][kk - 1], dp_mem[1][kk], dp_mem[0][kk - 1], &dp_mem[2][kk],
                               Ix_mem[0][kk - 1], &Ix_mem[1][kk], Iy_mem[0][kk], &Iy_mem[1][kk],
                               &traceback[kk + qq * PE_num][ii - kk]);
                        }
                    }

                    if (ii > PE_num - 2 && kk == PE_num - 1)
                    {
                        last_pe_score[ii - PE_num + 1] = dp_mem[2][PE_num - 1];
                        last_pe_scoreIx[ii - PE_num + 1] = Ix_mem[1][PE_num - 1];
                    }
                }
            }
        }
        fix = fix + PE_num;
    }

    type_t count = 0;
    ultimate_max_score = dp_mem[2][PE_num - 1];
    ultimate_row_value = query_length - 1;
    ultimate_col_value = ref_length - 1;

    // traceback logic
traceback_logic:
    while (ultimate_row_value > -1 && ultimate_col_value > -1)
    {

        if (traceback[ultimate_row_value][ultimate_col_value] == 1)
        {

            final_traceback[count] = 1;
            count = count + 1;
            ultimate_row_value = ultimate_row_value - 1;
            ultimate_col_value = ultimate_col_value - 1;
        }
        else if (traceback[ultimate_row_value][ultimate_col_value] == 2)
        {

            final_traceback[count] = 2;
            count = count + 1;
            ultimate_col_value = ultimate_col_value - 1;
        }
        else if (traceback[ultimate_row_value][ultimate_col_value] == 3)
        {

            final_traceback[count] = 3;
            count = count + 2;
            ultimate_col_value = ultimate_col_value - 2;
        }
        else if (traceback[ultimate_row_value][ultimate_col_value] == 4)
        {

            final_traceback[count] = 4;
            count = count + 1;
            ultimate_row_value = ultimate_row_value - 1;
        }

        else if (traceback[ultimate_row_value][ultimate_col_value] == 5)
        {

            final_traceback[count] = 5;
            count = count + 2;
            ultimate_row_value = ultimate_row_value - 2;
        }

        if ((ultimate_row_value + 1) == 0 || (ultimate_col_value + 1) == 0)
            break;
    }

    *dummy = ultimate_max_score;

    /* printf("\n printing dp matrix\n");

    for (int r = 0; r < inflated_query_length; r ++)
     {
         for (int s = 0; s < ref_length; s ++){

             printf("%d\t", dp_matrix[r][s]);
         }
         printf("\n");
     }

    printf("\n printing tb matrix\n");

    for (int r = 0; r < inflated_query_length; r ++)
     {
         for (int s = 0; s < ref_length; s ++){

             printf("%d\t", traceback[r][s]);
         }
         printf("\n");
     }

    printf("printing traceback pointers as output alignment\n");

    for(int i = 0; i < inflated_query_length+ref_length;i ++){

        printf("%d ", final_traceback[i]);
    }
    printf("\n");*/
}


void AlignLocalLinear::align(hls::stream<char_t, query_length> &query_stream,
                             hls::stream<char_t, ref_length> &reference_stream,
                             hls::stream<tbp_t, ref_length + inflated_query_length> &traceback_out,
#ifdef DEBUG
                             Debugger &helper,
#endif
                             type_t *dummy){


    type_t temp = 0;
    tbp_t traceback[inflated_query_length][ref_length]; // declare traceback matrix
    type_t dp_mem[3][PE_num];
    type_t last_pe_score[ref_length];

    type_t max_score[PE_num];
    type_t temp_score = 0;
    type_t max_row_value[PE_num];
    type_t max_col_value[PE_num];
    tbp_t final_traceback[ref_length + inflated_query_length];

    type_t max = 0;
    type_t index = 0;
    type_t ultimate_max_score = 0;
    type_t ultimate_col_value = 0;
    type_t ultimate_row_value = 0;

    ShiftRegister<char_t, PE_num> query; // declare shift register for query
    ShiftRegister<char_t, PE_num> reference;

    char_t local_reference[ref_length]; // a group of PE process all references by shifting

// partition array for better access
#pragma HLS ARRAY_PARTITION variable = dp_mem dim = 0 complete
#pragma HLS ARRAY_PARTITION variable = traceback dim = 1 cyclic factor = 32
#pragma HLS ARRAY_PARTITION variable = local_reference cyclic dim = 1 factor = 32
#pragma HLS ARRAY_PARTITION variable = max_score dim = 0 complete
#pragma HLS ARRAY_PARTITION variable = max_row_value dim = 0 complete
#pragma HLS ARRAY_PARTITION variable = max_col_value dim = 0 complete

local_dpmem_loop:
    for (int gg = 0; gg < 3; gg++)
    {
        for (int ij = 0; ij < PE_num; ij++)
        {
            dp_mem[gg][ij] = 0;
        }
    }

    for (int ip = 0; ip < ref_length; ip++)
    {
        last_pe_score[ip] = 0;
    }

    for (int i = 0; i < inflated_query_length + ref_length; i++)
    {
        final_traceback[i] = 0;
    }

    for (int i = 0; i < PE_num; i++)
    {

        max_score[i] = 0;
        max_row_value[i] = 0;
        max_col_value[i] = 0;
    }

    // initialize the traceback matrix to 0
    for (int pp = 0; pp < inflated_query_length; pp++)
    {
        for (int rr = 0; rr < ref_length; rr++)
        {
            // #pragma HLS UNROLL
            traceback[pp][rr] = 0;
        }
    }

    for (int i = 0; i < ref_length; i++)
    {
        local_reference[i] = reference_stream.read();
#ifdef DEBUG
        helper.data.ref.push(local_reference[i]);
#endif
    }

    PELocalLinear PE_group[PE_num];

// iterating through the chunks of the larger dp matrix
kernel:
    for (int qq = 0; qq < inflated_query_chunks; qq++)
    {
        if (corner_case && (qq == query_chunks))
        { // last query block of corner case scenario

            const char_t zero_value = 0;

            for (int i = 0; i < extra_PE_num; i++)
            {
#pragma HLS PIPELINE II = 1
                query.shift(query_stream.read());
#ifdef DEBUG
                helper.data.query.push(query[0]);
#endif
            }

            for (int i = 0; i < PE_num - extra_PE_num; i++)
            { // since all values won't be available for last query block of corner case, push 0
#pragma HLS PIPELINE II = 1
                query.shift(zero_value);
#ifdef DEBUG
                helper.data.query.push(zero_value);
#endif
            }
        }
        else
        {
            for (int i = 0; i < PE_num; i++)
            {
#pragma HLS PIPELINE II = 1
                query.shift(query_stream.read());
#ifdef DEBUG
                helper.data.query.push(query[0]);
#endif
            }
        }

    // iterating through every wavefront
    kernel1:
        for (int ii = 0; ii < (PE_num + ref_length - 1); ii++)
        {

#pragma HLS PIPELINE II = 1

        // shifting wavefronts
        cbuff:
            for (int ix = 0; ix < PE_num; ix++)
#pragma HLS UNROLL
            {
                dp_mem[0][ix] = (ii == 0) ? zero_fp : dp_mem[1][ix];
                dp_mem[1][ix] = (ii == 0) ? zero_fp : dp_mem[2][ix];
                dp_mem[2][ix] = zero_fp;
            }

            temp = (ii == 0) ? zero_fp : temp;

        // computing scores
        peloop:
            for (int kk = 0; kk < PE_num; kk++)
            {
#pragma HLS UNROLL

                if ((ii - kk) >= 0 && (ii - kk) < ref_length)
                {
                    if (kk == 0)
                    {
                        PE_group[kk].compute(local_reference[ii], query[kk], last_pe_score[ii], dp_mem[1][kk], temp, &dp_mem[2][kk],
                           &traceback[kk + qq * PE_num][ii - kk]);

                        temp = last_pe_score[ii];
                    }
                    else
                    {
                        PE_group[kk].compute(local_reference[ii - kk], query[kk], dp_mem[1][kk - 1], dp_mem[1][kk],
                           dp_mem[0][kk - 1], &dp_mem[2][kk],
                           &traceback[kk + qq * PE_num][ii - kk]);
                    }

                    if (ii > PE_num - 2 && kk == PE_num - 1)
                    {
                        last_pe_score[ii - PE_num + 1] = dp_mem[2][PE_num - 1];
                    }

                    // keeping track of max scores and its position by every wavefront
                    type_t temp1 = kk + qq * PE_num;
                    type_t temp2 = ii - kk;

                    temp_score = (max_score[kk] < dp_mem[2][kk]) ? dp_mem[2][kk] : max_score[kk];
                    max_row_value[kk] = (max_score[kk] < dp_mem[2][kk]) ? temp1 : max_row_value[kk];
                    max_col_value[kk] = (max_score[kk] < dp_mem[2][kk]) ? temp2 : max_col_value[kk];
                    max_score[kk] = temp_score;
                }
            }
        }
        // find max score out of all PEs local max score
        for (int r = 0; r < PE_num; r++)
        {
#pragma HLS PIPELINE II = 1
            if (max_score[r] > max)
            {
                max = max_score[r];
                index = r;
            }
        }
        // finding the max score and its rows and columns out of all query blocks
        if (ultimate_max_score < max)
        {
            ultimate_max_score = max;
            ultimate_row_value = max_row_value[index];
            ultimate_col_value = max_col_value[index];
        }
    }

    type_t count = ref_length + inflated_query_length;



// traceback logic
traceback_logic:
    while (ultimate_row_value > -1 && ultimate_col_value > -1)
    {
        tbp_t tbptr = traceback[ultimate_row_value][ultimate_col_value]; 
        if (tbptr == TB_DIAG){
            ultimate_row_value = ultimate_row_value - 1;
            ultimate_col_value = ultimate_col_value - 1;
        }
        else if (tbptr == TB_LEFT){
            ultimate_col_value = ultimate_col_value - 1;
        }
        else if (tbptr == TB_UP){
            ultimate_row_value = ultimate_row_value - 1;
        }

        final_traceback[count] = tbptr;
        count -= 1;
#ifdef DEBUG
        helper.data.traceback.push(tbptr);
#endif

        if ((ultimate_row_value + 1) == 0 || (ultimate_col_value + 1) == 0)
            break;
    }

#ifdef DEBUG
    helper.print_block_traceback_matrix(traceback, inflated_query_length, ref_length);

    helper.print_query();
    helper.print_reference();

    helper.print_block_traceback_linear();

#endif

    *dummy = ultimate_max_score;
}

void AlignLocalAffine::align(hls::stream<char_t, query_length> &query_stream, hls::stream<char_t, ref_length> &reference_stream, type_t *dummy)
{
    type_t temp = 0;
    ap_uint<3> traceback[inflated_query_length][ref_length]; // declare traceback matrix
    type_t dp_mem[3][PE_num];
    type_t Iy_mem[2][PE_num];
    type_t Ix_mem[2][PE_num];
    type_t last_pe_score[ref_length];
    type_t last_pe_scoreIx[ref_length];

    type_t max_score[PE_num];
    type_t temp_score = 0;
    type_t max_row_value[PE_num];
    type_t max_col_value[PE_num];
    ap_uint<3> final_traceback[ref_length + inflated_query_length];

    type_t max = 0;
    type_t index = 0;
    type_t ultimate_max_score = 0;
    type_t ultimate_col_value = 0;
    type_t ultimate_row_value = 0;

    ShiftRegister<char_t, PE_num> query; // declare shift register for query
    ShiftRegister<char_t, PE_num> reference;

    char_t local_reference[ref_length]; // a group of PE process all references by shifting

// partition array for better access
#pragma HLS ARRAY_PARTITION variable = dp_mem dim = 0 complete
#pragma HLS ARRAY_PARTITION variable = Iy_mem dim = 0 complete
#pragma HLS ARRAY_PARTITION variable = Ix_mem dim = 0 complete
#pragma HLS ARRAY_PARTITION variable = traceback dim = 1 cyclic factor = 32
#pragma HLS ARRAY_PARTITION variable = local_reference cyclic dim = 1 factor = 32
#pragma HLS ARRAY_PARTITION variable = max_score dim = 0 complete
#pragma HLS ARRAY_PARTITION variable = max_row_value dim = 0 complete
#pragma HLS ARRAY_PARTITION variable = max_col_value dim = 0 complete

local_dpmem_loop:
    for (int gg = 0; gg < 3; gg++)
    {
        for (int ij = 0; ij < PE_num; ij++)
        {
            dp_mem[gg][ij] = 0;
        }
    }

local_Ixmem_loop:
    for (int mm = 0; mm < 2; mm++)
    {
        for (int nn = 0; nn < PE_num; nn++)
        {
            Ix_mem[mm][nn] = 0;
            Iy_mem[mm][nn] = 0;
        }
    }

    for (int ip = 0; ip < ref_length; ip++)
    {
        last_pe_score[ip] = 0;
        last_pe_scoreIx[ip] = 0;
    }

    for (int i = 0; i < inflated_query_length + ref_length; i++)
    {
        final_traceback[i] = 0;
    }

    for (int i = 0; i < PE_num; i++)
    {

        max_score[i] = 0;
        max_row_value[i] = 0;
        max_col_value[i] = 0;
    }

    // initialize the traceback matrix to 0
    for (int pp = 0; pp < inflated_query_length; pp++)
    {
        for (int rr = 0; rr < ref_length; rr++)
        {
            // #pragma HLS UNROLL
            traceback[pp][rr] = 0;
        }
    }

    for (int i = 0; i < ref_length; i++)
    {
        local_reference[i] = reference_stream.read();
    }

    PELocalAffine PE_group[PE_num];

// iterating through the chunks of the larger dp matrix
kernel:
    for (int qq = 0; qq < inflated_query_chunks; qq++)
    {
        if (extra_PE_num != 0 && qq == query_chunks)
        { // last query block of corner case scenario

            const char_t zero_value = 0;

            for (int i = 0; i < extra_PE_num; i++)
            {
#pragma HLS PIPELINE II = 1
                query.shift(query_stream.read());
            }

            for (int i = 0; i < PE_num - extra_PE_num; i++)
            { // since all values won't be available for last query block of corner case, push 0
#pragma HLS PIPELINE II = 1
                query.shift(zero_value);
            }
        }
        else
        {
            for (int i = 0; i < PE_num; i++)
            {
#pragma HLS PIPELINE II = 1
                query.shift(query_stream.read());
            }
        }

    // iterating through every wavefront
    kernel1:
        for (int ii = 0; ii < (PE_num + ref_length - 1); ii++)
        {

#pragma HLS PIPELINE II = 1

        // shifting wavefronts
        cbuff:
            for (int ix = 0; ix < PE_num; ix++)
#pragma HLS UNROLL
            {
                dp_mem[0][ix] = (ii == 0) ? zero_fp : dp_mem[1][ix];
                dp_mem[1][ix] = (ii == 0) ? zero_fp : dp_mem[2][ix];
                dp_mem[2][ix] = zero_fp;
                Ix_mem[0][ix] = (ii == 0) ? zero_fp : Ix_mem[1][ix];
                Ix_mem[1][ix] = zero_fp;
                Iy_mem[0][ix] = (ii == 0) ? zero_fp : Iy_mem[1][ix];
                Iy_mem[1][ix] = zero_fp;
            }

            temp = (ii == 0) ? zero_fp : temp;

        // computing scores
        peloop:
            for (int kk = 0; kk < PE_num; kk++)
            {
#pragma HLS UNROLL

                if ((ii - kk) >= 0 && (ii - kk) < ref_length)
                {
                    if (kk == 0)
                    {
                        PE_group[kk].compute(local_reference[ii], query[kk], last_pe_score[ii], dp_mem[1][kk], temp, &dp_mem[2][kk],
                           last_pe_scoreIx[ii], &Ix_mem[1][kk], Iy_mem[0][kk], &Iy_mem[1][kk],
                           &traceback[kk + qq * PE_num][ii - kk]);

                        temp = last_pe_score[ii];
                    }
                    else
                    {
                        PE_group[kk].compute(local_reference[ii - kk], query[kk], dp_mem[1][kk - 1], dp_mem[1][kk],
                           dp_mem[0][kk - 1], &dp_mem[2][kk], Ix_mem[0][kk - 1], &Ix_mem[1][kk], Iy_mem[0][kk],
                           &Iy_mem[1][kk], &traceback[kk + qq * PE_num][ii - kk]);
                    }

                    if (ii > PE_num - 2 && kk == PE_num - 1)
                    {
                        last_pe_score[ii - PE_num + 1] = dp_mem[2][PE_num - 1];
                        last_pe_scoreIx[ii - PE_num + 1] = Ix_mem[1][PE_num - 1];
                    }

                    // keeping track of max scores and its position by every wavefront
                    type_t temp1 = kk + qq * PE_num;
                    type_t temp2 = ii - kk;

                    temp_score = (max_score[kk] < dp_mem[2][kk]) ? dp_mem[2][kk] : max_score[kk];
                    max_row_value[kk] = (max_score[kk] < dp_mem[2][kk]) ? temp1 : max_row_value[kk];
                    max_col_value[kk] = (max_score[kk] < dp_mem[2][kk]) ? temp2 : max_col_value[kk];
                    max_score[kk] = temp_score;
                }
            }
        }
        // find max score out of all PEs local max score
        for (int r = 0; r < PE_num; r++)
        {
#pragma HLS PIPELINE II = 1
            if (max_score[r] > max)
            {
                max = max_score[r];
                index = r;
            }
        }
        // finding the max score and its rows and columns out of all query blocks
        if (ultimate_max_score < max)
        {
            ultimate_max_score = max;
            ultimate_row_value = max_row_value[index];
            ultimate_col_value = max_col_value[index];
        }
    }

    type_t count = 0;

// traceback logic
traceback_logic:
    while (ultimate_row_value > -1 && ultimate_col_value > -1)
    {

        if (traceback[ultimate_row_value][ultimate_col_value] == 1)
        {

            final_traceback[count] = 1;
            count = count + 1;
            ultimate_row_value = ultimate_row_value - 1;
            ultimate_col_value = ultimate_col_value - 1;
        }
        else if (traceback[ultimate_row_value][ultimate_col_value] == 2)
        {

            final_traceback[count] = 2;
            count = count + 1;
            ultimate_col_value = ultimate_col_value - 1;
        }
        else if (traceback[ultimate_row_value][ultimate_col_value] == 3)
        {

            final_traceback[count] = 3;
            count = count + 2;
            ultimate_col_value = ultimate_col_value - 2;
        }
        else if (traceback[ultimate_row_value][ultimate_col_value] == 4)
        {

            final_traceback[count] = 4;
            count = count + 1;
            ultimate_row_value = ultimate_row_value - 1;
        }

        else if (traceback[ultimate_row_value][ultimate_col_value] == 5)
        {

            final_traceback[count] = 5;
            count = count + 2;
            ultimate_row_value = ultimate_row_value - 2;
        }

        if ((ultimate_row_value + 1) == 0 || (ultimate_col_value + 1) == 0)
            break;
    }

    *dummy = ultimate_max_score;
}

// >>> Banded Alignment Not Completely Implemented Yet >>>

// void AlignBanded::align(hls::stream<char_t, query_length> &query_stream, hls::stream<char_t, ref_length> &reference_stream, type_t *dummy)
// {
//     type_t temp = 0;
//     ap_uint<2> traceback[inflated_query_length][ref_length]; // declare traceback matrix
//     type_t dp_mem[3][PE_num];
//     type_t Iy_mem[2][PE_num];
//     type_t Ix_mem[2][PE_num];
//     type_t last_pe_score[ref_length];
//     type_t last_pe_scoreIx[ref_length];

//     type_t max_score[PE_num];
//     type_t temp_score = 0;
//     type_t max_row_value[PE_num];
//     type_t max_col_value[PE_num];
//     ap_uint<2> final_traceback[ref_length + inflated_query_length];
//     type_t max = 0;
//     type_t index = 0;
//     type_t ultimate_max_score = 0;
//     type_t ultimate_col_value = 0;
//     type_t ultimate_row_value = 0;

//     ShiftRegister<char_t, PE_num> query; // declare shift register for query
//     ShiftRegister<char_t, PE_num> reference;

//     char_t local_reference[ref_length]; // a group of PE process all references by shifting

// // partition array for better access
// #pragma HLS ARRAY_PARTITION variable = dp_mem dim = 0 complete
// #pragma HLS ARRAY_PARTITION variable = Iy_mem dim = 0 complete
// #pragma HLS ARRAY_PARTITION variable = Ix_mem dim = 0 complete
// #pragma HLS ARRAY_PARTITION variable = traceback dim = 1 cyclic factor = 32
// #pragma HLS ARRAY_PARTITION variable = local_reference cyclic dim = 1 factor = 32
// #pragma HLS ARRAY_PARTITION variable = max_score dim = 0 complete
// #pragma HLS ARRAY_PARTITION variable = max_row_value dim = 0 complete
// #pragma HLS ARRAY_PARTITION variable = max_col_value dim = 0 complete

// local_dpmem_loop:
//     for (int gg = 0; gg < 3; gg++)
//     {
//         for (int ij = 0; ij < PE_num; ij++)
//         {
//             dp_mem[gg][ij] = 0;
//         }
//     }

// local_Ixmem_loop:
//     for (int mm = 0; mm < 2; mm++)
//     {
//         for (int nn = 0; nn < PE_num; nn++)
//         {
//             Ix_mem[mm][nn] = 0;
//             Iy_mem[mm][nn] = 0;
//         }
//     }

//     for (int ip = 0; ip < ref_length; ip++)
//     {
//         last_pe_score[ip] = 0;
//         last_pe_scoreIx[ip] = 0;
//     }

//     for (int i = 0; i < inflated_query_length + ref_length; i++)
//     {
//         final_traceback[i] = 0;
//     }

//     for (int i = 0; i < PE_num; i++)
//     {
//         max_score[i] = 0;
//         max_row_value[i] = 0;
//         max_col_value[i] = 0;
//     }

//     // initialize the traceback matrix to 0
//     for (int pp = 0; pp < inflated_query_length; pp++)
//     {
//         for (int rr = 0; rr < ref_length; rr++)
//         {
//             // #pragma HLS UNROLL
//             traceback[pp][rr] = 0;
//         }
//     }

//     for (int i = 0; i < ref_length; i++)
//     {
//         local_reference[i] = reference_stream.read();
//     }

//     int fix = 0;
//     int incr = 0;
//     int incr2 = 0;
//     int incr3 = 0;
//     int itrend = PE_num + 2 * (PE_num - 1) - 1;



// kernel:
//     for (int qq = 0; qq < inflated_query_chunks; qq++)
//     {
//         incr2 = 0;
//         incr3 = 0;

//         if (extra_PE_num != 0 && qq == query_chunks)
//         { // last query block of corner case scenario

//             const char_t zero_value = 0;

//             for (int i = 0; i < extra_PE_num; i++)
//             {
// #pragma HLS PIPELINE II = 1
//                 query.shift(query_stream.read());
//             }

//             for (int i = 0; i < PE_num - extra_PE_num; i++)
//             { // since all values won't be available for last query block of corner case, push 0
// #pragma HLS PIPELINE II = 1
//                 query.shift(zero_value);
//             }
//         }
//         else
//         {
//             for (int i = 0; i < PE_num; i++)
//             {
// #pragma HLS PIPELINE II = 1
//                 query.shift(query_stream.read());
//             }
//         }

//     // kernel computation
//     kernel1:
//         for (int ii = 0; ii < (ref_length + PE_num - 1); ii++)
//         { // loop for each diagonals

// #pragma HLS PIPELINE II = 1

//         // shifting wavefronts
//         cbuff:
//             for (int ix = 0; ix < PE_num; ix++)
// #pragma HLS UNROLL
//             {
//                 dp_mem[0][ix] = (ii == 0) ? zero_fp : dp_mem[1][ix];
//                 dp_mem[1][ix] = (ii == 0) ? zero_fp : dp_mem[2][ix];
//                 dp_mem[2][ix] = zero_fp;
//                 Ix_mem[0][ix] = (ii == 0) ? zero_fp : Ix_mem[1][ix];
//                 Ix_mem[1][ix] = zero_fp;
//                 Iy_mem[0][ix] = (ii == 0) ? zero_fp : Iy_mem[1][ix];
//                 Iy_mem[1][ix] = zero_fp;
//             }

//             incr = (ii % 2 == 0 && ii >= PE_num) ? incr + 1 : incr;
//             incr2 = (qq > 0 && ii % 2 == 0 && ii > ((qq - 1) * PE_num)) ? incr2 + 1 : incr2;
//             incr3 = (qq > 0 && ii % 2 == 0 && ii >= (qq - 1) * PE_num + 2 * PE_num) ? incr3 + 1 : incr3;

//         peloop:
//             for (int kk = 0; kk < PE_num; kk++)
//             { // chain of PEs computing together

// #pragma HLS UNROLL

//                 if (qq == 0) // first part of dp matrix
//                 {
//                     if ((ii - kk) >= 0 && (ii - kk) < ref_length)
//                     { // we don't need all PEs for every diagonal

//                         if (ii < PE_num)
//                         {
//                             if (kk == 0)
//                             { // for first PE

//                                 PE(local_reference[ii - kk], query[kk], 0, dp_mem[1][kk], 0, &dp_mem[2][kk],
//                                    0, &Ix_mem[1][kk], Iy_mem[0][kk], &Iy_mem[1][kk], &tb[kk + fix][ii - kk],
//                                    &dp_matrix[kk + fix][ii - kk]);
//                             }
//                             else
//                             {
//                                 PE(local_reference[ii - kk], query[kk], dp_mem[1][kk - 1], dp_mem[1][kk], dp_mem[0][kk - 1], &dp_mem[2][kk],
//                                    Ix_mem[0][kk - 1], &Ix_mem[1][kk], Iy_mem[0][kk], &Iy_mem[1][kk], &tb[kk + fix][ii - kk],
//                                    &dp_matrix[kk + fix][ii - kk]);
//                             }
//                         }
//                         else
//                         { // FIXME
//                             if (kk >= incr)
//                             {
//                                 PE(local_reference[ii - kk], query[kk], dp_mem[1][kk - 1], dp_mem[1][kk], dp_mem[0][kk - 1], &dp_mem[2][kk],
//                                    Ix_mem[0][kk - 1], &Ix_mem[1][kk], Iy_mem[0][kk], &Iy_mem[1][kk],
//                                    &tb[kk + fix][ii - kk], &dp_matrix[kk + fix][ii - kk]);
//                             }
//                         }
//                     }
//                 }

//                 else if (qq == (query_chunks - 1)) // last part of dp matrix
//                 {
//                     if ((ii - kk) >= 0 && (ii - kk) < ref_length)
//                     { // we don't need all PEs for every diagonal

//                         if (ii >= (qq - 1) * PE_num && ii < (qq - 1) * PE_num + 2 * (PE_num - 1) && kk <= incr2)
//                         {
//                             if (kk == 0)
//                             { // for first PE

//                                 if (ii == 0)
//                                 { // for subsequent query blocks, for first PE in first diagonal, up_prev is taken from previous query block, diag_prev and left_prev values are zero
//                                     PE(local_reference[ii - kk], query[kk], last_pe_score[0], 0, 0, &dp_mem[2][kk],
//                                        last_pe_scoreIx[0], &Ix_mem[1][kk], 0, &Iy_mem[1][kk],
//                                        &tb[kk + fix][ii - kk], &dp_matrix[kk + fix][ii - kk]);

//                                     temp = last_pe_score[0];
//                                 }
//                                 else
//                                 { // for subsequent query blocks, for first PE in next diagonals, up_prev and diag_prev are taken from previous query block, left_prev taken from previous computed diagonal in same query block
//                                     PE(local_reference[ii - kk], query[kk], last_pe_score[ii], dp_mem[1][kk], temp /*last_pe_score[ii-1]*/, &dp_mem[2][kk],
//                                        last_pe_scoreIx[ii], &Ix_mem[1][kk], Iy_mem[0][kk], &Iy_mem[1][kk],
//                                        &tb[kk + fix][ii - kk], &dp_matrix[kk + fix][ii - kk]);

//                                     temp = last_pe_score[ii]; // up_prev value will become diag_prev value for next diagonal computation
//                                 }
//                             }
//                             else
//                             {
//                                 PE(local_reference[ii - kk], query[kk], dp_mem[1][kk - 1], dp_mem[1][kk], dp_mem[0][kk - 1], &dp_mem[2][kk],
//                                    Ix_mem[0][kk - 1], &Ix_mem[1][kk], Iy_mem[0][kk], &Iy_mem[1][kk],
//                                    &tb[kk + fix][ii - kk], &dp_matrix[kk + fix][ii - kk]);
//                             }
//                         }

//                         else if (ii >= (qq - 1) * PE_num + 2 * (PE_num - 1))
//                         { // FIXME
//                             PE(local_reference[ii - kk], query[kk], dp_mem[1][kk - 1], dp_mem[1][kk], dp_mem[0][kk - 1], &dp_mem[2][kk],
//                                Ix_mem[0][kk - 1], &Ix_mem[1][kk], Iy_mem[0][kk], &Iy_mem[1][kk],
//                                &tb[kk + fix][ii - kk], &dp_matrix[kk + fix][ii - kk]);
//                         }
//                     }
//                 }

//                 else // middle part of the dp matrix
//                 {
//                     if ((ii - kk) >= 0 && (ii - kk) < ref_length)
//                     { // we don't need all PEs for every diagonal

//                         if (ii >= (qq - 1) * PE_num && ii < (qq - 1) * PE_num + 2 * (PE_num - 1) && kk <= incr2)
//                         {
//                             if (kk == 0)
//                             { // for first PE

//                                 if (ii == 0)
//                                 { // for subsequent query blocks, for first PE in first diagonal, up_prev is taken from previous query block, diag_prev and left_prev values are zero
//                                     PE(local_reference[ii - kk], query[kk], last_pe_score[0], 0, 0, &dp_mem[2][kk],
//                                        last_pe_scoreIx[0], &Ix_mem[1][kk], 0, &Iy_mem[1][kk],
//                                        &tb[kk + fix][ii - kk], &dp_matrix[kk + fix][ii - kk]);

//                                     temp = last_pe_score[0];
//                                 }
//                                 else
//                                 { // for subsequent query blocks, for first PE in next diagonals, up_prev and diag_prev are taken from previous query block, left_prev taken from previous computed diagonal in same query block
//                                     PE(local_reference[ii - kk], query[kk], last_pe_score[ii], dp_mem[1][kk], temp /*last_pe_score[ii-1]*/, &dp_mem[2][kk],
//                                        last_pe_scoreIx[ii], &Ix_mem[1][kk], Iy_mem[0][kk], &Iy_mem[1][kk],
//                                        &tb[kk + fix][ii - kk], &dp_matrix[kk + fix][ii - kk]);

//                                     temp = last_pe_score[ii]; // up_prev value will become diag_prev value for next diagonal computation
//                                 }
//                             }
//                             else
//                             {
//                                 PE(local_reference[ii - kk], query[kk], dp_mem[1][kk - 1], dp_mem[1][kk], dp_mem[0][kk - 1], &dp_mem[2][kk],
//                                    *Ix_mem[0][kk - 1], &Ix_mem[1][kk], Iy_mem[0][kk], &Iy_mem[1][kk],
//                                    &tb[kk + fix][ii - kk], &dp_matrix[kk + fix][ii - kk]);
//                             }
//                         }

//                         else if (ii >= (qq - 1) * PE_num + 2 * (PE_num - 1) && ii < (qq - 1) * PE_num + 2 * PE_num)
//                         { // FIXME

//                             PE(local_reference[ii - kk], query[kk], dp_mem[1][kk - 1], dp_mem[1][kk], dp_mem[0][kk - 1], &dp_mem[2][kk],
//                                Ix_mem[0][kk - 1], &Ix_mem[1][kk], Iy_mem[0][kk], &Iy_mem[1][kk],
//                                &tb[kk + fix][ii - kk], &dp_matrix[kk + fix][ii - kk]);
//                         }
//                         else if (ii >= (qq - 1) * PE_num + 2 * PE_num)
//                         { // FIXME

//                             if (kk >= incr3)
//                             {
//                                 PE(local_reference[ii - kk], query[kk], dp_mem[1][kk - 1], dp_mem[1][kk], dp_mem[0][kk - 1], &dp_mem[2][kk],
//                                    Ix_mem[0][kk - 1], &Ix_mem[1][kk], Iy_mem[0][kk], &Iy_mem[1][kk],
//                                    &tb[kk + fix][ii - kk], &dp_matrix[kk + fix][ii - kk]);
//                             }
//                         }
//                     }
//                 }

//                 if (ii > PE_num - 2 && kk == PE_num - 1)
//                 { // for each query block, last PE scores for each diagonal will be saved and used by next query block

//                     last_pe_score[ii - PE_num + 1] = dp_mem[2][PE_num - 1];
//                 }
//             }
//         }

//         fix = fix + PE_num;
//     }

//     // storing row and col of max_score for originating the traceback
//     ap_int<16> max_score = dp_matrix[max_row_value][max_col_value];

//     *dummy = max_score; // final alignment score
// }
