; ModuleID = 'code/019-13062fahr_for.c'
source_filename = "code/019-13062fahr_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"%3s = %6s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Fahrenheit\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Celsius\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%3.0f\C2\B0F = %6.2f\C2\B0C\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"%3.0f\C2\B0C = %6.2f\C2\B0F\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %fahrenheit = alloca float, align 4
  %celsius = alloca float, align 4
  %celsius6 = alloca float, align 4
  %fahrenheit11 = alloca float, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store float -5.000000e+01, float* %fahrenheit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load float, float* %fahrenheit, align 4
  %cmp = fcmp ole float %0, 2.500000e+02
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load float, float* %fahrenheit, align 4
  %sub = fsub float %1, 3.200000e+01
  %conv = fpext float %sub to double
  %mul = fmul double 0x3FE1C71C71C71C72, %conv
  %conv1 = fptrunc double %mul to float
  store float %conv1, float* %celsius, align 4
  %2 = load float, float* %fahrenheit, align 4
  %conv2 = fpext float %2 to double
  %3 = load float, float* %celsius, align 4
  %conv3 = fpext float %3 to double
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), double %conv2, double %conv3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load float, float* %fahrenheit, align 4
  %add = fadd float %4, 1.000000e+01
  store float %add, float* %fahrenheit, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store float -5.000000e+01, float* %celsius6, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc19, %for.end
  %5 = load float, float* %celsius6, align 4
  %cmp8 = fcmp ole float %5, 2.500000e+02
  br i1 %cmp8, label %for.body10, label %for.end21

for.body10:                                       ; preds = %for.cond7
  %6 = load float, float* %celsius6, align 4
  %conv12 = fpext float %6 to double
  %mul13 = fmul double %conv12, 9.000000e+00
  %div = fdiv double %mul13, 5.000000e+00
  %add14 = fadd double %div, 3.200000e+01
  %conv15 = fptrunc double %add14 to float
  store float %conv15, float* %fahrenheit11, align 4
  %7 = load float, float* %celsius6, align 4
  %conv16 = fpext float %7 to double
  %8 = load float, float* %fahrenheit11, align 4
  %conv17 = fpext float %8 to double
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), double %conv16, double %conv17)
  br label %for.inc19

for.inc19:                                        ; preds = %for.body10
  %9 = load float, float* %celsius6, align 4
  %add20 = fadd float %9, 1.000000e+01
  store float %add20, float* %celsius6, align 4
  br label %for.cond7, !llvm.loop !6

for.end21:                                        ; preds = %for.cond7
  %10 = load i32, i32* %retval, align 4
  ret i32 %10
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
