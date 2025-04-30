; ModuleID = 'code/230-27625solution_1.c'
source_filename = "code/230-27625solution_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %i, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp sle i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %k, align 4
  %rem = srem i32 %1, %2
  %cmp1 = icmp sgt i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end9

if.then:                                          ; preds = %for.body
  store i32 1, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %if.then
  %3 = load i32, i32* %j, align 4
  %cmp3 = icmp sle i32 %3, 20
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %4, %5
  %6 = load i32, i32* %k, align 4
  %rem5 = srem i32 %mul, %6
  %cmp6 = icmp eq i32 %rem5, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %for.body4
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %j, align 4
  %mul8 = mul nsw i32 %7, %8
  store i32 %mul8, i32* %i, align 4
  br label %for.end

if.end:                                           ; preds = %for.body4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond2, !llvm.loop !4

for.end:                                          ; preds = %if.then7, %for.cond2
  br label %if.end9

if.end9:                                          ; preds = %for.end, %for.body
  br label %for.inc10

for.inc10:                                        ; preds = %if.end9
  %10 = load i32, i32* %k, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, i32* %k, align 4
  br label %for.cond, !llvm.loop !6

for.end12:                                        ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %11)
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
