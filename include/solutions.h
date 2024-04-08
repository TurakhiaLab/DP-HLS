#pragma once

// #include "params.h"

#include <map>
#include <iostream>
#include <array>
#include <string>
#include <limits>
#include <fstream>
#include <iostream>
#include <iomanip> // For std::setw and std::setfill

using namespace std;

namespace SolutionUtils
{
    namespace Profile
    {

        template <int ALPHABET_SIZE>
        float score_mult(const std::array<int, ALPHABET_SIZE> &query, const std::array<int, ALPHABET_SIZE> &reference,
                         const std::array<std::array<float, ALPHABET_SIZE>, ALPHABET_SIZE> &A)
        {
            float score = 0;
            for (int i = 0; i < ALPHABET_SIZE; ++i)
            {
                for (int j = 0; j < ALPHABET_SIZE; ++j)
                {
                    score += query[i] * A[i][j] * reference[j];
                }
            }
            return score;
        }
    }
}

template <typename PENALTY_T, int SOL_MAX_QUERY_LENGTH, int SOL_MAX_REFERENCE_LENGTH, int SOL_N_LAYERS>
void profile_alignment_solution(std::vector<std::array<int, 5>> query, std::vector<std::array<int, 5>> reference, PENALTY_T &penalties,
                                array<array<array<float, SOL_MAX_REFERENCE_LENGTH>, SOL_MAX_QUERY_LENGTH>, SOL_N_LAYERS> &score_mat,
                                array<array<char, SOL_MAX_REFERENCE_LENGTH>, SOL_MAX_QUERY_LENGTH> &tb_mat,
                                std::vector<char> &alignments)
{
    // Function to calculate the score between two profile columns using the transition matrix A
    const int ALPHABET_SIZE = 5; // A, T, C, G, _

    int query_len = query.size();
    int reference_len = reference.size();

    // Create a score matrix
    std::array<std::array<std::array<float, SOL_MAX_REFERENCE_LENGTH + 1>, SOL_MAX_QUERY_LENGTH + 1>, SOL_N_LAYERS> score_matrix;

    // Initialize the DP matrix, if necessary, e.g., for global alignment
    // penalties has an entry of linear_gap. We initialize the gap for this alignment as in global alignment
    score_matrix[0][0][0] = 0;
    float accumulate = 0;
    for (int i = 0; i < query_len; ++i)
    {
        accumulate += penalties.linear_gap;
        score_matrix[0][i][0] = accumulate;
    }
    accumulate = 0;
    for (int j = 0; j < reference_len; ++j)
    {
        accumulate += penalties.linear_gap;
        score_matrix[0][0][j] = accumulate;
    }

    // Fill in the DP matrix
    for (int i = 1; i <= query_len; ++i)
    {
        for (int j = 1; j <= reference_len; ++j)
        {
            float intermidiate_score = SolutionUtils::Profile::score_mult<5>(query[i - 1], reference[j - 1], penalties.transition);
            float matchScore = score_matrix[0][i - 1][j - 1] + intermidiate_score;            // Match or mismatch
            float deleteScore = score_matrix[0][i - 1][j] + intermidiate_score;               // Or with a penalty
            float insertScore = score_matrix[0][i][j - 1] + intermidiate_score;               // Or with a penalty
            score_matrix[0][i][j] = std::max(matchScore, std::max(deleteScore, insertScore)); // 0 for local alignment
            // Set the traceback pointer
            if (score_matrix[0][i][j] == matchScore)
            {
                tb_mat[i - 1][j - 1] = 'D'; // 'D' indicates a diagonal direction (match or mismatch)
            }
            else if (score_matrix[0][i][j] == deleteScore)
            {
                tb_mat[i - 1][j - 1] = 'U'; // 'U' indicates an up direction (deletion)
            }
            else
            {
                tb_mat[i - 1][j - 1] = 'L'; // 'L' indicates a left direction (insertion)
            }
        }
    }

    // Copy the score matrix such that it have no initial values
    for (int i = 0; i < SOL_MAX_QUERY_LENGTH; i++)
    {
        for (int j = 0; j < SOL_MAX_REFERENCE_LENGTH; j++)
        {
            score_mat[0][i][j] = score_matrix[0][i + 1][j + 1];
        }
    }

    // Trace-back to find the best alignment, starting from the maximum score in the DP matrix
    // Implementation depends on the desired alignment type (global, local, etc.)
    // Here, we implement a simple global alignment tracevack
    int i = query.size() - 1;
    int j = reference.size() - 1;
    // Only reconstruct the traceback path, but don't print the alignment
    while (i >= 0 && j >= 0)
    {
        if (tb_mat[i][j] == 'D')
        {
            i--;
            j--;
            alignments.push_back('D');
        }
        else if (tb_mat[i][j] == 'U')
        {
            i--;
            alignments.push_back('U');
        }
        else if (tb_mat[i][j] == 'L')
        {
            j--;
            alignments.push_back('L');
        }
        else
        {
            std::cout << "ERROR: Invalid traceback matrix value" << std::endl;
            break;
        }
    }

    return;
}

