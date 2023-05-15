#include "traceback.h"
#include "loop_counter.h"


void TraceBack::set_ptr(tbp_t ptr, int pe_idx)
{
    
    this->tb_matrix[pe_idx][this->input_ptr[pe_idx]] = ptr;
    this->input_ptr[pe_idx] += 1;
}

int TraceBack::traceback(stream<tbp_t, ref_length + query_length> &tb_stream, int max_row, int max_col)
{
    int stream_ctr = 0; // indexing output string
    int row_ctr = max_row;
    int col_ctr = max_col;
    LoopCounter<PE_num> pe_ctr(max_row % PE_num);

    int arr_idx = (max_row / PE_num) * ref_length + max_col;

    tbp_t tmp;

    for (int i = 0; i < ref_length + query_length; i++)
    {

        if (row_ctr >= 0 && col_ctr >= 0)
        {
            tmp = this->tb_matrix[pe_ctr.val()][arr_idx];

            if (tmp == TB_UP || tmp == TB_IX)
            {
                if (pe_ctr.val() == 0)
                {
                    arr_idx -= ref_length;
                }
                --pe_ctr;

                row_ctr--;
            }
            else if (tmp == TB_LEFT || tmp == TB_IY)
            {
                arr_idx--;
                col_ctr--;
            }
            else if (tmp == TB_DIAG)
            {
                arr_idx--;

                if (pe_ctr.val() == 0)
                {
                    arr_idx -= ref_length;
                }
                --pe_ctr;

                col_ctr--;
                row_ctr--;
            }

            tb_stream.write(tmp);
            stream_ctr++;
        } else {
            tb_stream.write(TB_PH);
        }
    }

    return stream_ctr; // retrun the length of the traceback
}
