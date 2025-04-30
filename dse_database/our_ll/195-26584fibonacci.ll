; ModuleID = 'code/195-26584fibonacci.c'
source_filename = "code/195-26584fibonacci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"single execution time: %.2g s\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"fib(%d) = %d  [average execution time: %.2g s]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compute_fibonacci(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %temp = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 1, i32* %a, align 4
  store i32 1, i32* %b, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %a, align 4
  store i32 %2, i32* %temp, align 4
  %3 = load i32, i32* %b, align 4
  %4 = load i32, i32* %a, align 4
  %add = add nsw i32 %4, %3
  store i32 %add, i32* %a, align 4
  %5 = load i32, i32* %temp, align 4
  store i32 %5, i32* %b, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %x, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %a, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  %number_of_times = alloca i32, align 4
  %fib_n = alloca i32, align 4
  %begin = alloca i64, align 8
  %end = alloca i64, align 8
  %single_time = alloca double, align 8
  %time_spent = alloca double, align 8
  %i = alloca i32, align 4
  %avg_time = alloca double, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store volatile i32 20, i32* %n, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #4
  store volatile i32 %call, i32* %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 100000, i32* %number_of_times, align 4
  %3 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp sgt i32 %3, 2
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i32 @atoi(i8* %5) #4
  store i32 %call4, i32* %number_of_times, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %6 = load volatile i32, i32* %n, align 4
  %call6 = call i32 @compute_fibonacci(i32 %6)
  store i32 %call6, i32* %fib_n, align 4
  %call7 = call i64 @clock() #5
  store i64 %call7, i64* %begin, align 8
  %7 = load volatile i32, i32* %n, align 4
  %call8 = call i32 @compute_fibonacci(i32 %7)
  %call9 = call i64 @clock() #5
  store i64 %call9, i64* %end, align 8
  %8 = load i64, i64* %end, align 8
  %9 = load i64, i64* %begin, align 8
  %sub = sub nsw i64 %8, %9
  %conv = sitofp i64 %sub to double
  %div = fdiv double %conv, 1.000000e+06
  store double %div, double* %single_time, align 8
  %10 = load double, double* %single_time, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), double %10)
  store double 0.000000e+00, double* %time_spent, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %number_of_times, align 4
  %cmp11 = icmp slt i32 %11, %12
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call13 = call i64 @clock() #5
  store i64 %call13, i64* %begin, align 8
  %13 = load volatile i32, i32* %n, align 4
  %call14 = call i32 @compute_fibonacci(i32 %13)
  %call15 = call i64 @clock() #5
  store i64 %call15, i64* %end, align 8
  %14 = load i64, i64* %end, align 8
  %15 = load i64, i64* %begin, align 8
  %sub16 = sub nsw i64 %14, %15
  %conv17 = sitofp i64 %sub16 to double
  %div18 = fdiv double %conv17, 1.000000e+06
  %16 = load double, double* %time_spent, align 8
  %add = fadd double %16, %div18
  store double %add, double* %time_spent, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %18 = load double, double* %time_spent, align 8
  %19 = load i32, i32* %number_of_times, align 4
  %conv19 = sitofp i32 %19 to double
  %div20 = fdiv double %18, %conv19
  store double %div20, double* %avg_time, align 8
  %20 = load volatile i32, i32* %n, align 4
  %21 = load i32, i32* %fib_n, align 4
  %22 = load double, double* %avg_time, align 8
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %21, double %22)
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #1

; Function Attrs: nounwind
declare dso_local i64 @clock() #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = distinct !{!6, !5}
