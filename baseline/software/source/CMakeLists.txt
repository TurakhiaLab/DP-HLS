cmake_minimum_required (VERSION 3.5)
project (seqan3_tutorial CXX)
 
# add seqan3 to search path
list (APPEND CMAKE_PREFIX_PATH "${CMAKE_CURRENT_SOURCE_DIR}/../seqan3/build_system")
 
# require seqan3 with a version between >=3.0.0 and <4.0.0
find_package(SeqAn3 3.3.0 REQUIRED)
 
# build app with seqan3
add_executable (global_affine global_affine.cpp)
target_link_libraries (global_affine seqan3::seqan3)
add_executable (global_linear global_linear.cpp)
target_link_libraries (global_linear seqan3::seqan3)
add_executable (local_affine local_affine.cpp)
target_link_libraries (local_affine seqan3::seqan3)
add_executable (local_linear local_linear.cpp)
target_link_libraries (local_linear seqan3::seqan3)
add_executable (banded_local_linear banded_local_linear.cpp)
target_link_libraries (banded_local_linear seqan3::seqan3)
add_executable (semi_global_linear semi_global_linear.cpp)
target_link_libraries (semi_global_linear seqan3::seqan3)
add_executable (overlap_linear overlap_linear.cpp)
target_link_libraries (overlap_linear seqan3::seqan3)
