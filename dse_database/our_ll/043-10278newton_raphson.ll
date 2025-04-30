; ModuleID = 'code/043-10278newton_raphson.c'
source_filename = "code/043-10278newton_raphson.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"root at %lf\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @f(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load double, double* %x.addr, align 8
  %mul = fmul double %0, %1
  %2 = load double, double* %x.addr, align 8
  %mul1 = fmul double 7.000000e+00, %2
  %sub = fsub double %mul, %mul1
  %add = fadd double %sub, 1.200000e+01
  ret double %add
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @df(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %mul = fmul double 2.000000e+00, %0
  %sub = fsub double %mul, 7.000000e+00
  ret double %sub
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @newton_raphson(double %x0) #0 {
entry:
  %x0.addr = alloca double, align 8
  %last = alloca double, align 8
  %current = alloca double, align 8
  store double %x0, double* %x0.addr, align 8
  %0 = load double, double* %x0.addr, align 8
  %1 = load double, double* %x0.addr, align 8
  %call = call double @f(double %1)
  %2 = load double, double* %x0.addr, align 8
  %call1 = call double @df(double %2)
  %div = fdiv double %call, %call1
  %sub = fsub double %0, %div
  store double %sub, double* %current, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = load double, double* %current, align 8
  store double %3, double* %last, align 8
  %4 = load double, double* %current, align 8
  %call2 = call double @f(double %4)
  %5 = load double, double* %current, align 8
  %call3 = call double @df(double %5)
  %div4 = fdiv double %call2, %call3
  %6 = load double, double* %current, align 8
  %sub5 = fsub double %6, %div4
  store double %sub5, double* %current, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load double, double* %last, align 8
  %8 = load double, double* %current, align 8
  %sub6 = fsub double %7, %8
  %9 = call double @llvm.fabs.f64(double %sub6)
  %cmp = fcmp ogt double %9, 1.000000e-05
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !4

do.end:                                           ; preds = %do.cond
  %10 = load double, double* %current, align 8
  ret double %10
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call double @newton_raphson(double 1.000000e+01)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double %call)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
