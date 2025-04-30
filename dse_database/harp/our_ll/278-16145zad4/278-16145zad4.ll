; ModuleID = 'code/278-16145zad4.c'
source_filename = "code/278-16145zad4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Float:\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%i. %f >> %e\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Double:\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Long double:\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"%i. %Lf >> %Le\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca float, align 4
  %x1 = alloca double, align 8
  %x2 = alloca x86_fp80, align 16
  %l = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store float 1.000000e+00, float* %x, align 4
  store double 1.000000e+00, double* %x1, align 8
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %x2, align 16
  store i32 1, i32* %l, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load float, float* %x, align 4
  %conv = fpext float %0 to double
  %add = fadd double 1.000000e+00, %conv
  %cmp = fcmp ogt double %add, 1.000000e+00
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load float, float* %x, align 4
  %conv2 = fpext float %1 to double
  %div = fdiv double %conv2, 2.000000e+00
  %conv3 = fptrunc double %div to float
  store float %conv3, float* %x, align 4
  %2 = load i32, i32* %l, align 4
  %3 = load float, float* %x, align 4
  %conv4 = fpext float %3 to double
  %4 = load float, float* %x, align 4
  %conv5 = fpext float %4 to double
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %2, double %conv4, double %conv5)
  %5 = load i32, i32* %l, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %l, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %l, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %while.cond8

while.cond8:                                      ; preds = %while.body12, %while.end
  %6 = load double, double* %x1, align 8
  %add9 = fadd double 1.000000e+00, %6
  %cmp10 = fcmp ogt double %add9, 1.000000e+00
  br i1 %cmp10, label %while.body12, label %while.end16

while.body12:                                     ; preds = %while.cond8
  %7 = load double, double* %x1, align 8
  %div13 = fdiv double %7, 2.000000e+00
  store double %div13, double* %x1, align 8
  %8 = load i32, i32* %l, align 4
  %9 = load double, double* %x1, align 8
  %10 = load double, double* %x1, align 8
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %8, double %9, double %10)
  %11 = load i32, i32* %l, align 4
  %inc15 = add nsw i32 %11, 1
  store i32 %inc15, i32* %l, align 4
  br label %while.cond8, !llvm.loop !6

while.end16:                                      ; preds = %while.cond8
  store i32 1, i32* %l, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %while.cond18

while.cond18:                                     ; preds = %while.body22, %while.end16
  %12 = load x86_fp80, x86_fp80* %x2, align 16
  %add19 = fadd x86_fp80 0xK3FFF8000000000000000, %12
  %cmp20 = fcmp ogt x86_fp80 %add19, 0xK3FFF8000000000000000
  br i1 %cmp20, label %while.body22, label %while.end26

while.body22:                                     ; preds = %while.cond18
  %13 = load x86_fp80, x86_fp80* %x2, align 16
  %div23 = fdiv x86_fp80 %13, 0xK40008000000000000000
  store x86_fp80 %div23, x86_fp80* %x2, align 16
  %14 = load i32, i32* %l, align 4
  %15 = load x86_fp80, x86_fp80* %x2, align 16
  %16 = load x86_fp80, x86_fp80* %x2, align 16
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %14, x86_fp80 %15, x86_fp80 %16)
  %17 = load i32, i32* %l, align 4
  %inc25 = add nsw i32 %17, 1
  store i32 %inc25, i32* %l, align 4
  br label %while.cond18, !llvm.loop !7

while.end26:                                      ; preds = %while.cond18
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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
