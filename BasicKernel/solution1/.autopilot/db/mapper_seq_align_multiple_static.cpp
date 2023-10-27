#include "hls_signal_handler.h"
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
struct __cosim_s8__ { char data[8]; };
extern "C" void seq_align_multiple_static(Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<1>*, Byte<4>*, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, __cosim_s8__, int);
extern "C" void apatb_seq_align_multiple_static_hw(volatile void * __xlx_apatb_param_querys_0, volatile void * __xlx_apatb_param_querys_1, volatile void * __xlx_apatb_param_querys_2, volatile void * __xlx_apatb_param_querys_3, volatile void * __xlx_apatb_param_querys_4, volatile void * __xlx_apatb_param_querys_5, volatile void * __xlx_apatb_param_querys_6, volatile void * __xlx_apatb_param_querys_7, volatile void * __xlx_apatb_param_querys_8, volatile void * __xlx_apatb_param_querys_9, volatile void * __xlx_apatb_param_querys_10, volatile void * __xlx_apatb_param_querys_11, volatile void * __xlx_apatb_param_querys_12, volatile void * __xlx_apatb_param_querys_13, volatile void * __xlx_apatb_param_querys_14, volatile void * __xlx_apatb_param_querys_15, volatile void * __xlx_apatb_param_querys_16, volatile void * __xlx_apatb_param_querys_17, volatile void * __xlx_apatb_param_querys_18, volatile void * __xlx_apatb_param_querys_19, volatile void * __xlx_apatb_param_querys_20, volatile void * __xlx_apatb_param_querys_21, volatile void * __xlx_apatb_param_querys_22, volatile void * __xlx_apatb_param_querys_23, volatile void * __xlx_apatb_param_querys_24, volatile void * __xlx_apatb_param_querys_25, volatile void * __xlx_apatb_param_querys_26, volatile void * __xlx_apatb_param_querys_27, volatile void * __xlx_apatb_param_querys_28, volatile void * __xlx_apatb_param_querys_29, volatile void * __xlx_apatb_param_querys_30, volatile void * __xlx_apatb_param_querys_31, volatile void * __xlx_apatb_param_references, volatile void * __xlx_apatb_param_query_lengths, volatile void * __xlx_apatb_param_reference_lengths, __cosim_s8__* __xlx_apatb_param_penalties, volatile void * __xlx_apatb_param_tb_streams) {
using hls::sim::createStream;
  // Collect __xlx_querys_0__tmp_vec
std::vector<Byte<1>> __xlx_querys_0__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_0__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_0)[i]);
}
  int __xlx_size_param_querys_0 = 256;
  int __xlx_offset_param_querys_0 = 0;
  int __xlx_offset_byte_param_querys_0 = 0*1;
  // Collect __xlx_querys_1__tmp_vec
std::vector<Byte<1>> __xlx_querys_1__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_1__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_1)[i]);
}
  int __xlx_size_param_querys_1 = 256;
  int __xlx_offset_param_querys_1 = 0;
  int __xlx_offset_byte_param_querys_1 = 0*1;
  // Collect __xlx_querys_2__tmp_vec
std::vector<Byte<1>> __xlx_querys_2__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_2__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_2)[i]);
}
  int __xlx_size_param_querys_2 = 256;
  int __xlx_offset_param_querys_2 = 0;
  int __xlx_offset_byte_param_querys_2 = 0*1;
  // Collect __xlx_querys_3__tmp_vec
std::vector<Byte<1>> __xlx_querys_3__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_3__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_3)[i]);
}
  int __xlx_size_param_querys_3 = 256;
  int __xlx_offset_param_querys_3 = 0;
  int __xlx_offset_byte_param_querys_3 = 0*1;
  // Collect __xlx_querys_4__tmp_vec
std::vector<Byte<1>> __xlx_querys_4__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_4__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_4)[i]);
}
  int __xlx_size_param_querys_4 = 256;
  int __xlx_offset_param_querys_4 = 0;
  int __xlx_offset_byte_param_querys_4 = 0*1;
  // Collect __xlx_querys_5__tmp_vec
std::vector<Byte<1>> __xlx_querys_5__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_5__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_5)[i]);
}
  int __xlx_size_param_querys_5 = 256;
  int __xlx_offset_param_querys_5 = 0;
  int __xlx_offset_byte_param_querys_5 = 0*1;
  // Collect __xlx_querys_6__tmp_vec
