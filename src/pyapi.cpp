#include "../include/pyapi.h"
#include "../include/seq_align_multiple.h"
#include "../include/utils.h"
#include <unordered_map>
using namespace std;


void AHRunner::run(py::dict py_penalties)
{
    std::vector<char> query(this->query.begin(), this->query.end());
    std::vector<char> reference(this->reference.begin(), this->reference.end());
 
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

    Penalties penalties;  // FIXME: Add his to Python interafce
    penalties.match = (type_t) py_penalties["match"].cast<float>();
    penalties.mismatch = (type_t) py_penalties["mismatch"].cast<float>();
    penalties.open = (type_t) py_penalties["open"].cast<float>();
    penalties.extend = (type_t) py_penalties["extend"].cast<float>();
    penalties.linear_gap = (type_t) py_penalties["linear_gap"].cast<float>();

// Actual kernel calling
    seq_align_multiple_static(
        query_buff,
        reference_buff,
        qry_lengths,
        ref_lengths,
        penalties,
        this->tb_streams); 
}

// void AHRunner::run(Penalties penalties)
// {
//     std::vector<char> query(this->query.begin(), this->query.end());
//     std::vector<char> reference(this->reference.begin(), this->reference.end());
 
//     try {
//         if (query.size() > MAX_QUERY_LENGTH) throw std::runtime_error("Query length should less than MAX_QUERY_LENGTH, "
//             "actual query len " + std::to_string(query.size()) + ", Allocated qry len: " + std::to_string(MAX_QUERY_LENGTH));
//         if (reference.size() > MAX_REFERENCE_LENGTH) throw std::runtime_error("Reference length should less than MAX_REFERENCE_LENGTH, "
//             "actual ref len " + std::to_string(reference.size()) + ", Allocated ref len: " + std::to_string(MAX_REFERENCE_LENGTH));
//     } catch (const std::exception &e) {
//         std::cerr << "Exception: " << e.what() << std::endl;
//         throw;
//     }

//     char_t reference_buff[N_BLOCKS][MAX_REFERENCE_LENGTH];
//     char_t query_buff[N_BLOCKS][MAX_QUERY_LENGTH];

//     idx_t qry_lengths[N_BLOCKS], ref_lengths[N_BLOCKS];

//     // Fill query buffer and references buffer for all blocks.
//     // Each buffer is of MAX size, but only the actual length
//     // elements is filled.
//     for (int b = 0; b < N_BLOCKS; b++)
//     {
//         for (int i = 0; i < query.size(); i++)
//         {
//             query_buff[b][i] = this->base_to_num(query[i]);
//         }
//         for (int i = 0; i < reference.size(); i++)
//         {
//             reference_buff[b][i] = this->base_to_num(reference[i]);
//         }
//     }

//     for (int b = 0; b < N_BLOCKS; b++)
//     {
//         qry_lengths[b] = query.size();
//         ref_lengths[b] = reference.size();
//     }

// // Actual kernel calling
//     seq_align_multiple_static(
//         query_buff,
//         reference_buff,
//         qry_lengths,
//         ref_lengths,
//         penalties,
//         this->tb_streams); 
// }


void AHRunner::run(string query_string, string reference_string, py::dict py_penalties)
{

    // , unordered_map<string, float> penalties
    std::vector<char> query(query_string.begin(), query_string.end());
    std::vector<char> reference(reference_string.begin(), reference_string.end());
 
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

    Penalties penalties;
    penalties.match = (type_t) py_penalties["match"].cast<float>();
    penalties.mismatch = (type_t) py_penalties["mismatch"].cast<float>();
    penalties.open = (type_t) py_penalties["open"].cast<float>();
    penalties.extend = (type_t) py_penalties["extend"].cast<float>();
    penalties.linear_gap = (type_t) py_penalties["linear_gap"].cast<float>();

    seq_align_multiple_static(
        query_buff,
        reference_buff,
        qry_lengths,
        ref_lengths,
        penalties,
        this->tb_streams); 
}

std::vector<std::vector<char>> AHRunner::get_traceback_path()
{

    auto to_char = [](const tbr_t binary) -> char {
        if (binary == AL_INS) return 'I';
        if (binary == AL_DEL) return 'D';
        if (binary == AL_MMI) return 'M';
        if (binary == AL_END) return 'E';
        return '?';  // Handle invalid input gracefully
    };

     std::vector<std::vector<char>> traceback_paths;

     for (auto & tb_stream : this->tb_streams)
     {
         std::vector<char> traceback_path;

         tbr_t *tbp = &tb_stream[0];
         while (*tbp != AL_END){
             traceback_path.push_back(to_char(*tbp++));
         }
         traceback_paths.push_back(traceback_path);
     }

     return traceback_paths;
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
        return 0;
#ifdef DEBUG
        throw std::runtime_error("Unrecognized Nucleotide " + std::string(1, base) + " from A, C, G, and T.\n"); // or throw an exception
#endif
    }

}
