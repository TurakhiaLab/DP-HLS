global_affine: ../source/global_affine.cpp
	g++ -O3 -DNDEBUG  -Wextra -std=c++23 \
		-I../seqan3/include \
		-isystem ../seqan3/submodules/sdsl-lite/include \
		-isystem ../seqan3/submodules/cereal/include \
		-DSEQAN3_HAS_ZLIB=1 -DSEQAN3_HAS_BZIP2=1 \
		-lz -lbz2 -pthread \
		-o ../build/global_affine ../source/global_affine.cpp

global_linear: ../source/global_linear.cpp
	g++ -O3 -DNDEBUG  -Wextra -std=c++23 \
		-I../seqan3/include \
		-isystem ../seqan3/submodules/sdsl-lite/include \
		-isystem ../seqan3/submodules/cereal/include \
		-DSEQAN3_HAS_ZLIB=1 -DSEQAN3_HAS_BZIP2=1 \
		-lz -lbz2 -pthread \
		-o ../build/global_linear ../source/global_linear.cpp

local_affine: ../source/local_affine.cpp
	g++ -O3 -DNDEBUG  -Wextra -std=c++23 \
		-I../seqan3/include \
		-isystem ../seqan3/submodules/sdsl-lite/include \
		-isystem ../seqan3/submodules/cereal/include \
		-DSEQAN3_HAS_ZLIB=1 -DSEQAN3_HAS_BZIP2=1 \
		-lz -lbz2 -pthread \
		-o ../build/local_affine ../source/local_affine.cpp

local_linear: ../source/local_linear.cpp
	g++ -O3 -DNDEBUG  -Wextra -std=c++23 \
		-I../seqan3/include \
		-isystem ../seqan3/submodules/sdsl-lite/include \
		-isystem ../seqan3/submodules/cereal/include \
		-DSEQAN3_HAS_ZLIB=1 -DSEQAN3_HAS_BZIP2=1 \
		-lz -lbz2 -pthread \
		-o ../build/local_linear ../source/local_linear.cpp

semi_global_linear: ../source/semi_global_linear.cpp
	g++ -O3 -DNDEBUG  -Wextra -std=c++23 \
		-I../seqan3/include \
		-isystem ../seqan3/submodules/sdsl-lite/include \
		-isystem ../seqan3/submodules/cereal/include \
		-DSEQAN3_HAS_ZLIB=1 -DSEQAN3_HAS_BZIP2=1 \
		-lz -lbz2 -pthread \
		-o ../build/semi_global_linear ../source/semi_global_linear.cpp

overlap_linear: ../source/overlap_linear.cpp
	g++ -O3 -DNDEBUG  -Wextra -std=c++23 \
		-I../seqan3/include \
		-isystem ../seqan3/submodules/sdsl-lite/include \
		-isystem ../seqan3/submodules/cereal/include \
		-DSEQAN3_HAS_ZLIB=1 -DSEQAN3_HAS_BZIP2=1 \
		-lz -lbz2 -pthread \
		-o ../build/overlap_linear ../source/overlap_linear.cpp

banded_global_linear: ../source/banded_global_linear.cpp
	g++ -O3 -DNDEBUG  -Wextra -std=c++23 \
		-I../seqan3/include \
		-isystem ../seqan3/submodules/sdsl-lite/include \
		-isystem ../seqan3/submodules/cereal/include \
		-DSEQAN3_HAS_ZLIB=1 -DSEQAN3_HAS_BZIP2=1 \
		-lz -lbz2 -pthread \
		-o ../build/banded_global_linear ../source/banded_global_linear.cpp

banded_local_affine: ../source/banded_local_affine.cpp
	g++ -O3 -DNDEBUG  -Wextra -std=c++23 \
		-I../seqan3/include \
		-isystem ../seqan3/submodules/sdsl-lite/include \
		-isystem ../seqan3/submodules/cereal/include \
		-DSEQAN3_HAS_ZLIB=1 -DSEQAN3_HAS_BZIP2=1 \
		-lz -lbz2 -pthread \
		-o ../build/banded_local_affine ../source/banded_local_affine.cpp

# run_global_affine: global_affine
# 	@echo "Running global_affine"
# 	./global_affine 36

# run_global_linear: global_linear
# 	@echo "Running global_linear"
# 	./global_linear 36

# run_local_affine: local_affine
# 	@echo "Running local_affine"
# 	./local_affine 36

# run_local_linear: local_linear
# 	@echo "Running local_linear"
# 	./local_linear 36

# run_semi_global_linear: semi_global_linear
# 	@echo "Running semi_global_linear"
# 	./semi_global_linear 36

# run_overlap_linear: overlap_linear
# 	@echo "Running overlap_linear"
# 	./overlap_linear 36

# run_banded_global_linear: banded_global_linear
# 	@echo "Running banded_global_linear"
# 	./banded_global_linear 36

# run_banded_local_affine: banded_local_affine
# 	@echo "Running banded_local_affine"
# 	./banded_local_affine 36

all: global_affine global_linear local_affine local_linear semi_global_linear overlap_linear banded_global_linear banded_local_affine

run_all: run_global_affine run_global_linear run_local_affine run_local_linear run_semi_global_linear run_overlap_linear run_banded_global_linear run_banded_local_affine

clean:
	rm -f ../build/global_affine
	rm -f ../build/global_linear
	rm -f ../build/local_affine
	rm -f ../build/local_linear
	rm -f ../build/semi_global_linear
	rm -f ../build/overlap_linear
	rm -f ../build/banded_global_linear
	rm -f ../build/banded_local_affine