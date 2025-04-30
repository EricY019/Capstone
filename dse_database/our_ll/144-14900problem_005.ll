; ModuleID = 'code/144-14900problem_005.c'
source_filename = "code/144-14900problem_005.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %d, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %d, align 4
  %rem = srem i32 %0, 11
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %1 = load i32, i32* %d, align 4
  %rem1 = srem i32 %1, 12
  %cmp2 = icmp eq i32 %rem1, 0
  br i1 %cmp2, label %land.lhs.true3, label %land.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %2 = load i32, i32* %d, align 4
  %rem4 = srem i32 %2, 13
  %cmp5 = icmp eq i32 %rem4, 0
  br i1 %cmp5, label %land.lhs.true6, label %land.end

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %3 = load i32, i32* %d, align 4
  %rem7 = srem i32 %3, 14
  %cmp8 = icmp eq i32 %rem7, 0
  br i1 %cmp8, label %land.lhs.true9, label %land.end

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %4 = load i32, i32* %d, align 4
  %rem10 = srem i32 %4, 15
  %cmp11 = icmp eq i32 %rem10, 0
  br i1 %cmp11, label %land.lhs.true12, label %land.end

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %5 = load i32, i32* %d, align 4
  %rem13 = srem i32 %5, 16
  %cmp14 = icmp eq i32 %rem13, 0
  br i1 %cmp14, label %land.lhs.true15, label %land.end

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %6 = load i32, i32* %d, align 4
  %rem16 = srem i32 %6, 17
  %cmp17 = icmp eq i32 %rem16, 0
  br i1 %cmp17, label %land.lhs.true18, label %land.end

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %7 = load i32, i32* %d, align 4
  %rem19 = srem i32 %7, 18
  %cmp20 = icmp eq i32 %rem19, 0
  br i1 %cmp20, label %land.lhs.true21, label %land.end

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %8 = load i32, i32* %d, align 4
  %rem22 = srem i32 %8, 19
  %cmp23 = icmp eq i32 %rem22, 0
  br i1 %cmp23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true21
  %9 = load i32, i32* %d, align 4
  %rem24 = srem i32 %9, 20
  %cmp25 = icmp eq i32 %rem24, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true21, %land.lhs.true18, %land.lhs.true15, %land.lhs.true12, %land.lhs.true9, %land.lhs.true6, %land.lhs.true3, %land.lhs.true, %while.cond
  %10 = phi i1 [ false, %land.lhs.true21 ], [ false, %land.lhs.true18 ], [ false, %land.lhs.true15 ], [ false, %land.lhs.true12 ], [ false, %land.lhs.true9 ], [ false, %land.lhs.true6 ], [ false, %land.lhs.true3 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp25, %land.rhs ]
  %lnot = xor i1 %10, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load i32, i32* %d, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %d, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  %12 = load i32, i32* %d, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %12)
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
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
