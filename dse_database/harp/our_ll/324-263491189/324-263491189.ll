; ModuleID = 'code/324-263491189.c'
source_filename = "code/324-263491189.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [30 x i32], align 16
  %i = alloca i32, align 4
  %flag = alloca i32, align 4
  %step = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 21, i32* %flag, align 4
  store i32 0, i32* %step, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [30 x i32], [30 x i32]* %a, i64 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %for.end16, %for.end
  %3 = load i32, i32* %flag, align 4
  %cmp1 = icmp ne i32 %3, 1
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 1, i32* %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc14, %while.body
  %4 = load i32, i32* %i, align 4
  %cmp3 = icmp sle i32 %4, 21
  br i1 %cmp3, label %for.body4, label %for.end16

for.body4:                                        ; preds = %for.cond2
  %5 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [30 x i32], [30 x i32]* %a, i64 0, i64 %idxprom5
  %6 = load i32, i32* %arrayidx6, align 4
  %cmp7 = icmp eq i32 %6, 1
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %7 = load i32, i32* %step, align 4
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, i32* %step, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  %8 = load i32, i32* %step, align 4
  %cmp9 = icmp eq i32 %8, 17
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end
  store i32 0, i32* %step, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [30 x i32], [30 x i32]* %a, i64 0, i64 %idxprom11
  store i32 0, i32* %arrayidx12, align 4
  %10 = load i32, i32* %flag, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %flag, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end
  br label %for.inc14

for.inc14:                                        ; preds = %if.end13
  %11 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %11, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond2, !llvm.loop !6

for.end16:                                        ; preds = %for.cond2
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %i, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc24, %while.end
  %12 = load i32, i32* %i, align 4
  %cmp18 = icmp sle i32 %12, 21
  br i1 %cmp18, label %for.body19, label %for.end26

for.body19:                                       ; preds = %for.cond17
  %13 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %13 to i64
  %arrayidx21 = getelementptr inbounds [30 x i32], [30 x i32]* %a, i64 0, i64 %idxprom20
  %14 = load i32, i32* %arrayidx21, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.body19
  %15 = load i32, i32* %i, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %for.body19
  br label %for.inc24

for.inc24:                                        ; preds = %if.end23
  %16 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %16, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond17, !llvm.loop !8

for.end26:                                        ; preds = %for.cond17
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
