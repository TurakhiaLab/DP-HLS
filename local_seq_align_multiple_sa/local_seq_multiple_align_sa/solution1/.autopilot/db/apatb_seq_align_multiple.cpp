#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_query_string_comp_0 "../tv/cdatafile/c.seq_align_multiple.autotvin_query_string_comp_0.dat"
#define AUTOTB_TVOUT_query_string_comp_0 "../tv/cdatafile/c.seq_align_multiple.autotvout_query_string_comp_0.dat"
#define WRAPC_STREAM_SIZE_IN_query_string_comp_0 "../tv/stream_size/stream_size_in_query_string_comp_0.dat"
#define WRAPC_STREAM_INGRESS_STATUS_query_string_comp_0 "../tv/stream_size/stream_ingress_status_query_string_comp_0.dat"
#define AUTOTB_TVIN_query_string_comp_1 "../tv/cdatafile/c.seq_align_multiple.autotvin_query_string_comp_1.dat"
#define AUTOTB_TVOUT_query_string_comp_1 "../tv/cdatafile/c.seq_align_multiple.autotvout_query_string_comp_1.dat"
#define WRAPC_STREAM_SIZE_OUT_query_string_comp_1 "../tv/stream_size/stream_size_out_query_string_comp_1.dat"
#define WRAPC_STREAM_EGRESS_STATUS_query_string_comp_1 "../tv/stream_size/stream_egress_status_query_string_comp_1.dat"
#define AUTOTB_TVIN_query_string_comp_2 "../tv/cdatafile/c.seq_align_multiple.autotvin_query_string_comp_2.dat"
#define AUTOTB_TVOUT_query_string_comp_2 "../tv/cdatafile/c.seq_align_multiple.autotvout_query_string_comp_2.dat"
#define WRAPC_STREAM_SIZE_OUT_query_string_comp_2 "../tv/stream_size/stream_size_out_query_string_comp_2.dat"
#define WRAPC_STREAM_EGRESS_STATUS_query_string_comp_2 "../tv/stream_size/stream_egress_status_query_string_comp_2.dat"
#define AUTOTB_TVIN_query_string_comp_3 "../tv/cdatafile/c.seq_align_multiple.autotvin_query_string_comp_3.dat"
#define AUTOTB_TVOUT_query_string_comp_3 "../tv/cdatafile/c.seq_align_multiple.autotvout_query_string_comp_3.dat"
#define WRAPC_STREAM_SIZE_OUT_query_string_comp_3 "../tv/stream_size/stream_size_out_query_string_comp_3.dat"
#define WRAPC_STREAM_EGRESS_STATUS_query_string_comp_3 "../tv/stream_size/stream_egress_status_query_string_comp_3.dat"
#define AUTOTB_TVIN_query_string_comp_4 "../tv/cdatafile/c.seq_align_multiple.autotvin_query_string_comp_4.dat"
#define AUTOTB_TVOUT_query_string_comp_4 "../tv/cdatafile/c.seq_align_multiple.autotvout_query_string_comp_4.dat"
#define WRAPC_STREAM_SIZE_OUT_query_string_comp_4 "../tv/stream_size/stream_size_out_query_string_comp_4.dat"
#define WRAPC_STREAM_EGRESS_STATUS_query_string_comp_4 "../tv/stream_size/stream_egress_status_query_string_comp_4.dat"
#define AUTOTB_TVIN_query_string_comp_5 "../tv/cdatafile/c.seq_align_multiple.autotvin_query_string_comp_5.dat"
#define AUTOTB_TVOUT_query_string_comp_5 "../tv/cdatafile/c.seq_align_multiple.autotvout_query_string_comp_5.dat"
#define WRAPC_STREAM_SIZE_OUT_query_string_comp_5 "../tv/stream_size/stream_size_out_query_string_comp_5.dat"
#define WRAPC_STREAM_EGRESS_STATUS_query_string_comp_5 "../tv/stream_size/stream_egress_status_query_string_comp_5.dat"
#define AUTOTB_TVIN_query_string_comp_6 "../tv/cdatafile/c.seq_align_multiple.autotvin_query_string_comp_6.dat"
#define AUTOTB_TVOUT_query_string_comp_6 "../tv/cdatafile/c.seq_align_multiple.autotvout_query_string_comp_6.dat"
#define WRAPC_STREAM_SIZE_OUT_query_string_comp_6 "../tv/stream_size/stream_size_out_query_string_comp_6.dat"
#define WRAPC_STREAM_EGRESS_STATUS_query_string_comp_6 "../tv/stream_size/stream_egress_status_query_string_comp_6.dat"
#define AUTOTB_TVIN_query_string_comp_7 "../tv/cdatafile/c.seq_align_multiple.autotvin_query_string_comp_7.dat"
#define AUTOTB_TVOUT_query_string_comp_7 "../tv/cdatafile/c.seq_align_multiple.autotvout_query_string_comp_7.dat"
#define WRAPC_STREAM_SIZE_OUT_query_string_comp_7 "../tv/stream_size/stream_size_out_query_string_comp_7.dat"
#define WRAPC_STREAM_EGRESS_STATUS_query_string_comp_7 "../tv/stream_size/stream_egress_status_query_string_comp_7.dat"
#define AUTOTB_TVIN_reference_string_comp_0 "../tv/cdatafile/c.seq_align_multiple.autotvin_reference_string_comp_0.dat"
#define AUTOTB_TVOUT_reference_string_comp_0 "../tv/cdatafile/c.seq_align_multiple.autotvout_reference_string_comp_0.dat"
#define WRAPC_STREAM_SIZE_IN_reference_string_comp_0 "../tv/stream_size/stream_size_in_reference_string_comp_0.dat"
#define WRAPC_STREAM_INGRESS_STATUS_reference_string_comp_0 "../tv/stream_size/stream_ingress_status_reference_string_comp_0.dat"
#define AUTOTB_TVIN_reference_string_comp_1 "../tv/cdatafile/c.seq_align_multiple.autotvin_reference_string_comp_1.dat"
#define AUTOTB_TVOUT_reference_string_comp_1 "../tv/cdatafile/c.seq_align_multiple.autotvout_reference_string_comp_1.dat"
#define WRAPC_STREAM_SIZE_OUT_reference_string_comp_1 "../tv/stream_size/stream_size_out_reference_string_comp_1.dat"
#define WRAPC_STREAM_EGRESS_STATUS_reference_string_comp_1 "../tv/stream_size/stream_egress_status_reference_string_comp_1.dat"
#define AUTOTB_TVIN_reference_string_comp_2 "../tv/cdatafile/c.seq_align_multiple.autotvin_reference_string_comp_2.dat"
#define AUTOTB_TVOUT_reference_string_comp_2 "../tv/cdatafile/c.seq_align_multiple.autotvout_reference_string_comp_2.dat"
#define WRAPC_STREAM_SIZE_OUT_reference_string_comp_2 "../tv/stream_size/stream_size_out_reference_string_comp_2.dat"
#define WRAPC_STREAM_EGRESS_STATUS_reference_string_comp_2 "../tv/stream_size/stream_egress_status_reference_string_comp_2.dat"
#define AUTOTB_TVIN_reference_string_comp_3 "../tv/cdatafile/c.seq_align_multiple.autotvin_reference_string_comp_3.dat"
#define AUTOTB_TVOUT_reference_string_comp_3 "../tv/cdatafile/c.seq_align_multiple.autotvout_reference_string_comp_3.dat"
#define WRAPC_STREAM_SIZE_OUT_reference_string_comp_3 "../tv/stream_size/stream_size_out_reference_string_comp_3.dat"
#define WRAPC_STREAM_EGRESS_STATUS_reference_string_comp_3 "../tv/stream_size/stream_egress_status_reference_string_comp_3.dat"
#define AUTOTB_TVIN_reference_string_comp_4 "../tv/cdatafile/c.seq_align_multiple.autotvin_reference_string_comp_4.dat"
#define AUTOTB_TVOUT_reference_string_comp_4 "../tv/cdatafile/c.seq_align_multiple.autotvout_reference_string_comp_4.dat"
#define WRAPC_STREAM_SIZE_OUT_reference_string_comp_4 "../tv/stream_size/stream_size_out_reference_string_comp_4.dat"
#define WRAPC_STREAM_EGRESS_STATUS_reference_string_comp_4 "../tv/stream_size/stream_egress_status_reference_string_comp_4.dat"
#define AUTOTB_TVIN_reference_string_comp_5 "../tv/cdatafile/c.seq_align_multiple.autotvin_reference_string_comp_5.dat"
#define AUTOTB_TVOUT_reference_string_comp_5 "../tv/cdatafile/c.seq_align_multiple.autotvout_reference_string_comp_5.dat"
#define WRAPC_STREAM_SIZE_OUT_reference_string_comp_5 "../tv/stream_size/stream_size_out_reference_string_comp_5.dat"
#define WRAPC_STREAM_EGRESS_STATUS_reference_string_comp_5 "../tv/stream_size/stream_egress_status_reference_string_comp_5.dat"
#define AUTOTB_TVIN_reference_string_comp_6 "../tv/cdatafile/c.seq_align_multiple.autotvin_reference_string_comp_6.dat"
#define AUTOTB_TVOUT_reference_string_comp_6 "../tv/cdatafile/c.seq_align_multiple.autotvout_reference_string_comp_6.dat"
#define WRAPC_STREAM_SIZE_OUT_reference_string_comp_6 "../tv/stream_size/stream_size_out_reference_string_comp_6.dat"
#define WRAPC_STREAM_EGRESS_STATUS_reference_string_comp_6 "../tv/stream_size/stream_egress_status_reference_string_comp_6.dat"
#define AUTOTB_TVIN_reference_string_comp_7 "../tv/cdatafile/c.seq_align_multiple.autotvin_reference_string_comp_7.dat"
#define AUTOTB_TVOUT_reference_string_comp_7 "../tv/cdatafile/c.seq_align_multiple.autotvout_reference_string_comp_7.dat"
#define WRAPC_STREAM_SIZE_OUT_reference_string_comp_7 "../tv/stream_size/stream_size_out_reference_string_comp_7.dat"
#define WRAPC_STREAM_EGRESS_STATUS_reference_string_comp_7 "../tv/stream_size/stream_egress_status_reference_string_comp_7.dat"
#define AUTOTB_TVIN_dummies "../tv/cdatafile/c.seq_align_multiple.autotvin_dummies.dat"
#define AUTOTB_TVOUT_dummies "../tv/cdatafile/c.seq_align_multiple.autotvout_dummies.dat"
#define AUTOTB_TVIN_gmem "../tv/cdatafile/c.seq_align_multiple.autotvin_gmem.dat"
#define AUTOTB_TVOUT_gmem "../tv/cdatafile/c.seq_align_multiple.autotvout_gmem.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_query_string_comp_0 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_query_string_comp_0.dat"
#define AUTOTB_TVOUT_PC_query_string_comp_1 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_query_string_comp_1.dat"
#define AUTOTB_TVOUT_PC_query_string_comp_2 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_query_string_comp_2.dat"
#define AUTOTB_TVOUT_PC_query_string_comp_3 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_query_string_comp_3.dat"
#define AUTOTB_TVOUT_PC_query_string_comp_4 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_query_string_comp_4.dat"
#define AUTOTB_TVOUT_PC_query_string_comp_5 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_query_string_comp_5.dat"
#define AUTOTB_TVOUT_PC_query_string_comp_6 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_query_string_comp_6.dat"
#define AUTOTB_TVOUT_PC_query_string_comp_7 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_query_string_comp_7.dat"
#define AUTOTB_TVOUT_PC_reference_string_comp_0 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_reference_string_comp_0.dat"
#define AUTOTB_TVOUT_PC_reference_string_comp_1 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_reference_string_comp_1.dat"
#define AUTOTB_TVOUT_PC_reference_string_comp_2 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_reference_string_comp_2.dat"
#define AUTOTB_TVOUT_PC_reference_string_comp_3 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_reference_string_comp_3.dat"
#define AUTOTB_TVOUT_PC_reference_string_comp_4 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_reference_string_comp_4.dat"
#define AUTOTB_TVOUT_PC_reference_string_comp_5 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_reference_string_comp_5.dat"
#define AUTOTB_TVOUT_PC_reference_string_comp_6 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_reference_string_comp_6.dat"
#define AUTOTB_TVOUT_PC_reference_string_comp_7 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_reference_string_comp_7.dat"
#define AUTOTB_TVOUT_PC_dummies "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_dummies.dat"
#define AUTOTB_TVOUT_PC_gmem "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_gmem.dat"


