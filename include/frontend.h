/**
 * Declare Any Customized Align type in this file.
 */

#ifndef FRONTEND_H
#define FRONTEND_H

#include "../include/params.h"
#include "utils.h"

namespace GlobalAffine
{
    namespace PE
    {
        void Compute(char_t local_query_val,
                     char_t local_reference_val,
                     hls::vector<type_t, N_LAYERS> up_prev,
                     hls::vector<type_t, N_LAYERS> diag_prev,
                     hls::vector<type_t, N_LAYERS> left_prev,
                     const Penalties penalties,
                     hls::vector<type_t, N_LAYERS> &write_score,
#ifdef DEBUG
                     tbp_t &write_traceback,
                     int idx); // mark the PE index
#else
                     tbp_t &write_traceback);
#endif
    };

    void InitializeScores(
        score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH],
        score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
        Penalties penalties);

    void UpdatePEMaximum(
        dp_mem_block_t dp_mem,
        ScorePack (&max)[PE_NUM],
        idx_t (&pe_offset)[PE_NUM],
        idx_t chunk_offset,
        bool (&predicate)[PE_NUM],
        idx_t query_len, idx_t ref_len);

    void InitializeMaxScores(ScorePack (&max)[PE_NUM], idx_t qry_len, idx_t ref_len);

    namespace Traceback
    {
        void StateMapping(tbp_t tbp, TB_STATE &state, int &row, int &col, tbr_t &curr_write);

        void StateInit(tbp_t tbp, TB_STATE &state);

        tbr_t StateToPath(TB_STATE state);
    }

    namespace Helper {
        void InitCol(score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH], Penalties penalties);
        void InitRow(score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH], Penalties penalties);
    }

}

namespace LocalAffine
{
       namespace PE
    {
        void Compute(char_t local_query_val,
                     char_t local_reference_val,
                     hls::vector<type_t, N_LAYERS> up_prev,
                     hls::vector<type_t, N_LAYERS> diag_prev,
                     hls::vector<type_t, N_LAYERS> left_prev,
                     const Penalties penalties,
                     hls::vector<type_t, N_LAYERS> &write_score,
#ifdef DEBUG
                     tbp_t &write_traceback,
                     int idx); // mark the PE index
#else
                     tbp_t &write_traceback);
#endif
    };

    void InitializeScores(
        score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH],
        score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
        Penalties penalties);

    void UpdatePEMaximum(
        dp_mem_block_t dp_mem,
        ScorePack (&max)[PE_NUM],
        idx_t (&pe_offsets)[PE_NUM],
        idx_t chunk_offset,
        bool (&predicate)[PE_NUM],
        idx_t query_len, idx_t ref_len);

    void InitializeMaxScores(ScorePack (&max)[PE_NUM], idx_t qry_len, idx_t ref_len);

    namespace Traceback
    {
        void StateMapping(tbp_t tbp, TB_STATE &state, int &row, int &col, tbr_t &curr_write);

        void StateInit(tbp_t tbp, TB_STATE &state);

        tbr_t StateToPath(TB_STATE state);
    }

}

namespace GlobalLinear
{

    namespace PE
    {
        void Compute(char_t local_query_val,
                     char_t local_reference_val,
                     hls::vector<type_t, N_LAYERS> up_prev,
                     hls::vector<type_t, N_LAYERS> diag_prev,
                     hls::vector<type_t, N_LAYERS> left_prev,
                     const Penalties penalties,
                     hls::vector<type_t, N_LAYERS> &write_score,
#ifdef DEBUG
                     tbp_t &write_traceback,
                     int idx); // mark the PE index
#else
                     tbp_t &write_traceback);
#endif
    };

    void InitializeScores(
        score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH],
        score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
        Penalties penalties);

    void UpdatePEMaximum(
        dp_mem_block_t dp_mem,
        ScorePack (&max)[PE_NUM],
        idx_t (&pe_offsets)[PE_NUM],
        idx_t chunk_offset,
        bool (&predicate)[PE_NUM],
        idx_t query_len, idx_t ref_len);

    void InitializeMaxScores(ScorePack (&max)[PE_NUM], idx_t qry_len, idx_t ref_len);

    namespace Traceback
    {
        void StateMapping(tbp_t tbp, TB_STATE &state, int &row, int &col, tbr_t &curr_write);

        void StateInit(tbp_t tbp, TB_STATE &state);
    }


}

namespace LocalLinear
{
    void InitializeScores(
        score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH],
        score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
        Penalties penalties);

}

// void Align::InitializeScores(
// 	score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH],
// 	score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
// 	Penalties penalties)
// {
// #ifdef ALIGN_LOCAL_LINEAR
// 	Utils::Init::ArrSet<score_vec_t, MAX_QUERY_LENGTH>(init_col_scr, {0});
// 	Utils::Init::ArrSet<score_vec_t, MAX_REFERENCE_LENGTH>(init_row_scr, {0});
// #elif defined ALIGN_GLOBAL_LINEAR

// #elif defined ALIGN_LOCAL_AFFINE
// 	Utils::Init::ArrSet<score_vec_t, MAX_QUERY_LENGTH>(init_col_scr, {0, 0, NINF});
// 	Utils::Init::ArrSet<score_vec_t, MAX_REFERENCE_LENGTH>(init_row_scr, {NINF, 0, 0});
// #endif
// }

#endif // FRONTEND_H