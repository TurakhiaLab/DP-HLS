#include "hls_signal_handler.h"
#include <algorithm>
#include <complex>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <map>
#include "ap_fixed.h"
#include "ap_int.h"
#include "autopilot_cbe.h"
#include "hls_half.h"
#include "hls_stream.h"

using namespace std;

// wrapc file define:
#define AUTOTB_TVIN_querys_0 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_0.dat"
#define AUTOTB_TVOUT_querys_0 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_0.dat"
#define AUTOTB_TVIN_querys_1 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_1.dat"
#define AUTOTB_TVOUT_querys_1 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_1.dat"
#define AUTOTB_TVIN_querys_2 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_2.dat"
#define AUTOTB_TVOUT_querys_2 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_2.dat"
#define AUTOTB_TVIN_querys_3 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_3.dat"
#define AUTOTB_TVOUT_querys_3 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_3.dat"
#define AUTOTB_TVIN_querys_4 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_4.dat"
#define AUTOTB_TVOUT_querys_4 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_4.dat"
#define AUTOTB_TVIN_querys_5 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_5.dat"
#define AUTOTB_TVOUT_querys_5 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_5.dat"
#define AUTOTB_TVIN_querys_6 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_6.dat"
#define AUTOTB_TVOUT_querys_6 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_6.dat"
#define AUTOTB_TVIN_querys_7 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_7.dat"
#define AUTOTB_TVOUT_querys_7 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_7.dat"
#define AUTOTB_TVIN_querys_8 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_8.dat"
#define AUTOTB_TVOUT_querys_8 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_8.dat"
#define AUTOTB_TVIN_querys_9 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_9.dat"
#define AUTOTB_TVOUT_querys_9 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_9.dat"
#define AUTOTB_TVIN_querys_10 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_10.dat"
#define AUTOTB_TVOUT_querys_10 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_10.dat"
#define AUTOTB_TVIN_querys_11 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_11.dat"
#define AUTOTB_TVOUT_querys_11 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_11.dat"
#define AUTOTB_TVIN_querys_12 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_12.dat"
#define AUTOTB_TVOUT_querys_12 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_12.dat"
#define AUTOTB_TVIN_querys_13 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_13.dat"
#define AUTOTB_TVOUT_querys_13 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_13.dat"
#define AUTOTB_TVIN_querys_14 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_14.dat"
#define AUTOTB_TVOUT_querys_14 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_14.dat"
#define AUTOTB_TVIN_querys_15 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_15.dat"
#define AUTOTB_TVOUT_querys_15 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_15.dat"
#define AUTOTB_TVIN_querys_16 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_16.dat"
#define AUTOTB_TVOUT_querys_16 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_16.dat"
#define AUTOTB_TVIN_querys_17 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_17.dat"
#define AUTOTB_TVOUT_querys_17 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_17.dat"
#define AUTOTB_TVIN_querys_18 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_18.dat"
#define AUTOTB_TVOUT_querys_18 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_18.dat"
#define AUTOTB_TVIN_querys_19 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_19.dat"
#define AUTOTB_TVOUT_querys_19 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_19.dat"
#define AUTOTB_TVIN_querys_20 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_20.dat"
#define AUTOTB_TVOUT_querys_20 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_20.dat"
#define AUTOTB_TVIN_querys_21 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_21.dat"
#define AUTOTB_TVOUT_querys_21 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_21.dat"
#define AUTOTB_TVIN_querys_22 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_22.dat"
#define AUTOTB_TVOUT_querys_22 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_22.dat"
#define AUTOTB_TVIN_querys_23 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_23.dat"
#define AUTOTB_TVOUT_querys_23 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_23.dat"
#define AUTOTB_TVIN_querys_24 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_24.dat"
#define AUTOTB_TVOUT_querys_24 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_24.dat"
#define AUTOTB_TVIN_querys_25 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_25.dat"
#define AUTOTB_TVOUT_querys_25 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_25.dat"
#define AUTOTB_TVIN_querys_26 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_26.dat"
#define AUTOTB_TVOUT_querys_26 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_26.dat"
#define AUTOTB_TVIN_querys_27 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_27.dat"
#define AUTOTB_TVOUT_querys_27 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_27.dat"
#define AUTOTB_TVIN_querys_28 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_28.dat"
#define AUTOTB_TVOUT_querys_28 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_28.dat"
#define AUTOTB_TVIN_querys_29 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_29.dat"
#define AUTOTB_TVOUT_querys_29 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_29.dat"
#define AUTOTB_TVIN_querys_30 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_30.dat"
#define AUTOTB_TVOUT_querys_30 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_30.dat"
#define AUTOTB_TVIN_querys_31 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_querys_31.dat"
#define AUTOTB_TVOUT_querys_31 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_querys_31.dat"
#define AUTOTB_TVIN_references "../tv/cdatafile/c.seq_align_multiple_static.autotvin_references.dat"
#define AUTOTB_TVOUT_references "../tv/cdatafile/c.seq_align_multiple_static.autotvout_references.dat"
#define AUTOTB_TVIN_query_lengths "../tv/cdatafile/c.seq_align_multiple_static.autotvin_query_lengths.dat"
#define AUTOTB_TVOUT_query_lengths "../tv/cdatafile/c.seq_align_multiple_static.autotvout_query_lengths.dat"
#define AUTOTB_TVIN_reference_lengths "../tv/cdatafile/c.seq_align_multiple_static.autotvin_reference_lengths.dat"
#define AUTOTB_TVOUT_reference_lengths "../tv/cdatafile/c.seq_align_multiple_static.autotvout_reference_lengths.dat"
#define AUTOTB_TVIN_penalties "../tv/cdatafile/c.seq_align_multiple_static.autotvin_penalties.dat"
#define AUTOTB_TVOUT_penalties "../tv/cdatafile/c.seq_align_multiple_static.autotvout_penalties.dat"
#define AUTOTB_TVIN_tb_streams "../tv/cdatafile/c.seq_align_multiple_static.autotvin_tb_streams.dat"
#define AUTOTB_TVOUT_tb_streams "../tv/cdatafile/c.seq_align_multiple_static.autotvout_tb_streams.dat"
#define AUTOTB_TVIN_gmem "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem.dat"
#define AUTOTB_TVOUT_gmem "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem.dat"
#define AUTOTB_TVIN_gmem_0 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_0.dat"
#define AUTOTB_TVOUT_gmem_0 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_0.dat"
#define AUTOTB_TVIN_gmem_1 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_1.dat"
#define AUTOTB_TVOUT_gmem_1 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_1.dat"
#define AUTOTB_TVIN_gmem_10 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_10.dat"
#define AUTOTB_TVOUT_gmem_10 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_10.dat"
#define AUTOTB_TVIN_gmem_11 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_11.dat"
#define AUTOTB_TVOUT_gmem_11 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_11.dat"
#define AUTOTB_TVIN_gmem_12 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_12.dat"
#define AUTOTB_TVOUT_gmem_12 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_12.dat"
#define AUTOTB_TVIN_gmem_13 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_13.dat"
#define AUTOTB_TVOUT_gmem_13 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_13.dat"
#define AUTOTB_TVIN_gmem_14 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_14.dat"
#define AUTOTB_TVOUT_gmem_14 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_14.dat"
#define AUTOTB_TVIN_gmem_15 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_15.dat"
#define AUTOTB_TVOUT_gmem_15 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_15.dat"
#define AUTOTB_TVIN_gmem_16 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_16.dat"
#define AUTOTB_TVOUT_gmem_16 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_16.dat"
#define AUTOTB_TVIN_gmem_17 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_17.dat"
#define AUTOTB_TVOUT_gmem_17 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_17.dat"
#define AUTOTB_TVIN_gmem_18 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_18.dat"
#define AUTOTB_TVOUT_gmem_18 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_18.dat"
#define AUTOTB_TVIN_gmem_19 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_19.dat"
#define AUTOTB_TVOUT_gmem_19 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_19.dat"
#define AUTOTB_TVIN_gmem_2 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_2.dat"
#define AUTOTB_TVOUT_gmem_2 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_2.dat"
#define AUTOTB_TVIN_gmem_20 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_20.dat"
#define AUTOTB_TVOUT_gmem_20 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_20.dat"
#define AUTOTB_TVIN_gmem_21 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_21.dat"
#define AUTOTB_TVOUT_gmem_21 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_21.dat"
#define AUTOTB_TVIN_gmem_22 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_22.dat"
#define AUTOTB_TVOUT_gmem_22 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_22.dat"
#define AUTOTB_TVIN_gmem_23 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_23.dat"
#define AUTOTB_TVOUT_gmem_23 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_23.dat"
#define AUTOTB_TVIN_gmem_24 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_24.dat"
#define AUTOTB_TVOUT_gmem_24 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_24.dat"
#define AUTOTB_TVIN_gmem_25 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_25.dat"
#define AUTOTB_TVOUT_gmem_25 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_25.dat"
#define AUTOTB_TVIN_gmem_26 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_26.dat"
#define AUTOTB_TVOUT_gmem_26 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_26.dat"
#define AUTOTB_TVIN_gmem_27 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_27.dat"
#define AUTOTB_TVOUT_gmem_27 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_27.dat"
#define AUTOTB_TVIN_gmem_28 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_28.dat"
#define AUTOTB_TVOUT_gmem_28 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_28.dat"
#define AUTOTB_TVIN_gmem_29 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_29.dat"
#define AUTOTB_TVOUT_gmem_29 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_29.dat"
#define AUTOTB_TVIN_gmem_3 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_3.dat"
#define AUTOTB_TVOUT_gmem_3 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_3.dat"
#define AUTOTB_TVIN_gmem_30 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_30.dat"
#define AUTOTB_TVOUT_gmem_30 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_30.dat"
#define AUTOTB_TVIN_gmem_31 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_31.dat"
#define AUTOTB_TVOUT_gmem_31 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_31.dat"
#define AUTOTB_TVIN_gmem_4 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_4.dat"
#define AUTOTB_TVOUT_gmem_4 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_4.dat"
#define AUTOTB_TVIN_gmem_5 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_5.dat"
#define AUTOTB_TVOUT_gmem_5 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_5.dat"
#define AUTOTB_TVIN_gmem_6 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_6.dat"
#define AUTOTB_TVOUT_gmem_6 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_6.dat"
#define AUTOTB_TVIN_gmem_7 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_7.dat"
#define AUTOTB_TVOUT_gmem_7 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_7.dat"
#define AUTOTB_TVIN_gmem_8 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_8.dat"
#define AUTOTB_TVOUT_gmem_8 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_8.dat"
#define AUTOTB_TVIN_gmem_9 "../tv/cdatafile/c.seq_align_multiple_static.autotvin_gmem_9.dat"
#define AUTOTB_TVOUT_gmem_9 "../tv/cdatafile/c.seq_align_multiple_static.autotvout_gmem_9.dat"


