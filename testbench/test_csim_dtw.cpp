#include <string>
#include <vector>
#include <complex>
#include "params.h"
#include "seq_align_multiple.h"
#include "host_utils.h"

#define TEST_QUERY_SIZE 50
#define TEST_REFERENCE_SIZE 250

struct Penalties_sol
{
    float linear_gap;
};

int main(){

    auto query = Random::SequenceComplex<complex<num_t>>(TEST_QUERY_SIZE);
    auto reference = Random::SequenceComplex<complex<num_t>>(TEST_REFERENCE_SIZE);

    // declare the query and reference buffer and copy the initialized data to the buffer
    char_t reference_buff[N_BLOCKS][MAX_REFERENCE_LENGTH];
    char_t query_buff[N_BLOCKS][MAX_QUERY_LENGTH];

    for (int b = 0; b < N_BLOCKS; b++)
    {
        for (int i = 0; i < MAX_QUERY_LENGTH; i++)
        {
            if (i < TEST_QUERY_SIZE){
                query_buff[b][i].imag = imag(query[i]);
                query_buff[b][i].real = real(query[i]);
            } else {
                query_buff[b][i].imag = 0;
                query_buff[b][i].real = 0;
            }
        }
        for (int i = 0; i < TEST_REFERENCE_SIZE; i++)
        {
            if (i < TEST_REFERENCE_SIZE){
                reference_buff[b][i].imag = imag(reference[i]);
                reference_buff[b][i].real = real(reference[i]);
            } else {
                reference_buff[b][i].imag = 0;
                reference_buff[b][i].real = 0;
            }
        }
    }

    Container debuggers[N_BLOCKS];
    for (int i = 0; i < N_BLOCKS; i++){
        debuggers[i] = Container();
    }

    Penalties penalties[N_BLOCKS];
    for (int i = 0; i < N_BLOCKS; i++){
        penalties[i].linear_gap = -1;
    }

    try {
        if (query.size() > MAX_QUERY_LENGTH) throw std::runtime_error("Query length should less than MAX_QUERY_LENGTH, "
            "actual query len " + std::to_string(query.size()) + ", Allocated qry len: " + std::to_string(MAX_QUERY_LENGTH));
        if (reference.size() > MAX_REFERENCE_LENGTH) throw std::runtime_error("Reference length should less than MAX_REFERENCE_LENGTH, "
            "actual ref len " + std::to_string(reference.size()) + ", Allocated ref len: " + std::to_string(MAX_REFERENCE_LENGTH));
    } catch (const std::exception &e) {
        std::cerr << "Exception: " << e.what() << std::endl;
        throw;
    }

    idx_t qry_lengths[N_BLOCKS], ref_lengths[N_BLOCKS];

    for (int b = 0; b < N_BLOCKS; b++)
    {
        qry_lengths[b] = query.size();
        cout << "qry_lengths[" << b << "]: " << qry_lengths[b] << endl;
        ref_lengths[b] = reference.size();
        cout << "ref_lengths[" << b << "]: " << ref_lengths[b] << endl;
    }

    tbr_t tb_streams[N_BLOCKS][MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH];
    // initialize traceback starting coordinates
    idx_t tb_is[N_BLOCKS];
    idx_t tb_js[N_BLOCKS];

// Actual kernel calling
    // Actual kernel calling
    seq_align_multiple_static(
        query_buff,
        reference_buff,
        qry_lengths,
        ref_lengths,
        penalties,
        tb_is, tb_js,
        tb_streams
#ifdef CMAKEDEBUG
        , debuggers
#endif
        );
}