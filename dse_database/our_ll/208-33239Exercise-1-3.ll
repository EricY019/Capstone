; ModuleID = 'code/208-33239Exercise-1-3.c'
source_filename = "code/208-33239Exercise-1-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Fahrenheit-Celsius table\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%3.0f %6.1f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %fahr = alloca float, align 4
  %celsius = alloca float, align 4
  %lower = alloca float, align 4
  %upper = alloca float, align 4
  %step = alloca float, align 4
  store i32 0, i32* %retval, align 4
  store float 0.000000e+00, float* %lower, align 4
  store float 3.000000e+02, float* %upper, align 4
  store float 2.000000e+01, float* %step, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %0 = load float, float* %lower, align 4
  store float %0, float* %fahr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load float, float* %fahr, align 4
  %2 = load float, float* %upper, align 4
  %cmp = fcmp ole float %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load float, float* %fahr, align 4
  %conv = fpext float %3 to double
  %sub = fsub double %conv, 3.200000e+01
  %mul = fmul double 0x3FE1C71C71C71C72, %sub
  %conv1 = fptrunc double %mul to float
  store float %conv1, float* %celsius, align 4
  %4 = load float, float* %fahr, align 4
  %conv2 = fpext float %4 to double
  %5 = load float, float* %celsius, align 4
  %conv3 = fpext float %5 to double
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), double %conv2, double %conv3)
  %6 = load float, float* %fahr, align 4
  %7 = load float, float* %step, align 4
  %add = fadd float %6, %7
  store float %add, float* %fahr, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
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
