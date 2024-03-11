#include <CL/cl2.hpp>
#include "xcl2/xcl2.hpp"

namespace CLUtils
{
    class KernelOperator {

    };

    class KernelWrapper {
        // Need functions to
        // 1. Create OpenCL Host Buffers and copy datas from the host memory to the buffer
        // 2. Migrate the data from the cl buffer to device
        // 3. Write the kernel bitstream to the first available device
        // 4. Launch the kernel
        // 5. Retrive the result. 
        public:
            cl_int err;
            cl::Context context;
            std::map<string, cl::Kernel> kernels;
            std::map<string, cl::CommandQueue> queues;


            // KernelWrapper();
            // ~KernelWrapper();
    };
}
