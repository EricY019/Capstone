; ModuleID = 'code/281-16822pr69067.c'
source_filename = "code/281-16822pr69067.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a1 = dso_local global i32 0, align 4
@c1 = dso_local global i32 0, align 4
@kt = dso_local global i32 0, align 4
@aa = dso_local global [2 x i32] zeroinitializer, align 4
@cr = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ce() #0 {
entry:
  %g8 = alloca i32, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end10, %entry
  %0 = load i32, i32* @a1, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %g8, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %1 = load i32, i32* %g8, align 4
  %cmp1 = icmp slt i32 %1, 3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* @c1, align 4
  %cmp2 = icmp ne i32 %2, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* @kt, align 4
  %4 = load i32, i32* @a1, align 4
  %mul = mul nsw i32 %4, 2
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @aa, i64 0, i64 %idxprom
  store i32 %3, i32* %arrayidx, align 4
  store i32 %3, i32* @cr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %g8, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %g8, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* @c1, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc8, %for.end
  %6 = load i32, i32* @c1, align 4
  %cmp4 = icmp slt i32 %6, 2
  br i1 %cmp4, label %for.body5, label %for.end10

for.body5:                                        ; preds = %for.cond3
  %7 = load i32, i32* @cr, align 4
  %8 = load i32, i32* @c1, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* @aa, i64 0, i64 %idxprom6
  store i32 %7, i32* %arrayidx7, align 4
  br label %for.inc8

for.inc8:                                         ; preds = %for.body5
  %9 = load i32, i32* @c1, align 4
  %inc9 = add nsw i32 %9, 1
  store i32 %inc9, i32* @c1, align 4
  br label %for.cond3, !llvm.loop !6

for.end10:                                        ; preds = %for.cond3
  %10 = load i32, i32* @a1, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, i32* @a1, align 4
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @ce()
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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
