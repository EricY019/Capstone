; ModuleID = 'code/330-10720pr83668.c'
source_filename = "code/330-10720pr83668.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@d = dso_local global [14 x i32] zeroinitializer, align 16
@c = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %e = alloca i16, align 2
  %f = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %0 = load i32, i32* @b, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  store i16 0, i16* %e, align 2
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc9, %for.body
  %1 = load i16, i16* %e, align 2
  %conv = sext i16 %1 to i32
  %cmp2 = icmp slt i32 %conv, 2
  br i1 %cmp2, label %for.body4, label %for.end11

for.body4:                                        ; preds = %for.cond1
  store i32 0, i32* @a, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %2 = load i32, i32* @a, align 4
  %cmp6 = icmp slt i32 %2, 7
  br i1 %cmp6, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond5
  %3 = load i32, i32* @a, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [14 x i32], [14 x i32]* @d, i64 0, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %4 = load i32, i32* @a, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @a, align 4
  br label %for.cond5, !llvm.loop !4

for.end:                                          ; preds = %for.cond5
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %5 = load i16, i16* %e, align 2
  %inc10 = add i16 %5, 1
  store i16 %inc10, i16* %e, align 2
  br label %for.cond1, !llvm.loop !6

for.end11:                                        ; preds = %for.cond1
  %6 = load i32, i32* @c, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end11
  store i8 0, i8* %f, align 1
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc17, %if.then
  %7 = load i8, i8* %f, align 1
  %conv13 = sext i8 %7 to i32
  %cmp14 = icmp sge i32 %conv13, 0
  br i1 %cmp14, label %for.body16, label %for.end18

for.body16:                                       ; preds = %for.cond12
  br label %for.inc17

for.inc17:                                        ; preds = %for.body16
  %8 = load i8, i8* %f, align 1
  %dec = add i8 %8, -1
  store i8 %dec, i8* %f, align 1
  br label %for.cond12, !llvm.loop !7

for.end18:                                        ; preds = %for.cond12
  br label %if.end

if.end:                                           ; preds = %for.end18, %for.end11
  br label %for.inc19

for.inc19:                                        ; preds = %if.end
  %9 = load i32, i32* @b, align 4
  %dec20 = add nsw i32 %9, -1
  store i32 %dec20, i32* @b, align 4
  br label %for.cond, !llvm.loop !8

for.end21:                                        ; preds = %for.cond
  %10 = load i32, i32* @a, align 4
  %cmp22 = icmp ne i32 %10, 7
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.end21
  call void @abort() #2
  unreachable

if.end25:                                         ; preds = %for.end21
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
