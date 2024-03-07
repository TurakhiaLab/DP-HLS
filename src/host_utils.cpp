#include <string>
#include <vector>
#include <stack>
#include <map>
#include <nlohmann/json.hpp>
#include <fstream>

#include "params.h"
#include "host_utils.h"

using namespace std;

map<string, string> ReconstructTraceback(string query, string reference,
                                         int query_start_idx, int reference_start_idx,
                                         tbr_t (&tb_stream)[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH])
{

    // If we also want to match the portion for the alignment exceeds the start index, use this
    // string alignment_query = query.substr(query_start_idx + 1, query.length());
    // string alignment_reference = reference.substr(reference_start_idx + 1, reference.length());
    string alignment_query = "";
    string alignment_reference = "";

    stack<char> query_stack;
    stack<char> reference_stack;

    // insert characters of query and reference into the stack, in sequence
    for (int i = 0; i < query_start_idx + 1; i++)
    {
        query_stack.push(query[i]);
    }
    for (int i = 0; i < reference_start_idx + 1; i++)
    {
        reference_stack.push(reference[i]);
    }

    // print traceback stream
    // printf("Traceback stream: ");
    // for (int i = 0; i < MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH; i++) {
    //     printf("%d ", tb_stream[i].to_int());
    // }

    tbr_t *curr_ptr = &tb_stream[0];
    // Insert the characters from the stack to the alignment strings to their beginning.
    // Iterating in order the tb_steram
    while (*curr_ptr != AL_END)
    {
        // printf("curr_ptr: %d\n", curr_ptr->to_int());
        if (*curr_ptr == AL_MMI)
        {
            alignment_query = alignment_query.insert(0, 1, query_stack.top());
            alignment_reference = alignment_reference.insert(0, 1, reference_stack.top());
            query_stack.pop();
            reference_stack.pop();
        }
        else if (*curr_ptr == AL_INS)
        {
            alignment_query = alignment_query.insert(0, 1, '_');
            alignment_reference = alignment_reference.insert(0, 1, reference_stack.top());
            reference_stack.pop();
        }
        else if (*curr_ptr == AL_DEL)
        {
            alignment_query = alignment_query.insert(0, 1, query_stack.top());
            alignment_reference = alignment_reference.insert(0, 1, '_');
            query_stack.pop();
        }
        else if (*curr_ptr == AL_NULL)
        {
            // Do nothing, AL_NULL Doesn't change the position
        }
        else
        {
            printf("Alignment Output Iteartion End\n");
        }
        curr_ptr++;
    }

    // Finishing up concatenating the rest of the characters in the stack
    while (!query_stack.empty())
    {
        alignment_query = alignment_query.insert(0, 1, query_stack.top());
        query_stack.pop();
    }
    while (!reference_stack.empty())
    {
        alignment_reference = alignment_reference.insert(0, 1, reference_stack.top());
        reference_stack.pop();
    }

    // pad the head for query
    while (alignment_query.length() < alignment_reference.length())
    {
        alignment_query = alignment_query.insert(0, 1, '_');
    }
    // pad the head for reference
    while (alignment_reference.length() < alignment_query.length())
    {
        alignment_reference = alignment_reference.insert(0, 1, '_');
    }

    // return a dictionary (map) of aligned query and aligned reference
    map<string, string> alignments;
    alignments["query"] = alignment_query;
    alignments["reference"] = alignment_reference;
    return alignments;
}

std::vector<std::array<int, 5>> MultipleSequencesToProfileAlign(std::vector<string> seq, int len)
{
    std::vector<std::array<int, 5>> profile;
    if (seq.size() == 0)
    {
        throw std::invalid_argument("Empty sequence");
    }
    // iterating through each position in the sequence
    for (int i = 0; i < len; i++)
    {
        // iterate through each sequence in the column
        std::array<int, 5> col;
        // initialize the column
        for (int j = 0; j < 5; j++)
        {
            col[j] = 0;
        }
        for (int j = 0; j < seq.size(); j++)
        {
            // count the number of each character in the column
            if (seq[j][i] == 'A')
            {
                col[0]++;
            }
            else if (seq[j][i] == 'T')
            {
                col[1]++;
            }
            else if (seq[j][i] == 'C')
            {
                col[2]++;
            }
            else if (seq[j][i] == 'G')
            {
                col[3]++;
            }
            else if (seq[j][i] == '_')
            {
                col[4]++;
            }
            else
            {
                throw std::invalid_argument("Invalid character in sequence: " + std::to_string(seq[j][i]));
            }
        }
        profile.push_back(col);
    }
    return profile;
}

