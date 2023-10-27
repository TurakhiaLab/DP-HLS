#include <systemc>
#include <list>
#include <map>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;

namespace bcsim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(1<<10)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_query_string_comp_0_cap_bc;
static AESL_RUNTIME_BC __xlx_query_string_comp_0_V_size_Reader("../tv/stream_size/stream_size_in_query_string_comp_0.dat");
unsigned int ap_apatb_query_string_comp_1_cap_bc;
static AESL_RUNTIME_BC __xlx_query_string_comp_1_V_size_Reader("../tv/stream_size/stream_size_out_query_string_comp_1.dat");
unsigned int ap_apatb_query_string_comp_2_cap_bc;
static AESL_RUNTIME_BC __xlx_query_string_comp_2_V_size_Reader("../tv/stream_size/stream_size_out_query_string_comp_2.dat");
unsigned int ap_apatb_query_string_comp_3_cap_bc;
static AESL_RUNTIME_BC __xlx_query_string_comp_3_V_size_Reader("../tv/stream_size/stream_size_out_query_string_comp_3.dat");
unsigned int ap_apatb_query_string_comp_4_cap_bc;
static AESL_RUNTIME_BC __xlx_query_string_comp_4_V_size_Reader("../tv/stream_size/stream_size_out_query_string_comp_4.dat");
unsigned int ap_apatb_query_string_comp_5_cap_bc;
static AESL_RUNTIME_BC __xlx_query_string_comp_5_V_size_Reader("../tv/stream_size/stream_size_out_query_string_comp_5.dat");
unsigned int ap_apatb_query_string_comp_6_cap_bc;
static AESL_RUNTIME_BC __xlx_query_string_comp_6_V_size_Reader("../tv/stream_size/stream_size_out_query_string_comp_6.dat");
unsigned int ap_apatb_query_string_comp_7_cap_bc;
static AESL_RUNTIME_BC __xlx_query_string_comp_7_V_size_Reader("../tv/stream_size/stream_size_out_query_string_comp_7.dat");
unsigned int ap_apatb_reference_string_comp_0_cap_bc;
static AESL_RUNTIME_BC __xlx_reference_string_comp_0_V_size_Reader("../tv/stream_size/stream_size_in_reference_string_comp_0.dat");
unsigned int ap_apatb_reference_string_comp_1_cap_bc;
static AESL_RUNTIME_BC __xlx_reference_string_comp_1_V_size_Reader("../tv/stream_size/stream_size_out_reference_string_comp_1.dat");
unsigned int ap_apatb_reference_string_comp_2_cap_bc;
static AESL_RUNTIME_BC __xlx_reference_string_comp_2_V_size_Reader("../tv/stream_size/stream_size_out_reference_string_comp_2.dat");
unsigned int ap_apatb_reference_string_comp_3_cap_bc;
static AESL_RUNTIME_BC __xlx_reference_string_comp_3_V_size_Reader("../tv/stream_size/stream_size_out_reference_string_comp_3.dat");
unsigned int ap_apatb_reference_string_comp_4_cap_bc;
static AESL_RUNTIME_BC __xlx_reference_string_comp_4_V_size_Reader("../tv/stream_size/stream_size_out_reference_string_comp_4.dat");
unsigned int ap_apatb_reference_string_comp_5_cap_bc;
static AESL_RUNTIME_BC __xlx_reference_string_comp_5_V_size_Reader("../tv/stream_size/stream_size_out_reference_string_comp_5.dat");
unsigned int ap_apatb_reference_string_comp_6_cap_bc;
static AESL_RUNTIME_BC __xlx_reference_string_comp_6_V_size_Reader("../tv/stream_size/stream_size_out_reference_string_comp_6.dat");
unsigned int ap_apatb_reference_string_comp_7_cap_bc;
static AESL_RUNTIME_BC __xlx_reference_string_comp_7_V_size_Reader("../tv/stream_size/stream_size_out_reference_string_comp_7.dat");
struct __cosim_s1__ { char data[1]; };
extern "C" void seq_align_multiple(int*, __cosim_s1__*, __cosim_s1__*, __cosim_s1__*, __cosim_s1__*, __cosim_s1__*, __cosim_s1__*, __cosim_s1__*, __cosim_s1__*, __cosim_s1__*, __cosim_s1__*, __cosim_s1__*, __cosim_s1__*, __cosim_s1__*, __cosim_s1__*, __cosim_s1__*, __cosim_s1__*, int);
extern "C" void apatb_seq_align_multiple_hw(volatile void * __xlx_apatb_param_query_string_comp_0, volatile void * __xlx_apatb_param_query_string_comp_1, volatile void * __xlx_apatb_param_query_string_comp_2, volatile void * __xlx_apatb_param_query_string_comp_3, volatile void * __xlx_apatb_param_query_string_comp_4, volatile void * __xlx_apatb_param_query_string_comp_5, volatile void * __xlx_apatb_param_query_string_comp_6, volatile void * __xlx_apatb_param_query_string_comp_7, volatile void * __xlx_apatb_param_reference_string_comp_0, volatile void * __xlx_apatb_param_reference_string_comp_1, volatile void * __xlx_apatb_param_reference_string_comp_2, volatile void * __xlx_apatb_param_reference_string_comp_3, volatile void * __xlx_apatb_param_reference_string_comp_4, volatile void * __xlx_apatb_param_reference_string_comp_5, volatile void * __xlx_apatb_param_reference_string_comp_6, volatile void * __xlx_apatb_param_reference_string_comp_7, volatile void * __xlx_apatb_param_dummies) {
  // Collect __xlx_dummies__tmp_vec
  vector<sc_bv<32> >__xlx_dummies__tmp_vec;
  for (int j = 0, e = 1; j != e; ++j) {
    sc_bv<32> _xlx_tmp_sc;
    _xlx_tmp_sc.range(7, 0) = ((char*)__xlx_apatb_param_dummies)[j*4+0];
    _xlx_tmp_sc.range(15, 8) = ((char*)__xlx_apatb_param_dummies)[j*4+1];
    _xlx_tmp_sc.range(23, 16) = ((char*)__xlx_apatb_param_dummies)[j*4+2];
    _xlx_tmp_sc.range(31, 24) = ((char*)__xlx_apatb_param_dummies)[j*4+3];
    __xlx_dummies__tmp_vec.push_back(_xlx_tmp_sc);
  }
  int __xlx_size_param_dummies = 1;
  int __xlx_offset_param_dummies = 0;
  int __xlx_offset_byte_param_dummies = 0*4;
  int* __xlx_dummies__input_buffer= new int[__xlx_dummies__tmp_vec.size()];
  for (int i = 0; i < __xlx_dummies__tmp_vec.size(); ++i) {
    __xlx_dummies__input_buffer[i] = __xlx_dummies__tmp_vec[i].range(31, 0).to_uint64();
  }
auto* squery_string_comp_0 = bcsim::createStream((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_0);
auto* squery_string_comp_1 = bcsim::createStream((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_1);
auto* squery_string_comp_2 = bcsim::createStream((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_2);
auto* squery_string_comp_3 = bcsim::createStream((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_3);
auto* squery_string_comp_4 = bcsim::createStream((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_4);
auto* squery_string_comp_5 = bcsim::createStream((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_5);
auto* squery_string_comp_6 = bcsim::createStream((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_6);
auto* squery_string_comp_7 = bcsim::createStream((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_7);
auto* sreference_string_comp_0 = bcsim::createStream((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_0);
auto* sreference_string_comp_1 = bcsim::createStream((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_1);
auto* sreference_string_comp_2 = bcsim::createStream((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_2);
auto* sreference_string_comp_3 = bcsim::createStream((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_3);
auto* sreference_string_comp_4 = bcsim::createStream((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_4);
auto* sreference_string_comp_5 = bcsim::createStream((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_5);
auto* sreference_string_comp_6 = bcsim::createStream((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_6);
auto* sreference_string_comp_7 = bcsim::createStream((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_7);
  // DUT call
  seq_align_multiple(__xlx_dummies__input_buffer, squery_string_comp_0->data<__cosim_s1__>(), squery_string_comp_1->data<__cosim_s1__>(), squery_string_comp_2->data<__cosim_s1__>(), squery_string_comp_3->data<__cosim_s1__>(), squery_string_comp_4->data<__cosim_s1__>(), squery_string_comp_5->data<__cosim_s1__>(), squery_string_comp_6->data<__cosim_s1__>(), squery_string_comp_7->data<__cosim_s1__>(), sreference_string_comp_0->data<__cosim_s1__>(), sreference_string_comp_1->data<__cosim_s1__>(), sreference_string_comp_2->data<__cosim_s1__>(), sreference_string_comp_3->data<__cosim_s1__>(), sreference_string_comp_4->data<__cosim_s1__>(), sreference_string_comp_5->data<__cosim_s1__>(), sreference_string_comp_6->data<__cosim_s1__>(), sreference_string_comp_7->data<__cosim_s1__>(), __xlx_offset_byte_param_dummies);
// print __xlx_apatb_param_dummies
  sc_bv<32>*__xlx_dummies_output_buffer = new sc_bv<32>[__xlx_size_param_dummies];
  for (int i = 0; i < __xlx_size_param_dummies; ++i) {
    __xlx_dummies_output_buffer[i] = __xlx_dummies__input_buffer[i+__xlx_offset_param_dummies];
  }
  for (int i = 0; i < __xlx_size_param_dummies; ++i) {
    ((char*)__xlx_apatb_param_dummies)[i*4+0] = __xlx_dummies_output_buffer[i].range(7, 0).to_uint();
    ((char*)__xlx_apatb_param_dummies)[i*4+1] = __xlx_dummies_output_buffer[i].range(15, 8).to_uint();
    ((char*)__xlx_apatb_param_dummies)[i*4+2] = __xlx_dummies_output_buffer[i].range(23, 16).to_uint();
    ((char*)__xlx_apatb_param_dummies)[i*4+3] = __xlx_dummies_output_buffer[i].range(31, 24).to_uint();
  }
squery_string_comp_0->transfer((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_0);
squery_string_comp_1->transfer((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_1);
squery_string_comp_2->transfer((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_2);
squery_string_comp_3->transfer((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_3);
squery_string_comp_4->transfer((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_4);
squery_string_comp_5->transfer((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_5);
squery_string_comp_6->transfer((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_6);
squery_string_comp_7->transfer((hls::stream<__cosim_s1__>*)__xlx_apatb_param_query_string_comp_7);
sreference_string_comp_0->transfer((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_0);
sreference_string_comp_1->transfer((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_1);
sreference_string_comp_2->transfer((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_2);
sreference_string_comp_3->transfer((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_3);
sreference_string_comp_4->transfer((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_4);
sreference_string_comp_5->transfer((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_5);
sreference_string_comp_6->transfer((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_6);
sreference_string_comp_7->transfer((hls::stream<__cosim_s1__>*)__xlx_apatb_param_reference_string_comp_7);
}
