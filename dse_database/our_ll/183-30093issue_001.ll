; ModuleID = 'code/183-30093issue_001.c'
source_filename = "code/183-30093issue_001.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"Error at A[%d], h = %lf, d = %lf\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Succeeded\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %fail = alloca i32, align 4
  %A = alloca [320000 x double], align 16
  %B = alloca [320000 x double], align 16
  %C = alloca [320000 x double], align 16
  %i = alloca i32, align 4
  %nte = alloca i32, align 4
  %tl = alloca i32, align 4
  %blockSize = alloca i32, align 4
  %t = alloca i32, align 4
  %j = alloca i32, align 4
  %i11 = alloca i32, align 4
  %i32 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %fail, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 320000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [320000 x double], [320000 x double]* %A, i64 0, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [320000 x double], [320000 x double]* %B, i64 0, i64 %idxprom1
  store double 0.000000e+00, double* %arrayidx2, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [320000 x double], [320000 x double]* %C, i64 0, i64 %idxprom3
  store double 1.000000e+00, double* %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 32, i32* %nte, align 4
  store i32 64, i32* %tl, align 4
  %5 = load i32, i32* %tl, align 4
  store i32 %5, i32* %blockSize, align 4
  store i32 0, i32* %t, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc29, %for.end
  %6 = load i32, i32* %t, align 4
  %cmp6 = icmp slt i32 %6, 919
  br i1 %cmp6, label %for.body7, label %for.end31

for.body7:                                        ; preds = %for.cond5
  store i32 0, i32* %j, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc26, %for.body7
  %7 = load i32, i32* %j, align 4
  %cmp9 = icmp slt i32 %7, 320000
  br i1 %cmp9, label %for.body10, label %for.end28

for.body10:                                       ; preds = %for.cond8
  %8 = load i32, i32* %j, align 4
  store i32 %8, i32* %i11, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc23, %for.body10
  %9 = load i32, i32* %i11, align 4
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %blockSize, align 4
  %add = add nsw i32 %10, %11
  %cmp13 = icmp slt i32 %9, %add
  br i1 %cmp13, label %for.body14, label %for.end25

for.body14:                                       ; preds = %for.cond12
  %12 = load i32, i32* %i11, align 4
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [320000 x double], [320000 x double]* %B, i64 0, i64 %idxprom15
  %13 = load double, double* %arrayidx16, align 8
  %14 = load i32, i32* %i11, align 4
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [320000 x double], [320000 x double]* %C, i64 0, i64 %idxprom17
  %15 = load double, double* %arrayidx18, align 8
  %add19 = fadd double %13, %15
  %16 = load i32, i32* %i11, align 4
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [320000 x double], [320000 x double]* %A, i64 0, i64 %idxprom20
  %17 = load double, double* %arrayidx21, align 8
  %add22 = fadd double %17, %add19
  store double %add22, double* %arrayidx21, align 8
  br label %for.inc23

for.inc23:                                        ; preds = %for.body14
  %18 = load i32, i32* %i11, align 4
  %inc24 = add nsw i32 %18, 1
  store i32 %inc24, i32* %i11, align 4
  br label %for.cond12, !llvm.loop !6

for.end25:                                        ; preds = %for.cond12
  br label %for.inc26

for.inc26:                                        ; preds = %for.end25
  %19 = load i32, i32* %blockSize, align 4
  %20 = load i32, i32* %j, align 4
  %add27 = add nsw i32 %20, %19
  store i32 %add27, i32* %j, align 4
  br label %for.cond8, !llvm.loop !7

for.end28:                                        ; preds = %for.cond8
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %21 = load i32, i32* %t, align 4
  %inc30 = add nsw i32 %21, 1
  store i32 %inc30, i32* %t, align 4
  br label %for.cond5, !llvm.loop !8

for.end31:                                        ; preds = %for.cond5
  store i32 0, i32* %i32, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc41, %for.end31
  %22 = load i32, i32* %i32, align 4
  %cmp34 = icmp slt i32 %22, 320000
  br i1 %cmp34, label %for.body35, label %for.end43

for.body35:                                       ; preds = %for.cond33
  %23 = load i32, i32* %i32, align 4
  %idxprom36 = sext i32 %23 to i64
  %arrayidx37 = getelementptr inbounds [320000 x double], [320000 x double]* %A, i64 0, i64 %idxprom36
  %24 = load double, double* %arrayidx37, align 8
  %cmp38 = fcmp une double %24, 9.190000e+02
  br i1 %cmp38, label %if.then, label %if.end

if.then:                                          ; preds = %for.body35
  %25 = load i32, i32* %i32, align 4
  %26 = load i32, i32* %i32, align 4
  %idxprom39 = sext i32 %26 to i64
  %arrayidx40 = getelementptr inbounds [320000 x double], [320000 x double]* %A, i64 0, i64 %idxprom39
  %27 = load double, double* %arrayidx40, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %25, double 4.595000e+03, double %27)
  store i32 1, i32* %fail, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body35
  br label %for.inc41

for.inc41:                                        ; preds = %if.end
  %28 = load i32, i32* %i32, align 4
  %inc42 = add nsw i32 %28, 1
  store i32 %inc42, i32* %i32, align 4
  br label %for.cond33, !llvm.loop !9

for.end43:                                        ; preds = %for.cond33
  %29 = load i32, i32* %fail, align 4
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then44, label %if.else

if.then44:                                        ; preds = %for.end43
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end47

if.else:                                          ; preds = %for.end43
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then44
  %30 = load i32, i32* %retval, align 4
  ret i32 %30
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
