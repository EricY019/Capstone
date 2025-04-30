; ModuleID = 'code/008-29303pr70688.c'
source_filename = "code/008-29303pr70688.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@n = dso_local constant i32 100, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @private_reduction() #0 {
entry:
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %r, align 4
  %add = add nsw i32 %1, 10
  store i32 %add, i32* %r, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %3 = load i32, i32* %r, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parallel_reduction() #0 {
entry:
  %sum = alloca i32, align 4
  %dummy = alloca i32, align 4
  %v = alloca i32, align 4
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %dummy, align 4
  store i32 5, i32* %v, align 4
  %0 = load i32, i32* %v, align 4
  %add = add nsw i32 10, %0
  %1 = load i32, i32* %sum, align 4
  %add1 = add nsw i32 %1, %add
  store i32 %add1, i32* %sum, align 4
  %2 = load i32, i32* %sum, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %s, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %add = add nsw i32 %1, 1
  %2 = load i32, i32* %s, align 4
  %add1 = add nsw i32 %2, %add
  store i32 %add1, i32* %s, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc7, %for.end
  %4 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %4, 100
  br i1 %cmp3, label %for.body4, label %for.end9

for.body4:                                        ; preds = %for.cond2
  %5 = load i32, i32* %i, align 4
  %add5 = add nsw i32 %5, 1
  %6 = load i32, i32* %s, align 4
  %add6 = add nsw i32 %6, %add5
  store i32 %add6, i32* %s, align 4
  br label %for.inc7

for.inc7:                                         ; preds = %for.body4
  %7 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond2, !llvm.loop !7

for.end9:                                         ; preds = %for.cond2
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
