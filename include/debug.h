//
// Created by yic033@AD.UCSD.EDU on 5/23/23.
//

#ifndef DP_HLS_UTILS_H
#define DP_HLS_UTILS_H

#include <iostream>
#include "params.h"
#include <fstream>
#include <cstdio>
#include <string>
#include <assert.h>
#include <filesystem>
#include <queue>
#include <stack>
#include <list>
#include <hls_vector.h>

namespace fs = std::filesystem;
using namespace fs;
using namespace std;


class Debugger {
public:
    string debugpath = "";
    string filepath = "";
    
    struct {
        list<char_t> query;
        list<char_t> ref;
        list<tbp_t> traceback;
        list<type_t> score[PE_NUM];
        int max_row;
        int max_col;
        int query_length;
        int reference_length;
    } data;



    static string str(char_t nec) {
        switch (nec)
        {
        case 0:
            return "_";
            break;
        case 1:
            return "A";
            break;
        case 2:
            return "C";
            break;
        case 3:
            return "G";
            break;
        case 4:
            return "T";
            break;
        default:
            return " ";
            break;
        }
    }

    class MSG {
    public:
        string note;
        string arr;

        MSG(string note, hls::vector<type_t, N_LAYERS>* ptr, int size) {
            this->note = note;
            int cnt = 0;
            while (cnt++ < size) {
                this->arr += std::to_string ((*ptr)[0].to_int()) + " ";
                ptr++;
            }
        }

        MSG(string note, char_t* ptr, int size) {
            this->note = note;
            int cnt = 0;
            while (cnt ++< size) {
                this->arr += str(*ptr++).c_str();
            }
        }

        MSG(string note, type_t* ptr, int size) {
            this->note = note;
            int cnt = 0;
            while (cnt++ < size) {
                this->arr += to_string((int) *ptr++) + " ";
                
            }
        }
    };

    std::list<MSG> msg_list;

    Debugger() {};

    Debugger(const string debugpath, const string filename, const int block, int query_length, int reference_length){
        this->data.query_length = query_length;
        this->data.reference_length = reference_length;

        this->debugpath = debugpath;  // set the path to the debug folder
        fs::path path(debugpath);  // get the path to the debug folder
        fs::remove_all(path);
        fs::create_directories(path);
        this->filepath =  debugpath + "/" + filename + "_" + std::to_string(block);
        std::ofstream createFile(this->filepath);
        assert(createFile.is_open() && "Unable to Create File");  // create file to write =
        createFile.close();
    }

    template <typename T>
    void collect(string note, T* arr, int size) {
        this->msg_list.push_back(
            MSG(note, arr, size)
        );
    }

    void print_msg() {
        FILE* outputFile = std::fopen(this->filepath.c_str(), "a");
        fprintf(outputFile, "\nMessages\n");

        for (auto a : this->msg_list) {
            fprintf(outputFile, "%s\n%s\n\n", a.note.c_str(), a.arr.c_str());
        }

        fclose(outputFile);
    }



    void print_block_score(){
        FILE *outputFile = std::fopen(this->filepath.c_str(), "a");
        fprintf(outputFile, "\nRaw Score Matrix\n");

        list<type_t>::iterator it[PE_NUM];
        for (int i = 0; i < PE_NUM; i++) {
            it[i] = this->data.score[i].begin();
        }
        
        for (int i = 0; i < this->data.query_length; i++) {
            for (int j = 0; j < this->data.reference_length; j++) {
                if (it[i % PE_NUM] != this->data.score[i % PE_NUM].end()) {
                    fprintf(outputFile, "%d ", int (*(it[i%PE_NUM]++)));
                }
            }

            fprintf(outputFile, "\n");
        }

        fclose(outputFile);
    }

