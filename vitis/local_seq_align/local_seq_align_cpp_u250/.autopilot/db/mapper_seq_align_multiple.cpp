#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"
using namespace std;

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
    const char *msg;
    const size_t line;
    SimException(const char *msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const char *msg)
  {
    std::string s;
    s += "at line ";
    s += std::to_string(line);
    s += " occurred problem: ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
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
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
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
using hls::sim::Byte;
extern "C" void seq_align_multiple(Byte<1>*, Byte<1>*, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*);
extern "C" void apatb_seq_align_multiple_hw(volatile void * __xlx_apatb_param_query_string_comp, volatile void * __xlx_apatb_param_reference_string_comp, volatile void * __xlx_apatb_param_dp_mem_0_0, volatile void * __xlx_apatb_param_dp_mem_0_1, volatile void * __xlx_apatb_param_dp_mem_0_2, volatile void * __xlx_apatb_param_dp_mem_0_3, volatile void * __xlx_apatb_param_dp_mem_0_4, volatile void * __xlx_apatb_param_dp_mem_0_5, volatile void * __xlx_apatb_param_dp_mem_0_6, volatile void * __xlx_apatb_param_dp_mem_0_7, volatile void * __xlx_apatb_param_dp_mem_0_8, volatile void * __xlx_apatb_param_dp_mem_0_9, volatile void * __xlx_apatb_param_dp_mem_0_10, volatile void * __xlx_apatb_param_dp_mem_0_11, volatile void * __xlx_apatb_param_dp_mem_0_12, volatile void * __xlx_apatb_param_dp_mem_0_13, volatile void * __xlx_apatb_param_dp_mem_0_14, volatile void * __xlx_apatb_param_dp_mem_0_15, volatile void * __xlx_apatb_param_dp_mem_0_16, volatile void * __xlx_apatb_param_dp_mem_0_17, volatile void * __xlx_apatb_param_dp_mem_0_18, volatile void * __xlx_apatb_param_dp_mem_0_19, volatile void * __xlx_apatb_param_dp_mem_0_20, volatile void * __xlx_apatb_param_dp_mem_0_21, volatile void * __xlx_apatb_param_dp_mem_0_22, volatile void * __xlx_apatb_param_dp_mem_0_23, volatile void * __xlx_apatb_param_dp_mem_0_24, volatile void * __xlx_apatb_param_dp_mem_0_25, volatile void * __xlx_apatb_param_dp_mem_0_26, volatile void * __xlx_apatb_param_dp_mem_0_27, volatile void * __xlx_apatb_param_dp_mem_0_28, volatile void * __xlx_apatb_param_dp_mem_0_29, volatile void * __xlx_apatb_param_dp_mem_0_30, volatile void * __xlx_apatb_param_dp_mem_0_31, volatile void * __xlx_apatb_param_dp_mem_1_0, volatile void * __xlx_apatb_param_dp_mem_1_1, volatile void * __xlx_apatb_param_dp_mem_1_2, volatile void * __xlx_apatb_param_dp_mem_1_3, volatile void * __xlx_apatb_param_dp_mem_1_4, volatile void * __xlx_apatb_param_dp_mem_1_5, volatile void * __xlx_apatb_param_dp_mem_1_6, volatile void * __xlx_apatb_param_dp_mem_1_7, volatile void * __xlx_apatb_param_dp_mem_1_8, volatile void * __xlx_apatb_param_dp_mem_1_9, volatile void * __xlx_apatb_param_dp_mem_1_10, volatile void * __xlx_apatb_param_dp_mem_1_11, volatile void * __xlx_apatb_param_dp_mem_1_12, volatile void * __xlx_apatb_param_dp_mem_1_13, volatile void * __xlx_apatb_param_dp_mem_1_14, volatile void * __xlx_apatb_param_dp_mem_1_15, volatile void * __xlx_apatb_param_dp_mem_1_16, volatile void * __xlx_apatb_param_dp_mem_1_17, volatile void * __xlx_apatb_param_dp_mem_1_18, volatile void * __xlx_apatb_param_dp_mem_1_19, volatile void * __xlx_apatb_param_dp_mem_1_20, volatile void * __xlx_apatb_param_dp_mem_1_21, volatile void * __xlx_apatb_param_dp_mem_1_22, volatile void * __xlx_apatb_param_dp_mem_1_23, volatile void * __xlx_apatb_param_dp_mem_1_24, volatile void * __xlx_apatb_param_dp_mem_1_25, volatile void * __xlx_apatb_param_dp_mem_1_26, volatile void * __xlx_apatb_param_dp_mem_1_27, volatile void * __xlx_apatb_param_dp_mem_1_28, volatile void * __xlx_apatb_param_dp_mem_1_29, volatile void * __xlx_apatb_param_dp_mem_1_30, volatile void * __xlx_apatb_param_dp_mem_1_31, volatile void * __xlx_apatb_param_dp_mem_2_0, volatile void * __xlx_apatb_param_dp_mem_2_1, volatile void * __xlx_apatb_param_dp_mem_2_2, volatile void * __xlx_apatb_param_dp_mem_2_3, volatile void * __xlx_apatb_param_dp_mem_2_4, volatile void * __xlx_apatb_param_dp_mem_2_5, volatile void * __xlx_apatb_param_dp_mem_2_6, volatile void * __xlx_apatb_param_dp_mem_2_7, volatile void * __xlx_apatb_param_dp_mem_2_8, volatile void * __xlx_apatb_param_dp_mem_2_9, volatile void * __xlx_apatb_param_dp_mem_2_10, volatile void * __xlx_apatb_param_dp_mem_2_11, volatile void * __xlx_apatb_param_dp_mem_2_12, volatile void * __xlx_apatb_param_dp_mem_2_13, volatile void * __xlx_apatb_param_dp_mem_2_14, volatile void * __xlx_apatb_param_dp_mem_2_15, volatile void * __xlx_apatb_param_dp_mem_2_16, volatile void * __xlx_apatb_param_dp_mem_2_17, volatile void * __xlx_apatb_param_dp_mem_2_18, volatile void * __xlx_apatb_param_dp_mem_2_19, volatile void * __xlx_apatb_param_dp_mem_2_20, volatile void * __xlx_apatb_param_dp_mem_2_21, volatile void * __xlx_apatb_param_dp_mem_2_22, volatile void * __xlx_apatb_param_dp_mem_2_23, volatile void * __xlx_apatb_param_dp_mem_2_24, volatile void * __xlx_apatb_param_dp_mem_2_25, volatile void * __xlx_apatb_param_dp_mem_2_26, volatile void * __xlx_apatb_param_dp_mem_2_27, volatile void * __xlx_apatb_param_dp_mem_2_28, volatile void * __xlx_apatb_param_dp_mem_2_29, volatile void * __xlx_apatb_param_dp_mem_2_30, volatile void * __xlx_apatb_param_dp_mem_2_31, volatile void * __xlx_apatb_param_Ix_mem_0_0, volatile void * __xlx_apatb_param_Ix_mem_0_1, volatile void * __xlx_apatb_param_Ix_mem_0_2, volatile void * __xlx_apatb_param_Ix_mem_0_3, volatile void * __xlx_apatb_param_Ix_mem_0_4, volatile void * __xlx_apatb_param_Ix_mem_0_5, volatile void * __xlx_apatb_param_Ix_mem_0_6, volatile void * __xlx_apatb_param_Ix_mem_0_7, volatile void * __xlx_apatb_param_Ix_mem_0_8, volatile void * __xlx_apatb_param_Ix_mem_0_9, volatile void * __xlx_apatb_param_Ix_mem_0_10, volatile void * __xlx_apatb_param_Ix_mem_0_11, volatile void * __xlx_apatb_param_Ix_mem_0_12, volatile void * __xlx_apatb_param_Ix_mem_0_13, volatile void * __xlx_apatb_param_Ix_mem_0_14, volatile void * __xlx_apatb_param_Ix_mem_0_15, volatile void * __xlx_apatb_param_Ix_mem_0_16, volatile void * __xlx_apatb_param_Ix_mem_0_17, volatile void * __xlx_apatb_param_Ix_mem_0_18, volatile void * __xlx_apatb_param_Ix_mem_0_19, volatile void * __xlx_apatb_param_Ix_mem_0_20, volatile void * __xlx_apatb_param_Ix_mem_0_21, volatile void * __xlx_apatb_param_Ix_mem_0_22, volatile void * __xlx_apatb_param_Ix_mem_0_23, volatile void * __xlx_apatb_param_Ix_mem_0_24, volatile void * __xlx_apatb_param_Ix_mem_0_25, volatile void * __xlx_apatb_param_Ix_mem_0_26, volatile void * __xlx_apatb_param_Ix_mem_0_27, volatile void * __xlx_apatb_param_Ix_mem_0_28, volatile void * __xlx_apatb_param_Ix_mem_0_29, volatile void * __xlx_apatb_param_Ix_mem_0_30, volatile void * __xlx_apatb_param_Ix_mem_0_31, volatile void * __xlx_apatb_param_Ix_mem_1_0, volatile void * __xlx_apatb_param_Ix_mem_1_1, volatile void * __xlx_apatb_param_Ix_mem_1_2, volatile void * __xlx_apatb_param_Ix_mem_1_3, volatile void * __xlx_apatb_param_Ix_mem_1_4, volatile void * __xlx_apatb_param_Ix_mem_1_5, volatile void * __xlx_apatb_param_Ix_mem_1_6, volatile void * __xlx_apatb_param_Ix_mem_1_7, volatile void * __xlx_apatb_param_Ix_mem_1_8, volatile void * __xlx_apatb_param_Ix_mem_1_9, volatile void * __xlx_apatb_param_Ix_mem_1_10, volatile void * __xlx_apatb_param_Ix_mem_1_11, volatile void * __xlx_apatb_param_Ix_mem_1_12, volatile void * __xlx_apatb_param_Ix_mem_1_13, volatile void * __xlx_apatb_param_Ix_mem_1_14, volatile void * __xlx_apatb_param_Ix_mem_1_15, volatile void * __xlx_apatb_param_Ix_mem_1_16, volatile void * __xlx_apatb_param_Ix_mem_1_17, volatile void * __xlx_apatb_param_Ix_mem_1_18, volatile void * __xlx_apatb_param_Ix_mem_1_19, volatile void * __xlx_apatb_param_Ix_mem_1_20, volatile void * __xlx_apatb_param_Ix_mem_1_21, volatile void * __xlx_apatb_param_Ix_mem_1_22, volatile void * __xlx_apatb_param_Ix_mem_1_23, volatile void * __xlx_apatb_param_Ix_mem_1_24, volatile void * __xlx_apatb_param_Ix_mem_1_25, volatile void * __xlx_apatb_param_Ix_mem_1_26, volatile void * __xlx_apatb_param_Ix_mem_1_27, volatile void * __xlx_apatb_param_Ix_mem_1_28, volatile void * __xlx_apatb_param_Ix_mem_1_29, volatile void * __xlx_apatb_param_Ix_mem_1_30, volatile void * __xlx_apatb_param_Ix_mem_1_31, volatile void * __xlx_apatb_param_Iy_mem_0_0, volatile void * __xlx_apatb_param_Iy_mem_0_1, volatile void * __xlx_apatb_param_Iy_mem_0_2, volatile void * __xlx_apatb_param_Iy_mem_0_3, volatile void * __xlx_apatb_param_Iy_mem_0_4, volatile void * __xlx_apatb_param_Iy_mem_0_5, volatile void * __xlx_apatb_param_Iy_mem_0_6, volatile void * __xlx_apatb_param_Iy_mem_0_7, volatile void * __xlx_apatb_param_Iy_mem_0_8, volatile void * __xlx_apatb_param_Iy_mem_0_9, volatile void * __xlx_apatb_param_Iy_mem_0_10, volatile void * __xlx_apatb_param_Iy_mem_0_11, volatile void * __xlx_apatb_param_Iy_mem_0_12, volatile void * __xlx_apatb_param_Iy_mem_0_13, volatile void * __xlx_apatb_param_Iy_mem_0_14, volatile void * __xlx_apatb_param_Iy_mem_0_15, volatile void * __xlx_apatb_param_Iy_mem_0_16, volatile void * __xlx_apatb_param_Iy_mem_0_17, volatile void * __xlx_apatb_param_Iy_mem_0_18, volatile void * __xlx_apatb_param_Iy_mem_0_19, volatile void * __xlx_apatb_param_Iy_mem_0_20, volatile void * __xlx_apatb_param_Iy_mem_0_21, volatile void * __xlx_apatb_param_Iy_mem_0_22, volatile void * __xlx_apatb_param_Iy_mem_0_23, volatile void * __xlx_apatb_param_Iy_mem_0_24, volatile void * __xlx_apatb_param_Iy_mem_0_25, volatile void * __xlx_apatb_param_Iy_mem_0_26, volatile void * __xlx_apatb_param_Iy_mem_0_27, volatile void * __xlx_apatb_param_Iy_mem_0_28, volatile void * __xlx_apatb_param_Iy_mem_0_29, volatile void * __xlx_apatb_param_Iy_mem_0_30, volatile void * __xlx_apatb_param_Iy_mem_0_31, volatile void * __xlx_apatb_param_Iy_mem_1_0, volatile void * __xlx_apatb_param_Iy_mem_1_1, volatile void * __xlx_apatb_param_Iy_mem_1_2, volatile void * __xlx_apatb_param_Iy_mem_1_3, volatile void * __xlx_apatb_param_Iy_mem_1_4, volatile void * __xlx_apatb_param_Iy_mem_1_5, volatile void * __xlx_apatb_param_Iy_mem_1_6, volatile void * __xlx_apatb_param_Iy_mem_1_7, volatile void * __xlx_apatb_param_Iy_mem_1_8, volatile void * __xlx_apatb_param_Iy_mem_1_9, volatile void * __xlx_apatb_param_Iy_mem_1_10, volatile void * __xlx_apatb_param_Iy_mem_1_11, volatile void * __xlx_apatb_param_Iy_mem_1_12, volatile void * __xlx_apatb_param_Iy_mem_1_13, volatile void * __xlx_apatb_param_Iy_mem_1_14, volatile void * __xlx_apatb_param_Iy_mem_1_15, volatile void * __xlx_apatb_param_Iy_mem_1_16, volatile void * __xlx_apatb_param_Iy_mem_1_17, volatile void * __xlx_apatb_param_Iy_mem_1_18, volatile void * __xlx_apatb_param_Iy_mem_1_19, volatile void * __xlx_apatb_param_Iy_mem_1_20, volatile void * __xlx_apatb_param_Iy_mem_1_21, volatile void * __xlx_apatb_param_Iy_mem_1_22, volatile void * __xlx_apatb_param_Iy_mem_1_23, volatile void * __xlx_apatb_param_Iy_mem_1_24, volatile void * __xlx_apatb_param_Iy_mem_1_25, volatile void * __xlx_apatb_param_Iy_mem_1_26, volatile void * __xlx_apatb_param_Iy_mem_1_27, volatile void * __xlx_apatb_param_Iy_mem_1_28, volatile void * __xlx_apatb_param_Iy_mem_1_29, volatile void * __xlx_apatb_param_Iy_mem_1_30, volatile void * __xlx_apatb_param_Iy_mem_1_31, volatile void * __xlx_apatb_param_last_pe_score, volatile void * __xlx_apatb_param_last_pe_scoreIx, volatile void * __xlx_apatb_param_dp_matrix1_0, volatile void * __xlx_apatb_param_dp_matrix1_1, volatile void * __xlx_apatb_param_dp_matrix1_2, volatile void * __xlx_apatb_param_dp_matrix1_3, volatile void * __xlx_apatb_param_dp_matrix1_4, volatile void * __xlx_apatb_param_dp_matrix1_5, volatile void * __xlx_apatb_param_dp_matrix1_6, volatile void * __xlx_apatb_param_dp_matrix1_7, volatile void * __xlx_apatb_param_dp_matrix1_8, volatile void * __xlx_apatb_param_dp_matrix1_9, volatile void * __xlx_apatb_param_dp_matrix1_10, volatile void * __xlx_apatb_param_dp_matrix1_11, volatile void * __xlx_apatb_param_dp_matrix1_12, volatile void * __xlx_apatb_param_dp_matrix1_13, volatile void * __xlx_apatb_param_dp_matrix1_14, volatile void * __xlx_apatb_param_dp_matrix1_15, volatile void * __xlx_apatb_param_dp_matrix2) {
using hls::sim::createStream;
  // Collect __xlx_query_string_comp__tmp_vec
std::vector<Byte<1>> __xlx_query_string_comp__tmp_vec;
for (size_t i = 0; i < 512; ++i){
__xlx_query_string_comp__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_query_string_comp)[i]);
}
  int __xlx_size_param_query_string_comp = 512;
  int __xlx_offset_param_query_string_comp = 0;
  int __xlx_offset_byte_param_query_string_comp = 0*1;
  // Collect __xlx_reference_string_comp__tmp_vec
