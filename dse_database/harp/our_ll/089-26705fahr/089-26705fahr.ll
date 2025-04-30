; ModuleID = 'code/089-26705fahr.c'
source_filename = "code/089-26705fahr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"%3.0f\C2\B0F = %5.1f\C2\B0C\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %fahrenheit = alloca float, align 4
  %celsius = alloca float, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %by = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 -50, i32* %start, align 4
  store i32 300, i32* %end, align 4
  store i32 10, i32* %by, align 4
  %0 = load i32, i32* %start, align 4
  %conv = sitofp i32 %0 to float
  store float %conv, float* %fahrenheit, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load float, float* %fahrenheit, align 4
  %2 = load i32, i32* %end, align 4
  %conv1 = sitofp i32 %2 to float
  %cmp = fcmp ole float %1, %conv1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load float, float* %fahrenheit, align 4
  %sub = fsub float %3, 3.200000e+01
  %conv3 = fpext float %sub to double
  %mul = fmul double 0x3FE1C71C71C71C72, %conv3
  %conv4 = fptrunc double %mul to float
  store float %conv4, float* %celsius, align 4
  %4 = load float, float* %fahrenheit, align 4
  %conv5 = fpext float %4 to double
  %5 = load float, float* %celsius, align 4
  %conv6 = fpext float %5 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), double %conv5, double %conv6)
  %6 = load float, float* %fahrenheit, align 4
  %7 = load i32, i32* %by, align 4
  %conv7 = sitofp i32 %7 to float
  %add = fadd float %6, %conv7
  store float %add, float* %fahrenheit, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
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
