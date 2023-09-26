#include "../include/pyapi.h"
#include "../include/seq_align_multiple.h"

using namespace std;

Results kernel_traceback_path(
    string query_string, string reference_string
){
    Results results;
    
    std::vector<char> query(query_string.begin(), query_string.end());
    std::vector<char> reference(reference_string.begin(), reference_string.end());

    assert((query.size() <= MAX_QUERY_LENGTH) && "Query length should less than MAX_QUERY_LENGTH");
    assert((reference.size() <= MAX_REFERENCE_LENGTH) && "Reference length should less than MAX_REFERENCE_LENGTH");

    char_t reference_buff[N_BLOCKS][MAX_REFERENCE_LENGTH];
    char_t query_buff[N_BLOCKS][MAX_QUERY_LENGTH];

    idx_t qry_lengths[N_BLOCKS], ref_lengths[N_BLOCKS];


    auto base_to_num = [](char c) -> char_t
    {
        switch (c)
        {
        case 'A':
            return 0;
        case 'C':
            return 1;
        case 'G':
            return 2;
        case 'T':
            return 3;
        default:
            throw std::runtime_error("Unrecognized Nucleotide from A, C, G, and T. "); // or throw an exception
        }
    };

    // Fill query buffer and references buffer for all blocks.
    // Each buffer is of MAX size, but only the actual length
    // elements is filled.
    for (int b = 0; b < N_BLOCKS; b++)
    {
        for (int i = 0; i < query.size(); i++)
        {
            query_buff[b][i] = base_to_num(query[i]);
        }
        for (int i = 0; i < reference.size(); i++)
        {
            reference_buff[b][i] = base_to_num(reference[i]);
        }
    }

    for (int b = 0; b < N_BLOCKS; b++)
    {
        qry_lengths[b] = query.size();
        ref_lengths[b] = reference.size();
    }

    seq_align_multiple_static(
        query_buff,
        reference_buff,
        qry_lengths,
        ref_lengths,
        results.tb_streams);

}