std::vector<Byte<1>> __xlx_reference_string_comp__tmp_vec;
for (size_t i = 0; i < 1024; ++i){
__xlx_reference_string_comp__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_reference_string_comp)[i]);
}
  int __xlx_size_param_reference_string_comp = 1024;
  int __xlx_offset_param_reference_string_comp = 0;
  int __xlx_offset_byte_param_reference_string_comp = 0*1;
  // Collect __xlx_last_pe_score__tmp_vec
std::vector<Byte<2>> __xlx_last_pe_score__tmp_vec;
for (size_t i = 0; i < 1024; ++i){
__xlx_last_pe_score__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_last_pe_score)[i]);
}
  int __xlx_size_param_last_pe_score = 1024;
  int __xlx_offset_param_last_pe_score = 0;
  int __xlx_offset_byte_param_last_pe_score = 0*2;
  // Collect __xlx_last_pe_scoreIx__tmp_vec
std::vector<Byte<2>> __xlx_last_pe_scoreIx__tmp_vec;
for (size_t i = 0; i < 1024; ++i){
__xlx_last_pe_scoreIx__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_last_pe_scoreIx)[i]);
}
  int __xlx_size_param_last_pe_scoreIx = 1024;
  int __xlx_offset_param_last_pe_scoreIx = 0;
  int __xlx_offset_byte_param_last_pe_scoreIx = 0*2;
  // Collect __xlx_dp_matrix1_0__tmp_vec
