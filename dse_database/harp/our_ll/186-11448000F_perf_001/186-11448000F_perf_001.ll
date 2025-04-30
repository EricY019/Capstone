; ModuleID = 'code/186-11448000F_perf_001.c'
source_filename = "code/186-11448000F_perf_001.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"pid: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @compute_pi_baseline(i64 %N) #0 {
entry:
  %N.addr = alloca i64, align 8
  %pi = alloca double, align 8
  %dt = alloca double, align 8
  %i = alloca i64, align 8
  %x = alloca double, align 8
  store i64 %N, i64* %N.addr, align 8
  store double 0.000000e+00, double* %pi, align 8
  %0 = load i64, i64* %N.addr, align 8
  %conv = uitofp i64 %0 to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, double* %dt, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %N.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8
  %conv2 = uitofp i64 %3 to double
  %4 = load i64, i64* %N.addr, align 8
  %conv3 = uitofp i64 %4 to double
  %div4 = fdiv double %conv2, %conv3
  store double %div4, double* %x, align 8
  %5 = load double, double* %dt, align 8
  %6 = load double, double* %x, align 8
  %7 = load double, double* %x, align 8
  %mul = fmul double %6, %7
  %add = fadd double 1.000000e+00, %mul
  %div5 = fdiv double %5, %add
  %8 = load double, double* %pi, align 8
  %add6 = fadd double %8, %div5
  store double %add6, double* %pi, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %i, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %10 = load double, double* %pi, align 8
  %mul7 = fmul double %10, 4.000000e+00
  ret double %mul7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @getpid() #3
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %call)
  %call2 = call i32 @sleep(i32 10)
  %call3 = call double @compute_pi_baseline(i64 50000000)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare dso_local i32 @getpid() #2

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
