; ModuleID = 'code/010-27366problem2.c'
source_filename = "code/010-27366problem2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"SUM: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %sum = alloca i32, align 4
  %first = alloca i32, align 4
  %second = alloca i32, align 4
  %third = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 2, i32* %sum, align 4
  store i32 1, i32* %first, align 4
  store i32 2, i32* %second, align 4
  store i32 0, i32* %third, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %third, align 4
  %cmp = icmp sle i32 %0, 4000000
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %first, align 4
  %2 = load i32, i32* %second, align 4
  %add = add nsw i32 %1, %2
  store i32 %add, i32* %third, align 4
  %3 = load i32, i32* %third, align 4
  %rem = srem i32 %3, 2
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load i32, i32* %third, align 4
  %5 = load i32, i32* %sum, align 4
  %add2 = add nsw i32 %5, %4
  store i32 %add2, i32* %sum, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %6 = load i32, i32* %second, align 4
  store i32 %6, i32* %first, align 4
  %7 = load i32, i32* %third, align 4
  store i32 %7, i32* %second, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %8 = load i32, i32* %sum, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %8)
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
