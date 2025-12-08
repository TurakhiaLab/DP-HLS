# Dependencies
## Repositories
We have used [SeqAn3.3.0](https://github.com/seqan/seqan3) and [Minimap2](https://github.com/lh3/minimap2) as our baselines. Cloning the repositories:
```
git clone https://github.com/TurakhiaLab/DP-HLS.git
cd DP-HLS/baseline/software
git clone --recurse-submodules https://github.com/seqan/seqan3.git
git clone --branch 3.3.0 --recurse-submodules https://github.com/seqan/seqan3.git
git clone https://github.com/lh3/minimap2.git
```

## System Requirements
1. **gcc:** At least support for `C++ 20`, tested with `g++ 10.5.0` (`g++ >= 11` highly recommended)
2. **cmake:** >= `3.5`
3. **sdsl:** >= `3.0.3`


# SeqAn3
For seqan3 baseline, clone the SeqAn3 repository under `baseline/software` and run `./run_seqan3_baseline.sh` to compile and execute the baseline programs. The SeqAn3 is a include only library, so you don't need to build SeqAn3. 

# GASAL2
For the GASAL2 baseline, first clone their repository. 
Copy the script `profile_test_prog.sh` from our GASAL2 folder to the GASAL2's `test_prog` folder. 
Then after build GASAL2 according to their instructions, go to the `test_prog` folder and run the script to run the benckmarks that is used in DP-HLS
Copy the `extract_report.py` to the root folder of GASAL2, then run `python3 extract_report.py` to get the throughput numbers. 

# CUDASW4
1. Follow the instructions in CUDASW4 repository to compile `makedb` and `align`, which is its tool to make database and to perform the alignments, respectively. 
2. Copy the datasets in a data directory under this repo.
3. Create the dataset using `mkdir dbfolder`
4. Download the Uniprot Sprot dataset, truncate each sequence to 256 base pairs in length, and then name them `uniprot_sprot_adjusted.fasta` and `uniprot_sprot_query_adjusted.fasta` respectively. 
4. Make the database using the tools provided in CUDASW++, `./makedb /home/ubuntu/CUDASW4/data/uniprot_sprot_adjusted.fasta dbfolder/reference`. 
5. Use the command `nsys profile --trace=cuda --force-overwrite=true -o ./report_cudasw4 ./align --query data/uniprot_sprot_query_adjusted.fasta --db dbfolder/reference` to do the benchmarking. 
6. Download the report, then use NSight Systems to check the report. Go to systenm stats view, and in GPU kernel trace summary, you would find the average time for the 17 invokations for the kernel. Each invokation corresponding to aligning a query to all the 327233 references in the database. Then compute the throughput using the formula `throughput = 327233 / averave_kernel_time` to compute the throughput. 
7. Use `python3 extract_report.py` to extract the report from NSight Systems reports, with the `extract_report.py` script provided in `DP-HLS/baseline/software/CUDASW4` after putting it in the root folder of CUDASW4++ repo. 

# Minimap2
To build Minimap2, run 
```
cd minimap2
make
```
Then to run the minimap2 baseline which contains the two piece affine kerenl, use:
```
./run_sw_baseline.sh -t [num_threads] -kernels two_piece_affine
```
