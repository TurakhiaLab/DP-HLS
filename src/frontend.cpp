





// // >>> Local Linear Implementation >>>
// // <<< Local Linear Implementation <<<

// // >>> Global DTW >>> 
// void GlobalDTW::InitializeScores(
//     score_vec_t (&init_col_scr)[MAX_QUERY_LENGTH],
//     score_vec_t (&init_row_scr)[MAX_REFERENCE_LENGTH],
//     Penalties penalties)
// {
// #ifdef ALIGN_GLOBAL_LINEAR
//     Utils::Init::Linspace<type_t, 1>(init_col_scr, 0, 0, (type_t) 0, penalties.linear_gap);
//     Utils::Init::Linspace<type_t, 1>(init_row_scr, 0, 0, (type_t) 0, penalties.linear_gap);
// #endif
// }


// void GlobalDTW::PE::Compute(char_t local_query_val,
//                 char_t local_reference_val,
//                 score_vec_t up_prev,
//                 score_vec_t diag_prev,
//                 score_vec_t left_prev,
//                 const Penalties penalties,
//                 score_vec_t &write_score,
// #ifdef CMAKEDEBUG
//                 tbp_t &write_traceback,
//                 int idx) // mark the PE index
// #else
//                 tbp_t &write_traceback)
// #endif
// {
//     // // If num_t is ap_fixed, then we need to manually calculate like this
//     // // but there are some error in hls math library
//     // char_t diff = local_query_val - local_reference_val;
//     // type_t dist = sqrt(pow(real(diff), num_t(2)) + pow(imag(diff), num_t(2)));

//     // If num_t is float, then we can calculate with abs
//     // char_t diff = local_query_val - local_reference_val;
//     // type_t dist = sqrt(imag(diff) * imag(diff) + real(diff) * real(diff));
//     type_t dist = abs(local_query_val - local_reference_val);

//     type_t min_value = (up_prev[0] < diag_prev[0]) ? up_prev[0] : diag_prev[0];
//     min_value = min_value < left_prev[0] ? min_value : left_prev[0];

//     write_traceback = (min_value == diag_prev[0]) ? TB_DIAG : ((min_value == up_prev[0]) ? TB_UP : TB_LEFT);

//     write_score[0] = min_value + dist;
// }

// void GlobalDTW::UpdatePEMaximum(
//     dp_mem_block_t dp_mem,
//     ScorePack (&max)[PE_NUM],
//     idx_t (&pe_offset)[PE_NUM],
//     idx_t chunk_offset,
//     bool (&predicate)[PE_NUM],
//     idx_t query_len, idx_t ref_len){
//             for (int i = 0; i < PE_NUM; i++)
//     {
// #pragma HLS unroll
//         if (predicate[i])
//         {
// #ifdef CMAKEDEBUG
//             auto dp_mem_s = dp_mem[i + 1][0][LAYER_MAXIMIUM].to_float();
//             auto max_s = max[i].score.to_float();
// #endif
//             if (dp_mem[i + 1][0][LAYER_MAXIMIUM] > max[i].score)
//             {
//                 // Notice this filtering condition compared to the Local Affine kernel. 
//                 // if ((chunk_offset + i == query_len - 1) || (pe_offset[i] == ref_len - 1))  // last row or last column
//                 if ( (chunk_offset + i == query_len - 1) && (pe_offset[i] == ref_len - 1) )
//                 { // So we are at the last row or last column
//                     max[i].score = dp_mem[i + 1][0][LAYER_MAXIMIUM];
//                     // FIXME: Set the correct row and col
//                     // max[i].chunk_offset = chunk_offset;
//                     // max[i].pe_offset = pe_offset[i];
//                 }
//             }
//         }
//     }
// }

// void GlobalDTW::InitializeMaxScores(ScorePack (&max)[PE_NUM], idx_t qry_len, idx_t ref_len){
//         for (int i = 0; i < PE_NUM; i++)
//     {
// #pragma HLS unroll
//         max[i].score = NINF; // Need a custom struct for finding the negative infinity
//         max[i].row = 0;
//         max[i].col = 0;
//     }
// }

// void GlobalDTW::Traceback::StateInit(tbp_t tbp, TB_STATE &state){
//     if (tbp == TB_DIAG)
//     {
//         state = TB_STATE::MM;
//     }
//     else if (tbp == TB_UP)
//     {
//         state = TB_STATE::DEL;
//     }
//     else if (tbp == TB_LEFT)
//     {
//         state = TB_STATE::INS;
//     }
//     else
//     {
//         state = TB_STATE::END; // Unknown Direction
//         // Unknown Direction
//     }
// }

// void GlobalDTW::Traceback::StateMapping(tbp_t tbp, TB_STATE &state, int &row, int &col, tbr_t &curr_write){

//     if (tbp == TB_DIAG)
//     {
//         row--;
//         col--;
//         curr_write = AL_MMI;
//     }
//     else if (tbp == TB_UP)
//     {
//         row--;
//         curr_write = AL_DEL;
//     }
//     else if (tbp == TB_LEFT)
//     {
//         col--;
//         curr_write = AL_INS;
//     }
//     else
//     {
//         state = TB_STATE::END; // Unknown Direction
//         curr_write = AL_END;
//     }
// }

// // <<< Global DTW <<<