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

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O0 -g -fsanitize=address")
# "-fsanitize=address" flag was used to check the stack smashing with Google Address Sanitizer. Use this flag with CLang and 
# run the program to check. 

set(EXECUTABLE_TARGETS
    # align_local_linear
    # align_global_linear
    # align_local_affine
    # align_global_affine
    tests
    baseline_local_linear
    test_align
    test_csim
)

# Compile baseline kernel. 
add_executable(baseline_local_linear "legacy/local_linear.h"
    "legacy/local_linear.cpp"
    "legacy/shift_register.h"
    "legacy/local_linear_testbench.cpp" )

# Testbench for incremental components. 
add_executable(tests "testbench/test_align.cpp"
    "include/testbench.h"
    "include/PE.h"
    "include/align.h"
    "include/utils.h"
    "testbench/testbench.cpp"
    "src/pe/pe.cpp"
    "src/align/align.cpp")

# Testbench for individual kernel. 
add_executable(test_align "testbench/test_align.cpp"
    "include/params.h"
    "include/seq_align_multiple.h"
    "include/align.h"
    "include/PE.h"
    "include/utils.h"
    "include/pyapi.h"
    "include/frontend.h"
    "src/toplevel/seq_align_multiple.cpp"
    "src/align/align.cpp"
    "src/pe/pe.cpp"
    "src/traceback.cpp"
    "src/pyapi.cpp"
    "src/utils.cpp"
    "src/frontend.cpp")

add_executable(test_csim "testbench/test_csim.cpp"
    "include/params.h"
    "include/seq_align_multiple.h"
    "include/align.h"
    "include/PE.h"
    "include/utils.h"
    "include/frontend.h"
    "include/debug.h"
    "src/toplevel/seq_align_multiple.cpp"
    "src/align/align.cpp"
    "src/pe/pe.cpp"
    "src/traceback.cpp"
    "src/utils.cpp"
    "src/frontend.cpp"
    "src/debug.cpp")

add_executable(test_pyapi "testbench/test_align.cpp"
    "include/params.h"
    "include/seq_align_multiple.h"
    "include/align.h"
    "include/PE.h"
    "include/utils.h"
    "include/pyapi.h"
    "src/toplevel/seq_align_multiple.cpp"
    "src/align/align.cpp"
    "src/pe/pe.cpp"
    "src/traceback.cpp"
    "src/pyapi.cpp"
    "include/debug.h")

add_executable(multidimcast
    "include/pyapi.h"
    "src/pyapi.cpp"
    "testbench/multidimcast_test.cpp"
)

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
