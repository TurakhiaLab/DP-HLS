#include "../include/pyapi.h"
#include "../include/seq_align_multiple.h"
#include "../include/pyapi.h"
#include "pyapi.h"

using namespace std;

Results kernel_traceback_path(
   string query_string, string reference_string
){
    //     string query_string = "AGTCTAGGCGAATCGGCCCTTGTATATCGGGG";
    // string reference_string = "TGCCGCGACCGTCCCTAATCCGACGAGCGCCT";
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
            throw std::runtime_error("Unrecognized Nucleotide " + std::string(1, c) + " from A, C, G, and T.\n"); // or throw an exception
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

    return results;
}

void AHRunner::run()
{
    std::vector<char> query(this->query.begin(), this->query.end());
    std::vector<char> reference(this->reference.begin(), this->reference.end());
 
    assert((query.size() <= MAX_QUERY_LENGTH) && "Query length should less than MAX_QUERY_LENGTH");
    assert((reference.size() <= MAX_REFERENCE_LENGTH) && "Reference length should less than MAX_REFERENCE_LENGTH");

    char_t reference_buff[N_BLOCKS][MAX_REFERENCE_LENGTH];
    char_t query_buff[N_BLOCKS][MAX_QUERY_LENGTH];

    idx_t qry_lengths[N_BLOCKS], ref_lengths[N_BLOCKS];


    // Fill query buffer and references buffer for all blocks.
    // Each buffer is of MAX size, but only the actual length
    // elements is filled.
    for (int b = 0; b < N_BLOCKS; b++)
    {
        for (int i = 0; i < query.size(); i++)
        {
            query_buff[b][i] = this->base_to_num(query[i]);
        }
        for (int i = 0; i < reference.size(); i++)
        {
            reference_buff[b][i] = this->base_to_num(reference[i]);
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
        this->tb_streams); 
}

void AHRunner::run(string query_string, string reference_string)
{
    std::vector<char> query(query_string.begin(), query_string.end());
    std::vector<char> reference(reference_string.begin(), reference_string.end());
 
    assert((query.size() <= MAX_QUERY_LENGTH) && "Query length should less than MAX_QUERY_LENGTH");
    assert((reference.size() <= MAX_REFERENCE_LENGTH) && "Reference length should less than MAX_REFERENCE_LENGTH");

    char_t reference_buff[N_BLOCKS][MAX_REFERENCE_LENGTH];
    char_t query_buff[N_BLOCKS][MAX_QUERY_LENGTH];

    idx_t qry_lengths[N_BLOCKS], ref_lengths[N_BLOCKS];


    // Fill query buffer and references buffer for all blocks.
    // Each buffer is of MAX size, but only the actual length
    // elements is filled.
    for (int b = 0; b < N_BLOCKS; b++)
    {
        for (int i = 0; i < query.size(); i++)
        {
            query_buff[b][i] = this->base_to_num(query[i]);
        }
        for (int i = 0; i < reference.size(); i++)
        {
            reference_buff[b][i] = this->base_to_num(reference[i]);
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
        this->tb_streams); 
}

std::vector<std::vector<string>> AHRunner::get_traceback_path()
{
    // if (this->tb_streams == NULL) {
    //     throw std::runtime_error("Traceback path is never computed or unknown error.");
    // }

    // std::vector<std::vector<string>> traceback_paths;

    // for (int b = 0; b < N_BLOCKS; b++)
    // {
    //     for (int i = 0; i < MAX_QUERY_LENGTH + MAX_REFERENCE_LENGTH; i++)
    //     {
    //         tbp_t tbp = this->tb_streams[b][i];
    //         if (tbp == 0)
    //         {
    //             break;
    //         }
    //         else
    //         {
    //             traceback_path.push_back(std::to_string(tbp));
    //         }
    //     }
    //     traceback_paths.push_back(traceback_path);
    // }

    // return traceback_paths;
}

std::vector<std::vector<std::vector<std::vector<float>>>> AHRunner::get_scores()
{
    return std::vector<std::vector<std::vector<std::vector<float>>>>();
}

char_t AHRunner::base_to_num(char base)
{
    switch (base)
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
        throw std::runtime_error("Unrecognized Nucleotide " + std::string(1, base) + " from A, C, G, and T.\n"); // or throw an exception
    }

}
