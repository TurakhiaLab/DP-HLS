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
#define AUTOTB_TVIN_chunk1 "../tv/cdatafile/c.seq_align_multiple.autotvin_chunk1.dat"
#define AUTOTB_TVOUT_chunk1 "../tv/cdatafile/c.seq_align_multiple.autotvout_chunk1.dat"
#define AUTOTB_TVIN_chunk2 "../tv/cdatafile/c.seq_align_multiple.autotvin_chunk2.dat"
#define AUTOTB_TVOUT_chunk2 "../tv/cdatafile/c.seq_align_multiple.autotvout_chunk2.dat"
#define AUTOTB_TVIN_chunk3 "../tv/cdatafile/c.seq_align_multiple.autotvin_chunk3.dat"
#define AUTOTB_TVOUT_chunk3 "../tv/cdatafile/c.seq_align_multiple.autotvout_chunk3.dat"
#define AUTOTB_TVIN_chunk4 "../tv/cdatafile/c.seq_align_multiple.autotvin_chunk4.dat"
#define AUTOTB_TVOUT_chunk4 "../tv/cdatafile/c.seq_align_multiple.autotvout_chunk4.dat"
#define AUTOTB_TVIN_chunk5 "../tv/cdatafile/c.seq_align_multiple.autotvin_chunk5.dat"
#define AUTOTB_TVOUT_chunk5 "../tv/cdatafile/c.seq_align_multiple.autotvout_chunk5.dat"
#define AUTOTB_TVIN_chunk6 "../tv/cdatafile/c.seq_align_multiple.autotvin_chunk6.dat"
#define AUTOTB_TVOUT_chunk6 "../tv/cdatafile/c.seq_align_multiple.autotvout_chunk6.dat"
#define AUTOTB_TVIN_chunk7 "../tv/cdatafile/c.seq_align_multiple.autotvin_chunk7.dat"
#define AUTOTB_TVOUT_chunk7 "../tv/cdatafile/c.seq_align_multiple.autotvout_chunk7.dat"
#define AUTOTB_TVIN_chunk8 "../tv/cdatafile/c.seq_align_multiple.autotvin_chunk8.dat"
#define AUTOTB_TVOUT_chunk8 "../tv/cdatafile/c.seq_align_multiple.autotvout_chunk8.dat"
#define AUTOTB_TVIN_ref1 "../tv/cdatafile/c.seq_align_multiple.autotvin_ref1.dat"
#define AUTOTB_TVOUT_ref1 "../tv/cdatafile/c.seq_align_multiple.autotvout_ref1.dat"
#define AUTOTB_TVIN_ref2 "../tv/cdatafile/c.seq_align_multiple.autotvin_ref2.dat"
#define AUTOTB_TVOUT_ref2 "../tv/cdatafile/c.seq_align_multiple.autotvout_ref2.dat"
#define AUTOTB_TVIN_ref3 "../tv/cdatafile/c.seq_align_multiple.autotvin_ref3.dat"
#define AUTOTB_TVOUT_ref3 "../tv/cdatafile/c.seq_align_multiple.autotvout_ref3.dat"
#define AUTOTB_TVIN_ref4 "../tv/cdatafile/c.seq_align_multiple.autotvin_ref4.dat"
#define AUTOTB_TVOUT_ref4 "../tv/cdatafile/c.seq_align_multiple.autotvout_ref4.dat"
#define AUTOTB_TVIN_ref5 "../tv/cdatafile/c.seq_align_multiple.autotvin_ref5.dat"
#define AUTOTB_TVOUT_ref5 "../tv/cdatafile/c.seq_align_multiple.autotvout_ref5.dat"
#define AUTOTB_TVIN_ref6 "../tv/cdatafile/c.seq_align_multiple.autotvin_ref6.dat"
#define AUTOTB_TVOUT_ref6 "../tv/cdatafile/c.seq_align_multiple.autotvout_ref6.dat"
#define AUTOTB_TVIN_ref7 "../tv/cdatafile/c.seq_align_multiple.autotvin_ref7.dat"
#define AUTOTB_TVOUT_ref7 "../tv/cdatafile/c.seq_align_multiple.autotvout_ref7.dat"
#define AUTOTB_TVIN_ref8 "../tv/cdatafile/c.seq_align_multiple.autotvin_ref8.dat"
#define AUTOTB_TVOUT_ref8 "../tv/cdatafile/c.seq_align_multiple.autotvout_ref8.dat"
#define AUTOTB_TVIN_dummy1_out "../tv/cdatafile/c.seq_align_multiple.autotvin_dummy1_out.dat"
#define AUTOTB_TVOUT_dummy1_out "../tv/cdatafile/c.seq_align_multiple.autotvout_dummy1_out.dat"
#define AUTOTB_TVIN_dummy2_out "../tv/cdatafile/c.seq_align_multiple.autotvin_dummy2_out.dat"
#define AUTOTB_TVOUT_dummy2_out "../tv/cdatafile/c.seq_align_multiple.autotvout_dummy2_out.dat"
#define AUTOTB_TVIN_dummy3_out "../tv/cdatafile/c.seq_align_multiple.autotvin_dummy3_out.dat"
#define AUTOTB_TVOUT_dummy3_out "../tv/cdatafile/c.seq_align_multiple.autotvout_dummy3_out.dat"
#define AUTOTB_TVIN_dummy4_out "../tv/cdatafile/c.seq_align_multiple.autotvin_dummy4_out.dat"
#define AUTOTB_TVOUT_dummy4_out "../tv/cdatafile/c.seq_align_multiple.autotvout_dummy4_out.dat"
#define AUTOTB_TVIN_dummy5_out "../tv/cdatafile/c.seq_align_multiple.autotvin_dummy5_out.dat"
#define AUTOTB_TVOUT_dummy5_out "../tv/cdatafile/c.seq_align_multiple.autotvout_dummy5_out.dat"
#define AUTOTB_TVIN_dummy6_out "../tv/cdatafile/c.seq_align_multiple.autotvin_dummy6_out.dat"
#define AUTOTB_TVOUT_dummy6_out "../tv/cdatafile/c.seq_align_multiple.autotvout_dummy6_out.dat"
#define AUTOTB_TVIN_dummy7_out "../tv/cdatafile/c.seq_align_multiple.autotvin_dummy7_out.dat"
#define AUTOTB_TVOUT_dummy7_out "../tv/cdatafile/c.seq_align_multiple.autotvout_dummy7_out.dat"
#define AUTOTB_TVIN_dummy8_out "../tv/cdatafile/c.seq_align_multiple.autotvin_dummy8_out.dat"
#define AUTOTB_TVOUT_dummy8_out "../tv/cdatafile/c.seq_align_multiple.autotvout_dummy8_out.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_chunk1 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_chunk1.dat"
#define AUTOTB_TVOUT_PC_chunk2 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_chunk2.dat"
#define AUTOTB_TVOUT_PC_chunk3 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_chunk3.dat"
#define AUTOTB_TVOUT_PC_chunk4 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_chunk4.dat"
#define AUTOTB_TVOUT_PC_chunk5 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_chunk5.dat"
#define AUTOTB_TVOUT_PC_chunk6 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_chunk6.dat"
#define AUTOTB_TVOUT_PC_chunk7 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_chunk7.dat"
#define AUTOTB_TVOUT_PC_chunk8 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_chunk8.dat"
#define AUTOTB_TVOUT_PC_ref1 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_ref1.dat"
#define AUTOTB_TVOUT_PC_ref2 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_ref2.dat"
#define AUTOTB_TVOUT_PC_ref3 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_ref3.dat"
#define AUTOTB_TVOUT_PC_ref4 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_ref4.dat"
#define AUTOTB_TVOUT_PC_ref5 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_ref5.dat"
#define AUTOTB_TVOUT_PC_ref6 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_ref6.dat"
#define AUTOTB_TVOUT_PC_ref7 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_ref7.dat"
#define AUTOTB_TVOUT_PC_ref8 "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_ref8.dat"
#define AUTOTB_TVOUT_PC_dummy1_out "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_dummy1_out.dat"
#define AUTOTB_TVOUT_PC_dummy2_out "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_dummy2_out.dat"
#define AUTOTB_TVOUT_PC_dummy3_out "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_dummy3_out.dat"
#define AUTOTB_TVOUT_PC_dummy4_out "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_dummy4_out.dat"
#define AUTOTB_TVOUT_PC_dummy5_out "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_dummy5_out.dat"
#define AUTOTB_TVOUT_PC_dummy6_out "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_dummy6_out.dat"
#define AUTOTB_TVOUT_PC_dummy7_out "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_dummy7_out.dat"
#define AUTOTB_TVOUT_PC_dummy8_out "../tv/rtldatafile/rtl.seq_align_multiple.autotvout_dummy8_out.dat"


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
  chunk1_depth = 0;
  chunk2_depth = 0;
  chunk3_depth = 0;
  chunk4_depth = 0;
  chunk5_depth = 0;
  chunk6_depth = 0;
  chunk7_depth = 0;
  chunk8_depth = 0;
  ref1_depth = 0;
  ref2_depth = 0;
  ref3_depth = 0;
  ref4_depth = 0;
  ref5_depth = 0;
  ref6_depth = 0;
  ref7_depth = 0;
  ref8_depth = 0;
  dummy1_out_depth = 0;
  dummy2_out_depth = 0;
  dummy3_out_depth = 0;
  dummy4_out_depth = 0;
  dummy5_out_depth = 0;
  dummy6_out_depth = 0;
  dummy7_out_depth = 0;
  dummy8_out_depth = 0;
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
  total_list << "{chunk1 " << chunk1_depth << "}\n";
  total_list << "{chunk2 " << chunk2_depth << "}\n";
  total_list << "{chunk3 " << chunk3_depth << "}\n";
  total_list << "{chunk4 " << chunk4_depth << "}\n";
  total_list << "{chunk5 " << chunk5_depth << "}\n";
  total_list << "{chunk6 " << chunk6_depth << "}\n";
  total_list << "{chunk7 " << chunk7_depth << "}\n";
  total_list << "{chunk8 " << chunk8_depth << "}\n";
  total_list << "{ref1 " << ref1_depth << "}\n";
  total_list << "{ref2 " << ref2_depth << "}\n";
  total_list << "{ref3 " << ref3_depth << "}\n";
  total_list << "{ref4 " << ref4_depth << "}\n";
  total_list << "{ref5 " << ref5_depth << "}\n";
  total_list << "{ref6 " << ref6_depth << "}\n";
  total_list << "{ref7 " << ref7_depth << "}\n";
  total_list << "{ref8 " << ref8_depth << "}\n";
  total_list << "{dummy1_out " << dummy1_out_depth << "}\n";
  total_list << "{dummy2_out " << dummy2_out_depth << "}\n";
  total_list << "{dummy3_out " << dummy3_out_depth << "}\n";
  total_list << "{dummy4_out " << dummy4_out_depth << "}\n";
  total_list << "{dummy5_out " << dummy5_out_depth << "}\n";
  total_list << "{dummy6_out " << dummy6_out_depth << "}\n";
  total_list << "{dummy7_out " << dummy7_out_depth << "}\n";
  total_list << "{dummy8_out " << dummy8_out_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int chunk1_depth;
    int chunk2_depth;
    int chunk3_depth;
    int chunk4_depth;
    int chunk5_depth;
    int chunk6_depth;
    int chunk7_depth;
    int chunk8_depth;
    int ref1_depth;
    int ref2_depth;
    int ref3_depth;
    int ref4_depth;
    int ref5_depth;
    int ref6_depth;
    int ref7_depth;
    int ref8_depth;
    int dummy1_out_depth;
    int dummy2_out_depth;
    int dummy3_out_depth;
    int dummy4_out_depth;
    int dummy5_out_depth;
    int dummy6_out_depth;
    int dummy7_out_depth;
    int dummy8_out_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};


