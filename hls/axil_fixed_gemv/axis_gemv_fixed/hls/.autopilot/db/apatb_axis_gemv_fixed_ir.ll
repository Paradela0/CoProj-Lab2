; ModuleID = '/afs/.ist.utl.pt/users/8/8/ist1103088/Desktop/CoProj/CoProj-Lab2/hls/axil_fixed_gemv/axis_gemv_fixed/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>" = type { %"struct.hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>" }
%"struct.hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>" = type { %"struct.ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>", %"struct.ap_uint<4>", %"struct.ap_uint<4>", %"struct.hls::axis_disabled_signal", %"struct.ap_uint<1>", %"struct.hls::axis_disabled_signal", %"struct.hls::axis_disabled_signal" }
%"struct.ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<25, 7, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<25, 7, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<25, true>" }
%"struct.ssdm_int<25, true>" = type { i25 }
%"struct.ap_uint<4>" = type { %"struct.ap_int_base<4, false>" }
%"struct.ap_int_base<4, false>" = type { %"struct.ssdm_int<4, false>" }
%"struct.ssdm_int<4, false>" = type { i4 }
%"struct.ap_uint<1>" = type { %"struct.ap_int_base<1, false>" }
%"struct.ap_int_base<1, false>" = type { %"struct.ssdm_int<1, false>" }
%"struct.ssdm_int<1, false>" = type { i1 }
%"struct.hls::axis_disabled_signal" = type { i8 }
%"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>" = type { %"struct.hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>" }
%"struct.hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>" = type { %"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>", %"struct.ap_uint<4>", %"struct.ap_uint<4>", %"struct.hls::axis_disabled_signal", %"struct.ap_uint<1>", %"struct.hls::axis_disabled_signal", %"struct.hls::axis_disabled_signal" }
%"struct.ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<32, 16, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<32, 16, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<32, true>" }
%"struct.ssdm_int<32, true>" = type { i32 }

; Function Attrs: noinline willreturn
define void @apatb_axis_gemv_fixed_ir(%"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* noalias nonnull dereferenceable(12) %strm_in, %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* noalias nonnull dereferenceable(12) %strm_out) local_unnamed_addr #0 {
entry:
  %strm_in_copy.data = alloca i25, align 512
  %strm_in_copy.keep = alloca i4, align 512
  %strm_in_copy.strb = alloca i4, align 512
  %strm_in_copy.last = alloca i1, align 512
  %strm_out_copy.data = alloca i32, align 512
  %strm_out_copy.keep = alloca i4, align 512
  %strm_out_copy.strb = alloca i4, align 512
  %strm_out_copy.last = alloca i1, align 512
  call fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* nonnull %strm_in, i25* nonnull align 512 %strm_in_copy.data, i4* nonnull align 512 %strm_in_copy.keep, i4* nonnull align 512 %strm_in_copy.strb, i1* nonnull align 512 %strm_in_copy.last, %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* nonnull %strm_out, i32* nonnull align 512 %strm_out_copy.data, i4* nonnull align 512 %strm_out_copy.keep, i4* nonnull align 512 %strm_out_copy.strb, i1* nonnull align 512 %strm_out_copy.last)
  call void @apatb_axis_gemv_fixed_hw(i25* %strm_in_copy.data, i4* %strm_in_copy.keep, i4* %strm_in_copy.strb, i1* %strm_in_copy.last, i32* %strm_out_copy.data, i4* %strm_out_copy.keep, i4* %strm_out_copy.strb, i1* %strm_out_copy.last)
  call void @copy_back(%"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %strm_in, i25* %strm_in_copy.data, i4* %strm_in_copy.keep, i4* %strm_in_copy.strb, i1* %strm_in_copy.last, %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %strm_out, i32* %strm_out_copy.data, i4* %strm_out_copy.keep, i4* %strm_out_copy.strb, i1* %strm_out_copy.last)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_in(%"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* noalias, i25* noalias align 512 "unpacked"="1.0" %_V_data_V, i4* noalias align 512 "unpacked"="1.1" %_V_keep_V, i4* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="3.0" %_V_data_V1, i4* noalias align 512 "unpacked"="3.1" %_V_keep_V2, i4* noalias align 512 "unpacked"="3.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="3.3" %_V_last_V4) unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>.21"(i25* align 512 %_V_data_V, i4* align 512 %_V_keep_V, i4* align 512 %_V_strb_V, i1* align 512 %_V_last_V, %"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"(i32* align 512 %_V_data_V1, i4* align 512 %_V_keep_V2, i4* align 512 %_V_strb_V3, i1* align 512 %_V_last_V4, %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %1)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* noalias %dst, i25* noalias align 512 "unpacked"="1.0" %src_V_data_V, i4* noalias align 512 "unpacked"="1.1" %src_V_keep_V, i4* noalias align 512 "unpacked"="1.2" %src_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %src_V_last_V) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* nonnull %dst, i25* align 512 %src_V_data_V, i4* align 512 %src_V_keep_V, i4* align 512 %src_V_strb_V, i1* align 512 %src_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* noalias nocapture, i25* noalias nocapture align 512 "unpacked"="1.0" %_V_data_V, i4* noalias nocapture align 512 "unpacked"="1.1" %_V_keep_V, i4* noalias nocapture align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="1.3" %_V_last_V) unnamed_addr #3 {