std::vector<Byte<1>> __xlx_querys_6__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_6__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_6)[i]);
}
  int __xlx_size_param_querys_6 = 256;
  int __xlx_offset_param_querys_6 = 0;
  int __xlx_offset_byte_param_querys_6 = 0*1;
  // Collect __xlx_querys_7__tmp_vec
std::vector<Byte<1>> __xlx_querys_7__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_7__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_7)[i]);
}
  int __xlx_size_param_querys_7 = 256;
  int __xlx_offset_param_querys_7 = 0;
  int __xlx_offset_byte_param_querys_7 = 0*1;
  // Collect __xlx_querys_8__tmp_vec
std::vector<Byte<1>> __xlx_querys_8__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_8__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_8)[i]);
}
  int __xlx_size_param_querys_8 = 256;
  int __xlx_offset_param_querys_8 = 0;
  int __xlx_offset_byte_param_querys_8 = 0*1;
  // Collect __xlx_querys_9__tmp_vec
std::vector<Byte<1>> __xlx_querys_9__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_9__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_9)[i]);
}
  int __xlx_size_param_querys_9 = 256;
  int __xlx_offset_param_querys_9 = 0;
  int __xlx_offset_byte_param_querys_9 = 0*1;
  // Collect __xlx_querys_10__tmp_vec
std::vector<Byte<1>> __xlx_querys_10__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_10__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_10)[i]);
}
  int __xlx_size_param_querys_10 = 256;
  int __xlx_offset_param_querys_10 = 0;
  int __xlx_offset_byte_param_querys_10 = 0*1;
  // Collect __xlx_querys_11__tmp_vec
std::vector<Byte<1>> __xlx_querys_11__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_11__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_11)[i]);
}
  int __xlx_size_param_querys_11 = 256;
  int __xlx_offset_param_querys_11 = 0;
  int __xlx_offset_byte_param_querys_11 = 0*1;
  // Collect __xlx_querys_12__tmp_vec
std::vector<Byte<1>> __xlx_querys_12__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_12__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_12)[i]);
}
  int __xlx_size_param_querys_12 = 256;
  int __xlx_offset_param_querys_12 = 0;
  int __xlx_offset_byte_param_querys_12 = 0*1;
  // Collect __xlx_querys_13__tmp_vec
std::vector<Byte<1>> __xlx_querys_13__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_13__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_13)[i]);
}
  int __xlx_size_param_querys_13 = 256;
  int __xlx_offset_param_querys_13 = 0;
  int __xlx_offset_byte_param_querys_13 = 0*1;
  // Collect __xlx_querys_14__tmp_vec
std::vector<Byte<1>> __xlx_querys_14__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_14__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_14)[i]);
}
  int __xlx_size_param_querys_14 = 256;
  int __xlx_offset_param_querys_14 = 0;
  int __xlx_offset_byte_param_querys_14 = 0*1;
  // Collect __xlx_querys_15__tmp_vec
std::vector<Byte<1>> __xlx_querys_15__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_15__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_15)[i]);
}
  int __xlx_size_param_querys_15 = 256;
  int __xlx_offset_param_querys_15 = 0;
  int __xlx_offset_byte_param_querys_15 = 0*1;
  // Collect __xlx_querys_16__tmp_vec
std::vector<Byte<1>> __xlx_querys_16__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_16__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_16)[i]);
}
  int __xlx_size_param_querys_16 = 256;
  int __xlx_offset_param_querys_16 = 0;
  int __xlx_offset_byte_param_querys_16 = 0*1;
  // Collect __xlx_querys_17__tmp_vec
std::vector<Byte<1>> __xlx_querys_17__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_17__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_17)[i]);
}
  int __xlx_size_param_querys_17 = 256;
  int __xlx_offset_param_querys_17 = 0;
  int __xlx_offset_byte_param_querys_17 = 0*1;
  // Collect __xlx_querys_18__tmp_vec
std::vector<Byte<1>> __xlx_querys_18__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_18__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_18)[i]);
}
  int __xlx_size_param_querys_18 = 256;
  int __xlx_offset_param_querys_18 = 0;
  int __xlx_offset_byte_param_querys_18 = 0*1;
  // Collect __xlx_querys_19__tmp_vec
