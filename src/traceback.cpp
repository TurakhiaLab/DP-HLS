#include "../include/traceback.h"
#include "../include/loop_counter.h"
#include "../include/frontend.h"
#include <hls_vector.h>


#ifdef CMAKEDEBUG
#include <cstdio>
#include "../include/traceback.h"
#endif // DEBUG

void Traceback::Traceback(
    tbp_t (&tbmat)[MAX_QUERY_LENGTH][MAX_REFERENCE_LENGTH],
    tbr_t (&traceback_out)[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH],
    const int max_row, const int max_col) // starting index to traceback
{
    int row = max_row;
    int col = max_col;
    int w_id = 0;
    bool end = 0;
    tbr_t curr_write;

    TB_STATE state;
    ALIGN_TYPE::Traceback::StateInit(tbmat[row][col], state);    

traceback_loop:

        while (!end && row >= 0 && col >= 0){
#pragma HLS dataflow
#pragma HLS expression_balance on
#pragma HLS PIPELINE II=1
#pragma HLS LOOP_TRIPCOUNT min=1 max=512  // Need manual tunning

            tbp_t tbptr = tbmat[row][col];  // Want to represented by the symbol rather than pointer
#ifdef CMAKEDEBUG
            auto tbptr_s = tbptr.to_int();
#endif
            ALIGN_TYPE::Traceback::StateMapping(tbptr, state, row, col, curr_write);
            if (curr_write != NULL){
                traceback_out[w_id++] = curr_write;
            }

            if (state == TB_STATE::END)  end = 1;
        } 
        traceback_out[w_id] = AL_END;
        
}