std::vector<Byte<2>> __xlx_dp_matrix1_0__tmp_vec;
for (size_t i = 0; i < 32768; ++i){
__xlx_dp_matrix1_0__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_dp_matrix1_0)[i]);
}
  int __xlx_size_param_dp_matrix1_0 = 32768;
  int __xlx_offset_param_dp_matrix1_0 = 0;
  int __xlx_offset_byte_param_dp_matrix1_0 = 0*2;
  // Collect __xlx_dp_matrix1_1__tmp_vec
std::vector<Byte<2>> __xlx_dp_matrix1_1__tmp_vec;
for (size_t i = 0; i < 32768; ++i){
__xlx_dp_matrix1_1__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_dp_matrix1_1)[i]);
}
  int __xlx_size_param_dp_matrix1_1 = 32768;
  int __xlx_offset_param_dp_matrix1_1 = 0;
  int __xlx_offset_byte_param_dp_matrix1_1 = 0*2;
  // Collect __xlx_dp_matrix1_2__tmp_vec
std::vector<Byte<2>> __xlx_dp_matrix1_2__tmp_vec;
for (size_t i = 0; i < 32768; ++i){
__xlx_dp_matrix1_2__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_dp_matrix1_2)[i]);
}
  int __xlx_size_param_dp_matrix1_2 = 32768;
  int __xlx_offset_param_dp_matrix1_2 = 0;
  int __xlx_offset_byte_param_dp_matrix1_2 = 0*2;
  // Collect __xlx_dp_matrix1_3__tmp_vec
