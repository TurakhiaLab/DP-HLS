#include "../include/traceback.h"
#include "../include/loop_counter.h"
#include <hls_vector.h>

#ifdef DEBUG
#include <debug.h>
#endif // DEBUG

int TraceBack::traceback(
    hls::vector<tbp_t, N_LAYERS> tbmat[MAX_QUERY_LENGTH / PE_NUM][PE_NUM][MAX_REFERENCE_LENGTH],
    hls::stream<tbp_t, MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH> &tb_stream, 
    const int max_layer, const int max_row, const int max_col)  // starting index to traceback
{

    // stop if the counter becomes 0 or traceback place holder
    
    int row = max_row;
    int col = max_col;

    int chunk = max_row / PE_NUM;
    LoopCounter<PE_NUM> pe_ctr(max_row % PE_NUM);

    int cnt = 0;

//#ifdef DEBUG
//    for (int b = 0; b < 1; b++) {
//        for (int i = 0; i < 7; i++) {
//            for (int j = 0; j < 9; j++) {
//                printf("%d ", (int) tbmat[b][i][j][0]);
//            }
//            printf("\n");
//        }
//    }
//#endif // DEBUG

    int level = max_layer;

    // hls::vector<tbp_t, N_LAYERS>* tbvec_ptr = tbmat[][][];
    

    while (row >= 0 && col >= 0) {
        hls::vector<tbp_t, N_LAYERS> tbptr_vec = tbmat[chunk][pe_ctr.val()][col];
        tbp_t tbptr = tbptr_vec[level];
        tb_stream.write(tbptr);
        
#ifdef DEBUG
        this->debugger->data.traceback.push_back(tbptr);
#endif // DEBUG
        if (tbptr == TB_PH) { ++cnt;  break; }
        switch (tbptr)
        {
        case TB_DIAG:
            --row;
            --col;
            if (pe_ctr.val() == 0) { --chunk; };
            --pe_ctr;
            cnt += 1;  // even 2 steps is considered one write in streams
            break;
        case TB_UP:
            --row;
            if (pe_ctr.val() == 0) { --chunk; };
            --pe_ctr;
            cnt += 1;
            break;
        case TB_LEFT:
            --col;
            cnt += 1;
            break;
        default:
            break;
        }
    }
    // FIXME: this is a hack to make sure the traceback is filled
    while (tb_stream.empty())
    {
        tb_stream.write(TB_PH);
#ifdef DEBUG
        this->debugger->data.traceback.push_back(TB_PH);
#endif // DEBUG

    }

    return 0; // retrun the length of the traceback
}