std::vector<Byte<1>> __xlx_querys_19__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_19__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_19)[i]);
}
  int __xlx_size_param_querys_19 = 256;
  int __xlx_offset_param_querys_19 = 0;
  int __xlx_offset_byte_param_querys_19 = 0*1;
  // Collect __xlx_querys_20__tmp_vec
std::vector<Byte<1>> __xlx_querys_20__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_20__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_20)[i]);
}
  int __xlx_size_param_querys_20 = 256;
  int __xlx_offset_param_querys_20 = 0;
  int __xlx_offset_byte_param_querys_20 = 0*1;
  // Collect __xlx_querys_21__tmp_vec
std::vector<Byte<1>> __xlx_querys_21__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_21__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_21)[i]);
}
  int __xlx_size_param_querys_21 = 256;
  int __xlx_offset_param_querys_21 = 0;
  int __xlx_offset_byte_param_querys_21 = 0*1;
  // Collect __xlx_querys_22__tmp_vec
std::vector<Byte<1>> __xlx_querys_22__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_22__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_22)[i]);
}
  int __xlx_size_param_querys_22 = 256;
  int __xlx_offset_param_querys_22 = 0;
  int __xlx_offset_byte_param_querys_22 = 0*1;
  // Collect __xlx_querys_23__tmp_vec
std::vector<Byte<1>> __xlx_querys_23__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_23__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_23)[i]);
}
  int __xlx_size_param_querys_23 = 256;
  int __xlx_offset_param_querys_23 = 0;
  int __xlx_offset_byte_param_querys_23 = 0*1;
  // Collect __xlx_querys_24__tmp_vec
std::vector<Byte<1>> __xlx_querys_24__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_24__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_24)[i]);
}
  int __xlx_size_param_querys_24 = 256;
  int __xlx_offset_param_querys_24 = 0;
  int __xlx_offset_byte_param_querys_24 = 0*1;
  // Collect __xlx_querys_25__tmp_vec
std::vector<Byte<1>> __xlx_querys_25__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_25__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_25)[i]);
}
  int __xlx_size_param_querys_25 = 256;
  int __xlx_offset_param_querys_25 = 0;
  int __xlx_offset_byte_param_querys_25 = 0*1;
  // Collect __xlx_querys_26__tmp_vec
std::vector<Byte<1>> __xlx_querys_26__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_26__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_26)[i]);
}
  int __xlx_size_param_querys_26 = 256;
  int __xlx_offset_param_querys_26 = 0;
  int __xlx_offset_byte_param_querys_26 = 0*1;
  // Collect __xlx_querys_27__tmp_vec
std::vector<Byte<1>> __xlx_querys_27__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_27__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_27)[i]);
}
  int __xlx_size_param_querys_27 = 256;
  int __xlx_offset_param_querys_27 = 0;
  int __xlx_offset_byte_param_querys_27 = 0*1;
  // Collect __xlx_querys_28__tmp_vec
std::vector<Byte<1>> __xlx_querys_28__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_28__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_28)[i]);
}
  int __xlx_size_param_querys_28 = 256;
  int __xlx_offset_param_querys_28 = 0;
  int __xlx_offset_byte_param_querys_28 = 0*1;
  // Collect __xlx_querys_29__tmp_vec
std::vector<Byte<1>> __xlx_querys_29__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_29__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_29)[i]);
}
  int __xlx_size_param_querys_29 = 256;
  int __xlx_offset_param_querys_29 = 0;
  int __xlx_offset_byte_param_querys_29 = 0*1;
  // Collect __xlx_querys_30__tmp_vec
std::vector<Byte<1>> __xlx_querys_30__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_30__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_30)[i]);
}
  int __xlx_size_param_querys_30 = 256;
  int __xlx_offset_param_querys_30 = 0;
  int __xlx_offset_byte_param_querys_30 = 0*1;
  // Collect __xlx_querys_31__tmp_vec
std::vector<Byte<1>> __xlx_querys_31__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_querys_31__tmp_vec.push_back(((Byte<1>*)__xlx_apatb_param_querys_31)[i]);
}
  int __xlx_size_param_querys_31 = 256;
  int __xlx_offset_param_querys_31 = 0;
  int __xlx_offset_byte_param_querys_31 = 0*1;
  // Collect __xlx_references_query_lengths_reference_lengths_tb_streams__tmp_vec
std::vector<Byte<4>> __xlx_references_query_lengths_reference_lengths_tb_streams__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_references_query_lengths_reference_lengths_tb_streams__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_references)[i]);
}
  int __xlx_size_param_references = 64;
  int __xlx_offset_param_references = 0;
  int __xlx_offset_byte_param_references = 0*4;
