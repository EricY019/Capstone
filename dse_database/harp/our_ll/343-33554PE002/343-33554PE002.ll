; ModuleID = 'code/343-33554PE002.c'
source_filename = "code/343-33554PE002.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %limit = alloca i64, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %sum = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i64 4000000, i64* %limit, align 8
  store i64 1, i64* %x, align 8
  store i64 1, i64* %y, align 8
  store i64 0, i64* %sum, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %sum, align 8
  %1 = load i64, i64* %limit, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %x, align 8
  %3 = load i64, i64* %y, align 8
  %add = add nsw i64 %2, %3
  %4 = load i64, i64* %sum, align 8
  %add1 = add nsw i64 %4, %add
  store i64 %add1, i64* %sum, align 8
  %5 = load i64, i64* %x, align 8
  %6 = load i64, i64* %y, align 8
  %mul = mul nsw i64 2, %6
  %add2 = add nsw i64 %5, %mul
  store i64 %add2, i64* %x, align 8
  %7 = load i64, i64* %x, align 8
  %mul3 = mul nsw i64 2, %7
  %8 = load i64, i64* %y, align 8
  %sub = sub nsw i64 %mul3, %8
  store i64 %sub, i64* %y, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %9 = load i64, i64* %sum, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %9)
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
