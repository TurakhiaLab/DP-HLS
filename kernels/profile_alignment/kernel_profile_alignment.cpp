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
#pragma HLS array_partition variable = local_reference_val type = complete
#pragma HLS array_partition variable = penalties.transition type = complete

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

    // ap_int<8> lqc = 0;  // normalization term
    // ap_int<8> lrc = 0;  // normalization term
    // ap_int<8> lqclrc;

// #pragma HLS bind_op variable=lqclrc op=mul impl = dsp

    // Compute the cell scores
    type_t partial_prod[5];

#pragma HLS array_partition variable = partial_prod type = complete
#pragma HLS bind_op variable=partial_prod op=mul impl = dsp

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
#pragma HLS bind_op variable=cell_score op=mul impl = dsp

    for (ushort i = 0; i < 5; i++)
    {
#pragma HLS unroll
        cell_score += partial_prod[i] * local_reference_val[i];

    }

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
    const wavefront_scores_inf_t scores,
    ScorePack (&max)[PE_NUM],
    const idx_t chunk_row_offset, const idx_t wavefront,
    const idx_t p_cols, const idx_t ck_idx,
    const bool (&predicate)[PE_NUM],
    const idx_t query_len, const idx_t ref_len){

}

void Profile::InitializeMaxScores(ScorePack (&max)[PE_NUM], idx_t qry_len, idx_t ref_len)
{
    for (int i = 0; i < PE_NUM; i++)
    {
#pragma HLS unroll
        max[i].score = NINF;
        max[i].p_col = 0;
        max[i].ck = 0;

    }
    idx_t max_pe = (qry_len - 1) % PE_NUM;
    idx_t max_ck = (qry_len - 1)  / PE_NUM;
    max[max_pe].score = INF;
    max[max_pe].p_col = (max_ck) * (MAX_REFERENCE_LENGTH + PE_NUM - 1) + max_pe + ref_len - 1;
    max[max_pe].ck = max_ck;
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

