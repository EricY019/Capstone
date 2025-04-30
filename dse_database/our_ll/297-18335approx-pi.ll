; ModuleID = 'code/297-18335approx-pi.c'
source_filename = "code/297-18335approx-pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"%6lu\09%f\09%6ld\09%6ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"after %lu iterations\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"pi is about: %21.18f\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"pi is known: %21.18f\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"      error: %21.18f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @iterate_approx_pi(i64 %iterations, i32 %verbose) #0 {
entry:
  %iterations.addr = alloca i64, align 8
  %verbose.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %numerator = alloca i64, align 8
  %denominator = alloca i64, align 8
  %pi = alloca double, align 8
  %piover2 = alloca double, align 8
  store i64 %iterations, i64* %iterations.addr, align 8
  store i32 %verbose, i32* %verbose.addr, align 4
  store i64 2, i64* %numerator, align 8
  store i64 1, i64* %denominator, align 8
  store double 1.000000e+00, double* %piover2, align 8
  store i64 0, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* %iterations.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %numerator, align 8
  %conv = uitofp i64 %2 to double
  %3 = load i64, i64* %denominator, align 8
  %conv1 = uitofp i64 %3 to double
  %div = fdiv double %conv, %conv1
  %4 = load double, double* %piover2, align 8
  %mul = fmul double %4, %div
  store double %mul, double* %piover2, align 8
  %5 = load double, double* %piover2, align 8
  %mul2 = fmul double %5, 2.000000e+00
  store double %mul2, double* %pi, align 8
  %6 = load i64, i64* %i, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %i, align 8
  %7 = load i32, i32* %verbose.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %8 = load i64, i64* %i, align 8
  %9 = load double, double* %pi, align 8
  %10 = load i64, i64* %numerator, align 8
  %11 = load i64, i64* %denominator, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %8, double %9, i64 %10, i64 %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %12 = load i64, i64* %i, align 8
  %rem = urem i64 %12, 2
  %cmp3 = icmp eq i64 1, %rem
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %13 = load i64, i64* %denominator, align 8
  %add = add i64 %13, 2
  store i64 %add, i64* %denominator, align 8
  br label %if.end7

if.else:                                          ; preds = %if.end
  %14 = load i64, i64* %numerator, align 8
  %add6 = add i64 %14, 2
  store i64 %add6, i64* %numerator, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %15 = load double, double* %pi, align 8
  ret double %15
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i64, align 8
  %iterations = alloca i64, align 8
  %verbose = alloca i32, align 4
  %base = alloca i32, align 4
  %endptr = alloca i8*, align 8
  %pi = alloca double, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #3
  %conv = sext i32 %call to i64
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ 10000000, %cond.false ]
  store i64 %cond, i64* %iterations, align 8
  %3 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp sgt i32 %3, 2
  br i1 %cmp1, label %cond.true3, label %cond.false6

cond.true3:                                       ; preds = %cond.end
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx4, align 8
  %call5 = call i32 @atoi(i8* %5) #3
  br label %cond.end7

cond.false6:                                      ; preds = %cond.end
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false6, %cond.true3
  %cond8 = phi i32 [ %call5, %cond.true3 ], [ 0, %cond.false6 ]
  store i32 %cond8, i32* %verbose, align 4
  %6 = load i64, i64* %iterations, align 8
  %7 = load i32, i32* %verbose, align 4
  %call9 = call double @iterate_approx_pi(i64 %6, i32 %7)
  store double %call9, double* %pi, align 8
  %8 = load i64, i64* %iterations, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %8)
  %9 = load double, double* %pi, align 8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), double %9)
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), double 0x400921FB54442D18)
  %10 = load double, double* %pi, align 8
  %sub = fsub double 0x400921FB54442D18, %10
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), double %sub)
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
