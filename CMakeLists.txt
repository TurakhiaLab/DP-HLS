cmake_minimum_required (VERSION 3.8)  # On AWS FPGA AMI, This should be 2.8, but on Raptor we can use 3.8

# Enable Hot Reload for MSVC compilers if supported.
if (POLICY CMP0141)
    cmake_policy(SET CMP0141 NEW)
    set(CMAKE_MSVC_DEBUG_INFORMATION_FORMAT "$<IF:$<AND:$<C_COMPILER_ID:MSVC>,$<CXX_COMPILER_ID:MSVC>>,$<$<CONFIG:Debug,RelWithDebInfo>:EditAndContinue>,$<$<CONFIG:Debug,RelWithDebInfo>:ProgramDatabase>>")
endif()

project ("DP-HLS")

# set(RAPTOR 1)
set(F1 1)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O0 -g -fsanitize=address -fno-inline -DCMAKE_BUILD_TYPE=Debug")
# "-fsanitize=address" flag was used to check the stack smashing with Google Address Sanitizer. Use this flag with CLang and 
# run the program to check. 

set(DP_HLS_HOME "/home/centos/workspace/banding/DP-HLS")

set(EXECUTABLE_TARGETS
    baseline_local_linear

    test_simd
    test_csim_global_linear
    test_csim_banding_global_linear
    test_csim_global_affine
    test_csim_local_linear
    test_csim_local_affine 
    test_csim_dtw
    test_csim_profile_alignment
    test_csim_profile_alignment_real_data
    test_csim_viterbi
    test_csim_semi_global_linear_long_short
    test_csim_semi_global_linear_short_long
    test_csim_overlap_linear_prefix_suffix
    test_csim_overlap_linear_suffix_prefix
    test_csim_local_two_piece_affine
    test_csim_global_two_piece_affine
    test_csim_banding_global_two_piece_affine 
    test_csim_banding_local_affine
    test_csim_banding_local_affine_scored
    test_global_affine_real_data
)

add_compile_definitions(PUBLIC CMAKEDEBUG)
add_compile_definitions(PUBLIC VPP_CLI)

set(COMMON_SRCS
    "src/seq_align_multiple.cpp"
    "src/align.cpp"
    "src/pe.cpp"
    "src/traceback.cpp"
    "src/utils.cpp"
    "src/debug.cpp"
    "src/host_utils.cpp")

add_executable(test_simd
        testbench/test_simd.cpp)

# Compile baseline kernel. 
add_executable(baseline_local_linear "legacy/local_linear.h"
    "legacy/local_linear.cpp"
    "legacy/shift_register.h"
    "legacy/local_linear_testbench.cpp" )


add_executable(test_csim_global_linear 
    "testbench/test_csim_global_linear.cpp"
    "kernels/global_linear/kernel_global_linear.cpp"
    ${COMMON_SRCS})

add_executable(test_csim_banding_global_linear
    "testbench/test_csim_banding_global_linear.cpp"
    "kernels/banding_global_linear/kernel_banding_global_linear.cpp"
    ${COMMON_SRCS})

add_executable(test_csim_banding_local_affine
    "/home/centos/workspace/DP-HLS/kernels/banding_local_affine/kernel_banding_local_affine.cpp"
    "testbench/test_csim_local_affine.cpp"
    ${COMMON_SRCS}
)

add_executable(test_csim_local_linear 
    "testbench/test_csim_local_linear.cpp"
    "kernels/local_linear/kernel_local_linear.cpp"
    ${COMMON_SRCS})

add_executable(test_csim_global_affine
    "testbench/test_csim_global_affine.cpp"
    "kernels/global_affine/kernel_global_affine.cpp"
    ${COMMON_SRCS})

# BSW in Darwin-WGA
add_executable(test_csim_banding_local_affine_scored 
    "kernels/banding_local_affine_scored/banding_local_affine_scored.cpp"
    "testbench/test_csim_banding_local_affine_scored.cpp"
    ${COMMON_SRCS})


add_executable(test_csim_local_affine
    "testbench/test_csim_local_affine.cpp"
    "kernels/local_affine/kernel_local_affine.cpp"
    ${COMMON_SRCS})

add_executable(test_csim_profile_alignment
    "testbench/test_csim_profile_alignment.cpp"
    "kernels/profile_alignment/kernel_profile_alignment.cpp"
    ${COMMON_SRCS})

