; ModuleID = 'code/048-34449while.c'
source_filename = "code/048-34449while.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %num_times_run = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %a, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %a, align 4
  %cmp = icmp ne i32 %0, 5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %a, align 4
  %add = add nsw i32 %1, 1
  store i32 %add, i32* %a, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %2 = load i32, i32* %a, align 4
  %cmp1 = icmp ne i32 %2, 5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.end
  store i32 0, i32* %b, align 4
  store i32 0, i32* %a, align 4
  br label %while.cond2

while.cond2:                                      ; preds = %while.body4, %if.end
  %3 = load i32, i32* %a, align 4
  %cmp3 = icmp ne i32 %3, 5
  br i1 %cmp3, label %while.body4, label %while.end7

while.body4:                                      ; preds = %while.cond2
  %4 = load i32, i32* %b, align 4
  %5 = load i32, i32* %a, align 4
  %add5 = add nsw i32 %4, %5
  store i32 %add5, i32* %b, align 4
  %6 = load i32, i32* %a, align 4
  %add6 = add nsw i32 %6, 1
  store i32 %add6, i32* %a, align 4
  br label %while.cond2, !llvm.loop !6

while.end7:                                       ; preds = %while.cond2
  %7 = load i32, i32* %a, align 4
  %cmp8 = icmp ne i32 %7, 5
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %while.end7
  store i32 2, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %while.end7
  %8 = load i32, i32* %b, align 4
  %cmp11 = icmp ne i32 %8, 10
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  store i32 3, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end10
  br label %while.cond14

while.cond14:                                     ; preds = %if.end13
  %9 = load i32, i32* %b, align 4
  %cmp15 = icmp eq i32 %9, 100
  br i1 %cmp15, label %while.body16, label %while.end17

while.body16:                                     ; preds = %while.cond14
  store i32 4, i32* %retval, align 4
  br label %return

while.end17:                                      ; preds = %while.cond14
  store i32 0, i32* %num_times_run, align 4
  br label %while.cond18

while.cond18:                                     ; preds = %if.end25, %while.end17
  %10 = load i32, i32* %b, align 4
  %cmp19 = icmp eq i32 %10, 10
  br i1 %cmp19, label %while.body20, label %while.end26

while.body20:                                     ; preds = %while.cond18
  %11 = load i32, i32* %b, align 4
  %add21 = add nsw i32 %11, 1
  store i32 %add21, i32* %b, align 4
  %12 = load i32, i32* %num_times_run, align 4
  %add22 = add nsw i32 %12, 1
  store i32 %add22, i32* %num_times_run, align 4
  %13 = load i32, i32* %num_times_run, align 4
  %cmp23 = icmp ne i32 %13, 1
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %while.body20
  store i32 5, i32* %retval, align 4
  br label %return

if.end25:                                         ; preds = %while.body20
  br label %while.cond18, !llvm.loop !7

while.end26:                                      ; preds = %while.cond18
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end26, %if.then24, %while.body16, %if.then12, %if.then9, %if.then
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
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