std::vector<Byte<2>> __xlx_dp_matrix1_3__tmp_vec;
for (size_t i = 0; i < 32768; ++i){
__xlx_dp_matrix1_3__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_dp_matrix1_3)[i]);
}
  int __xlx_size_param_dp_matrix1_3 = 32768;
  int __xlx_offset_param_dp_matrix1_3 = 0;
  int __xlx_offset_byte_param_dp_matrix1_3 = 0*2;
  // Collect __xlx_dp_matrix1_4__tmp_vec
std::vector<Byte<2>> __xlx_dp_matrix1_4__tmp_vec;
for (size_t i = 0; i < 32768; ++i){
__xlx_dp_matrix1_4__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_dp_matrix1_4)[i]);
}
  int __xlx_size_param_dp_matrix1_4 = 32768;
  int __xlx_offset_param_dp_matrix1_4 = 0;
  int __xlx_offset_byte_param_dp_matrix1_4 = 0*2;
  // Collect __xlx_dp_matrix1_5__tmp_vec
std::vector<Byte<2>> __xlx_dp_matrix1_5__tmp_vec;
for (size_t i = 0; i < 32768; ++i){
__xlx_dp_matrix1_5__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_dp_matrix1_5)[i]);
}
  int __xlx_size_param_dp_matrix1_5 = 32768;
  int __xlx_offset_param_dp_matrix1_5 = 0;
  int __xlx_offset_byte_param_dp_matrix1_5 = 0*2;
  // Collect __xlx_dp_matrix1_6__tmp_vec
std::vector<Byte<2>> __xlx_dp_matrix1_6__tmp_vec;
for (size_t i = 0; i < 32768; ++i){
__xlx_dp_matrix1_6__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_dp_matrix1_6)[i]);
}
  int __xlx_size_param_dp_matrix1_6 = 32768;
  int __xlx_offset_param_dp_matrix1_6 = 0;
  int __xlx_offset_byte_param_dp_matrix1_6 = 0*2;
  // Collect __xlx_dp_matrix1_7__tmp_vec
std::vector<Byte<2>> __xlx_dp_matrix1_7__tmp_vec;
for (size_t i = 0; i < 32768; ++i){
__xlx_dp_matrix1_7__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_dp_matrix1_7)[i]);
}
  int __xlx_size_param_dp_matrix1_7 = 32768;
  int __xlx_offset_param_dp_matrix1_7 = 0;
  int __xlx_offset_byte_param_dp_matrix1_7 = 0*2;
  // Collect __xlx_dp_matrix1_8__tmp_vec
std::vector<Byte<2>> __xlx_dp_matrix1_8__tmp_vec;
for (size_t i = 0; i < 32768; ++i){
__xlx_dp_matrix1_8__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_dp_matrix1_8)[i]);
}
  int __xlx_size_param_dp_matrix1_8 = 32768;
  int __xlx_offset_param_dp_matrix1_8 = 0;
  int __xlx_offset_byte_param_dp_matrix1_8 = 0*2;
  // Collect __xlx_dp_matrix1_9__tmp_vec
std::vector<Byte<2>> __xlx_dp_matrix1_9__tmp_vec;
for (size_t i = 0; i < 32768; ++i){
__xlx_dp_matrix1_9__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_dp_matrix1_9)[i]);
}
  int __xlx_size_param_dp_matrix1_9 = 32768;
  int __xlx_offset_param_dp_matrix1_9 = 0;
  int __xlx_offset_byte_param_dp_matrix1_9 = 0*2;
  // Collect __xlx_dp_matrix1_10__tmp_vec
