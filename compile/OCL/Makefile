# Simplified Makefile for Xilinx FPGA Kernel Compilation

# Notice: target name for fpga binary have to be the same name as the top level module

# Variables
TARGET := $(TARGET)
PLATFORM := $(DEVICE)
HOST_ARCH := x86
VPP := v++
CXX := c++
EXECUTABLE := host
BINARY_CONTAINERS := ./build_dir/$(TARGET)/seq_align_multiple_static.xclbin
HOST_SRCS := ../../src/hosts/host_ocl.cpp ../../common/includes/xcl2/xcl2.cpp ../../include/host_utils.h
CXXFLAGS := -Wall -O0 -g -std=c++1y -I../../include -I../../common/includes/xcl2 -I/opt/xilinx/xrt/include -I/opt/Xilinx/Vitis_HLS/2021.2/include
LDFLAGS := -lrt -lstdc++ -lOpenCL -L/opt/xilinx/xrt/lib
VPP_FLAGS := -t $(TARGET) --platform $(PLATFORM) --save-temps -I../../includes
KERNEL_SRC += ../../src/toplevel/seq_align_multiple.cpp ../../src/align/align.cpp ../../src/pe/pe.cpp ../../src/frontend.cpp ../../src/utils.cpp ../../src/traceback.cpp ../../src/initial.cpp
# ../include/seq_align_multiple.h ../include/align.h ../include/PE.h ../include/frontend.h ../include/utils.h ../include/traceback.h ../include/initial.h

KERNEL_OBJS := $(patsubst %.cpp, %.xo, $(KERNEL_SRCS))

# Main Targets
.PHONY: all clean

all: $(EXECUTABLE) $(BINARY_CONTAINERS)

$(EXECUTABLE): $(HOST_SRCS)
	$(CXX) -o $@ $^ $(CXXFLAGS) $(LDFLAGS)

$(BINARY_CONTAINERS): $(KERNEL_OBJS)
	mkdir -p ./build_dir/$(TARGET)
	$(VPP) $(VPP_FLAGS) -l -o'$(BINARY_CONTAINERS)' $^

%.xo: %.cpp
	$(VPP) $(VPP_FLAGS) -c -k $(basename $(notdir $<)) -I'$(<D)' -o'$@' '$<'

clean:
	rm -rf $(EXECUTABLE) ./build_dir

# v++ -t hw --platform /home/centos/Desktop/aws-fpga-exp/Vitis/aws_platform/xilinx_aws-vu9p-f1_shell-v04261818_201920_3/xilinx_aws-vu9p-f1_shell-v04261818_201920_3.xpfm --save-temps  -c -k vadd -I'src' -o'./build_dir/hw/vadd.xo' 'src/vadd.cpp'
# Option Map File Used: '/opt/Xilinx/Vitis/2021.2/data/vitis/vpp/optMap.xml'