// tvout file define:
#define AUTOTB_TVOUT_PC_gmem "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem.dat"
#define AUTOTB_TVOUT_PC_gmem_0 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_0.dat"
#define AUTOTB_TVOUT_PC_gmem_1 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_1.dat"
#define AUTOTB_TVOUT_PC_gmem_10 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_10.dat"
#define AUTOTB_TVOUT_PC_gmem_11 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_11.dat"
#define AUTOTB_TVOUT_PC_gmem_12 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_12.dat"
#define AUTOTB_TVOUT_PC_gmem_13 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_13.dat"
#define AUTOTB_TVOUT_PC_gmem_14 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_14.dat"
#define AUTOTB_TVOUT_PC_gmem_15 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_15.dat"
#define AUTOTB_TVOUT_PC_gmem_16 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_16.dat"
#define AUTOTB_TVOUT_PC_gmem_17 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_17.dat"
#define AUTOTB_TVOUT_PC_gmem_18 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_18.dat"
#define AUTOTB_TVOUT_PC_gmem_19 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_19.dat"
#define AUTOTB_TVOUT_PC_gmem_2 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_2.dat"
#define AUTOTB_TVOUT_PC_gmem_20 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_20.dat"
#define AUTOTB_TVOUT_PC_gmem_21 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_21.dat"
#define AUTOTB_TVOUT_PC_gmem_22 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_22.dat"
#define AUTOTB_TVOUT_PC_gmem_23 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_23.dat"
#define AUTOTB_TVOUT_PC_gmem_24 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_24.dat"
#define AUTOTB_TVOUT_PC_gmem_25 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_25.dat"
#define AUTOTB_TVOUT_PC_gmem_26 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_26.dat"
#define AUTOTB_TVOUT_PC_gmem_27 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_27.dat"
#define AUTOTB_TVOUT_PC_gmem_28 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_28.dat"
#define AUTOTB_TVOUT_PC_gmem_29 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_29.dat"
#define AUTOTB_TVOUT_PC_gmem_3 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_3.dat"
#define AUTOTB_TVOUT_PC_gmem_30 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_30.dat"
#define AUTOTB_TVOUT_PC_gmem_31 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_31.dat"
#define AUTOTB_TVOUT_PC_gmem_4 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_4.dat"
#define AUTOTB_TVOUT_PC_gmem_5 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_5.dat"
#define AUTOTB_TVOUT_PC_gmem_6 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_6.dat"
#define AUTOTB_TVOUT_PC_gmem_7 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_7.dat"
#define AUTOTB_TVOUT_PC_gmem_8 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_8.dat"
#define AUTOTB_TVOUT_PC_gmem_9 "../tv/rtldatafile/rtl.seq_align_multiple_static.autotvout_gmem_9.dat"


namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const std::string msg;
    const size_t line;
    SimException(const std::string &msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const std::string &msg)
  {
    std::string s;
    s += "ERROR";
//  s += '(';
//  s += __FILE__;
//  s += ":";
//  s += std::to_string(line);
//  s += ')';
    s += ": ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  template<size_t n>
  void move(void* to, void* from)
  {
    auto t = (hls::stream<ap_uint<n>>*)to;
    auto f = (hls::stream<ap_uint<n>>*)from;
    while (!f->empty()) {
      t->write(f->read());
    }
  }

  template<size_t n>
  void task_move(void* to, void* from)
  {
    auto t = (hls::stream<ap_uint<n>>*)to;
    auto f = (hls::stream<ap_uint<n>>*)from;
    std::thread(
      [=] () { while (true) { t->write(f->read()); } }
    ).detach();
  }

  template<typename A, typename K, typename S, typename U, typename L, typename I, typename E>
  struct MoveAXIS
  {
    struct ST { A data; K keep; S strb; U user; L last; I id; E dest; };

    static void toSC(void* data, void* keep, void* strb, void* user, void* last, void* id, void* dest, void* axis)
    {
      ST st;
      ((hls::stream<ST>*)axis)->read(st);
      ((hls::stream<A>*)data)->write(st.data);
      ((hls::stream<K>*)keep)->write(st.keep);
      ((hls::stream<S>*)strb)->write(st.strb);
      ((hls::stream<U>*)user)->write(st.user);
      ((hls::stream<L>*)last)->write(st.last);
      ((hls::stream<I>*)id)->write(st.id);
      ((hls::stream<E>*)dest)->write(st.dest);
    }

    static void fromSC(void* data, void* keep, void* strb, void* user, void* last, void* id, void* dest, void* axis)
    {
      ST st;
      ((hls::stream<A>*)data)->read(st.data);
      ((hls::stream<K>*)keep)->read(st.keep);
      ((hls::stream<S>*)strb)->read(st.strb);
      ((hls::stream<U>*)user)->read(st.user);
      ((hls::stream<L>*)last)->read(st.last);
      ((hls::stream<I>*)id)->read(st.id);
      ((hls::stream<E>*)dest)->read(st.dest);
      ((hls::stream<ST>*)axis)->write(st);
    }
  };

  template<size_t sdata, size_t skeep, size_t sstrb, size_t suser,
           size_t slast, size_t sid, size_t sdest>
  void move_to_SC(void* data, void* keep, void* strb, void* user, void* last,
                  void* id, void* dest, void* axis)
  {
    typedef MoveAXIS<ap_uint<sdata>, ap_uint<skeep>, ap_uint<sstrb>,
                     ap_uint<suser>, ap_uint<slast>, ap_uint<sid>,
                     ap_uint<sdest>> M;
    while (!((hls::stream<typename M::ST>*)axis)->empty()) {
      M::toSC(data, keep, strb, user, last, id, dest, axis);
    }
  }

  template<size_t sdata, size_t skeep, size_t sstrb, size_t suser,
           size_t slast, size_t sid, size_t sdest>
  void task_move_to_SC(void* data, void* keep, void* strb, void* user, void* last,
                       void* id, void* dest, void* axis)
  {
    typedef MoveAXIS<ap_uint<sdata>, ap_uint<skeep>, ap_uint<sstrb>,
                     ap_uint<suser>, ap_uint<slast>, ap_uint<sid>,
                     ap_uint<sdest>> M;
    std::thread(
      [=] () { while (true) M::toSC(data, keep, strb, user, last, id, dest, axis); }
    ).detach();
  }

  template<size_t sdata, size_t skeep, size_t sstrb, size_t suser,
           size_t slast, size_t sid, size_t sdest>
  void move_from_SC(void* axis, void* data, void* keep, void* strb, void* user, void* last,
                    void* id, void* dest)
  {
    typedef MoveAXIS<ap_uint<sdata>, ap_uint<skeep>, ap_uint<sstrb>,
                     ap_uint<suser>, ap_uint<slast>, ap_uint<sid>,
                     ap_uint<sdest>> M;
    while (!((hls::stream<ap_uint<sdata>>*)data)->empty()) {
      M::fromSC(data, keep, strb, user, last, id, dest, axis);
    }
  }

  template<size_t sdata, size_t skeep, size_t sstrb, size_t suser,
           size_t slast, size_t sid, size_t sdest>
  void task_move_from_SC(void* axis, void* data, void* keep, void* strb, void* user, void* last,
                         void* id, void* dest)
  {
    typedef MoveAXIS<ap_uint<sdata>, ap_uint<skeep>, ap_uint<sstrb>,
                     ap_uint<suser>, ap_uint<slast>, ap_uint<sid>,
                     ap_uint<sdest>> M;
    std::thread(
      [=] () { while (true) M::fromSC(data, keep, strb, user, last, id, dest, axis); }
    ).detach();
  }
}

namespace hls::sim
{
  size_t divide_ceil(size_t a, size_t b)
  {
    return (a + b - 1) / b;
  }

  const bool little_endian()
  {
    int a = 1;
    return *(char*)&a == 1;
  }

  inline void rev_endian(unsigned char *p, size_t nbytes)
  {
    std::reverse(p, p+nbytes);
  }

  const bool LE = little_endian();

  inline size_t least_nbyte(size_t width)
  {
    return (width+7)>>3;
  }

  std::string formatData(unsigned char *pos, size_t wbits)
  {
    size_t wbytes = least_nbyte(wbits);
    size_t i = LE ? wbytes-1 : 0;
    auto next = [&] () {
      auto c = pos[i];
      LE ? --i : ++i;
      return c;
    };
    std::ostringstream ss;
    ss << "0x";
    if (int t = (wbits & 0x7)) {
      if (t <= 4) {
        unsigned char mask = (1<<t)-1;
        ss << std::hex << std::setfill('0') << std::setw(1)
           << (int) (next() & mask);
        wbytes -= 1;
      }
    }
    for (size_t i = 0; i < wbytes; ++i) {
      ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
    }
    return ss.str();
  }

  char ord(char c)
  {
    if (c >= 'a' && c <= 'f') {
      return c-'a'+10;
    } else if (c >= 'A' && c <= 'F') {
      return c-'A'+10;
    } else if (c >= '0' && c <= '9') {
      return c-'0';
    } else {
      throw SimException("Not Hexdecimal Digit", __LINE__);
    }
  }

  void unformatData(const char *data, unsigned char *put, size_t pbytes = 0)
  {
    size_t nchars = strlen(data+2);
    size_t nbytes = (nchars+1)>>1;
    if (pbytes == 0) {
      pbytes = nbytes;
    } else if (pbytes > nbytes) {
      throw SimException("Wrong size specified", __LINE__);
    }
    put = LE ? put : put+pbytes-1;
    auto nextp = [&] () {
      return LE ? put++ : put--;
    };
    const char *c = data + (nchars + 2) - 1;
    auto next = [&] () {
      char res { *c == 'x' ? (char)0 : ord(*c) };
      --c;
      return res;
    };
    for (size_t i = 0; i < pbytes; ++i) {
      char l = next();
      char h = next();
      *nextp() = (h<<4)+l;
    }
  }

  char* strip(char *s)
  {
    while (isspace(*s)) {
      ++s;
    }
    for (char *p = s+strlen(s)-1; p >= s; --p) {
      if (isspace(*p)) {
        *p = 0;
      } else {
        return s;
      }
    }
    return s;
  }

  size_t sum(const std::vector<size_t> &v)
  {
    size_t res = 0;
    for (const auto &e : v) {
      res += e;
    }
    return res;
  }

  const char* bad = "Bad TV file";
  const char* err = "Error on TV file";

  const unsigned char bmark[] = {
    0x5a, 0x5a, 0xa5, 0xa5, 0x0f, 0x0f, 0xf0, 0xf0
  };

#ifdef USE_BINARY_TV_FILE
  class Input {
    FILE *fp;
    long pos;

