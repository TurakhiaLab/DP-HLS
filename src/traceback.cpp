#include "traceback.h"
#include "../include/loop_counter.h"
#include "../include/frontend.h"

#include <hls_vector.h>

#ifdef CMAKEDEBUG
#include <cstdio>
#include "../include/traceback.h"
#endif // DEBUG

// void Traceback::Traceback(
//     tbp_t (&tbmat)[MAX_QUERY_LENGTH][MAX_REFERENCE_LENGTH],
//     tbr_t (&traceback_out)[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH],
//     const int max_row, const int max_col) // starting index to traceback
// {
//     int row = max_row;
//     int col = max_col;
//     int w_id = 0; // write idx
//     bool end = 0;
//     tbr_t curr_write;

//     TB_STATE state;
//     ALIGN_TYPE::Traceback::StateInit(tbmat[row][col], state);

// traceback_loop:
//     while (!end && row >= 0 && col >= 0)
//     {
// #pragma HLS dataflow
// #pragma HLS expression_balance on
// #pragma HLS PIPELINE II = 1
// #pragma HLS LOOP_TRIPCOUNT min = 1 max = 512 // Need manual tunning

//         tbp_t tbptr = tbmat[row][col]; // Want to represented by the symbol rather than pointer
// #ifdef CMAKEDEBUG
//         auto tbptr_s = tbptr.to_int();
// #endif
//         ALIGN_TYPE::Traceback::StateMapping(tbptr, state, row, col, curr_write);
//         if (curr_write != NULL)
//         {
//             traceback_out[w_id++] = curr_write;
//         }

//         if (state == TB_STATE::END)
//             end = 1;
//     }
//     traceback_out[w_id] = AL_END;
// }

void Traceback::TracebackOptimized(
    tbp_t (&tbmat)[PE_NUM][MAX_QUERY_LENGTH / PE_NUM * MAX_REFERENCE_LENGTH],
    tbr_t (&traceback_out)[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH],
    idx_t (&ck_start_col)[MAX_QUERY_LENGTH / PE_NUM], // chunk start index
    idx_t (&ck_end_col)[MAX_QUERY_LENGTH / PE_NUM],   // chunk end index
    int ck_idx, int pe_idx, int col_idx)
{

#ifdef CMAKEDEBUG
    // print the contents of tbmat
    // printf("Traceback Matrix:\n");
    // for (int i = 0; i < PE_NUM; i++)
    // {
    //     for (int j = 0; j < MAX_QUERY_LENGTH / PE_NUM * MAX_REFERENCE_LENGTH; j++)
    //     {
    //         printf("%d ", tbmat[i][j].to_int());
    //     }
    //     printf("\n");
    // }
#endif

    int pe = pe_idx; // row index, but in tbmat
    int col = col_idx;
    int chunk = ck_idx;

    int w_id = 0;     // write idx
    bool end = 0;     // end flag
    tbr_t navigation = AL_MMI; // current write value

    TB_STATE state;
    ALIGN_TYPE::Traceback::StateInit(tbmat[pe][col], state);

traceback_loop:
    while (navigation != AL_END)  // Now solely this flag determines whether to stop the traceback. 
    {
#pragma HLS PIPELINE II = 1
#pragma HLS LOOP_TRIPCOUNT min = 1 max = 512 // Need manual tunning

// #ifdef CMAKEDEBUG 
//         // Print Coordinates
//         printf("Traceback Current Coordinates: pe %d, col %d, chunk %d\n", pe, col, chunk);
// #endif
        tbp_t tbptr = tbmat[pe][col]; // Want to represented by the symbol rather than pointer

// #ifdef CMAKEDEBUG
//         // Print the current Navigation and Traceback Pointer Value
//         printf("navigation %d, pointer: %d\n", navigation.to_int(), tbptr.to_int());
// #endif

        // User define mapping from a pointer and current state to 
        // one of the Del, Ins, Match/Mismatch, or End to the next state. 
        ALIGN_TYPE::Traceback::StateMapping(tbptr, state, navigation);
        traceback_out[w_id++] = navigation;
        Traceback::NextAddress(navigation, ck_start_col, ck_end_col, chunk, pe, col);


    }
    traceback_out[w_id] = AL_END;
}

// nav stands for navigation
void Traceback::NextAddress(tbr_t &nav, 
    idx_t (&ck_start_idx)[CK_NUM],
    idx_t (&ck_end_idx)[CK_NUM], 
    int &chunk, int &pe, int &col)
{
    if (nav == AL_INS){  // Moving left
        if (col == 0){
            nav = AL_END;
        } else {
            col--;
        }
    } else if (nav == AL_DEL) {  // Moving up
        if (pe == 0){
            if (chunk == 0){
                nav = AL_END;
            } else {
                pe = PE_NUM - 1;
                col -= ck_end_idx[chunk-1] - ck_start_idx[chunk] + 1;
                chunk--;
            }
        } {
            pe--;
        }
    } else if (nav == AL_MMI){  // Moving Diagonal
        // Moving diagonal is a combination of moving left and moving up
        // QUESTION: am I thinking correctly?
        if (col == 0){
            nav = AL_END;
        } else {
            col--;
        }

        if (pe == 0){
            if (chunk == 0){
                nav = AL_END;
            } else {
                pe = PE_NUM - 1;
                col -= ck_end_idx[chunk-1] - ck_start_idx[chunk] + 1;
                chunk--;
            }
        } {
            pe--;
        }
    } else {  
        // Stop Condition Set by User
        // In this case the Stopping Flag is manually set by the user 
        // that want to early stop the traceback. For example, in the 
        // local alignment, the traceback will stop if the scores reaches 0. 
        nav = AL_END;  // Just repeat the last write
    }
}