std::vector<Byte<2>> __xlx_dp_matrix1_10__tmp_vec;
for (size_t i = 0; i < 32768; ++i){
__xlx_dp_matrix1_10__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_dp_matrix1_10)[i]);
}
  int __xlx_size_param_dp_matrix1_10 = 32768;
  int __xlx_offset_param_dp_matrix1_10 = 0;
  int __xlx_offset_byte_param_dp_matrix1_10 = 0*2;
  // Collect __xlx_dp_matrix1_11__tmp_vec
std::vector<Byte<2>> __xlx_dp_matrix1_11__tmp_vec;
for (size_t i = 0; i < 32768; ++i){
__xlx_dp_matrix1_11__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_dp_matrix1_11)[i]);
}
  int __xlx_size_param_dp_matrix1_11 = 32768;
  int __xlx_offset_param_dp_matrix1_11 = 0;
  int __xlx_offset_byte_param_dp_matrix1_11 = 0*2;
  // Collect __xlx_dp_matrix1_12__tmp_vec
std::vector<Byte<2>> __xlx_dp_matrix1_12__tmp_vec;
for (size_t i = 0; i < 32768; ++i){
__xlx_dp_matrix1_12__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_dp_matrix1_12)[i]);
}
  int __xlx_size_param_dp_matrix1_12 = 32768;
  int __xlx_offset_param_dp_matrix1_12 = 0;
  int __xlx_offset_byte_param_dp_matrix1_12 = 0*2;
  // Collect __xlx_dp_matrix1_13__tmp_vec
std::vector<Byte<2>> __xlx_dp_matrix1_13__tmp_vec;
for (size_t i = 0; i < 32768; ++i){
__xlx_dp_matrix1_13__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_dp_matrix1_13)[i]);
}
  int __xlx_size_param_dp_matrix1_13 = 32768;
  int __xlx_offset_param_dp_matrix1_13 = 0;
  int __xlx_offset_byte_param_dp_matrix1_13 = 0*2;
  // Collect __xlx_dp_matrix1_14__tmp_vec
std::vector<Byte<2>> __xlx_dp_matrix1_14__tmp_vec;
for (size_t i = 0; i < 32768; ++i){
__xlx_dp_matrix1_14__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_dp_matrix1_14)[i]);
}
  int __xlx_size_param_dp_matrix1_14 = 32768;
  int __xlx_offset_param_dp_matrix1_14 = 0;
  int __xlx_offset_byte_param_dp_matrix1_14 = 0*2;
  // Collect __xlx_dp_matrix1_15__tmp_vec
std::vector<Byte<2>> __xlx_dp_matrix1_15__tmp_vec;
for (size_t i = 0; i < 32768; ++i){
__xlx_dp_matrix1_15__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_dp_matrix1_15)[i]);
}
  int __xlx_size_param_dp_matrix1_15 = 32768;
  int __xlx_offset_param_dp_matrix1_15 = 0;
  int __xlx_offset_byte_param_dp_matrix1_15 = 0*2;
  // Collect __xlx_dp_matrix2__tmp_vec
