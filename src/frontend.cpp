#include "../include/frontend.h"
#include "../include/frontend.h"

// >>> Global Affine Implementation >>>
void GlobalAffine::PE::Compute(char_t local_query_val,
                               char_t local_reference_val,
                               hls::vector<type_t, N_LAYERS> up_prev,
                               hls::vector<type_t, N_LAYERS> diag_prev,
                               hls::vector<type_t, N_LAYERS> left_prev,
                               const Penalties penalties,
                               hls::vector<type_t, N_LAYERS> &write_score,
#ifdef DEBUG
                               tbp_t &write_traceback,
                               int idx) // mark the PE index)
#else
                               tbp_t &write_traceback)
#endif
{
#pragma HLS array_partition variable = local_query_val type = complete

    /*
     * Layer 0: Insert matrix I, moves horizontally
     * Layer 1: Match matrix M, moves diagonally
     * Layer 2: Delete matrix D, moves vertically
     */

    const type_t insert_open = left_prev[1] + penalties.open + penalties.extend; // Insert open
    const type_t insert_extend = left_prev[0] + penalties.open;                  // insert extend
    const type_t delete_open = up_prev[1] + penalties.open + penalties.extend;   // delete open
    const type_t delete_extend = up_prev[2] + penalties.open;                    // delete extend

#ifdef DEBUG
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

    write_score[0] = insert_open > insert_extend ? insert_open : insert_extend;
    write_score[2] = delete_open > delete_extend ? delete_open : delete_extend;

#ifdef DEBUG
    auto write_score_0_s = write_score[0].to_float();
    auto write_score_2_s = write_score[2].to_float();
#endif

    const type_t match = (local_query_val == local_reference_val) ? diag_prev[1] + penalties.match : diag_prev[1] + penalties.mismatch;

#ifdef DEBUG
    auto diag_prev_s = diag_prev[1].to_float();
    auto local_query_val_s = local_query_val.to_int();
    auto local_reference_val_s = local_reference_val.to_int();
#endif

    type_t max_value = write_score[0] > write_score[2] ? write_score[0] : write_score[2]; // compare between insertion and deletion
    max_value = max_value > match ? max_value : match;                                    // compare with match/mismatch
    write_score[1] = max_value;

#ifdef DEBUG
    auto match_s = match.to_float();
    auto write_score_1_s = write_score[1].to_float();
#endif

    // Set traceback pointer based on the direction of the maximum score.
    if (max_value == write_score[0])
    { // Insert Case
        write_traceback = TB_LEFT + (max_value == insert_extend ?  TB_IMAT : (tbp_t) 0 );
    }
    else if (max_value == write_score[2])
    {
        write_traceback = TB_UP + (max_value == delete_extend ? TB_DMAT :   (tbp_t) 0 );
    }
        else if (max_value == write_score[1])
    {
        write_traceback = TB_DIAG;
    }
    else
    {
        // Undefined behavior happens if the max score is non of the I, D, or M.
    }
}

void GlobalAffine::Helper::InitCol(score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH], Penalties penalties){
    type_t gap = penalties.open;
    for (int i = 0; i < MAX_QUERY_LENGTH; i++){
        gap += penalties.extend;
        init_col_scr[i] = score_vec_t({NINF, gap, 0});
    }
}

void GlobalAffine::Helper::InitRow(score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH], Penalties penalties){
    type_t gap = penalties.open;
    for (int i = 0; i < MAX_REFERENCE_LENGTH; i++){
        gap += penalties.extend;
        init_row_scr[i] = score_vec_t({0, gap, NINF});
    }
}   

void GlobalAffine::InitializeScores(
    score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH],
    score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
    Penalties penalties)
{
#pragma HLS dataflow
    Helper::InitCol(init_col_scr, penalties);
    Helper::InitRow(init_row_scr, penalties);
}

