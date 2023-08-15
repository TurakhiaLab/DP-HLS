#include <hls_task.h>
#include "../../include/PE.h"
#include <hls_vector.h>
#include <hls_np_channel.h>
#include "../../include/params.h"

#ifdef DEBUG
#include "debug.h"
#include <cstdio>
#endif

void PE::LocalLinear::Compute(
        hls::stream<char_t> &local_query_val,
        hls::stream<char_t> &local_reference_val,
        hls::stream<hls::vector<type_t, N_LAYERS>> &up_prev_stm,
        hls::stream<hls::vector<type_t, N_LAYERS>> &diag_prev_stm,
        hls::stream<hls::vector<type_t, N_LAYERS>> &left_prev_stm,
        hls::stream<hls::vector<type_t, N_LAYERS>> &write_score_stm,
        hls::stream<hls::vector<tbp_t, N_LAYERS>> &write_tbp_stm
) {
    type_t up = up_prev_stm.read()[0] + linear_gap_penalty;
    type_t left = left_prev_stm.read()[0] + linear_gap_penalty;
    type_t diag_prev = diag_prev_stm.read()[0];

    type_t match = (local_query_val.read() == local_reference_val.read()) ? diag_prev[0] + match_score : diag_prev[0] +
                                                                                                         mismatch_score;

    type_t max = up > left ? up : left;
    max = max > match ? max : match;
    max = max > zero_fp ? max : zero_fp;

    write_score_stm.write({max});
    if (max == zero_fp) { write_tbp_stm.write({tbp_t(0) + TB_PH}); }
    else {
        write_tbp_stm.write(
                {(max == match) ? tbp_t(0) + TB_DIAG : ((max == left) ? (tbp_t(0) + TB_LEFT) : (tbp_t(0) + TB_UP))});
    }

}

void PE::LocalLinear::ComputeBlock(char_t local_query_val,
                                   char_t local_reference_val,
                                   hls::vector<type_t, N_LAYERS> up_prev,
                                   hls::vector<type_t, N_LAYERS> diag_prev,
                                   hls::vector<type_t, N_LAYERS> left_prev,
                                   hls::vector<type_t, N_LAYERS> &write_score,
                                   hls::vector<tbp_t, N_LAYERS> &write_traceback) {
    type_t up = up_prev[0] + linear_gap_penalty;
    type_t left = left_prev[0] + linear_gap_penalty;

    type_t match = (local_query_val == local_reference_val) ? diag_prev[0] + match_score : diag_prev[0] +
                                                                                                         mismatch_score;
    type_t max = up > left ? up : left;
    max = max > match ? max : match;
    max = max > zero_fp ? max : zero_fp;

    write_score[0] = max;
    if (max == zero_fp) { write_traceback[0] = (tbp_t(0) + TB_PH); }
    else {
        write_traceback[0] =
                ((max == match) ? tbp_t(0) + TB_DIAG : ((max == left) ? (tbp_t(0) + TB_LEFT) : (tbp_t(0) + TB_UP)));
    }
}

void PE::LocalAffine::ComputeBlock(char_t local_query_val,
                                   char_t local_reference_val,
                                   hls::vector<type_t, N_LAYERS> up_prev,
                                   hls::vector<type_t, N_LAYERS> diag_prev,
                                   hls::vector<type_t, N_LAYERS> left_prev,
                                   hls::vector<type_t, N_LAYERS> &write_score,
                                   hls::vector<tbp_t, N_LAYERS> &write_traceback) {

}