static const bool little_endian()
{
  int a = 1;
  return *(char*)&a == 1;
}

inline static void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    rev_endian(p, dbytes);
    vp = (p_dat) (p+dbytes);
  }

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
      if (little_endian()) {
        rev_endian(vp[i], wbytes);
      }
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};


inline static const std::string begin_str(int num)
{
  return std::string("[[transaction]]           ")
         .append(std::to_string(num))
         .append("\n");
}

inline static const std::string end_str()
{
  return std::string("[[/transaction]]\n");
}

const std::string formatData(unsigned char *pos, size_t wbits)
{
  bool LE = little_endian();
  size_t wbytes = (wbits+7)>>3;
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
  ss.put('\n');
  return ss.str();
}

static bool RTLOutputCheckAndReplacement(std::string &data)
{
  bool changed = false;
  for (size_t i = 2; i < data.size(); ++i) {
    if (data[i] == 'X' || data[i] == 'x') {
      data[i] = '0';
      changed = true;
    }
  }
  return changed;
}

struct SimException : public std::exception {
  const char *msg;
  const size_t line;
  SimException(const char *msg, const size_t line)
    : msg(msg), line(line)
  {
  }
};

template<size_t bit_width>
class PostCheck
{
  static const char *bad;
  static const char *err;
  std::fstream stream;
  std::string s;

