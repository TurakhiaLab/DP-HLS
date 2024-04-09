#include "local_linear_baseline.h"

void PE(type_char local_ref_val, type_char local_query_val, type_t up_prev, type_t left_prev, type_t diag_prev,
        type_t *score,
        ap_uint<2> *traceback)
{

#pragma HLS inline

    const type_t temp = 0;

    if (local_query_val != 0)
    {
        const type_t a1 = left_prev + linear_gap_penalty;
        const type_t a3 = up_prev + linear_gap_penalty;

        const type_t match = (local_query_val == local_ref_val) ? diag_prev + match_score : diag_prev + mismatch_score;

        const type_t max_value = (((a1 > a3) ? a1 : a3) > match) ? ((a1 > a3) ? a1 : a3) : match;

        *traceback = (max_value == match) ? 1 : ((max_value == a1) ? 2 : ((max_value == a3) ? 3 : 0));

        // printf("local_query is %c and local_ref is %c, up_prev is %d, left_prev is %d,diag_prev is % d, max_score is % d\n ", local_query_val, local_ref_val, up_prev, left_prev, diag_prev, max_value);

        *score = (max_value < temp) ? temp : max_value;
    }
    else
    { // when local query is 0 (in case of corner case), PE will give out 0 as output without any computation

        *score = temp;
        *traceback = temp;
    }
}


void seq_align(hls::stream<type_char, query_length> &query_stream, hls::stream<type_char, ref_length> &reference_stream, ap_uint<2> final_traceback[ref_length + inflated_query_length], type_t *dummy)
{
    type_t temp = 0;
    ap_uint<2> traceback[inflated_query_length][ref_length]; // declare traceback matrix
    type_t dp_mem[3][PE_num];
    type_t last_pe_score[ref_length];

    type_t max_score[PE_num];
    type_t temp_score = 0;
    type_t max_row_value[PE_num];
    type_t max_col_value[PE_num];
    // ap_uint<2> final_traceback[ref_length + inflated_query_length];

    type_t max = 0;
    type_t index = 0;
    type_t ultimate_max_score = 0;
    type_t ultimate_col_value = 0;
    type_t ultimate_row_value = 0;

    ShiftRegister<type_char, PE_num> query; // declare shift register for query
    ShiftRegister<type_char, PE_num> reference;

    type_char local_reference[ref_length]; // a group of PE process all references by shifting

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
    }

    //const type_t zero_fp = 0;

// iterating through the chunks of the larger dp matrix
kernel:
    for (int qq = 0; qq < inflated_query_chunks; qq++)
    {
        if (extra_PE_num != 0 && qq == query_chunks)
        { // last query block of corner case scenario

            const type_char zero_value = 0;

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
            }

            temp = (ii == 0) ? zero_fp : temp;

        // computing scores
        peloop:
            for (int kk = 0; kk < PE_num; kk++)
            {
#pragma HLS UNROLL factor = 2

                if ((ii - kk) >= 0 && (ii - kk) < ref_length)
                {
                    if (kk == 0)
                    {
                        PE(local_reference[ii], query[kk], last_pe_score[ii], dp_mem[1][kk], temp, &dp_mem[2][kk],
                           &traceback[kk + qq * PE_num][ii - kk]);

                        temp = last_pe_score[ii];
                    }
                    else
                    {
                        PE(local_reference[ii - kk], query[kk], dp_mem[1][kk - 1], dp_mem[1][kk],
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

    type_t count = 0;

// traceback logic
traceback_logic:
    while (ultimate_row_value > -1 && ultimate_col_value > -1)
    {
        // attempt to optimize traceback logic
        ap_uint<2> tb_value = traceback[ultimate_row_value][ultimate_col_value];
        final_traceback[count] = tb_value;
        count = count + 1;
        ultimate_row_value = ultimate_row_value - (tb_value != 2);
        ultimate_col_value = ultimate_col_value - (tb_value != 3);

        if ((ultimate_row_value + 1) == 0 || (ultimate_col_value + 1) == 0)
            break;
    }

    *dummy = ultimate_max_score;
}

void seq_align_multiple(hls::stream<type_char, query_length> (&query_string_comp)[N_BLOCKS],
                        hls::stream<type_char, ref_length> (&reference_string_comp)[N_BLOCKS],
                        ap_uint<2> final_traceback[N_BLOCKS][ref_length + inflated_query_length],
                        type_t dummies[N_BLOCKS])
{

#pragma HLS INTERFACE mode = axis port = query_string_comp
#pragma HLS INTERFACE mode = axis port = reference_string_comp
#pragma HLS array_partition variable = query_string_comp type = block dim = 1 factor = 1
#pragma HLS array_partition variable = reference_string_comp type = block dim = 1 factor = 1
#pragma HLS array_partition variable = dummies type = complete
#pragma HLS array_partition variable = final_traceback type = block dim = 1 factor = 1

    type_t dummies_inner[N_BLOCKS];

#pragma HLS array_partition variable = dummies_inner type = complete


    // adding SW kernel
    //  to be unrolled
    for (int block_i = 0; block_i < N_BLOCKS; block_i++)
    {
#pragma HLS UNROLL
        seq_align(query_string_comp[block_i],
                  reference_string_comp[block_i],
                  final_traceback[block_i],
                  &dummies_inner[block_i]);
    }


    for (int block_i = 0; block_i < N_BLOCKS; block_i++)
    {
#pragma HLS UNROLL
        dummies[block_i] = dummies_inner[block_i];
    }
}