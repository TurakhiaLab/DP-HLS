#ifndef UTILS_H
#define UTILS_H

#include "params.h"
#include <string>

namespace Utils
{

	namespace Array
	{
		// 		template <typename T, int N>
		// 		void WriteStreamBlock(T arr[N], hls::stream_of_blocks<T[N]> &stream_block)
		// 		{
		// 			hls::write_lock<T[N]> wr(stream_block);

		// #pragma HLS array_partition variable = arr type = complete
		// #pragma HLS array_partition variable = wr type = complete

		// 			for (int i = 0; i < N; i++)
		// 			{
		// #pragma HLS unroll
		// 				wr[i] = arr[i];
		// 			}
		// 		}
		template <typename T, int N>
		void ShiftLeft(T (&arr)[N], T new_data)
		{
			for (int i = 0; i < N; i++)
			{
#pragma HLS unroll
				arr[i] = arr[i + 1];
			}
			arr[N - 1] = new_data;
		}
		template <typename T, int N>
		void ShiftRight(T (&arr)[N], T new_data)
		{
#pragma HLS array_partition variable = arr dim = 1 type = complete
			for (int i = N - 1; i > 0; i--)
			{
#pragma HLS unroll
				arr[i] = arr[i - 1];
			}
			arr[0] = new_data;
		}

		/**
		 * @brief Copy length LEN of data from src to dst. If more than
		 * len, fill the rest with default_num. We need to use fixed length
		 * array rather than a pointer is because HLS is not pointer friendly.
		 *
		 * @tparam T: Type of the elements
		 * @tparam M: Length of src
		 * @tparam N: Length of dst
		 * @tparam LEN: Length to copy
		 * @param len: Length of actual copying
		 * @param default_num: default number to fill.
		 */
		template <typename T, int M, int N, int LEN>
		void Copy(T (&src)[M], T (&dst)[N], idx_t len, T default_num)
		{
			for (int i = 0; i < LEN; i++)
			{
#pragma HLS unroll
				dst[i] = i < len ? src[i] : default_num;
			}
		}

		template <typename T, int N>
		void Copy(T (&src)[N], T (&dst)[N])
		{
			for (int i = 0; i < N; i++)
			{
				dst[i] = src[i];
			}
		}


		// 		template <typename T, int M, int N>
		// 		void Copy(T(&dst)[M], idx_t dst_idx, T (&src)[N], idx_t src_idx, idx_t len, T default_num)
		// 		{
		// 			for (int i = 0; i < len; i++)
		// 			{
		// #pragma HLS unroll
		// 				dst[i] = i < len ? src[i] : default_num;
		// 			}
		// 		}

		template <typename T>
		void Switch(T **arr1, T **arr2)
		{
			T *tmp = *arr1;
			*arr1 = *arr2;
			*arr2 = tmp;
		}

		template <typename T, int LEN>
		void CoordinateInitializeUniformReverse(hls::vector<T, LEN> (&jcs), T starting)
		{
			for (size_t i = 0; i < LEN; i++)
			{
				jcs[i] = starting - i;
			}
		}

		template <typename T, int LEN>
		void CoordinateInitializeUniform(hls::vector<T, LEN> (&jcs), T starting)
		{
			for (size_t i = 0; i < LEN; i++)
			{
				jcs[i] = starting + i;
			}
		}

		template <typename T, int LEN>
		void CoordinateInitializeUniform(T (&jcs)[LEN], T starting)
		{
			for (size_t i = 0; i < LEN; i++)
			{
				jcs[i] = starting + i;
			}
		}

		template <typename T, int LEN>
		void Linspace(T (&arr)[LEN], T start, T step)
		{
			T cnt = start;
			for (int i = 0; i < LEN; i++)
			{
				arr[i] = cnt;
				cnt += step;
			}
		}
	}

	namespace Init
	{

		template <typename T, int N>
		void ArrSet(T (&arr)[N], T val)
		{

			for (int i = 0; i < N; i++)
			{
				arr[i] = val;
			}
		}

		template <typename T, int N>
		void ArrSet(T (&arr)[N], idx_t layer, T val)
		{

			for (int i = 0; i < N; i++)
			{
				arr[i][layer] = val[layer];
			}
		}

		template <typename T, int LAY, int N>
		void Linspace(hls::vector<T, LAY> (&arr)[N], idx_t starting_idx, idx_t layer, type_t start, type_t step)
		{
			type_t cnt = start;
			for (int i = starting_idx; i < N; i++)
			{
				cnt += step;
				arr[i][layer] = cnt;
			}
		}

		template <typename T>
		void Linspace(T &arr, idx_t starting_idx, idx_t layer, type_t start, type_t step, int len)
		{
			type_t cnt = start;
			for (int i = starting_idx; i < len; i++)
			{
				cnt += step;
				arr[i][layer] = cnt;
			}
		}

