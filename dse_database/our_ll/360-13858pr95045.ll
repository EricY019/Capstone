; ModuleID = 'code/360-13858pr95045.c'
source_filename = "code/360-13858pr95045.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@f = dso_local global i32 0, align 4
@b = dso_local global i64 0, align 8
@d = dso_local global i8 0, align 1
@e = dso_local global [3 x i32] zeroinitializer, align 4
@c = dso_local global i32 0, align 4
@g = dso_local global [9 x [3 x [2 x i32]]] zeroinitializer, align 16
@a = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  br label %h

h:                                                ; preds = %if.then, %entry
  store i32 0, i32* @f, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %h
  %0 = load i32, i32* @f, align 4
  %cmp = icmp sle i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  store i64 3, i64* @b, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc22, %for.body
  %1 = load i64, i64* @b, align 8
  %cmp2 = icmp sge i64 %1, 0
  br i1 %cmp2, label %for.body3, label %for.end23

for.body3:                                        ; preds = %for.cond1
  store i8 0, i8* @d, align 1
  store i32 0, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @e, i64 0, i64 2), align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc19, %for.body3
  %2 = load i8, i8* @d, align 1
  %conv = sext i8 %2 to i32
  %cmp5 = icmp sle i32 %conv, 3
  br i1 %cmp5, label %for.body7, label %for.end21

for.body7:                                        ; preds = %for.cond4
  store i32 0, i32* @c, align 4
  store i32 0, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @e, i64 0, i64 1), align 4
  store i32 0, i32* getelementptr inbounds ([9 x [3 x [2 x i32]]], [9 x [3 x [2 x i32]]]* @g, i64 0, i64 8, i64 2, i64 0), align 16
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body7
  %3 = load i32, i32* @c, align 4
  %cmp9 = icmp sle i32 %3, 1
  br i1 %cmp9, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond8
  %4 = load i8, i8* @d, align 1
  %conv12 = sext i8 %4 to i32
  %add = add nsw i32 %conv12, 5
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [9 x [3 x [2 x i32]]], [9 x [3 x [2 x i32]]]* @g, i64 0, i64 %idxprom
  %arrayidx13 = getelementptr inbounds [3 x [2 x i32]], [3 x [2 x i32]]* %arrayidx, i64 0, i64 2
  %5 = load i32, i32* @c, align 4
  %idxprom14 = sext i32 %5 to i64
  %arrayidx15 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx13, i64 0, i64 %idxprom14
  store i32 4, i32* %arrayidx15, align 4
  %6 = load i32, i32* @c, align 4
  %add16 = add nsw i32 %6, 1
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds [3 x i32], [3 x i32]* @e, i64 0, i64 %idxprom17
  store i32 4, i32* %arrayidx18, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %7 = load i32, i32* @c, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* @c, align 4
  br label %for.cond8, !llvm.loop !4

for.end:                                          ; preds = %for.cond8
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %8 = load i8, i8* @d, align 1
  %inc20 = add i8 %8, 1
  store i8 %inc20, i8* @d, align 1
  br label %for.cond4, !llvm.loop !6

for.end21:                                        ; preds = %for.cond4
  %9 = load i32, i32* @a, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end21
  br label %h

if.end:                                           ; preds = %for.end21
  br label %for.inc22

for.inc22:                                        ; preds = %if.end
  %10 = load i64, i64* @b, align 8
  %dec = add nsw i64 %10, -1
  store i64 %dec, i64* @b, align 8
  br label %for.cond1, !llvm.loop !7

for.end23:                                        ; preds = %for.cond1
  br label %for.inc24

for.inc24:                                        ; preds = %for.end23
  %11 = load i32, i32* @f, align 4
  %inc25 = add nsw i32 %11, 1
  store i32 %inc25, i32* @f, align 4
  br label %for.cond, !llvm.loop !8

for.end26:                                        ; preds = %for.cond
  %12 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @e, i64 0, i64 2), align 4
  %cmp27 = icmp ne i32 %12, 4
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.end26
  call void @abort() #2
  unreachable

if.end30:                                         ; preds = %for.end26
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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
