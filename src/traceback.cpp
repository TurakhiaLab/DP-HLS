#include "../include/traceback.h"
#include "../include/loop_counter.h"
#include "../include/frontend.h"
#include <hls_vector.h>


#ifdef DEBUG
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
    int i = 0;
    bool end = 0;
    
    TB_STATE state;
    ALIGN_TYPE::Traceback::StateInit(tbmat[row][col], state);    

traceback_loop:
    for (int i = 0; i < MAX_QUERY_LENGTH + MAX_REFERENCE_LENGTH; i++)
    {
        if (!end && row >= 0 && col >= 0){
            tbp_t tbptr = tbmat[row][col];  // Want to represented by the symbol rather than pointer
            traceback_out[i] = ALIGN_TYPE::Traceback::StateToPath(state);
            ALIGN_TYPE::Traceback::StateMapping(tbptr, state, row, col);
            if (state == TB_STATE::END)  end = 1;
        } else {
            traceback_out[i] = AL_END;
        }
        
    }
}

