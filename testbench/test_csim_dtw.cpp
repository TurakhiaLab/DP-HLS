#include <string>
#include <vector>
#include "../include/params.h"
#include "../include/seq_align_multiple.h"
#include "../include/host_utils.h"

struct Penalties_sol
{
    float extend;
    float open;
    float linear_gap;
    float match;
    float mismatch;
};

int main(){

    auto query = Random::SequenceComplex<char_t>(50);
    auto reference = Random::SequenceComplex<char_t>(250);

    Penalties penalties;
    penalties.extend = -1;
    penalties.open = -1;
    penalties.linear_gap = -1;
    penalties.match = 3;
    penalties.mismatch = -1;


    try {
        if (query.size() > MAX_QUERY_LENGTH) throw std::runtime_error("Query length should less than MAX_QUERY_LENGTH, "
            "actual query len " + std::to_string(query.size()) + ", Allocated qry len: " + std::to_string(MAX_QUERY_LENGTH));
        if (reference.size() > MAX_REFERENCE_LENGTH) throw std::runtime_error("Reference length should less than MAX_REFERENCE_LENGTH, "
            "actual ref len " + std::to_string(reference.size()) + ", Allocated ref len: " + std::to_string(MAX_REFERENCE_LENGTH));
    } catch (const std::exception &e) {
        std::cerr << "Exception: " << e.what() << std::endl;
        throw;
    }

    char_t reference_buff[N_BLOCKS][MAX_REFERENCE_LENGTH];
    char_t  query_buff[N_BLOCKS][MAX_QUERY_LENGTH];

    idx_t qry_lengths[N_BLOCKS], ref_lengths[N_BLOCKS];

    // Fill query buffer and references buffer for all blocks.
    // Each buffer is of MAX size, but only the actual length
    // elements is filled.
    for (int b = 0; b < N_BLOCKS; b++)
    {
        for (int i = 0; i < query.size(); i++)
        {
            query_buff[b][i] = query[i];
        }
        for (int i = 0; i < reference.size(); i++)
        {
            reference_buff[b][i] = reference[i];
        }
    }

    for (int b = 0; b < N_BLOCKS; b++)
    {
        qry_lengths[b] = query.size();
        ref_lengths[b] = reference.size();
    }

    tbr_t tb_streams[N_BLOCKS][MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH];
// Actual kernel calling
    seq_align_multiple_static(
        query_buff,
        reference_buff,
        qry_lengths,
        ref_lengths,
        penalties,
        tb_streams); 
    
}