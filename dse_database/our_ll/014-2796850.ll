; ModuleID = 'code/014-2796850.c'
source_filename = "code/014-2796850.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %num = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %q = alloca i32, align 4
  %sum = alloca i32, align 4
  %maxSum = alloca i32, align 4
  %maxLen = alloca i32, align 4
  %prime = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  %call = call noalias align 16 i8* @calloc(i64 999998, i64 1) #3
  store i8* %call, i8** %num, align 8
  %call1 = call noalias align 16 i8* @malloc(i64 3999992) #3
  %0 = bitcast i8* %call1 to i32*
  store i32* %0, i32** %prime, align 8
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %1, %2
  %cmp = icmp slt i32 %mul, 1000000
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %num, align 8
  %4 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %4, 2
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %i, align 4
  %mul2 = mul nsw i32 %6, %7
  store i32 %mul2, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %if.then
  %8 = load i32, i32* %j, align 4
  %cmp4 = icmp slt i32 %8, 1000000
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %9 = load i8*, i8** %num, align 8
  %10 = load i32, i32* %j, align 4
  %sub6 = sub nsw i32 %10, 2
  %idxprom7 = sext i32 %sub6 to i64
  %arrayidx8 = getelementptr inbounds i8, i8* %9, i64 %idxprom7
  store i8 1, i8* %arrayidx8, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %j, align 4
  %add = add nsw i32 %12, %11
  store i32 %add, i32* %j, align 4
  br label %for.cond3, !llvm.loop !4

for.end:                                          ; preds = %for.cond3
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  br label %for.inc9

for.inc9:                                         ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end10:                                        ; preds = %for.cond
  store i32 0, i32* %q, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc23, %for.end10
  %14 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %14, 1000000
  br i1 %cmp12, label %for.body13, label %for.end25

for.body13:                                       ; preds = %for.cond11
  %15 = load i8*, i8** %num, align 8
  %16 = load i32, i32* %i, align 4
  %sub14 = sub nsw i32 %16, 2
  %idxprom15 = sext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds i8, i8* %15, i64 %idxprom15
  %17 = load i8, i8* %arrayidx16, align 1
  %tobool17 = icmp ne i8 %17, 0
  br i1 %tobool17, label %if.end22, label %if.then18

if.then18:                                        ; preds = %for.body13
  %18 = load i32, i32* %i, align 4
  %19 = load i32*, i32** %prime, align 8
  %20 = load i32, i32* %q, align 4
  %idxprom19 = sext i32 %20 to i64
  %arrayidx20 = getelementptr inbounds i32, i32* %19, i64 %idxprom19
  store i32 %18, i32* %arrayidx20, align 4
  %21 = load i32, i32* %q, align 4
  %inc21 = add nsw i32 %21, 1
  store i32 %inc21, i32* %q, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %for.body13
  br label %for.inc23

for.inc23:                                        ; preds = %if.end22
  %22 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %22, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond11, !llvm.loop !7

for.end25:                                        ; preds = %for.cond11
  store i32 0, i32* %maxLen, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc52, %for.end25
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %q, align 4
  %cmp27 = icmp slt i32 %23, %24
  br i1 %cmp27, label %for.body28, label %for.end54

for.body28:                                       ; preds = %for.cond26
  store i32 0, i32* %sum, align 4
  %25 = load i32, i32* %i, align 4
  store i32 %25, i32* %j, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc49, %for.body28
  %26 = load i32, i32* %j, align 4
  %27 = load i32, i32* %q, align 4
  %cmp30 = icmp slt i32 %26, %27
  br i1 %cmp30, label %for.body31, label %for.end51

for.body31:                                       ; preds = %for.cond29
  %28 = load i32*, i32** %prime, align 8
  %29 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %29 to i64
  %arrayidx33 = getelementptr inbounds i32, i32* %28, i64 %idxprom32
  %30 = load i32, i32* %arrayidx33, align 4
  %31 = load i32, i32* %sum, align 4
  %add34 = add nsw i32 %31, %30
  store i32 %add34, i32* %sum, align 4
  %32 = load i32, i32* %sum, align 4
  %cmp35 = icmp sge i32 %32, 1000000
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %for.body31
  br label %for.end51

if.end37:                                         ; preds = %for.body31
  %33 = load i8*, i8** %num, align 8
  %34 = load i32, i32* %sum, align 4
  %sub38 = sub nsw i32 %34, 2
  %idxprom39 = sext i32 %sub38 to i64
  %arrayidx40 = getelementptr inbounds i8, i8* %33, i64 %idxprom39
  %35 = load i8, i8* %arrayidx40, align 1
  %tobool41 = icmp ne i8 %35, 0
  br i1 %tobool41, label %if.end48, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end37
  %36 = load i32, i32* %maxLen, align 4
  %37 = load i32, i32* %j, align 4
  %38 = load i32, i32* %i, align 4
  %sub42 = sub nsw i32 %37, %38
  %add43 = add nsw i32 %sub42, 1
  %cmp44 = icmp slt i32 %36, %add43
  br i1 %cmp44, label %if.then45, label %if.end48

if.then45:                                        ; preds = %land.lhs.true
  %39 = load i32, i32* %j, align 4
  %40 = load i32, i32* %i, align 4
  %sub46 = sub nsw i32 %39, %40
  %add47 = add nsw i32 %sub46, 1
  store i32 %add47, i32* %maxLen, align 4
  %41 = load i32, i32* %sum, align 4
  store i32 %41, i32* %maxSum, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %land.lhs.true, %if.end37
  br label %for.inc49

for.inc49:                                        ; preds = %if.end48
  %42 = load i32, i32* %j, align 4
  %inc50 = add nsw i32 %42, 1
  store i32 %inc50, i32* %j, align 4
  br label %for.cond29, !llvm.loop !8

for.end51:                                        ; preds = %if.then36, %for.cond29
  br label %for.inc52

for.inc52:                                        ; preds = %for.end51
  %43 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %43, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond26, !llvm.loop !9

for.end54:                                        ; preds = %for.cond26
  %44 = load i32, i32* %maxSum, align 4
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %44)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @calloc(i64, i64) #1

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

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
!9 = distinct !{!9, !5}
