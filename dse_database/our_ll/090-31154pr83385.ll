; ModuleID = 'code/090-31154pr83385.c'
source_filename = "code/090-31154pr83385.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@n1 = dso_local global i32 0, align 4
@xc = dso_local global i32 0, align 4
@bx = dso_local global [2 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %aj = alloca i32, align 4
  %cs = alloca i32, align 4
  %sq = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %aj, align 4
  %0 = load i32, i32* %aj, align 4
  store i32 %0, i32* %cs, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %1 = load i32, i32* %cs, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %sq, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc8, %for.body
  %2 = load i32, i32* %sq, align 4
  %cmp2 = icmp slt i32 %2, 2
  br i1 %cmp2, label %for.body3, label %for.end10

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, i32* %aj, align 4
  %cmp4 = icmp ne i32 %3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %4 = load i32, i32* @n1, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* @n1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  store i32 0, i32* @xc, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %if.end
  %5 = load i32, i32* @xc, align 4
  %cmp6 = icmp slt i32 %5, 2
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %6 = load i32, i32* @xc, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* @bx, i64 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %7 = load i32, i32* @xc, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* @xc, align 4
  br label %for.cond5, !llvm.loop !4

for.end:                                          ; preds = %for.cond5
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %8 = load i32, i32* %sq, align 4
  %inc9 = add nsw i32 %8, 1
  store i32 %inc9, i32* %sq, align 4
  br label %for.cond1, !llvm.loop !6

for.end10:                                        ; preds = %for.cond1
  %9 = load i32, i32* %aj, align 4
  %dec11 = add nsw i32 %9, -1
  store i32 %dec11, i32* %aj, align 4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end10
  %10 = load i32, i32* %cs, align 4
  %dec13 = add nsw i32 %10, -1
  store i32 %dec13, i32* %cs, align 4
  br label %for.cond, !llvm.loop !7

for.end14:                                        ; preds = %for.cond
  %11 = load i32, i32* @n1, align 4
  %cmp15 = icmp ne i32 %11, -2
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.end14
  call void @abort() #2
  unreachable

if.end17:                                         ; preds = %for.end14
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
