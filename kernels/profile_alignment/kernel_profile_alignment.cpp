#include "frontend.h"

#ifdef CMAKEDEBUG
#include <vector>
#include <assert.h>
#endif // DEBUG

void Profile::PE::Compute(char_t local_query_val,
                               char_t local_reference_val,
                               score_vec_t up_prev,
                               score_vec_t diag_prev,
                               score_vec_t left_prev,
                               const Penalties penalties,
                               score_vec_t &write_score,
                               tbp_t &write_traceback)
{
#pragma HLS array_partition variable = local_query_val type = complete

#ifdef CMAKEDEBUG
    // replicate all type_t data structures to a float data structure
    std::vector<int> local_query_val_f;
    for (int i = 0; i < 5; i++)
    {
        local_query_val_f.push_back(local_query_val[i].to_int());
    }
    std::vector<int> local_reference_val_f;
    for (int i = 0; i < 5; i++)
    {
        local_reference_val_f.push_back(local_reference_val[i].to_int());
    }
#endif

    // Compute the cell scores
    hls::vector<type_t, 5> partial_prod;
#pragma HLS array_partition variable = partial_prod type = complete
    // First dot product
    for (ushort i = 0; i < 5; i++)
    {
#pragma HLS unroll
        partial_prod[i] = 0;
        for (ushort j = 0; j < 5; j++)
        {
#pragma HLS unroll
            partial_prod[i] += local_query_val[j] * penalties.transition[j][i];

        }
    }

    // Second dot product
    type_t cell_score = 0;
    ap_int<8> lqc = 0;  // normalization term
    ap_int<8> lrc = 0;  // normalization term
    for (ushort i = 0; i < 5; i++)
    {
#pragma HLS unroll
        cell_score += partial_prod[i] * local_reference_val[i];
        lrc += local_reference_val[i];
        lqc += local_query_val[i];
    }
    ap_int<8> lqclrc = lqc * lrc;

    if (lqclrc != 0) cell_score /= lqclrc;

// compute the cell scores with expanded multiplication
//     type_t cell_score = 0;
//     for (ushort i = 0; i < 5; i++)
//     {
// #pragma HLS unroll
//         for (ushort j = 0; j < 5; j++)
//         {
// #pragma HLS unroll
//             cell_score += local_query_val[i] * local_reference_val[j] * penalties.transition[i][j];
//         }
//     }

    type_t ins_score = left_prev[0] + penalties.linear_gap;
    type_t del_score = up_prev[0] + penalties.linear_gap;

#ifdef CMAKEDEBUG
    // replicate type_t datas
    float ins_score_f = ins_score.to_float();
    float del_score_f = del_score.to_float();
    float cell_score_f = cell_score.to_float();
#endif

    type_t maximum = del_score;
    write_traceback = TB_UP;
    if (maximum < diag_prev[0] + cell_score)
    {
        maximum = diag_prev[0] + cell_score;
        write_traceback = TB_DIAG;
    }
    if (maximum < ins_score)
    {
        maximum = ins_score;
        write_traceback = TB_LEFT;
    }

    write_score[0] = cell_score + maximum;
}

void Profile::InitializeScores(
    score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH],
    score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
    Penalties penalties)
{
    // Initialize the first column
    type_t gap_penl = 0;
    for (int i = 0; i < MAX_QUERY_LENGTH; i++)
    {
        gap_penl += penalties.linear_gap;
        init_col_scr[i][0] = gap_penl;
    }

    // Initialize the first row
    gap_penl = 0;
    for (int i = 0; i < MAX_REFERENCE_LENGTH; i++)
    {   
        gap_penl += penalties.linear_gap;
        init_row_scr[i][0] = gap_penl;
    }
    
}

void Profile::UpdatePEMaximum(
    wavefront_scores_inf_t scores,
    ScorePack (&max)[PE_NUM],
    idx_t (&ics)[PE_NUM], idx_t (&jcs)[PE_NUM],
    idx_t (&p_col)[PE_NUM], idx_t ck_idx,
    bool (&predicate)[PE_NUM],
    idx_t query_len, idx_t ref_len){
        
    // PE maximum doesn't need to be updated for the global affine kernels since 
    // we know that the traceback starts from the bottom right element of the score matrix
}

void Profile::InitializeMaxScores(ScorePack (&max)[PE_NUM], idx_t qry_len, idx_t ref_len)
{
    for (int i = 0; i < PE_NUM; i++)
    {
#pragma HLS unroll
        max[i].score = NINF;
        max[i].row = i;
        max[i].col = 0;
        max[i].p_col = 0;
        max[i].ck = 0;
        max[i].pe = i;
    }
    idx_t max_pe = (qry_len - 1) % PE_NUM;
    idx_t max_ck = (qry_len - 1)/ PE_NUM;
    max[max_pe].score = INF;
    max[max_pe].row = qry_len - 1;
    max[max_pe].col = ref_len - 1;
    max[max_pe].p_col = (max_ck + 1) * ref_len - 1;
    max[max_pe].ck = max_ck;
    max[max_pe].pe = max_pe;
}


void Profile::Traceback::StateMapping(tbp_t tbp, TB_STATE &state, tbr_t &navigation){

    if (tbp == TB_DIAG)
    {
        navigation = AL_MMI;
    }
    else if (tbp == TB_UP)
    {
        navigation = AL_DEL;
    }
    else if (tbp == TB_LEFT)
    {
        navigation = AL_INS;
    }
    else
    {
        state = TB_STATE::END; // Unknown Direction
        navigation = AL_END;
    }
}

void Profile::Traceback::StateInit(tbp_t tbp, TB_STATE &state){
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