  void send(char *p, ap_uint<bit_width> &data, size_t l, size_t rest)
  {
    if (rest == 0) {
      if (!little_endian()) {
        const size_t wbytes = (bit_width+7)>>3;
        rev_endian(p-wbytes, wbytes);
      }
    } else if (rest < 8) {
      *p = data.range(l+rest-1, l).to_uint();
      send(p+1, data, l+rest, 0);
    } else {
      *p = data.range(l+8-1, l).to_uint();
      send(p+1, data, l+8, rest-8);
    }
  }

  void readline()
  {
    std::getline(stream, s);
    if (stream.eof()) {
      throw SimException(bad, __LINE__);
    }
  }

public:
  char *param;
  size_t psize;
  size_t depth;

  PostCheck(const char *file)
  {
    stream.open(file);
    if (stream.fail()) {
      throw SimException(err, __LINE__);
    } else {
      readline();
      if (s != "[[[runtime]]]") {
        throw SimException(bad, __LINE__);
      }
    }
  }

  ~PostCheck() noexcept(false)
  {
    stream.close();
  }

  void run(size_t AESL_transaction_pc, size_t skip)
  {
    if (stream.peek() == '[') {
      readline();
    }

    for (size_t i = 0; i < skip; ++i) {
      readline();
    }

    bool foundX = false;
    for (size_t i = 0; i < depth; ++i) {
      readline();
      foundX |= RTLOutputCheckAndReplacement(s);
      ap_uint<bit_width> data(s.c_str(), 16);
      send(param+i*psize, data, 0, bit_width);
    }
    if (foundX) {
      std::cerr << "WARNING: [SIM 212-201] RTL produces unknown value "
                << "'x' or 'X' on some port, possible cause: "
                << "There are uninitialized variables in the design.\n";
    }

    if (stream.peek() == '[') {
      readline();
    }
  }
};

template<size_t bit_width>
const char* PostCheck<bit_width>::bad = "Bad TV file";

template<size_t bit_width>
const char* PostCheck<bit_width>::err = "Error on TV file";
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  query_string_comp_0_depth = 0;
  query_string_comp_1_depth = 0;
  query_string_comp_2_depth = 0;
  query_string_comp_3_depth = 0;
  query_string_comp_4_depth = 0;
  query_string_comp_5_depth = 0;
  query_string_comp_6_depth = 0;
  query_string_comp_7_depth = 0;
  reference_string_comp_0_depth = 0;
  reference_string_comp_1_depth = 0;
  reference_string_comp_2_depth = 0;
  reference_string_comp_3_depth = 0;
  reference_string_comp_4_depth = 0;
  reference_string_comp_5_depth = 0;
  reference_string_comp_6_depth = 0;
  reference_string_comp_7_depth = 0;
  dummies_depth = 0;
  gmem_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{query_string_comp_0 " << query_string_comp_0_depth << "}\n";
  total_list << "{query_string_comp_1 " << query_string_comp_1_depth << "}\n";
  total_list << "{query_string_comp_2 " << query_string_comp_2_depth << "}\n";
  total_list << "{query_string_comp_3 " << query_string_comp_3_depth << "}\n";
  total_list << "{query_string_comp_4 " << query_string_comp_4_depth << "}\n";
  total_list << "{query_string_comp_5 " << query_string_comp_5_depth << "}\n";
  total_list << "{query_string_comp_6 " << query_string_comp_6_depth << "}\n";
  total_list << "{query_string_comp_7 " << query_string_comp_7_depth << "}\n";
  total_list << "{reference_string_comp_0 " << reference_string_comp_0_depth << "}\n";
  total_list << "{reference_string_comp_1 " << reference_string_comp_1_depth << "}\n";
  total_list << "{reference_string_comp_2 " << reference_string_comp_2_depth << "}\n";
  total_list << "{reference_string_comp_3 " << reference_string_comp_3_depth << "}\n";
  total_list << "{reference_string_comp_4 " << reference_string_comp_4_depth << "}\n";
  total_list << "{reference_string_comp_5 " << reference_string_comp_5_depth << "}\n";
  total_list << "{reference_string_comp_6 " << reference_string_comp_6_depth << "}\n";
  total_list << "{reference_string_comp_7 " << reference_string_comp_7_depth << "}\n";
  total_list << "{dummies " << dummies_depth << "}\n";
  total_list << "{gmem " << gmem_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int query_string_comp_0_depth;
    int query_string_comp_1_depth;
    int query_string_comp_2_depth;
    int query_string_comp_3_depth;
    int query_string_comp_4_depth;
    int query_string_comp_5_depth;
    int query_string_comp_6_depth;
    int query_string_comp_7_depth;
    int reference_string_comp_0_depth;
    int reference_string_comp_1_depth;
    int reference_string_comp_2_depth;
    int reference_string_comp_3_depth;
    int reference_string_comp_4_depth;
    int reference_string_comp_5_depth;
    int reference_string_comp_6_depth;
    int reference_string_comp_7_depth;
    int dummies_depth;
    int gmem_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};