    void read(unsigned char *buf, size_t size)
    {
      if (fread(buf, size, 1, fp) != 1) {
        throw SimException(bad, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    void advance(size_t nbytes)
    {
      if (fseek(fp, nbytes, SEEK_CUR) == -1) {
        throw SimException(bad, __LINE__);
      }
    }

    Input(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "rb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin()
    {
      advance(8);
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void into(unsigned char *param, size_t wbytes, size_t asize, size_t nbytes)
    {
      size_t n = nbytes / asize;
      size_t r = nbytes % asize;
      for (size_t i = 0; i < n; ++i) {
        read(param, wbytes);
        param += asize;
      }
      if (r > 0) {
        advance(asize-r);
        read(param, r);
      }
    }

    ~Input()
    {
      unsigned char buf[8];
      size_t res = fread(buf, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, bad);
      }
      if (std::memcmp(buf, bmark, 8) != 0) {
        errExit(__LINE__, bad);
      }
    }
  };

  class Output {
    FILE *fp;

    void write(unsigned char *buf, size_t size)
    {
      if (LE) {
        rev_endian(buf, size);
      }
      if (fwrite(buf, size, 1, fp) != 1) {
        throw SimException(err, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    Output(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "wb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin(size_t total)
    {
      unsigned char buf[8] = {0};
      std::memcpy(buf, &total, sizeof(buf));
      write(buf, sizeof(buf));
    }

    void from(unsigned char *param, size_t wbytes, size_t asize, size_t nbytes, size_t skip)
    {
      param -= asize*skip;
      size_t n = divide_ceil(nbytes, asize);
      for (size_t i = 0; i < n; ++i) {
        write(param, wbytes);
        param += asize;
      }
    }

    ~Output()
    {
      size_t res = fwrite(bmark, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }
  };
#endif

  class Reader {
    FILE *fp;
    long pos;
    int size;
    char *s;

    void readline()
    {
      s = fgets(s, size, fp);
      if (s == nullptr) {
        throw SimException(bad, __LINE__);
      }
    }

  public:
    Reader(const char *path) : fp(nullptr), size(1<<12), s(new char[size])
    {
      try {
        fp = fopen(path, "r");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          readline();
          static const char mark[] = "[[[runtime]]]\n";
          if (strcmp(s, mark) != 0) {
            throw SimException(bad, __LINE__);
          }
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    ~Reader()
    {
      fclose(fp);
      delete[] s;
    }

    void begin()
    {
      readline();
      static const char mark[] = "[[transaction]]";
      if (strncmp(s, mark, strlen(mark)) != 0) {
        throw SimException(bad, __LINE__);
      }
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void skip(size_t n)
    {
      for (size_t i = 0; i < n; ++i) {
        readline();
      }
    }

    char* next()
    {
      long pos = ftell(fp);
      readline();
      if (*s == '[') {
        fseek(fp, pos, SEEK_SET);
        return nullptr;
      }
      return strip(s);
    }

    void end()
    {
      do {
        readline();
      } while (strcmp(s, "[[/transaction]]\n") != 0);
    }
  };

  class Writer {
    FILE *fp;

    void write(const char *s)
    {
      if (fputs(s, fp) == EOF) {
        throw SimException(err, __LINE__);
      }
    }

  public:
    Writer(const char *path) : fp(nullptr)
    {
      try {
        fp = fopen(path, "w");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          static const char mark[] = "[[[runtime]]]\n";
          write(mark);
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    virtual ~Writer()
    {
      try {
        static const char mark[] = "[[[/runtime]]]\n";
        write(mark);
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
      fclose(fp);
    }

    void begin(size_t AESL_transaction)
    {
      static const char mark[] = "[[transaction]]           ";
      write(mark);
      auto buf = std::to_string(AESL_transaction);
      buf.push_back('\n');
      buf.push_back('\0');
      write(buf.data());
    }

    void next(const char *s)
    {
      write(s);
      write("\n");
    }

    void end()
    {
      static const char mark[] = "[[/transaction]]\n";
      write(mark);
    }
  };

  bool RTLOutputCheckAndReplacement(char *data)
  {
    bool changed = false;
    for (size_t i = 2; i < strlen(data); ++i) {
      if (data[i] == 'X' || data[i] == 'x') {
        data[i] = '0';
        changed = true;
      }
    }
    return changed;
  }

  void warnOnX()
  {
    static const char msg[] =
      "WARNING: [SIM 212-201] RTL produces unknown value "
      "'x' or 'X' on some port, possible cause: "
      "There are uninitialized variables in the design.\n";
    fprintf(stderr, msg);
  }

#ifndef POST_CHECK
  class RefTCL {
    FILE *fp;
    std::ostringstream ss;

    void formatDepth()
    {
      ss << "set depth_list {\n";
      for (auto &p : depth) {
        ss << "  {" << p.first << " " << p.second << "}\n";
      }
      if (nameHBM != "") {
        ss << "  {" << nameHBM << " " << depthHBM << "}\n";
      }
      ss << "}\n";
    }

    void formatTransNum()
    {
      ss << "set trans_num " << AESL_transaction << "\n";
    }

    void formatHBM()
    {
      ss << "set HBM_ArgDict {\n"
         << "  Name " << nameHBM << "\n"
         << "  Port " << portHBM << "\n"
         << "  BitWidth " << widthHBM << "\n"
         << "}\n";
    }

    void close()
    {
      formatDepth();
      formatTransNum();
      if (nameHBM != "") {
        formatHBM();
      }
      std::string &&s { ss.str() };
      size_t res = fwrite(s.data(), s.size(), 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }

  public:
    std::map<const std::string, size_t> depth;
    std::string nameHBM;
    size_t depthHBM;
    std::string portHBM;
    unsigned widthHBM;
    size_t AESL_transaction;
    std::mutex mut;

    RefTCL(const char *path)
    {
      fp = fopen(path, "w");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void set(const char* name, size_t dep)
    {
      std::lock_guard<std::mutex> guard(mut);
      if (depth[name] < dep) {
        depth[name] = dep;
      }
    }

    ~RefTCL()
    {
      close();
    }
  };

#endif

  struct Register {
    const char* name;
    unsigned width;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (strcmp(name, "return") == 0) {
        tcl.set("ap_return", 1);
      } else {
        tcl.set(name, 1);
      }
    }
#endif
    ~Register()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename Reader, typename Writer>
  struct Memory {
    unsigned width;
    unsigned asize;
    bool hbm;
    std::vector<const char*> name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    std::vector<void*> param;
    std::vector<size_t> nbytes;
    std::vector<size_t> offset;
    std::vector<bool> hasWrite;

    size_t depth()
    {
      size_t depth = 0;
      for (size_t n : nbytes) {
        depth += divide_ceil(n, asize);
      }
      return depth;
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (hbm) {
        tcl.nameHBM.append(name[0]);
        tcl.portHBM.append("{").append(name[0]);
        for (size_t i = 1; i < name.size(); ++i) {
          tcl.nameHBM.append("_").append(name[i]);
          tcl.portHBM.append(" ").append(name[i]);
        }
        tcl.nameHBM.append("_HBM");
        tcl.portHBM.append("}");
        tcl.widthHBM = width;
        tcl.depthHBM = divide_ceil(nbytes[0], asize);
      } else {
        tcl.set(name[0], depth());
      }
    }
#endif

    ~Memory()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  struct A2Stream {
    unsigned width;
    unsigned asize;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;
    size_t nbytes;
    bool hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, divide_ceil(nbytes, asize));
    }
#endif

    ~A2Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename E>
  struct Stream {
    unsigned width;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* writer;
    Writer* swriter;
    Writer* gwriter;
#endif
    hls::stream<E>* param;
    std::vector<E> buf;
    size_t initSize;
    size_t depth;
    bool hasWrite;

    void markSize()
    {
      initSize = param->size();
    }

    void buffer()
    {
      buf.clear();
      while (!param->empty()) {
        buf.push_back(param->read());
      }
      for (auto &e : buf) {
        param->write(e);
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete writer;
      delete swriter;
      delete gwriter;
#endif
    }
  };

#ifdef POST_CHECK
  void check(Register &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (char *s = port.reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, (unsigned char*)port.param);
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

#ifdef USE_BINARY_TV_FILE
  void checkHBM(Memory<Input, Output> &port)
  {
    port.reader->begin();
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.hasWrite[i]) {
        port.reader->reset();
        size_t skip = wbytes * port.offset[i];
        port.reader->advance(skip);
        port.reader->into((unsigned char*)port.param[i], wbytes,
                           port.asize, port.nbytes[i] - skip);
      }
    }
  }

  void check(Memory<Input, Output> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          port.reader->into((unsigned char*)port.param[i], wbytes,
                             port.asize, port.nbytes[i]);
        } else {
          size_t n = divide_ceil(port.nbytes[i], port.asize);
          port.reader->advance(port.asize*n);
        }
      }
    }
  }
#endif
  void transfer(Reader *reader, size_t nbytes, unsigned char *put, bool &foundX)
  {
    if (char *s = reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, put, nbytes);
    } else {
      throw SimException("No more data", __LINE__);
    }
  }

  void checkHBM(Memory<Reader, Writer> &port)
  {
    port.reader->begin();
    bool foundX = false;
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0, last = port.param.size()-1; i <= last; ++i) {
      if (port.hasWrite[i]) {
        port.reader->skip(port.offset[i]);
        size_t n = port.nbytes[i] / port.asize - port.offset[i];
        unsigned char *put = (unsigned char*)port.param[i];
        for (size_t j = 0; j < n; ++j) {
          transfer(port.reader, wbytes, put, foundX);
          put += port.asize;
        }
        if (i < last) {
          port.reader->reset();
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  void check(Memory<Reader, Writer> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      bool foundX = false;
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          size_t n = port.nbytes[i] / port.asize;
          size_t r = port.nbytes[i] % port.asize;
          unsigned char *put = (unsigned char*)port.param[i];
          for (size_t j = 0; j < n; ++j) {
            transfer(port.reader, wbytes, put, foundX);
            put += port.asize;
          }
          if (r > 0) {
            transfer(port.reader, r, put, foundX);
          }
        } else {
          size_t n = divide_ceil(port.nbytes[i], port.asize);
          port.reader->skip(n);
        }
      }
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    }
  }

  void check(A2Stream &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (port.hasWrite) {
      size_t wbytes = least_nbyte(port.width);
      size_t n = port.nbytes / port.asize;
      size_t r = port.nbytes % port.asize;
      unsigned char *put = (unsigned char*)port.param;
      for (size_t j = 0; j < n; ++j) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, put, wbytes);
        }
        put += port.asize;
      }
      if (r > 0) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, put, r);
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  template<typename E>
  void check(Stream<E> &port)
  {
    if (port.hasWrite) {
      port.reader->begin();
      bool foundX = false;
      E *p = new E;
      while (char *s = port.reader->next()) {
        foundX |= RTLOutputCheckAndReplacement(s);
        unformatData(s, (unsigned char*)p);
        port.param->write(*p);
      }
      delete p;
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    } else {
      port.reader->begin();
      size_t n = 0;
      if (char *s = port.reader->next()) {
        std::istringstream ss(s);
        ss >> n;
      } else {
        throw SimException(bad, __LINE__);
      }
      port.reader->end();
      for (size_t j = 0; j < n; ++j) {
        port.param->read();
      }
    }
  }
#else
  void dump(Register &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    std::string &&s { formatData((unsigned char*)port.param, port.width) };
    writer->next(s.data());
    writer->end();
  }

  void error_on_depth_unspecified(const char *portName)
  {
    std::string msg {"A depth specification is required for MAXI interface port "};
    msg.append("'");
    msg.append(portName);
    msg.append("'");
    msg.append(" for cosimulation.");
    throw SimException(msg, __LINE__);
  }

#ifdef USE_BINARY_TV_FILE
  void dump(Memory<Input, Output> &port, Output *writer, size_t AESL_transaction)
  {
    writer->begin(port.depth());
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.nbytes[i] == 0) {
        error_on_depth_unspecified(port.hbm ? port.name[i] : port.name[0]);
      }
      writer->from((unsigned char*)port.param[i], wbytes, port.asize,
                   port.nbytes[i], 0);
    }
  }

#endif
  void dump(Memory<Reader, Writer> &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.nbytes[i] == 0) {
        error_on_depth_unspecified(port.hbm ? port.name[i] : port.name[0]);
      }
      size_t n = divide_ceil(port.nbytes[i], port.asize);
      unsigned char *put = (unsigned char*)port.param[i];
      for (size_t j = 0; j < n; ++j) {
        std::string &&s {
          formatData(put, port.width)
        };
        writer->next(s.data());
        put += port.asize;
      }
      if (port.hbm) {
        break;
      }
    }
    writer->end();
  }

  void dump(A2Stream &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    size_t n = divide_ceil(port.nbytes, port.asize);
    unsigned char *put = (unsigned char*)port.param;
    for (size_t j = 0; j < n; ++j) {
      std::string &&s { formatData(put, port.width) };
      writer->next(s.data());
      put += port.asize;
    }
    writer->end();
  }

  template<typename E>
  void dump(Stream<E> &port, size_t AESL_transaction)
  {
    if (port.hasWrite) {
      port.writer->begin(AESL_transaction);
      port.depth = port.param->size()-port.initSize;
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[port.initSize+j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();
    } else {
      port.writer->begin(AESL_transaction);
      port.depth = port.initSize-port.param->size();
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();

      port.gwriter->begin(AESL_transaction);
      size_t n = (port.depth ? port.initSize : port.depth);
      size_t d = port.depth;
      do {
        port.gwriter->next(std::to_string(n--).c_str());
      } while (d--);
      port.gwriter->end();
    }
  }
#endif
}



extern "C"
void seq_align_multiple_static_hw_stub_wrapper(void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, hls::sim::Byte<8>*, void*);

extern "C"
void apatb_seq_align_multiple_static_hw(void* __xlx_apatb_param_querys_0, void* __xlx_apatb_param_querys_1, void* __xlx_apatb_param_querys_2, void* __xlx_apatb_param_querys_3, void* __xlx_apatb_param_querys_4, void* __xlx_apatb_param_querys_5, void* __xlx_apatb_param_querys_6, void* __xlx_apatb_param_querys_7, void* __xlx_apatb_param_querys_8, void* __xlx_apatb_param_querys_9, void* __xlx_apatb_param_querys_10, void* __xlx_apatb_param_querys_11, void* __xlx_apatb_param_querys_12, void* __xlx_apatb_param_querys_13, void* __xlx_apatb_param_querys_14, void* __xlx_apatb_param_querys_15, void* __xlx_apatb_param_querys_16, void* __xlx_apatb_param_querys_17, void* __xlx_apatb_param_querys_18, void* __xlx_apatb_param_querys_19, void* __xlx_apatb_param_querys_20, void* __xlx_apatb_param_querys_21, void* __xlx_apatb_param_querys_22, void* __xlx_apatb_param_querys_23, void* __xlx_apatb_param_querys_24, void* __xlx_apatb_param_querys_25, void* __xlx_apatb_param_querys_26, void* __xlx_apatb_param_querys_27, void* __xlx_apatb_param_querys_28, void* __xlx_apatb_param_querys_29, void* __xlx_apatb_param_querys_30, void* __xlx_apatb_param_querys_31, void* __xlx_apatb_param_references, void* __xlx_apatb_param_query_lengths, void* __xlx_apatb_param_reference_lengths, hls::sim::Byte<8>* __xlx_apatb_param_penalties, void* __xlx_apatb_param_tb_streams)
{
  hls::sim::Byte<4> __xlx_offset_byte_param_querys_0;
  static hls::sim::Register port0 {
    .name = "querys_0",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_0),
#endif
  };
  port0.param = &__xlx_offset_byte_param_querys_0;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_1;
  static hls::sim::Register port1 {
    .name = "querys_1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_1),
#endif
  };
  port1.param = &__xlx_offset_byte_param_querys_1;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_2;
  static hls::sim::Register port2 {
    .name = "querys_2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_2),
#endif
  };
  port2.param = &__xlx_offset_byte_param_querys_2;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_3;
  static hls::sim::Register port3 {
    .name = "querys_3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_3),
#endif
  };
  port3.param = &__xlx_offset_byte_param_querys_3;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_4;
  static hls::sim::Register port4 {
    .name = "querys_4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_4),
#endif
  };
  port4.param = &__xlx_offset_byte_param_querys_4;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_5;
  static hls::sim::Register port5 {
    .name = "querys_5",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_5),
#endif
  };
  port5.param = &__xlx_offset_byte_param_querys_5;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_6;
  static hls::sim::Register port6 {
    .name = "querys_6",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_6),
#endif
  };
  port6.param = &__xlx_offset_byte_param_querys_6;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_7;
  static hls::sim::Register port7 {
    .name = "querys_7",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_7),
#endif
  };
  port7.param = &__xlx_offset_byte_param_querys_7;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_8;
  static hls::sim::Register port8 {
    .name = "querys_8",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_8),
#endif
  };
  port8.param = &__xlx_offset_byte_param_querys_8;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_9;
  static hls::sim::Register port9 {
    .name = "querys_9",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_9),
#endif
  };
  port9.param = &__xlx_offset_byte_param_querys_9;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_10;
  static hls::sim::Register port10 {
    .name = "querys_10",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_10),
#endif
  };
  port10.param = &__xlx_offset_byte_param_querys_10;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_11;
  static hls::sim::Register port11 {
    .name = "querys_11",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_11),
#endif
  };
  port11.param = &__xlx_offset_byte_param_querys_11;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_12;
  static hls::sim::Register port12 {
    .name = "querys_12",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_12),
#endif
  };
  port12.param = &__xlx_offset_byte_param_querys_12;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_13;
  static hls::sim::Register port13 {
    .name = "querys_13",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_13),
