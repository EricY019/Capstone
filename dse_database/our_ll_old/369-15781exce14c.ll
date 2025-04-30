; ModuleID = './code/369-15781exce14c.c'
source_filename = "./code/369-15781exce14c.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@matrix_ij = global [4 x [5 x i32]] [[5 x i32] [i32 1, i32 5, i32 5, i32 1, i32 0], [5 x i32] [i32 9, i32 6, i32 9, i32 8, i32 2], [5 x i32] [i32 8, i32 1, i32 8, i32 2, i32 5], [5 x i32] [i32 9, i32 4, i32 6, i32 2, i32 0]], align 4
@.str = private unnamed_addr constant [4 x i8] c"%2i\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"\C3\97\C2\AA\C3\96\C3\83\C3\87\C2\B0\C2\B5\C3\84\C2\BE\C3\98\C3\95\C3\B3:\0A\00", align 1
@matrix_ji = global [5 x [4 x i32]] zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"\C3\97\C2\AA\C3\96\C3\83\C2\BA\C3\B3\C2\B5\C3\84\C2\BE\C3\98\C3\95\C3\B3:\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @transposeMatrix(i32 noundef %nRows, i32 noundef %nCols, ptr noundef %matrix_ij, ptr noundef %matrix_ji) #0 {
entry:
  %nRows.addr = alloca i32, align 4
  %nCols.addr = alloca i32, align 4
  %matrix_ij.addr = alloca ptr, align 8
  %matrix_ji.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %nRows, ptr %nRows.addr, align 4
  store i32 %nCols, ptr %nCols.addr, align 4
  store ptr %matrix_ij, ptr %matrix_ij.addr, align 8
  store ptr %matrix_ji, ptr %matrix_ji.addr, align 8
  %0 = load i32, ptr %nRows.addr, align 4
  %1 = zext i32 %0 to i64
  %2 = load i32, ptr %nCols.addr, align 4
  %3 = zext i32 %2 to i64
  %4 = load i32, ptr %nCols.addr, align 4
  %5 = zext i32 %4 to i64
  %6 = load i32, ptr %nRows.addr, align 4
  %7 = zext i32 %6 to i64
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %nRows.addr, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %10 = load i32, ptr %j, align 4
  %11 = load i32, ptr %nCols.addr, align 4
  %cmp2 = icmp slt i32 %10, %11
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %12 = load ptr, ptr %matrix_ij.addr, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = mul nsw i64 %idxprom, %3
  %arrayidx = getelementptr inbounds i32, ptr %12, i64 %14
  %15 = load i32, ptr %j, align 4
  %idxprom4 = sext i32 %15 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %arrayidx, i64 %idxprom4
  %16 = load i32, ptr %arrayidx5, align 4
  %17 = load ptr, ptr %matrix_ji.addr, align 8
  %18 = load i32, ptr %j, align 4
  %idxprom6 = sext i32 %18 to i64
  %19 = mul nsw i64 %idxprom6, %7
  %arrayidx7 = getelementptr inbounds i32, ptr %17, i64 %19
  %20 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %20 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %arrayidx7, i64 %idxprom8
  store i32 %16, ptr %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %21 = load i32, ptr %j, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %22 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %22, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end12:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @displyMatrix(i32 noundef %nRows, i32 noundef %nCols, ptr noundef %matrix) #0 {
entry:
  %retval = alloca i32, align 4
  %nRows.addr = alloca i32, align 4
  %nCols.addr = alloca i32, align 4
  %matrix.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %nRows, ptr %nRows.addr, align 4
  store i32 %nCols, ptr %nCols.addr, align 4
  store ptr %matrix, ptr %matrix.addr, align 8
  %0 = load i32, ptr %nRows.addr, align 4
  %1 = zext i32 %0 to i64
  %2 = load i32, ptr %nCols.addr, align 4
  %3 = zext i32 %2 to i64
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %nRows.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %j, align 4
  %7 = load i32, ptr %nCols.addr, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %8 = load ptr, ptr %matrix.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = mul nsw i64 %idxprom, %3
  %arrayidx = getelementptr inbounds i32, ptr %8, i64 %10
  %11 = load i32, ptr %j, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %arrayidx, i64 %idxprom4
  %12 = load i32, ptr %arrayidx5, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %13 = load i32, ptr %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !8

for.end:                                          ; preds = %for.cond1
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end9:                                         ; preds = %for.cond
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %call1 = call i32 @displyMatrix(i32 noundef 4, i32 noundef 5, ptr noundef @matrix_ij)
  %call2 = call i32 @transposeMatrix(i32 noundef 4, i32 noundef 5, ptr noundef @matrix_ij, ptr noundef @matrix_ji)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %call4 = call i32 @displyMatrix(i32 noundef 5, i32 noundef 4, ptr noundef @matrix_ji)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
