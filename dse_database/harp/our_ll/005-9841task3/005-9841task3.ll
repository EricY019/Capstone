; ModuleID = 'code/005-9841task3.c'
source_filename = "code/005-9841task3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [51 x i8] c"\D0\A2\D0\B0\D0\B1\D0\BB\D0\B8\D1\86\D0\B0 \D0\BF\D0\B5\D1\80\D0\B5\D0\B2\D0\BE\D0\B4\D0\B0 \D0\B8\D0\B7 fahr \D0\B2 cels\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"fahr: %7.3f\09cels: %7.3f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %fahr = alloca float, align 4
  %celsius = alloca float, align 4
  %lower = alloca i32, align 4
  %upper = alloca i32, align 4
  %step = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %lower, align 4
  store i32 300, i32* %upper, align 4
  store i32 20, i32* %step, align 4
  %0 = load i32, i32* %lower, align 4
  %conv = sitofp i32 %0 to float
  store float %conv, float* %fahr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load float, float* %fahr, align 4
  %2 = load i32, i32* %upper, align 4
  %conv1 = sitofp i32 %2 to float
  %cmp = fcmp ole float %1, %conv1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load float, float* %fahr, align 4
  %sub = fsub float %3, 3.200000e+01
  %conv3 = fpext float %sub to double
  %mul = fmul double 0x3FE1C71C71C71C72, %conv3
  %conv4 = fptrunc double %mul to float
  store float %conv4, float* %celsius, align 4
  %4 = load float, float* %fahr, align 4
  %conv5 = fpext float %4 to double
  %5 = load float, float* %celsius, align 4
  %conv6 = fpext float %5 to double
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), double %conv5, double %conv6)
  %6 = load i32, i32* %step, align 4
  %conv8 = sitofp i32 %6 to float
  %7 = load float, float* %fahr, align 4
  %add = fadd float %7, %conv8
  store float %add, float* %fahr, align 4
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
