; ModuleID = 'code/150-23350task_3.c'
source_filename = "code/150-23350task_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"(%d, %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 3, i32* %a, align 4
  store i32 5, i32* %b, align 4
  %0 = load i32, i32* %a, align 4
  %1 = load i32, i32* %b, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %0, i32 %1)
  store i32 5, i32* %a, align 4
  store i32 7, i32* %b, align 4
  %2 = load i32, i32* %a, align 4
  %3 = load i32, i32* %b, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %3)
  store i32 1, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 9
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %a, align 4
  %add = add nsw i32 %5, 1
  store i32 %add, i32* %a, align 4
  %6 = load i32, i32* %a, align 4
  %add2 = add nsw i32 %6, 2
  store i32 %add2, i32* %b, align 4
  %7 = load i32, i32* %a, align 4
  %rem = srem i32 %7, 2
  %cmp3 = icmp ne i32 %rem, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %8 = load i32, i32* %a, align 4
  %rem4 = srem i32 %8, 3
  %cmp5 = icmp ne i32 %rem4, 0
  br i1 %cmp5, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %9 = load i32, i32* %a, align 4
  %rem7 = srem i32 %9, 5
  %cmp8 = icmp ne i32 %rem7, 0
  br i1 %cmp8, label %land.lhs.true9, label %if.end

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %10 = load i32, i32* %a, align 4
  %rem10 = srem i32 %10, 7
  %cmp11 = icmp ne i32 %rem10, 0
  br i1 %cmp11, label %land.lhs.true12, label %if.end

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %11 = load i32, i32* %a, align 4
  %rem13 = srem i32 %11, 9
  %cmp14 = icmp ne i32 %rem13, 0
  br i1 %cmp14, label %land.lhs.true15, label %if.end

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %12 = load i32, i32* %b, align 4
  %rem16 = srem i32 %12, 2
  %cmp17 = icmp ne i32 %rem16, 0
  br i1 %cmp17, label %land.lhs.true18, label %if.end

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %13 = load i32, i32* %b, align 4
  %rem19 = srem i32 %13, 3
  %cmp20 = icmp ne i32 %rem19, 0
  br i1 %cmp20, label %land.lhs.true21, label %if.end

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %14 = load i32, i32* %b, align 4
  %rem22 = srem i32 %14, 5
  %cmp23 = icmp ne i32 %rem22, 0
  br i1 %cmp23, label %land.lhs.true24, label %if.end

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %15 = load i32, i32* %b, align 4
  %rem25 = srem i32 %15, 7
  %cmp26 = icmp ne i32 %rem25, 0
  br i1 %cmp26, label %land.lhs.true27, label %if.end

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %16 = load i32, i32* %b, align 4
  %rem28 = srem i32 %16, 9
  %cmp29 = icmp ne i32 %rem28, 0
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true27
  %17 = load i32, i32* %a, align 4
  %18 = load i32, i32* %b, align 4
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true27, %land.lhs.true24, %land.lhs.true21, %land.lhs.true18, %land.lhs.true15, %land.lhs.true12, %land.lhs.true9, %land.lhs.true6, %land.lhs.true, %while.body
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
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