entry:
  %1 = alloca i4
  %2 = alloca i4
  %3 = alloca i1
  %4 = alloca i25
  %5 = alloca %"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i25* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_4(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i25* %4 to i8*
  %9 = bitcast i25* %_V_data_V to i8*
  call void @fpga_fifo_pop_4(i8* %8, i8* %9)
  %10 = bitcast i25* %4 to i32*
  %11 = load i32, i32* %10
  %12 = trunc i32 %11 to i25
  %13 = bitcast i4* %2 to i8*
  %14 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %13, i8* %14)
  %15 = bitcast i4* %2 to i8*
  %16 = load i8, i8* %15
  %17 = trunc i8 %16 to i4
  %18 = bitcast i4* %1 to i8*
  %19 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %18, i8* %19)
  %20 = bitcast i4* %1 to i8*
  %21 = load i8, i8* %20
  %22 = trunc i8 %21 to i4
  %23 = bitcast i1* %3 to i8*
  %24 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %23, i8* %24)
  %25 = bitcast i1* %3 to i8*
  %26 = load i8, i8* %25
  %27 = trunc i8 %26 to i1
  %.fca.0.0.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>" undef, i25 %12, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>" %.fca.0.0.0.0.0.insert, i4 %17, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>" %.fca.0.1.0.0.0.insert, i4 %22, 0, 2, 0, 0, 0
  %.fca.0.4.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>" %.fca.0.2.0.0.0.insert, i1 %27, 0, 4, 0, 0, 0
  store %"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>" %.fca.0.4.0.0.0.insert, %"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %5
  %28 = bitcast %"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %5 to i8*
  %29 = bitcast %"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %28, i8* %29)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"(i32* noalias align 512 "unpacked"="0.0" %dst_V_data_V, i4* noalias align 512 "unpacked"="0.1" %dst_V_keep_V, i4* noalias align 512 "unpacked"="0.2" %dst_V_strb_V, i1* noalias align 512 "unpacked"="0.3" %dst_V_last_V, %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* noalias %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"(i32* align 512 %dst_V_data_V, i4* align 512 %dst_V_keep_V, i4* align 512 %dst_V_strb_V, i1* align 512 %dst_V_last_V, %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"(i32* noalias nocapture align 512 "unpacked"="0.0" %_V_data_V, i4* noalias nocapture align 512 "unpacked"="0.1" %_V_keep_V, i4* noalias nocapture align 512 "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* noalias nocapture) unnamed_addr #3 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"
  %2 = alloca i32
  %3 = alloca i4
  %4 = alloca i4
  %5 = alloca i1
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  %7 = call i1 @fpga_fifo_not_empty_12(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %1 to i8*
  %9 = bitcast %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_12(i8* %8, i8* %9)
  %10 = load volatile %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>", %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %1
  %.fca.0.0.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>" %10, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>" %10, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>" %10, 0, 2, 0, 0, 0
  %.fca.0.4.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>" %10, 0, 4, 0, 0, 0
  store i32 %.fca.0.0.0.0.0.extract, i32* %2
  %11 = bitcast i32* %2 to i8*
  %12 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_push_4(i8* %11, i8* %12)
  store i4 %.fca.0.1.0.0.0.extract, i4* %4
  %13 = bitcast i4* %4 to i8*
  %14 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %13, i8* %14)
  store i4 %.fca.0.2.0.0.0.extract, i4* %3
  %15 = bitcast i4* %3 to i8*
  %16 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %15, i8* %16)
  store i1 %.fca.0.4.0.0.0.extract, i1* %5
  %17 = bitcast i1* %5 to i8*
  %18 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %17, i8* %18)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_out(%"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* noalias, i25* noalias align 512 "unpacked"="1.0" %_V_data_V, i4* noalias align 512 "unpacked"="1.1" %_V_keep_V, i4* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="3.0" %_V_data_V1, i4* noalias align 512 "unpacked"="3.1" %_V_keep_V2, i4* noalias align 512 "unpacked"="3.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="3.3" %_V_last_V4) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %0, i25* align 512 %_V_data_V, i4* align 512 %_V_keep_V, i4* align 512 %_V_strb_V, i1* align 512 %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>.10"(%"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %1, i32* align 512 %_V_data_V1, i4* align 512 %_V_keep_V2, i4* align 512 %_V_strb_V3, i1* align 512 %_V_last_V4)
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>.10"(%"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* noalias %dst, i32* noalias align 512 "unpacked"="1.0" %src_V_data_V, i4* noalias align 512 "unpacked"="1.1" %src_V_keep_V, i4* noalias align 512 "unpacked"="1.2" %src_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %src_V_last_V) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>.13"(%"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* nonnull %dst, i32* align 512 %src_V_data_V, i4* align 512 %src_V_keep_V, i4* align 512 %src_V_strb_V, i1* align 512 %src_V_last_V)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>.13"(%"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* noalias nocapture, i32* noalias nocapture align 512 "unpacked"="1.0" %_V_data_V, i4* noalias nocapture align 512 "unpacked"="1.1" %_V_keep_V, i4* noalias nocapture align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="1.3" %_V_last_V) unnamed_addr #3 {
entry:
  %1 = alloca i32
  %2 = alloca i4
  %3 = alloca i4
  %4 = alloca i1
  %5 = alloca %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast i32* %_V_data_V to i8*
  %7 = call i1 @fpga_fifo_not_empty_4(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast i32* %1 to i8*
  %9 = bitcast i32* %_V_data_V to i8*
  call void @fpga_fifo_pop_4(i8* %8, i8* %9)
  %10 = load volatile i32, i32* %1
  %11 = bitcast i4* %3 to i8*
  %12 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_pop_1(i8* %11, i8* %12)
  %13 = bitcast i4* %3 to i8*
  %14 = load i8, i8* %13
  %15 = trunc i8 %14 to i4
  %16 = bitcast i4* %2 to i8*
  %17 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_pop_1(i8* %16, i8* %17)
  %18 = bitcast i4* %2 to i8*
  %19 = load i8, i8* %18
  %20 = trunc i8 %19 to i4
  %21 = bitcast i1* %4 to i8*
  %22 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_pop_1(i8* %21, i8* %22)
  %23 = bitcast i1* %4 to i8*
  %24 = load i8, i8* %23
  %25 = trunc i8 %24 to i1
  %.fca.0.0.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>" undef, i32 %10, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>" %.fca.0.0.0.0.0.insert, i4 %15, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>" %.fca.0.1.0.0.0.insert, i4 %20, 0, 2, 0, 0, 0
  %.fca.0.4.0.0.0.insert = insertvalue %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>" %.fca.0.2.0.0.0.insert, i1 %25, 0, 4, 0, 0, 0
  store %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>" %.fca.0.4.0.0.0.insert, %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %5
  %26 = bitcast %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %5 to i8*
  %27 = bitcast %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_push_12(i8* %26, i8* %27)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>.21"(i25* noalias align 512 "unpacked"="0.0" %dst_V_data_V, i4* noalias align 512 "unpacked"="0.1" %dst_V_keep_V, i4* noalias align 512 "unpacked"="0.2" %dst_V_strb_V, i1* noalias align 512 "unpacked"="0.3" %dst_V_last_V, %"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* noalias %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>.24"(i25* align 512 %dst_V_data_V, i4* align 512 %dst_V_keep_V, i4* align 512 %dst_V_strb_V, i1* align 512 %dst_V_last_V, %"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* nonnull %src)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>.24"(i25* noalias nocapture align 512 "unpacked"="0.0" %_V_data_V, i4* noalias nocapture align 512 "unpacked"="0.1" %_V_keep_V, i4* noalias nocapture align 512 "unpacked"="0.2" %_V_strb_V, i1* noalias nocapture align 512 "unpacked"="0.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* noalias nocapture) unnamed_addr #3 {