add_executable(test_csim_profile_alignment_real_data
    "testbench/test_csim_profile_alignment_real_data.cpp"
    "kernels/profile_alignment/kernel_profile_alignment.cpp"
    ${COMMON_SRCS})

add_executable(test_csim_dtw 
    "testbench/test_csim_dtw.cpp"
    "kernels/dtw/kernel_dtw.cpp"
    ${COMMON_SRCS})

add_executable(test_csim_viterbi
    "testbench/test_csim_viterbi.cpp"
    "kernels/viterbi/kernel_viterbi.cpp"
    ${COMMON_SRCS})

add_executable(test_csim_semi_global_linear_long_short
    "testbench/test_csim_semi_global_linear_long_short.cpp"
    "kernels/semi_global_linear_long_short/kernel_semi_global_linear_long_short.cpp"
    ${COMMON_SRCS})

add_executable(test_csim_semi_global_linear_short_long
    "testbench/test_csim_semi_global_linear_short_long.cpp"
    "kernels/semi_global_linear_short_long/kernel_semi_global_linear_short_long.cpp"
    ${COMMON_SRCS})

add_executable(test_csim_overlap_linear_prefix_suffix
    "testbench/test_csim_overlap_linear_prefix_suffix.cpp"
    "kernels/overlap_linear_prefix_suffix/kernel_overlap_linear_prefix_suffix.cpp"
    ${COMMON_SRCS}) 

add_executable(test_csim_overlap_linear_suffix_prefix
    "testbench/test_csim_overlap_linear_suffix_prefix.cpp"
    "kernels/overlap_linear_suffix_prefix/kernel_overlap_linear_suffix_prefix.cpp"
    ${COMMON_SRCS}) 
  
add_executable(test_csim_global_two_piece_affine
    "testbench/test_csim_global_two_piece_affine.cpp"
    "kernels/global_two_piece_affine/kernel_global_two_piece_affine.cpp"
    ${COMMON_SRCS}) 

add_executable(test_csim_banding_global_two_piece_affine 
    "kernels/banding_global_two_piece_affine/kernel_banding_global_two_piece_affine.cpp"
    "testbench/test_csim_global_two_piece_affine.cpp"
    ${COMMON_SRCS})

add_executable(test_csim_local_two_piece_affine
    "testbench/test_csim_local_two_piece_affine.cpp"
    "kernels/local_two_piece_affine/kernel_local_two_piece_affine.cpp"
    ${COMMON_SRCS}) 


add_executable(test_global_affine_real_data
    "testbench/test_csim_global_affine_real_data.cpp"
    "kernels/global_affine/kernel_global_affine.cpp"
    ${COMMON_SRCS}
)


# Test Python APIs
#add_executable(test_pyapi "testbench/test_align.cpp"
#    "include/seq_align_multiple.h"
#    "include/align.h"
#    "include/PE.h"
#    "include/utils.h"
#    "include/pyapi.h"
#    "src/seq_align_multiple.cpp"
#    "src/align/align.cpp"
#    "src/pe.cpp"
#    "src/traceback.cpp"
#    "src/pyapi.cpp"
#    "include/debug.h")


target_include_directories(test_csim_global_affine PRIVATE "${DP_HLS_HOME}/kernels/global_affine")
target_include_directories(test_csim_global_linear PRIVATE "${DP_HLS_HOME}/kernels/global_linear")
target_include_directories(test_csim_banding_global_linear PRIVATE "${DP_HLS_HOME}/kernels/banding_global_linear")
target_include_directories(test_csim_local_linear PRIVATE "${DP_HLS_HOME}/kernels/local_linear")
target_include_directories(test_csim_local_affine PRIVATE "${DP_HLS_HOME}/kernels/local_affine")
target_include_directories(test_csim_profile_alignment PRIVATE "${DP_HLS_HOME}/kernels/profile_alignment")
target_include_directories(test_csim_profile_alignment_real_data PRIVATE "${DP_HLS_HOME}/kernels/profile_alignment")
target_include_directories(test_csim_dtw PRIVATE "${DP_HLS_HOME}/kernels/dtw")
target_include_directories(test_csim_viterbi PRIVATE "${DP_HLS_HOME}/kernels/viterbi")
target_include_directories(test_csim_overlap_linear_suffix_prefix PRIVATE "${DP_HLS_HOME}/kernels/overlap_linear_suffix_prefix")
target_include_directories(test_csim_overlap_linear_prefix_suffix PRIVATE "${DP_HLS_HOME}/kernels/overlap_linear_prefix_suffix")
target_include_directories(test_csim_semi_global_linear_long_short PRIVATE "${DP_HLS_HOME}/kernels/semi_global_linear_long_short")
target_include_directories(test_csim_semi_global_linear_short_long PRIVATE "${DP_HLS_HOME}/kernels/semi_global_linear_short_long")
target_include_directories(test_csim_local_two_piece_affine PRIVATE "${DP_HLS_HOME}/kernels/local_two_piece_affine")
target_include_directories(test_csim_global_two_piece_affine PRIVATE "${DP_HLS_HOME}/kernels/global_two_piece_affine")

