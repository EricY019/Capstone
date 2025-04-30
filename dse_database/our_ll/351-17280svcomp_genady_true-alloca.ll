; ModuleID = 'code/351-17280svcomp_genady_true-alloca.c'
source_filename = "code/351-17280svcomp_genady_true-alloca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32*, align 8
  %j = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  %0 = alloca i8, i64 4, align 16
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %i, align 8
  %2 = alloca i8, i64 4, align 16
  %3 = bitcast i8* %2 to i32*
  store i32* %3, i32** %j, align 8
  %4 = load i32*, i32** %j, align 8
  store i32 1, i32* %4, align 4
  %5 = load i32*, i32** %i, align 8
  store i32 10000, i32* %5, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32*, i32** %i, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load i32*, i32** %j, align 8
  %9 = load i32, i32* %8, align 4
  %sub = sub nsw i32 %7, %9
  %cmp = icmp sge i32 %sub, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32*, i32** %j, align 8
  %11 = load i32, i32* %10, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32*, i32** %i, align 8
  %13 = load i32, i32* %12, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %12, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
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