entry:
  %1 = alloca %"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"
  %2 = alloca i4
  %3 = alloca i4
  %4 = alloca i1
  %5 = alloca i25
  br label %empty

empty:                                            ; preds = %push, %entry
  %6 = bitcast %"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  %7 = call i1 @fpga_fifo_not_empty_12(i8* %6)
  br i1 %7, label %push, label %ret

push:                                             ; preds = %empty
  %8 = bitcast %"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %1 to i8*
  %9 = bitcast %"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %0 to i8*
  call void @fpga_fifo_pop_12(i8* %8, i8* %9)
  %10 = load volatile %"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>", %"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %1
  %.fca.0.0.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>" %10, 0, 0, 0, 0, 0
  %.fca.0.1.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>" %10, 0, 1, 0, 0, 0
  %.fca.0.2.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>" %10, 0, 2, 0, 0, 0
  %.fca.0.4.0.0.0.extract = extractvalue %"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>" %10, 0, 4, 0, 0, 0
  store i25 %.fca.0.0.0.0.0.extract, i25* %5
  %11 = bitcast i25* %5 to i8*
  %12 = bitcast i25* %_V_data_V to i8*
  call void @fpga_fifo_push_4(i8* %11, i8* %12)
  store i4 %.fca.0.1.0.0.0.extract, i4* %3
  %13 = bitcast i4* %3 to i8*
  %14 = bitcast i4* %_V_keep_V to i8*
  call void @fpga_fifo_push_1(i8* %13, i8* %14)
  store i4 %.fca.0.2.0.0.0.extract, i4* %2
  %15 = bitcast i4* %2 to i8*
  %16 = bitcast i4* %_V_strb_V to i8*
  call void @fpga_fifo_push_1(i8* %15, i8* %16)
  store i1 %.fca.0.4.0.0.0.extract, i1* %4
  %17 = bitcast i1* %4 to i8*
  %18 = bitcast i1* %_V_last_V to i8*
  call void @fpga_fifo_push_1(i8* %17, i8* %18)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

