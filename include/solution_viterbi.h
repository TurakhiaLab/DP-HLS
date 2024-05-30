#pragma once

#include <map>
#include <iostream>
#include <array>
#include <string>
#include <limits>
#include <fstream>
#include <iostream>
#include <iomanip> // For std::setw and std::setfill
#include <complex>
#include <set>
#include "host_utils.h"
#include <cassert>

/**
 * @brief Viterbi itself is a global alignment, don't need to consider the case of making it local.
 *
 * @tparam PENALTY_T
 * @tparam SOL_MAX_QUERY_LENGTH
 * @tparam SOL_MAX_REFERENCE_LENGTH
 * @tparam SOL_N_LAYERS
 * @param query
 * @param reference
 * @param penalties
 * @param score_mat
 * @param tb_mat
 * @param alignments
 */
template <typename PENALTY_T, int SOL_MAX_QUERY_LENGTH, int SOL_MAX_REFERENCE_LENGTH, int SOL_N_LAYERS>
void viterbi_solution(std::string query, std::string reference, PENALTY_T &penalties,
                      array<array<array<double, SOL_MAX_REFERENCE_LENGTH>, SOL_MAX_QUERY_LENGTH>, SOL_N_LAYERS> &score_mat,
                      array<array<string, SOL_MAX_REFERENCE_LENGTH>, SOL_MAX_QUERY_LENGTH> &tb_mat,
                      map<string, string> &alignments)
{
    // Layer 0: Insertion Matrix
    // Layer 1: Match Mismatch Matrix
    // Layer 2: Deletion Matrix

    // Declare initial column and row scores
    array<array<double, SOL_N_LAYERS>, SOL_MAX_QUERY_LENGTH> initial_col;
    array<array<double, SOL_N_LAYERS>, SOL_MAX_REFERENCE_LENGTH> initial_row;

    double init_penal = penalties.log_lambda;
    // Initialize intial column and row values
    for (int i = 0; i < SOL_MAX_QUERY_LENGTH; i++)
    {
        init_penal += penalties.log_1_m_mu;
        initial_col[i][0] = -1000000;
        initial_col[i][1] = init_penal;
        initial_col[i][2] = -1000000; // This can be whatever, since won't be accessed
    }
    init_penal = penalties.log_lambda;
    for (int j = 0; j < SOL_MAX_REFERENCE_LENGTH; j++)
    {
        init_penal += penalties.log_1_m_mu;
        initial_row[j][0] = -1000000; // This can be whatever, since won't be accessed
        initial_row[j][1] = init_penal;
        initial_row[j][2] = -1000000;
    }

    // Initialize the score matrix
    for (int i = 0; i < SOL_MAX_QUERY_LENGTH; i++)
    {
        for (int j = 0; j < SOL_MAX_REFERENCE_LENGTH; j++)
        {
            for (int k = 0; k < SOL_N_LAYERS; k++)
            {
                score_mat[k][i][j] = 0;
            }
        }
    }

    // Initialize the traceback matrix
    for (int i = 0; i < SOL_MAX_QUERY_LENGTH; i++)
    {
        for (int j = 0; j < SOL_MAX_REFERENCE_LENGTH; j++)
        {
            tb_mat[i][j] = '*';
        }
    }

    // Fill in the DP matrix and traceback matrix
    for (int i = 0; i < query.length(); i++)
    {

        for (int j = 0; j < reference.length(); j++)
        {
            double del_up;
            double ins_left;
            double main_diag, main_up, main_left;
            double ins_diag, del_diag;

            if (i == 0 && j == 0)
            {
                main_diag = 0.0;
                main_up = initial_row[0][1];
                main_left = initial_col[0][1];

                ins_left = initial_col[0][0];
                ins_diag = 0;

                del_up = initial_row[0][2];
                del_diag = 0;
            }
            else if (i == 0 && j > 0)  // In first row, not column
            {
                main_diag = initial_row[j - 1][1];
                main_up = initial_row[j][1];
                main_left = score_mat[1][i][j - 1];

                ins_left = score_mat[0][0][j - 1];
                ins_diag = initial_row[j - 1][0];

                del_up = initial_row[j][2];
                del_diag = initial_row[j - 1][2];
            }
            else if (i > 0 && j == 0)
            {
                main_diag = initial_col[i - 1][1];
                main_up = score_mat[1][i - 1][j];
                main_left = initial_col[i][1];

                ins_left = initial_col[i][0];
                ins_diag = initial_col[i - 1][0];

                del_up = score_mat[2][i - 1][j];
                del_diag = initial_col[i - 1][2];
            }
            else
            {
                main_diag = score_mat[1][i - 1][j - 1];
                main_up = score_mat[1][i - 1][j];
                main_left = score_mat[1][i][j - 1];

                ins_left = score_mat[0][i][j - 1];
                ins_diag = score_mat[0][i-1][j-1];

                del_up = score_mat[2][i - 1][j];
                del_diag = score_mat[2][i-1][j-1];
            }

            double del_write, ins_write, main_write;           // values write to the score matrix
            double ins_open, ins_extend, del_open, del_extend; // values for the insertion and deletion matrix
            ins_open = main_left + penalties.log_lambda;
            ins_extend = ins_left + penalties.log_1_m_mu;
            del_open = main_up + penalties.log_lambda;
            del_extend = del_up + penalties.log_1_m_mu;

            bool ins_open_b = ins_extend < ins_open;
            bool del_open_b = del_extend < del_open;
            ins_write = penalties.transition[HostUtils::Sequence::base_to_num(query[i])][4] + (ins_open_b ? ins_open : ins_extend);
            del_write = penalties.transition[4][HostUtils::Sequence::base_to_num(reference[j])] + (del_open_b ? del_open : del_extend);

            double main_match = penalties.log_1_m_2_lambda + main_diag;
            double main_ins = penalties.log_mu + ins_diag;
            double main_del = penalties.log_mu + del_diag;

            double main_max = main_match;
            main_max = main_max > main_ins ? main_max : main_ins;
            main_max = main_max > main_del ? main_max : main_del;
            main_write = penalties.transition[HostUtils::Sequence::base_to_num(query[i])][HostUtils::Sequence::base_to_num(reference[j])] + main_max;

            score_mat[0][i][j] = ins_write;
            score_mat[1][i][j] = main_write;
            score_mat[2][i][j] = del_write;

            // Choose the maximum score and update the traceback matrix
            if (main_max == main_ins)
            {
                tb_mat[i][j] = ins_open_b ? "L " : "LE"; // 'L' indicates a left direction (insertion)
            }
            else if (main_max == main_del)
            {
                tb_mat[i][j] = del_open_b ? "U " : "UE"; // 'U' indicates an up direction (deletion)
            }
            else if (main_max == main_match)
            {
                tb_mat[i][j] = "D "; // 'D' indicates a diagonal direction (match or mismatch)
            }
            else
            {
                cout << "ERROR: Invalid traceback matrix value" << endl;
            }
        }
    }

    // Traceback to find the aligned sequences
    int i = query.length() - 1;
    int j = reference.length() - 1;
    string aligned_query = "";
    string aligned_reference = "";
    while (i >= 0 && j >= 0)
    {
        if (tb_mat[i][j] == "D ")
        {
            aligned_query = query[i] + aligned_query;
            aligned_reference = reference[j] + aligned_reference;
            i--;
            j--;
        }
        else if (tb_mat[i][j] == "U ")
        {
            aligned_query = query[i] + aligned_query;
            aligned_reference = "_" + aligned_reference;
            i--;
        }
        else if (tb_mat[i][j] == "UE")
        {
            aligned_query = query[i] + aligned_query;
            aligned_reference = "_" + aligned_reference;
            i--;
        }
        else if (tb_mat[i][j] == "L ")
        {
            aligned_query = "_" + aligned_query;
            aligned_reference = reference[j] + aligned_reference;
            j--;
        }
        else if (tb_mat[i][j] == "LE")
        {
            aligned_query = "_" + aligned_query;
            aligned_reference = reference[j] + aligned_reference;
            j--;
        }
        else
        {
            cout << "ERROR: Invalid traceback matrix value" << endl;
            break;
        }
    }

    // Finish up the rest of the characters in the query and reference
    while (i >= 0)
    {
        aligned_query = query[i] + aligned_query;
        aligned_reference = "_" + aligned_reference;
        i--;
    }
    while (j >= 0)
    {
        aligned_query = "_" + aligned_query;
        aligned_reference = reference[j] + aligned_reference;
        j--;
    }

    alignments["query"] = aligned_query;
    alignments["reference"] = aligned_reference;
}
