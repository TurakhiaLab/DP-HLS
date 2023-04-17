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
extern "C" void seq_align_multiple(char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, char*, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);
extern "C" void apatb_seq_align_multiple_hw(volatile void * __xlx_apatb_param_chunk1, volatile void * __xlx_apatb_param_chunk2, volatile void * __xlx_apatb_param_chunk3, volatile void * __xlx_apatb_param_chunk4, volatile void * __xlx_apatb_param_chunk5, volatile void * __xlx_apatb_param_chunk6, volatile void * __xlx_apatb_param_chunk7, volatile void * __xlx_apatb_param_chunk8, volatile void * __xlx_apatb_param_ref1, volatile void * __xlx_apatb_param_ref2, volatile void * __xlx_apatb_param_ref3, volatile void * __xlx_apatb_param_ref4, volatile void * __xlx_apatb_param_ref5, volatile void * __xlx_apatb_param_ref6, volatile void * __xlx_apatb_param_ref7, volatile void * __xlx_apatb_param_ref8, volatile void * __xlx_apatb_param_dummy1_out, volatile void * __xlx_apatb_param_dummy2_out, volatile void * __xlx_apatb_param_dummy3_out, volatile void * __xlx_apatb_param_dummy4_out, volatile void * __xlx_apatb_param_dummy5_out, volatile void * __xlx_apatb_param_dummy6_out, volatile void * __xlx_apatb_param_dummy7_out, volatile void * __xlx_apatb_param_dummy8_out) {
  // Collect __xlx_chunk1__tmp_vec
  vector<sc_bv<2> >__xlx_chunk1__tmp_vec;
  for (int j = 0, e = 1024; j != e; ++j) {
    __xlx_chunk1__tmp_vec.push_back(((char*)__xlx_apatb_param_chunk1)[j]);
  }
  int __xlx_size_param_chunk1 = 1024;
  int __xlx_offset_param_chunk1 = 0;
  int __xlx_offset_byte_param_chunk1 = 0*1;
  char* __xlx_chunk1__input_buffer= new char[__xlx_chunk1__tmp_vec.size()];
  for (int i = 0; i < __xlx_chunk1__tmp_vec.size(); ++i) {
    __xlx_chunk1__input_buffer[i] = __xlx_chunk1__tmp_vec[i].range(1, 0).to_uint64();
  }
  // Collect __xlx_chunk2__tmp_vec
  vector<sc_bv<2> >__xlx_chunk2__tmp_vec;
  for (int j = 0, e = 1024; j != e; ++j) {
    __xlx_chunk2__tmp_vec.push_back(((char*)__xlx_apatb_param_chunk2)[j]);
  }
  int __xlx_size_param_chunk2 = 1024;
  int __xlx_offset_param_chunk2 = 0;
  int __xlx_offset_byte_param_chunk2 = 0*1;
  char* __xlx_chunk2__input_buffer= new char[__xlx_chunk2__tmp_vec.size()];
  for (int i = 0; i < __xlx_chunk2__tmp_vec.size(); ++i) {
    __xlx_chunk2__input_buffer[i] = __xlx_chunk2__tmp_vec[i].range(1, 0).to_uint64();
  }
  // Collect __xlx_chunk3__tmp_vec
  vector<sc_bv<2> >__xlx_chunk3__tmp_vec;
  for (int j = 0, e = 1024; j != e; ++j) {
    __xlx_chunk3__tmp_vec.push_back(((char*)__xlx_apatb_param_chunk3)[j]);
  }
  int __xlx_size_param_chunk3 = 1024;
  int __xlx_offset_param_chunk3 = 0;
  int __xlx_offset_byte_param_chunk3 = 0*1;
  char* __xlx_chunk3__input_buffer= new char[__xlx_chunk3__tmp_vec.size()];
  for (int i = 0; i < __xlx_chunk3__tmp_vec.size(); ++i) {
    __xlx_chunk3__input_buffer[i] = __xlx_chunk3__tmp_vec[i].range(1, 0).to_uint64();
  }
  // Collect __xlx_chunk4__tmp_vec
  vector<sc_bv<2> >__xlx_chunk4__tmp_vec;
  for (int j = 0, e = 1024; j != e; ++j) {
    __xlx_chunk4__tmp_vec.push_back(((char*)__xlx_apatb_param_chunk4)[j]);
  }
  int __xlx_size_param_chunk4 = 1024;
  int __xlx_offset_param_chunk4 = 0;
  int __xlx_offset_byte_param_chunk4 = 0*1;
  char* __xlx_chunk4__input_buffer= new char[__xlx_chunk4__tmp_vec.size()];
  for (int i = 0; i < __xlx_chunk4__tmp_vec.size(); ++i) {
    __xlx_chunk4__input_buffer[i] = __xlx_chunk4__tmp_vec[i].range(1, 0).to_uint64();
  }
  // Collect __xlx_chunk5__tmp_vec
  vector<sc_bv<2> >__xlx_chunk5__tmp_vec;
  for (int j = 0, e = 1024; j != e; ++j) {
    __xlx_chunk5__tmp_vec.push_back(((char*)__xlx_apatb_param_chunk5)[j]);
  }
  int __xlx_size_param_chunk5 = 1024;
  int __xlx_offset_param_chunk5 = 0;
  int __xlx_offset_byte_param_chunk5 = 0*1;
  char* __xlx_chunk5__input_buffer= new char[__xlx_chunk5__tmp_vec.size()];
  for (int i = 0; i < __xlx_chunk5__tmp_vec.size(); ++i) {
    __xlx_chunk5__input_buffer[i] = __xlx_chunk5__tmp_vec[i].range(1, 0).to_uint64();
  }
  // Collect __xlx_chunk6__tmp_vec
  vector<sc_bv<2> >__xlx_chunk6__tmp_vec;
  for (int j = 0, e = 1024; j != e; ++j) {
    __xlx_chunk6__tmp_vec.push_back(((char*)__xlx_apatb_param_chunk6)[j]);
  }
  int __xlx_size_param_chunk6 = 1024;
  int __xlx_offset_param_chunk6 = 0;
  int __xlx_offset_byte_param_chunk6 = 0*1;
  char* __xlx_chunk6__input_buffer= new char[__xlx_chunk6__tmp_vec.size()];
  for (int i = 0; i < __xlx_chunk6__tmp_vec.size(); ++i) {
    __xlx_chunk6__input_buffer[i] = __xlx_chunk6__tmp_vec[i].range(1, 0).to_uint64();
  }
  // Collect __xlx_chunk7__tmp_vec
  vector<sc_bv<2> >__xlx_chunk7__tmp_vec;
  for (int j = 0, e = 1024; j != e; ++j) {
    __xlx_chunk7__tmp_vec.push_back(((char*)__xlx_apatb_param_chunk7)[j]);
  }
  int __xlx_size_param_chunk7 = 1024;
  int __xlx_offset_param_chunk7 = 0;
  int __xlx_offset_byte_param_chunk7 = 0*1;
  char* __xlx_chunk7__input_buffer= new char[__xlx_chunk7__tmp_vec.size()];
  for (int i = 0; i < __xlx_chunk7__tmp_vec.size(); ++i) {
    __xlx_chunk7__input_buffer[i] = __xlx_chunk7__tmp_vec[i].range(1, 0).to_uint64();
  }
  // Collect __xlx_chunk8__tmp_vec
  vector<sc_bv<2> >__xlx_chunk8__tmp_vec;
  for (int j = 0, e = 1024; j != e; ++j) {
    __xlx_chunk8__tmp_vec.push_back(((char*)__xlx_apatb_param_chunk8)[j]);
  }
  int __xlx_size_param_chunk8 = 1024;
  int __xlx_offset_param_chunk8 = 0;
  int __xlx_offset_byte_param_chunk8 = 0*1;
  char* __xlx_chunk8__input_buffer= new char[__xlx_chunk8__tmp_vec.size()];
  for (int i = 0; i < __xlx_chunk8__tmp_vec.size(); ++i) {
    __xlx_chunk8__input_buffer[i] = __xlx_chunk8__tmp_vec[i].range(1, 0).to_uint64();
  }
  // Collect __xlx_ref1__tmp_vec
  vector<sc_bv<2> >__xlx_ref1__tmp_vec;
  for (int j = 0, e = 1024; j != e; ++j) {
    __xlx_ref1__tmp_vec.push_back(((char*)__xlx_apatb_param_ref1)[j]);
  }
  int __xlx_size_param_ref1 = 1024;
  int __xlx_offset_param_ref1 = 0;
  int __xlx_offset_byte_param_ref1 = 0*1;
  char* __xlx_ref1__input_buffer= new char[__xlx_ref1__tmp_vec.size()];
  for (int i = 0; i < __xlx_ref1__tmp_vec.size(); ++i) {
    __xlx_ref1__input_buffer[i] = __xlx_ref1__tmp_vec[i].range(1, 0).to_uint64();
  }
  // Collect __xlx_ref2__tmp_vec
  vector<sc_bv<2> >__xlx_ref2__tmp_vec;
  for (int j = 0, e = 1024; j != e; ++j) {
    __xlx_ref2__tmp_vec.push_back(((char*)__xlx_apatb_param_ref2)[j]);
  }
  int __xlx_size_param_ref2 = 1024;
  int __xlx_offset_param_ref2 = 0;
  int __xlx_offset_byte_param_ref2 = 0*1;
  char* __xlx_ref2__input_buffer= new char[__xlx_ref2__tmp_vec.size()];
  for (int i = 0; i < __xlx_ref2__tmp_vec.size(); ++i) {
    __xlx_ref2__input_buffer[i] = __xlx_ref2__tmp_vec[i].range(1, 0).to_uint64();
  }
  // Collect __xlx_ref3__tmp_vec
  vector<sc_bv<2> >__xlx_ref3__tmp_vec;
  for (int j = 0, e = 1024; j != e; ++j) {
    __xlx_ref3__tmp_vec.push_back(((char*)__xlx_apatb_param_ref3)[j]);
  }
  int __xlx_size_param_ref3 = 1024;
  int __xlx_offset_param_ref3 = 0;
  int __xlx_offset_byte_param_ref3 = 0*1;
  char* __xlx_ref3__input_buffer= new char[__xlx_ref3__tmp_vec.size()];
  for (int i = 0; i < __xlx_ref3__tmp_vec.size(); ++i) {
    __xlx_ref3__input_buffer[i] = __xlx_ref3__tmp_vec[i].range(1, 0).to_uint64();
  }
  // Collect __xlx_ref4__tmp_vec
  vector<sc_bv<2> >__xlx_ref4__tmp_vec;
  for (int j = 0, e = 1024; j != e; ++j) {
    __xlx_ref4__tmp_vec.push_back(((char*)__xlx_apatb_param_ref4)[j]);
  }
  int __xlx_size_param_ref4 = 1024;
  int __xlx_offset_param_ref4 = 0;
  int __xlx_offset_byte_param_ref4 = 0*1;
  char* __xlx_ref4__input_buffer= new char[__xlx_ref4__tmp_vec.size()];
  for (int i = 0; i < __xlx_ref4__tmp_vec.size(); ++i) {
    __xlx_ref4__input_buffer[i] = __xlx_ref4__tmp_vec[i].range(1, 0).to_uint64();
  }
  // Collect __xlx_ref5__tmp_vec
  vector<sc_bv<2> >__xlx_ref5__tmp_vec;
  for (int j = 0, e = 1024; j != e; ++j) {
    __xlx_ref5__tmp_vec.push_back(((char*)__xlx_apatb_param_ref5)[j]);
  }
  int __xlx_size_param_ref5 = 1024;
  int __xlx_offset_param_ref5 = 0;
  int __xlx_offset_byte_param_ref5 = 0*1;
  char* __xlx_ref5__input_buffer= new char[__xlx_ref5__tmp_vec.size()];
  for (int i = 0; i < __xlx_ref5__tmp_vec.size(); ++i) {
    __xlx_ref5__input_buffer[i] = __xlx_ref5__tmp_vec[i].range(1, 0).to_uint64();
  }
  // Collect __xlx_ref6__tmp_vec
  vector<sc_bv<2> >__xlx_ref6__tmp_vec;
  for (int j = 0, e = 1024; j != e; ++j) {
    __xlx_ref6__tmp_vec.push_back(((char*)__xlx_apatb_param_ref6)[j]);
  }
  int __xlx_size_param_ref6 = 1024;
  int __xlx_offset_param_ref6 = 0;
  int __xlx_offset_byte_param_ref6 = 0*1;
  char* __xlx_ref6__input_buffer= new char[__xlx_ref6__tmp_vec.size()];
  for (int i = 0; i < __xlx_ref6__tmp_vec.size(); ++i) {
    __xlx_ref6__input_buffer[i] = __xlx_ref6__tmp_vec[i].range(1, 0).to_uint64();
  }
  // Collect __xlx_ref7__tmp_vec
  vector<sc_bv<2> >__xlx_ref7__tmp_vec;
  for (int j = 0, e = 1024; j != e; ++j) {
    __xlx_ref7__tmp_vec.push_back(((char*)__xlx_apatb_param_ref7)[j]);
  }
  int __xlx_size_param_ref7 = 1024;
  int __xlx_offset_param_ref7 = 0;
  int __xlx_offset_byte_param_ref7 = 0*1;
  char* __xlx_ref7__input_buffer= new char[__xlx_ref7__tmp_vec.size()];
  for (int i = 0; i < __xlx_ref7__tmp_vec.size(); ++i) {
    __xlx_ref7__input_buffer[i] = __xlx_ref7__tmp_vec[i].range(1, 0).to_uint64();
  }
  // Collect __xlx_ref8__tmp_vec
  vector<sc_bv<2> >__xlx_ref8__tmp_vec;
  for (int j = 0, e = 1024; j != e; ++j) {
    __xlx_ref8__tmp_vec.push_back(((char*)__xlx_apatb_param_ref8)[j]);
  }
  int __xlx_size_param_ref8 = 1024;
  int __xlx_offset_param_ref8 = 0;
  int __xlx_offset_byte_param_ref8 = 0*1;
  char* __xlx_ref8__input_buffer= new char[__xlx_ref8__tmp_vec.size()];
  for (int i = 0; i < __xlx_ref8__tmp_vec.size(); ++i) {
    __xlx_ref8__input_buffer[i] = __xlx_ref8__tmp_vec[i].range(1, 0).to_uint64();
  }
  // DUT call
  seq_align_multiple(__xlx_chunk1__input_buffer, __xlx_chunk2__input_buffer, __xlx_chunk3__input_buffer, __xlx_chunk4__input_buffer, __xlx_chunk5__input_buffer, __xlx_chunk6__input_buffer, __xlx_chunk7__input_buffer, __xlx_chunk8__input_buffer, __xlx_ref1__input_buffer, __xlx_ref2__input_buffer, __xlx_ref3__input_buffer, __xlx_ref4__input_buffer, __xlx_ref5__input_buffer, __xlx_ref6__input_buffer, __xlx_ref7__input_buffer, __xlx_ref8__input_buffer, __xlx_apatb_param_dummy1_out, __xlx_apatb_param_dummy2_out, __xlx_apatb_param_dummy3_out, __xlx_apatb_param_dummy4_out, __xlx_apatb_param_dummy5_out, __xlx_apatb_param_dummy6_out, __xlx_apatb_param_dummy7_out, __xlx_apatb_param_dummy8_out);
// print __xlx_apatb_param_chunk1
  sc_bv<2>*__xlx_chunk1_output_buffer = new sc_bv<2>[__xlx_size_param_chunk1];
  for (int i = 0; i < __xlx_size_param_chunk1; ++i) {
    __xlx_chunk1_output_buffer[i] = __xlx_chunk1__input_buffer[i+__xlx_offset_param_chunk1];
  }
  for (int i = 0; i < __xlx_size_param_chunk1; ++i) {
    ((char*)__xlx_apatb_param_chunk1)[i] = __xlx_chunk1_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_chunk2
  sc_bv<2>*__xlx_chunk2_output_buffer = new sc_bv<2>[__xlx_size_param_chunk2];
  for (int i = 0; i < __xlx_size_param_chunk2; ++i) {
    __xlx_chunk2_output_buffer[i] = __xlx_chunk2__input_buffer[i+__xlx_offset_param_chunk2];
  }
  for (int i = 0; i < __xlx_size_param_chunk2; ++i) {
    ((char*)__xlx_apatb_param_chunk2)[i] = __xlx_chunk2_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_chunk3
  sc_bv<2>*__xlx_chunk3_output_buffer = new sc_bv<2>[__xlx_size_param_chunk3];
  for (int i = 0; i < __xlx_size_param_chunk3; ++i) {
    __xlx_chunk3_output_buffer[i] = __xlx_chunk3__input_buffer[i+__xlx_offset_param_chunk3];
  }
  for (int i = 0; i < __xlx_size_param_chunk3; ++i) {
    ((char*)__xlx_apatb_param_chunk3)[i] = __xlx_chunk3_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_chunk4
  sc_bv<2>*__xlx_chunk4_output_buffer = new sc_bv<2>[__xlx_size_param_chunk4];
  for (int i = 0; i < __xlx_size_param_chunk4; ++i) {
    __xlx_chunk4_output_buffer[i] = __xlx_chunk4__input_buffer[i+__xlx_offset_param_chunk4];
  }
  for (int i = 0; i < __xlx_size_param_chunk4; ++i) {
    ((char*)__xlx_apatb_param_chunk4)[i] = __xlx_chunk4_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_chunk5
  sc_bv<2>*__xlx_chunk5_output_buffer = new sc_bv<2>[__xlx_size_param_chunk5];
  for (int i = 0; i < __xlx_size_param_chunk5; ++i) {
    __xlx_chunk5_output_buffer[i] = __xlx_chunk5__input_buffer[i+__xlx_offset_param_chunk5];
  }
  for (int i = 0; i < __xlx_size_param_chunk5; ++i) {
    ((char*)__xlx_apatb_param_chunk5)[i] = __xlx_chunk5_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_chunk6
  sc_bv<2>*__xlx_chunk6_output_buffer = new sc_bv<2>[__xlx_size_param_chunk6];
  for (int i = 0; i < __xlx_size_param_chunk6; ++i) {
    __xlx_chunk6_output_buffer[i] = __xlx_chunk6__input_buffer[i+__xlx_offset_param_chunk6];
  }
  for (int i = 0; i < __xlx_size_param_chunk6; ++i) {
    ((char*)__xlx_apatb_param_chunk6)[i] = __xlx_chunk6_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_chunk7
  sc_bv<2>*__xlx_chunk7_output_buffer = new sc_bv<2>[__xlx_size_param_chunk7];
  for (int i = 0; i < __xlx_size_param_chunk7; ++i) {
    __xlx_chunk7_output_buffer[i] = __xlx_chunk7__input_buffer[i+__xlx_offset_param_chunk7];
  }
  for (int i = 0; i < __xlx_size_param_chunk7; ++i) {
    ((char*)__xlx_apatb_param_chunk7)[i] = __xlx_chunk7_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_chunk8
  sc_bv<2>*__xlx_chunk8_output_buffer = new sc_bv<2>[__xlx_size_param_chunk8];
  for (int i = 0; i < __xlx_size_param_chunk8; ++i) {
    __xlx_chunk8_output_buffer[i] = __xlx_chunk8__input_buffer[i+__xlx_offset_param_chunk8];
  }
  for (int i = 0; i < __xlx_size_param_chunk8; ++i) {
    ((char*)__xlx_apatb_param_chunk8)[i] = __xlx_chunk8_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_ref1
  sc_bv<2>*__xlx_ref1_output_buffer = new sc_bv<2>[__xlx_size_param_ref1];
  for (int i = 0; i < __xlx_size_param_ref1; ++i) {
    __xlx_ref1_output_buffer[i] = __xlx_ref1__input_buffer[i+__xlx_offset_param_ref1];
  }
  for (int i = 0; i < __xlx_size_param_ref1; ++i) {
    ((char*)__xlx_apatb_param_ref1)[i] = __xlx_ref1_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_ref2
  sc_bv<2>*__xlx_ref2_output_buffer = new sc_bv<2>[__xlx_size_param_ref2];
  for (int i = 0; i < __xlx_size_param_ref2; ++i) {
    __xlx_ref2_output_buffer[i] = __xlx_ref2__input_buffer[i+__xlx_offset_param_ref2];
  }
  for (int i = 0; i < __xlx_size_param_ref2; ++i) {
    ((char*)__xlx_apatb_param_ref2)[i] = __xlx_ref2_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_ref3
  sc_bv<2>*__xlx_ref3_output_buffer = new sc_bv<2>[__xlx_size_param_ref3];
  for (int i = 0; i < __xlx_size_param_ref3; ++i) {
    __xlx_ref3_output_buffer[i] = __xlx_ref3__input_buffer[i+__xlx_offset_param_ref3];
  }
  for (int i = 0; i < __xlx_size_param_ref3; ++i) {
    ((char*)__xlx_apatb_param_ref3)[i] = __xlx_ref3_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_ref4
  sc_bv<2>*__xlx_ref4_output_buffer = new sc_bv<2>[__xlx_size_param_ref4];
  for (int i = 0; i < __xlx_size_param_ref4; ++i) {
    __xlx_ref4_output_buffer[i] = __xlx_ref4__input_buffer[i+__xlx_offset_param_ref4];
  }
  for (int i = 0; i < __xlx_size_param_ref4; ++i) {
    ((char*)__xlx_apatb_param_ref4)[i] = __xlx_ref4_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_ref5
  sc_bv<2>*__xlx_ref5_output_buffer = new sc_bv<2>[__xlx_size_param_ref5];
  for (int i = 0; i < __xlx_size_param_ref5; ++i) {
    __xlx_ref5_output_buffer[i] = __xlx_ref5__input_buffer[i+__xlx_offset_param_ref5];
  }
  for (int i = 0; i < __xlx_size_param_ref5; ++i) {
    ((char*)__xlx_apatb_param_ref5)[i] = __xlx_ref5_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_ref6
  sc_bv<2>*__xlx_ref6_output_buffer = new sc_bv<2>[__xlx_size_param_ref6];
  for (int i = 0; i < __xlx_size_param_ref6; ++i) {
    __xlx_ref6_output_buffer[i] = __xlx_ref6__input_buffer[i+__xlx_offset_param_ref6];
  }
  for (int i = 0; i < __xlx_size_param_ref6; ++i) {
    ((char*)__xlx_apatb_param_ref6)[i] = __xlx_ref6_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_ref7
  sc_bv<2>*__xlx_ref7_output_buffer = new sc_bv<2>[__xlx_size_param_ref7];
  for (int i = 0; i < __xlx_size_param_ref7; ++i) {
    __xlx_ref7_output_buffer[i] = __xlx_ref7__input_buffer[i+__xlx_offset_param_ref7];
  }
  for (int i = 0; i < __xlx_size_param_ref7; ++i) {
    ((char*)__xlx_apatb_param_ref7)[i] = __xlx_ref7_output_buffer[i].to_uint();
  }
// print __xlx_apatb_param_ref8
  sc_bv<2>*__xlx_ref8_output_buffer = new sc_bv<2>[__xlx_size_param_ref8];
  for (int i = 0; i < __xlx_size_param_ref8; ++i) {
    __xlx_ref8_output_buffer[i] = __xlx_ref8__input_buffer[i+__xlx_offset_param_ref8];
  }
  for (int i = 0; i < __xlx_size_param_ref8; ++i) {
    ((char*)__xlx_apatb_param_ref8)[i] = __xlx_ref8_output_buffer[i].to_uint();
  }
}