// >>> Global Linear Solution >>>
template <typename PENALTY_T, int SOL_MAX_QUERY_LENGTH, int SOL_MAX_REFERENCE_LENGTH, int SOL_N_LAYERS>
void global_linear_solution(std::string query, std::string reference, PENALTY_T &penalties,
                            array<array<array<float, SOL_MAX_REFERENCE_LENGTH>, SOL_MAX_QUERY_LENGTH>, SOL_N_LAYERS> &score_mat,
                            array<array<char, SOL_MAX_REFERENCE_LENGTH>, SOL_MAX_QUERY_LENGTH> &tb_mat,
                            map<string, string> &alignments)
{
    // NOTE: we cannot augment the score matrix like this in the hardware since
    // the initial scores for the following wavefronts will be shifted away in
    // the dp_mem!

    // declare the intial column and row
    array<float, MAX_QUERY_LENGTH> initial_col;
    array<float, MAX_REFERENCE_LENGTH> initial_row;

    // initialize the initial column
    float upper_left_value = 0;
    for (int i = 0; i < MAX_QUERY_LENGTH; i++)
    {
        upper_left_value += penalties.open; // since it was declared with type_t then convert back to int.
        initial_col[i] = upper_left_value;
    }

    // initialize the initial row
    upper_left_value = 0; // FIXME: This might to be initialized as 0
    for (int j = 0; j < MAX_REFERENCE_LENGTH; j++)
    {
        upper_left_value += penalties.open; // since it was declared with type_t then convert back to int.
        initial_row[j] = upper_left_value;
    }

    // initialize the score_matrix
    for (int i = 0; i < MAX_QUERY_LENGTH; i++)
    {
        for (int j = 0; j < MAX_REFERENCE_LENGTH; j++)
        {
            score_mat[0][i][j] = 0;
        }
    }

    // initialize the traceback matrix
    for (int i = 0; i < MAX_QUERY_LENGTH; i++)
    {
        for (int j = 0; j < MAX_REFERENCE_LENGTH; j++)
        {
            tb_mat[i][j] = '*';
        }
    }

    // Fill in the DP matrix and traceback matrix
    for (int i = 0; i < query.length(); i++)
    {
        int scr_diag, scr_up, scr_left;
        for (int j = 0; j < reference.length(); j++)
        {
            if (i == 0 && j == 0)
            {
                scr_diag = 0;
                scr_up = initial_row[j];
                scr_left = initial_col[i];
            }
            else if (i == 0 && j > 0)
            {
                scr_diag = initial_row[j - 1];
                scr_up = initial_row[j];
                scr_left = score_mat[0][i][j - 1];
            }
            else if (i > 0 && j == 0)
            {
                scr_diag = initial_col[i - 1];
                scr_up = score_mat[0][i - 1][j];
                scr_left = initial_col[i];
            }
            else
            {
                scr_diag = score_mat[0][i - 1][j - 1];
                scr_up = score_mat[0][i - 1][j];
                scr_left = score_mat[0][i][j - 1];
            }

            float m_score = scr_diag + (query[i] == reference[j] ? penalties.match : penalties.mismatch);
            float d_score = scr_up + penalties.linear_gap;
            float i_score = scr_left + penalties.linear_gap;

            float max_score = max(m_score, max(d_score, i_score));
            score_mat[0][i][j] = max_score;

            // Choose the maximum score and update the traceback matrix
            if (max_score == m_score)
            {
                tb_mat[i][j] = 'D'; // 'D' indicates a diagonal direction (match or mismatch)
            }
            else if (max_score == d_score)
            {
                tb_mat[i][j] = 'U'; // 'U' indicates an up direction (deletion)
            }
            else
            {
                tb_mat[i][j] = 'L'; // 'L' indicates a left direction (insertion)
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
        if (tb_mat[i][j] == 'D')
        {
            aligned_query = query[i] + aligned_query;
            aligned_reference = reference[j] + aligned_reference;
            i--;
            j--;
        }
        else if (tb_mat[i][j] == 'U')
        {
            aligned_query = query[i] + aligned_query;
            aligned_reference = "_" + aligned_reference;
            i--;
        }
        else if (tb_mat[i][j] == 'L')
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


// >>> Banding Global Linear Solution >>>
template <typename PENALTY_T, int SOL_MAX_QUERY_LENGTH, int SOL_MAX_REFERENCE_LENGTH, int SOL_N_LAYERS, int SOL_BANDWIDTH>
void fixed_banding_global_linear_solution(std::string query, std::string reference, PENALTY_T &penalties,
                            array<array<array<float, SOL_MAX_REFERENCE_LENGTH>, SOL_MAX_QUERY_LENGTH>, SOL_N_LAYERS> &score_mat,
                            array<array<char, SOL_MAX_REFERENCE_LENGTH>, SOL_MAX_QUERY_LENGTH> &tb_mat,
                            map<string, string> &alignments)
{
    // NOTE: we cannot augment the score matrix like this in the hardware since
    // the initial scores for the following wavefronts will be shifted away in
    // the dp_mem!

    // declare the intial column and row
    array<float, MAX_QUERY_LENGTH> initial_col;
    array<float, MAX_REFERENCE_LENGTH> initial_row;

    // initialize the initial column
    float upper_left_value = 0;
    for (int i = 0; i < MAX_QUERY_LENGTH; i++)
    {
        upper_left_value += penalties.open; // since it was declared with type_t then convert back to int.
        initial_col[i] = upper_left_value;
    }

    // initialize the initial row
    upper_left_value = 0; // FIXME: This might to be initialized as 0
    for (int j = 0; j < MAX_REFERENCE_LENGTH; j++)
    {
        upper_left_value += penalties.open; // since it was declared with type_t then convert back to int.
        initial_row[j] = upper_left_value;
    }

    // initialize the score_matrix
    for (int i = 0; i < MAX_QUERY_LENGTH; i++)
    {
        for (int j = 0; j < MAX_REFERENCE_LENGTH; j++)
        {
            score_mat[0][i][j] = 0;
        }
    }

    // initialize the traceback matrix
    for (int i = 0; i < MAX_QUERY_LENGTH; i++)
    {
        for (int j = 0; j < MAX_REFERENCE_LENGTH; j++)
        {
            tb_mat[i][j] = '*';
        }
    }

    int llim[SOL_MAX_QUERY_LENGTH], ulim[SOL_MAX_QUERY_LENGTH];
    for (int i = 0; i < SOL_MAX_QUERY_LENGTH; i++){
        llim[i] = max(0, i - SOL_BANDWIDTH);
        ulim[i] = min(SOL_MAX_REFERENCE_LENGTH - 1, i + SOL_BANDWIDTH - 1);
    }

    // Fill in the DP matrix and traceback matrix
    for (int i = 0; i < query.length(); i++)
    {
        int scr_diag, scr_up, scr_left;
        for (int j = 0; j < reference.length(); j++)
        {
            if (j < llim[i]) continue;
            if (j > ulim[i]) break;

            if (i == 0 && j == 0)
            {
                scr_diag = 0;
                scr_up = initial_row[j];
                scr_left = initial_col[i];
            }
            else if (i == 0 && j > 0)
            {
                scr_diag = initial_row[j - 1];
                scr_up = initial_row[j];
                scr_left = score_mat[0][i][j - 1];
            }
            else if (i > 0 && j == 0)
            {
                scr_diag = initial_col[i - 1];
                scr_up = score_mat[0][i - 1][j];
                scr_left = initial_col[i];
            }
            else
            {
                scr_diag = score_mat[0][i - 1][j - 1];
                scr_up = score_mat[0][i - 1][j];
                scr_left = score_mat[0][i][j - 1];
            }

            if (j == llim[i]){
                scr_left = NINF;
            }
            if (j == ulim[i]){
                scr_up = NINF;
            }

            float m_score = scr_diag + (query[i] == reference[j] ? penalties.match : penalties.mismatch);
            float d_score = scr_up + penalties.linear_gap;
            float i_score = scr_left + penalties.linear_gap;

            float max_score = max(m_score, max(d_score, i_score));
            score_mat[0][i][j] = max_score;

            // Choose the maximum score and update the traceback matrix
            if (max_score == m_score)
            {
                tb_mat[i][j] = 'D'; // 'D' indicates a diagonal direction (match or mismatch)
            }
            else if (max_score == d_score)
            {
                tb_mat[i][j] = 'U'; // 'U' indicates an up direction (deletion)
            }
            else
            {
                tb_mat[i][j] = 'L'; // 'L' indicates a left direction (insertion)
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
        if (tb_mat[i][j] == 'D')
        {
            aligned_query = query[i] + aligned_query;
            aligned_reference = reference[j] + aligned_reference;
            i--;
            j--;
        }
        else if (tb_mat[i][j] == 'U')
        {
            aligned_query = query[i] + aligned_query;
            aligned_reference = "_" + aligned_reference;
            i--;
        }
        else if (tb_mat[i][j] == 'L')
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


template <typename PENALTY_T, int SOL_MAX_QUERY_LENGTH, int SOL_MAX_REFERENCE_LENGTH, int SOL_N_LAYERS>
void global_affine_solution(std::string query, std::string reference, PENALTY_T &penalties,
                            array<array<array<float, SOL_MAX_REFERENCE_LENGTH>, SOL_MAX_QUERY_LENGTH>, SOL_N_LAYERS> &score_mat,
                            array<array<string, SOL_MAX_REFERENCE_LENGTH>, SOL_MAX_QUERY_LENGTH> &tb_mat,
                            map<string, string> &alignments)
{
    const int N_LAYERS_GA = 3; // N_Layers for global affiner kernel

    // Layer 0: Insertion Matrix
    // Layer 1: Match Mismatch Matrix
    // Layer 2: Deletion Matrix

    // Declare initial column and row scores
    array<array<float, N_LAYERS_GA>, MAX_QUERY_LENGTH> initial_col;
    array<array<float, N_LAYERS_GA>, MAX_REFERENCE_LENGTH> initial_row;

    // Initialize intial column and row values
    for (int i = 0; i < MAX_QUERY_LENGTH; i++)
    {
        initial_col[i][0] = -numeric_limits<float>::infinity();
        initial_col[i][1] = penalties.open + penalties.extend * (i + 1);
        initial_col[i][2] = 0; // This can be whatever, since won't be accessed
    }

    for (int j = 0; j < MAX_REFERENCE_LENGTH; j++)
    {
        initial_row[j][0] = 0; // This can be whatever, since won't be accessed
        initial_row[j][1] = penalties.open + penalties.extend * (j + 1);
        initial_row[j][2] = -numeric_limits<float>::infinity();
    }

    // Initialize the score matrix
    for (int i = 0; i < MAX_QUERY_LENGTH; i++)
    {
        for (int j = 0; j < MAX_REFERENCE_LENGTH; j++)
        {
            for (int k = 0; k < N_LAYERS_GA; k++)
            {
                score_mat[k][i][j] = 0;
            }
        }
    }

    // Initialize the traceback matrix
    for (int i = 0; i < MAX_QUERY_LENGTH; i++)
    {
        for (int j = 0; j < MAX_REFERENCE_LENGTH; j++)
        {
            tb_mat[i][j] = '*';
        }
    }

    // Fill in the DP matrix and traceback matrix
    for (int i = 0; i < query.length(); i++)
    {
        float del_scr, ins_scr;
        float scr_diag, scr_up, scr_left;
        for (int j = 0; j < reference.length(); j++)
        {
            if (i == 0 && j == 0)
            {
                scr_diag = 0;
                scr_up = initial_row[j][1];
                scr_left = initial_col[i][1];

                ins_scr = initial_col[i][0];
                del_scr = initial_row[j][2];
            }
            else if (i == 0 && j > 0)
            {
                scr_diag = initial_row[j - 1][1];
                scr_up = initial_row[j][1];
                scr_left = score_mat[1][i][j - 1];

                ins_scr = score_mat[0][i][j - 1];
                del_scr = initial_row[j][2];
            }
            else if (i > 0 && j == 0)
            {
                scr_diag = initial_col[i - 1][1];
                scr_up = score_mat[1][i - 1][j];
                scr_left = initial_col[i][1];

                ins_scr = initial_col[i][0];
                del_scr = score_mat[2][i - 1][j];
            }
            else
            {
                scr_diag = score_mat[1][i - 1][j - 1];
                scr_up = score_mat[1][i - 1][j];
                scr_left = score_mat[1][i][j - 1];

                ins_scr = score_mat[0][i][j - 1];
                del_scr = score_mat[2][i - 1][j];
            }

            float insertion_open_score = scr_left + penalties.open + penalties.extend;
            float insertion_extend_score = ins_scr + penalties.extend;

            float deletion_open_score = scr_up + penalties.open + penalties.extend;
            float deletion_extend_score = del_scr + penalties.extend;

            float mm_score = scr_diag + (query[i] == reference[j] ? penalties.match : penalties.mismatch);

            float insertion_score = max(insertion_open_score, insertion_extend_score);
            float deletion_score = max(deletion_open_score, deletion_extend_score);

            float final_score = max(mm_score, max(insertion_score, deletion_score));

            score_mat[0][i][j] = insertion_score;
            score_mat[1][i][j] = final_score;
            score_mat[2][i][j] = deletion_score;

            // Choose the maximum score and update the traceback matrix
            if (final_score == mm_score)
            {
                tb_mat[i][j] = "D "; // 'D' indicates a diagonal direction (match or mismatch)
            }
            else if (final_score == deletion_score)
            {
                tb_mat[i][j] = deletion_score == deletion_open_score ? "U " : "UE"; // 'U' indicates an up direction (deletion)
            }
            else if (final_score == insertion_score)
            {
                tb_mat[i][j] = insertion_score == insertion_open_score ? "L " : "LE"; // 'L' indicates a left direction (insertion)
            }
            else
            {
                cout << "ERROR: Invalid traceback matrix value" << endl;
                break;
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

// Write a local linear solution, which is similar to the global linear solution. The difference is that the local linear solution start
// the traceback from the cell with the highets score and ends where the score drop below 0.
template <typename PENALTY_T, int SOL_MAX_QUERY_LENGTH, int SOL_MAX_REFERENCE_LENGTH, int SOL_N_LAYERS>
void local_linear_solution(std::string query, std::string reference, PENALTY_T &penalties,
                           array<array<array<float, SOL_MAX_REFERENCE_LENGTH>, SOL_MAX_QUERY_LENGTH>, SOL_N_LAYERS> &score_mat,
                           array<array<char, SOL_MAX_REFERENCE_LENGTH>, SOL_MAX_QUERY_LENGTH> &tb_mat,
                           map<string, string> &alignments)
{
    // NOTE: we cannot augment the score matrix like this in the hardware since
    // the initial scores for the following wavefronts will be shifted away in
    // the dp_mem!

    // declare the intial column and row
    array<float, MAX_QUERY_LENGTH> initial_col;
    array<float, MAX_REFERENCE_LENGTH> initial_row;

    // initialize the initial column
    float upper_left_value = 0;
    for (int i = 0; i < MAX_QUERY_LENGTH; i++)
    {
        upper_left_value += 0; // since it was declared with type_t then convert back to int.
        initial_col[i] = upper_left_value;
    }

    // initialize the initial row
    upper_left_value = 0; // FIXME: This might to be initialized as 0
    for (int j = 0; j < MAX_REFERENCE_LENGTH; j++)
    {
        upper_left_value += 0; // since it was declared with type_t then convert back to int.
        initial_row[j] = upper_left_value;
    }

    // initialize the score_matrix
    for (int i = 0; i < MAX_QUERY_LENGTH; i++)
    {
        for (int j = 0; j < MAX_REFERENCE_LENGTH; j++)
        {
            score_mat[0][i][j] = 0;
        }
    }

    // initialize the traceback matrix
    for (int i = 0; i < MAX_QUERY_LENGTH; i++)
    {
        for (int j = 0; j < MAX_REFERENCE_LENGTH; j++)
        {
            tb_mat[i][j] = '*';
        }
    }

    float global_max_score = 0;
    int max_row = 0;
    int max_col = 0;

    // Fill in the DP matrix and traceback matrix
    for (int i = 0; i < query.length(); i++)
    {
        int scr_diag, scr_up, scr_left;
        for (int j = 0; j < reference.length(); j++)
        {
            if (i == 0 && j == 0)
            {
                scr_diag = 0;
                scr_up = initial_row[j];
                scr_left = initial_col[i];
            }
            else if (i == 0 && j > 0)
            {
                scr_diag = initial_row[j - 1];
                scr_up = initial_row[j];
                scr_left = score_mat[0][i][j - 1];
            }
            else if (i > 0 && j == 0)
            {
                scr_diag = initial_col[i - 1];
                scr_up = score_mat[0][i - 1][j];
                scr_left = initial_col[i];
            }
            else
            {
                scr_diag = score_mat[0][i - 1][j - 1];
                scr_up = score_mat[0][i - 1][j];
                scr_left = score_mat[0][i][j - 1];
            }

            float m_score = scr_diag + (query[i] == reference[j] ? penalties.match : penalties.mismatch);
            float d_score = scr_up + penalties.linear_gap;
            float i_score = scr_left + penalties.linear_gap;

            float max_score = max(max(m_score, max(d_score, i_score)), (float) 0);
            score_mat[0][i][j] = max_score;

            if (max_score > global_max_score)
            {
                global_max_score = max_score;
                max_row = i;
                max_col = j;
            }

            // Choose the maximum score and update the traceback matrix
            if (max_score == m_score)
            {
                tb_mat[i][j] = 'D'; // 'D' indicates a diagonal direction (match or mismatch)
            }
            else if (max_score == d_score)
            {
                tb_mat[i][j] = 'U'; // 'U' indicates an up direction (deletion)
            }
            else if (max_score == i_score)
            {
                tb_mat[i][j] = 'L'; // 'L' indicates a left direction (insertion)
            } else {
                tb_mat[i][j] = '*';
            }
        }
    }

    // Traceback to find the aligned sequences
    int i = max_row;
    int j = max_col;
    string aligned_query = "";
    string aligned_reference = "";

    while (i >= 0 && j >= 0)
    {
        if (tb_mat[i][j] == 'D')
        {
            aligned_query = query[i] + aligned_query;
            aligned_reference = reference[j] + aligned_reference;
            i--;
            j--;
        }
        else if (tb_mat[i][j] == 'U')
        {
            aligned_query = query[i] + aligned_query;
            aligned_reference = "_" + aligned_reference;
            i--;
        }
        else if (tb_mat[i][j] == 'L')
        {
            aligned_query = "_" + aligned_query;
            aligned_reference = reference[j] + aligned_reference;
            j--;
        } else if (tb_mat[i][j] == '*') {
            i--;
            j--;
            break;
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

template <typename PENALTY_T, int SOL_MAX_QUERY_LENGTH, int SOL_MAX_REFERENCE_LENGTH, int SOL_N_LAYERS>
void local_affine_solution(std::string query, std::string reference, PENALTY_T &penalties,
                           array<array<array<float, SOL_MAX_REFERENCE_LENGTH>, SOL_MAX_QUERY_LENGTH>, SOL_N_LAYERS> &score_mat,
                           array<array<string, SOL_MAX_REFERENCE_LENGTH>, SOL_MAX_QUERY_LENGTH> &tb_mat,
                           map<string, string> &alignments)
{
    const int N_LAYERS_GA = 3; // N_Layers for global affiner kernel

    // Layer 0: Insertion Matrix
    // Layer 1: Match Mismatch Matrix
    // Layer 2: Deletion Matrix

    // Declare initial column and row scores
    array<array<float, N_LAYERS_GA>, MAX_QUERY_LENGTH> initial_col;
    array<array<float, N_LAYERS_GA>, MAX_REFERENCE_LENGTH> initial_row;

    // Initialize intial column and row values
    for (int i = 0; i < MAX_QUERY_LENGTH; i++)
    {
        initial_col[i][0] = -numeric_limits<float>::infinity();
        initial_col[i][1] = 0;
        initial_col[i][2] = 0; // This can be whatever, since won't be accessed
    }

    for (int j = 0; j < MAX_REFERENCE_LENGTH; j++)
    {
        initial_row[j][0] = 0; // This can be whatever, since won't be accessed
        initial_row[j][1] = 0;
        initial_row[j][2] = -numeric_limits<float>::infinity();
    }

    // Initialize the score matrix
    for (int i = 0; i < MAX_QUERY_LENGTH; i++)
    {
        for (int j = 0; j < MAX_REFERENCE_LENGTH; j++)
        {
            for (int k = 0; k < N_LAYERS_GA; k++)
            {
                score_mat[k][i][j] = 0;
            }
        }
    }

    // Initialize the traceback matrix
    for (int i = 0; i < MAX_QUERY_LENGTH; i++)
    {
        for (int j = 0; j < MAX_REFERENCE_LENGTH; j++)
        {
            tb_mat[i][j] = '*';
        }
    }

    float maximum_score = -numeric_limits<float>::infinity();
    int max_i = 0;
    int max_j = 0;

    // Fill in the DP matrix and traceback matrix
    for (int i = 0; i < query.length(); i++)
    {
        float del_scr, ins_scr;
        float scr_diag, scr_up, scr_left;
        for (int j = 0; j < reference.length(); j++)
        {
            if (i == 0 && j == 0)
            {
                scr_diag = 0;
                scr_up = initial_row[j][1];
                scr_left = initial_col[i][1];

                ins_scr = initial_col[i][0];
                del_scr = initial_row[j][2];
            }
            else if (i == 0 && j > 0)
            {
                scr_diag = initial_row[j - 1][1];
                scr_up = initial_row[j][1];
                scr_left = score_mat[1][i][j - 1];

                ins_scr = score_mat[0][i][j - 1];
                del_scr = initial_row[j][2];
            }
            else if (i > 0 && j == 0)
            {
                scr_diag = initial_col[i - 1][1];
                scr_up = score_mat[1][i - 1][j];
                scr_left = initial_col[i][1];

                ins_scr = initial_col[i][0];
                del_scr = score_mat[2][i - 1][j];
            }
            else
            {
                scr_diag = score_mat[1][i - 1][j - 1];
                scr_up = score_mat[1][i - 1][j];
                scr_left = score_mat[1][i][j - 1];

                ins_scr = score_mat[0][i][j - 1];
                del_scr = score_mat[2][i - 1][j];
            }

            float insertion_open_score = scr_left + penalties.open + penalties.extend;
            float insertion_extend_score = ins_scr + penalties.extend;

            float deletion_open_score = scr_up + penalties.open + penalties.extend;
            float deletion_extend_score = del_scr + penalties.extend;

            float mm_score = scr_diag + (query[i] == reference[j] ? penalties.match : penalties.mismatch);

            float insertion_score = max(insertion_open_score, insertion_extend_score);
            float deletion_score = max(deletion_open_score, deletion_extend_score);

            float final_score = max(mm_score, max(insertion_score, deletion_score));

            if (final_score > maximum_score)
            {
                maximum_score = final_score;
                max_i = i;
                max_j = j;
            }

            score_mat[0][i][j] = insertion_score;
            score_mat[1][i][j] = final_score;
            score_mat[2][i][j] = deletion_score;

            // Choose the maximum score and update the traceback matrix
            if (final_score == mm_score)
            {
                tb_mat[i][j] = "D "; // 'D' indicates a diagonal direction (match or mismatch)
            }
            else if (final_score == deletion_score)
            {
                tb_mat[i][j] = deletion_score == deletion_open_score ? "U " : "UE"; // 'U' indicates an up direction (deletion)
            }
            else if (final_score == insertion_score)
            {
                tb_mat[i][j] = insertion_score == insertion_open_score ? "L " : "LE"; // 'L' indicates a left direction (insertion)
            }
            else
            {
                cout << "ERROR: Invalid traceback matrix value" << endl;
                break;
            }
        }
    }

    // Traceback to find the aligned sequences
    int i = max_i;
    int j = max_j;
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

template <typename T, int M, int N>
void print_matrix(array<array<T, N>, M> &mat, string name)
{
    int width = 2;
    cout << name << endl;
    for (int i = 0; i < M; i++)
    {
        for (int j = 0; j < N; j++)
        {

            cout << std::right << std::setw(width) << mat[i][j] << " ";
        }
        cout << endl;
    }
}

template <typename T, int M, int N>
void fprint_matrix(ofstream &file, array<array<T, N>, M> &mat, string name)
{
    int width = 2;
    file << name << endl;
    for (int i = 0; i < M; i++)
    {
        for (int j = 0; j < N; j++)
        {
            file << std::right << std::setw(width) << mat[i][j] << " ";
        }
        file << endl;
    }
}

template <typename T, int M, int N>
void fprint_matrix(ofstream &file, array<array<T, N>, M> &mat, string query, string reference, string name)
{
    int width = 2;
    file << name << endl;
    file << std::right << std::setw(width) << "  ";
    file << std::right << std::setw(width) << "   ";
    // print some index in the first row
    for (int j = 0; j < N; j++)
    {
        file << " " << std::right << std::setw(width) << j;
    }
    file << endl;
    file << std::right << std::setw(width) << "  ";
    file << std::right << std::setw(width) << "   ";
    for (int j = 0; j < N; j++)
    {
        file << " " << std::right << std::setw(width) << (j < reference.length() ? reference[j] : ' ');
    }
    file << endl;
    for (int i = 0; i < M; i++)
    {   
        file << std::right << std::setw(width) << i << " ";
        file << std::right << std::setw(width) << (i < query.length() ? query[i] : ' ') << " ";
        for (int j = 0; j < N; j++)
        {
            file << std::right << std::setw(width) << mat[i][j] << " ";
        }
        file << endl;
    }
}


template <typename T, int N>
void print_vector(array<T, N> &vec, string name)
{
    cout << name << endl;
    for (int i = 0; i < N; i++)
    {
        cout << vec[i] << " ";
    }
    cout << endl;
}