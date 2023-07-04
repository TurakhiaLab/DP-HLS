cmake_minimum_required (VERSION 3.3.2)

# Enable Hot Reload for MSVC compilers if supported.
if (POLICY CMP0141)
    cmake_policy(SET CMP0141 NEW)
    set(CMAKE_MSVC_DEBUG_INFORMATION_FORMAT "$<IF:$<AND:$<C_COMPILER_ID:MSVC>,$<CXX_COMPILER_ID:MSVC>>,$<$<CONFIG:Debug,RelWithDebInfo>:EditAndContinue>,$<$<CONFIG:Debug,RelWithDebInfo>:ProgramDatabase>>")
endif()

project ("DP-HLS")

set(RAPTOR 1)
set(CMAKE_C_COMPILER "/usr/bin/gcc")
set(CMAKE_CXX_COMPILER "/usr/bin/g++")  # Use g++ compiler, but subject to change for v++ compiler.

add_definitions(-DDEBUG=0)

set(EXECUTABLE_TARGETS
    align_local_linear
    align_global_linear
)

# Add source to this project's executable.
add_executable(align_local_linear "testbench/seq_align_test.cpp"
    "include/params.h"  
    "include/seq_align_multiple.h"
    "include/seq_align.h"
    "include/PE.h"
    "include/host.h"
    "include/loop_counter.h"
    "include/traceback.h"
    "src/toplevel/seq_align_multiple.cpp"
    "src/align/align_local_linear.cpp"
    "src/pe/pe_local_linear.cpp"
    "src/traceback.cpp" "src/utils.cpp" "include/initial.h" "src/initial.cpp")

add_executable(align_global_linear "testbench/seq_align_test.cpp"
    "configs/global_linear_params.h"  
    "include/seq_align_multiple.h"
    "include/seq_align.h"
    "include/PE.h"
    "include/host.h"
    "include/loop_counter.h"
    "include/traceback.h"
    "src/toplevel/seq_align_multiple.cpp"
    "src/align/align_local_linear.cpp"
    "src/pe/pe_local_linear.cpp"
    "src/traceback.cpp" "src/utils.cpp" "include/initial.h" "src/initial.cpp")


# Add include to Xilinx Library FIles
if (RAPTOR)
    set(HLS_HOME "/home/AD.UCSD.EDU/swalia/xilinx/vitis/Vitis_HLS/2022.1")
    set(XRT_HOME "/home/AD.UCSD.EDU/swalia/xilinx/vitis/Vitis_HLS/2022.1")

    include_directories(${EXECUTABLE_TARGETS} PUBLIC "${HLS_HOME}/include")
    include_directories(${EXECUTABLE_TARGETS} PUBLIC ${PROJECT_SOURCE_DIR}/include)
    include_directories(${EXECUTABLE_TARGETS} PUBLIC "${XRT_HOME}/include" "${HLS_HOME}/include")
    link_directories(${EXECUTABLE_TARGETS} PUBLIC "${HLS_HOME}/lib" "${XRT_HOME}/lib")
    link_libraries(${EXECUTABLE_TARGETS} PUBLIC xrt_coreutil)
    add_compile_options(${EXECUTABLE_TARGETS} PUBLIC -pthread)
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
