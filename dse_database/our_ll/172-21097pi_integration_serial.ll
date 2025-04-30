; ModuleID = 'code/172-21097pi_integration_serial.c'
source_filename = "code/172-21097pi_integration_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Value of pi = %g\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Expended wall clock time = %.20f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %num_steps = alloca i32, align 4
  %x = alloca double, align 8
  %sum = alloca double, align 8
  %step = alloca double, align 8
  %pi = alloca double, align 8
  %t_start = alloca i64, align 8
  %t_end = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 500000000, i32* %num_steps, align 4
  store double 0.000000e+00, double* %x, align 8
  store double 0.000000e+00, double* %sum, align 8
  %0 = load i32, i32* %num_steps, align 4
  %conv = sitofp i32 %0 to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, double* %step, align 8
  %call = call i64 @clock() #3
  store i64 %call, i64* %t_start, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %num_steps, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %conv2 = sitofp i32 %3 to double
  %add = fadd double %conv2, 5.000000e-01
  %4 = load double, double* %step, align 8
  %mul = fmul double %add, %4
  store double %mul, double* %x, align 8
  %5 = load double, double* %sum, align 8
  %6 = load double, double* %x, align 8
  %7 = load double, double* %x, align 8
  %mul3 = fmul double %6, %7
  %add4 = fadd double 1.000000e+00, %mul3
  %div5 = fdiv double 4.000000e+00, %add4
  %add6 = fadd double %5, %div5
  store double %add6, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %9 = load double, double* %step, align 8
  %10 = load double, double* %sum, align 8
  %mul7 = fmul double %9, %10
  store double %mul7, double* %pi, align 8
  %call8 = call i64 @clock() #3
  store i64 %call8, i64* %t_end, align 8
  %11 = load double, double* %pi, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), double %11)
  %12 = load i64, i64* %t_end, align 8
  %13 = load i64, i64* %t_start, align 8
  %sub = sub nsw i64 %12, %13
  %conv10 = sitofp i64 %sub to double
  %div11 = fdiv double %conv10, 1.000000e+06
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), double %div11)
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
