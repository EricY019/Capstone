; ModuleID = 'code/301-14327bubble.c'
source_filename = "code/301-14327bubble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@N = dso_local global [20 x i32] [i32 23002, i32 13359, i32 11466, i32 64118, i32 32403, i32 44024, i32 63253, i32 51654, i32 60960, i32 45232, i32 28137, i32 40242, i32 27545, i32 10747, i32 18543, i32 32541, i32 9632, i32 59878, i32 43528, i32 6841], align 16
@len = dso_local global i32 20, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @len, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* @len, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %i, align 4
  %cmp2 = icmp sgt i32 %3, %4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @N, i64 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* %j, align 4
  %sub4 = sub nsw i32 %7, 1
  %idxprom5 = sext i32 %sub4 to i64
  %arrayidx6 = getelementptr inbounds [20 x i32], [20 x i32]* @N, i64 0, i64 %idxprom5
  %8 = load i32, i32* %arrayidx6, align 4
  %cmp7 = icmp slt i32 %6, %8
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %9 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [20 x i32], [20 x i32]* @N, i64 0, i64 %idxprom8
  %10 = load i32, i32* %arrayidx9, align 4
  store i32 %10, i32* %temp, align 4
  %11 = load i32, i32* %j, align 4
  %sub10 = sub nsw i32 %11, 1
  %idxprom11 = sext i32 %sub10 to i64
  %arrayidx12 = getelementptr inbounds [20 x i32], [20 x i32]* @N, i64 0, i64 %idxprom11
  %12 = load i32, i32* %arrayidx12, align 4
  %13 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [20 x i32], [20 x i32]* @N, i64 0, i64 %idxprom13
  store i32 %12, i32* %arrayidx14, align 4
  %14 = load i32, i32* %temp, align 4
  %15 = load i32, i32* %j, align 4
  %sub15 = sub nsw i32 %15, 1
  %idxprom16 = sext i32 %sub15 to i64
  %arrayidx17 = getelementptr inbounds [20 x i32], [20 x i32]* @N, i64 0, i64 %idxprom16
  store i32 %14, i32* %arrayidx17, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %j, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end19:                                        ; preds = %for.cond
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
