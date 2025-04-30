; ModuleID = 'code/367-20909ex05_38.c'
source_filename = "code/367-20909ex05_38.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"fibonacciNR(%d) = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"fibonacciDubs(%d) = %.0f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 49
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %call = call i32 @fibonacciNR(i32 %2)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc7, %for.end
  %4 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %4, 1479
  br i1 %cmp3, label %for.body4, label %for.end9

for.body4:                                        ; preds = %for.cond2
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %i, align 4
  %conv = sitofp i32 %6 to double
  %call5 = call double @fibonacciDubs(double %conv)
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %5, double %call5)
  br label %for.inc7

for.inc7:                                         ; preds = %for.body4
  %7 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond2, !llvm.loop !6

for.end9:                                         ; preds = %for.cond2
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fibonacciNR(i32 %num) #0 {
entry:
  %retval = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %fib = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 0, i32* %a, align 4
  store i32 1, i32* %b, align 4
  store i32 1, i32* %fib, align 4
  %0 = load i32, i32* %num.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %num.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %a, align 4
  %4 = load i32, i32* %b, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %fib, align 4
  %5 = load i32, i32* %b, align 4
  store i32 %5, i32* %a, align 4
  %6 = load i32, i32* %fib, align 4
  store i32 %6, i32* %b, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %fib, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @fibonacciDubs(double %num) #0 {
entry:
  %retval = alloca double, align 8
  %num.addr = alloca double, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %fib = alloca double, align 8
  %i = alloca i32, align 4
  store double %num, double* %num.addr, align 8
  store double 0.000000e+00, double* %a, align 8
  store double 1.000000e+00, double* %b, align 8
  store double 1.000000e+00, double* %fib, align 8
  %0 = load double, double* %num.addr, align 8
  %cmp = fcmp oeq double %0, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %conv = sitofp i32 %1 to double
  %2 = load double, double* %num.addr, align 8
  %cmp1 = fcmp olt double %conv, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load double, double* %a, align 8
  %4 = load double, double* %b, align 8
  %add = fadd double %3, %4
  store double %add, double* %fib, align 8
  %5 = load double, double* %b, align 8
  store double %5, double* %a, align 8
  %6 = load double, double* %fib, align 8
  store double %6, double* %b, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %8 = load double, double* %fib, align 8
  store double %8, double* %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load double, double* %retval, align 8
  ret double %9
}

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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