extern "C" void seq_align_multiple_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_seq_align_multiple_hw(volatile void * __xlx_apatb_param_chunk1, volatile void * __xlx_apatb_param_chunk2, volatile void * __xlx_apatb_param_chunk3, volatile void * __xlx_apatb_param_chunk4, volatile void * __xlx_apatb_param_chunk5, volatile void * __xlx_apatb_param_chunk6, volatile void * __xlx_apatb_param_chunk7, volatile void * __xlx_apatb_param_chunk8, volatile void * __xlx_apatb_param_ref1, volatile void * __xlx_apatb_param_ref2, volatile void * __xlx_apatb_param_ref3, volatile void * __xlx_apatb_param_ref4, volatile void * __xlx_apatb_param_ref5, volatile void * __xlx_apatb_param_ref6, volatile void * __xlx_apatb_param_ref7, volatile void * __xlx_apatb_param_ref8, volatile void * __xlx_apatb_param_dummy1_out, volatile void * __xlx_apatb_param_dummy2_out, volatile void * __xlx_apatb_param_dummy3_out, volatile void * __xlx_apatb_param_dummy4_out, volatile void * __xlx_apatb_param_dummy5_out, volatile void * __xlx_apatb_param_dummy6_out, volatile void * __xlx_apatb_param_dummy7_out, volatile void * __xlx_apatb_param_dummy8_out) {
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
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_dummy1_out);
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
          std::vector<sc_bv<10> > dummy1_out_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              dummy1_out_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "dummy1_out" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_dummy1_out)[0*2+0] = dummy1_out_pc_buffer[0].range(7, 0).to_int64();
