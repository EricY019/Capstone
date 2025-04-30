; ModuleID = 'code/369-15781exce14c.c'
source_filename = "code/369-15781exce14c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matrix_ij = dso_local global [4 x [5 x i32]] [[5 x i32] [i32 1, i32 5, i32 5, i32 1, i32 0], [5 x i32] [i32 9, i32 6, i32 9, i32 8, i32 2], [5 x i32] [i32 8, i32 1, i32 8, i32 2, i32 5], [5 x i32] [i32 9, i32 4, i32 6, i32 2, i32 0]], align 16
@.str = private unnamed_addr constant [4 x i8] c"%2i\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"\C3\97\C2\AA\C3\96\C3\83\C3\87\C2\B0\C2\B5\C3\84\C2\BE\C3\98\C3\95\C3\B3:\0A\00", align 1
@matrix_ji = dso_local global [5 x [4 x i32]] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [27 x i8] c"\C3\97\C2\AA\C3\96\C3\83\C2\BA\C3\B3\C2\B5\C3\84\C2\BE\C3\98\C3\95\C3\B3:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transposeMatrix(i32 %nRows, i32 %nCols, i32* %matrix_ij, i32* %matrix_ji) #0 {
entry:
  %nRows.addr = alloca i32, align 4
  %nCols.addr = alloca i32, align 4
  %matrix_ij.addr = alloca i32*, align 8
  %matrix_ji.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %nRows, i32* %nRows.addr, align 4
  store i32 %nCols, i32* %nCols.addr, align 4
  store i32* %matrix_ij, i32** %matrix_ij.addr, align 8
  store i32* %matrix_ji, i32** %matrix_ji.addr, align 8
  %0 = load i32, i32* %nRows.addr, align 4
  %1 = zext i32 %0 to i64
  %2 = load i32, i32* %nCols.addr, align 4
  %3 = zext i32 %2 to i64
  %4 = load i32, i32* %nCols.addr, align 4
  %5 = zext i32 %4 to i64
  %6 = load i32, i32* %nRows.addr, align 4
  %7 = zext i32 %6 to i64
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %nRows.addr, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %nCols.addr, align 4
  %cmp2 = icmp slt i32 %10, %11
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %12 = load i32*, i32** %matrix_ij.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = mul nsw i64 %idxprom, %3
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 %14
  %15 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %15 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %arrayidx, i64 %idxprom4
  %16 = load i32, i32* %arrayidx5, align 4
  %17 = load i32*, i32** %matrix_ji.addr, align 8
  %18 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %18 to i64
  %19 = mul nsw i64 %idxprom6, %7
  %arrayidx7 = getelementptr inbounds i32, i32* %17, i64 %19
  %20 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %20 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %arrayidx7, i64 %idxprom8
  store i32 %16, i32* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %21 = load i32, i32* %j, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %22 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %22, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end12:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @displyMatrix(i32 %nRows, i32 %nCols, i32* %matrix) #0 {
entry:
  %retval = alloca i32, align 4
  %nRows.addr = alloca i32, align 4
  %nCols.addr = alloca i32, align 4
  %matrix.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %nRows, i32* %nRows.addr, align 4
  store i32 %nCols, i32* %nCols.addr, align 4
  store i32* %matrix, i32** %matrix.addr, align 8
  %0 = load i32, i32* %nRows.addr, align 4
  %1 = zext i32 %0 to i64
  %2 = load i32, i32* %nCols.addr, align 4
  %3 = zext i32 %2 to i64
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %nRows.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %nCols.addr, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %8 = load i32*, i32** %matrix.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = mul nsw i64 %idxprom, %3
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %10
  %11 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %arrayidx, i64 %idxprom4
  %12 = load i32, i32* %arrayidx5, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !7

for.end:                                          ; preds = %for.cond1
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end9:                                         ; preds = %for.cond
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %call1 = call i32 @displyMatrix(i32 4, i32 5, i32* getelementptr inbounds ([4 x [5 x i32]], [4 x [5 x i32]]* @matrix_ij, i32 0, i32 0, i32 0))
  %call2 = call i32 @transposeMatrix(i32 4, i32 5, i32* getelementptr inbounds ([4 x [5 x i32]], [4 x [5 x i32]]* @matrix_ij, i32 0, i32 0, i32 0), i32* getelementptr inbounds ([5 x [4 x i32]], [5 x [4 x i32]]* @matrix_ji, i32 0, i32 0, i32 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %call4 = call i32 @displyMatrix(i32 5, i32 4, i32* getelementptr inbounds ([5 x [4 x i32]], [5 x [4 x i32]]* @matrix_ji, i32 0, i32 0, i32 0))
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