for (size_t i = 0; i < 1; ++i){
__xlx_references_query_lengths_reference_lengths_tb_streams__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_query_lengths)[i]);
}
  int __xlx_size_param_query_lengths = 1;
  int __xlx_offset_param_query_lengths = 64;
  int __xlx_offset_byte_param_query_lengths = 64*4;
for (size_t i = 0; i < 1; ++i){
__xlx_references_query_lengths_reference_lengths_tb_streams__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_reference_lengths)[i]);
}
  int __xlx_size_param_reference_lengths = 1;
  int __xlx_offset_param_reference_lengths = 65;
  int __xlx_offset_byte_param_reference_lengths = 65*4;
for (size_t i = 0; i < 128; ++i){
__xlx_references_query_lengths_reference_lengths_tb_streams__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_tb_streams)[i]);
}
  int __xlx_size_param_tb_streams = 128;
  int __xlx_offset_param_tb_streams = 66;
  int __xlx_offset_byte_param_tb_streams = 66*4;
  // DUT call
  seq_align_multiple_static(__xlx_querys_0__tmp_vec.data(), __xlx_querys_1__tmp_vec.data(), __xlx_querys_2__tmp_vec.data(), __xlx_querys_3__tmp_vec.data(), __xlx_querys_4__tmp_vec.data(), __xlx_querys_5__tmp_vec.data(), __xlx_querys_6__tmp_vec.data(), __xlx_querys_7__tmp_vec.data(), __xlx_querys_8__tmp_vec.data(), __xlx_querys_9__tmp_vec.data(), __xlx_querys_10__tmp_vec.data(), __xlx_querys_11__tmp_vec.data(), __xlx_querys_12__tmp_vec.data(), __xlx_querys_13__tmp_vec.data(), __xlx_querys_14__tmp_vec.data(), __xlx_querys_15__tmp_vec.data(), __xlx_querys_16__tmp_vec.data(), __xlx_querys_17__tmp_vec.data(), __xlx_querys_18__tmp_vec.data(), __xlx_querys_19__tmp_vec.data(), __xlx_querys_20__tmp_vec.data(), __xlx_querys_21__tmp_vec.data(), __xlx_querys_22__tmp_vec.data(), __xlx_querys_23__tmp_vec.data(), __xlx_querys_24__tmp_vec.data(), __xlx_querys_25__tmp_vec.data(), __xlx_querys_26__tmp_vec.data(), __xlx_querys_27__tmp_vec.data(), __xlx_querys_28__tmp_vec.data(), __xlx_querys_29__tmp_vec.data(), __xlx_querys_30__tmp_vec.data(), __xlx_querys_31__tmp_vec.data(), __xlx_references_query_lengths_reference_lengths_tb_streams__tmp_vec.data(), __xlx_offset_byte_param_querys_0, __xlx_offset_byte_param_querys_1, __xlx_offset_byte_param_querys_2, __xlx_offset_byte_param_querys_3, __xlx_offset_byte_param_querys_4, __xlx_offset_byte_param_querys_5, __xlx_offset_byte_param_querys_6, __xlx_offset_byte_param_querys_7, __xlx_offset_byte_param_querys_8, __xlx_offset_byte_param_querys_9, __xlx_offset_byte_param_querys_10, __xlx_offset_byte_param_querys_11, __xlx_offset_byte_param_querys_12, __xlx_offset_byte_param_querys_13, __xlx_offset_byte_param_querys_14, __xlx_offset_byte_param_querys_15, __xlx_offset_byte_param_querys_16, __xlx_offset_byte_param_querys_17, __xlx_offset_byte_param_querys_18, __xlx_offset_byte_param_querys_19, __xlx_offset_byte_param_querys_20, __xlx_offset_byte_param_querys_21, __xlx_offset_byte_param_querys_22, __xlx_offset_byte_param_querys_23, __xlx_offset_byte_param_querys_24, __xlx_offset_byte_param_querys_25, __xlx_offset_byte_param_querys_26, __xlx_offset_byte_param_querys_27, __xlx_offset_byte_param_querys_28, __xlx_offset_byte_param_querys_29, __xlx_offset_byte_param_querys_30, __xlx_offset_byte_param_querys_31, __xlx_offset_byte_param_references, __xlx_offset_byte_param_query_lengths, __xlx_offset_byte_param_reference_lengths, *__xlx_apatb_param_penalties, __xlx_offset_byte_param_tb_streams);
