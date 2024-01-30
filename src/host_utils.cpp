#include <string>
#include <vector>
#include <stack>
#include <map>

#include "params.h"
#include "host_utils.h"

using namespace std;

map<string, string> ReconstructTraceback(string query, string reference, 
    int query_start_idx, int reference_start_idx,
    tbr_t (&tb_stream)[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH]){

        string alignment_query = query.substr(query_start_idx + 1, query.length());
        string alignment_reference = reference.substr(reference_start_idx + 1, reference.length());

        stack<char> query_stack;
        stack<char> reference_stack;

        // insert characters of query and reference into the stack, in sequence
        for (int i = 0; i < query_start_idx + 1; i++) {
            query_stack.push(query[i]);
        }
        for (int i = 0; i < reference_start_idx + 1; i++) {
            reference_stack.push(reference[i]);
        }

        // print traceback stream
        // printf("Traceback stream: ");
        // for (int i = 0; i < MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH; i++) {
        //     printf("%d ", tb_stream[i].to_int());
        // }

        tbr_t *curr_ptr = &tb_stream[0];
        // Insert the characters from the stack to the alignment strings to their beginning. 
        // Iterating in order the tb_steram
        while (*curr_ptr != AL_END){
            // printf("curr_ptr: %d\n", curr_ptr->to_int());
            if (*curr_ptr == AL_MMI)
            {
                alignment_query = alignment_query.insert(0, 1, query_stack.top());
                alignment_reference = alignment_reference.insert(0, 1, reference_stack.top());
                query_stack.pop();
                reference_stack.pop();
            } else if (*curr_ptr==AL_INS){
                alignment_query = alignment_query.insert(0, 1, '_');
                alignment_reference = alignment_reference.insert(0, 1, reference_stack.top());
                reference_stack.pop();
            } else if (*curr_ptr == AL_DEL){
                alignment_query = alignment_query.insert(0, 1, query_stack.top());
                alignment_reference = alignment_reference.insert(0, 1, '_');
                query_stack.pop();
            } else {
                printf("Alignment Output Iteartion End\n");
            }
            curr_ptr++;
        }

        // Finishing up concatenating the rest of the characters in the stack
        while (!query_stack.empty()) {
            alignment_query = alignment_query.insert(0, 1, query_stack.top());
            query_stack.pop();
        }
        while (!reference_stack.empty()) {
            alignment_reference = alignment_reference.insert(0, 1, reference_stack.top());
            reference_stack.pop();
        }

        // return a dictionary (map) of aligned query and aligned reference
        map<string, string> alignments;
        alignments["query"] = alignment_query;
        alignments["reference"] = alignment_reference;
        return alignments;
    }
