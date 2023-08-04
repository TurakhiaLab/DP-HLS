#ifndef PE_H
#define PE_H

#include "params.h"
#include <hls_stream.h>
#include <ap_int.h>
#include <ap_fixed.h>
#include "shift_reg.h"
#include <hls_streamofblocks.h>
#include "traceback.h"
#include <hls_vector.h>

#ifdef DEBUG
#include <list>
#endif // DEBUG

using namespace std;

namespace PE {
    void PELocalLinear();
    
}

#endif // !PE_H

// Static data members are shared by all instances of a class.
