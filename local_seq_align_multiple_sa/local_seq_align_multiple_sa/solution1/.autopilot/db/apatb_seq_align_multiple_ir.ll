; ModuleID = '/home/AD.UCSD.EDU/jsliang/DP-HLS/local_seq_align_multiple_sa/local_seq_align_multiple_sa/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<2>" = type { %"struct.ap_int_base<2, false>" }
%"struct.ap_int_base<2, false>" = type { %"struct.ssdm_int<2, false>" }
%"struct.ssdm_int<2, false>" = type { i2 }
%"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<10, 6, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<10, 6, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<10, true>" }
%"struct.ssdm_int<10, true>" = type { i10 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_seq_align_multiple_ir(%"struct.ap_uint<2>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %chunk1, %"struct.ap_uint<2>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %chunk2, %"struct.ap_uint<2>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %chunk3, %"struct.ap_uint<2>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %chunk4, %"struct.ap_uint<2>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %chunk5, %"struct.ap_uint<2>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %chunk6, %"struct.ap_uint<2>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %chunk7, %"struct.ap_uint<2>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %chunk8, %"struct.ap_uint<2>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %ref1, %"struct.ap_uint<2>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %ref2, %"struct.ap_uint<2>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %ref3, %"struct.ap_uint<2>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %ref4, %"struct.ap_uint<2>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %ref5, %"struct.ap_uint<2>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %ref6, %"struct.ap_uint<2>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %ref7, %"struct.ap_uint<2>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" %ref8, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull %dummy1_out, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull %dummy2_out, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull %dummy3_out, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull %dummy4_out, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull %dummy5_out, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull %dummy6_out, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull %dummy7_out, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull %dummy8_out) local_unnamed_addr #0 {
entry:
  %chunk1_copy = alloca [1024 x i2], align 512
  %chunk2_copy = alloca [1024 x i2], align 512
  %chunk3_copy = alloca [1024 x i2], align 512
  %chunk4_copy = alloca [1024 x i2], align 512
  %chunk5_copy = alloca [1024 x i2], align 512
  %chunk6_copy = alloca [1024 x i2], align 512
  %chunk7_copy = alloca [1024 x i2], align 512
  %chunk8_copy = alloca [1024 x i2], align 512
  %ref1_copy = alloca [1024 x i2], align 512
  %ref2_copy = alloca [1024 x i2], align 512
  %ref3_copy = alloca [1024 x i2], align 512
  %ref4_copy = alloca [1024 x i2], align 512
  %ref5_copy = alloca [1024 x i2], align 512
  %ref6_copy = alloca [1024 x i2], align 512
  %ref7_copy = alloca [1024 x i2], align 512
  %ref8_copy = alloca [1024 x i2], align 512
  %dummy1_out_copy = alloca i10, align 512
  %dummy2_out_copy = alloca i10, align 512
  %dummy3_out_copy = alloca i10, align 512
  %dummy4_out_copy = alloca i10, align 512
  %dummy5_out_copy = alloca i10, align 512
  %dummy6_out_copy = alloca i10, align 512
  %dummy7_out_copy = alloca i10, align 512
  %dummy8_out_copy = alloca i10, align 512
  %0 = bitcast %"struct.ap_uint<2>"* %chunk1 to [1024 x %"struct.ap_uint<2>"]*
  %1 = bitcast %"struct.ap_uint<2>"* %chunk2 to [1024 x %"struct.ap_uint<2>"]*
  %2 = bitcast %"struct.ap_uint<2>"* %chunk3 to [1024 x %"struct.ap_uint<2>"]*
  %3 = bitcast %"struct.ap_uint<2>"* %chunk4 to [1024 x %"struct.ap_uint<2>"]*
  %4 = bitcast %"struct.ap_uint<2>"* %chunk5 to [1024 x %"struct.ap_uint<2>"]*
  %5 = bitcast %"struct.ap_uint<2>"* %chunk6 to [1024 x %"struct.ap_uint<2>"]*
  %6 = bitcast %"struct.ap_uint<2>"* %chunk7 to [1024 x %"struct.ap_uint<2>"]*
  %7 = bitcast %"struct.ap_uint<2>"* %chunk8 to [1024 x %"struct.ap_uint<2>"]*
  %8 = bitcast %"struct.ap_uint<2>"* %ref1 to [1024 x %"struct.ap_uint<2>"]*
  %9 = bitcast %"struct.ap_uint<2>"* %ref2 to [1024 x %"struct.ap_uint<2>"]*
  %10 = bitcast %"struct.ap_uint<2>"* %ref3 to [1024 x %"struct.ap_uint<2>"]*
  %11 = bitcast %"struct.ap_uint<2>"* %ref4 to [1024 x %"struct.ap_uint<2>"]*
  %12 = bitcast %"struct.ap_uint<2>"* %ref5 to [1024 x %"struct.ap_uint<2>"]*
  %13 = bitcast %"struct.ap_uint<2>"* %ref6 to [1024 x %"struct.ap_uint<2>"]*
  %14 = bitcast %"struct.ap_uint<2>"* %ref7 to [1024 x %"struct.ap_uint<2>"]*
  %15 = bitcast %"struct.ap_uint<2>"* %ref8 to [1024 x %"struct.ap_uint<2>"]*
  call fastcc void @copy_in([1024 x %"struct.ap_uint<2>"]* nonnull %0, [1024 x i2]* nonnull align 512 %chunk1_copy, [1024 x %"struct.ap_uint<2>"]* nonnull %1, [1024 x i2]* nonnull align 512 %chunk2_copy, [1024 x %"struct.ap_uint<2>"]* nonnull %2, [1024 x i2]* nonnull align 512 %chunk3_copy, [1024 x %"struct.ap_uint<2>"]* nonnull %3, [1024 x i2]* nonnull align 512 %chunk4_copy, [1024 x %"struct.ap_uint<2>"]* nonnull %4, [1024 x i2]* nonnull align 512 %chunk5_copy, [1024 x %"struct.ap_uint<2>"]* nonnull %5, [1024 x i2]* nonnull align 512 %chunk6_copy, [1024 x %"struct.ap_uint<2>"]* nonnull %6, [1024 x i2]* nonnull align 512 %chunk7_copy, [1024 x %"struct.ap_uint<2>"]* nonnull %7, [1024 x i2]* nonnull align 512 %chunk8_copy, [1024 x %"struct.ap_uint<2>"]* nonnull %8, [1024 x i2]* nonnull align 512 %ref1_copy, [1024 x %"struct.ap_uint<2>"]* nonnull %9, [1024 x i2]* nonnull align 512 %ref2_copy, [1024 x %"struct.ap_uint<2>"]* nonnull %10, [1024 x i2]* nonnull align 512 %ref3_copy, [1024 x %"struct.ap_uint<2>"]* nonnull %11, [1024 x i2]* nonnull align 512 %ref4_copy, [1024 x %"struct.ap_uint<2>"]* nonnull %12, [1024 x i2]* nonnull align 512 %ref5_copy, [1024 x %"struct.ap_uint<2>"]* nonnull %13, [1024 x i2]* nonnull align 512 %ref6_copy, [1024 x %"struct.ap_uint<2>"]* nonnull %14, [1024 x i2]* nonnull align 512 %ref7_copy, [1024 x %"struct.ap_uint<2>"]* nonnull %15, [1024 x i2]* nonnull align 512 %ref8_copy, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* nonnull %dummy1_out, i10* nonnull align 512 %dummy1_out_copy, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* nonnull %dummy2_out, i10* nonnull align 512 %dummy2_out_copy, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* nonnull %dummy3_out, i10* nonnull align 512 %dummy3_out_copy, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* nonnull %dummy4_out, i10* nonnull align 512 %dummy4_out_copy, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* nonnull %dummy5_out, i10* nonnull align 512 %dummy5_out_copy, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* nonnull %dummy6_out, i10* nonnull align 512 %dummy6_out_copy, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* nonnull %dummy7_out, i10* nonnull align 512 %dummy7_out_copy, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* nonnull %dummy8_out, i10* nonnull align 512 %dummy8_out_copy)
  %16 = getelementptr [1024 x i2], [1024 x i2]* %chunk1_copy, i32 0, i32 0
  %17 = getelementptr [1024 x i2], [1024 x i2]* %chunk2_copy, i32 0, i32 0
  %18 = getelementptr [1024 x i2], [1024 x i2]* %chunk3_copy, i32 0, i32 0
  %19 = getelementptr [1024 x i2], [1024 x i2]* %chunk4_copy, i32 0, i32 0
  %20 = getelementptr [1024 x i2], [1024 x i2]* %chunk5_copy, i32 0, i32 0
  %21 = getelementptr [1024 x i2], [1024 x i2]* %chunk6_copy, i32 0, i32 0
  %22 = getelementptr [1024 x i2], [1024 x i2]* %chunk7_copy, i32 0, i32 0
  %23 = getelementptr [1024 x i2], [1024 x i2]* %chunk8_copy, i32 0, i32 0
  %24 = getelementptr [1024 x i2], [1024 x i2]* %ref1_copy, i32 0, i32 0
  %25 = getelementptr [1024 x i2], [1024 x i2]* %ref2_copy, i32 0, i32 0
  %26 = getelementptr [1024 x i2], [1024 x i2]* %ref3_copy, i32 0, i32 0
  %27 = getelementptr [1024 x i2], [1024 x i2]* %ref4_copy, i32 0, i32 0
  %28 = getelementptr [1024 x i2], [1024 x i2]* %ref5_copy, i32 0, i32 0
  %29 = getelementptr [1024 x i2], [1024 x i2]* %ref6_copy, i32 0, i32 0
  %30 = getelementptr [1024 x i2], [1024 x i2]* %ref7_copy, i32 0, i32 0
  %31 = getelementptr [1024 x i2], [1024 x i2]* %ref8_copy, i32 0, i32 0
  call void @apatb_seq_align_multiple_hw(i2* %16, i2* %17, i2* %18, i2* %19, i2* %20, i2* %21, i2* %22, i2* %23, i2* %24, i2* %25, i2* %26, i2* %27, i2* %28, i2* %29, i2* %30, i2* %31, i10* %dummy1_out_copy, i10* %dummy2_out_copy, i10* %dummy3_out_copy, i10* %dummy4_out_copy, i10* %dummy5_out_copy, i10* %dummy6_out_copy, i10* %dummy7_out_copy, i10* %dummy8_out_copy)
  call void @copy_back([1024 x %"struct.ap_uint<2>"]* %0, [1024 x i2]* %chunk1_copy, [1024 x %"struct.ap_uint<2>"]* %1, [1024 x i2]* %chunk2_copy, [1024 x %"struct.ap_uint<2>"]* %2, [1024 x i2]* %chunk3_copy, [1024 x %"struct.ap_uint<2>"]* %3, [1024 x i2]* %chunk4_copy, [1024 x %"struct.ap_uint<2>"]* %4, [1024 x i2]* %chunk5_copy, [1024 x %"struct.ap_uint<2>"]* %5, [1024 x i2]* %chunk6_copy, [1024 x %"struct.ap_uint<2>"]* %6, [1024 x i2]* %chunk7_copy, [1024 x %"struct.ap_uint<2>"]* %7, [1024 x i2]* %chunk8_copy, [1024 x %"struct.ap_uint<2>"]* %8, [1024 x i2]* %ref1_copy, [1024 x %"struct.ap_uint<2>"]* %9, [1024 x i2]* %ref2_copy, [1024 x %"struct.ap_uint<2>"]* %10, [1024 x i2]* %ref3_copy, [1024 x %"struct.ap_uint<2>"]* %11, [1024 x i2]* %ref4_copy, [1024 x %"struct.ap_uint<2>"]* %12, [1024 x i2]* %ref5_copy, [1024 x %"struct.ap_uint<2>"]* %13, [1024 x i2]* %ref6_copy, [1024 x %"struct.ap_uint<2>"]* %14, [1024 x i2]* %ref7_copy, [1024 x %"struct.ap_uint<2>"]* %15, [1024 x i2]* %ref8_copy, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %dummy1_out, i10* %dummy1_out_copy, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %dummy2_out, i10* %dummy2_out_copy, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %dummy3_out, i10* %dummy3_out_copy, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %dummy4_out, i10* %dummy4_out_copy, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %dummy5_out, i10* %dummy5_out_copy, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %dummy6_out, i10* %dummy6_out_copy, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %dummy7_out, i10* %dummy7_out_copy, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %dummy8_out, i10* %dummy8_out_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([1024 x %"struct.ap_uint<2>"]* noalias readonly, [1024 x i2]* noalias align 512, [1024 x %"struct.ap_uint<2>"]* noalias readonly, [1024 x i2]* noalias align 512, [1024 x %"struct.ap_uint<2>"]* noalias readonly, [1024 x i2]* noalias align 512, [1024 x %"struct.ap_uint<2>"]* noalias readonly, [1024 x i2]* noalias align 512, [1024 x %"struct.ap_uint<2>"]* noalias readonly, [1024 x i2]* noalias align 512, [1024 x %"struct.ap_uint<2>"]* noalias readonly, [1024 x i2]* noalias align 512, [1024 x %"struct.ap_uint<2>"]* noalias readonly, [1024 x i2]* noalias align 512, [1024 x %"struct.ap_uint<2>"]* noalias readonly, [1024 x i2]* noalias align 512, [1024 x %"struct.ap_uint<2>"]* noalias readonly, [1024 x i2]* noalias align 512, [1024 x %"struct.ap_uint<2>"]* noalias readonly, [1024 x i2]* noalias align 512, [1024 x %"struct.ap_uint<2>"]* noalias readonly, [1024 x i2]* noalias align 512, [1024 x %"struct.ap_uint<2>"]* noalias readonly, [1024 x i2]* noalias align 512, [1024 x %"struct.ap_uint<2>"]* noalias readonly, [1024 x i2]* noalias align 512, [1024 x %"struct.ap_uint<2>"]* noalias readonly, [1024 x i2]* noalias align 512, [1024 x %"struct.ap_uint<2>"]* noalias readonly, [1024 x i2]* noalias align 512, [1024 x %"struct.ap_uint<2>"]* noalias readonly, [1024 x i2]* noalias align 512, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias readonly, i10* noalias align 512, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias readonly, i10* noalias align 512, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias readonly, i10* noalias align 512, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias readonly, i10* noalias align 512, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias readonly, i10* noalias align 512, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias readonly, i10* noalias align 512, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias readonly, i10* noalias align 512, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias readonly, i10* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>.63"([1024 x i2]* align 512 %1, [1024 x %"struct.ap_uint<2>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>.63"([1024 x i2]* align 512 %3, [1024 x %"struct.ap_uint<2>"]* %2)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>.63"([1024 x i2]* align 512 %5, [1024 x %"struct.ap_uint<2>"]* %4)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>.63"([1024 x i2]* align 512 %7, [1024 x %"struct.ap_uint<2>"]* %6)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>.63"([1024 x i2]* align 512 %9, [1024 x %"struct.ap_uint<2>"]* %8)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>.63"([1024 x i2]* align 512 %11, [1024 x %"struct.ap_uint<2>"]* %10)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>.63"([1024 x i2]* align 512 %13, [1024 x %"struct.ap_uint<2>"]* %12)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>.63"([1024 x i2]* align 512 %15, [1024 x %"struct.ap_uint<2>"]* %14)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>.63"([1024 x i2]* align 512 %17, [1024 x %"struct.ap_uint<2>"]* %16)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>.63"([1024 x i2]* align 512 %19, [1024 x %"struct.ap_uint<2>"]* %18)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>.63"([1024 x i2]* align 512 %21, [1024 x %"struct.ap_uint<2>"]* %20)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>.63"([1024 x i2]* align 512 %23, [1024 x %"struct.ap_uint<2>"]* %22)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>.63"([1024 x i2]* align 512 %25, [1024 x %"struct.ap_uint<2>"]* %24)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>.63"([1024 x i2]* align 512 %27, [1024 x %"struct.ap_uint<2>"]* %26)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>.63"([1024 x i2]* align 512 %29, [1024 x %"struct.ap_uint<2>"]* %28)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>.63"([1024 x i2]* align 512 %31, [1024 x %"struct.ap_uint<2>"]* %30)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>.33"(i10* align 512 %33, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %32)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>.33"(i10* align 512 %35, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %34)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>.33"(i10* align 512 %37, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %36)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>.33"(i10* align 512 %39, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %38)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>.33"(i10* align 512 %41, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %40)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>.33"(i10* align 512 %43, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %42)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>.33"(i10* align 512 %45, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %44)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>.33"(i10* align 512 %47, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %46)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias, i10* noalias readonly align 512, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias, i10* noalias readonly align 512, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias, i10* noalias readonly align 512, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias, i10* noalias readonly align 512, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias, i10* noalias readonly align 512, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias, i10* noalias readonly align 512, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias, i10* noalias readonly align 512, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias, i10* noalias readonly align 512) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>"([1024 x %"struct.ap_uint<2>"]* %0, [1024 x i2]* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>"([1024 x %"struct.ap_uint<2>"]* %2, [1024 x i2]* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>"([1024 x %"struct.ap_uint<2>"]* %4, [1024 x i2]* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>"([1024 x %"struct.ap_uint<2>"]* %6, [1024 x i2]* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>"([1024 x %"struct.ap_uint<2>"]* %8, [1024 x i2]* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>"([1024 x %"struct.ap_uint<2>"]* %10, [1024 x i2]* align 512 %11)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>"([1024 x %"struct.ap_uint<2>"]* %12, [1024 x i2]* align 512 %13)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>"([1024 x %"struct.ap_uint<2>"]* %14, [1024 x i2]* align 512 %15)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>"([1024 x %"struct.ap_uint<2>"]* %16, [1024 x i2]* align 512 %17)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>"([1024 x %"struct.ap_uint<2>"]* %18, [1024 x i2]* align 512 %19)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>"([1024 x %"struct.ap_uint<2>"]* %20, [1024 x i2]* align 512 %21)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>"([1024 x %"struct.ap_uint<2>"]* %22, [1024 x i2]* align 512 %23)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>"([1024 x %"struct.ap_uint<2>"]* %24, [1024 x i2]* align 512 %25)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>"([1024 x %"struct.ap_uint<2>"]* %26, [1024 x i2]* align 512 %27)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>"([1024 x %"struct.ap_uint<2>"]* %28, [1024 x i2]* align 512 %29)
  call fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>"([1024 x %"struct.ap_uint<2>"]* %30, [1024 x i2]* align 512 %31)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %32, i10* align 512 %33)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %34, i10* align 512 %35)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %36, i10* align 512 %37)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %38, i10* align 512 %39)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %40, i10* align 512 %41)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %42, i10* align 512 %43)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %44, i10* align 512 %45)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %46, i10* align 512 %47)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias, i10* noalias readonly align 512) unnamed_addr #3 {
entry:
  %2 = icmp eq %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %0, null
  %3 = icmp eq i10* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %0, i32 0, i32 0, i32 0, i32 0
  %5 = bitcast i10* %1 to i16*
  %6 = load i16, i16* %5
  %7 = trunc i16 %6 to i10
  store i10 %7, i10* %.01.0.05, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>.33"(i10* noalias align 512, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq i10* %0, null
  %3 = icmp eq %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>", %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %1, i32 0, i32 0, i32 0, i32 0
  %5 = bitcast i10* %.0.0.04 to i16*
  %6 = load i16, i16* %5
  %7 = trunc i16 %6 to i10
  store i10 %7, i10* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>"([1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512) unnamed_addr #3 {
entry:
  %2 = icmp eq [1024 x %"struct.ap_uint<2>"]* %0, null
  %3 = icmp eq [1024 x i2]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %5 = getelementptr [1024 x i2], [1024 x i2]* %1, i64 0, i64 %for.loop.idx7
  %dst.addr.0.0.06 = getelementptr [1024 x %"struct.ap_uint<2>"], [1024 x %"struct.ap_uint<2>"]* %0, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %6 = bitcast i2* %5 to i8*
  %7 = load i8, i8* %6
  %8 = trunc i8 %7 to i2
  store i2 %8, i2* %dst.addr.0.0.06, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a1024struct.ap_uint<2>.63"([1024 x i2]* noalias align 512, [1024 x %"struct.ap_uint<2>"]* noalias readonly) unnamed_addr #3 {
entry:
  %2 = icmp eq [1024 x i2]* %0, null
  %3 = icmp eq [1024 x %"struct.ap_uint<2>"]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx7 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [1024 x %"struct.ap_uint<2>"], [1024 x %"struct.ap_uint<2>"]* %1, i64 0, i64 %for.loop.idx7, i32 0, i32 0, i32 0
  %5 = getelementptr [1024 x i2], [1024 x i2]* %0, i64 0, i64 %for.loop.idx7
  %6 = bitcast i2* %src.addr.0.0.05 to i8*
  %7 = load i8, i8* %6
  %8 = trunc i8 %7 to i2
  store i2 %8, i2* %5, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx7, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1024
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @apatb_seq_align_multiple_hw(i2*, i2*, i2*, i2*, i2*, i2*, i2*, i2*, i2*, i2*, i2*, i2*, i2*, i2*, i2*, i2*, i10*, i10*, i10*, i10*, i10*, i10*, i10*, i10*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, [1024 x %"struct.ap_uint<2>"]* noalias, [1024 x i2]* noalias readonly align 512, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias, i10* noalias readonly align 512, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias, i10* noalias readonly align 512, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias, i10* noalias readonly align 512, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias, i10* noalias readonly align 512, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias, i10* noalias readonly align 512, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias, i10* noalias readonly align 512, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias, i10* noalias readonly align 512, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* noalias, i10* noalias readonly align 512) unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %32, i10* align 512 %33)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %34, i10* align 512 %35)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %36, i10* align 512 %37)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %38, i10* align 512 %39)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %40, i10* align 512 %41)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %42, i10* align 512 %43)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %44, i10* align 512 %45)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"(%"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %46, i10* align 512 %47)
  ret void
}

