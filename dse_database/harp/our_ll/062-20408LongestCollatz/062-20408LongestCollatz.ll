; ModuleID = 'code/062-20408LongestCollatz.c'
source_filename = "code/062-20408LongestCollatz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"num: %3i length:%3i\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"longest: %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @collatzLength(i32 %nIn) #0 {
entry:
  %nIn.addr = alloca i32, align 4
  %n = alloca i64, align 8
  %l = alloca i32, align 4
  store i32 %nIn, i32* %nIn.addr, align 4
  %0 = load i32, i32* %nIn.addr, align 4
  %conv = sext i32 %0 to i64
  store i64 %conv, i64* %n, align 8
  store i32 0, i32* %l, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i64, i64* %n, align 8
  %cmp = icmp sgt i64 %1, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %n, align 8
  %rem = srem i64 %2, 2
  %cmp2 = icmp eq i64 %rem, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %3 = load i64, i64* %n, align 8
  %div = sdiv i64 %3, 2
  store i64 %div, i64* %n, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %4 = load i64, i64* %n, align 8
  %mul = mul nsw i64 3, %4
  %add = add nsw i64 %mul, 1
  store i64 %add, i64* %n, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %l, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %l, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %l, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @collatzLengthRec(i32 %n, i32 %l) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %l.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %l, i32* %l.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %l.addr, align 4
  store i32 %1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %2, 2
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  %3 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %3, 2
  %4 = load i32, i32* %l.addr, align 4
  %add = add nsw i32 %4, 1
  %call = call i32 @collatzLengthRec(i32 %div, i32 %add)
  store i32 %call, i32* %retval, align 4
  br label %return

if.else3:                                         ; preds = %if.else
  %5 = load i32, i32* %n.addr, align 4
  %mul = mul nsw i32 3, %5
  %add4 = add nsw i32 %mul, 1
  %6 = load i32, i32* %l.addr, align 4
  %add5 = add nsw i32 %6, 1
  %call6 = call i32 @collatzLengthRec(i32 %add4, i32 %add5)
  store i32 %call6, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else3, %if.then2, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  %maxL = alloca i32, align 4
  %i = alloca i32, align 4
  %curL = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %n, align 4
  store i32 0, i32* %maxL, align 4
  store i32 100000, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %curL, align 4
  %1 = load i32, i32* %i, align 4
  %call = call i32 @collatzLength(i32 %1)
  %2 = load i32, i32* %maxL, align 4
  %cmp1 = icmp sgt i32 %call, %2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %i, align 4
  %call2 = call i32 @collatzLength(i32 %4)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %call2)
  %5 = load i32, i32* %i, align 4
  %call4 = call i32 @collatzLength(i32 %5)
  store i32 %call4, i32* %maxL, align 4
  %6 = load i32, i32* %i, align 4
  store i32 %6, i32* %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %n, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
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
