#include <pybind11/pybind11.h>
#include "./include/pyapi.h"

PYBIND11_MODULE(alignhls, m) {
    m.def("kernel_traceback_path", &kernel_traceback_path, R"pbdoc(
        Get traceback pathes for a single kernel run providing query and refernce in string. 
    )pbdoc");
}