#endif
  };
  port13.param = &__xlx_offset_byte_param_querys_13;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_14;
  static hls::sim::Register port14 {
    .name = "querys_14",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_14),
#endif
  };
  port14.param = &__xlx_offset_byte_param_querys_14;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_15;
  static hls::sim::Register port15 {
    .name = "querys_15",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_15),
#endif
  };
  port15.param = &__xlx_offset_byte_param_querys_15;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_16;
  static hls::sim::Register port16 {
    .name = "querys_16",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_16),
#endif
  };
  port16.param = &__xlx_offset_byte_param_querys_16;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_17;
  static hls::sim::Register port17 {
    .name = "querys_17",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_17),
#endif
  };
  port17.param = &__xlx_offset_byte_param_querys_17;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_18;
  static hls::sim::Register port18 {
    .name = "querys_18",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_18),
#endif
  };
  port18.param = &__xlx_offset_byte_param_querys_18;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_19;
  static hls::sim::Register port19 {
    .name = "querys_19",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_19),
#endif
  };
  port19.param = &__xlx_offset_byte_param_querys_19;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_20;
  static hls::sim::Register port20 {
    .name = "querys_20",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_20),
#endif
  };
  port20.param = &__xlx_offset_byte_param_querys_20;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_21;
  static hls::sim::Register port21 {
    .name = "querys_21",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_21),
