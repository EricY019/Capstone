; ModuleID = 'code/048-13514force-parallel-6.c'
source_filename = "code/048-13514force-parallel-6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Y = dso_local global [1000 x i32] zeroinitializer, align 16
@X = dso_local global [1000 x i32] zeroinitializer, align 16
@A = dso_local global [1000 x [1000 x i32]] zeroinitializer, align 16
@B = dso_local global [1000 x i32] zeroinitializer, align 16
@C = dso_local global [1000 x [1000 x i32]] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @foo() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc36, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 500
  br i1 %cmp, label %for.body, label %for.end38

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* @Y, i64 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %2, 10
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [1000 x i32], [1000 x i32]* @X, i64 0, i64 %idxprom1
  store i32 %add, i32* %arrayidx2, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc33, %for.body
  %4 = load i32, i32* %j, align 4
  %cmp4 = icmp slt i32 %4, 500
  br i1 %cmp4, label %for.body5, label %for.end35

for.body5:                                        ; preds = %for.cond3
  %5 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @A, i64 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [1000 x i32], [1000 x i32]* %arrayidx7, i64 0, i64 500
  %6 = load i32, i32* %arrayidx8, align 16
  %7 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [1000 x i32], [1000 x i32]* @B, i64 0, i64 %idxprom9
  store i32 %6, i32* %arrayidx10, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body5
  %8 = load i32, i32* %k, align 4
  %cmp12 = icmp slt i32 %8, 500
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %9 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %9 to i64
  %arrayidx15 = getelementptr inbounds [1000 x i32], [1000 x i32]* @B, i64 0, i64 %idxprom14
  %10 = load i32, i32* %arrayidx15, align 4
  %11 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %11 to i64
  %arrayidx17 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @C, i64 0, i64 %idxprom16
  %12 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %12 to i64
  %arrayidx19 = getelementptr inbounds [1000 x i32], [1000 x i32]* %arrayidx17, i64 0, i64 %idxprom18
  %13 = load i32, i32* %arrayidx19, align 4
  %add20 = add nsw i32 %10, %13
  %14 = load i32, i32* %j, align 4
  %add21 = add nsw i32 %14, 1
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @A, i64 0, i64 %idxprom22
  %15 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %15 to i64
  %arrayidx25 = getelementptr inbounds [1000 x i32], [1000 x i32]* %arrayidx23, i64 0, i64 %idxprom24
  store i32 %add20, i32* %arrayidx25, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %16 = load i32, i32* %k, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond11, !llvm.loop !4

for.end:                                          ; preds = %for.cond11
  %17 = load i32, i32* %j, align 4
  %add26 = add nsw i32 %17, 1
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds [1000 x [1000 x i32]], [1000 x [1000 x i32]]* @A, i64 0, i64 %idxprom27
  %arrayidx29 = getelementptr inbounds [1000 x i32], [1000 x i32]* %arrayidx28, i64 0, i64 500
  %18 = load i32, i32* %arrayidx29, align 16
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %j, align 4
  %add30 = add nsw i32 %19, %20
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds [1000 x i32], [1000 x i32]* @Y, i64 0, i64 %idxprom31
  store i32 %18, i32* %arrayidx32, align 4
  br label %for.inc33

for.inc33:                                        ; preds = %for.end
  %21 = load i32, i32* %j, align 4
  %inc34 = add nsw i32 %21, 1
  store i32 %inc34, i32* %j, align 4
  br label %for.cond3, !llvm.loop !6

for.end35:                                        ; preds = %for.cond3
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %22 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %22, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end38:                                        ; preds = %for.cond
  %23 = load i32, i32* getelementptr inbounds ([1000 x [1000 x i32]], [1000 x [1000 x i32]]* @A, i64 0, i64 1, i64 5), align 4
  %24 = load i32, i32* getelementptr inbounds ([1000 x i32], [1000 x i32]* @B, i64 0, i64 6), align 8
  %mul = mul nsw i32 %23, %24
  ret i32 %mul
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @foo()
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
!7 = distinct !{!7, !5}