  //  // FIXME: function header
  //  void print_block_traceback_matrix(tbp_t matrix[MAX_QUERY_LENGTH][MAX_REFERENCE_LENGTH], int rown, int coln){
  //      FILE *outputFile = std::fopen(this->filepath.c_str(), "a");
  //      fprintf(outputFile, "\nTraceback Matrix\n");
  //      fprintf(outputFile, "  ");
  //      queue<char_t> tmp_ref;
  //      queue<char_t> tmp_qry;
  //      for (int i = 0; i < MAX_REFERENCE_LENGTH; i++){
  //          fprintf(outputFile, (this->str(this->data.ref.front()) + " ").c_str());
  //          tmp_ref.push(this->data.ref.front());
  //          this->data.ref.pop();
  //      }
  //      this->data.ref.swap(tmp_ref);

  //      fprintf(outputFile, "\n");
  //      for (int i = 0; i < rown; i++) {
  //          char_t qry_c = this->data.query.front();
  //          fprintf(outputFile, (this->str(qry_c) + " ").c_str());
  //          tmp_qry.push(qry_c);
  //          this->data.query.pop();
  //          for (int j = 0; j < coln; j++){
  //              switch ((tbp_t)matrix[i][j]){
  //                  case TB_UP: fprintf(outputFile, "\u2191 "); break;
  //                  case TB_LEFT: fprintf(outputFile, "\u2190 "); break;
  //                  case TB_DIAG: fprintf(outputFile, "\u2196 "); break;
  //              }
  //          }
  //          fprintf(outputFile, "\n");
  //      }
  //      this->data.query.swap(tmp_qry);
  //      fclose(outputFile);
  //  }

    void print_query(){
        FILE *outputFile = std::fopen(this->filepath.c_str(), "a");
        fprintf(outputFile, "\nQuery\n");
        
        for (auto i : this->data.query) {
            fprintf(outputFile, this->str(i).c_str());
        }

        fprintf(outputFile, "\n");
        fclose(outputFile);
    }

    void print_reference(){
        FILE *outputFile = std::fopen(this->filepath.c_str(), "a");
        fprintf(outputFile, "\nReference\n");
        
        for (auto i : this->data.ref) {
            fprintf(outputFile, this->str(i).c_str());
        }

        fprintf(outputFile, "\n");
        fclose(outputFile);
    }

  //  void print_block_traceback_linear(){
  //      FILE *outputFile = std::fopen(this->filepath.c_str(), "a");
  //      fprintf(outputFile, "\nTraceback Path\n");
  //      string ref_seq = "";
  //      string qry_seq = "";
  //      queue<char_t> tmp_qry;
  //      queue<char_t> tmp_ref;
  //      while (!this->data.traceback.empty()){
  //          tbp_t arrow = this->data.traceback.front();
  //          // printf("%d", (int) arrow);
  //          switch (arrow)
  //          {
  //          case TB_UP:
  //              ref_seq += "_";
  //              qry_seq += this->str(this->data.query.front());
  //              tmp_qry.push(this->data.query.front());
  //              this->data.query.pop();
  //              break;
  //          case TB_LEFT:
  //              qry_seq += "_";
  //              ref_seq += this->str(this->data.ref.front());
  //              tmp_ref.push(this->data.ref.front());
  //              this->data.ref.pop();
  //              break;
  //          case TB_DIAG:
  //              ref_seq += this->str(this->data.ref.front());
  //              qry_seq += this->str(this->data.query.front());
  //              tmp_qry.push(this->data.query.front());
  //              tmp_ref.push(this->data.ref.front());
  //              this->data.query.pop();
  //              this->data.ref.pop();
  //              break;
  //          default:
  //              ref_seq += " ";
  //              qry_seq += " ";
  //              break;
  //          }
  //          this->data.traceback.pop();
  //      }
  //      while (!this->data.query.empty()){
  //          tmp_qry.push(this->data.query.front());
  //          this->data.query.pop();
  //      }
  //      while (!this->data.ref.empty()) {
		//	tmp_ref.push(this->data.ref.front());
		//	this->data.ref.pop();
		//}
  //      this->data.query.swap(tmp_qry);
  //      this->data.ref.swap(tmp_ref);
  //      fprintf(outputFile, (ref_seq + "\n").c_str());
  //      fprintf(outputFile, (qry_seq + "\n").c_str());

  //      fclose(outputFile);
  //  }

    //void pritn_traceback_affine(){};
};

#endif //DP_HLS_UTILS_H
