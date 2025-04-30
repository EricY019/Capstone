; ModuleID = 'code/144-4458dowhile.c'
source_filename = "code/144-4458dowhile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, i32* %i, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %0)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %1 = load i32, i32* %i, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !4

do.end:                                           ; preds = %do.cond
  store i32 10, i32* %i, align 4
  br label %do.body1

do.body1:                                         ; preds = %do.cond3, %do.end
  %2 = load i32, i32* %i, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %2)
  br label %do.cond3

do.cond3:                                         ; preds = %do.body1
  %3 = load i32, i32* %i, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %i, align 4
  %tobool4 = icmp ne i32 %3, 0
  br i1 %tobool4, label %do.body1, label %do.end5, !llvm.loop !6

do.end5:                                          ; preds = %do.cond3
  %4 = load i32, i32* %i, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %4)
  store i32 10, i32* %i, align 4
  br label %do.body7

do.body7:                                         ; preds = %do.cond9, %do.end5
  %5 = load i32, i32* %i, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %5)
  br label %do.cond9

do.cond9:                                         ; preds = %do.body7
  %6 = load i32, i32* %i, align 4
  %dec10 = add nsw i32 %6, -1
  store i32 %dec10, i32* %i, align 4
  %tobool11 = icmp ne i32 %dec10, 0
  br i1 %tobool11, label %do.body7, label %do.end12, !llvm.loop !7

do.end12:                                         ; preds = %do.cond9
  %7 = load i32, i32* %i, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %7)
  br label %do.body14

do.body14:                                        ; preds = %do.cond20, %do.end12
  store i32 0, i32* %j, align 4
  br label %do.body15

do.body15:                                        ; preds = %do.cond17, %do.body14
  %8 = load i32, i32* %j, align 4
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %do.cond17

do.cond17:                                        ; preds = %do.body15
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  %cmp = icmp slt i32 %inc, 5
  br i1 %cmp, label %do.body15, label %do.end18, !llvm.loop !8

do.end18:                                         ; preds = %do.cond17
  %10 = load i32, i32* %i, align 4
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %do.cond20

do.cond20:                                        ; preds = %do.end18
  %11 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %11, 1
  store i32 %inc21, i32* %i, align 4
  %cmp22 = icmp slt i32 %11, 3
  br i1 %cmp22, label %do.body14, label %do.end23, !llvm.loop !9

do.end23:                                         ; preds = %do.cond20
  %12 = load i32, i32* %i, align 4
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %12)
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
