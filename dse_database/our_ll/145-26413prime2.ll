; ModuleID = 'code/145-26413prime2.c'
source_filename = "code/145-26413prime2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@array = dso_local global [100000000 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 100000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100000000 x i8], [100000000 x i8]* @array, i64 0, i64 %idxprom
  store i8 1, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 2, i32* %n, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc16, %for.end
  %3 = load i32, i32* %n, align 4
  %cmp2 = icmp sle i32 %3, 10000
  br i1 %cmp2, label %for.body3, label %for.end18

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, i32* %n, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [100000000 x i8], [100000000 x i8]* @array, i64 0, i64 %idxprom4
  %5 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %5 to i32
  %cmp6 = icmp eq i32 %conv, 1
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %6 = load i32, i32* %n, align 4
  %7 = load i32, i32* %n, align 4
  %mul = mul nsw i32 %6, %7
  store i32 %mul, i32* %i, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc14, %if.then
  %8 = load i32, i32* %i, align 4
  %cmp9 = icmp slt i32 %8, 100000000
  br i1 %cmp9, label %for.body11, label %for.end15

for.body11:                                       ; preds = %for.cond8
  %9 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [100000000 x i8], [100000000 x i8]* @array, i64 0, i64 %idxprom12
  store i8 0, i8* %arrayidx13, align 1
  br label %for.inc14

for.inc14:                                        ; preds = %for.body11
  %10 = load i32, i32* %n, align 4
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, %10
  store i32 %add, i32* %i, align 4
  br label %for.cond8, !llvm.loop !6

for.end15:                                        ; preds = %for.cond8
  br label %if.end

if.end:                                           ; preds = %for.end15, %for.body3
  br label %for.inc16

for.inc16:                                        ; preds = %if.end
  %12 = load i32, i32* %n, align 4
  %inc17 = add nsw i32 %12, 1
  store i32 %inc17, i32* %n, align 4
  br label %for.cond1, !llvm.loop !7

for.end18:                                        ; preds = %for.cond1
  store i32 2, i32* %n, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc30, %for.end18
  %13 = load i32, i32* %n, align 4
  %cmp20 = icmp slt i32 %13, 100000000
  br i1 %cmp20, label %for.body22, label %for.end32

for.body22:                                       ; preds = %for.cond19
  %14 = load i32, i32* %n, align 4
  %idxprom23 = sext i32 %14 to i64
  %arrayidx24 = getelementptr inbounds [100000000 x i8], [100000000 x i8]* @array, i64 0, i64 %idxprom23
  %15 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %15 to i32
  %cmp26 = icmp eq i32 %conv25, 1
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %for.body22
  %16 = load i32, i32* %n, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %for.body22
  br label %for.inc30

for.inc30:                                        ; preds = %if.end29
  %17 = load i32, i32* %n, align 4
  %inc31 = add nsw i32 %17, 1
  store i32 %inc31, i32* %n, align 4
  br label %for.cond19, !llvm.loop !8

for.end32:                                        ; preds = %for.cond19
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
