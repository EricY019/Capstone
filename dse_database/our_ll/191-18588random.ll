; ModuleID = 'code/191-18588random.c'
source_filename = "code/191-18588random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"mean(x) = %12.10f  var(x) = %12.10f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %seed = alloca i32, align 4
  %sum_0 = alloca double, align 8
  %sum_1 = alloca double, align 8
  %mean = alloca double, align 8
  %var = alloca double, align 8
  %x = alloca double, align 8
  store i32 0, i32* %retval, align 4
  %call = call i64 @time(i64* null) #3
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %seed, align 4
  %0 = load i32, i32* %seed, align 4
  call void @srand(i32 %0) #3
  store i32 1, i32* %i, align 4
  store double 0.000000e+00, double* %sum_0, align 8
  store double 0.000000e+00, double* %sum_1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %1, 10000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand() #3
  %conv3 = sitofp i32 %call2 to double
  %div = fdiv double %conv3, 0x41DFFFFFFFC00000
  store double %div, double* %x, align 8
  %2 = load double, double* %x, align 8
  %3 = load double, double* %sum_0, align 8
  %add = fadd double %3, %2
  store double %add, double* %sum_0, align 8
  %4 = load double, double* %x, align 8
  %sub = fsub double %4, 5.000000e-01
  %5 = load double, double* %x, align 8
  %sub4 = fsub double %5, 5.000000e-01
  %mul = fmul double %sub, %sub4
  %6 = load double, double* %sum_1, align 8
  %add5 = fadd double %6, %mul
  store double %add5, double* %sum_1, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %8 = load double, double* %sum_0, align 8
  %div6 = fdiv double %8, 1.000000e+07
  store double %div6, double* %mean, align 8
  %9 = load double, double* %sum_1, align 8
  %div7 = fdiv double %9, 1.000000e+07
  store double %div7, double* %var, align 8
  %10 = load double, double* %mean, align 8
  %11 = load double, double* %var, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), double %10, double %11)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
