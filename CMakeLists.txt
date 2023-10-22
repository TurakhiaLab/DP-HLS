cmake_minimum_required (VERSION 3.3.2)

# Enable Hot Reload for MSVC compilers if supported.
if (POLICY CMP0141)
    cmake_policy(SET CMP0141 NEW)
    set(CMAKE_MSVC_DEBUG_INFORMATION_FORMAT "$<IF:$<AND:$<C_COMPILER_ID:MSVC>,$<CXX_COMPILER_ID:MSVC>>,$<$<CONFIG:Debug,RelWithDebInfo>:EditAndContinue>,$<$<CONFIG:Debug,RelWithDebInfo>:ProgramDatabase>>")
endif()

project ("DP-HLS")

set(RAPTOR 1)
set(CMAKE_C_COMPILER "/usr/bin/gcc")
set(CMAKE_CXX_COMPILER "/usr/bin/c++")  # Use g++ compiler, but subject to change for v++ compiler.
set(CMAKE_BUILD_TYPE Debug)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O0 -g")

set(EXECUTABLE_TARGETS
    # align_local_linear
    # align_global_linear
    # align_local_affine
    # align_global_affine
    tests
    baseline_local_linear
    test_align
)

# Compile baseline kernel. 
add_executable(baseline_local_linear "increment/legacy/local_linear.h"
    "increment/legacy/local_linear.cpp"
    "increment/legacy/shift_register.h"
    "increment/legacy/local_linear_testbench.cpp" )

# Testbench for incremental components. 
add_executable(tests "increment/testbench/test_align.cpp"
    "increment/include/testbench.h"
    "increment/include/PE.h"
    "increment/include/align.h"
    "increment/include/utils.h"
    "increment/testbench/testbench.cpp"
    "increment/src/pe/pe.cpp"
    "increment/src/align/align.cpp")

# Testbench for individual kernel. 
add_executable(test_align "increment/testbench/test_align.cpp"
    "increment/include/params.h"
    "increment/include/seq_align_multiple.h"
    "increment/include/align.h"
    "increment/include/PE.h"
    "increment/include/utils.h"
    "increment/include/pyapi.h"
    "increment/src/toplevel/seq_align_multiple.cpp"
    "increment/src/align/align.cpp"
    "increment/src/pe/pe.cpp"
    "increment/src/traceback.cpp"
    "increment/src/pyapi.cpp"
    "increment/src/utils.cpp")

add_executable(test_pyapi "increment/testbench/test_align.cpp"
    "increment/include/params.h"
    "increment/include/seq_align_multiple.h"
    "increment/include/align.h"
    "increment/include/PE.h"
    "increment/include/utils.h"
    "increment/include/pyapi.h"
    "increment/src/toplevel/seq_align_multiple.cpp"
    "increment/src/align/align.cpp"
    "increment/src/pe/pe.cpp"
    "increment/src/traceback.cpp"
    "increment/src/pyapi.cpp"
    "increment/include/debug.h")

add_executable(multidimcast
    "increment/include/pyapi.h"
    "increment/src/pyapi.cpp"
    "increment/testbench/multidimcast_test.cpp"
)


# Add source to this project's executable.
# add_executable(align_local_linear "testbench/test_local_linear.cpp" "include/params.h"
#     "include/seq_align_multiple.h"
#     "include/seq_align.h"
#     "include/PE.h"
#     "include/host.h"
#     "include/loop_counter.h"
#     "include/traceback.h"
#     "include/initial.h"

#     "src/toplevel/seq_align_multiple.cpp"
#     "src/align/align.cpp"
#     "src/traceback.cpp" 
#     "src/utils.cpp"  
#     "src/initial.cpp" 
#     "src/pe/pe.cpp")

# add_executable(align_global_linear "testbench/test_global_linear.cpp" "include/params.h"
#     "include/seq_align_multiple.h"
#     "include/seq_align.h"
#     "include/PE.h"
#     "include/host.h"
#     "include/loop_counter.h"
#     "include/traceback.h"
#     "include/initial.h" 

#     "src/toplevel/seq_align_multiple.cpp"
#     "src/align/align.cpp"
#     "src/pe/pe_global_linear.cpp"
#     "src/traceback.cpp"
#     "src/utils.cpp"
#     "src/initial.cpp" "src/pe/pe.cpp")

# add_executable(align_local_affine "testbench/test_local_affine.cpp" "include/params.h"
#     "include/seq_align_multiple.h"
#     "include/seq_align.h"
#     "include/PE.h"
#     "include/host.h"
#     "include/loop_counter.h"
#     "include/traceback.h"
#     "include/initial.h"

#     "src/toplevel/seq_align_multiple.cpp"
#     "src/align/align.cpp"
#     "src/traceback.cpp" 
#     "src/utils.cpp"  
#     "src/initial.cpp" "src/pe/pe.cpp")

# add_executable(align_global_affine "testbench/test_global_affine.cpp" "include/params.h"
#     "include/seq_align_multiple.h"
#     "include/seq_align.h"
#     "include/PE.h"
#     "include/host.h"
#     "include/loop_counter.h"
#     "include/traceback.h"
#     "include/initial.h"

#     "src/toplevel/seq_align_multiple.cpp"
#     "src/align/align.cpp"
#     "src/traceback.cpp" 
#     "src/utils.cpp" 
#     "src/initial.cpp" "src/pe/pe.cpp")

set_property(TARGET test_pyapi PROPERTY CXX_STANDARD 17)
set_property(TARGET test_align PROPERTY CXX_STANDARD 17)
set_property(TARGET multidimcast PROPERTY CXX_STANDARD 17)

# Add include to Xilinx Library FIles
if (RAPTOR)
    set(HLS_HOME "/home/AD.UCSD.EDU/swalia/Xilinx/Vitis_HLS/2023.1")

    include_directories(${EXECUTABLE_TARGETS} PUBLIC "${HLS_HOME}/include")

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
