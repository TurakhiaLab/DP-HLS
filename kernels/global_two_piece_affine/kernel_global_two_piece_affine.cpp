#ifndef SYNTH
#include "../../include/frontend.h"
#else
#include "frontend.h"
#endif

#define MAX(a, b) ((a) > (b) ? (a) : (b))
#define MIN(a, b) ((a) < (b) ? (a) : (b))

// >>> Global Two Piece Affine Implementation >>>
void GlobalTwoPieceAffine::PE::Compute(char_t local_query_val,
                               char_t local_reference_val,
                               score_vec_t up_prev,
                               score_vec_t diag_prev,
                               score_vec_t left_prev,
                               const Penalties penalties,
                               score_vec_t &write_score,
                               tbp_t &write_traceback)
{
#pragma HLS array_partition variable = local_query_val type = complete

// Define Traceback Pointer Origin (H - Main, I, I', D, D')
#define TB_MAIN (tbp_t) 0b000
#define TB_INSERT (tbp_t) 0b001
#define TB_LONG_INSERT (tbp_t) 0b010
#define TB_DELETE (tbp_t) 0b011
#define TB_LONG_DELETE (tbp_t) 0b100

// Define Traceback Pointer Navigation Matrix
#define TB_IMAT (tbp_t) 0b00000  // Insertion Matrix
#define TB_DMAT (tbp_t) 0b01000  // Deletion Matrix
#define TB_LIMAT (tbp_t) 0b10000 // Long Insertion Matrix
#define TB_LDMAT (tbp_t) 0b11000 // Long Deletion Matrix

    /*
     * Layer 0: Insert matrix I, moves horizontally
     * Layer 1: Match matrix M, moves diagonally
     * Layer 2: Delete matrix D, moves vertically
     * Layer 3: Long insert matrix I', moves horizontally
     * Layer 4: Long delete matrix D', moves vertically
     */
    const type_t insert_open = left_prev[1] + penalties.open + penalties.extend; // Insert open
    const type_t insert_extend = left_prev[0] + penalties.extend;                  // insert extend
    const type_t delete_open = up_prev[1] + penalties.open + penalties.extend;   // delete open
    const type_t delete_extend = up_prev[2] + penalties.extend;                    // delete extend
    const type_t long_insert_open = left_prev[1] + penalties.long_open + penalties.long_extend;
    const type_t long_insert_extend = left_prev[3] + penalties.long_extend;
    const type_t long_delete_open = up_prev[1] + penalties.long_open + penalties.long_extend;
    const type_t long_delete_extend = up_prev[4] + penalties.long_extend;

#ifdef CMAKEDEBUG
    auto insert_open_s = insert_open.to_float();     // Insert open
    auto insert_extend_s = insert_extend.to_float(); // insert extend
    auto delete_open_s = delete_open.to_float();
    auto delete_extend_s = delete_extend.to_float();

    auto left_prev_0_s = left_prev[0].to_float();
    auto left_prev_1_s = left_prev[1].to_float();
    auto left_prev_2_s = left_prev[2].to_float();
    auto up_prev_0_s = up_prev[0].to_float();
    auto up_prev_1_s = up_prev[1].to_float();
    auto up_prev_2_s = up_prev[2].to_float();
#endif

    bool insert_open_b = insert_open > insert_extend;
    bool delete_open_b = delete_open > delete_extend;
    bool long_insert_open_b = long_insert_open > long_insert_extend;
    bool long_delete_open_b = long_delete_open > long_delete_extend;
    write_score[0] = insert_open_b ? insert_open : insert_extend;
    write_score[2] = delete_open_b ? delete_open : delete_extend;
    write_score[3] = long_insert_open_b ? long_insert_open : long_insert_extend;
    write_score[4] = long_delete_open_b ? long_delete_open : long_delete_extend;
    // tbp_t insert_tb = insert_open_b ? (tbp_t) 0 : TB_IMAT;
    // tbp_t delete_tb = delete_open_b ? (tbp_t) 0 : TB_DMAT;
    // tbp_t long_insert_tb = long_insert_open_b ? (tbp_t) 0 : TB_LIMAT;
    // tbp_t long_delete_tb = long_delete_open_b ? (tbp_t) 0 : TB_LDMAT;

#ifdef CMAKEDEBUG
    auto write_score_0_s = write_score[0].to_float();
    auto write_score_2_s = write_score[2].to_float();
#endif

    const type_t match = (local_query_val == local_reference_val) ? diag_prev[1] + penalties.match : diag_prev[1] + penalties.mismatch;

#ifdef CMAKEDEBUG
    auto diag_prev_s = diag_prev[1].to_float();
    auto local_query_val_s = local_query_val.to_int();
    auto local_reference_val_s = local_reference_val.to_int();
#endif

    // compare insertion and deletion matrices 
    type_t max_value = MAX(MAX(write_score[0], write_score[3]), MAX(write_score[2], write_score[4]));
    max_value = max_value > match ? max_value : match;                                    // compare with match/mismatch
    write_score[1] = match;

    // keep track where the max value came from
    tbp_t pre_trace;
    tbp_t next_state = (tbp_t)0b00000;  // by default this is the main matrix state

#ifdef CMAKEDEBUG
    auto match_s = match.to_float();
    auto write_score_1_s = write_score[1].to_float();
#endif

    // Set traceback pointer based on the direction of the maximum score.
    if (max_value == write_score[0])
    { 
        pre_trace = TB_INSERT;
        next_state = TB_IMAT;
    }
    else if (max_value == write_score[1])
    {
        pre_trace = TB_MAIN;
    }
    else if (max_value == write_score[2])
    {
        pre_trace = TB_DELETE;
        next_state = TB_DMAT;
    }
    else if (max_value == write_score[3])
    {
        pre_trace = TB_LONG_INSERT;
        next_state = TB_LIMAT;
    }
    else if (max_value == write_score[4])
    {
        pre_trace = TB_LONG_DELETE;
        next_state = TB_LDMAT;
    }
    else
    {
        // Undefined behavior happens if the max score is non of the I', D', I, D, or M.
    }

    write_traceback = pre_trace + next_state;//insert_tb + delete_tb + long_insert_tb + long_delete_tb;
}

