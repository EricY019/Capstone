; ModuleID = 'code/066-257536.c'
source_filename = "code/066-257536.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"%d [in %f seconds]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @solve() #0 {
entry:
  %sum = alloca i32, align 4
  %sum_of_squares = alloca i32, align 4
  %N = alloca i32, align 4
  %i = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %sum_of_squares, align 4
  store i32 100, i32* %N, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %N, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %sum, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, i32* %sum, align 4
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %4, %5
  %6 = load i32, i32* %sum_of_squares, align 4
  %add1 = add nsw i32 %6, %mul
  store i32 %add1, i32* %sum_of_squares, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %sum_of_squares, align 4
  %9 = load i32, i32* %sum, align 4
  %10 = load i32, i32* %sum, align 4
  %mul2 = mul nsw i32 %9, %10
  %sub = sub nsw i32 %8, %mul2
  store i32 %sub, i32* %result, align 4
  %11 = load i32, i32* %result, align 4
  %cmp3 = icmp sgt i32 %11, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %12 = load i32, i32* %result, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %13 = load i32, i32* %result, align 4
  %sub4 = sub nsw i32 0, %13
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ %sub4, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %begin = alloca i64, align 8
  %result = alloca i32, align 4
  %end = alloca i64, align 8
  %time = alloca double, align 8
  %call = call i64 @clock() #3
  store i64 %call, i64* %begin, align 8
  %call1 = call i32 @solve()
  store i32 %call1, i32* %result, align 4
  %call2 = call i64 @clock() #3
  store i64 %call2, i64* %end, align 8
  %0 = load i64, i64* %end, align 8
  %1 = load i64, i64* %begin, align 8
  %sub = sub nsw i64 %0, %1
  %conv = sitofp i64 %sub to double
  %div = fdiv double %conv, 1.000000e+06
  store double %div, double* %time, align 8
  %2 = load i32, i32* %result, align 4
  %3 = load double, double* %time, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %2, double %3)
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