		/**
		 * @brief ONLY FOR RECTANGULAR KERNEL Global alignment start the traceback at the bottom right corner of the score matrix. 
		 * Given the query and reference length, the traceback physical address can be determined before 
		 * the score matri iteration. Thus, this function takes the ScorePack array, according to the
		 * query and reference legnth, to set the traceback starting PE's ScorePack with INF and corresponding
		 * coordinate. 
		 * 
		 * @tparam LEN Number of PE
		 * @tparam IDX_T Index Type Used in the Kernel
		 * @param qry_len Actual Query Length
		 * @param ref_len Actual Reference Length
		 */
		template <typename PACK, typename IDX_T, int LEN>
		void DetermineGlobalTracebackCoordinate(PACK (&local_maximum)[LEN], IDX_T qry_len, IDX_T ref_len){
			IDX_T max_pe = (qry_len - 1) % PE_NUM;
			IDX_T max_ck = (qry_len - 1)  / PE_NUM;
			local_maximum[max_pe].score = INF;
			local_maximum[max_pe].p_col = (max_ck) * (MAX_REFERENCE_LENGTH + PE_NUM - 1) + max_pe + ref_len - 1;
			local_maximum[max_pe].ck = max_ck;
		}

	}

	namespace Matrix
	{

		// 		template <typename T, int M, int N>
		// 		void WriteStreamBlock(T arr[M][N], hls::stream_of_blocks<T[M][N]> &stream_block)
		// 		{
		// 			hls::write_lock<T[M][N]> wr(stream_block);

		// 			for (int i = 0; i < M; i++)
		// 			{
		// #pragma HLS unroll
		// 				for (int j = 0; j < N; j++)
		// 				{
		// #pragma HLS unroll
		// 					wr[i][j] = arr[i][j];
		// 				}
		// 			}
		// 		}

		// 		template <typename T, int M, int N>
		// 		void ReadStreamBlock(T (&arr)[M][N], hls::stream_of_blocks<T[M][N]> &stream_block)
		// 		{
		// 			hls::read_lock<T[M][N]> rd(stream_block);

		// 			for (int i = 0; i < M; i++)
		// 			{
		// #pragma HLS unroll
		// 				for (int j = 0; j < N; j++)
		// 				{
		// #pragma HLS unroll
		// 					arr[i][j] = rd[i][j];
		// 				}
		// 			}
		// 		}

		// 		/**
		// 		 * @brief This function is for alias typname for steram of blocks
		// 		 *
		// 		 * @tparam T: For example, typedef int T[16]
		// 		 * @param arr: array form of redefined type
		// 		 * @param stream_block: stream of the block type
		// 		 */
		// 		template <typename T, int M, int N>
		// 		void WriteStreamBlock(T arr, hls::stream_of_blocks<T> &stream_block)
		// 		{
		// 			hls::write_lock<T> wr(stream_block);

		// 			for (int i = 0; i < M; i++)
		// 			{
		// #pragma HLS unroll
		// 				for (int j = 0; j < N; j++)
		// 				{
		// #pragma HLS unroll
		// 					wr[i][j] = arr[i][j];
		// 				}
		// 			}
		// 		}

		// 		template <typename T, int M, int N>
		// 		void ReadStreamBlock(T &arr, hls::stream_of_blocks<T> &stream_block)
		// 		{
		// 			hls::read_lock<T> rd(stream_block);

		// 			for (int i = 0; i < M; i++)
		// 			{
		// #pragma HLS unroll
		// 				for (int j = 0; j < N; j++)
		// 				{
		// #pragma HLS unroll
		// 					arr[i][j] = rd[i][j];
		// 				}
		// 			}
		// 		}

	}

	namespace Kernel {
		template <typename T, int LEN, int BLK>
		void top_level_radin_line(T src[BLK], T dst[BLK][LEN], idx_t i){
			for (idx_t j = 0; j < BLK; j++){
				dst[j][i] = src[j];
			}
		}

		template <typename T, int LEN, int BLK>
		void top_level_readin(T ddr_in[LEN][BLK], T internal[BLK][LEN]){
			// char_t burst_buffer[BLK];
			for (idx_t i = 0; i < LEN; i ++){
#pragma HLS PIPELINE II=1
				// top_level_radin_line<T, LEN, BLK>(ddr_in[i], internal, i);
				for (idx_t j = 0; j < BLK; j++){
					internal[j][i] = ddr_in[i][j];
				}
				// top_level_radin_line<T, LEN, BLK>(burst_buffer, internal, i);
				// for (idx_t j = 0; j < BLK; j++){
				// 	internal[j][k] = ddr_in[i + j];
				// }
			}
		}

		template <typename T, int LEN, int BLK>
		void top_level_writeout(T internal[BLK][LEN], T ddr_out[LEN][BLK]){
			for (idx_t i = 0; i < LEN; i++){
#pragma HLS PIPELINE II=1
				for (idx_t j = 0; j < BLK; j++){
					ddr_out[i][j] = internal[j][i];
				}
			}
		}
	}
}

#endif // UTILS_H