void GlobalAffine::UpdatePEMaximum(dp_mem_block_t dp_mem, ScorePack (&max)[PE_NUM], idx_t (&pe_offset)[PE_NUM], idx_t chunk_offset, bool (&predicate)[PE_NUM], idx_t query_len, idx_t ref_len)
{
    for (int i = 0; i < PE_NUM; i++)
    {
#pragma HLS unroll
        if (predicate[i])
        {
#ifdef DEBUG
            auto dp_mem_s = dp_mem[i + 1][0][LAYER_MAXIMIUM].to_float();
            auto max_s = max[i].score.to_float();
#endif
            if (dp_mem[i + 1][0][LAYER_MAXIMIUM] > max[i].score)
            {
                // Notice this filtering condition compared to the Local Affine kernel. 
                // if ((chunk_offset + i == query_len - 1) || (pe_offset[i] == ref_len - 1))  // last row or last column
                if ( (chunk_offset + i == query_len - 1) && (pe_offset[i] == ref_len - 1) )
                { // So we are at the last row or last column
                    max[i].score = dp_mem[i + 1][0][LAYER_MAXIMIUM];
                    max[i].chunk_offset = chunk_offset;
                    max[i].pe_offset = pe_offset[i];
                }
            }
        }
    }
}

void GlobalAffine::InitializeMaxScores(ScorePack (&max)[PE_NUM], idx_t qry_len, idx_t ref_len)
{
    // In global alignment, we need to initialize the starting maximum scores to the last column
    for (int i = 0; i < PE_NUM; i++)
    {
#pragma HLS unroll
        max[i].score = NINF; // Need a custom struct for finding the negative infinity
        max[i].chunk_offset = 0;
        max[i].pe = i;
        max[i].pe_offset = ref_len;
    }
}

void GlobalAffine::Traceback::StateMapping(tbp_t tbp, TB_STATE &state, int &row, int &col, tbr_t &curr_write)
{

    if (state == TB_STATE::MM)
    {
        if (tbp(1, 0) == TB_DIAG)
        {
            row--;
            col--;
            curr_write = AL_MMI;
        }
        else if (tbp(1, 0) == TB_UP)
        {
            state = TB_STATE::DEL;
            curr_write = NULL;
        }
        else if (tbp(1, 0) == TB_LEFT)
        {
            state = TB_STATE::INS;
            curr_write = NULL;
        }
        else
        {
            // Unknown Direction
#ifdef DEBUG
            // Such construct is not available for synthesizing kernel.
            // However, it can be used to debug error in pure CSimulation.
            // And also if in the near future a kernel debugging method is developed,
            // this is used as a placeholder to check.
            throw std::runtime_error("Unknown traceback direction." + std::to_string(tbp.to_int()));
#endif
        }
    }
    else if (state == TB_STATE::DEL)
    {
        if ((bool)tbp[3])
        { // deletion extending
            // states remains the same.
            // printf("delete extend");
        }
        else
        {                         // deletion closing
            state = TB_STATE::MM; // set the state back to MM
            
        }
        curr_write = AL_DEL;
        row--;
    }
    else if (state == TB_STATE::INS)
    {
        if ((bool)tbp[2])
        { // insertion extending
            // states remains the same.
            // ("delete extend");
        }
        else
        {                         // insertion closing
            state = TB_STATE::MM; // set the state back to MM
        }
        curr_write = AL_INS;
        col--;
    }
    else
    {
        // Unknown State
#ifdef DEBUG
        throw std::runtime_error("Unknown traceback state.");
#endif
    }
}

void GlobalAffine::Traceback::StateInit(tbp_t tbp, TB_STATE &state)
{
    if (tbp(1, 0) == TB_DIAG)
    {
        state = TB_STATE::MM;
    }
    else if (tbp(1, 0) == TB_UP)
    {
        state = TB_STATE::DEL;
    }
    else if (tbp(1, 0) == TB_LEFT)
    {
        state = TB_STATE::INS;
    }
    else
    {
        // Unknown Direction
#ifdef DEBUG
        throw std::runtime_error("Unknown traceback direction." + std::to_string(tbp.to_int()));
#endif
    }
}

tbr_t GlobalAffine::Traceback::StateToPath(TB_STATE state)
{
    if (state == TB_STATE::MM)
    {
        return AL_MMI;
    }
    else if (state == TB_STATE::DEL)
    {
        return AL_DEL;
    }
    else if (state == TB_STATE::INS)
    {
        return AL_INS;
    }else {
        return AL_END;
    }
}
// <<< Global Affine Implementation <<<



