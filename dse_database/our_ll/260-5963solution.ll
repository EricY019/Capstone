; ModuleID = 'code/260-5963solution.c'
source_filename = "code/260-5963solution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Problem 2: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %sum = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 2, i32* %sum, align 4
  store i32 1, i32* %a, align 4
  store i32 2, i32* %b, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, i32* %b, align 4
  %1 = load i32, i32* %a, align 4
  %add = add nsw i32 %1, %0
  store i32 %add, i32* %a, align 4
  %2 = load i32, i32* %a, align 4
  %3 = load i32, i32* %b, align 4
  %add1 = add nsw i32 %3, %2
  store i32 %add1, i32* %b, align 4
  %4 = load i32, i32* %b, align 4
  %5 = load i32, i32* %a, align 4
  %add2 = add nsw i32 %5, %4
  store i32 %add2, i32* %a, align 4
  %6 = load i32, i32* %sum, align 4
  %add3 = add nsw i32 %6, %add2
  store i32 %add3, i32* %sum, align 4
  %7 = load i32, i32* %a, align 4
  %8 = load i32, i32* %b, align 4
  %xor = xor i32 %7, %8
  store i32 %xor, i32* %a, align 4
  %9 = load i32, i32* %b, align 4
  %10 = load i32, i32* %a, align 4
  %xor4 = xor i32 %9, %10
  store i32 %xor4, i32* %b, align 4
  %11 = load i32, i32* %a, align 4
  %12 = load i32, i32* %b, align 4
  %xor5 = xor i32 %11, %12
  store i32 %xor5, i32* %a, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %13 = load i32, i32* %a, align 4
  %14 = load i32, i32* %b, align 4
  %add6 = add nsw i32 %13, %14
  %cmp = icmp slt i32 %add6, 4000000
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !4

do.end:                                           ; preds = %do.cond
  %15 = load i32, i32* %sum, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %15)
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
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