declare void @apatb_axis_gemv_fixed_hw(i25*, i4*, i4*, i1*, i32*, i4*, i4*, i1*)

; Function Attrs: argmemonly noinline willreturn
define internal fastcc void @copy_back(%"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* noalias, i25* noalias align 512 "unpacked"="1.0" %_V_data_V, i4* noalias align 512 "unpacked"="1.1" %_V_keep_V, i4* noalias align 512 "unpacked"="1.2" %_V_strb_V, i1* noalias align 512 "unpacked"="1.3" %_V_last_V, %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* noalias, i32* noalias align 512 "unpacked"="3.0" %_V_data_V1, i4* noalias align 512 "unpacked"="3.1" %_V_keep_V2, i4* noalias align 512 "unpacked"="3.2" %_V_strb_V3, i1* noalias align 512 "unpacked"="3.3" %_V_last_V4) unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"(%"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %0, i25* align 512 %_V_data_V, i4* align 512 %_V_keep_V, i4* align 512 %_V_strb_V, i1* align 512 %_V_last_V)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>.10"(%"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %1, i32* align 512 %_V_data_V1, i4* align 512 %_V_keep_V2, i4* align 512 %_V_strb_V3, i1* align 512 %_V_last_V4)
  ret void
}

define void @axis_gemv_fixed_hw_stub_wrapper(i25*, i4*, i4*, i1*, i32*, i4*, i4*, i1*) #5 {
entry:
  %8 = alloca %"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"
  %9 = alloca %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"
  call void @copy_out(%"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %8, i25* %0, i4* %1, i4* %2, i1* %3, %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %9, i32* %4, i4* %5, i4* %6, i1* %7)
  call void @axis_gemv_fixed_hw_stub(%"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %8, %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %9)
  call void @copy_in(%"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %8, i25* %0, i4* %1, i4* %2, i1* %3, %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* %9, i32* %4, i4* %5, i4* %6, i1* %7)
  ret void
}

declare void @axis_gemv_fixed_hw_stub(%"class.hls::stream<hls::axis<ap_fixed<25, 7, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* noalias nonnull, %"class.hls::stream<hls::axis<ap_fixed<32, 16, AP_TRN, AP_WRAP, 0>, 0, 0, 0, '8', false>, 0>"* noalias nonnull)

declare i1 @fpga_fifo_not_empty_12(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_12(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_12(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline willreturn "fpga.wrapper.func"="streamcpy_hls" }
attributes #4 = { argmemonly noinline willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

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
!7 = distinct !{!7, !6}
