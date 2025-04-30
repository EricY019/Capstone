; ModuleID = 'code/262-21297matmul0000.c'
source_filename = "code/262-21297matmul0000.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A = dso_local global [512 x [512 x i32]] zeroinitializer, align 16
@B = dso_local global [512 x [512 x i32]] zeroinitializer, align 16
@C = dso_local global [512 x [512 x i32]] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %j16 = alloca i32, align 4
  %k = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 512
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 512
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %j, align 4
  %add = add nsw i32 %2, %3
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [512 x [512 x i32]], [512 x [512 x i32]]* @A, i64 0, i64 %idxprom
  %5 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [512 x i32], [512 x i32]* %arrayidx, i64 0, i64 %idxprom4
  store i32 %add, i32* %arrayidx5, align 4
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %6, %7
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [512 x [512 x i32]], [512 x [512 x i32]]* @B, i64 0, i64 %idxprom6
  %9 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [512 x i32], [512 x i32]* %arrayidx7, i64 0, i64 %idxprom8
  store i32 %sub, i32* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %11, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end12:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc42, %for.end12
  %12 = load i32, i32* %i, align 4
  %cmp14 = icmp slt i32 %12, 512
  br i1 %cmp14, label %for.body15, label %for.end44

for.body15:                                       ; preds = %for.cond13
  store i32 0, i32* %j16, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc39, %for.body15
  %13 = load i32, i32* %j16, align 4
  %cmp18 = icmp slt i32 %13, 512
  br i1 %cmp18, label %for.body19, label %for.end41

for.body19:                                       ; preds = %for.cond17
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc32, %for.body19
  %14 = load i32, i32* %k, align 4
  %cmp21 = icmp slt i32 %14, 512
  br i1 %cmp21, label %for.body22, label %for.end34

for.body22:                                       ; preds = %for.cond20
  %15 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %15 to i64
  %arrayidx24 = getelementptr inbounds [512 x [512 x i32]], [512 x [512 x i32]]* @A, i64 0, i64 %idxprom23
  %16 = load i32, i32* %k, align 4
  %idxprom25 = sext i32 %16 to i64
  %arrayidx26 = getelementptr inbounds [512 x i32], [512 x i32]* %arrayidx24, i64 0, i64 %idxprom25
  %17 = load i32, i32* %arrayidx26, align 4
  %18 = load i32, i32* %k, align 4
  %idxprom27 = sext i32 %18 to i64
  %arrayidx28 = getelementptr inbounds [512 x [512 x i32]], [512 x [512 x i32]]* @B, i64 0, i64 %idxprom27
  %19 = load i32, i32* %j16, align 4
  %idxprom29 = sext i32 %19 to i64
  %arrayidx30 = getelementptr inbounds [512 x i32], [512 x i32]* %arrayidx28, i64 0, i64 %idxprom29
  %20 = load i32, i32* %arrayidx30, align 4
  %mul = mul nsw i32 %17, %20
  %21 = load i32, i32* %sum, align 4
  %add31 = add nsw i32 %21, %mul
  store i32 %add31, i32* %sum, align 4
  br label %for.inc32

for.inc32:                                        ; preds = %for.body22
  %22 = load i32, i32* %k, align 4
  %inc33 = add nsw i32 %22, 1
  store i32 %inc33, i32* %k, align 4
  br label %for.cond20, !llvm.loop !7

for.end34:                                        ; preds = %for.cond20
  %23 = load i32, i32* %sum, align 4
  %24 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %24 to i64
  %arrayidx36 = getelementptr inbounds [512 x [512 x i32]], [512 x [512 x i32]]* @C, i64 0, i64 %idxprom35
  %25 = load i32, i32* %j16, align 4
  %idxprom37 = sext i32 %25 to i64
  %arrayidx38 = getelementptr inbounds [512 x i32], [512 x i32]* %arrayidx36, i64 0, i64 %idxprom37
  store i32 %23, i32* %arrayidx38, align 4
  br label %for.inc39

for.inc39:                                        ; preds = %for.end34
  %26 = load i32, i32* %j16, align 4
  %inc40 = add nsw i32 %26, 1
  store i32 %inc40, i32* %j16, align 4
  br label %for.cond17, !llvm.loop !8

for.end41:                                        ; preds = %for.cond17
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %27 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %27, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond13, !llvm.loop !9

for.end44:                                        ; preds = %for.cond13
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
