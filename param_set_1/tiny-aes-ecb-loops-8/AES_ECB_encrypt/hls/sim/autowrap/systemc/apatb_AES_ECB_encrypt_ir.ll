; ModuleID = '/home/ctf/research/hls/my_hls/vitis/param_set_1/tiny-aes-ecb-loops-8/AES_ECB_encrypt/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.AES_ctx = type { [176 x i8], [16 x i8] }

; Function Attrs: argmemonly noinline willreturn
define void @apatb_AES_ECB_encrypt_ir(%struct.AES_ctx* noalias nocapture nonnull readonly %ctx, [4 x i8]* noalias nonnull "fpga.decayed.dim.hint"="4" %buf) local_unnamed_addr #0 {
entry:
  %ctx_copy = alloca i1536, align 512
  %buf_copy = alloca [4 x [4 x i8]], align 512
  %0 = bitcast [4 x i8]* %buf to [4 x [4 x i8]]*
  call fastcc void @copy_in(%struct.AES_ctx* nonnull %ctx, i1536* nonnull align 512 %ctx_copy, [4 x [4 x i8]]* nonnull %0, [4 x [4 x i8]]* nonnull align 512 %buf_copy)
  call void @apatb_AES_ECB_encrypt_hw(i1536* %ctx_copy, [4 x [4 x i8]]* %buf_copy)
  call void @copy_back(%struct.AES_ctx* %ctx, i1536* %ctx_copy, [4 x [4 x i8]]* %0, [4 x [4 x i8]]* %buf_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in(%struct.AES_ctx* noalias readonly, i1536* noalias align 512, [4 x [4 x i8]]* noalias readonly, [4 x [4 x i8]]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.AES_ctx(i1536* align 512 %1, %struct.AES_ctx* %0)
  call fastcc void @onebyonecpy_hls.p0a4a4i8([4 x [4 x i8]]* align 512 %3, [4 x [4 x i8]]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0struct.AES_ctx(i1536* noalias align 512 %dst, %struct.AES_ctx* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq i1536* %dst, null
  %1 = icmp eq %struct.AES_ctx* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0 = getelementptr %struct.AES_ctx, %struct.AES_ctx* %src, i64 0, i32 0
  call void @arraycpy_hls.p0a176i8(i1536* nonnull %dst, i64 0, [176 x i8]* %src.0, i64 176)
  %src.1 = getelementptr %struct.AES_ctx, %struct.AES_ctx* %src, i64 0, i32 1
  call void @arraycpy_hls.p0a16i8(i1536* nonnull %dst, i64 1408, [16 x i8]* %src.1, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a176i8(i1536* %dst, i64 %dst_idx, [176 x i8]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [176 x i8]* %src, null
  %1 = icmp eq i1536* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = mul i64 8, %for.loop.idx2
  %4 = add i64 %dst_idx, %3
  %src.addr = getelementptr [176 x i8], [176 x i8]* %src, i64 0, i64 %for.loop.idx2
  %5 = load i8, i8* %src.addr, align 1
  %6 = load i1536, i1536* %dst, align 1
  %7 = zext i64 %4 to i1536
  %8 = shl i1536 255, %7
  %9 = zext i8 %5 to i1536
  %10 = shl i1536 %9, %7
  %thr.xor1 = xor i1536 %8, -1
  %thr.and2 = and i1536 %6, %thr.xor1
  %thr.or3 = or i1536 %thr.and2, %10
  store i1536 %thr.or3, i1536* %dst, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a16i8(i1536* %dst, i64 %dst_idx, [16 x i8]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [16 x i8]* %src, null
  %1 = icmp eq i1536* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %3 = mul i64 8, %for.loop.idx2
  %4 = add i64 %dst_idx, %3
  %src.addr = getelementptr [16 x i8], [16 x i8]* %src, i64 0, i64 %for.loop.idx2
  %5 = load i8, i8* %src.addr, align 1
  %6 = load i1536, i1536* %dst, align 1
  %7 = zext i64 %4 to i1536
  %8 = shl i1536 255, %7
  %9 = zext i8 %5 to i1536
  %10 = shl i1536 %9, %7
  %thr.xor1 = xor i1536 %8, -1
  %thr.and2 = and i1536 %6, %thr.xor1
  %thr.or3 = or i1536 %thr.and2, %10
  store i1536 %thr.or3, i1536* %dst, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a4a4i8([4 x [4 x i8]]* noalias align 512 %dst, [4 x [4 x i8]]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [4 x [4 x i8]]* %dst, null
  %1 = icmp eq [4 x [4 x i8]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a4a4i8([4 x [4 x i8]]* nonnull %dst, [4 x [4 x i8]]* nonnull %src, i64 4)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a4a4i8([4 x [4 x i8]]* %dst, [4 x [4 x i8]]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [4 x [4 x i8]]* %src, null
  %1 = icmp eq [4 x [4 x i8]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [4 x [4 x i8]], [4 x [4 x i8]]* %src, i64 0, i64 %for.loop.idx2
  call void @arraycpy_hls.p0a4i8([4 x i8]* %dst.addr, [4 x i8]* %src.addr, i64 4)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a4i8([4 x i8]* %dst, [4 x i8]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [4 x i8]* %src, null
  %1 = icmp eq [4 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [4 x i8], [4 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [4 x i8], [4 x i8]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i8, i8* %src.addr, align 1
  store i8 %3, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out(%struct.AES_ctx* noalias, i1536* noalias readonly align 512, [4 x [4 x i8]]* noalias, [4 x [4 x i8]]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0struct.AES_ctx.8(%struct.AES_ctx* %0, i1536* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a4a4i8([4 x [4 x i8]]* %2, [4 x [4 x i8]]* align 512 %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0struct.AES_ctx.8(%struct.AES_ctx* noalias %dst, i1536* noalias readonly align 512 %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %struct.AES_ctx* %dst, null
  %1 = icmp eq i1536* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0 = getelementptr %struct.AES_ctx, %struct.AES_ctx* %dst, i64 0, i32 0
  call void @arraycpy_hls.p0a176i8.14([176 x i8]* %dst.0, i1536* nonnull %src, i64 0, i64 176)
  %dst.1 = getelementptr %struct.AES_ctx, %struct.AES_ctx* %dst, i64 0, i32 1
  call void @arraycpy_hls.p0a16i8.11([16 x i8]* %dst.1, i1536* nonnull %src, i64 1408, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a16i8.11([16 x i8]* %dst, i1536* readonly %src, i64 %src_idx, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq i1536* %src, null
  %1 = icmp eq [16 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [16 x i8], [16 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %3 = mul i64 8, %for.loop.idx2
  %4 = add i64 %src_idx, %3
  %5 = load i1536, i1536* %src, align 1
  %6 = zext i64 %4 to i1536
  %7 = lshr i1536 %5, %6
  %.partselect = trunc i1536 %7 to i8
  store i8 %.partselect, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a176i8.14([176 x i8]* %dst, i1536* readonly %src, i64 %src_idx, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq i1536* %src, null
  %1 = icmp eq [176 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [176 x i8], [176 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %3 = mul i64 8, %for.loop.idx2
  %4 = add i64 %src_idx, %3
  %5 = load i1536, i1536* %src, align 1
  %6 = zext i64 %4 to i1536
  %7 = lshr i1536 %5, %6
  %.partselect = trunc i1536 %7 to i8
  store i8 %.partselect, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare void @apatb_AES_ECB_encrypt_hw(i1536*, [4 x [4 x i8]]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back(%struct.AES_ctx* noalias, i1536* noalias readonly align 512, [4 x [4 x i8]]* noalias, [4 x [4 x i8]]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a4a4i8([4 x [4 x i8]]* %2, [4 x [4 x i8]]* align 512 %3)
  ret void
}

define void @AES_ECB_encrypt_hw_stub_wrapper(i1536*, [4 x [4 x i8]]*) #5 {
entry:
  %2 = alloca %struct.AES_ctx
  call void @copy_out(%struct.AES_ctx* %2, i1536* %0, [4 x [4 x i8]]* null, [4 x [4 x i8]]* %1)
  %3 = bitcast [4 x [4 x i8]]* %1 to [4 x i8]*
  call void @AES_ECB_encrypt_hw_stub(%struct.AES_ctx* %2, [4 x i8]* %3)
  call void @copy_in(%struct.AES_ctx* %2, i1536* %0, [4 x [4 x i8]]* null, [4 x [4 x i8]]* %1)
  ret void
}

declare void @AES_ECB_encrypt_hw_stub(%struct.AES_ctx* noalias nocapture nonnull readonly, [4 x i8]* noalias nonnull)

attributes #0 = { argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
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
