; ModuleID = 'code/075-1255112.c'
source_filename = "code/075-1255112.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %seive = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sum = alloca i64, align 8
  %factors = alloca i64, align 8
  %x = alloca i64, align 8
  %prev = alloca i32, align 4
  %count = alloca i32, align 4
  %val = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call noalias align 16 i8* @calloc(i64 80000000, i64 4) #3
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %seive, align 8
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 80000000
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %seive, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  store i32 %5, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %if.then
  %6 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %6, 80000000
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %7 = load i32, i32* %i, align 4
  %8 = load i32*, i32** %seive, align 8
  %9 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %8, i64 %idxprom5
  store i32 %7, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %j, align 4
  %add = add nsw i32 %11, %10
  store i32 %add, i32* %j, align 4
  br label %for.cond2, !llvm.loop !4

for.end:                                          ; preds = %for.cond2
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  br label %for.inc7

for.inc7:                                         ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end8:                                         ; preds = %for.cond
  store i64 1, i64* %sum, align 8
  store i64 1, i64* %factors, align 8
  store i32 2, i32* %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc31, %for.end8
  %13 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %13, 80000000
  br i1 %cmp10, label %for.body11, label %for.end33

for.body11:                                       ; preds = %for.cond9
  %14 = load i32, i32* %i, align 4
  %conv = sext i32 %14 to i64
  %15 = load i64, i64* %sum, align 8
  %add12 = add nsw i64 %15, %conv
  store i64 %add12, i64* %sum, align 8
  %16 = load i64, i64* %sum, align 8
  store i64 %16, i64* %x, align 8
  %17 = load i32*, i32** %seive, align 8
  %18 = load i64, i64* %x, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %17, i64 %18
  %19 = load i32, i32* %arrayidx13, align 4
  store i32 %19, i32* %prev, align 4
  store i32 1, i32* %count, align 4
  store i32 1, i32* %val, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end24, %for.body11
  %20 = load i64, i64* %x, align 8
  %cmp14 = icmp ne i64 %20, 1
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32*, i32** %seive, align 8
  %22 = load i64, i64* %x, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %21, i64 %22
  %23 = load i32, i32* %arrayidx16, align 4
  %conv17 = sext i32 %23 to i64
  %24 = load i64, i64* %x, align 8
  %div = sdiv i64 %24, %conv17
  store i64 %div, i64* %x, align 8
  %25 = load i32*, i32** %seive, align 8
  %26 = load i64, i64* %x, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %25, i64 %26
  %27 = load i32, i32* %arrayidx18, align 4
  %28 = load i32, i32* %prev, align 4
  %cmp19 = icmp eq i32 %27, %28
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %while.body
  %29 = load i32, i32* %count, align 4
  %inc22 = add nsw i32 %29, 1
  store i32 %inc22, i32* %count, align 4
  br label %if.end24

if.else:                                          ; preds = %while.body
  %30 = load i32, i32* %count, align 4
  %add23 = add nsw i32 %30, 1
  %31 = load i32, i32* %val, align 4
  %mul = mul nsw i32 %31, %add23
  store i32 %mul, i32* %val, align 4
  store i32 1, i32* %count, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then21
  %32 = load i32*, i32** %seive, align 8
  %33 = load i64, i64* %x, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %32, i64 %33
  %34 = load i32, i32* %arrayidx25, align 4
  store i32 %34, i32* %prev, align 4
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %35 = load i32, i32* %val, align 4
  %cmp26 = icmp sgt i32 %35, 500
  br i1 %cmp26, label %if.then28, label %if.end30

if.then28:                                        ; preds = %while.end
  %36 = load i64, i64* %sum, align 8
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %36)
  br label %for.end33

if.end30:                                         ; preds = %while.end
  br label %for.inc31

for.inc31:                                        ; preds = %if.end30
  %37 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %37, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond9, !llvm.loop !8

for.end33:                                        ; preds = %if.then28, %for.cond9
  %38 = load i32, i32* %retval, align 4
  ret i32 %38
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @calloc(i64, i64) #1

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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
