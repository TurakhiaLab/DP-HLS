#include "solutions.h"

#include <iostream>
#include <array>
#include <string>
#include <map>
#include <limits>

using namespace std;

void global_linear_solution(string query, string reference,
                            Penalties_sol &penalties,
                            array<array<array<float, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH>, N_LAYERS> &score_mat,
                            array<array<char, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH> &tb_mat,
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

void global_affine_solution(std::string query, std::string reference, Penalties_sol &penalties,
                            array<array<array<float, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH>, N_LAYERS> &score_mat,
                            array<array<string, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH> &tb_mat,
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
        initial_col[i][0] = -INFINITY;
        initial_col[i][1] = penalties.open + penalties.extend * (i + 1);
        initial_col[i][2] = 0; // This can be whatever, since won't be accessed
    }

    for (int j = 0; j < MAX_REFERENCE_LENGTH; j++)
    {
        initial_row[j][0] = 0; // This can be whatever, since won't be accessed
        initial_row[j][1] = penalties.open + penalties.extend * (j + 1);
        initial_row[j][2] = -INFINITY;
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

void local_affine_solution(std::string query, std::string reference, Penalties_sol &penalties,
                           array<array<array<float, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH>, N_LAYERS> &score_mat,
                           array<array<string, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH> &tb_mat,
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
        initial_col[i][0] = -INFINITY;
        initial_col[i][1] = 0;
        initial_col[i][2] = 0; // This can be whatever, since won't be accessed
    }

    for (int j = 0; j < MAX_REFERENCE_LENGTH; j++)
    {
        initial_row[j][0] = 0; // This can be whatever, since won't be accessed
        initial_row[j][1] = 0;
        initial_row[j][2] = -INFINITY;
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

            if (final_score > maximum_score){
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