define void @seq_align_multiple_hw_stub_wrapper(i2*, i2*, i2*, i2*, i2*, i2*, i2*, i2*, i2*, i2*, i2*, i2*, i2*, i2*, i2*, i2*, i10*, i10*, i10*, i10*, i10*, i10*, i10*, i10*) #4 {
entry:
  %24 = alloca [1024 x %"struct.ap_uint<2>"]
  %25 = alloca [1024 x %"struct.ap_uint<2>"]
  %26 = alloca [1024 x %"struct.ap_uint<2>"]
  %27 = alloca [1024 x %"struct.ap_uint<2>"]
  %28 = alloca [1024 x %"struct.ap_uint<2>"]
  %29 = alloca [1024 x %"struct.ap_uint<2>"]
  %30 = alloca [1024 x %"struct.ap_uint<2>"]
  %31 = alloca [1024 x %"struct.ap_uint<2>"]
  %32 = alloca [1024 x %"struct.ap_uint<2>"]
  %33 = alloca [1024 x %"struct.ap_uint<2>"]
  %34 = alloca [1024 x %"struct.ap_uint<2>"]
  %35 = alloca [1024 x %"struct.ap_uint<2>"]
  %36 = alloca [1024 x %"struct.ap_uint<2>"]
  %37 = alloca [1024 x %"struct.ap_uint<2>"]
  %38 = alloca [1024 x %"struct.ap_uint<2>"]
  %39 = alloca [1024 x %"struct.ap_uint<2>"]
  %40 = alloca %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"
  %41 = alloca %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"
  %42 = alloca %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"
  %43 = alloca %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"
  %44 = alloca %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"
  %45 = alloca %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"
  %46 = alloca %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"
  %47 = alloca %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"
  %48 = bitcast i2* %0 to [1024 x i2]*
  %49 = bitcast i2* %1 to [1024 x i2]*
  %50 = bitcast i2* %2 to [1024 x i2]*
  %51 = bitcast i2* %3 to [1024 x i2]*
  %52 = bitcast i2* %4 to [1024 x i2]*
  %53 = bitcast i2* %5 to [1024 x i2]*
  %54 = bitcast i2* %6 to [1024 x i2]*
  %55 = bitcast i2* %7 to [1024 x i2]*
  %56 = bitcast i2* %8 to [1024 x i2]*
  %57 = bitcast i2* %9 to [1024 x i2]*
  %58 = bitcast i2* %10 to [1024 x i2]*
  %59 = bitcast i2* %11 to [1024 x i2]*
  %60 = bitcast i2* %12 to [1024 x i2]*
  %61 = bitcast i2* %13 to [1024 x i2]*
  %62 = bitcast i2* %14 to [1024 x i2]*
  %63 = bitcast i2* %15 to [1024 x i2]*
  call void @copy_out([1024 x %"struct.ap_uint<2>"]* %24, [1024 x i2]* %48, [1024 x %"struct.ap_uint<2>"]* %25, [1024 x i2]* %49, [1024 x %"struct.ap_uint<2>"]* %26, [1024 x i2]* %50, [1024 x %"struct.ap_uint<2>"]* %27, [1024 x i2]* %51, [1024 x %"struct.ap_uint<2>"]* %28, [1024 x i2]* %52, [1024 x %"struct.ap_uint<2>"]* %29, [1024 x i2]* %53, [1024 x %"struct.ap_uint<2>"]* %30, [1024 x i2]* %54, [1024 x %"struct.ap_uint<2>"]* %31, [1024 x i2]* %55, [1024 x %"struct.ap_uint<2>"]* %32, [1024 x i2]* %56, [1024 x %"struct.ap_uint<2>"]* %33, [1024 x i2]* %57, [1024 x %"struct.ap_uint<2>"]* %34, [1024 x i2]* %58, [1024 x %"struct.ap_uint<2>"]* %35, [1024 x i2]* %59, [1024 x %"struct.ap_uint<2>"]* %36, [1024 x i2]* %60, [1024 x %"struct.ap_uint<2>"]* %37, [1024 x i2]* %61, [1024 x %"struct.ap_uint<2>"]* %38, [1024 x i2]* %62, [1024 x %"struct.ap_uint<2>"]* %39, [1024 x i2]* %63, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %40, i10* %16, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %41, i10* %17, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %42, i10* %18, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %43, i10* %19, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %44, i10* %20, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %45, i10* %21, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %46, i10* %22, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %47, i10* %23)
  %64 = bitcast [1024 x %"struct.ap_uint<2>"]* %24 to %"struct.ap_uint<2>"*
  %65 = bitcast [1024 x %"struct.ap_uint<2>"]* %25 to %"struct.ap_uint<2>"*
  %66 = bitcast [1024 x %"struct.ap_uint<2>"]* %26 to %"struct.ap_uint<2>"*
  %67 = bitcast [1024 x %"struct.ap_uint<2>"]* %27 to %"struct.ap_uint<2>"*
  %68 = bitcast [1024 x %"struct.ap_uint<2>"]* %28 to %"struct.ap_uint<2>"*
  %69 = bitcast [1024 x %"struct.ap_uint<2>"]* %29 to %"struct.ap_uint<2>"*
  %70 = bitcast [1024 x %"struct.ap_uint<2>"]* %30 to %"struct.ap_uint<2>"*
  %71 = bitcast [1024 x %"struct.ap_uint<2>"]* %31 to %"struct.ap_uint<2>"*
  %72 = bitcast [1024 x %"struct.ap_uint<2>"]* %32 to %"struct.ap_uint<2>"*
  %73 = bitcast [1024 x %"struct.ap_uint<2>"]* %33 to %"struct.ap_uint<2>"*
  %74 = bitcast [1024 x %"struct.ap_uint<2>"]* %34 to %"struct.ap_uint<2>"*
  %75 = bitcast [1024 x %"struct.ap_uint<2>"]* %35 to %"struct.ap_uint<2>"*
  %76 = bitcast [1024 x %"struct.ap_uint<2>"]* %36 to %"struct.ap_uint<2>"*
  %77 = bitcast [1024 x %"struct.ap_uint<2>"]* %37 to %"struct.ap_uint<2>"*
  %78 = bitcast [1024 x %"struct.ap_uint<2>"]* %38 to %"struct.ap_uint<2>"*
  %79 = bitcast [1024 x %"struct.ap_uint<2>"]* %39 to %"struct.ap_uint<2>"*
  call void @seq_align_multiple_hw_stub(%"struct.ap_uint<2>"* %64, %"struct.ap_uint<2>"* %65, %"struct.ap_uint<2>"* %66, %"struct.ap_uint<2>"* %67, %"struct.ap_uint<2>"* %68, %"struct.ap_uint<2>"* %69, %"struct.ap_uint<2>"* %70, %"struct.ap_uint<2>"* %71, %"struct.ap_uint<2>"* %72, %"struct.ap_uint<2>"* %73, %"struct.ap_uint<2>"* %74, %"struct.ap_uint<2>"* %75, %"struct.ap_uint<2>"* %76, %"struct.ap_uint<2>"* %77, %"struct.ap_uint<2>"* %78, %"struct.ap_uint<2>"* %79, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %40, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %41, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %42, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %43, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %44, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %45, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %46, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %47)
  call void @copy_in([1024 x %"struct.ap_uint<2>"]* %24, [1024 x i2]* %48, [1024 x %"struct.ap_uint<2>"]* %25, [1024 x i2]* %49, [1024 x %"struct.ap_uint<2>"]* %26, [1024 x i2]* %50, [1024 x %"struct.ap_uint<2>"]* %27, [1024 x i2]* %51, [1024 x %"struct.ap_uint<2>"]* %28, [1024 x i2]* %52, [1024 x %"struct.ap_uint<2>"]* %29, [1024 x i2]* %53, [1024 x %"struct.ap_uint<2>"]* %30, [1024 x i2]* %54, [1024 x %"struct.ap_uint<2>"]* %31, [1024 x i2]* %55, [1024 x %"struct.ap_uint<2>"]* %32, [1024 x i2]* %56, [1024 x %"struct.ap_uint<2>"]* %33, [1024 x i2]* %57, [1024 x %"struct.ap_uint<2>"]* %34, [1024 x i2]* %58, [1024 x %"struct.ap_uint<2>"]* %35, [1024 x i2]* %59, [1024 x %"struct.ap_uint<2>"]* %36, [1024 x i2]* %60, [1024 x %"struct.ap_uint<2>"]* %37, [1024 x i2]* %61, [1024 x %"struct.ap_uint<2>"]* %38, [1024 x i2]* %62, [1024 x %"struct.ap_uint<2>"]* %39, [1024 x i2]* %63, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %40, i10* %16, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %41, i10* %17, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %42, i10* %18, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %43, i10* %19, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %44, i10* %20, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %45, i10* %21, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %46, i10* %22, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"* %47, i10* %23)
  ret void
}

declare void @seq_align_multiple_hw_stub(%"struct.ap_uint<2>"*, %"struct.ap_uint<2>"*, %"struct.ap_uint<2>"*, %"struct.ap_uint<2>"*, %"struct.ap_uint<2>"*, %"struct.ap_uint<2>"*, %"struct.ap_uint<2>"*, %"struct.ap_uint<2>"*, %"struct.ap_uint<2>"*, %"struct.ap_uint<2>"*, %"struct.ap_uint<2>"*, %"struct.ap_uint<2>"*, %"struct.ap_uint<2>"*, %"struct.ap_uint<2>"*, %"struct.ap_uint<2>"*, %"struct.ap_uint<2>"*, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<10, 6, AP_TRN, AP_WRAP, 0>"*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
