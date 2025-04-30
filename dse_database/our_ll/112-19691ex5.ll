; ModuleID = 'code/112-19691ex5.c'
source_filename = "code/112-19691ex5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"This is a simple program that converts\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Celsius to Fahrenheit in decimal format\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Celsius: %6.2f Fahrenheit: %3.1f\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Now let's print the reverse\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Fahrenheit: %6.2f Celsius: %3.1f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %fahr = alloca float, align 4
  %celsius = alloca float, align 4
  %lower = alloca i32, align 4
  %upper = alloca i32, align 4
  %step = alloca i32, align 4
  %ratio = alloca float, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %lower, align 4
  store i32 300, i32* %upper, align 4
  store i32 20, i32* %step, align 4
  store float 0x3FE1C71C80000000, float* %ratio, align 4
  %0 = load i32, i32* %upper, align 4
  %conv = sitofp i32 %0 to float
  store float %conv, float* %fahr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load float, float* %fahr, align 4
  %2 = load i32, i32* %lower, align 4
  %conv2 = sitofp i32 %2 to float
  %cmp = fcmp oge float %1, %conv2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load float, float* %ratio, align 4
  %4 = load float, float* %fahr, align 4
  %sub = fsub float %4, 3.200000e+01
  %mul = fmul float %3, %sub
  store float %mul, float* %celsius, align 4
  %5 = load float, float* %celsius, align 4
  %conv4 = fpext float %5 to double
  %6 = load float, float* %fahr, align 4
  %conv5 = fpext float %6 to double
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), double %conv4, double %conv5)
  %7 = load float, float* %fahr, align 4
  %8 = load i32, i32* %step, align 4
  %conv7 = sitofp i32 %8 to float
  %sub8 = fsub float %7, %conv7
  store float %sub8, float* %fahr, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %upper, align 4
  %conv9 = sitofp i32 %9 to float
  store float %conv9, float* %celsius, align 4
  store float 0x3FFCCCCCC0000000, float* %ratio, align 4
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %while.cond11

while.cond11:                                     ; preds = %while.body15, %while.end
  %10 = load float, float* %celsius, align 4
  %11 = load i32, i32* %lower, align 4
  %conv12 = sitofp i32 %11 to float
  %cmp13 = fcmp oge float %10, %conv12
  br i1 %cmp13, label %while.body15, label %while.end22

while.body15:                                     ; preds = %while.cond11
  %12 = load float, float* %celsius, align 4
  %13 = load float, float* %ratio, align 4
  %mul16 = fmul float %12, %13
  %add = fadd float %mul16, 3.200000e+01
  store float %add, float* %fahr, align 4
  %14 = load float, float* %fahr, align 4
  %conv17 = fpext float %14 to double
  %15 = load float, float* %celsius, align 4
  %conv18 = fpext float %15 to double
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), double %conv17, double %conv18)
  %16 = load float, float* %celsius, align 4
  %17 = load i32, i32* %step, align 4
  %conv20 = sitofp i32 %17 to float
  %sub21 = fsub float %16, %conv20
  store float %sub21, float* %celsius, align 4
  br label %while.cond11, !llvm.loop !6

while.end22:                                      ; preds = %while.cond11
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
