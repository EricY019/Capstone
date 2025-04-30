; ModuleID = 'code/187-13269exercise16.c'
source_filename = "code/187-13269exercise16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"          Daphne   Deirdre\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Year%2d : $%-8.2f $%-8.2f\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Deirdre's investment beyond Daphne's investment takes %d years!\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"Daphne will have $%.2f, and Deirdre will have $%.2f since then!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %money = alloca double, align 8
  %daphne = alloca double, align 8
  %deirdre = alloca double, align 8
  %years = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %years, align 4
  store double 1.000000e+02, double* %money, align 8
  %0 = load double, double* %money, align 8
  store double %0, double* %daphne, align 8
  %1 = load double, double* %money, align 8
  store double %1, double* %deirdre, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load double, double* %deirdre, align 8
  %3 = load double, double* %daphne, align 8
  %cmp = fcmp ole double %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load double, double* %money, align 8
  %mul = fmul double %4, 1.000000e-01
  %5 = load double, double* %daphne, align 8
  %add = fadd double %5, %mul
  store double %add, double* %daphne, align 8
  %6 = load double, double* %deirdre, align 8
  %mul1 = fmul double %6, 1.050000e+00
  store double %mul1, double* %deirdre, align 8
  %7 = load i32, i32* %years, align 4
  %8 = load double, double* %daphne, align 8
  %9 = load double, double* %deirdre, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %7, double %8, double %9)
  %10 = load i32, i32* %years, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %years, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %years, align 4
  %sub = sub nsw i32 %11, 1
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %sub)
  %12 = load double, double* %daphne, align 8
  %13 = load double, double* %deirdre, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), double %12, double %13)
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
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