#endif
  };
  port21.param = &__xlx_offset_byte_param_querys_21;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_22;
  static hls::sim::Register port22 {
    .name = "querys_22",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_22),
#endif
  };
  port22.param = &__xlx_offset_byte_param_querys_22;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_23;
  static hls::sim::Register port23 {
    .name = "querys_23",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_23),
#endif
  };
  port23.param = &__xlx_offset_byte_param_querys_23;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_24;
  static hls::sim::Register port24 {
    .name = "querys_24",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_24),
#endif
  };
  port24.param = &__xlx_offset_byte_param_querys_24;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_25;
  static hls::sim::Register port25 {
    .name = "querys_25",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_25),
#endif
  };
  port25.param = &__xlx_offset_byte_param_querys_25;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_26;
  static hls::sim::Register port26 {
    .name = "querys_26",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_26),
#endif
  };
  port26.param = &__xlx_offset_byte_param_querys_26;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_27;
  static hls::sim::Register port27 {
    .name = "querys_27",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_27),
#endif
  };
  port27.param = &__xlx_offset_byte_param_querys_27;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_28;
  static hls::sim::Register port28 {
    .name = "querys_28",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_28),
#endif
  };
  port28.param = &__xlx_offset_byte_param_querys_28;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_29;
  static hls::sim::Register port29 {
    .name = "querys_29",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_29),
#endif
  };
  port29.param = &__xlx_offset_byte_param_querys_29;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_30;
  static hls::sim::Register port30 {
    .name = "querys_30",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_30),
#endif
  };
  port30.param = &__xlx_offset_byte_param_querys_30;

  hls::sim::Byte<4> __xlx_offset_byte_param_querys_31;
  static hls::sim::Register port31 {
    .name = "querys_31",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_querys_31),
#endif
  };
  port31.param = &__xlx_offset_byte_param_querys_31;

  hls::sim::Byte<4> __xlx_offset_byte_param_references;
  static hls::sim::Register port32 {
    .name = "references",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_references),
#endif
  };
  port32.param = &__xlx_offset_byte_param_references;

  hls::sim::Byte<4> __xlx_offset_byte_param_query_lengths;
  static hls::sim::Register port33 {
    .name = "query_lengths",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_query_lengths),
#endif
  };
  port33.param = &__xlx_offset_byte_param_query_lengths;

  hls::sim::Byte<4> __xlx_offset_byte_param_reference_lengths;
  static hls::sim::Register port34 {
    .name = "reference_lengths",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_reference_lengths),
#endif
  };
  port34.param = &__xlx_offset_byte_param_reference_lengths;

  static hls::sim::Register port35 {
    .name = "penalties",
    .width = 64,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_penalties),
#endif
  };
  port35.param = __xlx_apatb_param_penalties;

  hls::sim::Byte<4> __xlx_offset_byte_param_tb_streams;
  static hls::sim::Register port36 {
    .name = "tb_streams",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_tb_streams),
#endif
  };
  port36.param = &__xlx_offset_byte_param_tb_streams;

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port37 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port37 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "gmem" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_gmem),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_gmem),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_gmem),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_gmem),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem),
#endif
#endif
  };
  __xlx_offset_byte_param_references = 0*4;
  __xlx_offset_byte_param_query_lengths = 64*4;
  __xlx_offset_byte_param_reference_lengths = 65*4;
  __xlx_offset_byte_param_tb_streams = 66*4;
  port37.param = { __xlx_apatb_param_references, __xlx_apatb_param_query_lengths, __xlx_apatb_param_reference_lengths, __xlx_apatb_param_tb_streams };
  port37.nbytes = { 256, 4, 4, 512 };
  port37.offset = { 0, 64, 65, 66 };
  port37.hasWrite = { true, true, true, true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port38 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port38 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_0" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_0),
#endif
#endif
  };
  port38.param = { __xlx_apatb_param_querys_0 };
  port38.nbytes = { 256 };
  port38.offset = {  };
  port38.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port39 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port39 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_1" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_1),
#endif
#endif
  };
  port39.param = { __xlx_apatb_param_querys_1 };
  port39.nbytes = { 256 };
  port39.offset = {  };
  port39.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port40 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port40 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_10" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_10),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_10),
#endif
#endif
  };
  port40.param = { __xlx_apatb_param_querys_10 };
  port40.nbytes = { 256 };
  port40.offset = {  };
  port40.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port41 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port41 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_11" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_11),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_11),
#endif
#endif
  };
  port41.param = { __xlx_apatb_param_querys_11 };
  port41.nbytes = { 256 };
  port41.offset = {  };
  port41.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port42 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port42 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_12" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_12),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_12),
#endif
#endif
  };
  port42.param = { __xlx_apatb_param_querys_12 };
  port42.nbytes = { 256 };
  port42.offset = {  };
  port42.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port43 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port43 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_13" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_13),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_13),
