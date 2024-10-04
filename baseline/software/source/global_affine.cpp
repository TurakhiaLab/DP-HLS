#include <seqan3/alignment/pairwise/align_pairwise.hpp>
#include <seqan3/alphabet/nucleotide/dna4.hpp>
#include <seqan3/core/debug_stream.hpp>
#include <seqan3/alphabet/views/to_char.hpp>
#include <seqan3/utility/views/pairwise_combine.hpp>
#include <vector>
#include <string>
#include <chrono>
#include <thread> 
#include <numeric>
#include <iostream>

#include <seqan3/io/sequence_file/all.hpp>

int main(int argc, char *argv[])
{
    if (argc != 2) {
        std::cerr << "Usage: " << argv[0] << " num_threads" << std::endl;
        return 1;
    }

    int num_threads = std::atoi(argv[1]); 
    if (num_threads <= 0) {
        std::cerr << "Invalid number of threads: " << argv[1] << std::endl;
        return 1;
    }

    using seqan3::operator""_dna5;
    std::vector<int64_t> times;
    
    // Prepare your sequences
    // std::vector<std::vector<seqan3::dna4>> queries = {

    // };
    // std::vector<std::vector<seqan3::dna4>> references = {

    // };

    seqan3::sequence_file_input query_file{"/home/ubuntu/workspace/DP-HLS/baseline/software/source/processed_queries.fasta"};
    seqan3::sequence_file_input reference_file{"/home/ubuntu/workspace/DP-HLS/baseline/software/source/processed_references.fasta"};

    // Vector to store query sequences
    std::vector<seqan3::dna5> queries;

    // Read sequences from query file
    for (std::vector<seqan3::dna5> & record : query_file)
    {
        std::cout << record.sequence()[0] << std::end;
        exit(0);
        // queries.push_back(record.sequence());
    }

    // // Vector to store reference sequences
    // std::vector<std::vector<seqan3::dna4>> references;

    // // Read sequences from reference file
    // for (auto & [seq, id, qual] : reference_file)
    // {
    //     references.push_back(seq);
    // }

    // Set up the alignment configuration
    auto config = seqan3::align_cfg::method_global{} 
                                | seqan3::align_cfg::scoring_scheme{
                                  seqan3::nucleotide_scoring_scheme{}}  
                                | seqan3::align_cfg::gap_cost_affine{} 
                                | seqan3::align_cfg::output_score{} 
                                | seqan3::align_cfg::output_alignment{}
                                | seqan3::align_cfg::parallel{num_threads};

    // Align each query against each reference
    auto start = std::chrono::high_resolution_clock::now();
    for (int i = 0; i < 10; i++) {
        // auto alignment_results = seqan3::align_pairwise(seqan3::views::pairwise_combine(queries), config);
        // times.push_back(total_time);
    }
    auto end = std::chrono::high_resolution_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::microseconds>(end-start);

    std::cout << "Time taken: " << duration.count() << " microseconds" << '\n';

    // int64_t sum = std::accumulate(times.begin(), times.end(), 0); 
    // double average = static_cast<double>(sum) / 10;
    double average = static_cast<double>(duration.count()) / 10; 
    std::cout << "Average time: " << average << std::endl;
    std::cout << "Throughput: " << 1000 / (average / 1'000'000.0) << " alignments/seconds" << std::endl;
    return 0;
}
