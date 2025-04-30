; ModuleID = 'code/239-28913pr98474.c'
source_filename = "code/239-28913pr98474.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i128* %x) #0 {
entry:
  %x.addr = alloca i128*, align 8
  store i128* %x, i128** %x.addr, align 8
  %0 = load i128*, i128** %x.addr, align 8
  %1 = load i128, i128* %0, align 16
  %add = add i128 %1, 36893488147419103232
  store i128 %add, i128* %0, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i128, align 16
  %b = alloca i128, align 16
  %n = alloca i128, align 16
  store i32 0, i32* %retval, align 4
  store i128 36893488147419103232, i128* %a, align 16
  %0 = load i128, i128* %a, align 16
  store i128 %0, i128* %b, align 16
  call void @foo(i128* %b)
  %1 = load i128, i128* %b, align 16
  store i128 %1, i128* %n, align 16
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i128, i128* %n, align 16
  %3 = load i128, i128* %a, align 16
  %cmp = icmp uge i128 %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i128, i128* %a, align 16
  %5 = load i128, i128* %n, align 16
  %sub = sub i128 %5, %4
  store i128 %sub, i128* %n, align 16
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %6 = load i128, i128* %n, align 16
  %shr = lshr i128 %6, 64
  %conv = trunc i128 %shr to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %while.end
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
