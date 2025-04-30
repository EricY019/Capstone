; ModuleID = 'code/208-16904exce4.c'
source_filename = "code/208-16904exce4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%.3f\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"squareRoot(2.0) = %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"squareRoot(144.0) = %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"squareRoot(17.5) = %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @absoluteValue(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %cmp = fcmp olt float %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load float, float* %x.addr, align 4
  %fneg = fneg float %1
  store float %fneg, float* %x.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load float, float* %x.addr, align 4
  ret float %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @squareRoot(float %x, float %epsilon) #0 {
entry:
  %x.addr = alloca float, align 4
  %epsilon.addr = alloca float, align 4
  %guess = alloca float, align 4
  store float %x, float* %x.addr, align 4
  store float %epsilon, float* %epsilon.addr, align 4
  store float 1.000000e+00, float* %guess, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load float, float* %guess, align 4
  %1 = load float, float* %guess, align 4
  %mul = fmul float %0, %1
  %2 = load float, float* %x.addr, align 4
  %sub = fsub float %mul, %2
  %call = call float @absoluteValue(float %sub)
  %3 = load float, float* %epsilon.addr, align 4
  %cmp = fcmp oge float %call, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load float, float* %x.addr, align 4
  %5 = load float, float* %guess, align 4
  %div = fdiv float %4, %5
  %6 = load float, float* %guess, align 4
  %add = fadd float %div, %6
  %conv = fpext float %add to double
  %div1 = fdiv double %conv, 2.000000e+00
  %conv2 = fptrunc double %div1 to float
  store float %conv2, float* %guess, align 4
  %7 = load float, float* %guess, align 4
  %conv3 = fpext float %7 to double
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %conv3)
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %8 = load float, float* %guess, align 4
  ret float %8
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call float @squareRoot(float 2.000000e+00, float 0x3EE4F8B580000000)
  %conv = fpext float %call to double
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), double %conv)
  %call2 = call float @squareRoot(float 1.440000e+02, float 0x3EE4F8B580000000)
  %conv3 = fpext float %call2 to double
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), double %conv3)
  %call5 = call float @squareRoot(float 1.750000e+01, float 0x3EE4F8B580000000)
  %conv6 = fpext float %call5 to double
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), double %conv6)
  ret i32 0
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
