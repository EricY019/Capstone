; ModuleID = 'code/157-13872pr81573.c'
source_filename = "code/157-13872pr81573.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 1, align 4
@c = dso_local global i32* @a, align 8
@b = dso_local global i8 0, align 1
@d = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* @b, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sgt i32 %conv, -27
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8, i8* @b, align 1
  %conv2 = sext i8 %1 to i32
  %2 = load i32*, i32** @c, align 8
  %3 = load i32, i32* %2, align 4
  %xor = xor i32 %3, %conv2
  store i32 %xor, i32* %2, align 4
  %4 = load i32*, i32** @c, align 8
  %5 = load i32, i32* %4, align 4
  %xor3 = xor i32 %5, 1
  store i32 %xor3, i32* %4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i8, i8* @b, align 1
  %dec = add i8 %6, -1
  store i8 %dec, i8* @b, align 1
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %7 = load i32, i32* @a, align 4
  %cmp4 = icmp sgt i32 %7, 1
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !6

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
!6 = distinct !{!6, !5}
