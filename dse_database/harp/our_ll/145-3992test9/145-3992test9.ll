; ModuleID = 'code/145-3992test9.c'
source_filename = "code/145-3992test9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"while\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"do while\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"for\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %1 = load i32, i32* %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.end
  %call1 = call i32 @puts(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %2 = load i32, i32* %i, align 4
  %inc2 = add nsw i32 %2, 1
  store i32 %inc2, i32* %i, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %3 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %3, 10
  br i1 %cmp3, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %i, align 4
  br label %while.cond4

while.cond4:                                      ; preds = %while.body6, %do.end
  %4 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %4, 5
  br i1 %cmp5, label %while.body6, label %while.end9

while.body6:                                      ; preds = %while.cond4
  %call7 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %5, 1
  store i32 %inc8, i32* %i, align 4
  br label %while.cond4, !llvm.loop !7

while.end9:                                       ; preds = %while.cond4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end9
  %6 = load i32, i32* %j, align 4
  %cmp10 = icmp slt i32 %6, 3
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call11 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %j, align 4
  %inc12 = add nsw i32 %7, 1
  store i32 %inc12, i32* %j, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare dso_local i32 @puts(i8*) #1

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
