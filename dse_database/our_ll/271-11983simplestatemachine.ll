; ModuleID = 'code/271-11983simplestatemachine.c'
source_filename = "code/271-11983simplestatemachine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca i32, align 4
  %counter = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %s, align 4
  store i32 0, i32* %counter, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %entry
  %0 = load i32, i32* %s, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %counter, align 4
  %2 = load i32, i32* %counter, align 4
  %cmp1 = icmp eq i32 %2, 5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %s, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  store i32 1, i32* %s, align 4
  br i1 true, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load i32, i32* %counter, align 4
  %sub = sub nsw i32 %3, 2
  store i32 %sub, i32* %counter, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i32, i32* %counter, align 4
  %cmp4 = icmp eq i32 %4, -5
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i32 2, i32* %s, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
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
