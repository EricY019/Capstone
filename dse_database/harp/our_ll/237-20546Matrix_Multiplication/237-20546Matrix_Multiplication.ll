; ModuleID = 'code/237-20546Matrix_Multiplication.c'
source_filename = "code/237-20546Matrix_Multiplication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.matrix1 = private unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 3], [3 x i32] [i32 4, i32 5, i32 6], [3 x i32] [i32 7, i32 8, i32 9]], align 16
@__const.main.matrix2 = private unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 3], [3 x i32] [i32 4, i32 5, i32 6], [3 x i32] [i32 7, i32 8, i32 9]], align 16
@.str = private unnamed_addr constant [19 x i8] c"Result matrix is \0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @multiply([3 x i32]* %matrix1, [3 x i32]* %matrix2, [3 x i32]* %result) #0 {
entry:
  %matrix1.addr = alloca [3 x i32]*, align 8
  %matrix2.addr = alloca [3 x i32]*, align 8
  %result.addr = alloca [3 x i32]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store [3 x i32]* %matrix1, [3 x i32]** %matrix1.addr, align 8
  store [3 x i32]* %matrix2, [3 x i32]** %matrix2.addr, align 8
  store [3 x i32]* %result, [3 x i32]** %result.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc21, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 3
  br i1 %cmp2, label %for.body3, label %for.end23

for.body3:                                        ; preds = %for.cond1
  %2 = load [3 x i32]*, [3 x i32]** %result.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 %idxprom
  %4 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i64 0, i64 %idxprom4
  store i32 0, i32* %arrayidx5, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body3
  %5 = load i32, i32* %k, align 4
  %cmp7 = icmp slt i32 %5, 3
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %6 = load [3 x i32]*, [3 x i32]** %matrix1.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 %idxprom9
  %8 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx10, i64 0, i64 %idxprom11
  %9 = load i32, i32* %arrayidx12, align 4
  %10 = load [3 x i32]*, [3 x i32]** %matrix2.addr, align 8
  %11 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 %idxprom13
  %12 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx14, i64 0, i64 %idxprom15
  %13 = load i32, i32* %arrayidx16, align 4
  %mul = mul nsw i32 %9, %13
  %14 = load [3 x i32]*, [3 x i32]** %result.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 %idxprom17
  %16 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx18, i64 0, i64 %idxprom19
  %17 = load i32, i32* %arrayidx20, align 4
  %add = add nsw i32 %17, %mul
  store i32 %add, i32* %arrayidx20, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %18 = load i32, i32* %k, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond6, !llvm.loop !4

for.end:                                          ; preds = %for.cond6
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %19 = load i32, i32* %j, align 4
  %inc22 = add nsw i32 %19, 1
  store i32 %inc22, i32* %j, align 4
  br label %for.cond1, !llvm.loop !6

for.end23:                                        ; preds = %for.cond1
  br label %for.inc24

for.inc24:                                        ; preds = %for.end23
  %20 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %20, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end26:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %result = alloca [3 x [3 x i32]], align 16
  %matrix1 = alloca [3 x [3 x i32]], align 16
  %matrix2 = alloca [3 x [3 x i32]], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [3 x [3 x i32]]* %matrix1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([3 x [3 x i32]]* @__const.main.matrix1 to i8*), i64 36, i1 false)
  %1 = bitcast [3 x [3 x i32]]* %matrix2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([3 x [3 x i32]]* @__const.main.matrix2 to i8*), i64 36, i1 false)
  %arraydecay = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %matrix1, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %matrix2, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %result, i64 0, i64 0
  call void @multiply([3 x i32]* %arraydecay, [3 x i32]* %arraydecay1, [3 x i32]* %arraydecay2)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 3
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %cmp4 = icmp slt i32 %3, 3
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %result, i64 0, i64 %idxprom
  %5 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i64 0, i64 %idxprom6
  %6 = load i32, i32* %arrayidx7, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !8

for.end:                                          ; preds = %for.cond3
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %8 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end12:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = distinct !{!9, !5}