struct __cosim_s1__ { char data[1]; };
extern "C" void seq_align_multiple_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_seq_align_multiple_hw(volatile void * __xlx_apatb_param_query_string_comp_0, volatile void * __xlx_apatb_param_query_string_comp_1, volatile void * __xlx_apatb_param_query_string_comp_2, volatile void * __xlx_apatb_param_query_string_comp_3, volatile void * __xlx_apatb_param_query_string_comp_4, volatile void * __xlx_apatb_param_query_string_comp_5, volatile void * __xlx_apatb_param_query_string_comp_6, volatile void * __xlx_apatb_param_query_string_comp_7, volatile void * __xlx_apatb_param_reference_string_comp_0, volatile void * __xlx_apatb_param_reference_string_comp_1, volatile void * __xlx_apatb_param_reference_string_comp_2, volatile void * __xlx_apatb_param_reference_string_comp_3, volatile void * __xlx_apatb_param_reference_string_comp_4, volatile void * __xlx_apatb_param_reference_string_comp_5, volatile void * __xlx_apatb_param_reference_string_comp_6, volatile void * __xlx_apatb_param_reference_string_comp_7, volatile void * __xlx_apatb_param_dummies) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
long __xlx_apatb_param_query_string_comp_0_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_query_string_comp_0);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_query_string_comp_0_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_query_string_comp_0_stream_buf_final_size; ++i)((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_0)->read();
long __xlx_apatb_param_query_string_comp_1_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_query_string_comp_1);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_query_string_comp_1_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_query_string_comp_1);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<8> > query_string_comp_1_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              query_string_comp_1_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "query_string_comp_1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s1__ xlx_stream_elt __attribute__ ((aligned));
((char*)&xlx_stream_elt)[0*1+0] = query_string_comp_1_pc_buffer[j].range(7, 0).to_int64();
((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_1)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_query_string_comp_2_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_query_string_comp_2);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_query_string_comp_2_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_query_string_comp_2);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<8> > query_string_comp_2_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              query_string_comp_2_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "query_string_comp_2" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s1__ xlx_stream_elt __attribute__ ((aligned));
((char*)&xlx_stream_elt)[0*1+0] = query_string_comp_2_pc_buffer[j].range(7, 0).to_int64();
((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_2)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_query_string_comp_3_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_query_string_comp_3);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_query_string_comp_3_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_query_string_comp_3);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<8> > query_string_comp_3_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              query_string_comp_3_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "query_string_comp_3" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s1__ xlx_stream_elt __attribute__ ((aligned));
((char*)&xlx_stream_elt)[0*1+0] = query_string_comp_3_pc_buffer[j].range(7, 0).to_int64();
((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_3)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_query_string_comp_4_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_query_string_comp_4);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_query_string_comp_4_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_query_string_comp_4);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<8> > query_string_comp_4_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              query_string_comp_4_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "query_string_comp_4" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s1__ xlx_stream_elt __attribute__ ((aligned));
((char*)&xlx_stream_elt)[0*1+0] = query_string_comp_4_pc_buffer[j].range(7, 0).to_int64();
((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_4)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_query_string_comp_5_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_query_string_comp_5);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_query_string_comp_5_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_query_string_comp_5);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<8> > query_string_comp_5_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              query_string_comp_5_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "query_string_comp_5" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s1__ xlx_stream_elt __attribute__ ((aligned));
((char*)&xlx_stream_elt)[0*1+0] = query_string_comp_5_pc_buffer[j].range(7, 0).to_int64();
((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_5)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_query_string_comp_6_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_query_string_comp_6);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_query_string_comp_6_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_query_string_comp_6);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<8> > query_string_comp_6_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              query_string_comp_6_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "query_string_comp_6" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s1__ xlx_stream_elt __attribute__ ((aligned));
((char*)&xlx_stream_elt)[0*1+0] = query_string_comp_6_pc_buffer[j].range(7, 0).to_int64();
((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_6)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_query_string_comp_7_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_query_string_comp_7);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_query_string_comp_7_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_query_string_comp_7);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<8> > query_string_comp_7_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              query_string_comp_7_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "query_string_comp_7" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s1__ xlx_stream_elt __attribute__ ((aligned));
((char*)&xlx_stream_elt)[0*1+0] = query_string_comp_7_pc_buffer[j].range(7, 0).to_int64();
((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_7)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_reference_string_comp_0_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_reference_string_comp_0);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_reference_string_comp_0_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_reference_string_comp_0_stream_buf_final_size; ++i)((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_0)->read();
long __xlx_apatb_param_reference_string_comp_1_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_reference_string_comp_1);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_reference_string_comp_1_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_reference_string_comp_1);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<8> > reference_string_comp_1_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              reference_string_comp_1_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "reference_string_comp_1" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s1__ xlx_stream_elt __attribute__ ((aligned));
((char*)&xlx_stream_elt)[0*1+0] = reference_string_comp_1_pc_buffer[j].range(7, 0).to_int64();
((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_1)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_reference_string_comp_2_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_reference_string_comp_2);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_reference_string_comp_2_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_reference_string_comp_2);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<8> > reference_string_comp_2_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              reference_string_comp_2_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "reference_string_comp_2" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s1__ xlx_stream_elt __attribute__ ((aligned));
((char*)&xlx_stream_elt)[0*1+0] = reference_string_comp_2_pc_buffer[j].range(7, 0).to_int64();
((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_2)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_reference_string_comp_3_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_reference_string_comp_3);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_reference_string_comp_3_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_reference_string_comp_3);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<8> > reference_string_comp_3_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              reference_string_comp_3_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "reference_string_comp_3" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s1__ xlx_stream_elt __attribute__ ((aligned));
((char*)&xlx_stream_elt)[0*1+0] = reference_string_comp_3_pc_buffer[j].range(7, 0).to_int64();
((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_3)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_reference_string_comp_4_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_reference_string_comp_4);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_reference_string_comp_4_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_reference_string_comp_4);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<8> > reference_string_comp_4_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              reference_string_comp_4_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "reference_string_comp_4" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s1__ xlx_stream_elt __attribute__ ((aligned));
((char*)&xlx_stream_elt)[0*1+0] = reference_string_comp_4_pc_buffer[j].range(7, 0).to_int64();
((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_4)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_reference_string_comp_5_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_reference_string_comp_5);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_reference_string_comp_5_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_reference_string_comp_5);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<8> > reference_string_comp_5_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              reference_string_comp_5_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "reference_string_comp_5" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s1__ xlx_stream_elt __attribute__ ((aligned));
((char*)&xlx_stream_elt)[0*1+0] = reference_string_comp_5_pc_buffer[j].range(7, 0).to_int64();
((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_5)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_reference_string_comp_6_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_reference_string_comp_6);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_reference_string_comp_6_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_reference_string_comp_6);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<8> > reference_string_comp_6_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              reference_string_comp_6_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "reference_string_comp_6" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s1__ xlx_stream_elt __attribute__ ((aligned));
((char*)&xlx_stream_elt)[0*1+0] = reference_string_comp_6_pc_buffer[j].range(7, 0).to_int64();
((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_6)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_reference_string_comp_7_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_reference_string_comp_7);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_reference_string_comp_7_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_reference_string_comp_7);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<8> > reference_string_comp_7_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              reference_string_comp_7_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "reference_string_comp_7" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s1__ xlx_stream_elt __attribute__ ((aligned));
((char*)&xlx_stream_elt)[0*1+0] = reference_string_comp_7_pc_buffer[j].range(7, 0).to_int64();
((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_7)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  try {
static PostCheck<32> pc(AUTOTB_TVOUT_PC_gmem);
pc.psize = 4;
pc.param = (char*)__xlx_apatb_param_dummies;
pc.depth = 1;
pc.run(AESL_transaction_pc, 0);
} catch (SimException &e) {
  std::cout << "at line " << e.line << " occurred exception, " << e.msg << "\n";
}

    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_query_string_comp_0);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_query_string_comp_0);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_query_string_comp_1);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_query_string_comp_1);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_query_string_comp_2);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_query_string_comp_2);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_query_string_comp_3);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_query_string_comp_3);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_query_string_comp_4);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_query_string_comp_4);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_query_string_comp_5);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_query_string_comp_5);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_query_string_comp_6);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_query_string_comp_6);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_query_string_comp_7);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_query_string_comp_7);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_reference_string_comp_0);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_reference_string_comp_0);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_reference_string_comp_1);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_reference_string_comp_1);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_reference_string_comp_2);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_reference_string_comp_2);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_reference_string_comp_3);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_reference_string_comp_3);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_reference_string_comp_4);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_reference_string_comp_4);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_reference_string_comp_5);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_reference_string_comp_5);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_reference_string_comp_6);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_reference_string_comp_6);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_reference_string_comp_7);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_reference_string_comp_7);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_dummies = 0;