std::vector<Byte<2>> __xlx_dp_matrix2__tmp_vec;
for (size_t i = 0; i < 524288; ++i){
__xlx_dp_matrix2__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_dp_matrix2)[i]);
}
  int __xlx_size_param_dp_matrix2 = 524288;
  int __xlx_offset_param_dp_matrix2 = 0;
  int __xlx_offset_byte_param_dp_matrix2 = 0*2;
  // DUT call
  seq_align_multiple(__xlx_query_string_comp__tmp_vec.data(), __xlx_reference_string_comp__tmp_vec.data(), __xlx_apatb_param_dp_mem_0_0, __xlx_apatb_param_dp_mem_0_1, __xlx_apatb_param_dp_mem_0_2, __xlx_apatb_param_dp_mem_0_3, __xlx_apatb_param_dp_mem_0_4, __xlx_apatb_param_dp_mem_0_5, __xlx_apatb_param_dp_mem_0_6, __xlx_apatb_param_dp_mem_0_7, __xlx_apatb_param_dp_mem_0_8, __xlx_apatb_param_dp_mem_0_9, __xlx_apatb_param_dp_mem_0_10, __xlx_apatb_param_dp_mem_0_11, __xlx_apatb_param_dp_mem_0_12, __xlx_apatb_param_dp_mem_0_13, __xlx_apatb_param_dp_mem_0_14, __xlx_apatb_param_dp_mem_0_15, __xlx_apatb_param_dp_mem_0_16, __xlx_apatb_param_dp_mem_0_17, __xlx_apatb_param_dp_mem_0_18, __xlx_apatb_param_dp_mem_0_19, __xlx_apatb_param_dp_mem_0_20, __xlx_apatb_param_dp_mem_0_21, __xlx_apatb_param_dp_mem_0_22, __xlx_apatb_param_dp_mem_0_23, __xlx_apatb_param_dp_mem_0_24, __xlx_apatb_param_dp_mem_0_25, __xlx_apatb_param_dp_mem_0_26, __xlx_apatb_param_dp_mem_0_27, __xlx_apatb_param_dp_mem_0_28, __xlx_apatb_param_dp_mem_0_29, __xlx_apatb_param_dp_mem_0_30, __xlx_apatb_param_dp_mem_0_31, __xlx_apatb_param_dp_mem_1_0, __xlx_apatb_param_dp_mem_1_1, __xlx_apatb_param_dp_mem_1_2, __xlx_apatb_param_dp_mem_1_3, __xlx_apatb_param_dp_mem_1_4, __xlx_apatb_param_dp_mem_1_5, __xlx_apatb_param_dp_mem_1_6, __xlx_apatb_param_dp_mem_1_7, __xlx_apatb_param_dp_mem_1_8, __xlx_apatb_param_dp_mem_1_9, __xlx_apatb_param_dp_mem_1_10, __xlx_apatb_param_dp_mem_1_11, __xlx_apatb_param_dp_mem_1_12, __xlx_apatb_param_dp_mem_1_13, __xlx_apatb_param_dp_mem_1_14, __xlx_apatb_param_dp_mem_1_15, __xlx_apatb_param_dp_mem_1_16, __xlx_apatb_param_dp_mem_1_17, __xlx_apatb_param_dp_mem_1_18, __xlx_apatb_param_dp_mem_1_19, __xlx_apatb_param_dp_mem_1_20, __xlx_apatb_param_dp_mem_1_21, __xlx_apatb_param_dp_mem_1_22, __xlx_apatb_param_dp_mem_1_23, __xlx_apatb_param_dp_mem_1_24, __xlx_apatb_param_dp_mem_1_25, __xlx_apatb_param_dp_mem_1_26, __xlx_apatb_param_dp_mem_1_27, __xlx_apatb_param_dp_mem_1_28, __xlx_apatb_param_dp_mem_1_29, __xlx_apatb_param_dp_mem_1_30, __xlx_apatb_param_dp_mem_1_31, __xlx_apatb_param_dp_mem_2_0, __xlx_apatb_param_dp_mem_2_1, __xlx_apatb_param_dp_mem_2_2, __xlx_apatb_param_dp_mem_2_3, __xlx_apatb_param_dp_mem_2_4, __xlx_apatb_param_dp_mem_2_5, __xlx_apatb_param_dp_mem_2_6, __xlx_apatb_param_dp_mem_2_7, __xlx_apatb_param_dp_mem_2_8, __xlx_apatb_param_dp_mem_2_9, __xlx_apatb_param_dp_mem_2_10, __xlx_apatb_param_dp_mem_2_11, __xlx_apatb_param_dp_mem_2_12, __xlx_apatb_param_dp_mem_2_13, __xlx_apatb_param_dp_mem_2_14, __xlx_apatb_param_dp_mem_2_15, __xlx_apatb_param_dp_mem_2_16, __xlx_apatb_param_dp_mem_2_17, __xlx_apatb_param_dp_mem_2_18, __xlx_apatb_param_dp_mem_2_19, __xlx_apatb_param_dp_mem_2_20, __xlx_apatb_param_dp_mem_2_21, __xlx_apatb_param_dp_mem_2_22, __xlx_apatb_param_dp_mem_2_23, __xlx_apatb_param_dp_mem_2_24, __xlx_apatb_param_dp_mem_2_25, __xlx_apatb_param_dp_mem_2_26, __xlx_apatb_param_dp_mem_2_27, __xlx_apatb_param_dp_mem_2_28, __xlx_apatb_param_dp_mem_2_29, __xlx_apatb_param_dp_mem_2_30, __xlx_apatb_param_dp_mem_2_31, __xlx_apatb_param_Ix_mem_0_0, __xlx_apatb_param_Ix_mem_0_1, __xlx_apatb_param_Ix_mem_0_2, __xlx_apatb_param_Ix_mem_0_3, __xlx_apatb_param_Ix_mem_0_4, __xlx_apatb_param_Ix_mem_0_5, __xlx_apatb_param_Ix_mem_0_6, __xlx_apatb_param_Ix_mem_0_7, __xlx_apatb_param_Ix_mem_0_8, __xlx_apatb_param_Ix_mem_0_9, __xlx_apatb_param_Ix_mem_0_10, __xlx_apatb_param_Ix_mem_0_11, __xlx_apatb_param_Ix_mem_0_12, __xlx_apatb_param_Ix_mem_0_13, __xlx_apatb_param_Ix_mem_0_14, __xlx_apatb_param_Ix_mem_0_15, __xlx_apatb_param_Ix_mem_0_16, __xlx_apatb_param_Ix_mem_0_17, __xlx_apatb_param_Ix_mem_0_18, __xlx_apatb_param_Ix_mem_0_19, __xlx_apatb_param_Ix_mem_0_20, __xlx_apatb_param_Ix_mem_0_21, __xlx_apatb_param_Ix_mem_0_22, __xlx_apatb_param_Ix_mem_0_23, __xlx_apatb_param_Ix_mem_0_24, __xlx_apatb_param_Ix_mem_0_25, __xlx_apatb_param_Ix_mem_0_26, __xlx_apatb_param_Ix_mem_0_27, __xlx_apatb_param_Ix_mem_0_28, __xlx_apatb_param_Ix_mem_0_29, __xlx_apatb_param_Ix_mem_0_30, __xlx_apatb_param_Ix_mem_0_31, __xlx_apatb_param_Ix_mem_1_0, __xlx_apatb_param_Ix_mem_1_1, __xlx_apatb_param_Ix_mem_1_2, __xlx_apatb_param_Ix_mem_1_3, __xlx_apatb_param_Ix_mem_1_4, __xlx_apatb_param_Ix_mem_1_5, __xlx_apatb_param_Ix_mem_1_6, __xlx_apatb_param_Ix_mem_1_7, __xlx_apatb_param_Ix_mem_1_8, __xlx_apatb_param_Ix_mem_1_9, __xlx_apatb_param_Ix_mem_1_10, __xlx_apatb_param_Ix_mem_1_11, __xlx_apatb_param_Ix_mem_1_12, __xlx_apatb_param_Ix_mem_1_13, __xlx_apatb_param_Ix_mem_1_14, __xlx_apatb_param_Ix_mem_1_15, __xlx_apatb_param_Ix_mem_1_16, __xlx_apatb_param_Ix_mem_1_17, __xlx_apatb_param_Ix_mem_1_18, __xlx_apatb_param_Ix_mem_1_19, __xlx_apatb_param_Ix_mem_1_20, __xlx_apatb_param_Ix_mem_1_21, __xlx_apatb_param_Ix_mem_1_22, __xlx_apatb_param_Ix_mem_1_23, __xlx_apatb_param_Ix_mem_1_24, __xlx_apatb_param_Ix_mem_1_25, __xlx_apatb_param_Ix_mem_1_26, __xlx_apatb_param_Ix_mem_1_27, __xlx_apatb_param_Ix_mem_1_28, __xlx_apatb_param_Ix_mem_1_29, __xlx_apatb_param_Ix_mem_1_30, __xlx_apatb_param_Ix_mem_1_31, __xlx_apatb_param_Iy_mem_0_0, __xlx_apatb_param_Iy_mem_0_1, __xlx_apatb_param_Iy_mem_0_2, __xlx_apatb_param_Iy_mem_0_3, __xlx_apatb_param_Iy_mem_0_4, __xlx_apatb_param_Iy_mem_0_5, __xlx_apatb_param_Iy_mem_0_6, __xlx_apatb_param_Iy_mem_0_7, __xlx_apatb_param_Iy_mem_0_8, __xlx_apatb_param_Iy_mem_0_9, __xlx_apatb_param_Iy_mem_0_10, __xlx_apatb_param_Iy_mem_0_11, __xlx_apatb_param_Iy_mem_0_12, __xlx_apatb_param_Iy_mem_0_13, __xlx_apatb_param_Iy_mem_0_14, __xlx_apatb_param_Iy_mem_0_15, __xlx_apatb_param_Iy_mem_0_16, __xlx_apatb_param_Iy_mem_0_17, __xlx_apatb_param_Iy_mem_0_18, __xlx_apatb_param_Iy_mem_0_19, __xlx_apatb_param_Iy_mem_0_20, __xlx_apatb_param_Iy_mem_0_21, __xlx_apatb_param_Iy_mem_0_22, __xlx_apatb_param_Iy_mem_0_23, __xlx_apatb_param_Iy_mem_0_24, __xlx_apatb_param_Iy_mem_0_25, __xlx_apatb_param_Iy_mem_0_26, __xlx_apatb_param_Iy_mem_0_27, __xlx_apatb_param_Iy_mem_0_28, __xlx_apatb_param_Iy_mem_0_29, __xlx_apatb_param_Iy_mem_0_30, __xlx_apatb_param_Iy_mem_0_31, __xlx_apatb_param_Iy_mem_1_0, __xlx_apatb_param_Iy_mem_1_1, __xlx_apatb_param_Iy_mem_1_2, __xlx_apatb_param_Iy_mem_1_3, __xlx_apatb_param_Iy_mem_1_4, __xlx_apatb_param_Iy_mem_1_5, __xlx_apatb_param_Iy_mem_1_6, __xlx_apatb_param_Iy_mem_1_7, __xlx_apatb_param_Iy_mem_1_8, __xlx_apatb_param_Iy_mem_1_9, __xlx_apatb_param_Iy_mem_1_10, __xlx_apatb_param_Iy_mem_1_11, __xlx_apatb_param_Iy_mem_1_12, __xlx_apatb_param_Iy_mem_1_13, __xlx_apatb_param_Iy_mem_1_14, __xlx_apatb_param_Iy_mem_1_15, __xlx_apatb_param_Iy_mem_1_16, __xlx_apatb_param_Iy_mem_1_17, __xlx_apatb_param_Iy_mem_1_18, __xlx_apatb_param_Iy_mem_1_19, __xlx_apatb_param_Iy_mem_1_20, __xlx_apatb_param_Iy_mem_1_21, __xlx_apatb_param_Iy_mem_1_22, __xlx_apatb_param_Iy_mem_1_23, __xlx_apatb_param_Iy_mem_1_24, __xlx_apatb_param_Iy_mem_1_25, __xlx_apatb_param_Iy_mem_1_26, __xlx_apatb_param_Iy_mem_1_27, __xlx_apatb_param_Iy_mem_1_28, __xlx_apatb_param_Iy_mem_1_29, __xlx_apatb_param_Iy_mem_1_30, __xlx_apatb_param_Iy_mem_1_31, __xlx_last_pe_score__tmp_vec.data(), __xlx_last_pe_scoreIx__tmp_vec.data(), __xlx_dp_matrix1_0__tmp_vec.data(), __xlx_dp_matrix1_1__tmp_vec.data(), __xlx_dp_matrix1_2__tmp_vec.data(), __xlx_dp_matrix1_3__tmp_vec.data(), __xlx_dp_matrix1_4__tmp_vec.data(), __xlx_dp_matrix1_5__tmp_vec.data(), __xlx_dp_matrix1_6__tmp_vec.data(), __xlx_dp_matrix1_7__tmp_vec.data(), __xlx_dp_matrix1_8__tmp_vec.data(), __xlx_dp_matrix1_9__tmp_vec.data(), __xlx_dp_matrix1_10__tmp_vec.data(), __xlx_dp_matrix1_11__tmp_vec.data(), __xlx_dp_matrix1_12__tmp_vec.data(), __xlx_dp_matrix1_13__tmp_vec.data(), __xlx_dp_matrix1_14__tmp_vec.data(), __xlx_dp_matrix1_15__tmp_vec.data(), __xlx_dp_matrix2__tmp_vec.data());