void GlobalTwoPieceAffine::Helper::InitCol(score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH], Penalties penalties){
    type_t gap = penalties.open;
    type_t long_gap = penalties.long_open;
    init_col_scr[0] = score_vec_t({NINF, 0, NINF, NINF, NINF});
    for (int i = 1; i < MAX_QUERY_LENGTH; i++){
        gap += penalties.extend;
        long_gap += penalties.long_extend;
        init_col_scr[i] = score_vec_t({NINF,MIN(gap,long_gap),gap,NINF,long_gap});
    }
    // std::cout << "KERNEL" << std::endl;
    // std::cout << "MATRIX 0 col" << std::endl;
    // for (int i = 0; i < MAX_QUERY_LENGTH; i++) {
    //     std::cout << init_col_scr[i][0] << std::endl;
    // }
    // std::cout << "MATRIX 1 col" << std::endl;
    // for (int i = 0; i < MAX_QUERY_LENGTH; i++) {
    //     std::cout << init_col_scr[i][1] << std::endl;
    // }
    // std::cout << "MATRIX 2 col" << std::endl;
    // for (int i = 0; i < MAX_QUERY_LENGTH; i++) {
    //     std::cout << init_col_scr[i][2] << std::endl;
    // }
    // std::cout << "MATRIX 3 col" << std::endl;
    // for (int i = 0; i < MAX_QUERY_LENGTH; i++) {
    //     std::cout << init_col_scr[i][3] << std::endl;
    // }
    // std::cout << "MATRIX 4 col" << std::endl;
    // for (int i = 0; i < MAX_QUERY_LENGTH; i++) {
    //     std::cout << init_col_scr[i][4] << std::endl;
    // }
}

void GlobalTwoPieceAffine::Helper::InitRow(score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH], Penalties penalties){
    type_t gap = penalties.open;
    type_t long_gap = penalties.long_open;
    init_row_scr[0] = score_vec_t({NINF, 0, NINF, NINF, NINF});
    for (int i = 1; i < MAX_REFERENCE_LENGTH; i++){
        gap += penalties.extend;
        long_gap += penalties.long_extend;
#ifdef CMAKEDEBUG
        float gap_f = gap.to_float();
#endif
        init_row_scr[i] = score_vec_t({gap,MIN(gap,long_gap),NINF,long_gap,NINF});
    }
    // std::cout << "KERNEL" << std::endl;
    // std::cout << "MATRIX 0 row" << std::endl;
    // for (int i = 0; i < MAX_QUERY_LENGTH; i++) {
    //     std::cout << init_row_scr[i][0] << std::endl;
    // }
    // std::cout << "MATRIX 1 row" << std::endl;
    // for (int i = 0; i < MAX_QUERY_LENGTH; i++) {
    //     std::cout << init_row_scr[i][1] << std::endl;
    // }
    // std::cout << "MATRIX 2 row" << std::endl;
    // for (int i = 0; i < MAX_QUERY_LENGTH; i++) {
    //     std::cout << init_row_scr[i][2] << std::endl;
    // }
    // std::cout << "MATRIX 3 row" << std::endl;
    // for (int i = 0; i < MAX_QUERY_LENGTH; i++) {
    //     std::cout << init_row_scr[i][3] << std::endl;
    // }
    // std::cout << "MATRIX 4 row" << std::endl;
    // for (int i = 0; i < MAX_QUERY_LENGTH; i++) {
    //     std::cout << init_row_scr[i][4] << std::endl;
    // }
}   

void GlobalTwoPieceAffine::InitializeScores(
    score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH],
    score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
    Penalties penalties)
{
#pragma HLS dataflow
    Helper::InitCol(init_col_scr, penalties);
    Helper::InitRow(init_row_scr, penalties);
}