target_include_directories(test_global_affine_real_data PRIVATE "${DP_HLS_HOME}/kernels/global_affine")
target_include_directories(test_csim_banding_global_two_piece_affine  PRIVATE "${DP_HLS_HOME}/kernels/banding_global_two_piece_affine")
target_include_directories(test_csim_banding_local_affine PRIVATE "${DP_HLS_HOME}/kernels/banding_local_affine")
target_include_directories(test_csim_banding_local_affine_scored PRIVATE "${DP_HLS_HOME}/kernels/banding_local_affine_scored")

# Add include to Xilinx Library Files
if (RAPTOR)
    set(HLS_HOME "/home/AD.UCSD.EDU/swalia/Xilinx/Vitis_HLS/2023.1")
    set(DP-HLS_HOME "/home/yic033@AD.UCSD.EDU/DP-HLS")

    include_directories(${EXECUTABLE_TARGETS} PUBLIC "${HLS_HOME}/include")
    include_directories(${EXECUTABLE_TARGETS} PUBLIC "${DP-HLS_HOME}/include")

    link_directories(${EXECUTABLE_TARGETS} PUBLIC "${HLS_HOME}/lib")
    link_directories(${EXECUTABLE_TARGETS} PUBLIC "/usr/lib/x86_64-linux-gnu" "/usr/lib32" "/usr/libx32")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")

elseif(F1)
    set(HLS_HOME "/opt/Xilinx/Vitis_HLS/2021.2/")    

    include_directories(${EXECUTABLE_TARGETS} PUBLIC "${HLS_HOME}/include")
    include_directories(${EXECUTABLE_TARGETS} PUBLIC "${DP_HLS_HOME}/include")
    include_directories(${EXECUTABLE_TARGETS} PUBLIC "${DP_HLS_HOME}/common/includes")


    link_directories(${EXECUTABLE_TARGETS} PUBLIC "${HLS_HOME}/lib")
    link_directories(${EXECUTABLE_TARGETS} PUBLIC "/usr/lib64")
    link_directories(${EXECUTABLE_TARGETS} PUBLIC "/usr/lib/x86_64-linux-gnu" "/usr/lib32" "/usr/libx32")

    link_libraries(${EXECUTABLE_TARGETS} PUBLIC xrt_coreutil)
    
    target_link_libraries(test_csim_dtw PUBLIC OpenCL)
    target_link_libraries(test_csim_profile_alignment_real_data PUBLIC OpenCL)
    target_link_libraries(test_csim_global_linear PUBLIC OpenCL)

    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")
else()
    set(HLS_HOME "/tools/Xilinx/Vitis_HLS/2022.2")
    set(XRT_HOME "/opt/xilinx/xrt")

    include_directories(${EXECUTABLE_TARGETS} PUBLIC ${PROJECT_SOURCE_DIR}/include)
    include_directories(${EXECUTABLE_TARGETS} PUBLIC "${XRT_HOME}/include" "${HLS_HOME}/include")
    link_directories(${EXECUTABLE_TARGETS} PUBLIC "${HLS_HOME}/lib" "${XRT_HOME}/lib")
    link_libraries(${EXECUTABLE_TARGETS} PUBLIC xrt_coreutil)
    add_compile_options(${EXECUTABLE_TARGETS} PUBLIC -pthread)
endif()



if (CMAKE_VERSION VERSION_GREATER 3.12)
    set_property(TARGET ${EXECUTABLE_TARGETS} PROPERTY CXX_STANDARD 17)
endif()
