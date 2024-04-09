#ifndef PYAPI_H
#define PYAPI_H

#include "./params.h"
#include <string>
#include <vector>
#include <unordered_map>
#include <type_traits>
#include "debug.h"
#include "utils.h"
#include <ap_int.h>
#include <ap_fixed.h>
#include <pybind11/pybind11.h>
#include <pybind11/stl.h>
using namespace std;
namespace py = pybind11;

class LoggerData
{
public:
    list<unordered_map<int, tuple<>>> data;
    // Normally the LoopLogger assume each exec to the loop boody is sequential execution. However in HLS this could
    // be loop unrolling to multiple hardware. This is the flag to mark it.
    bool parallel = false;
};



class LoopLogger
{
public:
    // There must be only one logger throughout the entire program and multiple files.
    template <typename... Args>
    static unordered_map<string, unordered_map<string, list<unordered_map<int, tuple<Args...>>>>> timelines;
    
    template <typename... Args>
    static auto logImpl(const Args &...args)
    {
        return std::make_tuple(args ...);  // FIXME: Need recursive Cast
    }

    /**
     * @brief Logger. All the data stored into this data structure should be std data type translated with
     * the translate function in util. Wanted to use variadic data structure but it's pretty hard. Use tuple
     * temporarily.
     * 
     * @tparam Args 
     * @param func : In which funciton is the loop located. 
     * @param name : Name of the loop. 
     * @param i : Iteration of the Loop. 
     * @param init : Whether this is a initialization. Could pass something like `i == 0` meaning automatically set init to true if it's 0th iteration. 
     * @param args : Data Structures to Record. 
     */
    template <typename... Args>
    static void log(string func, string name, int i, bool init, const Args &...args)
    {
        if (init)
        {
            // start a new item representing a new call to the loop
            static unordered_map<int, tuple<Args...>> new_ordered_map;
            (LoopLogger::timelines<Args...>[func][name]).push_back(new_ordered_map);
        }

        auto current_map = LoopLogger::timelines<Args...>[func][name].back();
        current_map.emplace(i, LoopLogger::logImpl(args...));  // A Tuple
    }

    template<typename... Args>
    unordered_map<string, unordered_map<string, list<unordered_map<int, tuple<Args...>> >>> get_timelines(){
        return LoopLogger::timelines<Args...>;
    }
};


class AHRunner
{ // AlignHLS Runner
public:
    string query, reference;
    LoopLogger logger;

    AHRunner()
    {
        this->query = "";
        this->reference = "";
        this->logger = LoopLogger();
    };

    AHRunner(string query_string, string reference_string)
    {
        this->query = query_string;
        this->reference = reference_string;
        this->logger = LoopLogger();
    };



    /**
     * @brief runs the kernel with the query and reference strings
     * set already.
     *
     */
    void run(py::dict py_penalties);


    /**
     * @brief runs the kernel with provided query and strings.
     *
     * @param query_string
     * @param reference_string
     */
    void run(string query_string, string reference_string, py::dict py_penalties);


    /**
     * @brief returns the traceback path. Address the traceback path of the zeroth
     * block as tbp[0] and the oneth element as tbp[0][1].
     *
     * @return std::vector<std::vector<string>>
     */
    std::vector<std::vector<char>> get_traceback_path();

    /**
     * @brief Get the scores of all the blocks. Each block score is a 3d vector with
     * dimension query_length x reference_length x N_LAYERS.
     *
     * @return std::vector<std::vector<std::vector<float>>>
     */
    std::vector<std::vector<std::vector<std::vector<float>>>> get_scores();

    // FIXME: Wanted to have scores snapshot, but it requires a 5 dimensional vector.
    // This feature is not sure to implement yet.
    // std::vector<std::vector<std::vector<std::vector

private:
    string query_string;
    string reference_string;

    tbr_t tb_streams[N_BLOCKS][MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH];

    // FIXME: Scores could be represented by a simpler format.
    hls::vector<type_t, N_LAYERS> scores[N_BLOCKS][MAX_QUERY_LENGTH][MAX_REFERENCE_LENGTH];

    static char_t base_to_num(char base);
};

// // >>> Multidim Cast with decltype >>>

// // Specialization for non-vector types (terminal case)
// template <typename T>
// int CastToFloat(const T& val) {
//     return val.to_float();
// }


// // Define CastNestedToInteger function for nested arrays or vectors
// template <typename T>
// auto CastToFloat(const T& input) -> decltype(input[0].to_float()) {
//     using ElementT = decltype(input[0].to_float());
//     std::vector<ElementT> result(input.size());
//     for (size_t i = 0; i < input.size(); ++i) {
//         result[i] = input[i].to_float();
//     }
//     return result;
// }

// // Recursive template for multidimensional array
// template <typename T>
// auto CastMultiDimArrayToFloat(const T& input) -> decltype(CastToFloat(input[0])) {
//     using ElementT = decltype(CastToFloat(input[0]));
//     std::vector<ElementT> result(input.size());
//     for (size_t i = 0; i < input.size(); ++i) {
//         result[i] = CastToFloat(input[i]);
//     }
//     return result;
// }

// // <<< Multidim Cast with decltype <<<

// // Type traits
// template <typename>
// struct is_ap_uint_ : public std::false_type { };
// template <int N>
// struct is_ap_uint_<ap_uint<N>> : public std::true_type { };
// template <typename T>
// constexpr bool is_ap_uint (T const &) { return is_ap_uint_<T>::value; };

// template <typename>
// struct is_ap_fixed_ : public std::false_type { };
// template <int M, int N>
// struct is_ap_fixed_<ap_fixed<M, N>> : public std::true_type { };
// template <typename T>
// constexpr bool is_ap_fixed (T const &) { return is_ap_fixed_<T>::value; };

// template <typename>
// struct is_ap_int_ : public std::false_type { };
// template <int N>
// struct is_ap_int_<ap_int<N>> : public std::true_type { };
// template <typename T>
// constexpr bool is_ap_int (T const &) { return is_ap_int_<T>::value; };

// template <typename T>
// bool is_hls_scalar(T val){
//     return is_ap_uint(val) || is_ap_fixed(val) || is_ap_int(val);
// }

// // The recursive function multidimensional casting iterate through all the element in that dimension 
// // and call itself recurisvely. If it reaches the lowest dimension, it return. If not, initialize a vector and put the element
// // in the multidimensional cast into the vector. 
// // Assume the HLS array are stored in contiguous memory since it uses primitive C++ array. 


// // Helper function to check if an object is an instance of MyTemplate
// // Multidim cast for array
// template <typename THLS, typename TSTD, int N>
// std::vector<TSTD> MultidimCast(THLS *arr){
//     std::vector<TSTD> result;
//     if (is_hls_scalar(arr[0])){
//         for (int i = 0; i < N; i++){
//             result.push_back(arr[i].to_float());
//         }
//     }else {
//         // If it's not a pointer, then it's a vector
//         if (std::is_array(arr[0])){
//             for (int i = 0; i < N; i++){
//                 result.push_back(MultidimCast(arr[i]));
//             }
//         }else {
//             result = cast_hls_vector(arr);
//         }
//     }
//     return result;
// }

// template <typename T, int N> 
// std::vector<float> cast_hls_vector(hls::vector<T, N> arr){
//     std::vector<float> result;
//     for (int i = 0; i < N; i++){
//         result.push_back(arr[i].to_float());
//     }
//     return result;
// }

#endif