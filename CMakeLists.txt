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

set(EXECUTABLE_TARGETS
    baseline_local_linear
    test_align

    test_csim_global_linear
    test_csim_global_affine
    test_csim_local_affine 
)

add_compile_definitions(PUBLIC CMAKEDEBUG)

set(COMMON_SRCS
    "testbench/solutions.cpp"
    "include/host_utils.h"
    "src/seq_align_multiple.cpp"
    "src/align/align.cpp"
    "src/pe.cpp"
    "src/traceback.cpp"
    "src/utils.cpp"
    "src/debug.cpp"
    "src/host_utils.cpp")

# Compile baseline kernel. 
add_executable(baseline_local_linear "legacy/local_linear.h"
    "legacy/local_linear.cpp"
    "legacy/shift_register.h"
    "legacy/local_linear_testbench.cpp" )


# Testbench for individual kernel. 
add_executable(test_align "testbench/test_align.cpp"
    "src/seq_align_multiple.cpp"
    "src/align/align.cpp"
    "src/pe.cpp"
    "src/traceback.cpp"
    "src/pyapi.cpp"
    "src/utils.cpp"
    "src/frontend.cpp")

add_executable(test_csim_global_linear 
    "testbench/test_csim_global_linear.cpp"
    "kernels/global_linear/kernel_global_linear.cpp"
    ${COMMON_SRCS})

add_executable(test_csim_global_affine
    "testbench/test_csim_global_affine.cpp"
    "kernels/global_affine/kernel_global_affine.cpp"
    ${COMMON_SRCS})

add_executable(test_csim_local_affine
    "testbench/test_csim_local_affine.cpp"
    "kernels/local_affine/kernel_local_affine.cpp"
    ${COMMON_SRCS})

add_executable(test_csim_dtw "testbench/test_csim_dtw.cpp"
    "include/seq_align_multiple.h"
    "include/align.h"
    "include/PE.h"
    "include/utils.h"
    "include/frontend.h"
    "include/debug.h"
    "src/seq_align_multiple.cpp"
    "src/align/align.cpp"
    "src/pe.cpp"
    "src/traceback.cpp"
    "src/utils.cpp"
    "src/frontend.cpp"
    "src/debug.cpp")

add_executable(test_pyapi "testbench/test_align.cpp"
    "include/seq_align_multiple.h"
    "include/align.h"
    "include/PE.h"
    "include/utils.h"
    "include/pyapi.h"
    "src/seq_align_multiple.cpp"
    "src/align/align.cpp"
    "src/pe.cpp"
    "src/traceback.cpp"
    "src/pyapi.cpp"
    "include/debug.h")

add_executable(multidimcast
    "include/pyapi.h"
    "src/pyapi.cpp"
    "testbench/multidimcast_test.cpp"
)

target_compile_definitions(test_csim_global_linear PRIVATE ALIGN_GLOBAL_LINEAR)
target_compile_definitions(test_csim_global_affine PRIVATE ALIGN_GLOBAL_AFFINE)
target_compile_definitions(test_csim_local_affine PRIVATE ALIGN_LOCAL_AFFINE)

target_include_directories(test_csim_global_affine PRIVATE "/home/centos/workspace/DP-HLS/kernels/global_affine")
target_include_directories(test_csim_global_linear PRIVATE "/home/centos/workspace/DP-HLS/kernels/global_linear")
target_include_directories(test_csim_local_affine PRIVATE "/home/centos/workspace/DP-HLS/kernels/local_affine")

set_property(TARGET test_pyapi PROPERTY CXX_STANDARD 17)
set_property(TARGET test_align PROPERTY CXX_STANDARD 17)
set_property(TARGET multidimcast PROPERTY CXX_STANDARD 17)

# Add include to Xilinx Library FIles
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
    set(DP-HLS_HOME "/home/centos/workspace/DP-HLS")

    include_directories(${EXECUTABLE_TARGETS} PUBLIC "${HLS_HOME}/include")
    include_directories(${EXECUTABLE_TARGETS} PUBLIC "${DP-HLS_HOME}/include")

    link_directories(${EXECUTABLE_TARGETS} PUBLIC "${HLS_HOME}/lib")
    link_directories(${EXECUTABLE_TARGETS} PUBLIC "/usr/lib/x86_64-linux-gnu" "/usr/lib32" "/usr/libx32")
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