((char*)__xlx_apatb_param_dummy1_out)[0*2+1] = dummy1_out_pc_buffer[0].range(9, 8).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_dummy2_out);
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
          std::vector<sc_bv<10> > dummy2_out_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              dummy2_out_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "dummy2_out" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_dummy2_out)[0*2+0] = dummy2_out_pc_buffer[0].range(7, 0).to_int64();
((char*)__xlx_apatb_param_dummy2_out)[0*2+1] = dummy2_out_pc_buffer[0].range(9, 8).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_dummy3_out);
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
          std::vector<sc_bv<10> > dummy3_out_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              dummy3_out_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "dummy3_out" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_dummy3_out)[0*2+0] = dummy3_out_pc_buffer[0].range(7, 0).to_int64();
((char*)__xlx_apatb_param_dummy3_out)[0*2+1] = dummy3_out_pc_buffer[0].range(9, 8).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_dummy4_out);
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
          std::vector<sc_bv<10> > dummy4_out_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              dummy4_out_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "dummy4_out" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_dummy4_out)[0*2+0] = dummy4_out_pc_buffer[0].range(7, 0).to_int64();
((char*)__xlx_apatb_param_dummy4_out)[0*2+1] = dummy4_out_pc_buffer[0].range(9, 8).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_dummy5_out);
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
          std::vector<sc_bv<10> > dummy5_out_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              dummy5_out_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "dummy5_out" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_dummy5_out)[0*2+0] = dummy5_out_pc_buffer[0].range(7, 0).to_int64();