#endif
#endif
  };
  port43.param = { __xlx_apatb_param_querys_13 };
  port43.nbytes = { 256 };
  port43.offset = {  };
  port43.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port44 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port44 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_14" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_14),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_14),
#endif
#endif
  };
  port44.param = { __xlx_apatb_param_querys_14 };
  port44.nbytes = { 256 };
  port44.offset = {  };
  port44.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port45 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port45 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_15" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_15),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_15),
#endif
#endif
  };
  port45.param = { __xlx_apatb_param_querys_15 };
  port45.nbytes = { 256 };
  port45.offset = {  };
  port45.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port46 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port46 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_16" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_16),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_16),
#endif
#endif
  };
  port46.param = { __xlx_apatb_param_querys_16 };
  port46.nbytes = { 256 };
  port46.offset = {  };
  port46.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port47 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port47 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_17" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_17),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_17),
#endif
#endif
  };
  port47.param = { __xlx_apatb_param_querys_17 };
  port47.nbytes = { 256 };
  port47.offset = {  };
  port47.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port48 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port48 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_18" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_18),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_18),
#endif
#endif
  };
  port48.param = { __xlx_apatb_param_querys_18 };
  port48.nbytes = { 256 };
  port48.offset = {  };
  port48.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port49 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port49 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_19" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_19),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_19),
#endif
#endif
  };
  port49.param = { __xlx_apatb_param_querys_19 };
  port49.nbytes = { 256 };
  port49.offset = {  };
  port49.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port50 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port50 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_2" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_2),
#endif
#endif
  };
  port50.param = { __xlx_apatb_param_querys_2 };
  port50.nbytes = { 256 };
  port50.offset = {  };
  port50.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port51 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port51 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_20" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_20),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_20),
#endif
#endif
  };
  port51.param = { __xlx_apatb_param_querys_20 };
  port51.nbytes = { 256 };
  port51.offset = {  };
  port51.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port52 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port52 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_21" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_21),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_21),
#endif
#endif
  };
  port52.param = { __xlx_apatb_param_querys_21 };
  port52.nbytes = { 256 };
  port52.offset = {  };
  port52.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port53 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port53 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_22" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_22),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_22),
#endif
#endif
  };
  port53.param = { __xlx_apatb_param_querys_22 };
  port53.nbytes = { 256 };
  port53.offset = {  };
  port53.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port54 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port54 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_23" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_23),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_23),
#endif
#endif
  };
  port54.param = { __xlx_apatb_param_querys_23 };
  port54.nbytes = { 256 };
  port54.offset = {  };
  port54.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port55 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port55 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_24" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_24),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_24),
#endif
#endif
  };
  port55.param = { __xlx_apatb_param_querys_24 };
  port55.nbytes = { 256 };
  port55.offset = {  };
  port55.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port56 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port56 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_25" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_25),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_25),
#endif
#endif
  };
  port56.param = { __xlx_apatb_param_querys_25 };
  port56.nbytes = { 256 };
  port56.offset = {  };
  port56.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port57 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port57 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_26" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_26),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_26),
#endif
#endif
  };
  port57.param = { __xlx_apatb_param_querys_26 };
  port57.nbytes = { 256 };
  port57.offset = {  };
  port57.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port58 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port58 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_27" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_27),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_27),
#endif
#endif
  };
  port58.param = { __xlx_apatb_param_querys_27 };
  port58.nbytes = { 256 };
  port58.offset = {  };
  port58.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port59 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port59 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_28" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_28),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_28),
#endif
#endif
  };
  port59.param = { __xlx_apatb_param_querys_28 };
  port59.nbytes = { 256 };
  port59.offset = {  };
  port59.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port60 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port60 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_29" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_29),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_29),
#endif
#endif
  };
  port60.param = { __xlx_apatb_param_querys_29 };
  port60.nbytes = { 256 };
  port60.offset = {  };
  port60.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port61 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port61 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_3" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_3),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_3),
#endif
#endif
  };
  port61.param = { __xlx_apatb_param_querys_3 };
  port61.nbytes = { 256 };
  port61.offset = {  };
  port61.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port62 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port62 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_30" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_30),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_30),
#endif
#endif
  };
  port62.param = { __xlx_apatb_param_querys_30 };
  port62.nbytes = { 256 };
  port62.offset = {  };
  port62.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port63 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port63 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_31" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_31),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_31),
#endif
#endif
  };
  port63.param = { __xlx_apatb_param_querys_31 };
  port63.nbytes = { 256 };
  port63.offset = {  };
  port63.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port64 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port64 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_4" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_4),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_4),
#endif
#endif
  };
  port64.param = { __xlx_apatb_param_querys_4 };
  port64.nbytes = { 256 };
  port64.offset = {  };
  port64.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port65 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port65 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_5" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_5),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_5),
#endif
#endif
  };
  port65.param = { __xlx_apatb_param_querys_5 };
  port65.nbytes = { 256 };
  port65.offset = {  };
  port65.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port66 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port66 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_6" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_6),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_6),
#endif
#endif
  };
  port66.param = { __xlx_apatb_param_querys_6 };
  port66.nbytes = { 256 };
  port66.offset = {  };
  port66.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port67 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port67 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_7" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_7),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_7),
#endif
#endif
  };
  port67.param = { __xlx_apatb_param_querys_7 };
  port67.nbytes = { 256 };
  port67.offset = {  };
  port67.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port68 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port68 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_8" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_8),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_8),
#endif
#endif
  };
  port68.param = { __xlx_apatb_param_querys_8 };
  port68.nbytes = { 256 };
  port68.offset = {  };
  port68.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port69 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port69 {
#endif
    .width = 8,
    .asize = 1,
    .hbm = false,
    .name = { "gmem_9" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_gmem_9),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_gmem_9),
