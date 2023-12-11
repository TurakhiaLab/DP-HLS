// FIXME: Wheird that if including params.h, the host code will not compile with weird bug. 
// Need a more elegant way. Currently just redefine those types

#include "xcl2.hpp"
#include <vector>
#include <algorithm>
#include <ap_int.h>
#include <ap_fixed.h>

#define MAX_QUERY_LENGTH 256
#define MAX_REFERENCE_LENGTH 256
#define N_BLOCKS 1

// Primitive Types
typedef ap_uint<2> char_t;  // Sequence Alphabet
typedef ap_fixed<16, 10> type_t;  // Scores Type <width, integer_width>
typedef ap_uint<8> idx_t;  // Indexing Type, could be much less than 32. ap_uint<8>
typedef ap_uint<4> tbp_t;  // Traceback Pointer Type
typedef ap_uint<2> tbr_t;  // Traecback Result Type

struct Penalties {
    type_t open;
    type_t extend;
    type_t mismatch;
    type_t match;
    type_t linear_gap;
};

int main(int argc, char **argv) {
    if (argc != 2) {
        std::cout << "Usage: " << argv[0] << " <XCLBIN File>" << std::endl;
        return EXIT_FAILURE;
    }

    std::string binaryFile = argv[1];
    cl_int err;
    cl::Context context;
    cl::Kernel krnl_seq_align;
    cl::CommandQueue q;

    // Allocate memory for each array
    std::vector<char_t, aligned_allocator<char_t>> querys(N_BLOCKS * MAX_QUERY_LENGTH);
    std::vector<char_t, aligned_allocator<char_t>> references(N_BLOCKS * MAX_REFERENCE_LENGTH);
    std::vector<idx_t, aligned_allocator<idx_t>> query_lengths(N_BLOCKS);
    std::vector<idx_t, aligned_allocator<idx_t>> reference_lengths(N_BLOCKS);
    std::vector<Penalties, aligned_allocator<Penalties>> penalties(1); // Assuming a single penalties struct
    std::vector<tbr_t, aligned_allocator<tbr_t>> tb_streams(N_BLOCKS * (MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH));

    // Initialize your data here
    // ...

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
                                               sizeof(Penalties), penalties.data(), &err));
    OCL_CHECK(err, cl::Buffer buffer_tb_streams(context, CL_MEM_USE_HOST_PTR | CL_MEM_WRITE_ONLY, 
                                                sizeof(tbr_t) * tb_streams.size(), tb_streams.data(), &err));

    // Set Kernel Arguments
    OCL_CHECK(err, err = krnl_seq_align.setArg(0, buffer_querys));
    OCL_CHECK(err, err = krnl_seq_align.setArg(1, buffer_references));
    OCL_CHECK(err, err = krnl_seq_align.setArg(2, buffer_query_lengths));
    OCL_CHECK(err, err = krnl_seq_align.setArg(3, buffer_reference_lengths));
    OCL_CHECK(err, err = krnl_seq_align.setArg(4, buffer_penalties));
    OCL_CHECK(err, err = krnl_seq_align.setArg(5, buffer_tb_streams));

    // Copy input data to device global memory
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_querys, buffer_references, buffer_query_lengths, 
                                                     buffer_reference_lengths, buffer_penalties}, 0 /* 0 means from host*/));

    // Launch the Kernel
    OCL_CHECK(err, err = q.enqueueTask(krnl_seq_align));

    // Copy Result from Device Global Memory to Host Local Memory
    OCL_CHECK(err, err = q.enqueueMigrateMemObjects({buffer_tb_streams}, CL_MIGRATE_MEM_OBJECT_HOST));
    q.finish();
    // OPENCL HOST CODE AREA END

    // Process results
    // ...

    std::cout << "Kernel execution complete." << std::endl;
    return EXIT_SUCCESS;
}
