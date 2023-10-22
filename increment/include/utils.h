#ifndef UTILS_H
#define UTILS_H

#include "params.h"

namespace Utils
{

	namespace Array
	{
		template <typename T, int N>
		void WriteStreamBlock(T arr[N], hls::stream_of_blocks<T[N]> &stream_block)
		{
			hls::write_lock<T[N]> wr(stream_block);

#pragma HLS array_partition variable = arr type = complete
#pragma HLS array_partition variable = wr type = complete

			for (int i = 0; i < N; i++)
			{
#pragma HLS unroll
				wr[i] = arr[i];
			}
		}
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
			for (int i = N - 1; i >= 0; i--)
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
		void Copy(T (&src)[M], T(&dst)[N], idx_t len, T default_num)
		{
			for (int i = 0; i < LEN; i++)
			{
#pragma HLS unroll
				dst[i] = i < len ? src[i] : default_num;
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
		void Switch(T *arr1, T *arr2){
			T *tmp = arr1;
			arr1 = arr2;
			arr2 = tmp;
		}
	}

	namespace Init
	{

		template <typename T, int N>
		void ArrSet(T (&arr)[N], T val)
		{

			for (int i = 0; i < N; i++)
			{
#pragma HLS unroll
				arr[i] = val;
			}
		}

		template <typename T, int N>
		void ArrSet(T (&arr)[N], idx_t layer, T val)
		{

			for (int i = 0; i < N; i++)
			{
#pragma HLS unroll
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


	}

	namespace Matrix
	{

		template <typename T, int M, int N>
		void WriteStreamBlock(T arr[M][N], hls::stream_of_blocks<T[M][N]> &stream_block)
		{
			hls::write_lock<T[M][N]> wr(stream_block);

			for (int i = 0; i < M; i++)
			{
#pragma HLS unroll
				for (int j = 0; j < N; j++)
				{
#pragma HLS unroll
					wr[i][j] = arr[i][j];
				}
			}
		}

		template <typename T, int M, int N>
		void ReadStreamBlock(T (&arr)[M][N], hls::stream_of_blocks<T[M][N]> &stream_block)
		{
			hls::read_lock<T[M][N]> rd(stream_block);

			for (int i = 0; i < M; i++)
			{
#pragma HLS unroll
				for (int j = 0; j < N; j++)
				{
#pragma HLS unroll
					arr[i][j] = rd[i][j];
				}
			}
		}


		/**
		 * @brief This function is for alias typname for steram of blocks
		 * 
		 * @tparam T: For example, typedef int T[16] 
		 * @param arr: array form of redefined type
		 * @param stream_block: stream of the block type
		 */
		template <typename T, int M, int N>
		void WriteStreamBlock(T arr, hls::stream_of_blocks<T> &stream_block)
		{
			hls::write_lock<T> wr(stream_block);

			for (int i = 0; i < M; i++)
			{
#pragma HLS unroll
				for (int j = 0; j < N; j++)
				{
#pragma HLS unroll
					wr[i][j] = arr[i][j];
				}
			}
		}

		template <typename T, int M, int N>
		void ReadStreamBlock(T &arr, hls::stream_of_blocks<T> &stream_block)
		{
			hls::read_lock<T> rd(stream_block);

			for (int i = 0; i < M; i++)
			{
#pragma HLS unroll
				for (int j = 0; j < N; j++)
				{
#pragma HLS unroll
					arr[i][j] = rd[i][j];
				}
			}
		}

	}
	namespace Debug {
		template <typename T1, typename T2, int LEN>
		void translate(T1 (&hls_arr)[LEN], T2 (&std_arr)[LEN]){
			for (int i = 0; i < LEN; i++){
				std_arr[i] = (T2)(hls_arr[i]);
			}
		}

		template <typename T1, typename T2, int M, int N>
		void translate(T1 (&hls_mat)[M][N], T2 (&std_mat)[M][N]){
			for (int i = 0; i < M; i++){
				for (int j = 0; j < N; j++){
					std_mat[i][j] = (T2)(hls_mat[i][j]);
				}
			}
		}

		template <typename T1, typename T2, int M, int N, int K>
		void translate_multilayer(T1 (&hls_mat)[M][N], T2 (&std_mat)[K][M][N]){
			for (int i = 0; i < M; i++){
				for (int j = 0; j < N; j++){
					for (int k = 0; k < K; k++) {
                        std_mat[k][i][j] = (float) (hls_mat[i][j][k]);
                    }
				}
			}
		}

		std::vector<float> translate_vec(hls::vector<type_t, N_LAYERS> (&arr));
		std::vector<std::vector<float>> translate_scores(hls::vector<type_t, N_LAYERS> (&arr)[PE_NUM]);

		namespace Translate {
			template <typename T, int NL, int M, int N>
			std::vector<std::vector<std::vector<float>>> score_mat(
				hls::vector<T, NL> scores[M][N]
			){
				std::vector<std::vector<std::vector<float>>> result;

				for (int i = 0; i < M; i++){
					std::vector<std::vector<float>> pe_row;
					for (int j = 0; j < N; j++){
						std::vector<float> pe_vec;
						for (int k = 0; k < NL; k++){
							pe_vec.push_back(scores[i][j][k].to_float());
						}
						pe_row.push_back(pe_vec);
					}
					result.push_back(pe_row);
				}
				return result;
			}

		}

		
	}
}

#endif // UTILS_H