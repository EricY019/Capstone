; ModuleID = 'code/039-153013.c'
source_filename = "code/039-153013.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"%d [in %f seconds]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @largest_prime_factor(i64 %number) #0 {
entry:
  %number.addr = alloca i64, align 8
  %largest_factor = alloca i32, align 4
  %i = alloca i32, align 4
  store i64 %number, i64* %number.addr, align 8
  store i32 0, i32* %largest_factor, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load i64, i64* %number.addr, align 8
  %cmp = icmp sle i64 %conv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %number.addr, align 8
  %3 = load i32, i32* %i, align 4
  %conv2 = sext i32 %3 to i64
  %rem = srem i64 %2, %conv2
  %cmp3 = icmp eq i64 %rem, 0
  br i1 %cmp3, label %if.then, label %if.end9

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %largest_factor, align 4
  %cmp5 = icmp sgt i32 %4, %5
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %6 = load i32, i32* %i, align 4
  store i32 %6, i32* %largest_factor, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  %7 = load i32, i32* %i, align 4
  %conv8 = sext i32 %7 to i64
  %8 = load i64, i64* %number.addr, align 8
  %div = sdiv i64 %8, %conv8
  store i64 %div, i64* %number.addr, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %largest_factor, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %NUMBER = alloca i64, align 8
  %begin = alloca i64, align 8
  %result = alloca i32, align 4
  %end = alloca i64, align 8
  %time = alloca double, align 8
  store i64 600851475143, i64* %NUMBER, align 8
  %call = call i64 @clock() #3
  store i64 %call, i64* %begin, align 8
  %0 = load i64, i64* %NUMBER, align 8
  %call1 = call i32 @largest_prime_factor(i64 %0)
  store i32 %call1, i32* %result, align 4
  %call2 = call i64 @clock() #3
  store i64 %call2, i64* %end, align 8
  %1 = load i64, i64* %end, align 8
  %2 = load i64, i64* %begin, align 8
  %sub = sub nsw i64 %1, %2
  %conv = sitofp i64 %sub to double
  %div = fdiv double %conv, 1.000000e+06
  store double %div, double* %time, align 8
  %3 = load i32, i32* %result, align 4
  %4 = load double, double* %time, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %3, double %4)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @clock() #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