// >>> Local Affine Implementation >>>
void LocalAffine::PE::Compute(char_t local_query_val,
                               char_t local_reference_val,
                               hls::vector<type_t, N_LAYERS> up_prev,
                               hls::vector<type_t, N_LAYERS> diag_prev,
                               hls::vector<type_t, N_LAYERS> left_prev,
                               const Penalties penalties,
                               hls::vector<type_t, N_LAYERS> &write_score,
#ifdef DEBUG
                               tbp_t &write_traceback,
                               int idx) // mark the PE index)
#else
                               tbp_t &write_traceback)
#endif
{
#pragma HLS array_partition variable = local_query_val type = complete

    /*
     * Layer 0: Insert matrix I, moves horizontally
     * Layer 1: Match matrix M, moves diagonally
     * Layer 2: Delete matrix D, moves vertically
     */

    const type_t insert_open = left_prev[1] + penalties.open + penalties.extend; // Insert open
    const type_t insert_extend = left_prev[0] + penalties.open;                  // insert extend
    const type_t delete_open = up_prev[1] + penalties.open + penalties.extend;   // delete open
    const type_t delete_extend = up_prev[2] + penalties.open;                    // delete extend

#ifdef DEBUG
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
    auto diag_prev_0_s = diag_prev[0].to_float();
    auto diag_prev_1_s = diag_prev[1].to_float();
    auto diag_prev_2_s = diag_prev[2].to_float();
#endif

    write_score[0] = insert_open > insert_extend ? insert_open : insert_extend;
    write_score[2] = delete_open > delete_extend ? delete_open : delete_extend;

#ifdef DEBUG
    auto write_score_0_s = write_score[0].to_float();
    auto write_score_2_s = write_score[2].to_float();
#endif

    const type_t match = (local_query_val == local_reference_val) ? diag_prev[1] + penalties.match : diag_prev[1] + penalties.mismatch;

#ifdef DEBUG
    auto diag_prev_s = diag_prev[1].to_float();
    auto local_query_val_s = local_query_val.to_int();
    auto local_reference_val_s = local_reference_val.to_int();
#endif

    type_t max_value = write_score[0] > write_score[2] ? write_score[0] : write_score[2]; // compare between insertion and deletion
    max_value = max_value > match ? max_value : match;                                    // compare with match/mismatch
    max_value = max_value > zero_fp ? max_value : zero_fp;
    write_score[1] = max_value;  // set to 0 if less than 0

#ifdef DEBUG
    auto match_s = match.to_float();
    auto write_score_1_s = write_score[1].to_float();
#endif

    // Set traceback pointer based on the direction of the maximum score.
    if (max_value == zero_fp){
        write_traceback = TB_PH;
    }
    else if (max_value == write_score[0])
    { // Insert Case
        write_traceback = TB_LEFT + (max_value == insert_extend ? (tbp_t) 0 : (tbp_t) TB_IMAT);
    }
        else if (max_value == write_score[1])
    {
        write_traceback = TB_DIAG;
    }
    else if (max_value == write_score[2])
    {
        write_traceback = TB_UP + (max_value == delete_extend ? (tbp_t) 0 : (tbp_t) TB_DMAT );
    }
    else
    {
        // Undefined behavior happens if the max score is non of the I, D, or M.
    }
}

void LocalAffine::InitializeScores(
    score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH],
    score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
    Penalties penalties)
{
    Utils::Init::ArrSet(init_col_scr, {NINF, 0.0, 0.0});  // qry
    Utils::Init::ArrSet(init_row_scr, {0.0, 0.0, NINF}); // reference layer 0
}

void LocalAffine::UpdatePEMaximum(
    dp_mem_block_t dp_mem,
    ScorePack (&max)[PE_NUM],
    idx_t (&pe_offset)[PE_NUM],
    idx_t chunk_offset,
    bool (&predicate)[PE_NUM],
    idx_t query_len, idx_t ref_len){
    // CUSTOMIZE FIND MAX (GLOBAL/LOCAL)
    for (int i = 0; i < PE_NUM; i++)
    {
#pragma HLS unroll
        if (predicate[i])
        {
#ifdef DEBUG
            auto dp_mem_s = dp_mem[i + 1][0][LAYER_MAXIMIUM].to_float();
            auto max_s = max[i].score.to_float();
#endif
            if (dp_mem[i + 1][0][LAYER_MAXIMIUM] > max[i].score)
            {
                max[i].score = dp_mem[i + 1][0][LAYER_MAXIMIUM];
                max[i].chunk_offset = chunk_offset;
                max[i].pe_offset = pe_offset[i];
            }
        }
    }
}

