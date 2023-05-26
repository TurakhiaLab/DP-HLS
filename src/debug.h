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

namespace fs = std::filesystem;
using namespace fs;
using namespace std;

class Debugger {
public:
    string debugpath;
    string filepath;
    struct {
        queue<char_t> query;
        queue<char_t> ref;
        queue<char_t> traceback;
        int max_row;
        int max_col;
    } data;

    Debugger(){
        this->debugpath = "";
        this->filepath = "";
    }

    Debugger(const string debugpath, const string filename, const int block){
        this->debugpath = debugpath;  // set the path to the debug folder
        fs::path path(debugpath);  // get the path to the debug folder
        fs::remove_all(path);
        fs::create_directories(path);
        this->filepath =  debugpath + filename + "_" + std::to_string(block);
        std::ofstream createFile(this->filepath);
        assert(createFile.is_open() && "Unable to Create File");  // create file to write =
        createFile.close();
    }

    static string str(char_t nec){
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
                break;
            }
    }

    void print_block_score(type_t matrix[query_length][ref_length], int rown, int coln){
        FILE *outputFile = std::fopen(this->filepath.c_str(), "a");
        fprintf(outputFile, "\nRaw Score Matrix\n");
        for (int i = 0; i < rown; i++) {
            for (int j = 0; j < coln; j++){
                fprintf(outputFile, "%f ", (float) matrix[i][j]);
            }
            fprintf(outputFile, "\n");
        }
        fclose(outputFile);
    }

    void print_block_traceback(tbp_t matrix[query_length][ref_length], int rown, int coln){
        FILE *outputFile = std::fopen(this->filepath.c_str(), "a");
        fprintf(outputFile, "\nTraceback Matrix\n");
        fprintf(outputFile, "  ");
        for (int i = 0; i < ref_length; i++){
            fprintf(outputFile, (this->str(this->data.ref.front()) + " ").c_str());
            this->data.ref.push(this->data.ref.front());
            this->data.ref.pop();
        }
        fprintf(outputFile, "\n");
        for (int i = 0; i < rown; i++) {
            char_t qry_c = this->data.query.front();
            fprintf(outputFile, (this->str(qry_c) + " ").c_str());
            this->data.query.pop();
            this->data.query.push(qry_c);
            for (int j = 0; j < coln; j++){
                switch ((tbp_t)matrix[i][j]){
                    case TB_UP: fprintf(outputFile, "\u2191 "); break;
                    case TB_LEFT: fprintf(outputFile, "\u2190 "); break;
                    case TB_DIAG: fprintf(outputFile, "\u2196 "); break;
                }
            }
            fprintf(outputFile, "\n");
        }
        fclose(outputFile);
    }

    void print_query(){
        FILE *outputFile = std::fopen(this->filepath.c_str(), "a");
        fprintf(outputFile, "\nQuery\n");
        queue<char_t> tmp;
        while (!this->data.query.empty()){
            char_t read = this->data.query.front();
            fprintf(outputFile, this->str(read).c_str());
            tmp.push(read);
            this->data.query.pop();
        }

        while (!tmp.empty()){
            this->data.query.push(tmp.front());
            tmp.pop();
        }

        fprintf(outputFile, "\n");
        fclose(outputFile);
    }

    void print_reference(){
        FILE *outputFile = std::fopen(this->filepath.c_str(), "a");
        fprintf(outputFile, "\nReference\n");
        queue<char_t> tmp;
        while (!this->data.ref.empty()){
            char_t read = this->data.ref.front();
            fprintf(outputFile, this->str(read).c_str());
            tmp.push(read);
            this->data.ref.pop();
        }

        while (!tmp.empty()){
            this->data.ref.push(tmp.front());
            tmp.pop();
        }

        fprintf(outputFile, "\n");
        fclose(outputFile);
    }

    void print_block_traceback_path_linear(){
        FILE *outputFile = std::fopen(this->filepath.c_str(), "a");
        fprintf(outputFile, "\nTraceback Path\n");
        string ref_seq = "";
        string qry_seq = "";
        queue<tbp_t> tmp_qry;
        queue<tbp_t> tmp_ref;
        while (!this->data.traceback.empty()){
            tbp_t arrow = this->data.traceback.front();
            // printf("%d", (int) arrow);
            switch (arrow)
            {
            case TB_UP:
                ref_seq += "_";
                qry_seq += this->str(this->data.query.front());
                tmp_qry.push(this->data.query.front());
                this->data.query.pop();
                break;
            case TB_LEFT:
                qry_seq += "_";
                ref_seq += this->str(this->data.ref.front());
                tmp_ref.push(this->data.ref.front());
                this->data.ref.pop();
                break;
            case TB_DIAG:
                ref_seq += this->str(this->data.ref.front());
                qry_seq += this->str(this->data.query.front());
                tmp_qry.push(this->data.query.front());
                tmp_ref.push(this->data.ref.front());
                this->data.query.pop();
                this->data.ref.pop();
                break;
            default:
                ref_seq += " ";
                qry_seq += " ";
                break;
            }
            this->data.traceback.pop();
        }
        while (!tmp_qry.empty()){
            this->data.query.push(tmp_qry.front());
            tmp_qry.pop();
        }
        while (!tmp_ref.empty()){
            this->data.ref.push(tmp_ref.front());
            tmp_ref.pop();
        }
        fprintf(outputFile, (ref_seq + "\n").c_str());
        fprintf(outputFile, (qry_seq + "\n").c_str());

        fclose(outputFile);
        
    }

    void pritn_traceback_affine(){};
};

#endif //DP_HLS_UTILS_H