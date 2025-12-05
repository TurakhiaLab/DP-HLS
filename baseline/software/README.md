## Software Implementation and Baseline Evaluations

#### System Requirements
1. **gcc:** At least support for `C++ 20`, tested with `g++ 10.5.0` (`g++ >= 11` highly recommended)
2. **cmake:** >= `3.5`
3. **sdsl:** >= `3.0.3`

#### CPU Baseline Quick Start
```
git clone https://github.com/TurakhiaLab/DP-HLS.git
cd DP-HLS/baseline/software
git clone --branch 3.3.0 --recurse-submodules https://github.com/seqan/seqan3.git
git clone https://github.com/lh3/minimap2.git
```

#### Build Instructions
SeqAn3 is compiled internally by the `run_sw_baseline.sh` script. To build Minimap2, run 
```
cd minimap2
make
```

#### Running the Baselines
```
./run_sw_baseline.sh [-t [num_threads] -kernels [local_linear] [local_affine] [global_linear] [global_affine]
					  [banded_local_linear] [two_piece_affine] [overlap_linear] [semig_lobal_linear]]
```
Specifying `-kernels` is optional and doing so will run baselines only for the specified kernels. Otherwise, simply running `./run_sw_baseline.sh` will run all available baselines. Specifying `-t` will run the program with `num_threads` threads (8 by default).

#### Baseline Tools
We have used [SeqAn3.3.0](https://github.com/seqan/seqan3) and [Minimap2](https://github.com/lh3/minimap2) as our baselines. Cloning the repository above will clone SeqAn3 and Minimap2 repositories.
