#include "../include/utils.h"


template<typename T>
T* utils::Reduction<T>::max(T* arr, int len) {
    T* tmp = arr;
    for (int i = 0; i < len; i++) {
        if (*tmp < *arr) { tmp = arr; ++arr; }
    }
}

template<typename T>
void utils::Initial<T>::fill(T* arr, int val, int len) {
    for (int i = 0; i < len; i++) {
        *arr++ = (T)val;
    }
}

// >>> The followings are the Tensor implementation >>>
template<typename T>
utils::Tensor<T>::Tensor(int d1) {
    T arr[d1];
    this->data = arr;
    this->ld1 = d1;
    this->ld2 = 1;
    this->ld3 = 1;
}

template<typename T>
utils::Tensor<T>::Tensor(int d1, int d2) {
    T arr[d1 * d2];
    this->data = arr;
    this->ld1 = d1*d2;
    this->ld2 = d2;
    this->ld3 = 1;
}

template<typename T>
utils::Tensor<T>::Tensor(int d1, int d2, int d3){
    T arr[d1 * d2 * d3];
    this->data = arr;
    this->ld1 = d1*d2*d3;
    this->ld2 = d2*d3;
    this->ld3 = d3;
}

template<typename T>
void utils::Tensor<T>::reshape(int d1, int d2)
{
    this->ld1 = d1 * d2;
    this->ld2 = d2;
    this->ld3 = 1;
}

template<typename T>
T& utils::Tensor<T>::operator()(int d1, int d2)  // the problem was the bracket is a unary operator, it should not have two members
{
    return this->data[d1*this->ld2+d2];
}

void Utils::PackInput(stream_of_blocks<raw_query_block_t> &query,
                      stream_of_blocks<raw_reference_block_t> &reference,
                      stream_of_blocks<init_col_score_block_t> &init_col_scr,
                      stream_of_blocks<init_row_score_block_t> &init_row_scr,
                      hls::stream<int> &query_length,
                      hls::stream<int> &reference_length,
                      hls::stream<BlockInputs> &input_stream) {
    BlockInputs inputs;
    hls::read_lock<raw_query_block_t> query_read_acc(query);
    hls::read_lock<init_col_score_block_t> init_col_scr_read_acc(init_col_scr);

    hls::read_lock<raw_reference_block_t> reference_read_acc(reference);
    hls::read_lock<init_row_score_block_t> init_row_scr_read_acc(init_row_scr);

    for (int i = 0; i < MAX_QUERY_LENGTH; i++){
        inputs.query[i] = query_read_acc[i];
        inputs.init_col_score[i] = init_col_scr_read_acc[i];
    }
    for (int i = 0; i < MAX_REFERENCE_LENGTH; i++){
        inputs.reference[i] = reference_read_acc[i];
        inputs.init_row_score[i] = init_row_scr_read_acc[i];
    }
    inputs.query_length = query_length.read();
    inputs.reference_length = reference_length.read();
    input_stream.write(inputs);
}

void Utils::CollectTraceback(stream<BlockOutputs> &tbp_output_stm, stream_of_blocks<traceback_block_t> &block_outputs) {
    hls::write_lock<traceback_block_t > write_acc(block_outputs);
    BlockOutputs tbp_output = tbp_output_stm.read();
    for (int i = 0; i < MAX_REFERENCE_LENGTH+MAX_QUERY_LENGTH; i++){
        write_acc[i] = tbp_output.traceback[i];
    }
}

void Utils::PackInputSimple(stream<BlockInputs> &copied, stream<BlockInputs> &copy){
    copy.write(copied.read());
}
void Utils::CollectTracebackSimple(stream<BlockOutputs> &copied, stream<BlockOutputs> &copy){
    copy.write(copied.read());
}