// FIXME: Currently just the functionality of expand the PE is used, rather than the full functioning
//        kernel, since last_pe_score is not set yet.
void PE::ExpandCompute(
        char_t local_query[PE_NUM],
        char_t local_reference[PE_NUM],
        hls::vector<type_t, N_LAYERS> wavefronts[2][PE_NUM],
        hls::vector<type_t, N_LAYERS> write_score_arr[PE_NUM],
        hls::vector<tbp_t, N_LAYERS> write_traceback_arr[PE_NUM]
) {
#pragma HLS array_partition variable=local_query type=complete
#pragma HLS array_partition variable=local_reference type=complete
#pragma HLS array_partition variable=wavefronts type=complete
#pragma HLS array_partition variable=write_score_arr type=complete
#pragma HLS array_partition variable=write_traceback_arr type=complete

// FIXME: Can the use of stream of blocks possibly reduce the cycles to fill the channe to one?
    hls_thread_local hls::split::round_robin<char_t, PE_NUM, STM_DEPTH> local_query_split;
    hls_thread_local hls::split::round_robin<char_t, PE_NUM, STM_DEPTH> local_reference_split;
    hls_thread_local hls::split::round_robin<hls::vector<type_t, N_LAYERS>, PE_NUM> up_prev_split;
    hls_thread_local hls::split::round_robin<hls::vector<type_t, N_LAYERS>, PE_NUM> diag_prev_split;
    hls_thread_local hls::split::round_robin<hls::vector<type_t, N_LAYERS>, PE_NUM> left_prev_split;

    hls_thread_local hls::merge::round_robin<hls::vector<type_t, N_LAYERS>, PE_NUM> score_write_merge;
    hls_thread_local hls::merge::round_robin<hls::vector<tbp_t, N_LAYERS>, PE_NUM> tbp_write_merge;
#pragma HLS dataflow
    // prepare the input loop
    // could write in a function called distribute

    PE::ReadIn(
            local_query,
            local_reference,
            wavefronts,
            local_query_split.in,
            local_reference_split.in,
            left_prev_split.in,
            diag_prev_split.in,
            up_prev_split.in
    );

    hls_thread_local hls::task t[PE_NUM];
    for (int i = 0; i < PE_NUM; i++) {
#pragma HLS unroll
        t[i](
                PE::LocalLinear::Compute,
                local_query_split.out[i],
                local_reference_split.out[i],
                up_prev_split.out[i],
                diag_prev_split.out[i],
                left_prev_split.out[i],
                score_write_merge.in[i],
                tbp_write_merge.in[i]);
    }
#pragma HLS dataflow
    PE::WriteOut(
            score_write_merge.out,
            tbp_write_merge.out,
            write_score_arr,
            write_traceback_arr
    );


}

void PE::ReadIn(
        char_t local_qry_arr[PE_NUM],
        char_t local_ref_arr[PE_NUM],
        hls::vector<type_t, N_LAYERS> wavefronts[2][PE_NUM],
        hls::stream<char_t> &local_qry_stm,
        hls::stream<char_t> &local_ref_stm,
        hls::stream<hls::vector<type_t, N_LAYERS>> &left_prev_stm,
        hls::stream<hls::vector<type_t, N_LAYERS>> &diag_prev_stm,
        hls::stream<hls::vector<type_t, N_LAYERS>> &up_prev_stm) {
    for (int i = 0; i < PE_NUM; i++) {
#pragma HLS unroll
        local_qry_stm.write(local_qry_arr[i]);
        local_ref_stm.write(local_ref_arr[i]);
        up_prev_stm.write(i == 0 ? hls::vector<type_t, N_LAYERS>(0) : wavefronts[1][i - 1]);  // temporarily use 0
        diag_prev_stm.write(i == 0 ? hls::vector<type_t, N_LAYERS>(0) : wavefronts[0][i - 1]);  // temporarily use 0
        left_prev_stm.write(wavefronts[0][i]);
    }
}

void PE::WriteOut(
        hls::stream<hls::vector<type_t, N_LAYERS>> &score_stm,
        hls::stream<hls::vector<tbp_t, N_LAYERS>> &tbp_stm,
        hls::vector<type_t, N_LAYERS> write_score_arr[PE_NUM],
        hls::vector<tbp_t, N_LAYERS> write_traceback_arr[PE_NUM]
) {
    // could write in a function called collect
    for (int i = 0; i < PE_NUM; i++) {
#pragma HLS unroll
        write_score_arr[i] = score_stm.read();
        write_traceback_arr[i] = tbp_stm.read();
    }
}

