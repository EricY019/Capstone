; ModuleID = 'code/342-24042pr87168.c'
source_filename = "code/342-24042pr87168.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@g = dso_local global i32* null, align 8
@c = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  br label %while.cond

while.cond:                                       ; preds = %L3, %entry
  %0 = load i32, i32* @b, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %L1

L1:                                               ; preds = %if.then7, %while.body
  %1 = load i32, i32* %j, align 4
  store i32 %1, i32* @f, align 4
  br label %L2

L2:                                               ; preds = %for.end, %if.then, %L1
  %2 = load i32, i32* %i, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %L2
  %3 = load i32, i32* @e, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* @f, align 4
  store i32 %4, i32* %i, align 4
  br label %L2

if.end:                                           ; preds = %land.lhs.true, %L2
  %5 = load i32, i32* @f, align 4
  store i32 %5, i32* %j, align 4
  %6 = load i32, i32* @a, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %L3

if.end5:                                          ; preds = %if.end
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %7 = load i32, i32* %m, align 4
  %cmp = icmp slt i32 %7, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* @d, align 4
  %tobool6 = icmp ne i32 %8, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.body
  br label %L1

if.end8:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %9 = load i32, i32* %m, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %m, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  br label %L2

L3:                                               ; preds = %if.then4
  %10 = load i32*, i32** @g, align 8
  %cmp9 = icmp ne i32* %j, %10
  %conv = zext i1 %cmp9 to i32
  %11 = load i32, i32* @c, align 4
  %or = or i32 %conv, %11
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
