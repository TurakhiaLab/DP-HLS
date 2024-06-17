#include <string>
#include <vector>
#include <stack>
#include <map>
#include <nlohmann/json.hpp>
#include <fstream>

#ifndef VPP_CLI
#include "../include/host_utils.h"
#else
#include "host_utils.h"
#endif


using namespace std;

int HostUtils::Sequence::base_to_num(char base)
{
    switch (base)
    {
    case 'A':
        return 0;
    case 'C':
        return 1;
    case 'G':
        return 2;
    case 'T':
        return 3;
    case '_':
        return 4;
    default:
#ifdef CMAKEDEBUG
        throw std::runtime_error("Unrecognized Nucleotide " + std::string(1, base) + " from A, C, G, and T.\n"); // or throw an exception
#endif
        return 0;
    }
}

char HostUtils::Sequence::num_to_base(int num){
    switch (num)
    {
    case 0:
        return 'A';
    case 1:
        return 'C';
    case 2:
        return 'G';
    case 3:
        return 'T';
    case 4:
        return '_';
    default:
#ifdef CMAKEDEBUG
        throw std::runtime_error("Unrecognized Nucleotide " + std::to_string(num) + " from 0, 1, 2, 3, and 4.\n"); // or throw an exception
#endif
        return '\0';
    }
}


int HostUtils::Sequence::aa_to_num(char aa) {
    switch (aa) {
        case 'A': return 0;
        case 'R': return 1;
        case 'N': return 2;
        case 'D': return 3;
        case 'C': return 4;
        case 'Q': return 5;
        case 'E': return 6;
        case 'G': return 7;
        case 'H': return 8;
        case 'I': return 9;
        case 'L': return 10;
        case 'K': return 11;
        case 'M': return 12;
        case 'F': return 13;
        case 'P': return 14;
        case 'S': return 15;
        case 'T': return 16;
        case 'W': return 17;
        case 'Y': return 18;
        case 'V': return 19;
        case '_': return 20;
        default:
#ifdef CMAKEDEBUG
            throw std::runtime_error("Unrecognized Amino Acid " + std::string(1, aa) + " from A, R, N, D, C, Q, E, G, H, I, L, K, M, F, P, S, T, W, Y, V, and _.\n");
#endif
            return 0;
    }
}

char HostUtils::Sequence::num_to_aa(int num) {
    switch (num) {
        case 0: return 'A';
        case 1: return 'R';
        case 2: return 'N';
        case 3: return 'D';
        case 4: return 'C';
        case 5: return 'Q';
        case 6: return 'E';
        case 7: return 'G';
        case 8: return 'H';
        case 9: return 'I';
        case 10: return 'L';
        case 11: return 'K';
        case 12: return 'M';
        case 13: return 'F';
        case 14: return 'P';
        case 15: return 'S';
        case 16: return 'T';
        case 17: return 'W';
        case 18: return 'Y';
        case 19: return 'V';
        case 20: return '_';
        default:
#ifdef CMAKEDEBUG
            throw std::runtime_error("Unrecognized Amino Acid number " + std::to_string(num) + " from 0 to 20.\n");
#endif
            return 'A';
    }
}

map<string, std::vector<string>> HostUtils::IO::read_sequences_from_json(string file_path)
{
    std::ifstream json_file(file_path);

    // Parse the JSON file
    nlohmann::json data;
    json_file >> data;

    // Iterate through the JSON object
    for (auto &element : data.items())
    {
        string species_name = element.key();   // The 'key' is the species name
        string dna_sequence = element.value(); // The 'value' is the DNA sequence
    }
    int num_species = data.size();

    // put the species name and genes into vectors
    std::vector<string> species_names;
    std::vector<string> dna_sequences;
    for (auto &element : data.items())
    {
        species_names.push_back(element.key());
        dna_sequences.push_back(element.value());
    }
    map<string, std::vector<string>> sequences;
    sequences["specie_names"] = species_names;
    sequences["sequences"] = dna_sequences;
    return sequences;
}


std::vector<std::array<int, 5>> HostUtils::Sequence::MultipleSequencesToProfileAlign(std::vector<string> seq, int len)
{
    std::vector<std::array<int, 5>> profile;
    if (seq.size() == 0)
    {
#ifdef CMAKEDEBUG
        throw std::invalid_argument("Empty sequence");
#endif
    }
    // iterating through each position in the sequence
    for (int i = 0; i < len; i++)
    {
        // iterate through each sequence in the column
        std::array<int, 5> col;
        // initialize the column
        for (int j = 0; j < 5; j++)
        {
            col[j] = 0;
        }
        for (int j = 0; j < seq.size(); j++)
        {
            // count the number of each character in the column
            if (seq[j][i] == 'A')
            {
                col[0]++;
            }
            else if (seq[j][i] == 'T')
            {
                col[1]++;
            }
            else if (seq[j][i] == 'C')
            {
                col[2]++;
            }
            else if (seq[j][i] == 'G')
            {
                col[3]++;
            }
            else if (seq[j][i] == '_')
            {
                col[4]++;
            }
            else
            {
#ifdef CMAKEDEBUG
                throw std::invalid_argument("Invalid character in sequence: " + std::to_string(seq[j][i]));
#endif
            }
        }
        profile.push_back(col);
    }
    return profile;
}


std::vector<std::string> HostUtils::IO::readFasta(const std::string &filePath) {
    std::vector<std::string> sequences;
    std::ifstream file(filePath);
    if (!file.is_open()) {
        std::cerr << "Error: Could not open file " << filePath << std::endl;
        return sequences;
    }

    std::string line;
    std::string sequence;
    while (std::getline(file, line)) {
        if (line.empty()) continue;
        if (line[0] == '>') {
            if (!sequence.empty()) {
                sequences.push_back(sequence);
                sequence.clear();
            }
        } else {
            sequence += line;
        }
    }
    if (!sequence.empty()) {
        sequences.push_back(sequence);
    }

    file.close();
    return sequences;
}
