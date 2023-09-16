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

		template <typename T, int M, int N, int LEN>
		void Copy(T (&src)[M], T(&dst)[N], idx_t len, T default_num)
		{
			for (int i = 0; i < LEN; i++)
			{
#pragma HLS unroll
				dst[i] = i < len ? src[i] : default_num;
			}
		}

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
		void Linspace(hls::vector<T, LAY> (&arr)[N], idx_t layer, type_t start, type_t step)
		{
			type_t cnt = start;
			for (int i = 0; i < N; i++)
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
}

#endif // UTILS_H