std::vector<__cosim_s1__> __xlx_apatb_param_query_string_comp_0_stream_buf;
{
  while (!((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_0)->empty())
    __xlx_apatb_param_query_string_comp_0_stream_buf.push_back(((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_0)->read());
  for (int i = 0; i < __xlx_apatb_param_query_string_comp_0_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_0)->write(__xlx_apatb_param_query_string_comp_0_stream_buf[i]);
  }
long __xlx_apatb_param_query_string_comp_0_stream_buf_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_0)->size();
std::vector<__cosim_s1__> __xlx_apatb_param_query_string_comp_1_stream_buf;
long __xlx_apatb_param_query_string_comp_1_stream_buf_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_1)->size();
std::vector<__cosim_s1__> __xlx_apatb_param_query_string_comp_2_stream_buf;
long __xlx_apatb_param_query_string_comp_2_stream_buf_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_2)->size();
std::vector<__cosim_s1__> __xlx_apatb_param_query_string_comp_3_stream_buf;
long __xlx_apatb_param_query_string_comp_3_stream_buf_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_3)->size();
std::vector<__cosim_s1__> __xlx_apatb_param_query_string_comp_4_stream_buf;
long __xlx_apatb_param_query_string_comp_4_stream_buf_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_4)->size();
std::vector<__cosim_s1__> __xlx_apatb_param_query_string_comp_5_stream_buf;
long __xlx_apatb_param_query_string_comp_5_stream_buf_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_5)->size();
std::vector<__cosim_s1__> __xlx_apatb_param_query_string_comp_6_stream_buf;
long __xlx_apatb_param_query_string_comp_6_stream_buf_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_6)->size();
std::vector<__cosim_s1__> __xlx_apatb_param_query_string_comp_7_stream_buf;
long __xlx_apatb_param_query_string_comp_7_stream_buf_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_7)->size();
std::vector<__cosim_s1__> __xlx_apatb_param_reference_string_comp_0_stream_buf;
{
  while (!((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_0)->empty())
    __xlx_apatb_param_reference_string_comp_0_stream_buf.push_back(((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_0)->read());
  for (int i = 0; i < __xlx_apatb_param_reference_string_comp_0_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_0)->write(__xlx_apatb_param_reference_string_comp_0_stream_buf[i]);
  }
long __xlx_apatb_param_reference_string_comp_0_stream_buf_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_0)->size();
std::vector<__cosim_s1__> __xlx_apatb_param_reference_string_comp_1_stream_buf;
long __xlx_apatb_param_reference_string_comp_1_stream_buf_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_1)->size();
std::vector<__cosim_s1__> __xlx_apatb_param_reference_string_comp_2_stream_buf;
long __xlx_apatb_param_reference_string_comp_2_stream_buf_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_2)->size();
std::vector<__cosim_s1__> __xlx_apatb_param_reference_string_comp_3_stream_buf;
long __xlx_apatb_param_reference_string_comp_3_stream_buf_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_3)->size();
std::vector<__cosim_s1__> __xlx_apatb_param_reference_string_comp_4_stream_buf;
long __xlx_apatb_param_reference_string_comp_4_stream_buf_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_4)->size();
std::vector<__cosim_s1__> __xlx_apatb_param_reference_string_comp_5_stream_buf;
long __xlx_apatb_param_reference_string_comp_5_stream_buf_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_5)->size();
std::vector<__cosim_s1__> __xlx_apatb_param_reference_string_comp_6_stream_buf;
long __xlx_apatb_param_reference_string_comp_6_stream_buf_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_6)->size();
std::vector<__cosim_s1__> __xlx_apatb_param_reference_string_comp_7_stream_buf;
long __xlx_apatb_param_reference_string_comp_7_stream_buf_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_7)->size();
aesl_fh.touch(AUTOTB_TVIN_gmem);
{
aesl_fh.write(AUTOTB_TVIN_gmem, begin_str(AESL_transaction));
__xlx_offset_byte_param_dummies = 0*4;
if (__xlx_apatb_param_dummies) {
for (size_t i = 0; i < 1; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_dummies + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVIN_gmem, s);
}
}
tcl_file.set_num(1, &tcl_file.gmem_depth);
aesl_fh.write(AUTOTB_TVIN_gmem, end_str());
}
// print dummies Transactions
{
aesl_fh.write(AUTOTB_TVIN_dummies, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_dummies;
aesl_fh.write(AUTOTB_TVIN_dummies, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.dummies_depth);
aesl_fh.write(AUTOTB_TVIN_dummies, end_str());
}

CodeState = CALL_C_DUT;
seq_align_multiple_hw_stub_wrapper(__xlx_apatb_param_query_string_comp_0, __xlx_apatb_param_query_string_comp_1, __xlx_apatb_param_query_string_comp_2, __xlx_apatb_param_query_string_comp_3, __xlx_apatb_param_query_string_comp_4, __xlx_apatb_param_query_string_comp_5, __xlx_apatb_param_query_string_comp_6, __xlx_apatb_param_query_string_comp_7, __xlx_apatb_param_reference_string_comp_0, __xlx_apatb_param_reference_string_comp_1, __xlx_apatb_param_reference_string_comp_2, __xlx_apatb_param_reference_string_comp_3, __xlx_apatb_param_reference_string_comp_4, __xlx_apatb_param_reference_string_comp_5, __xlx_apatb_param_reference_string_comp_6, __xlx_apatb_param_reference_string_comp_7, __xlx_apatb_param_dummies);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_query_string_comp_0_stream_buf_final_size = __xlx_apatb_param_query_string_comp_0_stream_buf_size - ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_0)->size();
// print query_string_comp_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_query_string_comp_0, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_query_string_comp_0_stream_buf_final_size; ++i) {
unsigned char *pos = (unsigned char*)(__xlx_apatb_param_query_string_comp_0_stream_buf.data()+i);
std::string s(formatData(pos, 8));
aesl_fh.write(AUTOTB_TVIN_query_string_comp_0, s);
}

  tcl_file.set_num(__xlx_apatb_param_query_string_comp_0_stream_buf_final_size, &tcl_file.query_string_comp_0_depth);
aesl_fh.write(AUTOTB_TVIN_query_string_comp_0, end_str());
}


// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_query_string_comp_0, begin_str(AESL_transaction));
if (__xlx_apatb_param_query_string_comp_0_stream_buf_final_size > 0) {
  long query_string_comp_0_stream_ingress_size = __xlx_apatb_param_query_string_comp_0_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", query_string_comp_0_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_query_string_comp_0, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_query_string_comp_0_stream_buf_final_size; j != e; j++) {
    query_string_comp_0_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", query_string_comp_0_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_query_string_comp_0, __xlx_sprintf_buffer.data());
  }
} else {
  long query_string_comp_0_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", query_string_comp_0_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_query_string_comp_0, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_query_string_comp_0, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_query_string_comp_0, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_query_string_comp_0_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_query_string_comp_0, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_query_string_comp_0, end_str());
}
long __xlx_apatb_param_query_string_comp_1_stream_buf_final_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_1)->size() - __xlx_apatb_param_query_string_comp_1_stream_buf_size;
{
  while (!((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_1)->empty())
    __xlx_apatb_param_query_string_comp_1_stream_buf.push_back(((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_1)->read());
  for (int i = 0; i < __xlx_apatb_param_query_string_comp_1_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_1)->write(__xlx_apatb_param_query_string_comp_1_stream_buf[i]);
  }
// print query_string_comp_1 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_query_string_comp_1, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_query_string_comp_1_stream_buf_final_size; ++i) {
unsigned char *pos = (unsigned char*)(__xlx_apatb_param_query_string_comp_1_stream_buf.data()+__xlx_apatb_param_query_string_comp_1_stream_buf_size+i);
std::string s(formatData(pos, 8));
aesl_fh.write(AUTOTB_TVOUT_query_string_comp_1, s);
}

  tcl_file.set_num(__xlx_apatb_param_query_string_comp_1_stream_buf_final_size, &tcl_file.query_string_comp_1_depth);
aesl_fh.write(AUTOTB_TVOUT_query_string_comp_1, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_query_string_comp_1, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_query_string_comp_1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_query_string_comp_1, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_query_string_comp_1, end_str());
}
long __xlx_apatb_param_query_string_comp_2_stream_buf_final_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_2)->size() - __xlx_apatb_param_query_string_comp_2_stream_buf_size;
{
  while (!((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_2)->empty())
    __xlx_apatb_param_query_string_comp_2_stream_buf.push_back(((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_2)->read());
  for (int i = 0; i < __xlx_apatb_param_query_string_comp_2_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_2)->write(__xlx_apatb_param_query_string_comp_2_stream_buf[i]);
  }
// print query_string_comp_2 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_query_string_comp_2, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_query_string_comp_2_stream_buf_final_size; ++i) {
unsigned char *pos = (unsigned char*)(__xlx_apatb_param_query_string_comp_2_stream_buf.data()+__xlx_apatb_param_query_string_comp_2_stream_buf_size+i);
std::string s(formatData(pos, 8));
aesl_fh.write(AUTOTB_TVOUT_query_string_comp_2, s);
}

  tcl_file.set_num(__xlx_apatb_param_query_string_comp_2_stream_buf_final_size, &tcl_file.query_string_comp_2_depth);
aesl_fh.write(AUTOTB_TVOUT_query_string_comp_2, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_query_string_comp_2, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_query_string_comp_2_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_query_string_comp_2, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_query_string_comp_2, end_str());
}
long __xlx_apatb_param_query_string_comp_3_stream_buf_final_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_3)->size() - __xlx_apatb_param_query_string_comp_3_stream_buf_size;
{
  while (!((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_3)->empty())
    __xlx_apatb_param_query_string_comp_3_stream_buf.push_back(((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_3)->read());
  for (int i = 0; i < __xlx_apatb_param_query_string_comp_3_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_3)->write(__xlx_apatb_param_query_string_comp_3_stream_buf[i]);
  }
// print query_string_comp_3 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_query_string_comp_3, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_query_string_comp_3_stream_buf_final_size; ++i) {
unsigned char *pos = (unsigned char*)(__xlx_apatb_param_query_string_comp_3_stream_buf.data()+__xlx_apatb_param_query_string_comp_3_stream_buf_size+i);
std::string s(formatData(pos, 8));
aesl_fh.write(AUTOTB_TVOUT_query_string_comp_3, s);
}

  tcl_file.set_num(__xlx_apatb_param_query_string_comp_3_stream_buf_final_size, &tcl_file.query_string_comp_3_depth);
aesl_fh.write(AUTOTB_TVOUT_query_string_comp_3, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_query_string_comp_3, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_query_string_comp_3_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_query_string_comp_3, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_query_string_comp_3, end_str());
}
long __xlx_apatb_param_query_string_comp_4_stream_buf_final_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_4)->size() - __xlx_apatb_param_query_string_comp_4_stream_buf_size;
{
  while (!((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_4)->empty())
    __xlx_apatb_param_query_string_comp_4_stream_buf.push_back(((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_4)->read());
  for (int i = 0; i < __xlx_apatb_param_query_string_comp_4_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_4)->write(__xlx_apatb_param_query_string_comp_4_stream_buf[i]);
  }
// print query_string_comp_4 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_query_string_comp_4, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_query_string_comp_4_stream_buf_final_size; ++i) {
unsigned char *pos = (unsigned char*)(__xlx_apatb_param_query_string_comp_4_stream_buf.data()+__xlx_apatb_param_query_string_comp_4_stream_buf_size+i);
std::string s(formatData(pos, 8));
aesl_fh.write(AUTOTB_TVOUT_query_string_comp_4, s);
}

  tcl_file.set_num(__xlx_apatb_param_query_string_comp_4_stream_buf_final_size, &tcl_file.query_string_comp_4_depth);
aesl_fh.write(AUTOTB_TVOUT_query_string_comp_4, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_query_string_comp_4, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_query_string_comp_4_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_query_string_comp_4, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_query_string_comp_4, end_str());
}
long __xlx_apatb_param_query_string_comp_5_stream_buf_final_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_5)->size() - __xlx_apatb_param_query_string_comp_5_stream_buf_size;
{
  while (!((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_5)->empty())
    __xlx_apatb_param_query_string_comp_5_stream_buf.push_back(((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_5)->read());
  for (int i = 0; i < __xlx_apatb_param_query_string_comp_5_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_5)->write(__xlx_apatb_param_query_string_comp_5_stream_buf[i]);
  }
// print query_string_comp_5 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_query_string_comp_5, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_query_string_comp_5_stream_buf_final_size; ++i) {
unsigned char *pos = (unsigned char*)(__xlx_apatb_param_query_string_comp_5_stream_buf.data()+__xlx_apatb_param_query_string_comp_5_stream_buf_size+i);
std::string s(formatData(pos, 8));
aesl_fh.write(AUTOTB_TVOUT_query_string_comp_5, s);
}

  tcl_file.set_num(__xlx_apatb_param_query_string_comp_5_stream_buf_final_size, &tcl_file.query_string_comp_5_depth);
aesl_fh.write(AUTOTB_TVOUT_query_string_comp_5, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_query_string_comp_5, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_query_string_comp_5_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_query_string_comp_5, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_query_string_comp_5, end_str());
}
long __xlx_apatb_param_query_string_comp_6_stream_buf_final_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_6)->size() - __xlx_apatb_param_query_string_comp_6_stream_buf_size;
{
  while (!((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_6)->empty())
    __xlx_apatb_param_query_string_comp_6_stream_buf.push_back(((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_6)->read());
  for (int i = 0; i < __xlx_apatb_param_query_string_comp_6_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_6)->write(__xlx_apatb_param_query_string_comp_6_stream_buf[i]);
  }
// print query_string_comp_6 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_query_string_comp_6, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_query_string_comp_6_stream_buf_final_size; ++i) {
unsigned char *pos = (unsigned char*)(__xlx_apatb_param_query_string_comp_6_stream_buf.data()+__xlx_apatb_param_query_string_comp_6_stream_buf_size+i);
std::string s(formatData(pos, 8));
aesl_fh.write(AUTOTB_TVOUT_query_string_comp_6, s);
}

  tcl_file.set_num(__xlx_apatb_param_query_string_comp_6_stream_buf_final_size, &tcl_file.query_string_comp_6_depth);
aesl_fh.write(AUTOTB_TVOUT_query_string_comp_6, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_query_string_comp_6, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_query_string_comp_6_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_query_string_comp_6, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_query_string_comp_6, end_str());
}
long __xlx_apatb_param_query_string_comp_7_stream_buf_final_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_7)->size() - __xlx_apatb_param_query_string_comp_7_stream_buf_size;
{
  while (!((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_7)->empty())
    __xlx_apatb_param_query_string_comp_7_stream_buf.push_back(((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_7)->read());
  for (int i = 0; i < __xlx_apatb_param_query_string_comp_7_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_7)->write(__xlx_apatb_param_query_string_comp_7_stream_buf[i]);
  }
// print query_string_comp_7 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_query_string_comp_7, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_query_string_comp_7_stream_buf_final_size; ++i) {
unsigned char *pos = (unsigned char*)(__xlx_apatb_param_query_string_comp_7_stream_buf.data()+__xlx_apatb_param_query_string_comp_7_stream_buf_size+i);
std::string s(formatData(pos, 8));
aesl_fh.write(AUTOTB_TVOUT_query_string_comp_7, s);
}

  tcl_file.set_num(__xlx_apatb_param_query_string_comp_7_stream_buf_final_size, &tcl_file.query_string_comp_7_depth);
aesl_fh.write(AUTOTB_TVOUT_query_string_comp_7, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_query_string_comp_7, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_query_string_comp_7_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_query_string_comp_7, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_query_string_comp_7, end_str());
}
long __xlx_apatb_param_reference_string_comp_0_stream_buf_final_size = __xlx_apatb_param_reference_string_comp_0_stream_buf_size - ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_0)->size();
// print reference_string_comp_0 Transactions
{
aesl_fh.write(AUTOTB_TVIN_reference_string_comp_0, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_reference_string_comp_0_stream_buf_final_size; ++i) {
unsigned char *pos = (unsigned char*)(__xlx_apatb_param_reference_string_comp_0_stream_buf.data()+i);
std::string s(formatData(pos, 8));
aesl_fh.write(AUTOTB_TVIN_reference_string_comp_0, s);
}

  tcl_file.set_num(__xlx_apatb_param_reference_string_comp_0_stream_buf_final_size, &tcl_file.reference_string_comp_0_depth);
aesl_fh.write(AUTOTB_TVIN_reference_string_comp_0, end_str());
}


// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_reference_string_comp_0, begin_str(AESL_transaction));
if (__xlx_apatb_param_reference_string_comp_0_stream_buf_final_size > 0) {
  long reference_string_comp_0_stream_ingress_size = __xlx_apatb_param_reference_string_comp_0_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", reference_string_comp_0_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_reference_string_comp_0, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_reference_string_comp_0_stream_buf_final_size; j != e; j++) {
    reference_string_comp_0_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", reference_string_comp_0_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_reference_string_comp_0, __xlx_sprintf_buffer.data());
  }
} else {
  long reference_string_comp_0_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", reference_string_comp_0_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_reference_string_comp_0, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_reference_string_comp_0, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_reference_string_comp_0, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_reference_string_comp_0_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_reference_string_comp_0, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_reference_string_comp_0, end_str());
}
long __xlx_apatb_param_reference_string_comp_1_stream_buf_final_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_1)->size() - __xlx_apatb_param_reference_string_comp_1_stream_buf_size;
{
  while (!((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_1)->empty())
    __xlx_apatb_param_reference_string_comp_1_stream_buf.push_back(((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_1)->read());
  for (int i = 0; i < __xlx_apatb_param_reference_string_comp_1_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_1)->write(__xlx_apatb_param_reference_string_comp_1_stream_buf[i]);
  }
// print reference_string_comp_1 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_reference_string_comp_1, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_reference_string_comp_1_stream_buf_final_size; ++i) {
unsigned char *pos = (unsigned char*)(__xlx_apatb_param_reference_string_comp_1_stream_buf.data()+__xlx_apatb_param_reference_string_comp_1_stream_buf_size+i);
std::string s(formatData(pos, 8));
aesl_fh.write(AUTOTB_TVOUT_reference_string_comp_1, s);
}

  tcl_file.set_num(__xlx_apatb_param_reference_string_comp_1_stream_buf_final_size, &tcl_file.reference_string_comp_1_depth);
aesl_fh.write(AUTOTB_TVOUT_reference_string_comp_1, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_reference_string_comp_1, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_reference_string_comp_1_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_reference_string_comp_1, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_reference_string_comp_1, end_str());
}
long __xlx_apatb_param_reference_string_comp_2_stream_buf_final_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_2)->size() - __xlx_apatb_param_reference_string_comp_2_stream_buf_size;
{
  while (!((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_2)->empty())
    __xlx_apatb_param_reference_string_comp_2_stream_buf.push_back(((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_2)->read());
  for (int i = 0; i < __xlx_apatb_param_reference_string_comp_2_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_2)->write(__xlx_apatb_param_reference_string_comp_2_stream_buf[i]);
  }
// print reference_string_comp_2 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_reference_string_comp_2, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_reference_string_comp_2_stream_buf_final_size; ++i) {
unsigned char *pos = (unsigned char*)(__xlx_apatb_param_reference_string_comp_2_stream_buf.data()+__xlx_apatb_param_reference_string_comp_2_stream_buf_size+i);
std::string s(formatData(pos, 8));
aesl_fh.write(AUTOTB_TVOUT_reference_string_comp_2, s);
}

  tcl_file.set_num(__xlx_apatb_param_reference_string_comp_2_stream_buf_final_size, &tcl_file.reference_string_comp_2_depth);
aesl_fh.write(AUTOTB_TVOUT_reference_string_comp_2, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_reference_string_comp_2, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_reference_string_comp_2_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_reference_string_comp_2, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_reference_string_comp_2, end_str());
}
long __xlx_apatb_param_reference_string_comp_3_stream_buf_final_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_3)->size() - __xlx_apatb_param_reference_string_comp_3_stream_buf_size;
{
  while (!((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_3)->empty())
    __xlx_apatb_param_reference_string_comp_3_stream_buf.push_back(((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_3)->read());
  for (int i = 0; i < __xlx_apatb_param_reference_string_comp_3_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_3)->write(__xlx_apatb_param_reference_string_comp_3_stream_buf[i]);
  }
// print reference_string_comp_3 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_reference_string_comp_3, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_reference_string_comp_3_stream_buf_final_size; ++i) {
unsigned char *pos = (unsigned char*)(__xlx_apatb_param_reference_string_comp_3_stream_buf.data()+__xlx_apatb_param_reference_string_comp_3_stream_buf_size+i);
std::string s(formatData(pos, 8));
aesl_fh.write(AUTOTB_TVOUT_reference_string_comp_3, s);
}

  tcl_file.set_num(__xlx_apatb_param_reference_string_comp_3_stream_buf_final_size, &tcl_file.reference_string_comp_3_depth);
aesl_fh.write(AUTOTB_TVOUT_reference_string_comp_3, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_reference_string_comp_3, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_reference_string_comp_3_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_reference_string_comp_3, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_reference_string_comp_3, end_str());
}
long __xlx_apatb_param_reference_string_comp_4_stream_buf_final_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_4)->size() - __xlx_apatb_param_reference_string_comp_4_stream_buf_size;
{
  while (!((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_4)->empty())
    __xlx_apatb_param_reference_string_comp_4_stream_buf.push_back(((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_4)->read());
  for (int i = 0; i < __xlx_apatb_param_reference_string_comp_4_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_4)->write(__xlx_apatb_param_reference_string_comp_4_stream_buf[i]);
  }
// print reference_string_comp_4 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_reference_string_comp_4, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_reference_string_comp_4_stream_buf_final_size; ++i) {
unsigned char *pos = (unsigned char*)(__xlx_apatb_param_reference_string_comp_4_stream_buf.data()+__xlx_apatb_param_reference_string_comp_4_stream_buf_size+i);
std::string s(formatData(pos, 8));
aesl_fh.write(AUTOTB_TVOUT_reference_string_comp_4, s);
}

  tcl_file.set_num(__xlx_apatb_param_reference_string_comp_4_stream_buf_final_size, &tcl_file.reference_string_comp_4_depth);
aesl_fh.write(AUTOTB_TVOUT_reference_string_comp_4, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_reference_string_comp_4, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_reference_string_comp_4_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_reference_string_comp_4, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_reference_string_comp_4, end_str());
}
long __xlx_apatb_param_reference_string_comp_5_stream_buf_final_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_5)->size() - __xlx_apatb_param_reference_string_comp_5_stream_buf_size;
{
  while (!((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_5)->empty())
    __xlx_apatb_param_reference_string_comp_5_stream_buf.push_back(((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_5)->read());
  for (int i = 0; i < __xlx_apatb_param_reference_string_comp_5_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_5)->write(__xlx_apatb_param_reference_string_comp_5_stream_buf[i]);
  }
// print reference_string_comp_5 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_reference_string_comp_5, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_reference_string_comp_5_stream_buf_final_size; ++i) {
unsigned char *pos = (unsigned char*)(__xlx_apatb_param_reference_string_comp_5_stream_buf.data()+__xlx_apatb_param_reference_string_comp_5_stream_buf_size+i);
std::string s(formatData(pos, 8));
aesl_fh.write(AUTOTB_TVOUT_reference_string_comp_5, s);
}

  tcl_file.set_num(__xlx_apatb_param_reference_string_comp_5_stream_buf_final_size, &tcl_file.reference_string_comp_5_depth);
aesl_fh.write(AUTOTB_TVOUT_reference_string_comp_5, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_reference_string_comp_5, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_reference_string_comp_5_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_reference_string_comp_5, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_reference_string_comp_5, end_str());
}
long __xlx_apatb_param_reference_string_comp_6_stream_buf_final_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_6)->size() - __xlx_apatb_param_reference_string_comp_6_stream_buf_size;
{
  while (!((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_6)->empty())
    __xlx_apatb_param_reference_string_comp_6_stream_buf.push_back(((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_6)->read());
  for (int i = 0; i < __xlx_apatb_param_reference_string_comp_6_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_6)->write(__xlx_apatb_param_reference_string_comp_6_stream_buf[i]);
  }
// print reference_string_comp_6 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_reference_string_comp_6, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_reference_string_comp_6_stream_buf_final_size; ++i) {
unsigned char *pos = (unsigned char*)(__xlx_apatb_param_reference_string_comp_6_stream_buf.data()+__xlx_apatb_param_reference_string_comp_6_stream_buf_size+i);
std::string s(formatData(pos, 8));
aesl_fh.write(AUTOTB_TVOUT_reference_string_comp_6, s);
}

  tcl_file.set_num(__xlx_apatb_param_reference_string_comp_6_stream_buf_final_size, &tcl_file.reference_string_comp_6_depth);
aesl_fh.write(AUTOTB_TVOUT_reference_string_comp_6, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_reference_string_comp_6, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_reference_string_comp_6_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_reference_string_comp_6, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_reference_string_comp_6, end_str());
}
long __xlx_apatb_param_reference_string_comp_7_stream_buf_final_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_7)->size() - __xlx_apatb_param_reference_string_comp_7_stream_buf_size;
{
  while (!((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_7)->empty())
    __xlx_apatb_param_reference_string_comp_7_stream_buf.push_back(((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_7)->read());
  for (int i = 0; i < __xlx_apatb_param_reference_string_comp_7_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_7)->write(__xlx_apatb_param_reference_string_comp_7_stream_buf[i]);
  }
// print reference_string_comp_7 Transactions
{
aesl_fh.write(AUTOTB_TVOUT_reference_string_comp_7, begin_str(AESL_transaction));
for (int i = 0; i < __xlx_apatb_param_reference_string_comp_7_stream_buf_final_size; ++i) {
unsigned char *pos = (unsigned char*)(__xlx_apatb_param_reference_string_comp_7_stream_buf.data()+__xlx_apatb_param_reference_string_comp_7_stream_buf_size+i);
std::string s(formatData(pos, 8));
aesl_fh.write(AUTOTB_TVOUT_reference_string_comp_7, s);
}

  tcl_file.set_num(__xlx_apatb_param_reference_string_comp_7_stream_buf_final_size, &tcl_file.reference_string_comp_7_depth);
aesl_fh.write(AUTOTB_TVOUT_reference_string_comp_7, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_reference_string_comp_7, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_reference_string_comp_7_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_reference_string_comp_7, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_reference_string_comp_7, end_str());
}
aesl_fh.touch(AUTOTB_TVOUT_gmem);
{
aesl_fh.write(AUTOTB_TVOUT_gmem, begin_str(AESL_transaction));
__xlx_offset_byte_param_dummies = 0*4;
if (__xlx_apatb_param_dummies) {
for (size_t i = 0; i < 1; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_dummies + i * 4;
std::string s = formatData(pos, 32);
aesl_fh.write(AUTOTB_TVOUT_gmem, s);
}
}
tcl_file.set_num(1, &tcl_file.gmem_depth);
aesl_fh.write(AUTOTB_TVOUT_gmem, end_str());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
