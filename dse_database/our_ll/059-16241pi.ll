; ModuleID = 'code/059-16241pi.c'
source_filename = "code/059-16241pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"pi is approximately %.16f, Error is %.16f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @pi_kernel(i32 %n, double %h) #0 {
entry:
  %n.addr = alloca i32, align 4
  %h.addr = alloca double, align 8
  %tmp = alloca double, align 8
  %x = alloca double, align 8
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store double %h, double* %h.addr, align 8
  store double 0.000000e+00, double* %tmp, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double, double* %h.addr, align 8
  %3 = load i32, i32* %i, align 4
  %conv = sitofp i32 %3 to double
  %sub = fsub double %conv, 5.000000e-01
  %mul = fmul double %2, %sub
  store double %mul, double* %x, align 8
  %4 = load double, double* %x, align 8
  %5 = load double, double* %x, align 8
  %mul1 = fmul double %4, %5
  %add = fadd double 1.000000e+00, %mul1
  %div = fdiv double 4.000000e+00, %add
  %6 = load double, double* %tmp, align 8
  %add2 = fadd double %6, %div
  store double %add2, double* %tmp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %8 = load double, double* %tmp, align 8
  ret double %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %PI25DT = alloca double, align 8
  %pi = alloca double, align 8
  %h = alloca double, align 8
  %area = alloca double, align 8
  store i32 0, i32* %retval, align 4
  store i32 1000, i32* %n, align 4
  store double 0x400921FB54442D18, double* %PI25DT, align 8
  %0 = load i32, i32* %n, align 4
  %conv = sitofp i32 %0 to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, double* %h, align 8
  %1 = load i32, i32* %n, align 4
  %2 = load double, double* %h, align 8
  %call = call double @pi_kernel(i32 %1, double %2)
  store double %call, double* %area, align 8
  %3 = load double, double* %h, align 8
  %4 = load double, double* %area, align 8
  %mul = fmul double %3, %4
  store double %mul, double* %pi, align 8
  %5 = load double, double* %pi, align 8
  %6 = load double, double* %pi, align 8
  %7 = load double, double* %PI25DT, align 8
  %sub = fsub double %6, %7
  %8 = call double @llvm.fabs.f64(double %sub)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), double %5, double %8)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