void LocalAffine::InitializeMaxScores(ScorePack (&max)[PE_NUM], idx_t qry_len, idx_t ref_len)
{
    for (int i = 0; i < PE_NUM; i++)
    {
#pragma HLS unroll
        max[i].score = NINF;
        max[i].chunk_offset = 0;
        max[i].pe = i;
        max[i].pe_offset = 0;  // Notice the difference we initialize the local alignment. 
    }
}

void LocalAffine::Traceback::StateMapping(tbp_t tbp, TB_STATE &state, int &row, int &col, tbr_t &curr_write)
{
    // If the tbp is TB_PH then set the state to end
    if (state == TB_STATE::MM)
    {
        if (tbp(1, 0) == TB_DIAG)
        {
            row--;
            col--;
            curr_write = AL_MMI;
        }
        else if (tbp(1, 0) == TB_UP)
        {
            state = TB_STATE::DEL;
            curr_write = NULL;
        }
        else if (tbp(1, 0) == TB_LEFT)
        {
            state = TB_STATE::INS;
            curr_write = NULL;
        }
        else
        {
            // Unknown Direction
#ifdef DEBUG
            state = TB_STATE::END;
            curr_write = AL_END;
            // Such construct is not available for synthesizing kernel.
            // However, it can be used to debug error in pure CSimulation.
            // And also if in the near future a kernel debugging method is developed,
            // this is used as a placeholder to check.
            // throw std::runtime_error("Unknown traceback direction." + std::to_string(tbp.to_int()));
#endif
        }
    }
    else if (state == TB_STATE::DEL)
    {
        if ((bool)tbp[3])
        { // deletion extending
            // states remains the same.
        }
        else
        {                         // deletion closing
            state = TB_STATE::MM; // set the state back to MM
        }
        curr_write = AL_DEL;
        row--;
    }
    else if (state == TB_STATE::INS)
    {
        if ((bool)tbp[2])
        { // insertion extending
            // states remains the same.
        }
        else
        {                         // insertion closing
            state = TB_STATE::MM; // set the state back to MM
        }
        curr_write = AL_INS;
        col--;
    }
    else
    {
        // Unknown State
#ifdef DEBUG
        throw std::runtime_error("Unknown traceback state.");
#endif
    }

    // Override the next state to end if the current traceback poitner indicates end. 
    if (tbp(1,0) == TB_PH){
        state = TB_STATE::END;
        curr_write = AL_END;
    }


}

void LocalAffine::Traceback::StateInit(tbp_t tbp, TB_STATE &state)
{
    if (tbp(1, 0) == TB_DIAG)
    {
        state = TB_STATE::MM;
    }
    else if (tbp(1, 0) == TB_UP)
    {
        state = TB_STATE::DEL;
    }
    else if (tbp(1, 0) == TB_LEFT)
    {
        state = TB_STATE::INS;
    }
    else
    {
        // Unknown Direction
#ifdef DEBUG
        throw std::runtime_error("Unknown traceback direction." + std::to_string(tbp.to_int()));
#endif
    }
}

tbr_t LocalAffine::Traceback::StateToPath(TB_STATE state)
{
    if (state == TB_STATE::MM)
    {
        return AL_MMI;
    }
    else if (state == TB_STATE::DEL)
    {
        return AL_DEL;
    }
    else
    {
        return AL_INS;
    }
}
// <<< Local Affine Implementation <<<



// >>> Global Linear Implementation >>>
void GlobalLinear::InitializeScores(
    score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH],
    score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
    Penalties penalties)
{
#ifdef ALIGN_GLOBAL_LINEAR
    Utils::Init::Linspace<type_t, 1>(init_col_scr, 0, 0, (type_t) 0, penalties.linear_gap);
    Utils::Init::Linspace<type_t, 1>(init_row_scr, 0, 0, (type_t) 0, penalties.linear_gap);
#endif
}


