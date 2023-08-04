#include "params.h"
#include "seq_align.h"
#include "PE.h"



void AlignGlobalAffine::align(hls::stream<char_t, query_length>& query_stream, hls::stream<char_t, ref_length>& reference_stream, type_t* dummy)
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
