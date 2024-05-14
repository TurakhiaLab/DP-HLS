// FIXME: Wheird that if including params.h, the host code will not compile with weird bug. 
// Need a more elegant way. Currently just redefine those types

#include "xcl2.hpp"
#include <vector>
#include <algorithm>
#include <ap_int.h>
#include <ap_fixed.h>
#include "../../include/host_utils.h"
#include "params.h"
#include "dp_hls_common.h"
#include <map>
#include <chrono>


int base_to_num(char base){
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
#ifdef CMAKEDEBUG
        throw std::runtime_error("Unrecognized Nucleotide " + std::string(1, base) + " from A, C, G, and T.\n"); // or throw an exception
#endif
    }
}

#define MU 0.4
#define LAMBDA 0.4

int main(int argc, char **argv) {
    if (argc != 2) {
        std::cout << "Usage: " << argv[0] << " <XCLBIN File>" << std::endl;
        return EXIT_FAILURE;
    }

    char alphabet[] = {'A', 'T', 'C', 'G'};  // currently putting just random sequence here
    string querys_src = Random::Sequence<4>(alphabet, N_BLOCKS * MAX_QUERY_LENGTH);
    string references_src = Random::Sequence<4>(alphabet, N_BLOCKS * MAX_REFERENCE_LENGTH);

    std::string binaryFile = argv[1];
    cl_int err;
    cl::Context context;
    cl::Kernel krnl_seq_align;
    cl::CommandQueue q;

    // Allocate memory for each array
    // std::vector<char, aligned_allocator<char_t>> querys_chars(N_BLOCKS * MAX_QUERY_LENGTH);
    // std::vector<char, aligned_allocator<char_t>> references_chars(N_BLOCKS * MAX_REFERENCE_LENGTH);
    std::vector<char_t, aligned_allocator<char_t>> querys(N_BLOCKS * MAX_QUERY_LENGTH);
    std::vector<char_t, aligned_allocator<char_t>> references(N_BLOCKS * MAX_REFERENCE_LENGTH);
    std::vector<idx_t, aligned_allocator<idx_t>> query_lengths(N_BLOCKS);
    std::vector<idx_t, aligned_allocator<idx_t>> reference_lengths(N_BLOCKS);
    std::vector<Penalties, aligned_allocator<Penalties>> penalties(N_BLOCKS); // Assuming a single penalties struct
    std::vector<idx_t, aligned_allocator<idx_t>> traceback_start_is(N_BLOCKS);  // Allocate buffer for the starting row and column of the buffer
    std::vector<idx_t, aligned_allocator<idx_t>> traceback_start_js(N_BLOCKS);
    std::vector<tbr_t, aligned_allocator<tbr_t>> tb_streams(N_BLOCKS * (MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH));


    float transition_[5][5] = {
        {0.8, 0.3, 0.3, 0.3, 0.2},
        {0.3, 0.8, 0.3, 0.3, 0.2},
        {0.3, 0.3, 0.8, 0.3, 0.2},
        {0.3, 0.3, 0.3, 0.8, 0.2},
        {0.2, 0.2, 0.2, 0.2, 0.2}
    };

    float log_transitions_[5][5];
    for (int i = 0; i < 5; i++){
        for (int j = 0; j < 5; j++){
            log_transitions_[i][j] = log(transition_[i][j]);
        }
    }

    // Struct for Penalties in kernel
    // Penalties penalties_v[N_BLOCKS];
    for (int i = 0; i < N_BLOCKS; i++){
        query_lengths[i] = MAX_QUERY_LENGTH;
        reference_lengths[i] = MAX_REFERENCE_LENGTH;
        for (int j = 0; j < MAX_QUERY_LENGTH; j++) {
            querys[i * MAX_QUERY_LENGTH + j] = (type_t) base_to_num(querys_src[i * MAX_QUERY_LENGTH + j]);
        }
        for (int j = 0; j < MAX_REFERENCE_LENGTH; j++) {
            references[i * MAX_REFERENCE_LENGTH + j] = (type_t) base_to_num(references_src[i * MAX_REFERENCE_LENGTH + j]);
        }

        penalties[i].log_mu = log(MU);
        penalties[i].log_lambda = log(LAMBDA);
        penalties[i].log_1_m_mu = log(1 - MU);
        penalties[i].log_1_m_2_lambda = log(1 - 2 * LAMBDA);
        for (int j = 0; j < 5; j++){
            for (int k = 0; k < 5; k++){
                penalties[i].transition[j][k] = log_transitions_[j][k];
            }
        }
    }


    // OPENCL HOST CODE AREA START
    auto devices = xcl::get_xil_devices();
    auto fileBuf = xcl::read_binary_file(binaryFile);
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};
    bool valid_device = false;
    for (unsigned int i = 0; i < devices.size(); i++) {
        auto device = devices[i];
        OCL_CHECK(err, context = cl::Context(device, nullptr, nullptr, nullptr, &err));
        OCL_CHECK(err, q = cl::CommandQueue(context, device, CL_QUEUE_PROFILING_ENABLE, &err));
        std::cout << "Trying to program device[" << i << "]: " << device.getInfo<CL_DEVICE_NAME>() << std::endl;
        cl::Program program(context, {device}, bins, nullptr, &err);
        if (err != CL_SUCCESS) {
            std::cout << "Failed to program device[" << i << "] with xclbin file!\n";
        } else {
            std::cout << "Device[" << i << "]: program successful!\n";
            OCL_CHECK(err, krnl_seq_align = cl::Kernel(program, "seq_align_multiple_static", &err));
            valid_device = true;
            break;
        }
    }
    if (!valid_device) {
        std::cout << "Failed to program any device found, exit!\n";
        exit(EXIT_FAILURE);
    }

    // Allocate Buffers in Global Memory and set kernel arguments
    OCL_CHECK(err, cl::Buffer buffer_querys(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, 
                                            sizeof(char_t) * querys.size(), querys.data(), &err));
    OCL_CHECK(err, cl::Buffer buffer_references(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, 
                                                sizeof(char_t) * references.size(), references.data(), &err));
    OCL_CHECK(err, cl::Buffer buffer_query_lengths(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, 
                                                   sizeof(idx_t) * query_lengths.size(), query_lengths.data(), &err));
    OCL_CHECK(err, cl::Buffer buffer_reference_lengths(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, 
                                                       sizeof(idx_t) * reference_lengths.size(), reference_lengths.data(), &err));
    OCL_CHECK(err, cl::Buffer buffer_penalties(context, CL_MEM_USE_HOST_PTR | CL_MEM_READ_ONLY, 
                                               sizeof(Penalties) * penalties.size(), penalties.data(), &err));
    OCL_CHECK(err, cl::Buffer buffer_traceback_start_is(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY,  
                                                   sizeof(idx_t) * traceback_start_is.size(), traceback_start_is.data(), &err));
    OCL_CHECK(err, cl::Buffer buffer_traceback_start_js(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, 
                                                       sizeof(idx_t) * traceback_start_js.size(), traceback_start_js.data(), &err));
    OCL_CHECK(err, cl::Buffer buffer_tb_streams(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, 
                                                sizeof(tbr_t) * tb_streams.size(), tb_streams.data(), &err));
                                                

    // Set Kernel Arguments
    OCL_CHECK(err, err = krnl_seq_align.setArg(0, buffer_querys));
    OCL_CHECK(err, err = krnl_seq_align.setArg(1, buffer_references));
    OCL_CHECK(err, err = krnl_seq_align.setArg(2, buffer_query_lengths));
    OCL_CHECK(err, err = krnl_seq_align.setArg(3, buffer_reference_lengths));
    OCL_CHECK(err, err = krnl_seq_align.setArg(4, buffer_penalties));
    OCL_CHECK(err, err = krnl_seq_align.setArg(5, buffer_traceback_start_is));
    OCL_CHECK(err, err = krnl_seq_align.setArg(6, buffer_traceback_start_js));
    OCL_CHECK(err, err = krnl_seq_align.setArg(7, buffer_tb_streams));

    // Copy input data to device global memory
    auto start = std::chrono::high_resolution_clock::now();
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_querys, buffer_references, buffer_query_lengths, 
                                                     buffer_reference_lengths, buffer_penalties}, 0 /* 0 means from host*/));

    // Launch the Kernel
    OCL_CHECK(err, err = q.enqueueTask(krnl_seq_align));
    

    // Copy Result from Device Global Memory to Host Local Memory
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_traceback_start_is, buffer_traceback_start_js, buffer_tb_streams}, CL_MIGRATE_MEM_OBJECT_HOST));
    q.finish();
    auto end = std::chrono::high_resolution_clock::now();
    
    // OPENCL HOST CODE AREA END

    // Print raw traceback pointer streams
    for (int i = 0; i < N_BLOCKS; i++) {
        std::cout << "Block " << i << " Results" << std::endl;
        std::cout << "Query: " << std::endl;
        for (int j = 0; j < MAX_QUERY_LENGTH; j++) {
            for (int k = 0; k < 5; k++){
                std::cout << querys[i * MAX_QUERY_LENGTH + j][k] << " ";
            }
            std::cout << std::endl;
        }
        std::cout << std::endl;
        std::cout << "Reference: " << std::endl;
        for (int j = 0; j < MAX_REFERENCE_LENGTH; j++) {
            for (int k = 0; k < 5; k++){
                std::cout << references[i * MAX_REFERENCE_LENGTH + j][k] << " ";
            }
            std::cout << std::endl;
        }
        std::cout << std::endl;
        std::cout << "Traceback: " << std::endl;
        for (int j = 0; j < MAX_QUERY_LENGTH + MAX_REFERENCE_LENGTH; j++) {
            std::cout << tb_streams[i * (MAX_QUERY_LENGTH + MAX_REFERENCE_LENGTH) + j];
        }
        std::cout << std::endl;
        std::cout << std::endl;
    }

    // set up the array to store the traceback lengthes
    // string query_strings_primitive[N_BLOCKS];
    // string reference_strings_primitive[N_BLOCKS];
    // for (int i = 0; i < N_BLOCKS; i++){
    //     query_strings_primitive[i] = querys_strings.substr(i * MAX_QUERY_LENGTH, MAX_QUERY_LENGTH);
    //     reference_strings_primitive[i] = references_strings.substr(i * MAX_REFERENCE_LENGTH, MAX_REFERENCE_LENGTH);
    // }

    // tbr_t tb_streams_primitive[N_BLOCKS][MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH];
    // for (int i = 0; i < N_BLOCKS; i++){
    //     for (int j = 0; j < MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH; j++){
    //         tb_streams_primitive[i][j] = tb_streams[i * (MAX_QUERY_LENGTH + MAX_REFERENCE_LENGTH) + j];
    //     }
    // }
    
    // int tb_qry_lengths[N_BLOCKS];
    // int tb_ref_lengths[N_BLOCKS];
    // for (int i = 0; i < N_BLOCKS; i++){
    //     tb_qry_lengths[i] = traceback_start_is[i];
    //     tb_ref_lengths[i] = traceback_start_js[i];
    // }
    // std::cout << "Reconstructing Traceback" << std::endl;
    // array<map<string, string>, N_BLOCKS> kernel_alignments;
    // kernel_alignments = ReconstructTracebackBlocks(
    //     query_strings_primitive,
    //     reference_strings_primitive,
    //     tb_qry_lengths, tb_ref_lengths, 
    //     tb_streams_primitive);

    // // Print Actual Alignments
    // for (int i = 0; i < N_BLOCKS; i++){
    //     std::cout << "Block " << i << " Results" << std::endl;
    //     std::cout << "Query    : " << query_strings_primitive[i] << std::endl;
    //     std::cout << "Reference: " << reference_strings_primitive[i] << std::endl;
    //     std::cout << "Kernel Aligned Query    : " << kernel_alignments[i]["query"] << std::endl;
    //     std::cout << "Kernel Aligned Reference: " << kernel_alignments[i]["reference"] << std::endl << std::endl;
    // }

    // Print time
    std::cout << "Kernel execution time: " << std::chrono::duration_cast<std::chrono::milliseconds>(end - start).count() << "ms" << std::endl;

    std::cout << "Kernel execution complete." << std::endl;
    return EXIT_SUCCESS;
}
