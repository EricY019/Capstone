; ModuleID = 'code/047-245951098_sequence_ij_4.c'
source_filename = "code/047-245951098_sequence_ij_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"I=%.1f J=%.1f\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"I=%.0f J=%.0f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %iR = alloca float, align 4
  %jR = alloca float, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 10, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp sle i32 %1, 30
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %i, align 4
  %conv = sitofp i32 %2 to float
  %div = fdiv float %conv, 1.000000e+01
  store float %div, float* %iR, align 4
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %j, align 4
  %add = add nsw i32 %3, %4
  %conv4 = sitofp i32 %add to float
  %div5 = fdiv float %conv4, 1.000000e+01
  store float %div5, float* %jR, align 4
  %5 = load i32, i32* %i, align 4
  %rem = srem i32 %5, 10
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  %6 = load float, float* %iR, align 4
  %conv6 = fpext float %6 to double
  %7 = load float, float* %jR, align 4
  %conv7 = fpext float %7 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), double %conv6, double %conv7)
  br label %if.end

if.else:                                          ; preds = %for.body3
  %8 = load float, float* %iR, align 4
  %conv8 = fpext float %8 to double
  %9 = load float, float* %jR, align 4
  %conv9 = fpext float %9 to double
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), double %conv8, double %conv9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %j, align 4
  %add11 = add nsw i32 %10, 10
  store i32 %add11, i32* %j, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  %add13 = add nsw i32 %11, 2
  store i32 %add13, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end14:                                        ; preds = %for.cond
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