// print __xlx_apatb_param_querys_0
for (size_t i = 0; i < __xlx_size_param_querys_0; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_0)[i] = __xlx_querys_0__tmp_vec[__xlx_offset_param_querys_0+i];
}
// print __xlx_apatb_param_querys_1
for (size_t i = 0; i < __xlx_size_param_querys_1; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_1)[i] = __xlx_querys_1__tmp_vec[__xlx_offset_param_querys_1+i];
}
// print __xlx_apatb_param_querys_2
for (size_t i = 0; i < __xlx_size_param_querys_2; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_2)[i] = __xlx_querys_2__tmp_vec[__xlx_offset_param_querys_2+i];
}
// print __xlx_apatb_param_querys_3
for (size_t i = 0; i < __xlx_size_param_querys_3; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_3)[i] = __xlx_querys_3__tmp_vec[__xlx_offset_param_querys_3+i];
}
// print __xlx_apatb_param_querys_4
for (size_t i = 0; i < __xlx_size_param_querys_4; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_4)[i] = __xlx_querys_4__tmp_vec[__xlx_offset_param_querys_4+i];
}
// print __xlx_apatb_param_querys_5
for (size_t i = 0; i < __xlx_size_param_querys_5; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_5)[i] = __xlx_querys_5__tmp_vec[__xlx_offset_param_querys_5+i];
}
// print __xlx_apatb_param_querys_6
for (size_t i = 0; i < __xlx_size_param_querys_6; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_6)[i] = __xlx_querys_6__tmp_vec[__xlx_offset_param_querys_6+i];
}
// print __xlx_apatb_param_querys_7
for (size_t i = 0; i < __xlx_size_param_querys_7; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_7)[i] = __xlx_querys_7__tmp_vec[__xlx_offset_param_querys_7+i];
}
// print __xlx_apatb_param_querys_8
for (size_t i = 0; i < __xlx_size_param_querys_8; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_8)[i] = __xlx_querys_8__tmp_vec[__xlx_offset_param_querys_8+i];
}
// print __xlx_apatb_param_querys_9
for (size_t i = 0; i < __xlx_size_param_querys_9; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_9)[i] = __xlx_querys_9__tmp_vec[__xlx_offset_param_querys_9+i];
}
// print __xlx_apatb_param_querys_10
for (size_t i = 0; i < __xlx_size_param_querys_10; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_10)[i] = __xlx_querys_10__tmp_vec[__xlx_offset_param_querys_10+i];
}
// print __xlx_apatb_param_querys_11
for (size_t i = 0; i < __xlx_size_param_querys_11; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_11)[i] = __xlx_querys_11__tmp_vec[__xlx_offset_param_querys_11+i];
}
// print __xlx_apatb_param_querys_12
for (size_t i = 0; i < __xlx_size_param_querys_12; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_12)[i] = __xlx_querys_12__tmp_vec[__xlx_offset_param_querys_12+i];
}
// print __xlx_apatb_param_querys_13
for (size_t i = 0; i < __xlx_size_param_querys_13; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_13)[i] = __xlx_querys_13__tmp_vec[__xlx_offset_param_querys_13+i];
}
// print __xlx_apatb_param_querys_14
for (size_t i = 0; i < __xlx_size_param_querys_14; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_14)[i] = __xlx_querys_14__tmp_vec[__xlx_offset_param_querys_14+i];
}
// print __xlx_apatb_param_querys_15
for (size_t i = 0; i < __xlx_size_param_querys_15; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_15)[i] = __xlx_querys_15__tmp_vec[__xlx_offset_param_querys_15+i];
}
// print __xlx_apatb_param_querys_16
for (size_t i = 0; i < __xlx_size_param_querys_16; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_16)[i] = __xlx_querys_16__tmp_vec[__xlx_offset_param_querys_16+i];
}
// print __xlx_apatb_param_querys_17
for (size_t i = 0; i < __xlx_size_param_querys_17; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_17)[i] = __xlx_querys_17__tmp_vec[__xlx_offset_param_querys_17+i];
}
// print __xlx_apatb_param_querys_18
for (size_t i = 0; i < __xlx_size_param_querys_18; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_18)[i] = __xlx_querys_18__tmp_vec[__xlx_offset_param_querys_18+i];
}
// print __xlx_apatb_param_querys_19
for (size_t i = 0; i < __xlx_size_param_querys_19; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_19)[i] = __xlx_querys_19__tmp_vec[__xlx_offset_param_querys_19+i];
}
// print __xlx_apatb_param_querys_20
for (size_t i = 0; i < __xlx_size_param_querys_20; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_20)[i] = __xlx_querys_20__tmp_vec[__xlx_offset_param_querys_20+i];
}
// print __xlx_apatb_param_querys_21
for (size_t i = 0; i < __xlx_size_param_querys_21; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_21)[i] = __xlx_querys_21__tmp_vec[__xlx_offset_param_querys_21+i];
}
// print __xlx_apatb_param_querys_22
for (size_t i = 0; i < __xlx_size_param_querys_22; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_22)[i] = __xlx_querys_22__tmp_vec[__xlx_offset_param_querys_22+i];
}
// print __xlx_apatb_param_querys_23
for (size_t i = 0; i < __xlx_size_param_querys_23; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_23)[i] = __xlx_querys_23__tmp_vec[__xlx_offset_param_querys_23+i];
}
// print __xlx_apatb_param_querys_24
for (size_t i = 0; i < __xlx_size_param_querys_24; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_24)[i] = __xlx_querys_24__tmp_vec[__xlx_offset_param_querys_24+i];
}
// print __xlx_apatb_param_querys_25
for (size_t i = 0; i < __xlx_size_param_querys_25; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_25)[i] = __xlx_querys_25__tmp_vec[__xlx_offset_param_querys_25+i];
}
// print __xlx_apatb_param_querys_26
for (size_t i = 0; i < __xlx_size_param_querys_26; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_26)[i] = __xlx_querys_26__tmp_vec[__xlx_offset_param_querys_26+i];
}
// print __xlx_apatb_param_querys_27
for (size_t i = 0; i < __xlx_size_param_querys_27; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_27)[i] = __xlx_querys_27__tmp_vec[__xlx_offset_param_querys_27+i];
}
// print __xlx_apatb_param_querys_28
for (size_t i = 0; i < __xlx_size_param_querys_28; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_28)[i] = __xlx_querys_28__tmp_vec[__xlx_offset_param_querys_28+i];
}
// print __xlx_apatb_param_querys_29
for (size_t i = 0; i < __xlx_size_param_querys_29; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_29)[i] = __xlx_querys_29__tmp_vec[__xlx_offset_param_querys_29+i];
}
// print __xlx_apatb_param_querys_30
for (size_t i = 0; i < __xlx_size_param_querys_30; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_30)[i] = __xlx_querys_30__tmp_vec[__xlx_offset_param_querys_30+i];
}
// print __xlx_apatb_param_querys_31
for (size_t i = 0; i < __xlx_size_param_querys_31; ++i) {
((Byte<1>*)__xlx_apatb_param_querys_31)[i] = __xlx_querys_31__tmp_vec[__xlx_offset_param_querys_31+i];
}
// print __xlx_apatb_param_references
for (size_t i = 0; i < __xlx_size_param_references; ++i) {
((Byte<4>*)__xlx_apatb_param_references)[i] = __xlx_references_query_lengths_reference_lengths_tb_streams__tmp_vec[__xlx_offset_param_references+i];
}
// print __xlx_apatb_param_query_lengths
for (size_t i = 0; i < __xlx_size_param_query_lengths; ++i) {
((Byte<4>*)__xlx_apatb_param_query_lengths)[i] = __xlx_references_query_lengths_reference_lengths_tb_streams__tmp_vec[__xlx_offset_param_query_lengths+i];
}
// print __xlx_apatb_param_reference_lengths
for (size_t i = 0; i < __xlx_size_param_reference_lengths; ++i) {
((Byte<4>*)__xlx_apatb_param_reference_lengths)[i] = __xlx_references_query_lengths_reference_lengths_tb_streams__tmp_vec[__xlx_offset_param_reference_lengths+i];
}
// print __xlx_apatb_param_tb_streams
for (size_t i = 0; i < __xlx_size_param_tb_streams; ++i) {
((Byte<4>*)__xlx_apatb_param_tb_streams)[i] = __xlx_references_query_lengths_reference_lengths_tb_streams__tmp_vec[__xlx_offset_param_tb_streams+i];
}
}
