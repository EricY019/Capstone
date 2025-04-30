; ModuleID = 'code/047-23130GopanReps-CAV2006-Fig1a_true-termination.c.c'
source_filename = "code/047-23130GopanReps-CAV2006-Fig1a_true-termination.c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %x, align 4
  store i32 0, i32* %y, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %y, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %x, align 4
  %cmp1 = icmp sle i32 %1, 50
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %2 = load i32, i32* %y, align 4
  %add = add nsw i32 %2, 1
  store i32 %add, i32* %y, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %3 = load i32, i32* %y, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %y, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %x, align 4
  %add2 = add nsw i32 %4, 1
  store i32 %add2, i32* %x, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
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
