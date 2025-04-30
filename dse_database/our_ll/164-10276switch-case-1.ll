; ModuleID = 'code/164-10276switch-case-1.c'
source_filename = "code/164-10276switch-case-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb4
    i32 5, label %sw.bb6
    i32 6, label %sw.bb8
    i32 7, label %sw.bb10
    i32 8, label %sw.bb12
    i32 9, label %sw.bb14
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* @g, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @g, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %2 = load i32, i32* @g, align 4
  %add = add nsw i32 %2, 2
  store i32 %add, i32* @g, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %3 = load i32, i32* @g, align 4
  %add3 = add nsw i32 %3, 1
  store i32 %add3, i32* @g, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %4 = load i32, i32* @g, align 4
  %add5 = add nsw i32 %4, 3
  store i32 %add5, i32* @g, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %5 = load i32, i32* @g, align 4
  %add7 = add nsw i32 %5, 4
  store i32 %add7, i32* @g, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %6 = load i32, i32* @g, align 4
  %add9 = add nsw i32 %6, 5
  store i32 %add9, i32* @g, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %7 = load i32, i32* @g, align 4
  %add11 = add nsw i32 %7, 6
  store i32 %add11, i32* @g, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %8 = load i32, i32* @g, align 4
  %add13 = add nsw i32 %8, 7
  store i32 %add13, i32* @g, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %9 = load i32, i32* @g, align 4
  %add15 = add nsw i32 %9, 8
  store i32 %add15, i32* @g, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %10 = load i32, i32* @g, align 4
  %add16 = add nsw i32 %10, 8
  store i32 %add16, i32* @g, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %1, %2
  %rem = srem i32 %mul, 5
  call void @foo(i32 %rem)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
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
