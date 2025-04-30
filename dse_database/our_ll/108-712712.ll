; ModuleID = 'code/108-712712.c'
source_filename = "code/108-712712.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unknown1() #0 {
entry:
  %x = alloca i32, align 4
  %0 = load i32, i32* %x, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unknown2() #0 {
entry:
  %x = alloca i32, align 4
  %0 = load i32, i32* %x, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %flag = alloca i32, align 4
  %t = alloca i32, align 4
  %s = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @unknown1()
  store i32 %call, i32* %flag, align 4
  store i32 0, i32* %t, align 4
  store i32 0, i32* %s, align 4
  store i32 0, i32* %a, align 4
  store i32 0, i32* %b, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call1 = call i32 @unknown1()
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i32, i32* %a, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %a, align 4
  %1 = load i32, i32* %b, align 4
  %inc2 = add nsw i32 %1, 1
  store i32 %inc2, i32* %b, align 4
  %2 = load i32, i32* %a, align 4
  %3 = load i32, i32* %s, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, i32* %s, align 4
  %4 = load i32, i32* %b, align 4
  %5 = load i32, i32* %t, align 4
  %add3 = add nsw i32 %5, %4
  store i32 %add3, i32* %t, align 4
  %6 = load i32, i32* %flag, align 4
  %tobool4 = icmp ne i32 %6, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load i32, i32* %a, align 4
  %8 = load i32, i32* %t, align 4
  %add5 = add nsw i32 %8, %7
  store i32 %add5, i32* %t, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %9 = load i32, i32* %t, align 4
  store i32 %9, i32* %t, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %x, align 4
  %10 = load i32, i32* %flag, align 4
  %tobool6 = icmp ne i32 %10, 0
  br i1 %tobool6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %while.end
  %11 = load i32, i32* %t, align 4
  %12 = load i32, i32* %s, align 4
  %mul = mul nsw i32 2, %12
  %sub = sub nsw i32 %11, %mul
  %add8 = add nsw i32 %sub, 2
  store i32 %add8, i32* %x, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %while.end
  store i32 0, i32* %y, align 4
  br label %while.cond10

while.cond10:                                     ; preds = %if.end17, %if.end9
  %13 = load i32, i32* %y, align 4
  %14 = load i32, i32* %x, align 4
  %cmp = icmp sle i32 %13, %14
  br i1 %cmp, label %while.body11, label %while.end18

while.body11:                                     ; preds = %while.cond10
  %call12 = call i32 @unknown2()
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.else

if.then14:                                        ; preds = %while.body11
  %15 = load i32, i32* %y, align 4
  %inc15 = add nsw i32 %15, 1
  store i32 %inc15, i32* %y, align 4
  br label %if.end17

if.else:                                          ; preds = %while.body11
  %16 = load i32, i32* %y, align 4
  %add16 = add nsw i32 %16, 2
  store i32 %add16, i32* %y, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then14
  %17 = load i32, i32* %y, align 4
  store i32 %17, i32* %y, align 4
  br label %while.cond10, !llvm.loop !6

while.end18:                                      ; preds = %while.cond10
  %18 = load i32, i32* %y, align 4
  %cmp19 = icmp sge i32 %18, 5
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %while.end18
  br label %ERROR

ERROR:                                            ; preds = %if.then20
  br label %if.end21

if.end21:                                         ; preds = %ERROR, %while.end18
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
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
