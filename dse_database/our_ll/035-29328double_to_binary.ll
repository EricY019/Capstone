; ModuleID = 'code/035-29328double_to_binary.c'
source_filename = "code/035-29328double_to_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"Unsupported input.\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"0.\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Overflow error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @to_binary(double %input) #0 {
entry:
  %input.addr = alloca double, align 8
  %frac = alloca double, align 8
  %i = alloca i32, align 4
  store double %input, double* %input.addr, align 8
  %0 = load double, double* %input.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load double, double* %input.addr, align 8
  %cmp1 = fcmp oge double %1, 1.000000e+00
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store double 1.000000e+00, double* %frac, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %2, 32
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load double, double* %input.addr, align 8
  %cmp4 = fcmp oeq double %3, 0.000000e+00
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.body
  br label %for.end

if.end6:                                          ; preds = %for.body
  %4 = load double, double* %frac, align 8
  %div = fdiv double %4, 2.000000e+00
  store double %div, double* %frac, align 8
  %5 = load double, double* %input.addr, align 8
  %6 = load double, double* %frac, align 8
  %cmp7 = fcmp oge double %5, %6
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  %7 = load double, double* %frac, align 8
  %8 = load double, double* %input.addr, align 8
  %sub = fsub double %8, %7
  store double %sub, double* %input.addr, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end11

if.else:                                          ; preds = %if.end6
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %if.then5, %for.cond
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %10 = load double, double* %input.addr, align 8
  %cmp13 = fcmp ogt double %10, 0.000000e+00
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %for.end
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %for.end
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  call void @to_binary(double 1.250000e-01)
  call void @to_binary(double 1.000000e-01)
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
