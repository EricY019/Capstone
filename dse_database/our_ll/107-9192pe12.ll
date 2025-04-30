; ModuleID = 'code/107-9192pe12.c'
source_filename = "code/107-9192pe12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"limit = %llu | i = %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@euler = internal global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @numberdivisors(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %limit = alloca i64, align 8
  %numberOfDivisors = alloca i32, align 4
  %i = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  store i64 %0, i64* %limit, align 8
  store i32 0, i32* %numberOfDivisors, align 4
  store i64 1, i64* %i, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %limit, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %x.addr, align 8
  %4 = load i64, i64* %i, align 8
  %rem = urem i64 %3, %4
  %cmp1 = icmp eq i64 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end5

if.then:                                          ; preds = %for.body
  %5 = load i64, i64* %x.addr, align 8
  %6 = load i64, i64* %i, align 8
  %div = udiv i64 %5, %6
  store i64 %div, i64* %limit, align 8
  %7 = load i64, i64* %limit, align 8
  %8 = load i64, i64* %i, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %7, i64 %8)
  %9 = load i64, i64* %limit, align 8
  %10 = load i64, i64* %i, align 8
  %cmp2 = icmp ne i64 %9, %10
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %11 = load i32, i32* %numberOfDivisors, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %numberOfDivisors, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %12 = load i32, i32* %numberOfDivisors, align 4
  %inc4 = add nsw i32 %12, 1
  store i32 %inc4, i32* %numberOfDivisors, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end5
  %13 = load i64, i64* %i, align 8
  %inc6 = add i64 %13, 1
  store i64 %inc6, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %numberOfDivisors, align 4
  ret i32 %14
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %triangle = alloca i64, align 8
  %divisors = alloca i32, align 4
  %i = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i64 0, i64* %triangle, align 8
  store i32 0, i32* %divisors, align 4
  store i64 1, i64* %i, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %triangle, align 8
  %add = add i64 %1, %0
  store i64 %add, i64* %triangle, align 8
  %2 = load i64, i64* %triangle, align 8
  %call = call i32 @numberdivisors(i64 %2)
  store i32 %call, i32* %divisors, align 4
  %3 = load i64, i64* %i, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %i, align 8
  %4 = load i64, i64* %i, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %4)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %5 = load i32, i32* %divisors, align 4
  %cmp = icmp sle i32 %5, 500
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %6 = load i64, i64* %triangle, align 8
  store i64 %6, i64* @euler, align 8
  %7 = load i64, i64* @euler, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %7)
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