void GlobalTwoPieceAffine::UpdatePEMaximum(
        wavefront_scores_inf_t scores,
        ScorePack (&max)[PE_NUM],
        idx_t (&ics)[PE_NUM], idx_t (&jcs)[PE_NUM],
        idx_t (&p_col)[PE_NUM], idx_t ck_idx,
        bool (&predicate)[PE_NUM],
        idx_t query_len, idx_t ref_len){
    for (int i = 0; i < PE_NUM; i++)
    {
#pragma HLS unroll
        if (predicate[i])
        {
#ifdef CMAKEDEBUG
            auto dp_mem_s = scores[i + 1][LAYER_MAXIMIUM].to_float();
            auto max_s = max[i].score.to_float();
#endif
            if (scores[i + 1][LAYER_MAXIMIUM] > max[i].score)
            {
                // Notice this filtering condition compared to the Local Affine kernel. 
                // if ((chunk_offset + i == query_len - 1) || (pe_offset[i] == ref_len - 1))  // last row or last column
                if ( (ics[i] == query_len - 1) && (jcs[i] == ref_len - 1) )
                { // So we are at the last row or last column
                    max[i].score = scores[i + 1][LAYER_MAXIMIUM];
                    max[i].row = ics[i];
                    max[i].col = jcs[i];
                    max[i].p_col = p_col[i];
                    max[i].ck = ck_idx;
                    max[i].pe = i;
                }
            }
        }
    }
}

void GlobalTwoPieceAffine::InitializeMaxScores(ScorePack (&max)[PE_NUM], idx_t qry_len, idx_t ref_len)
{
    // In global alignment, we need to initialize the starting maximum scores to the last column
    for (int i = 0; i < PE_NUM; i++)
    {
#pragma HLS unroll
        max[i].score = NINF; // Need a custom struct for finding the negative infinity
        max[i].row = 0;
        max[i].col = 0;
        max[i].p_col = 0;
        max[i].ck = 0;
        max[i].pe = i;
    }
}

void GlobalTwoPieceAffine::Traceback::StateMapping(tbp_t tbp, TB_STATE &state, tbr_t &navigation)
{
    if (state == TB_STATE::MM)
    {
        if (tbp(2, 0) == TB_MAIN)
        {
            navigation = AL_MMI;
        }
        else if (tbp(2, 0) == TB_DELETE)
        {
            state = TB_STATE::DEL;
            navigation = AL_NULL;
        }
        else if (tbp(2, 0) == TB_INSERT)
        {
            state = TB_STATE::INS;
            navigation = AL_NULL;
        }
        else if (tbp(2, 0) == TB_LONG_DELETE)
        {
            state = TB_STATE::LONG_DEL;
            navigation = AL_NULL;
        }
        else if (tbp(2, 0) == TB_LONG_INSERT)
        {
            state = TB_STATE::LONG_INS;
            navigation = AL_NULL;
        }
    }
    else if (state == TB_STATE::DEL)
    {
        tbp_t temp = tbp & (~0u << 3);
        if (temp != TB_DMAT)
        { 
            state = TB_STATE::MM;
        }
        // otherwise remain in the same state/matrix
        navigation = AL_DEL;
    }
    else if (state == TB_STATE::INS)
    {
        tbp_t temp = tbp & (~0u << 3);
        if (temp != TB_IMAT)
        {
            state = TB_STATE::MM; // set the state back to MM
        }
        // otherwise remain in the same state/matrix
        navigation = AL_INS;
    }
    else if (state == TB_STATE::LONG_INS) 
    {  
        tbp_t temp = tbp & (~0u << 3);
        if (temp != TB_LIMAT) 
        {
            state = TB_STATE::MM;
        }
        // otherwise stay in the long insertion state
        navigation = AL_INS;
    }
    else if (state == TB_STATE::LONG_DEL)
    {
        tbp_t temp = tbp & (~0u << 3);
        if (temp != TB_LIMAT) 
        {
            state = TB_STATE::MM;
        }
        // otherwise stay in the long deletion state
        navigation = AL_DEL;
    }
    else
    {
        // Unknown State
// #ifdef CMAKEDEBUG
//         throw std::runtime_error("Unknown traceback state.");
// #endif
    }
    std::cout << "NAVIGATION IS " << navigation << std::endl;
}

void GlobalTwoPieceAffine::Traceback::StateInit(tbp_t tbp, TB_STATE &state)
{
    state = TB_STATE::MM;
//     if (tbp(1, 0) == TB_DIAG)
//     {
//         state = TB_STATE::MM;
//     }
//     else if (tbp(1, 0) == TB_UP)
//     {

//         state = TB_STATE::DEL;
//     }
//     else if (tbp(1, 0) == TB_LEFT)
//     {
//         state = TB_STATE::INS;
//     }
//     else
//     {
//         // Unknown Direction
// // #ifdef CMAKEDEBUG
// //         throw std::runtime_error("Unknown traceback direction." + std::to_string(tbp.to_int()));
// // #endif
//     }
}
// <<< Global Two Piece Affine Implementation <<<
