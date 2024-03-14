/**
 * @file host_utils.h
 * @author Yingqi Cao (yic033@ucsd.edu)
 * @brief Contains helper functions to write the host side code of the kernel.
 * @version 0.1
 * @date 2023-11-03
 *
 * @copyright Copyright (c) 2023
 *
 */

#ifndef HOST_H
#define HOST_H

#include <string>
#include <vector>
#include <array>
#include <complex>
#include <random>
#include <stack>
#include <map>
#include <iostream>

using namespace std;

#define AL_END_H 0b000  // 0 stopping condition
#define AL_INS_H 0b001  // 1 Align Insertion
#define AL_MMI_H 0b010  // 2 Align Match/Mismatch
#define AL_DEL_H 0b011  // 3 Align Deletion
#define AL_NULL_H 0b100  // 4 Do not change coordinate

namespace Random
{
    // Generate a random sequence of length `length` with alphabet size `alphabet_size`.
    // The alphabet is [0, alphabet_size).
    template <int N>
    string Sequence(char alphabet[N], int length)
    {
        std::random_device rd;

        // Use the seed from random_device to seed the random engine
        std::mt19937 rng(rd());

        // Create a uniform distribution for random numbers between 1 and 100
        std::uniform_int_distribution<int> dist(1, 100);

        string seq = "";
        for (int i = 0; i < length; i++)
        {
            seq += alphabet[dist(rng) % N];
        }
        return seq;
    }

    template <typename T>
    std::vector<T> SequenceComplex(int length)
    {
        std::vector<T> seq;
        for (int i = 0; i < length; i++)
        {
            seq.push_back(T(rand(), rand()));
        }
        return seq;
    }

    /**
     * @brief A function that generates a random sequence in the format of the input of profile alignment.
     * Each element of the output vector is an array of length 5. Each element in the array is the count
     * of A, T, C, G, and _ in the column. The integers in the array should be non negative and sum up to WID
     *
     * @tparam WID Number of sequences in the aligned sequences.
     * @return std::vector<std::array<int, N>>
     */
    template <int WID>
    std::vector<std::array<int, 5>> SequenceProfileAlignment(int len)
    {
        std::vector<std::array<int, 5>> profile;
        for (int i = 0; i < len; i++)
        {
            int remaining = WID;
            std::array<int, 5> col;
            for (int j = 0; j < 4; j++)
            {
                col[j] = rand() % remaining;
                remaining -= col[j];
            }
            col[4] = WID - remaining;
            profile.push_back(col);
        }
        return profile;
    }

}

namespace HostUtils
{
    namespace IO
    {
        /**
         * @brief Read form a json file storing the sequences in the format of "specie_name": "dna string"
         *
         * @param file_path
         * @return map<string, std::vector<string>> : The map has two entries. The first entry is "specie_names": vector<string>
         * The second entry is "sequences": vector<string>
         */
        map<string, std::vector<string>> read_sequences_from_json(string file_path);
    }

    namespace Generate
    {
        /**
         * @brief namespace for functions generating sequences
         *
         */

    }

    namespace Sequence
    {
        /**
         * @brief Map a single base to a number.
         * A: 0, C: 1, G: 2, T: 3, _: 4
         *
         * @param base
         * @return int
         */
        int base_to_num(char base);

        char num_to_base(int num);

        /**
         * @brief Reconstruct the traceback for profile alignmetnt from the array of traceback navigations.
         *
         * @param querys
         * @param references
         * @param query_start_idx
         * @param reference_start_idx
         * @return std::vector<string>
         */
        template <typename T, size_t MAX_QRY_LENGTH, size_t MAX_REF_LENGTH>
        std::vector<string> ReconstructTracebackProfile(std::vector<string> querys, std::vector<string> references,
                                                        int query_start_idx, int reference_start_idx,
                                                        T (&tb_streams)[MAX_REF_LENGTH + MAX_QRY_LENGTH])
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
            std::cout << "Number of queries: " << num_queries << endl;
            std::cout << "Number of references: " << num_references << endl;
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

            T *curr_ptr = &tb_streams[0];
            // Insert the characters from the stack to the alignment strings to their beginning.
            // Iterating in order the tb_steram
            int cnt = 0;
            while (*curr_ptr != (T) AL_END_H)
            {
                // printf("curr_ptr: %d\n", curr_ptr->to_int());
                if (*curr_ptr == (T) AL_MMI_H)
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
                else if (*curr_ptr == (T) AL_INS_H)
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
                else if (*curr_ptr == (T) AL_DEL_H)
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
                else if (*curr_ptr == (T) AL_NULL_H)
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

        /**
         * @brief Given a array of sequences, convert them to the format of the input of profile alignment.
         *
         * @param seq Sequences
         * @param len Length of Sequences
         * @return std::vector<std::array<int, 5>>
         */
        std::vector<std::array<int, 5>> MultipleSequencesToProfileAlign(std::vector<string> seq, int len);

        /**
         * @brief Fucntion to reconstruct the alignment result from the an array of traceback navigations.
         *
         * @tparam T
         * @param query
         * @param reference
         */
        template <typename T, size_t MAX_QRY_LENGTH, size_t MAX_REF_LENGTH>
        std::map<string, string> ReconstructTraceback(string query, string reference,
                                                      int query_start_idx, int reference_start_idx,
                                                      T (&tb_streams)[MAX_REF_LENGTH + MAX_QRY_LENGTH])
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

            T *curr_ptr = &tb_streams[0];
            // Insert the characters from the stack to the alignment strings to their beginning.
            // Iterating in order the tb_steram
            while (*curr_ptr != (T) AL_END_H)
            {
                // printf("curr_ptr: %d\n", curr_ptr->to_int());
                if (*curr_ptr == (T) AL_MMI_H)
                {
                    alignment_query = alignment_query.insert(0, 1, query_stack.top());
                    alignment_reference = alignment_reference.insert(0, 1, reference_stack.top());
                    query_stack.pop();
                    reference_stack.pop();
                }
                else if (*curr_ptr == (T) AL_INS_H)
                {
                    alignment_query = alignment_query.insert(0, 1, '_');
                    alignment_reference = alignment_reference.insert(0, 1, reference_stack.top());
                    reference_stack.pop();
                }
                else if (*curr_ptr == (T) AL_DEL_H)
                {
                    alignment_query = alignment_query.insert(0, 1, query_stack.top());
                    alignment_reference = alignment_reference.insert(0, 1, '_');
                    query_stack.pop();
                }
                else if (*curr_ptr == (T) AL_NULL_H)
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

        /**
         * @brief Function to reconstruct the alignment result from the array of the traceback navigations for all blocks.
         *
         * @tparam NB Number of Blocks
         * @param query
         * @param reference
         */
        template <typename T, int NB, int MAX_QRY_LENGTH, int MAX_REF_LENGTH>
        array<map<string, string>, NB> ReconstructTracebackBlocks(string query[NB], string reference[NB],
                                                                  int query_start_idx[NB], int reference_start_idx[NB],
                                                                  T (&tb_streams)[NB][MAX_REF_LENGTH + MAX_QRY_LENGTH])
        {
            // declare the result data structure
            array<map<string, string>, NB> alignments;

            for (int i = 0; i < NB; i++)
            {
                alignments[i] = HostUtils::Sequence::ReconstructTraceback<T, MAX_QRY_LENGTH, MAX_REF_LENGTH>(query[i], reference[i],
                                                                          query_start_idx[i], reference_start_idx[i], tb_streams[i]);
            }

            return alignments;
        }

    }
}

#endif // !HOST_H