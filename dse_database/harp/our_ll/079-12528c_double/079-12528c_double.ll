; ModuleID = 'code/079-12528c_double.c'
source_filename = "code/079-12528c_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gd = dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [13 x i8] c"average: %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ld = alloca double, align 8
  %sum = alloca double, align 8
  %i = alloca i32, align 4
  %start_clock = alloca i64, align 8
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 40
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  %call = call i64 @clock() #3
  store i64 %call, i64* %start_clock, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 10000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %call4 = call double @calcPifloat()
  store double %call4, double* %ld, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %2 = load i32, i32* %j, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  %call5 = call i64 @clock() #3
  %3 = load i64, i64* %start_clock, align 8
  %sub = sub nsw i64 %call5, %3
  %conv = sitofp i64 %sub to double
  %div = fdiv double %conv, 1.000000e+06
  %4 = load double, double* %sum, align 8
  %add = fadd double %4, %div
  store double %add, double* %sum, align 8
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %5 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %5, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end8:                                         ; preds = %for.cond
  %6 = load double, double* %ld, align 8
  store double %6, double* @gd, align 8
  %7 = load double, double* %sum, align 8
  %div9 = fdiv double %7, 4.000000e+01
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double %div9)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @clock() #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @calcPifloat() #0 {
entry:
  %lasts = alloca double, align 8
  %t = alloca double, align 8
  %s = alloca double, align 8
  %n = alloca double, align 8
  %na = alloca double, align 8
  %d = alloca double, align 8
  %da = alloca double, align 8
  store double 0.000000e+00, double* %lasts, align 8
  store double 3.000000e+00, double* %t, align 8
  store double 3.000000e+00, double* %s, align 8
  store double 1.000000e+00, double* %n, align 8
  store double 0.000000e+00, double* %na, align 8
  store double 0.000000e+00, double* %d, align 8
  store double 2.400000e+01, double* %da, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load double, double* %s, align 8
  %1 = load double, double* %lasts, align 8
  %cmp = fcmp une double %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load double, double* %s, align 8
  store double %2, double* %lasts, align 8
  %3 = load double, double* %na, align 8
  %4 = load double, double* %n, align 8
  %add = fadd double %4, %3
  store double %add, double* %n, align 8
  %5 = load double, double* %na, align 8
  %add1 = fadd double %5, 8.000000e+00
  store double %add1, double* %na, align 8
  %6 = load double, double* %da, align 8
  %7 = load double, double* %d, align 8
  %add2 = fadd double %7, %6
  store double %add2, double* %d, align 8
  %8 = load double, double* %da, align 8
  %add3 = fadd double %8, 3.200000e+01
  store double %add3, double* %da, align 8
  %9 = load double, double* %t, align 8
  %10 = load double, double* %n, align 8
  %mul = fmul double %9, %10
  %11 = load double, double* %d, align 8
  %div = fdiv double %mul, %11
  store double %div, double* %t, align 8
  %12 = load double, double* %t, align 8
  store double %12, double* %s, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %13 = load double, double* %s, align 8
  ret double %13
}

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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
