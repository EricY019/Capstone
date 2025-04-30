; ModuleID = 'code/070-32207task_1.c'
source_filename = "code/070-32207task_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%c - %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i8, align 1
  %a = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i8 96, i8* %c, align 1
  store i32 97, i32* %a, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %a, align 4
  %cmp = icmp sle i32 %0, 122
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8, i8* %c, align 1
  %inc = add i8 %1, 1
  store i8 %inc, i8* %c, align 1
  %2 = load i8, i8* %c, align 1
  %conv = sext i8 %2 to i32
  %3 = load i32, i32* %a, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %conv, i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %a, align 4
  %inc1 = add nsw i32 %4, 1
  store i32 %inc1, i32* %a, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i8 64, i8* %c, align 1
  store i32 65, i32* %a, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc9, %for.end
  %5 = load i32, i32* %a, align 4
  %cmp3 = icmp sle i32 %5, 90
  br i1 %cmp3, label %for.body5, label %for.end11

for.body5:                                        ; preds = %for.cond2
  %6 = load i8, i8* %c, align 1
  %inc6 = add i8 %6, 1
  store i8 %inc6, i8* %c, align 1
  %7 = load i8, i8* %c, align 1
  %conv7 = sext i8 %7 to i32
  %8 = load i32, i32* %a, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %conv7, i32 %8)
  br label %for.inc9

for.inc9:                                         ; preds = %for.body5
  %9 = load i32, i32* %a, align 4
  %inc10 = add nsw i32 %9, 1
  store i32 %inc10, i32* %a, align 4
  br label %for.cond2, !llvm.loop !6

for.end11:                                        ; preds = %for.cond2
  store i8 47, i8* %c, align 1
  store i32 48, i32* %a, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc19, %for.end11
  %10 = load i32, i32* %a, align 4
  %cmp13 = icmp sle i32 %10, 57
  br i1 %cmp13, label %for.body15, label %for.end21

for.body15:                                       ; preds = %for.cond12
  %11 = load i8, i8* %c, align 1
  %inc16 = add i8 %11, 1
  store i8 %inc16, i8* %c, align 1
  %12 = load i8, i8* %c, align 1
  %conv17 = sext i8 %12 to i32
  %13 = load i32, i32* %a, align 4
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %conv17, i32 %13)
  br label %for.inc19

for.inc19:                                        ; preds = %for.body15
  %14 = load i32, i32* %a, align 4
  %inc20 = add nsw i32 %14, 1
  store i32 %inc20, i32* %a, align 4
  br label %for.cond12, !llvm.loop !7

for.end21:                                        ; preds = %for.cond12
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