((char*)__xlx_apatb_param_dummy5_out)[0*2+1] = dummy5_out_pc_buffer[0].range(9, 8).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_dummy6_out);
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
          std::vector<sc_bv<10> > dummy6_out_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              dummy6_out_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "dummy6_out" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_dummy6_out)[0*2+0] = dummy6_out_pc_buffer[0].range(7, 0).to_int64();
((char*)__xlx_apatb_param_dummy6_out)[0*2+1] = dummy6_out_pc_buffer[0].range(9, 8).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_dummy7_out);
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
          std::vector<sc_bv<10> > dummy7_out_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              dummy7_out_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "dummy7_out" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_dummy7_out)[0*2+0] = dummy7_out_pc_buffer[0].range(7, 0).to_int64();
((char*)__xlx_apatb_param_dummy7_out)[0*2+1] = dummy7_out_pc_buffer[0].range(9, 8).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_dummy8_out);
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
          std::vector<sc_bv<10> > dummy8_out_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token);
  
            // push token into output port buffer
            if (AESL_token != "") {
              dummy8_out_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "dummy8_out" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_dummy8_out)[0*2+0] = dummy8_out_pc_buffer[0].range(7, 0).to_int64();
((char*)__xlx_apatb_param_dummy8_out)[0*2+1] = dummy8_out_pc_buffer[0].range(9, 8).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_chunk1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_chunk1, 'b');
transaction<2> tr(1024);
  __xlx_offset_byte_param_chunk1 = 0*1;
  if (__xlx_apatb_param_chunk1) {
tr.import<1>((char*)__xlx_apatb_param_chunk1, 1024, 0);
  }
aesl_fh.write(AUTOTB_TVIN_chunk1, tr.p, tr.tbytes);
}

  tcl_file.set_num(1024, &tcl_file.chunk1_depth);
#else
// print chunk1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_chunk1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_chunk1 = 0*1;
if (__xlx_apatb_param_chunk1) {
for (size_t i = 0; i < 1024; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_chunk1 + i * 1;
std::string s = formatData(pos, 2);
aesl_fh.write(AUTOTB_TVIN_chunk1, s);
}
}
}

  tcl_file.set_num(1024, &tcl_file.chunk1_depth);
aesl_fh.write(AUTOTB_TVIN_chunk1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_chunk2 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_chunk2, 'b');
transaction<2> tr(1024);
  __xlx_offset_byte_param_chunk2 = 0*1;
  if (__xlx_apatb_param_chunk2) {
tr.import<1>((char*)__xlx_apatb_param_chunk2, 1024, 0);
  }
aesl_fh.write(AUTOTB_TVIN_chunk2, tr.p, tr.tbytes);
}

  tcl_file.set_num(1024, &tcl_file.chunk2_depth);
#else
// print chunk2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_chunk2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_chunk2 = 0*1;
if (__xlx_apatb_param_chunk2) {
for (size_t i = 0; i < 1024; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_chunk2 + i * 1;
std::string s = formatData(pos, 2);
aesl_fh.write(AUTOTB_TVIN_chunk2, s);
}
}
}

  tcl_file.set_num(1024, &tcl_file.chunk2_depth);
aesl_fh.write(AUTOTB_TVIN_chunk2, end_str());
}

#endif
unsigned __xlx_offset_byte_param_chunk3 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_chunk3, 'b');
transaction<2> tr(1024);
  __xlx_offset_byte_param_chunk3 = 0*1;
  if (__xlx_apatb_param_chunk3) {
tr.import<1>((char*)__xlx_apatb_param_chunk3, 1024, 0);
  }
aesl_fh.write(AUTOTB_TVIN_chunk3, tr.p, tr.tbytes);
}

  tcl_file.set_num(1024, &tcl_file.chunk3_depth);
#else
// print chunk3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_chunk3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_chunk3 = 0*1;
if (__xlx_apatb_param_chunk3) {
for (size_t i = 0; i < 1024; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_chunk3 + i * 1;
std::string s = formatData(pos, 2);
aesl_fh.write(AUTOTB_TVIN_chunk3, s);
}
}
}

  tcl_file.set_num(1024, &tcl_file.chunk3_depth);
aesl_fh.write(AUTOTB_TVIN_chunk3, end_str());
}

#endif
unsigned __xlx_offset_byte_param_chunk4 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_chunk4, 'b');
transaction<2> tr(1024);
  __xlx_offset_byte_param_chunk4 = 0*1;
  if (__xlx_apatb_param_chunk4) {
tr.import<1>((char*)__xlx_apatb_param_chunk4, 1024, 0);
  }
aesl_fh.write(AUTOTB_TVIN_chunk4, tr.p, tr.tbytes);
}

  tcl_file.set_num(1024, &tcl_file.chunk4_depth);
#else
// print chunk4 Transactions
{
aesl_fh.write(AUTOTB_TVIN_chunk4, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_chunk4 = 0*1;
if (__xlx_apatb_param_chunk4) {
for (size_t i = 0; i < 1024; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_chunk4 + i * 1;
std::string s = formatData(pos, 2);
aesl_fh.write(AUTOTB_TVIN_chunk4, s);
}
}
}

  tcl_file.set_num(1024, &tcl_file.chunk4_depth);
aesl_fh.write(AUTOTB_TVIN_chunk4, end_str());
}

