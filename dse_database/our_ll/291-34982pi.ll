; ModuleID = 'code/291-34982pi.c'
source_filename = "code/291-34982pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_steps = internal global i64 1000000, align 8
@step = dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [8 x i8] c"PI: %g\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca double, align 8
  %pi = alloca double, align 8
  %sum = alloca double, align 8
  store i32 0, i32* %retval, align 4
  store double 0.000000e+00, double* %sum, align 8
  %0 = load i64, i64* @num_steps, align 8
  %conv = sitofp i64 %0 to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, double* @step, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %conv1 = sext i32 %1 to i64
  %2 = load i64, i64* @num_steps, align 8
  %cmp = icmp slt i64 %conv1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %conv3 = sitofp i32 %3 to double
  %add = fadd double %conv3, 5.000000e-01
  %4 = load double, double* @step, align 8
  %mul = fmul double %add, %4
  store double %mul, double* %x, align 8
  %5 = load double, double* %sum, align 8
  %6 = load double, double* %x, align 8
  %7 = load double, double* %x, align 8
  %mul4 = fmul double %6, %7
  %add5 = fadd double 1.000000e+00, %mul4
  %div6 = fdiv double 4.000000e+00, %add5
  %add7 = fadd double %5, %div6
  store double %add7, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %9 = load double, double* @step, align 8
  %10 = load double, double* %sum, align 8
  %mul8 = fmul double %9, %10
  store double %mul8, double* %pi, align 8
  %11 = load double, double* %pi, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), double %11)
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
