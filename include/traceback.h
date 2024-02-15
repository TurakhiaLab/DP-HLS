#ifndef TRACEBACK_H
#define TRACEBACK_H

#include "params.h"
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
		tbp_t (&tbmat)[PE_NUM][MAX_QUERY_LENGTH / PE_NUM * MAX_REFERENCE_LENGTH],
		traceback_buf_t (&traceback_out),
		idx_t (&ck_start_col)[MAX_QUERY_LENGTH / PE_NUM], // chunk start index
		idx_t (&ck_end_col)[MAX_QUERY_LENGTH / PE_NUM],	  // chunk end index
		int ck_idx, int pe_idx, int col_idx, int v_row, int v_col);			  // starting index to traceback

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