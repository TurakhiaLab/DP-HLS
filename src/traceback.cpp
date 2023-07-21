#include "../include/traceback.h"
#include "../include/loop_counter.h"
#include <hls_vector.h>

#ifdef DEBUG
#include <debug.h>
#include <cstdio>
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
    hls::vector<tbp_t, N_LAYERS>* tbvec_ptr = &tbmat[chunk][max_row % PE_NUM][max_col];
    
    // printf("begin traceback\n");
    while (row >= 0 && col >= 0) {
        tbp_t tbptr = (*tbvec_ptr)[level];
        // float ptr_flt = tbptr.to_float();
        tb_stream.write(tbptr);
        // printf("iteration: %d\n", i++);
        // printf("row %d, col: %d\n", row, col);
#ifdef DEBUG
        this->debugger->data.traceback.push_back(tbptr);
#endif // DEBUG

        int level_prev = level;
        tbp_dir_t dir; dir(1,0) = tbptr(1, 0);
        level = tbptr(WT - 1, 2).to_int(); // extract layer bit
        // auto value_dir = dir.to_float();
        
        
        if ((dir == TB_PH) && (level == level_prev)) {
            // printf("ending at: %f\n", tbptr.to_float());
            break;
        }
        else if (dir == TB_PH) {
            continue;
        }
        else if (dir == TB_DIAG) {
            row--; col--;
            tbvec_ptr -= (1 + MAX_REFERENCE_LENGTH);
        }
        else if (dir == TB_UP) {
            row--;
            tbvec_ptr -= MAX_REFERENCE_LENGTH;
        }
        else if (dir == TB_LEFT) {
            col--;
            tbvec_ptr -= 1;
        }
        else {
#ifdef DEBUG
            printf("default meet: %f, dir: %f\n", tbptr.to_float(), dir.to_float());
#endif // DEBUG
            break;  //break the loop
        }

        
    }
    return 0; // retrun the length of the traceback
}