// print __xlx_apatb_param_query_string_comp
for (size_t i = 0; i < __xlx_size_param_query_string_comp; ++i) {
((Byte<1>*)__xlx_apatb_param_query_string_comp)[i] = __xlx_query_string_comp__tmp_vec[__xlx_offset_param_query_string_comp+i];
}
// print __xlx_apatb_param_reference_string_comp
for (size_t i = 0; i < __xlx_size_param_reference_string_comp; ++i) {
((Byte<1>*)__xlx_apatb_param_reference_string_comp)[i] = __xlx_reference_string_comp__tmp_vec[__xlx_offset_param_reference_string_comp+i];
}
// print __xlx_apatb_param_last_pe_score
for (size_t i = 0; i < __xlx_size_param_last_pe_score; ++i) {
((Byte<2>*)__xlx_apatb_param_last_pe_score)[i] = __xlx_last_pe_score__tmp_vec[__xlx_offset_param_last_pe_score+i];
}
// print __xlx_apatb_param_last_pe_scoreIx
for (size_t i = 0; i < __xlx_size_param_last_pe_scoreIx; ++i) {
((Byte<2>*)__xlx_apatb_param_last_pe_scoreIx)[i] = __xlx_last_pe_scoreIx__tmp_vec[__xlx_offset_param_last_pe_scoreIx+i];
}
// print __xlx_apatb_param_dp_matrix1_0
for (size_t i = 0; i < __xlx_size_param_dp_matrix1_0; ++i) {
((Byte<2>*)__xlx_apatb_param_dp_matrix1_0)[i] = __xlx_dp_matrix1_0__tmp_vec[__xlx_offset_param_dp_matrix1_0+i];
}
// print __xlx_apatb_param_dp_matrix1_1
for (size_t i = 0; i < __xlx_size_param_dp_matrix1_1; ++i) {
((Byte<2>*)__xlx_apatb_param_dp_matrix1_1)[i] = __xlx_dp_matrix1_1__tmp_vec[__xlx_offset_param_dp_matrix1_1+i];
}
// print __xlx_apatb_param_dp_matrix1_2
for (size_t i = 0; i < __xlx_size_param_dp_matrix1_2; ++i) {
((Byte<2>*)__xlx_apatb_param_dp_matrix1_2)[i] = __xlx_dp_matrix1_2__tmp_vec[__xlx_offset_param_dp_matrix1_2+i];
}
// print __xlx_apatb_param_dp_matrix1_3
for (size_t i = 0; i < __xlx_size_param_dp_matrix1_3; ++i) {
((Byte<2>*)__xlx_apatb_param_dp_matrix1_3)[i] = __xlx_dp_matrix1_3__tmp_vec[__xlx_offset_param_dp_matrix1_3+i];
}
// print __xlx_apatb_param_dp_matrix1_4
for (size_t i = 0; i < __xlx_size_param_dp_matrix1_4; ++i) {
((Byte<2>*)__xlx_apatb_param_dp_matrix1_4)[i] = __xlx_dp_matrix1_4__tmp_vec[__xlx_offset_param_dp_matrix1_4+i];
}
// print __xlx_apatb_param_dp_matrix1_5
for (size_t i = 0; i < __xlx_size_param_dp_matrix1_5; ++i) {
((Byte<2>*)__xlx_apatb_param_dp_matrix1_5)[i] = __xlx_dp_matrix1_5__tmp_vec[__xlx_offset_param_dp_matrix1_5+i];
}
// print __xlx_apatb_param_dp_matrix1_6
for (size_t i = 0; i < __xlx_size_param_dp_matrix1_6; ++i) {
((Byte<2>*)__xlx_apatb_param_dp_matrix1_6)[i] = __xlx_dp_matrix1_6__tmp_vec[__xlx_offset_param_dp_matrix1_6+i];
}
// print __xlx_apatb_param_dp_matrix1_7
for (size_t i = 0; i < __xlx_size_param_dp_matrix1_7; ++i) {
((Byte<2>*)__xlx_apatb_param_dp_matrix1_7)[i] = __xlx_dp_matrix1_7__tmp_vec[__xlx_offset_param_dp_matrix1_7+i];
}
// print __xlx_apatb_param_dp_matrix1_8
for (size_t i = 0; i < __xlx_size_param_dp_matrix1_8; ++i) {
((Byte<2>*)__xlx_apatb_param_dp_matrix1_8)[i] = __xlx_dp_matrix1_8__tmp_vec[__xlx_offset_param_dp_matrix1_8+i];
}
// print __xlx_apatb_param_dp_matrix1_9
for (size_t i = 0; i < __xlx_size_param_dp_matrix1_9; ++i) {
((Byte<2>*)__xlx_apatb_param_dp_matrix1_9)[i] = __xlx_dp_matrix1_9__tmp_vec[__xlx_offset_param_dp_matrix1_9+i];
}
// print __xlx_apatb_param_dp_matrix1_10
for (size_t i = 0; i < __xlx_size_param_dp_matrix1_10; ++i) {
((Byte<2>*)__xlx_apatb_param_dp_matrix1_10)[i] = __xlx_dp_matrix1_10__tmp_vec[__xlx_offset_param_dp_matrix1_10+i];
}
// print __xlx_apatb_param_dp_matrix1_11
for (size_t i = 0; i < __xlx_size_param_dp_matrix1_11; ++i) {
((Byte<2>*)__xlx_apatb_param_dp_matrix1_11)[i] = __xlx_dp_matrix1_11__tmp_vec[__xlx_offset_param_dp_matrix1_11+i];
}
// print __xlx_apatb_param_dp_matrix1_12
for (size_t i = 0; i < __xlx_size_param_dp_matrix1_12; ++i) {
((Byte<2>*)__xlx_apatb_param_dp_matrix1_12)[i] = __xlx_dp_matrix1_12__tmp_vec[__xlx_offset_param_dp_matrix1_12+i];
}
// print __xlx_apatb_param_dp_matrix1_13
for (size_t i = 0; i < __xlx_size_param_dp_matrix1_13; ++i) {
((Byte<2>*)__xlx_apatb_param_dp_matrix1_13)[i] = __xlx_dp_matrix1_13__tmp_vec[__xlx_offset_param_dp_matrix1_13+i];
}
// print __xlx_apatb_param_dp_matrix1_14
for (size_t i = 0; i < __xlx_size_param_dp_matrix1_14; ++i) {
((Byte<2>*)__xlx_apatb_param_dp_matrix1_14)[i] = __xlx_dp_matrix1_14__tmp_vec[__xlx_offset_param_dp_matrix1_14+i];
}
// print __xlx_apatb_param_dp_matrix1_15
for (size_t i = 0; i < __xlx_size_param_dp_matrix1_15; ++i) {
((Byte<2>*)__xlx_apatb_param_dp_matrix1_15)[i] = __xlx_dp_matrix1_15__tmp_vec[__xlx_offset_param_dp_matrix1_15+i];
}
// print __xlx_apatb_param_dp_matrix2
for (size_t i = 0; i < __xlx_size_param_dp_matrix2; ++i) {
((Byte<2>*)__xlx_apatb_param_dp_matrix2)[i] = __xlx_dp_matrix2__tmp_vec[__xlx_offset_param_dp_matrix2+i];
}
}
