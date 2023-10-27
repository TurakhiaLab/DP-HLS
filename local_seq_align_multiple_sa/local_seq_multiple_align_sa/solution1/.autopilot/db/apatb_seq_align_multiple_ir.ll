; ModuleID = '/home/AD.UCSD.EDU/jsliang/DP-HLS/local_seq_align_multiple_sa/local_seq_multiple_align_sa/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<char, 256>" = type { %"class.std::ios_base::Init" }
%"class.std::ios_base::Init" = type { i8 }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_seq_align_multiple_ir([1 x %"class.hls::stream<char, 256>"]* noalias nocapture nonnull dereferenceable(1) %query_string_comp, [1 x %"class.hls::stream<char, 256>"]* noalias nocapture nonnull dereferenceable(1) %reference_string_comp, i32* noalias nocapture nonnull "fpga.decayed.dim.hint"="1" %dummies) local_unnamed_addr #1 {
entry:
  %query_string_comp_copy_0 = alloca %"class.hls::stream<char, 256>", align 512
  %query_string_comp_copy_1 = alloca %"class.hls::stream<char, 256>", align 512
  %query_string_comp_copy_2 = alloca %"class.hls::stream<char, 256>", align 512
  %query_string_comp_copy_3 = alloca %"class.hls::stream<char, 256>", align 512
  %query_string_comp_copy_4 = alloca %"class.hls::stream<char, 256>", align 512
  %query_string_comp_copy_5 = alloca %"class.hls::stream<char, 256>", align 512
  %query_string_comp_copy_6 = alloca %"class.hls::stream<char, 256>", align 512
  %query_string_comp_copy_7 = alloca %"class.hls::stream<char, 256>", align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"([1 x %"class.hls::stream<char, 256>"]* null, i32 0) ]
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<char, 256>"* %query_string_comp_copy_7, i32 0) ]
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<char, 256>"* %query_string_comp_copy_6, i32 0) ]
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<char, 256>"* %query_string_comp_copy_5, i32 0) ]
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<char, 256>"* %query_string_comp_copy_4, i32 0) ]
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<char, 256>"* %query_string_comp_copy_3, i32 0) ]
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<char, 256>"* %query_string_comp_copy_2, i32 0) ]
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<char, 256>"* %query_string_comp_copy_1, i32 0) ]
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<char, 256>"* %query_string_comp_copy_0, i32 0) ]
  %reference_string_comp_copy_0 = alloca %"class.hls::stream<char, 256>", align 512
  %reference_string_comp_copy_1 = alloca %"class.hls::stream<char, 256>", align 512
  %reference_string_comp_copy_2 = alloca %"class.hls::stream<char, 256>", align 512
  %reference_string_comp_copy_3 = alloca %"class.hls::stream<char, 256>", align 512
  %reference_string_comp_copy_4 = alloca %"class.hls::stream<char, 256>", align 512
  %reference_string_comp_copy_5 = alloca %"class.hls::stream<char, 256>", align 512
  %reference_string_comp_copy_6 = alloca %"class.hls::stream<char, 256>", align 512
  %reference_string_comp_copy_7 = alloca %"class.hls::stream<char, 256>", align 512
  call void @llvm.sideeffect() #8 [ "stream_interface"([1 x %"class.hls::stream<char, 256>"]* null, i32 0) ]
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<char, 256>"* %reference_string_comp_copy_7, i32 0) ]
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<char, 256>"* %reference_string_comp_copy_6, i32 0) ]
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<char, 256>"* %reference_string_comp_copy_5, i32 0) ]
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<char, 256>"* %reference_string_comp_copy_4, i32 0) ]
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<char, 256>"* %reference_string_comp_copy_3, i32 0) ]
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<char, 256>"* %reference_string_comp_copy_2, i32 0) ]
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<char, 256>"* %reference_string_comp_copy_1, i32 0) ]
  call void @llvm.sideeffect() #8 [ "stream_interface"(%"class.hls::stream<char, 256>"* %reference_string_comp_copy_0, i32 0) ]
  %dummies_copy = alloca i32, align 512
  call void @copy_in([1 x %"class.hls::stream<char, 256>"]* nonnull %query_string_comp, %"class.hls::stream<char, 256>"* nonnull align 512 %query_string_comp_copy_0, [1 x %"class.hls::stream<char, 256>"]* nonnull %reference_string_comp, %"class.hls::stream<char, 256>"* nonnull align 512 %reference_string_comp_copy_0, i32* nonnull %dummies, i32* nonnull align 512 %dummies_copy)
  call void @apatb_seq_align_multiple_hw(%"class.hls::stream<char, 256>"* %query_string_comp_copy_0, %"class.hls::stream<char, 256>"* %query_string_comp_copy_1, %"class.hls::stream<char, 256>"* %query_string_comp_copy_2, %"class.hls::stream<char, 256>"* %query_string_comp_copy_3, %"class.hls::stream<char, 256>"* %query_string_comp_copy_4, %"class.hls::stream<char, 256>"* %query_string_comp_copy_5, %"class.hls::stream<char, 256>"* %query_string_comp_copy_6, %"class.hls::stream<char, 256>"* %query_string_comp_copy_7, %"class.hls::stream<char, 256>"* %reference_string_comp_copy_0, %"class.hls::stream<char, 256>"* %reference_string_comp_copy_1, %"class.hls::stream<char, 256>"* %reference_string_comp_copy_2, %"class.hls::stream<char, 256>"* %reference_string_comp_copy_3, %"class.hls::stream<char, 256>"* %reference_string_comp_copy_4, %"class.hls::stream<char, 256>"* %reference_string_comp_copy_5, %"class.hls::stream<char, 256>"* %reference_string_comp_copy_6, %"class.hls::stream<char, 256>"* %reference_string_comp_copy_7, i32* %dummies_copy)
  call void @copy_back([1 x %"class.hls::stream<char, 256>"]* %query_string_comp, %"class.hls::stream<char, 256>"* %query_string_comp_copy_0, [1 x %"class.hls::stream<char, 256>"]* %reference_string_comp, %"class.hls::stream<char, 256>"* %reference_string_comp_copy_0, i32* %dummies, i32* %dummies_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.std::ios_base::Init"(%"class.std::ios_base::Init"* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.std::ios_base::Init"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #2 {
entry:
  %2 = alloca %"class.std::ios_base::Init"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.std::ios_base::Init"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.std::ios_base::Init"* %2 to i8*
  %6 = bitcast %"class.std::ios_base::Init"* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %"class.std::ios_base::Init", %"class.std::ios_base::Init"* %2
  %8 = bitcast %"class.std::ios_base::Init"* %2 to i8*
  %9 = bitcast %"class.std::ios_base::Init"* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0i32(i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed", i32* noalias readonly "fpga.caller.interfaces"="layout_transformed") unnamed_addr #3 {
entry:
  %2 = icmp eq i32* %0, null
  %3 = icmp eq i32* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = load i32, i32* %1, align 4
  store i32 %5, i32* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @"onebyonecpy_hls.p0a1class.hls::stream<char, 256>.8.9"(%"class.hls::stream<char, 256>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" %_0, [1 x %"class.hls::stream<char, 256>"]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #4 {
entry:
  %1 = icmp eq %"class.hls::stream<char, 256>"* %_0, null
  %2 = icmp eq [1 x %"class.hls::stream<char, 256>"]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %ret.loopexit

ret.loopexit:                                     ; preds = %entry
  %src.addr.01 = getelementptr [1 x %"class.hls::stream<char, 256>"], [1 x %"class.hls::stream<char, 256>"]* %0, i64 0, i64 0, i32 0
  %dst.addr.02_0 = getelementptr %"class.hls::stream<char, 256>", %"class.hls::stream<char, 256>"* %_0, i64 0, i32 0
  call void @"streamcpy_hls.p0class.std::ios_base::Init"(%"class.std::ios_base::Init"* align 512 %dst.addr.02_0, %"class.std::ios_base::Init"* %src.addr.01)
  br label %ret

ret:                                              ; preds = %ret.loopexit, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @copy_in([1 x %"class.hls::stream<char, 256>"]* noalias "orig.arg.no"="0", %"class.hls::stream<char, 256>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [1 x %"class.hls::stream<char, 256>"]* noalias "orig.arg.no"="2", %"class.hls::stream<char, 256>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, i32* noalias readonly "orig.arg.no"="4", i32* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5") #5 {
entry:
  call void @"onebyonecpy_hls.p0a1class.hls::stream<char, 256>.8.9"(%"class.hls::stream<char, 256>"* align 512 %_0, [1 x %"class.hls::stream<char, 256>"]* %0)
  call void @"onebyonecpy_hls.p0a1class.hls::stream<char, 256>.8.9"(%"class.hls::stream<char, 256>"* align 512 %_01, [1 x %"class.hls::stream<char, 256>"]* %1)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %3, i32* %2)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @"onebyonecpy_hls.p0a1class.hls::stream<char, 256>.14.15"([1 x %"class.hls::stream<char, 256>"]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", %"class.hls::stream<char, 256>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0) #4 {
entry:
  %1 = icmp eq [1 x %"class.hls::stream<char, 256>"]* %0, null
  %2 = icmp eq %"class.hls::stream<char, 256>"* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %ret.loopexit

ret.loopexit:                                     ; preds = %entry
  %src.addr.01_0 = getelementptr %"class.hls::stream<char, 256>", %"class.hls::stream<char, 256>"* %_0, i64 0, i32 0
  %dst.addr.02 = getelementptr [1 x %"class.hls::stream<char, 256>"], [1 x %"class.hls::stream<char, 256>"]* %0, i64 0, i64 0, i32 0
  call void @"streamcpy_hls.p0class.std::ios_base::Init"(%"class.std::ios_base::Init"* %dst.addr.02, %"class.std::ios_base::Init"* align 512 %src.addr.01_0)
  br label %ret

ret:                                              ; preds = %ret.loopexit, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @copy_out([1 x %"class.hls::stream<char, 256>"]* noalias "orig.arg.no"="0", %"class.hls::stream<char, 256>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [1 x %"class.hls::stream<char, 256>"]* noalias "orig.arg.no"="2", %"class.hls::stream<char, 256>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, i32* noalias "orig.arg.no"="4", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5") #6 {
entry:
  call void @"onebyonecpy_hls.p0a1class.hls::stream<char, 256>.14.15"([1 x %"class.hls::stream<char, 256>"]* %0, %"class.hls::stream<char, 256>"* align 512 %_0)
  call void @"onebyonecpy_hls.p0a1class.hls::stream<char, 256>.14.15"([1 x %"class.hls::stream<char, 256>"]* %1, %"class.hls::stream<char, 256>"* align 512 %_01)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %2, i32* align 512 %3)
  ret void
}

declare void @apatb_seq_align_multiple_hw(%"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, i32*)

; Function Attrs: argmemonly noinline
define internal void @copy_back([1 x %"class.hls::stream<char, 256>"]* noalias "orig.arg.no"="0", %"class.hls::stream<char, 256>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" %_0, [1 x %"class.hls::stream<char, 256>"]* noalias "orig.arg.no"="2", %"class.hls::stream<char, 256>"* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" %_01, i32* noalias "orig.arg.no"="4", i32* noalias readonly align 512 "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5") #6 {
entry:
  call void @"onebyonecpy_hls.p0a1class.hls::stream<char, 256>.14.15"([1 x %"class.hls::stream<char, 256>"]* %0, %"class.hls::stream<char, 256>"* align 512 %_0)
  call void @"onebyonecpy_hls.p0a1class.hls::stream<char, 256>.14.15"([1 x %"class.hls::stream<char, 256>"]* %1, %"class.hls::stream<char, 256>"* align 512 %_01)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %2, i32* align 512 %3)
  ret void
}

define void @seq_align_multiple_hw_stub_wrapper(%"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, %"class.hls::stream<char, 256>"*, i32*) #7 {
entry:
  %17 = alloca [1 x %"class.hls::stream<char, 256>"]
  %18 = alloca [1 x %"class.hls::stream<char, 256>"]
  call void @copy_out([1 x %"class.hls::stream<char, 256>"]* %17, %"class.hls::stream<char, 256>"* %0, [1 x %"class.hls::stream<char, 256>"]* %18, %"class.hls::stream<char, 256>"* %8, i32* null, i32* %16)
  call void @seq_align_multiple_hw_stub([1 x %"class.hls::stream<char, 256>"]* %17, [1 x %"class.hls::stream<char, 256>"]* %18, i32* %16)
  call void @copy_in([1 x %"class.hls::stream<char, 256>"]* %17, %"class.hls::stream<char, 256>"* %0, [1 x %"class.hls::stream<char, 256>"]* %18, %"class.hls::stream<char, 256>"* %8, i32* null, i32* %16)
  ret void
}

declare void @seq_align_multiple_hw_stub([1 x %"class.hls::stream<char, 256>"]*, [1 x %"class.hls::stream<char, 256>"]*, i32*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #6 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #7 = { "fpga.wrapper.func"="stub" }
attributes #8 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="8" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