#endif
unsigned __xlx_offset_byte_param_chunk5 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_chunk5, 'b');
transaction<2> tr(1024);
  __xlx_offset_byte_param_chunk5 = 0*1;
  if (__xlx_apatb_param_chunk5) {
tr.import<1>((char*)__xlx_apatb_param_chunk5, 1024, 0);
  }
aesl_fh.write(AUTOTB_TVIN_chunk5, tr.p, tr.tbytes);
}

  tcl_file.set_num(1024, &tcl_file.chunk5_depth);
#else
// print chunk5 Transactions
{
aesl_fh.write(AUTOTB_TVIN_chunk5, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_chunk5 = 0*1;
if (__xlx_apatb_param_chunk5) {
for (size_t i = 0; i < 1024; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_chunk5 + i * 1;
std::string s = formatData(pos, 2);
aesl_fh.write(AUTOTB_TVIN_chunk5, s);
}
}
}

  tcl_file.set_num(1024, &tcl_file.chunk5_depth);
aesl_fh.write(AUTOTB_TVIN_chunk5, end_str());
}

#endif
unsigned __xlx_offset_byte_param_chunk6 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_chunk6, 'b');
transaction<2> tr(1024);
  __xlx_offset_byte_param_chunk6 = 0*1;
  if (__xlx_apatb_param_chunk6) {
tr.import<1>((char*)__xlx_apatb_param_chunk6, 1024, 0);
  }
aesl_fh.write(AUTOTB_TVIN_chunk6, tr.p, tr.tbytes);
}

  tcl_file.set_num(1024, &tcl_file.chunk6_depth);
#else
// print chunk6 Transactions
{
aesl_fh.write(AUTOTB_TVIN_chunk6, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_chunk6 = 0*1;
if (__xlx_apatb_param_chunk6) {
for (size_t i = 0; i < 1024; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_chunk6 + i * 1;
std::string s = formatData(pos, 2);
aesl_fh.write(AUTOTB_TVIN_chunk6, s);
}
}
}

  tcl_file.set_num(1024, &tcl_file.chunk6_depth);
aesl_fh.write(AUTOTB_TVIN_chunk6, end_str());
}

#endif
unsigned __xlx_offset_byte_param_chunk7 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_chunk7, 'b');
transaction<2> tr(1024);
  __xlx_offset_byte_param_chunk7 = 0*1;
  if (__xlx_apatb_param_chunk7) {
tr.import<1>((char*)__xlx_apatb_param_chunk7, 1024, 0);
  }
aesl_fh.write(AUTOTB_TVIN_chunk7, tr.p, tr.tbytes);
}

  tcl_file.set_num(1024, &tcl_file.chunk7_depth);
#else
// print chunk7 Transactions
{
aesl_fh.write(AUTOTB_TVIN_chunk7, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_chunk7 = 0*1;
if (__xlx_apatb_param_chunk7) {
for (size_t i = 0; i < 1024; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_chunk7 + i * 1;
std::string s = formatData(pos, 2);
aesl_fh.write(AUTOTB_TVIN_chunk7, s);
}
}
}

  tcl_file.set_num(1024, &tcl_file.chunk7_depth);
aesl_fh.write(AUTOTB_TVIN_chunk7, end_str());
}

#endif
unsigned __xlx_offset_byte_param_chunk8 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_chunk8, 'b');
transaction<2> tr(1024);
  __xlx_offset_byte_param_chunk8 = 0*1;
  if (__xlx_apatb_param_chunk8) {
tr.import<1>((char*)__xlx_apatb_param_chunk8, 1024, 0);
  }
aesl_fh.write(AUTOTB_TVIN_chunk8, tr.p, tr.tbytes);
}

  tcl_file.set_num(1024, &tcl_file.chunk8_depth);
#else
// print chunk8 Transactions
{
aesl_fh.write(AUTOTB_TVIN_chunk8, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_chunk8 = 0*1;
if (__xlx_apatb_param_chunk8) {
for (size_t i = 0; i < 1024; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_chunk8 + i * 1;
std::string s = formatData(pos, 2);
aesl_fh.write(AUTOTB_TVIN_chunk8, s);
}
}
}

  tcl_file.set_num(1024, &tcl_file.chunk8_depth);
aesl_fh.write(AUTOTB_TVIN_chunk8, end_str());
}

#endif
unsigned __xlx_offset_byte_param_ref1 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_ref1, 'b');
transaction<2> tr(1024);
  __xlx_offset_byte_param_ref1 = 0*1;
  if (__xlx_apatb_param_ref1) {
tr.import<1>((char*)__xlx_apatb_param_ref1, 1024, 0);
  }
aesl_fh.write(AUTOTB_TVIN_ref1, tr.p, tr.tbytes);
}

  tcl_file.set_num(1024, &tcl_file.ref1_depth);
