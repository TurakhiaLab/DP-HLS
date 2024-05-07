#ifndef VPP_CLI
#include "../../include/frontend.h"
#else
#include "frontend.h"
#endif

// >>> Semi Global Linear Align Implementation >>>
void SemiGlobalLinearLongShort::InitializeScores(
    score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH],
    score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
    Penalties penalties)
{
    Utils::Init::Linspace<type_t, 1>(init_col_scr, 0, 0, (type_t) 0, 0);
    Utils::Init::Linspace<type_t, 1>(init_row_scr, 0, 0, (type_t) 0, penalties.linear_gap);
}


void SemiGlobalLinearLongShort::PE::Compute(char_t local_query_val,
                char_t local_reference_val,
                score_vec_t up_prev,
                score_vec_t diag_prev,
                score_vec_t left_prev,
                const Penalties penalties,
                score_vec_t &write_score,
                tbp_t &write_traceback)
{
#define TB_PH (tbp_t) 0b00
#define TB_LEFT (tbp_t) 0b01
#define TB_DIAG (tbp_t) 0b10
#define TB_UP (tbp_t) 0b11

		const type_t ins = left_prev[0] + penalties.linear_gap;
		const type_t del = up_prev[0] + penalties.linear_gap;

		const type_t match = (local_query_val == local_reference_val) ? diag_prev[0] + penalties.match : diag_prev[0] + penalties.mismatch;

		type_t max_value = ins;
        write_traceback = TB_LEFT;

        if (max_value < match){
            max_value = match;
            write_traceback = TB_DIAG;
        }

        if (max_value < del){
            max_value = del;
            write_traceback = TB_UP;
        }

		write_score = max_value;
}

void SemiGlobalLinearLongShort::UpdatePEMaximum(
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
            if (scores[i + 1][LAYER_MAXIMIUM] > max[i].score)
            {
                // Notice this filtering condition compared to the Local Affine kernel. 
                // if ((chunk_offset + i == query_len - 1) || (pe_offset[i] == ref_len - 1))  // last row or last column
                if ( jcs[i] == ref_len - 1 )
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

void SemiGlobalLinearLongShort::InitializeMaxScores(ScorePack (&max)[PE_NUM], idx_t qry_len, idx_t ref_len){
    for (int i = 0; i < PE_NUM; i++)
    {
#pragma HLS unroll
        max[i].score = 0; // Need a custom struct for finding the negative infinity
        max[i].row = 0;
        max[i].col = 0;
        max[i].p_col = 0;
        max[i].ck = 0;
        max[i].pe = i;
    }
    idx_t max_pe = (qry_len - 1) % PE_NUM;
    idx_t max_ck = (qry_len - 1)/ PE_NUM;
    max[max_pe].score = INF;  // This is dummy score by I just represent the idea it's maximum
    max[max_pe].row = qry_len - 1;
    max[max_pe].col = ref_len - 1;
    max[max_pe].p_col = (max_ck + 1) * ref_len - 1; // FIXME
    max[max_pe].ck = max_ck;
    max[max_pe].pe = max_pe;
}

void SemiGlobalLinearLongShort::Traceback::StateInit(tbp_t tbp, TB_STATE &state){
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

void SemiGlobalLinearLongShort::Traceback::StateMapping(tbp_t tbp, TB_STATE &state, tbr_t &navigation){

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

// <<< Semi Global Linear Align Implementation <<<
