; ModuleID = 'code/297-10865crivello_eratostene.c'
source_filename = "code/297-10865crivello_eratostene.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%4d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %arr = alloca [10000 x i32], align 16
  store i32 0, i32* %retval, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10000 x i32], [10000 x i32]* %arr, i64 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 2, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc15, %for.end
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %3, 10000
  br i1 %cmp2, label %for.body3, label %for.end17

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [10000 x i32], [10000 x i32]* %arr, i64 0, i64 %idxprom4
  %5 = load i32, i32* %arrayidx5, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %6 = load i32, i32* %i, align 4
  store i32 %6, i32* %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc12, %if.then
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %7, %8
  %cmp7 = icmp slt i32 %mul, 10000
  br i1 %cmp7, label %for.body8, label %for.end14

for.body8:                                        ; preds = %for.cond6
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %j, align 4
  %mul9 = mul nsw i32 %9, %10
  %idxprom10 = sext i32 %mul9 to i64
  %arrayidx11 = getelementptr inbounds [10000 x i32], [10000 x i32]* %arr, i64 0, i64 %idxprom10
  store i32 0, i32* %arrayidx11, align 4
  br label %for.inc12

for.inc12:                                        ; preds = %for.body8
  %11 = load i32, i32* %j, align 4
  %inc13 = add nsw i32 %11, 1
  store i32 %inc13, i32* %j, align 4
  br label %for.cond6, !llvm.loop !6

for.end14:                                        ; preds = %for.cond6
  br label %if.end

if.end:                                           ; preds = %for.end14, %for.body3
  br label %for.inc15

for.inc15:                                        ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %12, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond1, !llvm.loop !7

for.end17:                                        ; preds = %for.cond1
  store i32 2, i32* %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc26, %for.end17
  %13 = load i32, i32* %i, align 4
  %cmp19 = icmp slt i32 %13, 10000
  br i1 %cmp19, label %for.body20, label %for.end28

for.body20:                                       ; preds = %for.cond18
  %14 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %14 to i64
  %arrayidx22 = getelementptr inbounds [10000 x i32], [10000 x i32]* %arr, i64 0, i64 %idxprom21
  %15 = load i32, i32* %arrayidx22, align 4
  %tobool23 = icmp ne i32 %15, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.body20
  %16 = load i32, i32* %i, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %for.body20
  br label %for.inc26

for.inc26:                                        ; preds = %if.end25
  %17 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %17, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond18, !llvm.loop !8

for.end28:                                        ; preds = %for.cond18
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
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
