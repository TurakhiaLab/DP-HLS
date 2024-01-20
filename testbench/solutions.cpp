#include "solutions.h"

#include <iostream>
#include <array>
#include <string>
#include <map>

using namespace std;


void global_linear_solution(string query, string reference, Penalties_sol &penalties, 
    array<array<int, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH> &score_mat, 
    array<array<char, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH> &tb_mat,
    map<string, string> &alignments){

    // NOTE: we cannot augment the score matrix like this in the hardware since
    // the initial scores for the following wavefronts will be shifted away in 
    // the dp_mem! 

    // declare the intial column and row
    array<float, MAX_QUERY_LENGTH> initial_col;
    array<float, MAX_REFERENCE_LENGTH> initial_row;

    // initialize the initial column
    float upper_left_value = 0;
    for (int i = 0; i < MAX_QUERY_LENGTH; i++) {
        upper_left_value -= penalties.open;  // since it was declared with type_t then convert back to int. 
        initial_col[i] = upper_left_value;
    }

    // initialize the initial row
    upper_left_value = 0;  // FIXME: This might to be initialized as 0
    for (int j = 0; j < MAX_REFERENCE_LENGTH; j++) {
        upper_left_value -= penalties.open;  // since it was declared with type_t then convert back to int. 
        initial_row[j] = upper_left_value;
    }
    
    // initialize the score_matrix
    for (int i = 0; i < MAX_QUERY_LENGTH; i++) {
        for (int j = 0; j < MAX_REFERENCE_LENGTH; j++) {
            score_mat[i][j] = 0;
        }
    }

    // initialize the traceback matrix
    for (int i = 0; i < MAX_QUERY_LENGTH; i++) {
        for (int j = 0; j < MAX_REFERENCE_LENGTH; j++) {
            tb_mat[i][j] = '*';
        }
    }
    
    // Fill in the DP matrix and traceback matrix
    for (int i = 0; i < query.length(); i++) {
        int scr_diag, scr_up, scr_left;
        for (int j = 0; j < reference.length(); j++) {
            if (i == 0 && j == 0) {
                scr_diag = 0;
                scr_up = initial_row[j];
                scr_left = initial_col[i];
            } else if (i == 0 && j > 0)
            {
                scr_diag = initial_row[j - 1];
                scr_up = initial_row[j];
                scr_left = score_mat[i][j - 1];
            } else if (i > 0 && j == 0)
            {
                scr_diag = initial_col[i - 1];
                scr_up = score_mat[i - 1][j];
                scr_left = initial_col[i];
            } else
            {
                scr_diag = score_mat[i - 1][j - 1];
                scr_up = score_mat[i - 1][j];
                scr_left = score_mat[i][j - 1];
            }
            
            float m_score = scr_diag + (query[i] == reference[j] ? penalties.match : penalties.mismatch);
            float d_score = scr_up + penalties.linear_gap;
            float i_score = scr_left + penalties.linear_gap;

            float max_score = max(m_score, max(d_score, i_score));
            score_mat[i][j] = m_score;

            // Choose the maximum score and update the traceback matrix
            if (max_score == m_score) {
                tb_mat[i][j] = 'D'; // 'D' indicates a diagonal direction (match or mismatch)
            } else if (max_score == d_score) {
                tb_mat[i][j] = 'U'; // 'U' indicates an up direction (deletion)
            } else {
                tb_mat[i][j] = 'L'; // 'L' indicates a left direction (insertion)
            }
        }
    }

    // Traceback to find the aligned sequences
    int i = query.length()-1;
    int j = reference.length()-1;
    string aligned_query = "";
    string aligned_reference = "";

    while (i > 0 && j > 0) {
        if (tb_mat[i][j] == 'D') {
            aligned_query = query[i] + aligned_query;
            aligned_reference = reference[j] + aligned_reference;
            i--;
            j--;
        } else if (tb_mat[i][j] == 'U') {
            aligned_query = query[i] + aligned_query;
            aligned_reference = "-" + aligned_reference;
            i--;
        } else if (tb_mat[i][j] == 'L') {
            aligned_query = "-" + aligned_query;
            aligned_reference = reference[j] + aligned_reference;
            j--;
        } else {
            cout << "ERROR: Invalid traceback matrix value" << endl;
            break;
        }
    }

    alignments["query"] = aligned_query;
    alignments["reference"] = aligned_reference;
}

// void global_affine_solution(string query, string reference) {
//     int m = query.length();
//     int n = reference.length();
    
//     vector<vector<int>> F(m + 1, vector<int>(n + 1)); // F matrix for match/mismatch
//     vector<vector<int>> H(m + 1, vector<int>(n + 1)); // H matrix for gap in sequence 1
//     vector<vector<int>> V(m + 1, vector<int>(n + 1)); // V matrix for gap in sequence 2

//     // Initialize the matrices
//     for (int i = 0; i <= m; i++) {
//         F[i][0] = GAP_OPEN + i * GAP_EXTENSION;
//         H[i][0] = GAP_OPEN + i * GAP_EXTENSION;
//         V[i][0] = GAP_OPEN + i * GAP_EXTENSION;
//     }
//     for (int j = 0; j <= n; j++) {
//         F[0][j] = GAP_OPEN + j * GAP_EXTENSION;
//         H[0][j] = GAP_OPEN + j * GAP_EXTENSION;
//         V[0][j] = GAP_OPEN + j * GAP_EXTENSION;
//     }

//     // Fill in the matrices
//     for (int i = 1; i <= m; i++) {
//         for (int j = 1; j <= n; j++) {
//             // Calculate scores for match/mismatch
//             int matchScore = F[i-1][j-1] + (query[i-1] == reference[j-1] ? MATCH_SCORE : MISMATCH_SCORE);
//             // Calculate scores for gaps in sequence 1 and sequence 2
//             int gapH = H[i][j-1] + GAP_EXTENSION;
//             int gapV = V[i-1][j] + GAP_EXTENSION;
//             // Update the matrices with the maximum score
//             F[i][j] = max(matchScore, gapH, gapV);
//             H[i][j] = max(F[i][j-1] + GAP_OPEN, H[i][j-1] + GAP_EXTENSION);
//             V[i][j] = max(F[i-1][j] + GAP_OPEN, V[i-1][j] + GAP_EXTENSION);
//         }
//     }

//     // Traceback to find the alignment
//     int i = m, j = n;
//     string aligned_query = "";
//     string aligned_reference = "";

//     while (i > 0 || j > 0) {
//         if (i > 0 && F[i][j] == F[i-1][j] + GAP_OPEN) {
//             aligned_query = query[i-1] + aligned_query;
//             aligned_reference = "-" + aligned_reference;
//             i--;
//         } else if (j > 0 && F[i][j] == F[i][j-1] + GAP_OPEN) {
//             aligned_query = "-" + aligned_query;
//             aligned_reference = reference[j-1] + aligned_reference;
//             j--;
//         } else {
//             aligned_query = query[i-1] + aligned_query;
//             aligned_reference = reference[j-1] + aligned_reference;
//             i--;
//             j--;
//         }
//     }

//     // Print the aligned sequences and the alignment score
//     cout << "Aligned Sequence 1: " << aligned_query << endl;
//     cout << "Aligned Sequence 2: " << aligned_reference << endl;
//     cout << "Alignment Score: " << F[m][n] << endl;
// }