#else
// print ref1 Transactions
{
aesl_fh.write(AUTOTB_TVIN_ref1, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_ref1 = 0*1;
if (__xlx_apatb_param_ref1) {
for (size_t i = 0; i < 1024; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_ref1 + i * 1;
std::string s = formatData(pos, 2);
aesl_fh.write(AUTOTB_TVIN_ref1, s);
}
}
}

  tcl_file.set_num(1024, &tcl_file.ref1_depth);
aesl_fh.write(AUTOTB_TVIN_ref1, end_str());
}

#endif
unsigned __xlx_offset_byte_param_ref2 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_ref2, 'b');
transaction<2> tr(1024);
  __xlx_offset_byte_param_ref2 = 0*1;
  if (__xlx_apatb_param_ref2) {
tr.import<1>((char*)__xlx_apatb_param_ref2, 1024, 0);
  }
aesl_fh.write(AUTOTB_TVIN_ref2, tr.p, tr.tbytes);
}

  tcl_file.set_num(1024, &tcl_file.ref2_depth);
#else
// print ref2 Transactions
{
aesl_fh.write(AUTOTB_TVIN_ref2, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_ref2 = 0*1;
if (__xlx_apatb_param_ref2) {
for (size_t i = 0; i < 1024; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_ref2 + i * 1;
std::string s = formatData(pos, 2);
aesl_fh.write(AUTOTB_TVIN_ref2, s);
}
}
}

  tcl_file.set_num(1024, &tcl_file.ref2_depth);
aesl_fh.write(AUTOTB_TVIN_ref2, end_str());
}

#endif
unsigned __xlx_offset_byte_param_ref3 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_ref3, 'b');
transaction<2> tr(1024);
  __xlx_offset_byte_param_ref3 = 0*1;
  if (__xlx_apatb_param_ref3) {
tr.import<1>((char*)__xlx_apatb_param_ref3, 1024, 0);
  }
aesl_fh.write(AUTOTB_TVIN_ref3, tr.p, tr.tbytes);
}

  tcl_file.set_num(1024, &tcl_file.ref3_depth);
#else
// print ref3 Transactions
{
aesl_fh.write(AUTOTB_TVIN_ref3, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_ref3 = 0*1;
if (__xlx_apatb_param_ref3) {
for (size_t i = 0; i < 1024; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_ref3 + i * 1;
std::string s = formatData(pos, 2);
aesl_fh.write(AUTOTB_TVIN_ref3, s);
}
}
}

  tcl_file.set_num(1024, &tcl_file.ref3_depth);
aesl_fh.write(AUTOTB_TVIN_ref3, end_str());
}

#endif
unsigned __xlx_offset_byte_param_ref4 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_ref4, 'b');
transaction<2> tr(1024);
  __xlx_offset_byte_param_ref4 = 0*1;
  if (__xlx_apatb_param_ref4) {
tr.import<1>((char*)__xlx_apatb_param_ref4, 1024, 0);
  }
aesl_fh.write(AUTOTB_TVIN_ref4, tr.p, tr.tbytes);
}

  tcl_file.set_num(1024, &tcl_file.ref4_depth);
#else
// print ref4 Transactions
{
aesl_fh.write(AUTOTB_TVIN_ref4, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_ref4 = 0*1;
if (__xlx_apatb_param_ref4) {
for (size_t i = 0; i < 1024; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_ref4 + i * 1;
std::string s = formatData(pos, 2);
aesl_fh.write(AUTOTB_TVIN_ref4, s);
}
}
}

  tcl_file.set_num(1024, &tcl_file.ref4_depth);
aesl_fh.write(AUTOTB_TVIN_ref4, end_str());
}

#endif
unsigned __xlx_offset_byte_param_ref5 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_ref5, 'b');
transaction<2> tr(1024);
  __xlx_offset_byte_param_ref5 = 0*1;
  if (__xlx_apatb_param_ref5) {
tr.import<1>((char*)__xlx_apatb_param_ref5, 1024, 0);
  }
aesl_fh.write(AUTOTB_TVIN_ref5, tr.p, tr.tbytes);
}

  tcl_file.set_num(1024, &tcl_file.ref5_depth);
#else
// print ref5 Transactions
{
aesl_fh.write(AUTOTB_TVIN_ref5, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_ref5 = 0*1;
if (__xlx_apatb_param_ref5) {
for (size_t i = 0; i < 1024; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_ref5 + i * 1;
std::string s = formatData(pos, 2);
aesl_fh.write(AUTOTB_TVIN_ref5, s);
}
}
}

  tcl_file.set_num(1024, &tcl_file.ref5_depth);
aesl_fh.write(AUTOTB_TVIN_ref5, end_str());
}

#endif
unsigned __xlx_offset_byte_param_ref6 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_ref6, 'b');
transaction<2> tr(1024);
  __xlx_offset_byte_param_ref6 = 0*1;
  if (__xlx_apatb_param_ref6) {
tr.import<1>((char*)__xlx_apatb_param_ref6, 1024, 0);
  }
aesl_fh.write(AUTOTB_TVIN_ref6, tr.p, tr.tbytes);
}

  tcl_file.set_num(1024, &tcl_file.ref6_depth);
