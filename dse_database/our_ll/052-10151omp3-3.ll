; ModuleID = 'code/052-10151omp3-3.c'
source_filename = "code/052-10151omp3-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [5000 x [5000 x i32]] zeroinitializer, align 16
@b = dso_local global [5000 x [5000 x i32]] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sum = alloca i32, align 4
  %i1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  %i11 = alloca i32, align 4
  %j12 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, i32* %i1, align 4
  %cmp = icmp slt i32 %0, 5000
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j2, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j2, align 4
  %cmp4 = icmp slt i32 %1, 5000
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %2 = load i32, i32* %i1, align 4
  %3 = load i32, i32* %j2, align 4
  %add = add nsw i32 %2, %3
  %4 = load i32, i32* %i1, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [5000 x [5000 x i32]], [5000 x [5000 x i32]]* @a, i64 0, i64 %idxprom
  %5 = load i32, i32* %j2, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [5000 x i32], [5000 x i32]* %arrayidx, i64 0, i64 %idxprom6
  store i32 %add, i32* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %6 = load i32, i32* %j2, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %j2, align 4
  br label %for.cond3, !llvm.loop !4

for.end:                                          ; preds = %for.cond3
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %7 = load i32, i32* %i1, align 4
  %inc9 = add nsw i32 %7, 1
  store i32 %inc9, i32* %i1, align 4
  br label %for.cond, !llvm.loop !6

for.end10:                                        ; preds = %for.cond
  store i32 0, i32* %i11, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc26, %for.end10
  %8 = load i32, i32* %i11, align 4
  %cmp14 = icmp slt i32 %8, 5000
  br i1 %cmp14, label %for.body15, label %for.end28

for.body15:                                       ; preds = %for.cond13
  store i32 0, i32* %j12, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc23, %for.body15
  %9 = load i32, i32* %j12, align 4
  %cmp17 = icmp slt i32 %9, 5000
  br i1 %cmp17, label %for.body18, label %for.end25

for.body18:                                       ; preds = %for.cond16
  %10 = load i32, i32* %i11, align 4
  %11 = load i32, i32* %j12, align 4
  %sub = sub nsw i32 %10, %11
  %12 = load i32, i32* %i11, align 4
  %idxprom19 = sext i32 %12 to i64
  %arrayidx20 = getelementptr inbounds [5000 x [5000 x i32]], [5000 x [5000 x i32]]* @b, i64 0, i64 %idxprom19
  %13 = load i32, i32* %j12, align 4
  %idxprom21 = sext i32 %13 to i64
  %arrayidx22 = getelementptr inbounds [5000 x i32], [5000 x i32]* %arrayidx20, i64 0, i64 %idxprom21
  store i32 %sub, i32* %arrayidx22, align 4
  br label %for.inc23

for.inc23:                                        ; preds = %for.body18
  %14 = load i32, i32* %j12, align 4
  %inc24 = add nsw i32 %14, 1
  store i32 %inc24, i32* %j12, align 4
  br label %for.cond16, !llvm.loop !7

for.end25:                                        ; preds = %for.cond16
  br label %for.inc26

for.inc26:                                        ; preds = %for.end25
  %15 = load i32, i32* %i11, align 4
  %inc27 = add nsw i32 %15, 1
  store i32 %inc27, i32* %i11, align 4
  br label %for.cond13, !llvm.loop !8

for.end28:                                        ; preds = %for.cond13
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc43, %for.end28
  %16 = load i32, i32* %i, align 4
  %cmp30 = icmp slt i32 %16, 5000
  br i1 %cmp30, label %for.body31, label %for.end45

for.body31:                                       ; preds = %for.cond29
  store i32 0, i32* %j, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc40, %for.body31
  %17 = load i32, i32* %j, align 4
  %cmp33 = icmp slt i32 %17, 5000
  br i1 %cmp33, label %for.body34, label %for.end42

for.body34:                                       ; preds = %for.cond32
  %18 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %18 to i64
  %arrayidx36 = getelementptr inbounds [5000 x [5000 x i32]], [5000 x [5000 x i32]]* @a, i64 0, i64 %idxprom35
  %19 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %19 to i64
  %arrayidx38 = getelementptr inbounds [5000 x i32], [5000 x i32]* %arrayidx36, i64 0, i64 %idxprom37
  %20 = load i32, i32* %arrayidx38, align 4
  %21 = load i32, i32* %sum, align 4
  %add39 = add nsw i32 %21, %20
  store i32 %add39, i32* %sum, align 4
  %22 = load i32, i32* %sum, align 4
  %rem = srem i32 %22, 1000000000
  store i32 %rem, i32* %sum, align 4
  br label %for.inc40

for.inc40:                                        ; preds = %for.body34
  %23 = load i32, i32* %j, align 4
  %inc41 = add nsw i32 %23, 1
  store i32 %inc41, i32* %j, align 4
  br label %for.cond32, !llvm.loop !9

for.end42:                                        ; preds = %for.cond32
  br label %for.inc43

for.inc43:                                        ; preds = %for.end42
  %24 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %24, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond29, !llvm.loop !10

for.end45:                                        ; preds = %for.cond29
  %25 = load i32, i32* %sum, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc61, %for.end45
  %26 = load i32, i32* %i, align 4
  %cmp47 = icmp slt i32 %26, 5000
  br i1 %cmp47, label %for.body48, label %for.end63

for.body48:                                       ; preds = %for.cond46
  store i32 0, i32* %j, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc58, %for.body48
  %27 = load i32, i32* %j, align 4
  %cmp50 = icmp slt i32 %27, 5000
  br i1 %cmp50, label %for.body51, label %for.end60

for.body51:                                       ; preds = %for.cond49
  %28 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %28 to i64
  %arrayidx53 = getelementptr inbounds [5000 x [5000 x i32]], [5000 x [5000 x i32]]* @b, i64 0, i64 %idxprom52
  %29 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %29 to i64
  %arrayidx55 = getelementptr inbounds [5000 x i32], [5000 x i32]* %arrayidx53, i64 0, i64 %idxprom54
  %30 = load i32, i32* %arrayidx55, align 4
  %31 = load i32, i32* %sum, align 4
  %add56 = add nsw i32 %31, %30
  store i32 %add56, i32* %sum, align 4
  %32 = load i32, i32* %sum, align 4
  %rem57 = srem i32 %32, 1000000000
  store i32 %rem57, i32* %sum, align 4
  br label %for.inc58

for.inc58:                                        ; preds = %for.body51
  %33 = load i32, i32* %j, align 4
  %inc59 = add nsw i32 %33, 1
  store i32 %inc59, i32* %j, align 4
  br label %for.cond49, !llvm.loop !11

for.end60:                                        ; preds = %for.cond49
  br label %for.inc61

for.inc61:                                        ; preds = %for.end60
  %34 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %34, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond46, !llvm.loop !12

for.end63:                                        ; preds = %for.cond46
  %35 = load i32, i32* %sum, align 4
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %35)
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
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
