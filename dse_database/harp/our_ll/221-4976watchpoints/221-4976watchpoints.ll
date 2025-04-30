; ModuleID = 'code/221-4976watchpoints.c'
source_filename = "code/221-4976watchpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@count = dso_local global i32 -1, align 4
@ival1 = dso_local global i32 -1, align 4
@ival2 = dso_local global i32 -1, align 4
@ival3 = dso_local global i32 -1, align 4
@ival4 = dso_local global i32 -1, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* @count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* @count, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* @count, align 4
  store i32 %1, i32* @ival1, align 4
  %2 = load i32, i32* @count, align 4
  store i32 %2, i32* @ival2, align 4
  %3 = load i32, i32* @count, align 4
  store i32 %3, i32* @ival3, align 4
  %4 = load i32, i32* @count, align 4
  store i32 %4, i32* @ival4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* @count, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @count, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* @count, align 4
  store i32 %6, i32* @ival1, align 4
  %7 = load i32, i32* @count, align 4
  store i32 %7, i32* @ival2, align 4
  %8 = load i32, i32* @count, align 4
  store i32 %8, i32* @ival3, align 4
  %9 = load i32, i32* @count, align 4
  store i32 %9, i32* @ival4, align 4
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
