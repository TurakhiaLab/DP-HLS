#ifndef PE_H
#define PE_H

#include <hls_stream.h>
#include <ap_int.h>
#include <ap_fixed.h>
#include "shift_reg.h"
#include <hls_streamofblocks.h>
#include "traceback.h"
#include <hls_vector.h>
#include "./params.h"

#ifdef DEBUG
#include <list>
#endif // DEBUG

using namespace std;

namespace PE {
    
    namespace LocalLinear {
        void Compute(
            hls::stream<char_t, STM_DEPTH> &local_query_val,
            hls::stream<char_t, STM_DEPTH> &local_reference_val,
            hls::stream<hls::vector<type_t, N_LAYERS>, STM_DEPTH> &up_prev,
            hls::stream<hls::vector<type_t, N_LAYERS>, STM_DEPTH> &diag_prev,
            hls::stream<hls::vector<type_t, N_LAYERS>, STM_DEPTH> &left_prev,
            hls::stream<hls::vector<type_t, N_LAYERS>, STM_DEPTH> &write_score,  // out
            hls::stream<hls::vector<tbp_t, N_LAYERS>, STM_DEPTH> &write_traceback  // out
        );

        // Reserved for Array of Blocks Non Blocking Implementation
        void Compute_Blocks();
    }

    // void Array();

    extern "C" {
        // Expand a PE Array
        void ExpandCompute(
            char_t local_query[PE_NUM],
            char_t local_reference[PE_NUM],
            hls::vector<type_t, N_LAYERS> wavefronts[2][PE_NUM],   // or can define a variable called DEPTH which is the depth of the wavefront
            hls::vector<type_t, N_LAYERS> write_score_arr[PE_NUM],
            hls::vector<tbp_t, N_LAYERS> write_traceback_arr[PE_NUM]
        );
    }

    

}
 
#endif // !PE_H

// Static data members are shared by all instances of a class.
