; ModuleID = 'code/246-6000cacheExperiment.c'
source_filename = "code/246-6000cacheExperiment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@src = dso_local global [2048 x [2048 x i32]] zeroinitializer, align 16
@dst = dso_local global [2048 x [2048 x i32]] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %rep = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %rep, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %0 = load i32, i32* %rep, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc13, %for.body
  %1 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %1, 2048
  br i1 %cmp2, label %for.body3, label %for.end15

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, i32* %j, align 4
  %cmp5 = icmp slt i32 %2, 2048
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [2048 x [2048 x i32]], [2048 x [2048 x i32]]* @src, i64 0, i64 %idxprom
  %4 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds [2048 x i32], [2048 x i32]* %arrayidx, i64 0, i64 %idxprom7
  %5 = load i32, i32* %arrayidx8, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %6 to i64
  %arrayidx10 = getelementptr inbounds [2048 x [2048 x i32]], [2048 x [2048 x i32]]* @dst, i64 0, i64 %idxprom9
  %7 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %7 to i64
  %arrayidx12 = getelementptr inbounds [2048 x i32], [2048 x i32]* %arrayidx10, i64 0, i64 %idxprom11
  store i32 %5, i32* %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %8 = load i32, i32* %j, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond4, !llvm.loop !4

for.end:                                          ; preds = %for.cond4
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %9 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %9, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond1, !llvm.loop !6

for.end15:                                        ; preds = %for.cond1
  br label %for.inc16

for.inc16:                                        ; preds = %for.end15
  %10 = load i32, i32* %rep, align 4
  %inc17 = add nsw i32 %10, 1
  store i32 %inc17, i32* %rep, align 4
  br label %for.cond, !llvm.loop !7

for.end18:                                        ; preds = %for.cond
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
