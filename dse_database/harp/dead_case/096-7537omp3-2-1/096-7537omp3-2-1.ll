; ModuleID = 'code/096-7537omp3-2-1.c'
source_filename = "code/096-7537omp3-2-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [5000 x [5000 x i32]] zeroinitializer, align 16
@b = dso_local global [5000 x [5000 x i32]] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 5000
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 5000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %j, align 4
  %add = add nsw i32 %2, %3
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [5000 x [5000 x i32]], [5000 x [5000 x i32]]* @a, i64 0, i64 %idxprom
  %5 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [5000 x i32], [5000 x i32]* %arrayidx, i64 0, i64 %idxprom4
  store i32 %add, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, i32* %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %7 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %7, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end8:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc22, %for.end8
  %8 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %8, 5000
  br i1 %cmp10, label %for.body11, label %for.end24

for.body11:                                       ; preds = %for.cond9
  store i32 0, i32* %j, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc19, %for.body11
  %9 = load i32, i32* %j, align 4
  %cmp13 = icmp slt i32 %9, 5000
  br i1 %cmp13, label %for.body14, label %for.end21

for.body14:                                       ; preds = %for.cond12
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %10, %11
  %12 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [5000 x [5000 x i32]], [5000 x [5000 x i32]]* @b, i64 0, i64 %idxprom15
  %13 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %13 to i64
  %arrayidx18 = getelementptr inbounds [5000 x i32], [5000 x i32]* %arrayidx16, i64 0, i64 %idxprom17
  store i32 %sub, i32* %arrayidx18, align 4
  br label %for.inc19

for.inc19:                                        ; preds = %for.body14
  %14 = load i32, i32* %j, align 4
  %inc20 = add nsw i32 %14, 1
  store i32 %inc20, i32* %j, align 4
  br label %for.cond12, !llvm.loop !7

for.end21:                                        ; preds = %for.cond12
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %15 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %15, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond9, !llvm.loop !8

for.end24:                                        ; preds = %for.cond9
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc39, %for.end24
  %16 = load i32, i32* %i, align 4
  %cmp26 = icmp slt i32 %16, 5000
  br i1 %cmp26, label %for.body27, label %for.end41

for.body27:                                       ; preds = %for.cond25
  store i32 0, i32* %j, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc36, %for.body27
  %17 = load i32, i32* %j, align 4
  %cmp29 = icmp slt i32 %17, 5000
  br i1 %cmp29, label %for.body30, label %for.end38

for.body30:                                       ; preds = %for.cond28
  %18 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %18 to i64
  %arrayidx32 = getelementptr inbounds [5000 x [5000 x i32]], [5000 x [5000 x i32]]* @a, i64 0, i64 %idxprom31
  %19 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %19 to i64
  %arrayidx34 = getelementptr inbounds [5000 x i32], [5000 x i32]* %arrayidx32, i64 0, i64 %idxprom33
  %20 = load i32, i32* %arrayidx34, align 4
  %21 = load i32, i32* %sum, align 4
  %add35 = add nsw i32 %21, %20
  store i32 %add35, i32* %sum, align 4
  %22 = load i32, i32* %sum, align 4
  %rem = srem i32 %22, 1000000000
  store i32 %rem, i32* %sum, align 4
  br label %for.inc36

for.inc36:                                        ; preds = %for.body30
  %23 = load i32, i32* %j, align 4
  %inc37 = add nsw i32 %23, 1
  store i32 %inc37, i32* %j, align 4
  br label %for.cond28, !llvm.loop !9

for.end38:                                        ; preds = %for.cond28
  br label %for.inc39

for.inc39:                                        ; preds = %for.end38
  %24 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %24, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond25, !llvm.loop !10

for.end41:                                        ; preds = %for.cond25
  %25 = load i32, i32* %sum, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc57, %for.end41
  %26 = load i32, i32* %i, align 4
  %cmp43 = icmp slt i32 %26, 5000
  br i1 %cmp43, label %for.body44, label %for.end59

for.body44:                                       ; preds = %for.cond42
  store i32 0, i32* %j, align 4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc54, %for.body44
  %27 = load i32, i32* %j, align 4
  %cmp46 = icmp slt i32 %27, 5000
  br i1 %cmp46, label %for.body47, label %for.end56

for.body47:                                       ; preds = %for.cond45
  %28 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %28 to i64
  %arrayidx49 = getelementptr inbounds [5000 x [5000 x i32]], [5000 x [5000 x i32]]* @b, i64 0, i64 %idxprom48
  %29 = load i32, i32* %j, align 4
  %idxprom50 = sext i32 %29 to i64
  %arrayidx51 = getelementptr inbounds [5000 x i32], [5000 x i32]* %arrayidx49, i64 0, i64 %idxprom50
  %30 = load i32, i32* %arrayidx51, align 4
  %31 = load i32, i32* %sum, align 4
  %add52 = add nsw i32 %31, %30
  store i32 %add52, i32* %sum, align 4
  %32 = load i32, i32* %sum, align 4
  %rem53 = srem i32 %32, 1000000000
  store i32 %rem53, i32* %sum, align 4
  br label %for.inc54

for.inc54:                                        ; preds = %for.body47
  %33 = load i32, i32* %j, align 4
  %inc55 = add nsw i32 %33, 1
  store i32 %inc55, i32* %j, align 4
  br label %for.cond45, !llvm.loop !11

for.end56:                                        ; preds = %for.cond45
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %34 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %34, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond42, !llvm.loop !12

for.end59:                                        ; preds = %for.cond42
  %35 = load i32, i32* %sum, align 4
  %call60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %35)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
