void AlignGlobalLinear::align(hls::stream<char_t, query_length>& query_stream, hls::stream<char_t, ref_length>& reference_stream, type_t* dummy)
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
                query.shift_right(query_stream.read());
            }

            for (int i = 0; i < PE_num - extra_PE_num; i++)
            { // since all values won't be available for last query block of corner case, push 0
#pragma HLS PIPELINE II = 1
                query.shift_right(zero_value);
            }
        }
        else
        {
            for (int i = 0; i < PE_num; i++)
            {
#pragma HLS PIPELINE II = 1
                query.shift_right(query_stream.read());
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