void PE::ReadInBlock(
        input_char_block_t &local_qry_arr,
        input_char_block_t &local_ref_arr,
        score_block_t &up_prev_arr,
        score_block_t &diag_prev_arr,
        score_block_t &left_prev_arr,
        hls::stream_of_blocks<input_char_block_t> &local_qry_stm,
        hls::stream_of_blocks<input_char_block_t> &local_ref_stm,
        hls::stream_of_blocks<score_block_t> &left_prev_stm,
        hls::stream_of_blocks<score_block_t> &diag_prev_stm,
        hls::stream_of_blocks<score_block_t> &up_prev_stm) {
#pragma HLS array_partition variable = local_qry_arr type=complete
#pragma HLS array_partition variable = local_ref_arr type=complete
#pragma HLS array_partition variable = up_prev_arr type=complete
#pragma HLS array_partition variable = diag_prev_arr type=complete
#pragma HLS array_partition variable = left_prev_arr type=complete

#pragma HLS array_partition variable = local_qry_stm type=complete
#pragma HLS array_partition variable = local_ref_stm type=complete
#pragma HLS array_partition variable = left_prev_stm type=complete
#pragma HLS array_partition variable = diag_prev_stm type=complete
#pragma HLS array_partition variable = up_prev_stm type=complete

        write_lock<input_char_block_t> local_qry_acc(local_qry_stm);
        write_lock<input_char_block_t> local_ref_acc(local_ref_stm);
        write_lock<score_block_t> up_prev_acc(up_prev_stm);
        write_lock<score_block_t> diag_prev_acc(diag_prev_stm);
        write_lock<score_block_t> left_prev_acc(left_prev_stm);

    for (int i = 0; i < PE_NUM; i++) {
#pragma HLS unroll
        local_qry_acc[i] = local_qry_arr[i];
        local_ref_acc[i] = local_ref_arr[i];
        up_prev_acc[i] = up_prev_arr[i];
        diag_prev_acc[i] = diag_prev_arr[i];
        left_prev_acc[i] = left_prev_arr[i];
    }
}

void PE::WriteOutBlock(
        hls::stream_of_blocks<score_block_t> &score_stm,
        hls::stream_of_blocks<tbp_block_t> &tbp_stm,
        score_block_t &write_score_arr,
        tbp_block_t &write_traceback_arr
) {
#pragma HLS array_partition variable = write_score_arr type=complete
#pragma HLS array_partition variable = write_traceback_arr type=complete

#pragma HLS array_partition variable = score_stm type=complete
#pragma HLS array_partition variable = tbp_stm type=complete

    read_lock<score_block_t> score_acc(score_stm);
    read_lock<tbp_block_t> tbp_acc(tbp_stm);
    for (int i = 0; i < PE_NUM; i++) {
#pragma HLS unroll
        write_score_arr[i] = score_acc[i];
        write_traceback_arr[i] = tbp_acc[i];
    }
}

void PE::ExpandComputeBlock(stream_of_blocks<input_char_block_t> &local_querys,
                            stream_of_blocks<input_char_block_t> &local_references,
                            stream_of_blocks<score_block_t> &up_prevs,
                            stream_of_blocks<score_block_t> &diag_prevs,
                            stream_of_blocks<score_block_t> &left_prevs,
                            stream_of_blocks<score_block_t> &output_scores,
                            stream_of_blocks<tbp_block_t> &output_tbp) {
    hls::read_lock<input_char_block_t> query_acc(local_querys);
    hls::read_lock<input_char_block_t> reference_acc(local_references);
    hls::read_lock<score_block_t > up_acc(up_prevs);
    hls::read_lock<score_block_t > diag_acc(diag_prevs);
    hls::read_lock<score_block_t > left_acc(left_prevs);
    hls::write_lock<score_block_t > out_score_acc(output_scores);
    hls::write_lock<tbp_block_t > out_tbp_acc(output_tbp);


    for (int i = 0; i < PE_NUM; i++){
#pragma HLS unroll
        PE::LocalLinear::ComputeBlock(
                query_acc[i],
                reference_acc[i],
                up_acc[i],
                diag_acc[i],
                left_acc[i],
                out_score_acc[i],
                out_tbp_acc[i]);
    }
}


