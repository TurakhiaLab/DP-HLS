#include "../include/traceback.h"
#include "../include/loop_counter.h"
#include <hls_vector.h>

#ifdef DEBUG
#include <debug.h>
#include <cstdio>
#include "traceback.h"
#endif // DEBUG

void Traceback::Traceback(
    tbp_t (&tbmat)[MAX_QUERY_LENGTH][MAX_REFERENCE_LENGTH],
    tbr_t (&traceback_out)[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH],
    const int max_row, const int max_col) // starting index to traceback
{
    int row = max_row;
    int col = max_col;
    int i = 0;
    
    TB_STATE state;
    state_initial(tbmat[row][col], state);    

traceback_loop:
    while (row >= 0 && col >= 0)
    {
        tbp_t tbptr = tbmat[row][col];  // Want to represented by the symbol rather than pointer
        traceback_out[i++] = state_to_path(state);

#ifdef DEBUG
        this->debugger->data.traceback.push_back(tbptr);
#endif // DEBUG

        pointer_to_coordinate(tbptr, state, row, col);
        
    }
    traceback_out[i] = AL_END;
}


void Traceback::pointer_to_coordinate(tbp_t tbp, TB_STATE &state, int &row, int &col){

    if (state == TB_STATE::MM){
        if (extract_direction(tbp) == TB_DIAG) {
            row--;
            col--;
        } else if (extract_direction(tbp) == TB_UP) {
            state = TB_STATE::DEL;
        } else if (extract_direction(tbp) == TB_LEFT) {
            state = TB_STATE::INS;
        } else {
            // Unknown Direction
            throw std::runtime_error("Unknown traceback direction." + std::to_string(tbp.to_int()));
        }
    } else if (state == TB_STATE::DEL) {
        if ( (bool) tbp[3] ){  // deletion extending
            // states remains the same.   
        } else { // deletion closing
            state = TB_STATE::MM;  // set the state back to MM
        }
        row--;     
    } else if (state == TB_STATE::INS) {
        if ( (bool) tbp[2] ){  // insertion extending
            // states remains the same.   
        } else { // insertion closing
            state = TB_STATE::MM;  // set the state back to MM
        }
        col--;
    } else {
        // Unknown State
        throw std::runtime_error("Unknown traceback state.");
    }
}


tbp_t Traceback::extract_direction(tbp_t tbp)
{
    return tbp_t(tbp(1,0));
}

void Traceback::state_initial(tbp_t tbp, TB_STATE &state){
    if (extract_direction(tbp) == TB_DIAG){
        state = TB_STATE::MM;
    } else if (extract_direction(tbp) == TB_UP){
        state = TB_STATE::DEL;
    } else if (extract_direction(tbp) == TB_LEFT){
        state = TB_STATE::INS;
    } else {
        // Unknown Direction
        throw std::runtime_error("Unknown traceback direction." + std::to_string(tbp.to_int()));
    }
}

tbr_t Traceback::state_to_path(TB_STATE state){
    if (state == TB_STATE::MM){
        return AL_MMI;
    } else if (state == TB_STATE::DEL) {
        return AL_DEL;
    } else {
        return AL_INS;
    }
}