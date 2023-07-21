#include "../include/traceback.h"
#include "../include/loop_counter.h"
#include <hls_vector.h>

#ifdef DEBUG
#include <debug.h>
#include <cstdio>
#endif // DEBUG

int TraceBack::traceback(
    hls::vector<tbp_t, N_LAYERS> tbmat[MAX_QUERY_LENGTH][MAX_REFERENCE_LENGTH],
    hls::stream<tbp_t, MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH> &tb_stream, 
    const int max_layer, const int max_row, const int max_col)  // starting index to traceback
{ 
    int row = max_row;
    int col = max_col;
    int level = max_layer;

    while (row >= 0 && col >= 0) {
        tbp_t tbptr = tbmat[row][col][level];
        tb_stream.write(tbptr);

#ifdef DEBUG
        this->debugger->data.traceback.push_back(tbptr);
#endif // DEBUG

        int level_prev = level;
        tbp_dir_t dir; dir(1,0) = tbptr(1, 0);
        level = tbptr(WT - 1, 2).to_int(); // extract layer bit
        
        
        if ((dir == TB_PH) && (level == level_prev)) {
            // printf("ending at: %f\n", tbptr.to_float());
            break;
        }
        else if (dir == TB_PH) {
            continue;
        }
        else if (dir == TB_DIAG) {
            row--; col--;
        }
        else if (dir == TB_UP) {
            row--;
        }
        else if (dir == TB_LEFT) {
            col--;
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
