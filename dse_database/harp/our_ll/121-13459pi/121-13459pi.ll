; ModuleID = 'code/121-13459pi.c'
source_filename = "code/121-13459pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [48 x i8] c"Calculating PI using:\0A  %ld slices\0A  1 process\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"Obtained value for PI: %.16g\0ATime taken:            %.16g seconds\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i64, align 8
  %num_steps = alloca i64, align 8
  %step = alloca double, align 8
  %x = alloca double, align 8
  %sum = alloca double, align 8
  %pi = alloca double, align 8
  %taken = alloca double, align 8
  %start = alloca i64, align 8
  %stop = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i64 1000000000, i64* %num_steps, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @atol(i8* %2) #4
  store i64 %call, i64* %num_steps, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %num_steps, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %3)
  %call2 = call i64 @clock() #5
  store i64 %call2, i64* %start, align 8
  store double 0.000000e+00, double* %sum, align 8
  %4 = load i64, i64* %num_steps, align 8
  %conv = sitofp i64 %4 to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, double* %step, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i64, i64* %i, align 8
  %6 = load i64, i64* %num_steps, align 8
  %cmp3 = icmp slt i64 %5, %6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %i, align 8
  %conv5 = sitofp i64 %7 to double
  %add = fadd double %conv5, 5.000000e-01
  %8 = load double, double* %step, align 8
  %mul = fmul double %add, %8
  store double %mul, double* %x, align 8
  %9 = load double, double* %x, align 8
  %10 = load double, double* %x, align 8
  %mul6 = fmul double %9, %10
  %add7 = fadd double 1.000000e+00, %mul6
  %div8 = fdiv double 4.000000e+00, %add7
  %11 = load double, double* %sum, align 8
  %add9 = fadd double %11, %div8
  store double %add9, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i64, i64* %i, align 8
  %inc = add nsw i64 %12, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %13 = load double, double* %sum, align 8
  %14 = load double, double* %step, align 8
  %mul10 = fmul double %13, %14
  store double %mul10, double* %pi, align 8
  %call11 = call i64 @clock() #5
  store i64 %call11, i64* %stop, align 8
  %15 = load i64, i64* %stop, align 8
  %16 = load i64, i64* %start, align 8
  %sub = sub nsw i64 %15, %16
  %conv12 = sitofp i64 %sub to double
  %div13 = fdiv double %conv12, 1.000000e+06
  store double %div13, double* %taken, align 8
  %17 = load double, double* %pi, align 8
  %18 = load double, double* %taken, align 8
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), double %17, double %18)
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @atol(i8*) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i64 @clock() #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
