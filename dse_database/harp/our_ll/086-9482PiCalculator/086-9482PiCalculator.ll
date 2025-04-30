; ModuleID = 'code/086-9482PiCalculator.c'
source_filename = "code/086-9482PiCalculator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d ms\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%.8lf\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %clock_start = alloca i64, align 8
  %nrOfElements = alloca i32, align 4
  %start = alloca i32, align 4
  %acc = alloca double, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 100000000, i32* %nrOfElements, align 4
  store i32 0, i32* %start, align 4
  store double 0.000000e+00, double* %acc, align 8
  %call = call i64 @clock() #3
  store i64 %call, i64* %clock_start, align 8
  %0 = load i32, i32* %start, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %nrOfElements, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %rem = srem i32 %3, 2
  %mul = mul nsw i32 %rem, 2
  %sub = sub nsw i32 1, %mul
  %conv = sitofp i32 %sub to double
  %mul1 = fmul double 4.000000e+00, %conv
  %4 = load i32, i32* %i, align 4
  %mul2 = mul nsw i32 2, %4
  %add = add nsw i32 %mul2, 1
  %conv3 = sitofp i32 %add to double
  %div = fdiv double %mul1, %conv3
  %5 = load double, double* %acc, align 8
  %add4 = fadd double %5, %div
  store double %add4, double* %acc, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call5 = call i64 @clock() #3
  %7 = load i64, i64* %clock_start, align 8
  %sub6 = sub nsw i64 %call5, %7
  %div7 = sdiv i64 %sub6, 1000
  %conv8 = trunc i64 %div7 to i32
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %conv8)
  %8 = load double, double* %acc, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), double %8)
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
