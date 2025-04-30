; ModuleID = 'code/357-6533christmas_tree.c'
source_filename = "code/357-6533christmas_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %current_row = alloca i32, align 4
  %max_rows = alloca i32, align 4
  %i = alloca i32, align 4
  %i20 = alloca i32, align 4
  %i47 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 4, i32* %max_rows, align 4
  store i32 0, i32* %current_row, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i32, i32* %current_row, align 4
  %1 = load i32, i32* %max_rows, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %max_rows, align 4
  %4 = load i32, i32* %current_row, align 4
  %sub = sub nsw i32 %3, %4
  %sub2 = sub nsw i32 %sub, 1
  %cmp3 = icmp slt i32 %2, %sub2
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond1
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  store i32 0, i32* %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc9, %for.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %current_row, align 4
  %mul = mul nsw i32 2, %7
  %add = add nsw i32 1, %mul
  %cmp6 = icmp slt i32 %6, %add
  br i1 %cmp6, label %for.body7, label %for.end11

for.body7:                                        ; preds = %for.cond5
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %for.inc9

for.inc9:                                         ; preds = %for.body7
  %8 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %8, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond5, !llvm.loop !6

for.end11:                                        ; preds = %for.cond5
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %for.inc13

for.inc13:                                        ; preds = %for.end11
  %9 = load i32, i32* %current_row, align 4
  %inc14 = add nsw i32 %9, 1
  store i32 %inc14, i32* %current_row, align 4
  br label %for.cond, !llvm.loop !7

for.end15:                                        ; preds = %for.cond
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 7, i32* %max_rows, align 4
  store i32 0, i32* %current_row, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc40, %for.end15
  %10 = load i32, i32* %current_row, align 4
  %11 = load i32, i32* %max_rows, align 4
  %cmp18 = icmp slt i32 %10, %11
  br i1 %cmp18, label %for.body19, label %for.end42

for.body19:                                       ; preds = %for.cond17
  store i32 0, i32* %i20, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc27, %for.body19
  %12 = load i32, i32* %i20, align 4
  %13 = load i32, i32* %max_rows, align 4
  %14 = load i32, i32* %current_row, align 4
  %sub22 = sub nsw i32 %13, %14
  %sub23 = sub nsw i32 %sub22, 1
  %cmp24 = icmp slt i32 %12, %sub23
  br i1 %cmp24, label %for.body25, label %for.end29

for.body25:                                       ; preds = %for.cond21
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %for.inc27

for.inc27:                                        ; preds = %for.body25
  %15 = load i32, i32* %i20, align 4
  %inc28 = add nsw i32 %15, 1
  store i32 %inc28, i32* %i20, align 4
  br label %for.cond21, !llvm.loop !8

for.end29:                                        ; preds = %for.cond21
  store i32 0, i32* %i20, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc36, %for.end29
  %16 = load i32, i32* %i20, align 4
  %17 = load i32, i32* %current_row, align 4
  %mul31 = mul nsw i32 2, %17
  %add32 = add nsw i32 1, %mul31
  %cmp33 = icmp slt i32 %16, %add32
  br i1 %cmp33, label %for.body34, label %for.end38

for.body34:                                       ; preds = %for.cond30
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %for.inc36

for.inc36:                                        ; preds = %for.body34
  %18 = load i32, i32* %i20, align 4
  %inc37 = add nsw i32 %18, 1
  store i32 %inc37, i32* %i20, align 4
  br label %for.cond30, !llvm.loop !9

for.end38:                                        ; preds = %for.cond30
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %for.inc40

for.inc40:                                        ; preds = %for.end38
  %19 = load i32, i32* %current_row, align 4
  %inc41 = add nsw i32 %19, 1
  store i32 %inc41, i32* %current_row, align 4
  br label %for.cond17, !llvm.loop !10

for.end42:                                        ; preds = %for.cond17
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 11, i32* %max_rows, align 4
  store i32 0, i32* %current_row, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc67, %for.end42
  %20 = load i32, i32* %current_row, align 4
  %21 = load i32, i32* %max_rows, align 4
  %cmp45 = icmp slt i32 %20, %21
  br i1 %cmp45, label %for.body46, label %for.end69

for.body46:                                       ; preds = %for.cond44
  store i32 0, i32* %i47, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc54, %for.body46
  %22 = load i32, i32* %i47, align 4
  %23 = load i32, i32* %max_rows, align 4
  %24 = load i32, i32* %current_row, align 4
  %sub49 = sub nsw i32 %23, %24
  %sub50 = sub nsw i32 %sub49, 1
  %cmp51 = icmp slt i32 %22, %sub50
  br i1 %cmp51, label %for.body52, label %for.end56

for.body52:                                       ; preds = %for.cond48
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %for.inc54

for.inc54:                                        ; preds = %for.body52
  %25 = load i32, i32* %i47, align 4
  %inc55 = add nsw i32 %25, 1
  store i32 %inc55, i32* %i47, align 4
  br label %for.cond48, !llvm.loop !11

for.end56:                                        ; preds = %for.cond48
  store i32 0, i32* %i47, align 4
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc63, %for.end56
  %26 = load i32, i32* %i47, align 4
  %27 = load i32, i32* %current_row, align 4
  %mul58 = mul nsw i32 2, %27
  %add59 = add nsw i32 1, %mul58
  %cmp60 = icmp slt i32 %26, %add59
  br i1 %cmp60, label %for.body61, label %for.end65

for.body61:                                       ; preds = %for.cond57
  %call62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %for.inc63

for.inc63:                                        ; preds = %for.body61
  %28 = load i32, i32* %i47, align 4
  %inc64 = add nsw i32 %28, 1
  store i32 %inc64, i32* %i47, align 4
  br label %for.cond57, !llvm.loop !12

for.end65:                                        ; preds = %for.cond57
  %call66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %for.inc67

for.inc67:                                        ; preds = %for.end65
  %29 = load i32, i32* %current_row, align 4
  %inc68 = add nsw i32 %29, 1
  store i32 %inc68, i32* %current_row, align 4
  br label %for.cond44, !llvm.loop !13

for.end69:                                        ; preds = %for.cond44
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
!13 = distinct !{!13, !5}
