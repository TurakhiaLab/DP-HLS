cmake_minimum_required (VERSION 3.3.2)

# Enable Hot Reload for MSVC compilers if supported.
if (POLICY CMP0141)
    cmake_policy(SET CMP0141 NEW)
    set(CMAKE_MSVC_DEBUG_INFORMATION_FORMAT "$<IF:$<AND:$<C_COMPILER_ID:MSVC>,$<CXX_COMPILER_ID:MSVC>>,$<$<CONFIG:Debug,RelWithDebInfo>:EditAndContinue>,$<$<CONFIG:Debug,RelWithDebInfo>:ProgramDatabase>>")
endif()

project ("DP-HLS")

set(RAPTOR 0)
set(CMAKE_CXX_COMPILER g++)  # Use g++ compiler, but subject to change for v++ compiler.
add_definitions(-DDEBUG=1)

# Add source to this project's executable.
add_executable(seq_align_test "src/seq_align.h"
        "src/params.h"
        "src/PE.h"
        "src/seq_align_multiple.h"
        "testbench/seq_align_test.cpp"
        "src/seq_align_multiple.cpp"
        "src/seq_align.cpp"
        "src/PE.cpp"
        "src/seq_align.cpp"
        "src/traceback.cpp"
        "src/loop_counter.h"
        "src/traceback.h")


# Add include to Xilinx Library FIles
if (RAPTOR)
    set(HLS_HOME "/home/AD.UCSD.EDU/swalia/xilinx/vitis/Vitis_HLS/2022.1")
    set(XRT_HOME "/home/AD.UCSD.EDU/swalia/xilinx/vitis/Vitis_HLS/2022.1")

    target_include_directories(seq_align_test PUBLIC "${HLS_HOME}/include")
    #target_link_directories(seq_align_test PUBLIC "${HLS_HOME}/lib")
    #target_link_libraries(seq_align_test PUBLIC xrt_coreutil)
    target_compile_options(seq_align_test PUBLIC -pthread)
else()
    set(HLS_HOME "/tools/Xilinx/Vitis_HLS/2022.2")
    set(XRT_HOME "/opt/xilinx/xrt")

    target_include_directories(seq_align_test PUBLIC "${XRT_HOME}/include" "${HLS_HOME}/include")
    target_link_directories(seq_align_test PUBLIC "${HLS_HOME}/lib" "${XRT_HOME}/lib")
    target_link_libraries(seq_align_test PUBLIC xrt_coreutil)
    target_compile_options(seq_align_test PUBLIC -pthread)
endif()



if (CMAKE_VERSION VERSION_GREATER 3.12)
    set_property(TARGET seq_align_test PROPERTY CXX_STANDARD 20)
endif()
