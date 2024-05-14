#include <string>
#include <vector>
#include <complex>


#include "params.h"
#include "seq_align_multiple.h"
#include "host_utils.h"
#include "debug.h"
#include "solutions.h"


#define TEST_QUERY_SIZE 256
#define TEST_REFERENCE_SIZE 256

struct Penalties_sol
{
    float linear_gap;
};

int main(){
    auto query = Random::SequenceComplex<char_t>(TEST_QUERY_SIZE);
    auto reference = Random::SequenceComplex<char_t>(TEST_REFERENCE_SIZE);

    auto query_sol = std::vector<complex<float>>();
    auto reference_sol = std::vector<complex<float>>();

    // Write a loop to explictly cast the kernel queries and references to the host
    for (int i = 0; i < TEST_QUERY_SIZE; i++){
        query_sol.push_back(complex<float>((float)  query[i].real,(float)  query[i].imag) );
    }
    for (int i = 0; i < TEST_REFERENCE_SIZE; i++){
        reference_sol.push_back(complex<float>((float)  reference[i].real,(float)  reference[i].imag));
    }

    // declare the query and reference buffer and copy the initialized data to the buffer
    char_t reference_buff[MAX_REFERENCE_LENGTH][N_BLOCKS];
    char_t query_buff[MAX_QUERY_LENGTH][N_BLOCKS];

    // print solution and kernel inputs
    cout << "Query: ";
    for (int i = 0; i < TEST_QUERY_SIZE; i++){
        cout << query_sol[i] << " ";
    }
    cout << endl;
    cout << "Reference: ";
    for (int i = 0; i < TEST_REFERENCE_SIZE; i++){
        cout << reference_sol[i] << " ";
    }
    cout << endl;
    
    cout << "Query Buff: ";
    for (int i = 0; i < TEST_QUERY_SIZE; i++){
        cout << (float) query[i].real << " " << (float) query[i].imag << " ";
    }
    cout << endl;
    cout << "Reference Buff: ";
    for (int i = 0; i < TEST_REFERENCE_SIZE; i++){
        cout << (float) reference[i].real << " " << (float) reference[i].imag << " ";
    }
    cout << endl;


    for (int b = 0; b < N_BLOCKS; b++)
    {
        for (int i = 0; i < MAX_QUERY_LENGTH; i++)
        {
            if (i < TEST_QUERY_SIZE){
                query_buff[i][b].imag = query[i].imag;
                query_buff[i][b].real = query[i].real;
            } else {
                query_buff[i][b].imag = 0;
                query_buff[i][b].real = 0;
            }
        }
        for (int i = 0; i < TEST_REFERENCE_SIZE; i++)
        {
            if (i < TEST_REFERENCE_SIZE){
                reference_buff[i][b].imag = reference[i].imag;
                reference_buff[i][b].real = reference[i].real;
            } else {
                reference_buff[i][b].imag = 0;
                reference_buff[i][b].real = 0;
            }
        }
    }

    Container debuggers[N_BLOCKS];
    for (int i = 0; i < N_BLOCKS; i++){
        debuggers[i] = Container();
    }

    Penalties penalties[N_BLOCKS];
    for (int i = 0; i < N_BLOCKS; i++){
        penalties[i].linear_gap = -1;
    }

    Penalties_sol penalties_sol;
    // for (int i = 0; i < N_BLOCKS; i++){ {
    penalties_sol.linear_gap = -1;
    // }

    try {
        if (query.size() > MAX_QUERY_LENGTH) throw std::runtime_error("Query length should less than MAX_QUERY_LENGTH, "
            "actual query len " + std::to_string(query.size()) + ", Allocated qry len: " + std::to_string(MAX_QUERY_LENGTH));
        if (reference.size() > MAX_REFERENCE_LENGTH) throw std::runtime_error("Reference length should less than MAX_REFERENCE_LENGTH, "
            "actual ref len " + std::to_string(reference.size()) + ", Allocated ref len: " + std::to_string(MAX_REFERENCE_LENGTH));
    } catch (const std::exception &e) {
        std::cerr << "Exception: " << e.what() << std::endl;
        throw;
    }

    idx_t qry_lengths[N_BLOCKS], ref_lengths[N_BLOCKS];

    for (int b = 0; b < N_BLOCKS; b++)
    {
        qry_lengths[b] = query.size();
        cout << "qry_lengths[" << b << "]: " << qry_lengths[b] << endl;
        ref_lengths[b] = reference.size();
        cout << "ref_lengths[" << b << "]: " << ref_lengths[b] << endl;
    }

    tbr_t tb_streams_d[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH][N_BLOCKS];
    tbr_t tb_streams_h[N_BLOCKS][MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH];

    // initialize traceback starting coordinates
    idx_t tb_is[N_BLOCKS];
    idx_t tb_js[N_BLOCKS];

// Actual kernel calling
    // Actual kernel calling
    seq_align_multiple_static(
        query_buff,
        reference_buff,
        qry_lengths,
        ref_lengths,
        penalties,
        tb_is, tb_js,
        tb_streams_d
#ifdef CMAKEDEBUG
        , debuggers
#endif
        );

    cout << "Kernel Executed" << endl;

    HostUtils::IO::SwitchDimension(tb_streams_d, tb_streams_h);

    // declare the solution data structure and call the solution function
    array<array<array<float, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH>, N_LAYERS> sol_score_mat;
    array<array<string, MAX_REFERENCE_LENGTH>, MAX_QUERY_LENGTH> sol_tb_mat;
    map<string, string> alignments;
    global_dtw_solution<Penalties_sol, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH, N_LAYERS>(query_sol, reference_sol, penalties_sol, sol_score_mat, sol_tb_mat, alignments);
    // print_matrix<float, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH>(sol_score_mat[0], "Solution Score Matrix Layer 0");
    // print_matrix<char, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH>(sol_tb_mat, "Solution Traceback Matrix");
    cout << "Solution Aligned Query    : " << alignments["query"] << endl;
    cout << "Solution Aligned Reference: " << alignments["reference"] << endl;
    // Display solution runtime

#ifdef CMAKEDEBUG
    // Cast kernel scores to matrix scores
    debuggers[0].cast_scores();
    // print_matrix<float, MAX_QUERY_LENGTH, MAX_REFERENCE_LENGTH>(debuggers[0].scores_cpp[0], "Kernel 0 Scores Layer 0");
    debuggers[0].compare_scores(sol_score_mat, query.size(), reference.size(), 1);  // check if the scores from the kernel matches scores from the solution
#endif

}