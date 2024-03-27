#include <string>
#include <vector>
#include <stack>
#include <map>

#include "../kernels/global_affine/params.h"
#include "../include/host_utils.h"

using namespace std;


void printStack(std::stack<char>& stk) {
    stack<char> tempStack = stk; // Make a copy of the stack
    cout << "Stack elements: ";
    while (!tempStack.empty()) {
        cout << tempStack.top() << " ";
        tempStack.pop();
    }
    std::cout << std::endl;
}


map<string, string> ReconstructTraceback(string query, string reference, 
    int query_start_idx, int reference_start_idx,
    tbr_t (&tb_stream)[MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH]){

        // If we also want to match the portion for the alignment exceeds the start index, use this
        // string alignment_query = query.substr(query_start_idx + 1, query.length());
        // string alignment_reference = reference.substr(reference_start_idx + 1, reference.length());
        string alignment_query = "";
        string alignment_reference = "";

        stack<char> query_stack;
        stack<char> reference_stack;

        // insert characters of query and reference into the stack, in sequence
        for (int i = 0; i < query_start_idx + 1; i++) {
            query_stack.push(query[i]);
        }
        for (int i = 0; i < reference_start_idx + 1; i++) {
            reference_stack.push(reference[i]);
        }
		cout << "QUERY" << endl;
		printStack(query_stack);

		cout << "REFERENCE" << endl;
        printStack(reference_stack);
		// print traceback stream
        // printf("Traceback stream: ");
        // for (int i = 0; i < MAX_REFERENCE_LENGTH + MAX_QUERY_LENGTH; i++) {
        //     printf("%d ", tb_stream[i].to_int());
        // }
		
        tbr_t *curr_ptr = &tb_stream[0];
        // Insert the characters from the stack to the alignment strings to their beginning. 
        // Iterating in order the tb_steram
        while (*curr_ptr != AL_END){
			//cout << "SHOULD EXECUTE" << endl;
            //cout << curr_ptr->to_int() << endl;
            if (*curr_ptr == AL_MMI)
            {
				//cout << "EXEC 1" << endl;
                alignment_query = alignment_query.insert(0, 1, query_stack.top());
                alignment_reference = alignment_reference.insert(0, 1, reference_stack.top());
                query_stack.pop();
                reference_stack.pop();
				//cout << "FINISHED EXEC 1" << endl;
            } else if (*curr_ptr==AL_INS){
				//cout << "EXEC 2" << endl;
                alignment_query = alignment_query.insert(0, 1, '_');
                alignment_reference = alignment_reference.insert(0, 1, reference_stack.top());
                reference_stack.pop();
				//cout << "FINISHED EXEC 2" << endl;
            } else if (*curr_ptr == AL_DEL){
				//cout << "EXEC 3" << endl;
                alignment_query = alignment_query.insert(0, 1, query_stack.top());
                alignment_reference = alignment_reference.insert(0, 1, '_');
                query_stack.pop();
				//cout << "FINISHED EXEC 3" << endl;
            } else if (*curr_ptr == AL_NULL){
                // Do nothing, AL_NULL Doesn't change the position
            } else {
				//cout << "EXEC 4" << endl;
                printf("Alignment Output Iteartion End\n");
            }
            curr_ptr++;
        }
		cout << "MADE IT TO THE END" << endl;
        // Finishing up concatenating the rest of the characters in the stack
        while (!query_stack.empty()) {
            alignment_query = alignment_query.insert(0, 1, query_stack.top());
            query_stack.pop();
        }
        while (!reference_stack.empty()) {
            alignment_reference = alignment_reference.insert(0, 1, reference_stack.top());
            reference_stack.pop();
        }

        // pad the head for query
        while (alignment_query.length() < alignment_reference.length()) {
            alignment_query = alignment_query.insert(0, 1, '_');
        }
        // pad the head for reference
        while (alignment_reference.length() < alignment_query.length()) {
            alignment_reference = alignment_reference.insert(0, 1, '_');
        }

        // return a dictionary (map) of aligned query and aligned reference
        map<string, string> alignments;
        alignments["query"] = alignment_query;
        alignments["reference"] = alignment_reference;
        return alignments;
    }
