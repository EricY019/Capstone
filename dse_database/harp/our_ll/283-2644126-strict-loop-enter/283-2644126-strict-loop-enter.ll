; ModuleID = 'code/283-2644126-strict-loop-enter.c'
source_filename = "code/283-2644126-strict-loop-enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %0, 50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 1, i32* @g, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, i32* %x, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %2 = load i32, i32* %x, align 4
  %cmp1 = icmp sgt i32 %2, 50
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc5, %if.then
  %3 = load i32, i32* %i, align 4
  %cmp3 = icmp sle i32 %3, 0
  br i1 %cmp3, label %for.body4, label %for.end6

for.body4:                                        ; preds = %for.cond2
  store i32 57, i32* @g, align 4
  br label %for.inc5

for.inc5:                                         ; preds = %for.body4
  %4 = load i32, i32* %i, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond2, !llvm.loop !6

for.end6:                                         ; preds = %for.cond2
  br label %if.end

if.end:                                           ; preds = %for.end6, %for.end
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
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