#else
// print ref6 Transactions
{
aesl_fh.write(AUTOTB_TVIN_ref6, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_ref6 = 0*1;
if (__xlx_apatb_param_ref6) {
for (size_t i = 0; i < 1024; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_ref6 + i * 1;
std::string s = formatData(pos, 2);
aesl_fh.write(AUTOTB_TVIN_ref6, s);
}
}
}

  tcl_file.set_num(1024, &tcl_file.ref6_depth);
aesl_fh.write(AUTOTB_TVIN_ref6, end_str());
}

#endif
unsigned __xlx_offset_byte_param_ref7 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_ref7, 'b');
transaction<2> tr(1024);
  __xlx_offset_byte_param_ref7 = 0*1;
  if (__xlx_apatb_param_ref7) {
tr.import<1>((char*)__xlx_apatb_param_ref7, 1024, 0);
  }
aesl_fh.write(AUTOTB_TVIN_ref7, tr.p, tr.tbytes);
}

  tcl_file.set_num(1024, &tcl_file.ref7_depth);
#else
// print ref7 Transactions
{
aesl_fh.write(AUTOTB_TVIN_ref7, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_ref7 = 0*1;
if (__xlx_apatb_param_ref7) {
for (size_t i = 0; i < 1024; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_ref7 + i * 1;
std::string s = formatData(pos, 2);
aesl_fh.write(AUTOTB_TVIN_ref7, s);
}
}
}

  tcl_file.set_num(1024, &tcl_file.ref7_depth);
aesl_fh.write(AUTOTB_TVIN_ref7, end_str());
}

#endif
unsigned __xlx_offset_byte_param_ref8 = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_ref8, 'b');
transaction<2> tr(1024);
  __xlx_offset_byte_param_ref8 = 0*1;
  if (__xlx_apatb_param_ref8) {
tr.import<1>((char*)__xlx_apatb_param_ref8, 1024, 0);
  }
aesl_fh.write(AUTOTB_TVIN_ref8, tr.p, tr.tbytes);
}

  tcl_file.set_num(1024, &tcl_file.ref8_depth);
#else
// print ref8 Transactions
{
aesl_fh.write(AUTOTB_TVIN_ref8, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_ref8 = 0*1;
if (__xlx_apatb_param_ref8) {
for (size_t i = 0; i < 1024; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_ref8 + i * 1;
std::string s = formatData(pos, 2);
aesl_fh.write(AUTOTB_TVIN_ref8, s);
}
}
}

  tcl_file.set_num(1024, &tcl_file.ref8_depth);
aesl_fh.write(AUTOTB_TVIN_ref8, end_str());
}

#endif
// print dummy1_out Transactions
{
aesl_fh.write(AUTOTB_TVIN_dummy1_out, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_dummy1_out;
aesl_fh.write(AUTOTB_TVIN_dummy1_out, formatData(pos, 10));
}
  tcl_file.set_num(1, &tcl_file.dummy1_out_depth);
aesl_fh.write(AUTOTB_TVIN_dummy1_out, end_str());
}

// print dummy2_out Transactions
{
aesl_fh.write(AUTOTB_TVIN_dummy2_out, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_dummy2_out;
aesl_fh.write(AUTOTB_TVIN_dummy2_out, formatData(pos, 10));
}
  tcl_file.set_num(1, &tcl_file.dummy2_out_depth);
aesl_fh.write(AUTOTB_TVIN_dummy2_out, end_str());
}

// print dummy3_out Transactions
{
aesl_fh.write(AUTOTB_TVIN_dummy3_out, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_dummy3_out;
aesl_fh.write(AUTOTB_TVIN_dummy3_out, formatData(pos, 10));
}
  tcl_file.set_num(1, &tcl_file.dummy3_out_depth);
aesl_fh.write(AUTOTB_TVIN_dummy3_out, end_str());
}

// print dummy4_out Transactions
{
aesl_fh.write(AUTOTB_TVIN_dummy4_out, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_dummy4_out;
aesl_fh.write(AUTOTB_TVIN_dummy4_out, formatData(pos, 10));
}
  tcl_file.set_num(1, &tcl_file.dummy4_out_depth);
aesl_fh.write(AUTOTB_TVIN_dummy4_out, end_str());
}

// print dummy5_out Transactions
{
aesl_fh.write(AUTOTB_TVIN_dummy5_out, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_dummy5_out;
aesl_fh.write(AUTOTB_TVIN_dummy5_out, formatData(pos, 10));
}
  tcl_file.set_num(1, &tcl_file.dummy5_out_depth);
aesl_fh.write(AUTOTB_TVIN_dummy5_out, end_str());
}

// print dummy6_out Transactions
{
aesl_fh.write(AUTOTB_TVIN_dummy6_out, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_dummy6_out;
aesl_fh.write(AUTOTB_TVIN_dummy6_out, formatData(pos, 10));
}
  tcl_file.set_num(1, &tcl_file.dummy6_out_depth);
aesl_fh.write(AUTOTB_TVIN_dummy6_out, end_str());
}

