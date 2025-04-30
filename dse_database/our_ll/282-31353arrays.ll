; ModuleID = 'code/282-31353arrays.c'
source_filename = "code/282-31353arrays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@array = dso_local global [3 x i32] zeroinitializer, align 4
@i = dso_local global i32 0, align 4
@j = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"i %d j %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @array, i64 0, i64 0), align 4
  store i32 2, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @array, i64 0, i64 1), align 4
  store i32 3, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @array, i64 0, i64 2), align 4
  store i32 0, i32* @i, align 4
  store i32 10, i32* @j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* @i, align 4
  %1 = load i32, i32* @j, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* @i, align 4
  %3 = load i32, i32* @j, align 4
  %add = add nsw i32 %2, %3
  store i32 %add, i32* @i, align 4
  %4 = load i32, i32* @j, align 4
  %5 = load i32, i32* @i, align 4
  %div = sdiv i32 %4, %5
  %6 = load i32, i32* @j, align 4
  %add1 = add nsw i32 %div, %6
  store i32 %add1, i32* @j, align 4
  %7 = load i32, i32* @i, align 4
  %8 = load i32, i32* @j, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8)
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
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
