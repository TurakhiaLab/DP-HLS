#define opening_score -1
#define extend_score -1
#define mismatch_score -1
#define match_score 2

#define query_length 1024
#define ref_length 1024

#define PE_num 32

#define numofreads 1

#define query_chunks ceil((float)query_length/PE_num)

#define M 10
#define N 6
