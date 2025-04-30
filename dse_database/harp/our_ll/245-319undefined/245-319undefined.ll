; ModuleID = 'code/245-319undefined.c'
source_filename = "code/245-319undefined.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int_1 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ints = alloca [10 x %struct.int_1*], align 16
  %i = alloca i32, align 4
  %.compoundliteral = alloca %struct.int_1, align 4
  %sum = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %x = getelementptr inbounds %struct.int_1, %struct.int_1* %.compoundliteral, i32 0, i32 0
  %1 = load i32, i32* %i, align 4
  store i32 %1, i32* %x, align 4
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x %struct.int_1*], [10 x %struct.int_1*]* %ints, i64 0, i64 %idxprom
  store %struct.int_1* %.compoundliteral, %struct.int_1** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %i1, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc8, %for.end
  %4 = load i32, i32* %i1, align 4
  %cmp3 = icmp slt i32 %4, 10
  br i1 %cmp3, label %for.body4, label %for.end10

for.body4:                                        ; preds = %for.cond2
  %5 = load i32, i32* %i1, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [10 x %struct.int_1*], [10 x %struct.int_1*]* %ints, i64 0, i64 %idxprom5
  %6 = load %struct.int_1*, %struct.int_1** %arrayidx6, align 8
  %x7 = getelementptr inbounds %struct.int_1, %struct.int_1* %6, i32 0, i32 0
  %7 = load i32, i32* %x7, align 4
  %8 = load i32, i32* %sum, align 4
  %add = add nsw i32 %8, %7
  store i32 %add, i32* %sum, align 4
  br label %for.inc8

for.inc8:                                         ; preds = %for.body4
  %9 = load i32, i32* %i1, align 4
  %inc9 = add nsw i32 %9, 1
  store i32 %inc9, i32* %i1, align 4
  br label %for.cond2, !llvm.loop !6

for.end10:                                        ; preds = %for.cond2
  %10 = load i32, i32* %sum, align 4
  ret i32 %10
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
