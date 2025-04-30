; ModuleID = 'code/096-30172ejercicioenclase3.c'
source_filename = "code/096-30172ejercicioenclase3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %microsxhora = alloca [24 x i32], align 16
  %pasajerosxhora = alloca [24 x i32], align 16
  %"recaudaci\C3\B3nxhora" = alloca [24 x i32], align 16
  %promediopxh = alloca [24 x i32], align 16
  %cantmaxmicros = alloca i32, align 4
  %recaudacionxhora = alloca [24 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %cantmaxmicros, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [24 x i32], [24 x i32]* %pasajerosxhora, i64 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [24 x i32], [24 x i32]* %microsxhora, i64 0, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  %div = sdiv i32 %2, %4
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [24 x i32], [24 x i32]* %promediopxh, i64 0, i64 %idxprom3
  store i32 %div, i32* %arrayidx4, align 4
  %6 = load i32, i32* %cantmaxmicros, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [24 x i32], [24 x i32]* %microsxhora, i64 0, i64 %idxprom5
  %8 = load i32, i32* %arrayidx6, align 4
  %cmp7 = icmp slt i32 %6, %8
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [24 x i32], [24 x i32]* %microsxhora, i64 0, i64 %idxprom8
  %10 = load i32, i32* %arrayidx9, align 4
  store i32 %10, i32* %cantmaxmicros, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [24 x i32], [24 x i32]* %pasajerosxhora, i64 0, i64 %idxprom10
  %12 = load i32, i32* %arrayidx11, align 4
  %mul = mul nsw i32 %12, 800
  %13 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [24 x i32], [24 x i32]* %recaudacionxhora, i64 0, i64 %idxprom12
  store i32 %mul, i32* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %add = add nsw i32 %14, 1
  store i32 %add, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
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