#endif
#endif
  };
  port69.param = { __xlx_apatb_param_querys_9 };
  port69.nbytes = { 256 };
  port69.offset = {  };
  port69.hasWrite = { false };

  try {
#ifdef POST_CHECK
    CodeState = ENTER_WRAPC_PC;
    check(port37);
#else
    static hls::sim::RefTCL tcl("../tv/cdatafile/ref.tcl");
    CodeState = DUMP_INPUTS;
    dump(port0, port0.iwriter, tcl.AESL_transaction);
    dump(port1, port1.iwriter, tcl.AESL_transaction);
    dump(port2, port2.iwriter, tcl.AESL_transaction);
    dump(port3, port3.iwriter, tcl.AESL_transaction);
    dump(port4, port4.iwriter, tcl.AESL_transaction);
    dump(port5, port5.iwriter, tcl.AESL_transaction);
    dump(port6, port6.iwriter, tcl.AESL_transaction);
    dump(port7, port7.iwriter, tcl.AESL_transaction);
    dump(port8, port8.iwriter, tcl.AESL_transaction);
    dump(port9, port9.iwriter, tcl.AESL_transaction);
    dump(port10, port10.iwriter, tcl.AESL_transaction);
    dump(port11, port11.iwriter, tcl.AESL_transaction);
    dump(port12, port12.iwriter, tcl.AESL_transaction);
    dump(port13, port13.iwriter, tcl.AESL_transaction);
    dump(port14, port14.iwriter, tcl.AESL_transaction);
    dump(port15, port15.iwriter, tcl.AESL_transaction);
    dump(port16, port16.iwriter, tcl.AESL_transaction);
    dump(port17, port17.iwriter, tcl.AESL_transaction);
    dump(port18, port18.iwriter, tcl.AESL_transaction);
    dump(port19, port19.iwriter, tcl.AESL_transaction);
    dump(port20, port20.iwriter, tcl.AESL_transaction);
    dump(port21, port21.iwriter, tcl.AESL_transaction);
    dump(port22, port22.iwriter, tcl.AESL_transaction);
    dump(port23, port23.iwriter, tcl.AESL_transaction);
    dump(port24, port24.iwriter, tcl.AESL_transaction);
    dump(port25, port25.iwriter, tcl.AESL_transaction);
    dump(port26, port26.iwriter, tcl.AESL_transaction);
    dump(port27, port27.iwriter, tcl.AESL_transaction);
    dump(port28, port28.iwriter, tcl.AESL_transaction);
    dump(port29, port29.iwriter, tcl.AESL_transaction);
    dump(port30, port30.iwriter, tcl.AESL_transaction);
    dump(port31, port31.iwriter, tcl.AESL_transaction);
    dump(port32, port32.iwriter, tcl.AESL_transaction);
    dump(port33, port33.iwriter, tcl.AESL_transaction);
    dump(port34, port34.iwriter, tcl.AESL_transaction);
    dump(port35, port35.iwriter, tcl.AESL_transaction);
    dump(port36, port36.iwriter, tcl.AESL_transaction);
    dump(port37, port37.iwriter, tcl.AESL_transaction);
    dump(port38, port38.iwriter, tcl.AESL_transaction);
    dump(port39, port39.iwriter, tcl.AESL_transaction);
    dump(port40, port40.iwriter, tcl.AESL_transaction);
    dump(port41, port41.iwriter, tcl.AESL_transaction);
    dump(port42, port42.iwriter, tcl.AESL_transaction);
    dump(port43, port43.iwriter, tcl.AESL_transaction);
    dump(port44, port44.iwriter, tcl.AESL_transaction);
    dump(port45, port45.iwriter, tcl.AESL_transaction);
    dump(port46, port46.iwriter, tcl.AESL_transaction);
    dump(port47, port47.iwriter, tcl.AESL_transaction);
    dump(port48, port48.iwriter, tcl.AESL_transaction);
    dump(port49, port49.iwriter, tcl.AESL_transaction);
    dump(port50, port50.iwriter, tcl.AESL_transaction);
    dump(port51, port51.iwriter, tcl.AESL_transaction);
    dump(port52, port52.iwriter, tcl.AESL_transaction);
    dump(port53, port53.iwriter, tcl.AESL_transaction);
    dump(port54, port54.iwriter, tcl.AESL_transaction);
    dump(port55, port55.iwriter, tcl.AESL_transaction);
    dump(port56, port56.iwriter, tcl.AESL_transaction);
    dump(port57, port57.iwriter, tcl.AESL_transaction);
    dump(port58, port58.iwriter, tcl.AESL_transaction);
    dump(port59, port59.iwriter, tcl.AESL_transaction);
    dump(port60, port60.iwriter, tcl.AESL_transaction);
    dump(port61, port61.iwriter, tcl.AESL_transaction);
    dump(port62, port62.iwriter, tcl.AESL_transaction);
    dump(port63, port63.iwriter, tcl.AESL_transaction);
    dump(port64, port64.iwriter, tcl.AESL_transaction);
    dump(port65, port65.iwriter, tcl.AESL_transaction);
    dump(port66, port66.iwriter, tcl.AESL_transaction);
    dump(port67, port67.iwriter, tcl.AESL_transaction);
    dump(port68, port68.iwriter, tcl.AESL_transaction);
    dump(port69, port69.iwriter, tcl.AESL_transaction);
    port0.doTCL(tcl);
    port1.doTCL(tcl);
    port2.doTCL(tcl);
    port3.doTCL(tcl);
    port4.doTCL(tcl);
    port5.doTCL(tcl);
    port6.doTCL(tcl);
    port7.doTCL(tcl);
    port8.doTCL(tcl);
    port9.doTCL(tcl);
    port10.doTCL(tcl);
    port11.doTCL(tcl);
    port12.doTCL(tcl);
    port13.doTCL(tcl);
    port14.doTCL(tcl);
    port15.doTCL(tcl);
    port16.doTCL(tcl);
    port17.doTCL(tcl);
    port18.doTCL(tcl);
    port19.doTCL(tcl);
    port20.doTCL(tcl);
    port21.doTCL(tcl);
    port22.doTCL(tcl);
    port23.doTCL(tcl);
    port24.doTCL(tcl);
    port25.doTCL(tcl);
    port26.doTCL(tcl);
    port27.doTCL(tcl);
    port28.doTCL(tcl);
    port29.doTCL(tcl);
    port30.doTCL(tcl);
    port31.doTCL(tcl);
    port32.doTCL(tcl);
    port33.doTCL(tcl);
    port34.doTCL(tcl);
    port35.doTCL(tcl);
    port36.doTCL(tcl);
    port37.doTCL(tcl);
    port38.doTCL(tcl);
    port39.doTCL(tcl);
    port40.doTCL(tcl);
    port41.doTCL(tcl);
    port42.doTCL(tcl);
    port43.doTCL(tcl);
    port44.doTCL(tcl);
    port45.doTCL(tcl);
    port46.doTCL(tcl);
    port47.doTCL(tcl);
    port48.doTCL(tcl);
    port49.doTCL(tcl);
    port50.doTCL(tcl);
    port51.doTCL(tcl);
    port52.doTCL(tcl);
    port53.doTCL(tcl);
    port54.doTCL(tcl);
    port55.doTCL(tcl);
    port56.doTCL(tcl);
    port57.doTCL(tcl);
    port58.doTCL(tcl);
    port59.doTCL(tcl);
    port60.doTCL(tcl);
    port61.doTCL(tcl);
    port62.doTCL(tcl);
    port63.doTCL(tcl);
    port64.doTCL(tcl);
    port65.doTCL(tcl);
    port66.doTCL(tcl);
    port67.doTCL(tcl);
    port68.doTCL(tcl);
    port69.doTCL(tcl);
    CodeState = CALL_C_DUT;
    seq_align_multiple_static_hw_stub_wrapper(__xlx_apatb_param_querys_0, __xlx_apatb_param_querys_1, __xlx_apatb_param_querys_2, __xlx_apatb_param_querys_3, __xlx_apatb_param_querys_4, __xlx_apatb_param_querys_5, __xlx_apatb_param_querys_6, __xlx_apatb_param_querys_7, __xlx_apatb_param_querys_8, __xlx_apatb_param_querys_9, __xlx_apatb_param_querys_10, __xlx_apatb_param_querys_11, __xlx_apatb_param_querys_12, __xlx_apatb_param_querys_13, __xlx_apatb_param_querys_14, __xlx_apatb_param_querys_15, __xlx_apatb_param_querys_16, __xlx_apatb_param_querys_17, __xlx_apatb_param_querys_18, __xlx_apatb_param_querys_19, __xlx_apatb_param_querys_20, __xlx_apatb_param_querys_21, __xlx_apatb_param_querys_22, __xlx_apatb_param_querys_23, __xlx_apatb_param_querys_24, __xlx_apatb_param_querys_25, __xlx_apatb_param_querys_26, __xlx_apatb_param_querys_27, __xlx_apatb_param_querys_28, __xlx_apatb_param_querys_29, __xlx_apatb_param_querys_30, __xlx_apatb_param_querys_31, __xlx_apatb_param_references, __xlx_apatb_param_query_lengths, __xlx_apatb_param_reference_lengths, __xlx_apatb_param_penalties, __xlx_apatb_param_tb_streams);
    CodeState = DUMP_OUTPUTS;
    dump(port37, port37.owriter, tcl.AESL_transaction);
    tcl.AESL_transaction++;
#endif
  } catch (const hls::sim::SimException &e) {
    hls::sim::errExit(e.line, e.msg);
  }
}