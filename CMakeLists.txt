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

#add_definitions(-DDEBUG=0)

set(EXECUTABLE_TARGETS
    align_local_linear
    align_global_linear
    align_local_affine
    align_global_affine
    tests
    incremental_sim
)

add_executable(incremental_sim "increment/legacy/local_linear.h"
    "increment/legacy/local_linear.cpp"
    "increment/legacy/shift_register.h"
    "increment/legacy/local_linear_testbench.cpp" )

# Testbench executable
add_executable(tests "increment/testbench/main.cpp"
    "increment/include/testbench.h"
    "increment/include/PE.h"
    "increment/testbench/testbench.cpp"
    "increment/src/pe/pe.cpp")

# Add source to this project's executable.
add_executable(align_local_linear "testbench/test_local_linear.cpp" "include/params.h"
    "include/seq_align_multiple.h"
    "include/seq_align.h"
    "include/PE.h"
    "include/host.h"
    "include/loop_counter.h"
    "include/traceback.h"
    "include/initial.h"

    "src/toplevel/seq_align_multiple.cpp"
    "src/align/align.cpp"
    "src/traceback.cpp" 
    "src/utils.cpp"  
    "src/initial.cpp" 
    "src/pe/pe.cpp")

add_executable(align_global_linear "testbench/test_global_linear.cpp" "include/params.h"
    "include/seq_align_multiple.h"
    "include/seq_align.h"
    "include/PE.h"
    "include/host.h"
    "include/loop_counter.h"
    "include/traceback.h"
    "include/initial.h" 

    "src/toplevel/seq_align_multiple.cpp"
    "src/align/align.cpp"
    "src/pe/pe_global_linear.cpp"
    "src/traceback.cpp"
    "src/utils.cpp"
    "src/initial.cpp" "src/pe/pe.cpp")

add_executable(align_local_affine "testbench/test_local_affine.cpp" "include/params.h"
    "include/seq_align_multiple.h"
    "include/seq_align.h"
    "include/PE.h"
    "include/host.h"
    "include/loop_counter.h"
    "include/traceback.h"
    "include/initial.h"

    "src/toplevel/seq_align_multiple.cpp"
    "src/align/align.cpp"
    "src/traceback.cpp" 
    "src/utils.cpp"  
    "src/initial.cpp" "src/pe/pe.cpp")

add_executable(align_global_affine "testbench/test_global_affine.cpp" "include/params.h"
    "include/seq_align_multiple.h"
    "include/seq_align.h"
    "include/PE.h"
    "include/host.h"
    "include/loop_counter.h"
    "include/traceback.h"
    "include/initial.h"

    "src/toplevel/seq_align_multiple.cpp"
    "src/align/align.cpp"
    "src/pe/pe_global_affine.cpp"
    "src/traceback.cpp" 
    "src/utils.cpp" 
    "src/initial.cpp" "src/pe/pe_global_affine.cpp")

#target_compile_definitions(align_local_linear PRIVATE ALIGN_LOCAL_LINEAR=1)
#target_compile_definitions(align_local_affine PRIVATE ALIGN_LOCAL_AFFINE=1)
#target_compile_definitions(align_global_linear PRIVATE ALIGN_GLOBAL_LINEAR=1)
#target_compile_definitions(align_global_affine PRIVATE ALIGN_GLOBAL_AFFINE=1)

# Add include to Xilinx Library FIles
if (RAPTOR)
    set(HLS_HOME "/home/AD.UCSD.EDU/swalia/xilinx/vitis/Vitis_HLS/2022.1")
    set(XRT_HOME "/home/AD.UCSD.EDU/swalia/xilinx/vitis/Vitis_HLS/2022.1")

    include_directories(${EXECUTABLE_TARGETS} PUBLIC "${HLS_HOME}/include")
    include_directories(${EXECUTABLE_TARGETS} PUBLIC ${PROJECT_SOURCE_DIR}/include)
    include_directories(${EXECUTABLE_TARGETS} PUBLIC "${XRT_HOME}/include" "${HLS_HOME}/include")
    link_directories(${EXECUTABLE_TARGETS} PUBLIC "${HLS_HOME}/lib" "${XRT_HOME}/lib")
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
