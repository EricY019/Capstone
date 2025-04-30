; ModuleID = 'code/312-4052jacobi2.c'
source_filename = "code/312-4052jacobi2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [512 x double], align 16
  %b = alloca [512 x double], align 16
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %0 = load i32, i32* %t, align 4
  %cmp = icmp sle i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 2, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %i, align 4
  %cmp2 = icmp sle i32 %1, 511
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [512 x double], [512 x double]* %a, i64 0, i64 %idxprom
  %3 = load double, double* %arrayidx, align 8
  %4 = load i32, i32* %i, align 4
  %add = add nsw i32 %4, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [512 x double], [512 x double]* %a, i64 0, i64 %idxprom4
  %5 = load double, double* %arrayidx5, align 8
  %add6 = fadd double %3, %5
  %mul = fmul double 2.500000e-01, %add6
  %6 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [512 x double], [512 x double]* %a, i64 0, i64 %idxprom7
  %7 = load double, double* %arrayidx8, align 8
  %mul9 = fmul double 5.000000e-01, %7
  %add10 = fadd double %mul, %mul9
  %8 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [512 x double], [512 x double]* %b, i64 0, i64 %idxprom11
  store double %add10, double* %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  store i32 2, i32* %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc20, %for.end
  %10 = load i32, i32* %i, align 4
  %cmp14 = icmp sle i32 %10, 511
  br i1 %cmp14, label %for.body15, label %for.end22

for.body15:                                       ; preds = %for.cond13
  %11 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %11 to i64
  %arrayidx17 = getelementptr inbounds [512 x double], [512 x double]* %b, i64 0, i64 %idxprom16
  %12 = load double, double* %arrayidx17, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [512 x double], [512 x double]* %a, i64 0, i64 %idxprom18
  store double %12, double* %arrayidx19, align 8
  br label %for.inc20

for.inc20:                                        ; preds = %for.body15
  %14 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %14, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond13, !llvm.loop !6

for.end22:                                        ; preds = %for.cond13
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %15 = load i32, i32* %t, align 4
  %inc24 = add nsw i32 %15, 1
  store i32 %inc24, i32* %t, align 4
  br label %for.cond, !llvm.loop !7

for.end25:                                        ; preds = %for.cond
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