std::vector<string> ReconstructTracebackProfile(std::vector<string> querys, std::vector<string> references,
                                                int query_start_idx, int reference_start_idx,
                                                tbr_t (&tb_stream)[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH])
{
    std::vector<string> alignments_query;
    std::vector<string> alignments_reference;
    // print size of query
    int num_queries = querys.size();
    int num_references = references.size();
    // initialize alignments
    for (int i = 0; i < num_queries; i++)
    {
        alignments_query.push_back("");
    }
    for (int i = 0; i < num_references; i++)
    {
        alignments_reference.push_back("");
    }
    cout << "Number of queries: " << num_queries << endl;
    cout << "Number of references: " << num_references << endl;
    // If we also want to match the portion for the alignment exceeds the start index, use this
    // string alignment_query = query.substr(query_start_idx + 1, query.length());
    // string alignment_reference = reference.substr(reference_start_idx + 1, reference.length());

    std::vector<stack<char>> query_stack;
    std::vector<stack<char>> reference_stack;

    // Initialize vectors for querys
    for (int i = 0; i < querys.size(); i++)
    {
        stack<char> q;
        for (int j = 0; j < query_start_idx; j++)
        {
            q.push(querys[i][j]);
        }
        query_stack.push_back(q);
    }
    // Initialize vectors for references
    for (int i = 0; i < references.size(); i++)
    {
        stack<char> r;
        for (int j = 0; j < reference_start_idx; j++)
        {
            r.push(references[i][j]);
        }
        reference_stack.push_back(r);
    }

    // print traceback stream
    // printf("Traceback stream: ");
    // for (int i = 0; i < MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH; i++) {
    //     printf("%d ", tb_stream[i].to_int());
    // }

    tbr_t *curr_ptr = &tb_stream[0];
    // Insert the characters from the stack to the alignment strings to their beginning.
    // Iterating in order the tb_steram
    int cnt = 0;
    while (*curr_ptr != AL_END)
    {
        // printf("curr_ptr: %d\n", curr_ptr->to_int());
        if (*curr_ptr == AL_MMI)
        {
            for (int i = 0; i < querys.size(); i++)
            {
                alignments_query[i].insert(0, 1, query_stack[i].top());
                query_stack[i].pop();
            }
            for (int i = 0; i < reference_stack.size(); i++)
            {
                alignments_reference[i].insert(0, 1, reference_stack[i].top());
                reference_stack[i].pop();
            }
        }
        else if (*curr_ptr == AL_INS)
        {
            for (int i = 0; i < query_stack.size(); i++)
            {
                alignments_query[i].insert(0, 1, '_');
            }
            for (int i = 0; i < reference_stack.size(); i++)
            {
                alignments_reference[i].insert(0, 1, reference_stack[i].top());
                reference_stack[i].pop();
            }
        }
        else if (*curr_ptr == AL_DEL)
        {
            for (int i = 0; i < query_stack.size(); i++)
            {
                alignments_query[i].insert(0, 1, query_stack[i].top());
                query_stack[i].pop();
            }
            for (int i = 0; i < reference_stack.size(); i++)
            {
                alignments_reference[i].insert(0, 1, '_');
            }
        }
        else if (*curr_ptr == AL_NULL)
        {
            // Do nothing, AL_NULL Doesn't change the position
        }
        else
        {
            printf("Alignment Output Iteartion End\n");
        }
        curr_ptr++;
        cnt++;
    }

    // Finishing up concatenating the rest of the characters in the stack

    for (int i = 0; i < query_stack.size(); i++)
    {
        while (!query_stack[i].empty())
        {
            alignments_query[i].insert(0, 1, query_stack[i].top());
            query_stack[i].pop();
        }
    }

    for (int i = 0; i < reference_stack.size(); i++)
    {
        while (!reference_stack[i].empty())
        {
            alignments_reference[i].insert(0, 1, reference_stack[i].top());
            reference_stack[i].pop();
        }
    }

    // pad the head for query
    for (int i = 0; i < query_stack.size(); i++)
    {
        while (alignments_query[i].length() < alignments_reference[0].length())
        {

            alignments_query[i].insert(0, 1, '_');
        }
    }
    // pad the head for reference
    for (int i = 0; i < reference_stack.size(); i++)
    {
        while (alignments_reference[i].length() < alignments_query[0].length())
        {

            alignments_reference[i].insert(0, 1, '_');
        }
    }

    // Merge alignments query and alignments reference into one data structure
    std::vector<string> alignments;
    for (int i = 0; i < querys.size(); i++)
    {
        alignments.push_back(alignments_query[i]);
    }
    for (int i = 0; i < references.size(); i++)
    {
        alignments.push_back(alignments_reference[i]);
    }

    return alignments;
}



int HostUtils::Sequence::base_to_num(char base)
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
    case '_':
        return 4;
    default:
        return 0;
#ifdef CMAKEDEBUG
        throw std::runtime_error("Unrecognized Nucleotide " + std::string(1, base) + " from A, C, G, and T.\n"); // or throw an exception
#endif
    }
}

map<string, std::vector<string>> HostUtils::IO::read_sequences_from_json(string file_path)
{
    std::ifstream json_file(file_path);

    // Parse the JSON file
    nlohmann::json data;
    json_file >> data;

    // Iterate through the JSON object
    for (auto &element : data.items())
    {
        string species_name = element.key();   // The 'key' is the species name
        string dna_sequence = element.value(); // The 'value' is the DNA sequence
    }
    int num_species = data.size();

    // put the species name and genes into vectors
    std::vector<string> species_names;
    std::vector<string> dna_sequences;
    for (auto &element : data.items())
    {
        species_names.push_back(element.key());
        dna_sequences.push_back(element.value());
    }
    map<string, std::vector<string>> sequences;
    sequences["specie_names"] = species_names;
    sequences["sequences"] = dna_sequences;
    return sequences;
}