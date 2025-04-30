; ModuleID = 'code/099-35012pr90131.c'
source_filename = "code/099-35012pr90131.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global [9 x [1 x i32]] zeroinitializer, align 16
@a = dso_local global i64 0, align 8
@c = internal global [2 x [1 x i16]] [[1 x i16] [i16 3], [1 x i16] zeroinitializer], align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optimize_me_not() #0 {
entry:
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [9 x [1 x i32]], [9 x [1 x i32]]* @b, i64 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [1 x i32], [1 x i32]* %arrayidx, i64 0, i64 0
  %2 = load i32, i32* %arrayidx1, align 4
  %conv = sext i32 %2 to i64
  store volatile i64 %conv, i64* @a, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc25, %for.end
  %4 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %4, 2
  br i1 %cmp3, label %for.body5, label %for.end27

for.body5:                                        ; preds = %for.cond2
  store i32 0, i32* %d, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc22, %for.body5
  %5 = load i32, i32* %d, align 4
  %cmp7 = icmp slt i32 %5, 1
  br i1 %cmp7, label %for.body9, label %for.end24

for.body9:                                        ; preds = %for.cond6
  store i32 0, i32* %e, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc19, %for.body9
  %6 = load i32, i32* %e, align 4
  %cmp11 = icmp slt i32 %6, 1
  br i1 %cmp11, label %for.body13, label %for.end21

for.body13:                                       ; preds = %for.cond10
  %7 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %7 to i64
  %arrayidx15 = getelementptr inbounds [2 x [1 x i16]], [2 x [1 x i16]]* @c, i64 0, i64 %idxprom14
  %8 = load i32, i32* %e, align 4
  %idxprom16 = sext i32 %8 to i64
  %arrayidx17 = getelementptr inbounds [1 x i16], [1 x i16]* %arrayidx15, i64 0, i64 %idxprom16
  %9 = load i16, i16* %arrayidx17, align 2
  %conv18 = sext i16 %9 to i64
  store volatile i64 %conv18, i64* @a, align 8
  br label %for.inc19

for.inc19:                                        ; preds = %for.body13
  %10 = load i32, i32* %e, align 4
  %inc20 = add nsw i32 %10, 1
  store i32 %inc20, i32* %e, align 4
  br label %for.cond10, !llvm.loop !7

for.end21:                                        ; preds = %for.cond10
  call void @optimize_me_not()
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %11 = load i32, i32* %d, align 4
  %inc23 = add nsw i32 %11, 1
  store i32 %inc23, i32* %d, align 4
  br label %for.cond6, !llvm.loop !8

for.end24:                                        ; preds = %for.cond6
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %12 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %12, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond2, !llvm.loop !9

for.end27:                                        ; preds = %for.cond2
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = !{i64 121}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
