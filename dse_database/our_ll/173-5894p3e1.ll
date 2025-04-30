; ModuleID = 'code/173-5894p3e1.c'
source_filename = "code/173-5894p3e1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"%2d %+.8le %+.8le %+.8le %+.8le\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  %x3 = alloca double, align 8
  %z = alloca double, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store double 1.000000e+00, double* %x1, align 8
  %call = call double @sqrt(double 3.000000e+00) #4
  %sub = fsub double 1.000000e+00, %call
  store double %sub, double* %x2, align 8
  store double 0.000000e+00, double* %x3, align 8
  %call1 = call double @sqrt(double 3.000000e+00) #4
  %sub2 = fsub double 1.000000e+00, %call1
  store double %sub2, double* %z, align 8
  store i32 0, i32* %i, align 4
  store i32 3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load double, double* %x1, align 8
  %2 = load double, double* %x2, align 8
  %add = fadd double %1, %2
  %mul = fmul double 2.000000e+00, %add
  store double %mul, double* %x3, align 8
  %call3 = call double @sqrt(double 3.000000e+00) #4
  %sub4 = fsub double 1.000000e+00, %call3
  %3 = load double, double* %z, align 8
  %mul5 = fmul double %3, %sub4
  store double %mul5, double* %z, align 8
  %4 = load i32, i32* %i, align 4
  %5 = load double, double* %z, align 8
  %6 = load double, double* %x3, align 8
  %7 = load double, double* %x3, align 8
  %8 = load double, double* %z, align 8
  %sub6 = fsub double %7, %8
  %9 = call double @llvm.fabs.f64(double %sub6)
  %10 = load double, double* %x3, align 8
  %11 = load double, double* %z, align 8
  %sub7 = fsub double %10, %11
  %12 = load double, double* %x3, align 8
  %div = fdiv double %sub7, %12
  %13 = call double @llvm.fabs.f64(double %div)
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %4, double %5, double %6, double %9, double %13)
  %14 = load double, double* %x2, align 8
  store double %14, double* %x1, align 8
  %15 = load double, double* %x3, align 8
  store double %15, double* %x2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