void GlobalLinear::PE::Compute(char_t local_query_val,
                char_t local_reference_val,
                hls::vector<type_t, N_LAYERS> up_prev,
                hls::vector<type_t, N_LAYERS> diag_prev,
                hls::vector<type_t, N_LAYERS> left_prev,
                const Penalties penalties,
                hls::vector<type_t, N_LAYERS> &write_score,
#ifdef DEBUG
                tbp_t &write_traceback,
                int idx) // mark the PE index
#else
                tbp_t &write_traceback)
#endif
{
		const type_t ins = left_prev[0] + penalties.linear_gap;
		const type_t del = up_prev[0] + penalties.linear_gap;

		const type_t match = (local_query_val == local_reference_val) ? diag_prev[0] + penalties.match : diag_prev[0] + penalties.mismatch;

		type_t max_value = (del > ins) ? del : ins;
        max_value = max_value > match ? max_value : match;

		write_traceback = (max_value == match) ? TB_DIAG : ((max_value == del) ? TB_UP : TB_LEFT);

		write_score = max_value;
}

void GlobalLinear::UpdatePEMaximum(
    dp_mem_block_t dp_mem,
    ScorePack (&max)[PE_NUM],
    idx_t (&pe_offset)[PE_NUM],
    idx_t chunk_offset,
    bool (&predicate)[PE_NUM],
    idx_t query_len, idx_t ref_len){
            for (int i = 0; i < PE_NUM; i++)
    {
#pragma HLS unroll
        if (predicate[i])
        {
#ifdef DEBUG
            auto dp_mem_s = dp_mem[i + 1][0][LAYER_MAXIMIUM].to_float();
            auto max_s = max[i].score.to_float();
#endif
            if (dp_mem[i + 1][0][LAYER_MAXIMIUM] > max[i].score)
            {
                // Notice this filtering condition compared to the Local Affine kernel. 
                // if ((chunk_offset + i == query_len - 1) || (pe_offset[i] == ref_len - 1))  // last row or last column
                if ( (chunk_offset + i == query_len - 1) && (pe_offset[i] == ref_len - 1) )
                { // So we are at the last row or last column
                    max[i].score = dp_mem[i + 1][0][LAYER_MAXIMIUM];
                    max[i].chunk_offset = chunk_offset;
                    max[i].pe_offset = pe_offset[i];
                }
            }
        }
    }
}

void GlobalLinear::InitializeMaxScores(ScorePack (&max)[PE_NUM], idx_t qry_len, idx_t ref_len){
        for (int i = 0; i < PE_NUM; i++)
    {
#pragma HLS unroll
        max[i].score = NINF; // Need a custom struct for finding the negative infinity
        max[i].chunk_offset = 0;
        max[i].pe = i;
        max[i].pe_offset = ref_len;
    }
}

void GlobalLinear::Traceback::StateInit(tbp_t tbp, TB_STATE &state){
    if (tbp == TB_DIAG)
    {
        state = TB_STATE::MM;
    }
    else if (tbp == TB_UP)
    {
        state = TB_STATE::DEL;
    }
    else if (tbp == TB_LEFT)
    {
        state = TB_STATE::INS;
    }
    else
    {
        state = TB_STATE::END; // Unknown Direction
        // Unknown Direction
    }
}

void GlobalLinear::Traceback::StateMapping(tbp_t tbp, TB_STATE &state, int &row, int &col, tbr_t &curr_write){

    if (tbp == TB_DIAG)
    {
        row--;
        col--;
        curr_write = AL_MMI;
    }
    else if (tbp == TB_UP)
    {
        row--;
        curr_write = AL_DEL;
    }
    else if (tbp == TB_LEFT)
    {
        col--;
        curr_write = AL_INS;
    }
    else
    {
        state = TB_STATE::END; // Unknown Direction
        curr_write = AL_END;
    }
}

// <<< Global Linear Implementation <<<



// >>> Local Linear Implementation >>>
// <<< Local Linear Implementation <<<