; ModuleID = 'code/024-21138fahr_define.c'
source_filename = "code/024-21138fahr_define.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"%3.0f\C2\B0F = %6.2f\C2\B0C\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %fahrenheit = alloca float, align 4
  %celsius = alloca float, align 4
  store i32 0, i32* %retval, align 4
  store float -1.000000e+02, float* %fahrenheit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load float, float* %fahrenheit, align 4
  %cmp = fcmp ole float %0, 3.000000e+02
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
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), double %conv2, double %conv3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load float, float* %fahrenheit, align 4
  %add = fadd float %4, 1.500000e+01
  store float %add, float* %fahrenheit, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
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
