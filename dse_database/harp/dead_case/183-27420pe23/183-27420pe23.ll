; ModuleID = 'code/183-27420pe23.c'
source_filename = "code/183-27420pe23.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@euler = dso_local global i64 0, align 8
@abundantArray = dso_local global [28125 x i32] zeroinitializer, align 16
@arrayMarked = dso_local global [28125 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [14 x i8] c"euler = %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @abundant(i32 %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  %flag = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %call = call i64 @sumDivisors(i32 %0)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %temp, align 4
  %1 = load i32, i32* %temp, align 4
  %2 = load i32, i32* %a.addr, align 4
  %cmp = icmp sgt i32 %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %flag, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %flag, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sumDivisors(i32 %number) #0 {
entry:
  %number.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i64, align 8
  store i32 %number, i32* %number.addr, align 4
  store i32 1, i32* %i, align 4
  store i64 0, i64* %sum, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %number.addr, align 4
  %div = sdiv i32 %1, 2
  %cmp = icmp sle i32 %0, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %number.addr, align 4
  %3 = load i32, i32* %i, align 4
  %rem = srem i32 %2, %3
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %conv = sext i32 %4 to i64
  %5 = load i64, i64* %sum, align 8
  %add = add i64 %5, %conv
  store i64 %add, i64* %sum, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %7 = load i64, i64* %sum, align 8
  ret i64 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca i32, align 4
  %counter = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %counter, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 28125
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %call = call i32 @abundant(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %counter, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [28125 x i32], [28125 x i32]* @abundantArray, i64 0, i64 %idxprom
  store i32 %2, i32* %arrayidx, align 4
  %4 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %counter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc1 = add nsw i32 %5, 1
  store i32 %inc1, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc36, %for.end
  %6 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %6, 28125
  br i1 %cmp3, label %for.body4, label %for.end38

for.body4:                                        ; preds = %for.cond2
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [28125 x i32], [28125 x i32]* @abundantArray, i64 0, i64 %idxprom5
  %8 = load i32, i32* %arrayidx6, align 4
  %cmp7 = icmp eq i32 %8, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body4
  br label %for.end38

if.end9:                                          ; preds = %for.body4
  store i32 0, i32* %j, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc33, %if.end9
  %9 = load i32, i32* %j, align 4
  %cmp11 = icmp slt i32 %9, 28125
  br i1 %cmp11, label %for.body12, label %for.end35

for.body12:                                       ; preds = %for.cond10
  %10 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [28125 x i32], [28125 x i32]* @abundantArray, i64 0, i64 %idxprom13
  %11 = load i32, i32* %arrayidx14, align 4
  %cmp15 = icmp eq i32 %11, 0
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %for.body12
  br label %for.end35

if.else:                                          ; preds = %for.body12
  %12 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %12 to i64
  %arrayidx18 = getelementptr inbounds [28125 x i32], [28125 x i32]* @abundantArray, i64 0, i64 %idxprom17
  %13 = load i32, i32* %arrayidx18, align 4
  %14 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %14 to i64
  %arrayidx20 = getelementptr inbounds [28125 x i32], [28125 x i32]* @abundantArray, i64 0, i64 %idxprom19
  %15 = load i32, i32* %arrayidx20, align 4
  %add = add nsw i32 %13, %15
  %cmp21 = icmp sle i32 %add, 28125
  br i1 %cmp21, label %if.then22, label %if.else30

if.then22:                                        ; preds = %if.else
  %16 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %16 to i64
  %arrayidx24 = getelementptr inbounds [28125 x i32], [28125 x i32]* @abundantArray, i64 0, i64 %idxprom23
  %17 = load i32, i32* %arrayidx24, align 4
  %18 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %18 to i64
  %arrayidx26 = getelementptr inbounds [28125 x i32], [28125 x i32]* @abundantArray, i64 0, i64 %idxprom25
  %19 = load i32, i32* %arrayidx26, align 4
  %add27 = add nsw i32 %17, %19
  store i32 %add27, i32* %temp, align 4
  %20 = load i32, i32* %temp, align 4
  %idxprom28 = sext i32 %20 to i64
  %arrayidx29 = getelementptr inbounds [28125 x i32], [28125 x i32]* @arrayMarked, i64 0, i64 %idxprom28
  store i32 1, i32* %arrayidx29, align 4
  br label %if.end31

if.else30:                                        ; preds = %if.else
  br label %for.end35

if.end31:                                         ; preds = %if.then22
  br label %if.end32

if.end32:                                         ; preds = %if.end31
  br label %for.inc33

for.inc33:                                        ; preds = %if.end32
  %21 = load i32, i32* %j, align 4
  %inc34 = add nsw i32 %21, 1
  store i32 %inc34, i32* %j, align 4
  br label %for.cond10, !llvm.loop !7

for.end35:                                        ; preds = %if.else30, %if.then16, %for.cond10
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %22 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %22, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond2, !llvm.loop !8

for.end38:                                        ; preds = %if.then8, %for.cond2
  store i32 4, i32* %i, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc48, %for.end38
  %23 = load i32, i32* %i, align 4
  %cmp40 = icmp slt i32 %23, 28125
  br i1 %cmp40, label %for.body41, label %for.end50

for.body41:                                       ; preds = %for.cond39
  %24 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %24 to i64
  %arrayidx43 = getelementptr inbounds [28125 x i32], [28125 x i32]* @arrayMarked, i64 0, i64 %idxprom42
  %25 = load i32, i32* %arrayidx43, align 4
  %cmp44 = icmp eq i32 %25, 0
  br i1 %cmp44, label %if.then45, label %if.end47

if.then45:                                        ; preds = %for.body41
  %26 = load i32, i32* %i, align 4
  %conv = sext i32 %26 to i64
  %27 = load i64, i64* @euler, align 8
  %add46 = add i64 %27, %conv
  store i64 %add46, i64* @euler, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %for.body41
  br label %for.inc48

for.inc48:                                        ; preds = %if.end47
  %28 = load i32, i32* %i, align 4
  %inc49 = add nsw i32 %28, 1
  store i32 %inc49, i32* %i, align 4
  br label %for.cond39, !llvm.loop !9

for.end50:                                        ; preds = %for.cond39
  %29 = load i64, i64* @euler, align 8
  %add51 = add i64 %29, 6
  store i64 %add51, i64* @euler, align 8
  %30 = load i64, i64* @euler, align 8
  %call52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %30)
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
