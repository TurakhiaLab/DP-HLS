#include "params.h"
#include "seq_align.h"
#include "PE.h"

#include <hls_stream.h>

using namespace hls;

void AlignLocalLinear::align(
    stream<char_t, max_query_length>& query_stream,
    stream<char_t, max_reference_length>& reference_stream,
    int query_length, int reference_length,
    stream<tbp_t, max_reference_length + max_query_length>& traceback_out,
#ifdef DEBUG
    Debugger& helper,
#endif
    type_t* dummy) {


    type_t temp = 0;

    ShiftRegisterBlock<type_t, PE_num, 2> dp_mem;
    PELocalLinear PE_group[PE_num];


    // replaced by traceback_out
    //tbp_t final_traceback[ref_length + inflated_query_length];

    const int num_chunks = (reference_length + chunk_width - 1) / chunk_width;
    const int num_row = (query_length + PE_num - 1) / PE_num;

    ShiftRegister<bool, PE_num> predicate;
    ShiftRegister<type_t, PE_num + chunk_width> last_pe_score[num_chunks];
    ShiftRegister<char_t, PE_num + chunk_width> reference[num_chunks];
    ShiftRegister<char_t, PE_num> query;

    TraceBack tracer;

    // initialize reference
    for (int i = 0; i < num_chunks; i++)
    {
        for (int j = 0; j < chunk_width + PE_num; j++)
        {
            reference[i].shift_right(
                j < chunk_width ? reference_stream.read() : (char_t)0
            );
            last_pe_score[i].shift_left(0);
        }
    }

    // iterating through the chunks of the larger dp matrix
kernel:
    for (int qq = 0; qq < query_length; qq += PE_num)
    {

    fill_query:
        for (int i = 0; i < PE_num; i++)
        {
            query.shift_right(
                qq + i < query_length ? query_stream.read() : (char_t)0
            );
        }

        // compute chunks
        for (int cc = 0; cc < num_chunks; cc++)
        {
            this->compute_chunk(
                PE_group,
                query,
                reference[cc],
                last_pe_score[cc],
                dp_mem,
                tracer
            );
        }


    }

    type_t count = max_reference_length + inflated_query_length;



    //// traceback logic
    //traceback_logic:
    //    while (ultimate_row_value > -1 && ultimate_col_value > -1)
    //    {
    //        tbp_t tbptr = traceback[ultimate_row_value][ultimate_col_value]; 
    //        if (tbptr == TB_DIAG){
    //            ultimate_row_value = ultimate_row_value - 1;
    //            ultimate_col_value = ultimate_col_value - 1;
    //        }
    //        else if (tbptr == TB_LEFT){
    //            ultimate_col_value = ultimate_col_value - 1;
    //        }
    //        else if (tbptr == TB_UP){
    //            ultimate_row_value = ultimate_row_value - 1;
    //        }
    //
    //        final_traceback[count] = tbptr;
    //        count -= 1;
    //#ifdef DEBUG
    //        helper.data.traceback.push(tbptr);
    //#endif
    //
    //        if ((ultimate_row_value + 1) == 0 || (ultimate_col_value + 1) == 0)
    //            break;
    //    }

    //#ifdef DEBUG
    //    helper.print_block_traceback_matrix(traceback, inflated_query_length, ref_length);
    //
    //    helper.print_query();
    //    helper.print_reference();
    //
    //    helper.print_block_traceback_linear();
    //
    //#endif

        //*dummy = ultimate_max_score;
}

void AlignLocalLinear::compute_chunk(
    PELocalLinear pes[PE_num],
    ShiftRegister<char_t, PE_num>& query,
    ShiftRegister<char_t, PE_num + chunk_width>& reference,
    ShiftRegister<type_t, PE_num + chunk_width>& last_row_score,
    ShiftRegisterBlock<type_t, PE_num, 2>& dp_mem,
    TraceBack& tracer) {


    ShiftRegister<bool, PE_num> predicate;
    for (int i = 0; i < PE_num + chunk_width; i++) {
        predicate.shift_right(
            i < chunk_width ? true : false
        );
        reference.shift_right(
            i < chunk_width ? reference[0] : (char_t)0
        );


        pes[0].compute(
            query[0],
            reference[0],
            last_row_score[PE_num],
            dp_mem[0][0],
            i == 0 ? zero_fp : last_row_score[PE_num - 1],
            &this->staging[0],
            tracer,
            0,
            predicate[0]
        );

        for (int pi = 1; pi < PE_num; pi++) {
            pes[pi].compute(
                query[pi],
                reference[pi],
                dp_mem[pi - 1][0],
                dp_mem[pi][0],
                dp_mem[pi - 1][1],
                &this->staging[pi],
                tracer,
                pi,
                predicate[pi]
            );
        }

        last_row_score.shift_left(
            predicate[PE_num - 1] ? dp_mem[PE_num - 1][0] : zero_fp
        );

        dp_mem.shift_right(this->staging);
    }
}