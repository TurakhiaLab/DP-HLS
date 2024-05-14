#ifndef TRACEBACK_H
#define TRACEBACK_H

#include "dp_hls_common.h"
#include "frontend.h"
#include <hls_stream.h>
#include <hls_vector.h>

#ifdef CMAKEDEBUG
#include "debug.h"
#endif // DEBUG

using namespace hls;

namespace Traceback
{
    /**
     * @brief Traceback function. It extract the traceback path from a matrix of traceback pointers.
     *
     * @param max_row : Row index of the maximum element to start the traceback.
     * @param max_col : Column index of the maximum element to start the traceback.
     */
    void Traceback(
        tbp_t (&tbmat)[MAX_QUERY_LENGTH][MAX_REFERENCE_LENGTH],
        tbr_t (&traceback_out)[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH],
        const int max_row, const int max_col); // starting index to traceback

    /**
     * @brief Traceback function. It extract the traceback path from a matrix of traceback pointers.
     *
     * @param max_row : Row index of the maximum element to start the traceback.
     * @param max_col : Column index of the maximum element to start the traceback.
     */
    void TracebackOptimized(
        tbp_t (&tbmat)[PE_NUM][TBMEM_SIZE],
        traceback_buf_t(&traceback_out),
        idx_t (&ck_start_col)[MAX_QUERY_LENGTH / PE_NUM],           // chunk start index
        idx_t (&ck_end_col)[MAX_QUERY_LENGTH / PE_NUM],             // chunk end index
        int ck_idx, int pe_idx, int col_idx, int v_row, int v_col); // starting index to traceback

    template <int VIRTUAL_CHUNK_WIDTH>
    void NextAddressFixedSize(
        tbr_t &nav,
        int &chunk, int &pe, int &col, int &v_row, int &v_col)
    {
#ifdef CMAKEDEBUG
        int nav_int = nav.to_int();
        // cout << "col: " << col << ", pe: " << pe << ", chunk: " << chunk << ", v_row: " << v_row << ", v_col " << v_col << ", nav_int: " << nav_int << endl;
#endif

        // Check the condition based on the virtual row and column
        if (v_row <= 0 || v_col <= 0)
        {
            nav = AL_END;
        }
        else if (nav == AL_INS)
        { // Moving left
            col--;
            v_col--;
        }
        else if (nav == AL_DEL)
        { // Moving up
            if (pe == 0)
            {
                pe = PE_NUM - 1;
                col -= VIRTUAL_CHUNK_WIDTH;
                chunk--;
            }
            else
            {
                col--;
                pe--;
            }
            v_row--;
        }
        else if (nav == AL_MMI)
        {
            // Moving Diagonal
            // Moving diagonal is a combination of moving left and moving up

            col--;

            if (pe == 0)
            {
                pe = PE_NUM - 1;
                col -= VIRTUAL_CHUNK_WIDTH;
                chunk--;
            }
            else
            {
                col--;
                pe--;
            }
            v_row--;
            v_col--;
        }
        else if (nav == AL_NULL)
        {
            // Skip a cycle and do nothing
        }
        else
        {
            // Stop Condition Set by User
            // In this case the Stopping Flag is manually set by the user
            // that want to early stop the traceback. For example, in the
            // local alignment, the traceback will stop if the scores reaches 0.
            nav = AL_END; // Just repeat the last write
        }
    }

    template <int CHUNK_WIDTH>
    void TracebackFixedSize(
        tbp_t (&tbmat)[PE_NUM][TBMEM_SIZE],
        traceback_buf_t(&traceback_out),
        int ck_idx, int pe_idx, int col_idx, int v_row, int v_col)
    {

#pragma HLS bind_storage variable = traceback_out type = fifo impl = uram
        int pe = pe_idx; // row index, but in tbmat
        int col = col_idx;
        int chunk = ck_idx;

        int w_id = 0;              // write idx
        tbr_t navigation = AL_MMI; // current write value

        TB_STATE state;
        ALIGN_TYPE::Traceback::StateInit(tbmat[pe][col], state);

    traceback_loop:
        while (navigation != AL_END) // Now solely this flag determines whether to stop the traceback.
        {
#pragma HLS PIPELINE II = 1

#ifdef CMAKEDEBUG
            // Print Coordinates
            // printf("Traceback Current Coordinates: pe %d, col %d, chunk %d\n", pe, col, chunk);
#endif
            tbp_t tbptr = tbmat[pe][col]; // Want to represented by the symbol rather than pointer
#ifdef CMAKEDEBUG
// print traceback pionter
// std::cout << tbptr.to_int() << " ";
// printf("navigation %d, pointer: %d\n", navigation.to_int(), tbptr.to_int());
#endif

#ifdef CMAKEDEBUG
            // print virtual row and column number
            // printf("Traceback Coordinates: ck %d, pe %d, p_col %d, row %d, col %d\n", chunk, pe, col, pe + chunk * PE_NUM, col % TEST_REFERENCE_LENGTH);
#endif

            // User define mapping from a pointer and current state to
            // one of the Del, Ins, Match/Mismatch, or End to the next state.
            ALIGN_TYPE::Traceback::StateMapping(tbptr, state, navigation);
            traceback_out[w_id++] = navigation;
            Traceback::NextAddressFixedSize<CHUNK_WIDTH>(navigation, chunk, pe, col, v_row, v_col);
        }
        traceback_out[w_id] = AL_END;
        //        std::cout << std::endl;
    }

    /**
     * @brief A traceback pointer to coordinate mapping function.
     * The traceback function is implemeted as a state machine. The state represents the
     * matrix the traceback is tracing in. To increase the customizability, the function
     * that maps a traceback pointer with it's current state to the next coordinate and
     * the state the next step goes to shall be overrite by the user.
     *
     * @param tbp : A traceback pointer
     * @param state : The state of the traceback at the pointer.
     * @param row : Row index of the poiner.
     * @param column : Column index of the pointer.
     */
    void pointer_to_coordinate(tbp_t tbp, TB_STATE &state, int &row, int &column);

    /**
     * @brief Function used to set the initial state of the traceback,
     * according to the ruls of the traceback pointer set by the user.
     *
     * @param tbp : initial traceback pointer.
     */
    void state_initial(tbp_t tbp, TB_STATE &state);

    /**
     * @brief Private helper function that extract the direction bit of the traceback pointer
     *
     * @param tbp : Traceback Pointer.
     */
    tbp_t extract_direction(tbp_t tbp);

    /**
     * @param state : Current state of the state machine.
     * @return Number corresponding to the traceback navigation.
     */
    tbr_t state_to_path(TB_STATE state);

    void NextAddress(tbr_t &nagivation,
                     idx_t (&ck_start_idx)[CK_NUM],
                     idx_t (&ck_end_idx)[CK_NUM],
                     int &chunk, int &pe, int &col, int &v_row, int &v_col);
}

#endif