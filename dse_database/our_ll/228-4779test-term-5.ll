; ModuleID = 'code/228-4779test-term-5.c'
source_filename = "code/228-4779test-term-5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @foo(i32* %p, i32* %A, i32* %B, i32 %n) #0 {
entry:
  %p.addr = alloca i32*, align 8
  %A.addr = alloca i32*, align 8
  %B.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %numNonZero = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  store i32* %A, i32** %A.addr, align 8
  store i32* %B, i32** %B.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %numNonZero, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %numNonZero, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %numNonZero, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32*, i32** %A.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %2, i32 1
  store i32* %incdec.ptr, i32** %A.addr, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load i32*, i32** %B.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i32, i32* %4, i32 1
  store i32* %incdec.ptr1, i32** %B.addr, align 8
  %5 = load i32, i32* %4, align 4
  %mul = mul nsw i32 %3, %5
  %6 = load i32*, i32** %p.addr, align 8
  %7 = load i32, i32* %6, align 4
  %mul2 = mul nsw i32 %7, %mul
  store i32 %mul2, i32* %6, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %8 = load i32*, i32** %p.addr, align 8
  %9 = load i32, i32* %8, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %p = alloca i32, align 4
  %A = alloca [10 x i32], align 16
  %B = alloca [10 x i32], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [10 x i32]* %A to i32*
  %1 = bitcast [10 x i32]* %B to i32*
  %call = call i32 @foo(i32* %p, i32* %0, i32* %1, i32 10)
  ret i32 %call
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
