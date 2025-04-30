; ModuleID = 'code/062-19820example_problem_1_i2.c'
source_filename = "code/062-19820example_problem_1_i2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%d+%d=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %A = alloca [100 x i32], align 16
  %B = alloca [100 x i32], align 16
  %An = alloca i32, align 4
  %Bn = alloca i32, align 4
  %i = alloca i32, align 4
  %X = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 4, i32* %An, align 4
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 0, i64 0
  store i32 6, i32* %arrayidx, align 16
  %arrayidx1 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 0, i64 1
  store i32 4, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 0, i64 2
  store i32 3, i32* %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 0, i64 3
  store i32 2, i32* %arrayidx3, align 4
  store i32 5, i32* %Bn, align 4
  %arrayidx4 = getelementptr inbounds [100 x i32], [100 x i32]* %B, i64 0, i64 0
  store i32 2, i32* %arrayidx4, align 16
  %arrayidx5 = getelementptr inbounds [100 x i32], [100 x i32]* %B, i64 0, i64 1
  store i32 3, i32* %arrayidx5, align 4
  %arrayidx6 = getelementptr inbounds [100 x i32], [100 x i32]* %B, i64 0, i64 2
  store i32 4, i32* %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds [100 x i32], [100 x i32]* %B, i64 0, i64 3
  store i32 6, i32* %arrayidx7, align 4
  %arrayidx8 = getelementptr inbounds [100 x i32], [100 x i32]* %B, i64 0, i64 4
  store i32 9, i32* %arrayidx8, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %An, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx9 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx9, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc17, %for.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %Bn, align 4
  %cmp12 = icmp slt i32 %5, %6
  br i1 %cmp12, label %for.body13, label %for.end19

for.body13:                                       ; preds = %for.cond11
  %7 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %7 to i64
  %arrayidx15 = getelementptr inbounds [100 x i32], [100 x i32]* %B, i64 0, i64 %idxprom14
  %8 = load i32, i32* %arrayidx15, align 4
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %for.inc17

for.inc17:                                        ; preds = %for.body13
  %9 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %9, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond11, !llvm.loop !6

for.end19:                                        ; preds = %for.cond11
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 8, i32* %X, align 4
  store i32 0, i32* %i, align 4
  %10 = load i32, i32* %Bn, align 4
  %sub = sub nsw i32 %10, 1
  store i32 %sub, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.end19
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %An, align 4
  %cmp21 = icmp slt i32 %11, %12
  br i1 %cmp21, label %while.body, label %while.end38

while.body:                                       ; preds = %while.cond
  br label %while.cond22

while.cond22:                                     ; preds = %while.body29, %while.body
  %13 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %13 to i64
  %arrayidx24 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 0, i64 %idxprom23
  %14 = load i32, i32* %arrayidx24, align 4
  %15 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %15 to i64
  %arrayidx26 = getelementptr inbounds [100 x i32], [100 x i32]* %B, i64 0, i64 %idxprom25
  %16 = load i32, i32* %arrayidx26, align 4
  %add = add nsw i32 %14, %16
  %17 = load i32, i32* %X, align 4
  %cmp27 = icmp sgt i32 %add, %17
  br i1 %cmp27, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond22
  %18 = load i32, i32* %j, align 4
  %cmp28 = icmp sgt i32 %18, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond22
  %19 = phi i1 [ false, %while.cond22 ], [ %cmp28, %land.rhs ]
  br i1 %19, label %while.body29, label %while.end

while.body29:                                     ; preds = %land.end
  %20 = load i32, i32* %j, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %j, align 4
  br label %while.cond22, !llvm.loop !7

while.end:                                        ; preds = %land.end
  %21 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %21 to i64
  %arrayidx31 = getelementptr inbounds [100 x i32], [100 x i32]* %A, i64 0, i64 %idxprom30
  %22 = load i32, i32* %arrayidx31, align 4
  %23 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %23 to i64
  %arrayidx33 = getelementptr inbounds [100 x i32], [100 x i32]* %B, i64 0, i64 %idxprom32
  %24 = load i32, i32* %arrayidx33, align 4
  %add34 = add nsw i32 %22, %24
  %25 = load i32, i32* %X, align 4
  %cmp35 = icmp eq i32 %add34, %25
  br i1 %cmp35, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %X, align 4
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %26, i32 %27, i32 %28)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %29 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %29, 1
  store i32 %inc37, i32* %i, align 4
  br label %while.cond, !llvm.loop !8

while.end38:                                      ; preds = %while.cond
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

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
