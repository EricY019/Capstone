; ModuleID = 'code/265-30986globalerr.c'
source_filename = "code/265-30986globalerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [7 x i16] zeroinitializer, align 2
@b = internal global [7 x i16] zeroinitializer, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i16, align 2
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [7 x i16], [7 x i16]* @a, i64 0, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %2 to i32
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [7 x i16], [7 x i16]* @b, i64 0, i64 %idxprom1
  %4 = load i16, i16* %arrayidx2, align 2
  %conv3 = sext i16 %4 to i32
  %mul = mul nsw i32 %conv, %conv3
  %5 = load i16, i16* %sum, align 2
  %conv4 = sext i16 %5 to i32
  %add = add nsw i32 %conv4, %mul
  %conv5 = trunc i32 %add to i16
  store i16 %conv5, i16* %sum, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %7 = load i16, i16* %sum, align 2
  %conv6 = sext i16 %7 to i32
  %div = udiv i32 %conv6, 1000000
  %and = and i32 1, %div
  ret i32 %and
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
