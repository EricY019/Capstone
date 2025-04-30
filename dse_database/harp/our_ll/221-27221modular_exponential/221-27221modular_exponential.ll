; ModuleID = 'code/221-27221modular_exponential.c'
source_filename = "code/221-27221modular_exponential.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @modularExponential(i64 %base, i64 %power, i64 %mod) #0 {
entry:
  %base.addr = alloca i64, align 8
  %power.addr = alloca i64, align 8
  %mod.addr = alloca i64, align 8
  %answer = alloca i64, align 8
  store i64 %base, i64* %base.addr, align 8
  store i64 %power, i64* %power.addr, align 8
  store i64 %mod, i64* %mod.addr, align 8
  store i64 1, i64* %answer, align 8
  %0 = load i64, i64* %base.addr, align 8
  %1 = load i64, i64* %mod.addr, align 8
  %rem = srem i64 %0, %1
  store i64 %rem, i64* %base.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i64, i64* %power.addr, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, i64* %power.addr, align 8
  %and = and i64 %3, 1
  %tobool1 = icmp ne i64 %and, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load i64, i64* %answer, align 8
  %5 = load i64, i64* %base.addr, align 8
  %mul = mul nsw i64 %4, %5
  %6 = load i64, i64* %mod.addr, align 8
  %rem2 = srem i64 %mul, %6
  store i64 %rem2, i64* %answer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %7 = load i64, i64* %power.addr, align 8
  %shr = ashr i64 %7, 1
  store i64 %shr, i64* %power.addr, align 8
  %8 = load i64, i64* %base.addr, align 8
  %9 = load i64, i64* %base.addr, align 8
  %mul3 = mul nsw i64 %8, %9
  %10 = load i64, i64* %mod.addr, align 8
  %rem4 = srem i64 %mul3, %10
  store i64 %rem4, i64* %base.addr, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %11 = load i64, i64* %answer, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %base = alloca i64, align 8
  %power = alloca i64, align 8
  %mod = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i64 2, i64* %base, align 8
  store i64 10, i64* %power, align 8
  store i64 100000, i64* %mod, align 8
  %0 = load i64, i64* %base, align 8
  %1 = load i64, i64* %power, align 8
  %2 = load i64, i64* %mod, align 8
  %call = call i64 @modularExponential(i64 %0, i64 %1, i64 %2)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %call)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