// print dummy7_out Transactions
{
aesl_fh.write(AUTOTB_TVIN_dummy7_out, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_dummy7_out;
aesl_fh.write(AUTOTB_TVIN_dummy7_out, formatData(pos, 10));
}
  tcl_file.set_num(1, &tcl_file.dummy7_out_depth);
aesl_fh.write(AUTOTB_TVIN_dummy7_out, end_str());
}

// print dummy8_out Transactions
{
aesl_fh.write(AUTOTB_TVIN_dummy8_out, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_dummy8_out;
aesl_fh.write(AUTOTB_TVIN_dummy8_out, formatData(pos, 10));
}
  tcl_file.set_num(1, &tcl_file.dummy8_out_depth);
aesl_fh.write(AUTOTB_TVIN_dummy8_out, end_str());
}

CodeState = CALL_C_DUT;
seq_align_multiple_hw_stub_wrapper(__xlx_apatb_param_chunk1, __xlx_apatb_param_chunk2, __xlx_apatb_param_chunk3, __xlx_apatb_param_chunk4, __xlx_apatb_param_chunk5, __xlx_apatb_param_chunk6, __xlx_apatb_param_chunk7, __xlx_apatb_param_chunk8, __xlx_apatb_param_ref1, __xlx_apatb_param_ref2, __xlx_apatb_param_ref3, __xlx_apatb_param_ref4, __xlx_apatb_param_ref5, __xlx_apatb_param_ref6, __xlx_apatb_param_ref7, __xlx_apatb_param_ref8, __xlx_apatb_param_dummy1_out, __xlx_apatb_param_dummy2_out, __xlx_apatb_param_dummy3_out, __xlx_apatb_param_dummy4_out, __xlx_apatb_param_dummy5_out, __xlx_apatb_param_dummy6_out, __xlx_apatb_param_dummy7_out, __xlx_apatb_param_dummy8_out);
CodeState = DUMP_OUTPUTS;
// print dummy1_out Transactions
{
aesl_fh.write(AUTOTB_TVOUT_dummy1_out, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_dummy1_out;
aesl_fh.write(AUTOTB_TVOUT_dummy1_out, formatData(pos, 10));
}
  tcl_file.set_num(1, &tcl_file.dummy1_out_depth);
aesl_fh.write(AUTOTB_TVOUT_dummy1_out, end_str());
}

// print dummy2_out Transactions
{
aesl_fh.write(AUTOTB_TVOUT_dummy2_out, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_dummy2_out;
aesl_fh.write(AUTOTB_TVOUT_dummy2_out, formatData(pos, 10));
}
  tcl_file.set_num(1, &tcl_file.dummy2_out_depth);
aesl_fh.write(AUTOTB_TVOUT_dummy2_out, end_str());
}

// print dummy3_out Transactions
{
aesl_fh.write(AUTOTB_TVOUT_dummy3_out, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_dummy3_out;
aesl_fh.write(AUTOTB_TVOUT_dummy3_out, formatData(pos, 10));
}
  tcl_file.set_num(1, &tcl_file.dummy3_out_depth);
aesl_fh.write(AUTOTB_TVOUT_dummy3_out, end_str());
}

// print dummy4_out Transactions
{
aesl_fh.write(AUTOTB_TVOUT_dummy4_out, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_dummy4_out;
aesl_fh.write(AUTOTB_TVOUT_dummy4_out, formatData(pos, 10));
}
  tcl_file.set_num(1, &tcl_file.dummy4_out_depth);
aesl_fh.write(AUTOTB_TVOUT_dummy4_out, end_str());
}

// print dummy5_out Transactions
{
aesl_fh.write(AUTOTB_TVOUT_dummy5_out, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_dummy5_out;
aesl_fh.write(AUTOTB_TVOUT_dummy5_out, formatData(pos, 10));
}
  tcl_file.set_num(1, &tcl_file.dummy5_out_depth);
aesl_fh.write(AUTOTB_TVOUT_dummy5_out, end_str());
}

// print dummy6_out Transactions
{
aesl_fh.write(AUTOTB_TVOUT_dummy6_out, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_dummy6_out;
aesl_fh.write(AUTOTB_TVOUT_dummy6_out, formatData(pos, 10));
}
  tcl_file.set_num(1, &tcl_file.dummy6_out_depth);
aesl_fh.write(AUTOTB_TVOUT_dummy6_out, end_str());
}

// print dummy7_out Transactions
{
aesl_fh.write(AUTOTB_TVOUT_dummy7_out, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_dummy7_out;
aesl_fh.write(AUTOTB_TVOUT_dummy7_out, formatData(pos, 10));
}
  tcl_file.set_num(1, &tcl_file.dummy7_out_depth);
aesl_fh.write(AUTOTB_TVOUT_dummy7_out, end_str());
}

// print dummy8_out Transactions
{
aesl_fh.write(AUTOTB_TVOUT_dummy8_out, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)__xlx_apatb_param_dummy8_out;
aesl_fh.write(AUTOTB_TVOUT_dummy8_out, formatData(pos, 10));
}
  tcl_file.set_num(1, &tcl_file.dummy8_out_depth);
aesl_fh.write(AUTOTB_TVOUT_dummy8_out, end_str());
}

CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
