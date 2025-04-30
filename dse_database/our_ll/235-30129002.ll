; ModuleID = 'code/235-30129002.c'
source_filename = "code/235-30129002.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"The sum is %i.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %sum = alloca i32, align 4
  %fib_curr = alloca i32, align 4
  %fib_prev = alloca i32, align 4
  %fib_temp = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %sum, align 4
  store i32 2, i32* %fib_curr, align 4
  store i32 1, i32* %fib_prev, align 4
  store i32 0, i32* %fib_temp, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, i32* %fib_curr, align 4
  %rem = srem i32 %0, 2
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load i32, i32* %fib_curr, align 4
  %2 = load i32, i32* %sum, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, i32* %sum, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %3 = load i32, i32* %fib_curr, align 4
  store i32 %3, i32* %fib_temp, align 4
  %4 = load i32, i32* %fib_curr, align 4
  %5 = load i32, i32* %fib_prev, align 4
  %add1 = add nsw i32 %4, %5
  store i32 %add1, i32* %fib_curr, align 4
  %6 = load i32, i32* %fib_temp, align 4
  store i32 %6, i32* %fib_prev, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %7 = load i32, i32* %fib_curr, align 4
  %cmp2 = icmp sle i32 %7, 4000000
  br i1 %cmp2, label %do.body, label %do.end, !llvm.loop !4

do.end:                                           ; preds = %do.cond
  %8 = load i32, i32* %sum, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %8)
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
