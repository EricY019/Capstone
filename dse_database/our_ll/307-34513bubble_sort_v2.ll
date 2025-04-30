; ModuleID = 'code/307-34513bubble_sort_v2.c'
source_filename = "code/307-34513bubble_sort_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%d : \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %big_array = alloca [65535 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %big_array_at_i_old = alloca i32, align 4
  %tmp_i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 65535
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @rand() #3
  %mul = mul nsw i32 2, %call
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [65535 x i32], [65535 x i32]* %big_array, i64 0, i64 %idxprom
  store i32 %mul, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end21, %for.end
  %3 = load i32, i32* %i, align 4
  %inc1 = add nsw i32 %3, 1
  store i32 %inc1, i32* %i, align 4
  %cmp2 = icmp slt i32 %inc1, 65535
  br i1 %cmp2, label %while.body, label %while.end25

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %j, align 4
  br label %while.cond3

while.cond3:                                      ; preds = %while.body9, %while.body
  %5 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [65535 x i32], [65535 x i32]* %big_array, i64 0, i64 %idxprom4
  %6 = load i32, i32* %arrayidx5, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [65535 x i32], [65535 x i32]* %big_array, i64 0, i64 %idxprom6
  %8 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp sgt i32 %6, %8
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond3
  %9 = load i32, i32* %j, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %j, align 4
  %tobool = icmp ne i32 %9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond3
  %10 = phi i1 [ false, %while.cond3 ], [ %tobool, %land.rhs ]
  br i1 %10, label %while.body9, label %while.end

while.body9:                                      ; preds = %land.end
  br label %while.cond3, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %11 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [65535 x i32], [65535 x i32]* %big_array, i64 0, i64 %idxprom10
  %12 = load i32, i32* %arrayidx11, align 4
  store i32 %12, i32* %big_array_at_i_old, align 4
  %13 = load i32, i32* %i, align 4
  store i32 %13, i32* %tmp_i, align 4
  br label %while.cond12

while.cond12:                                     ; preds = %while.body14, %while.end
  %14 = load i32, i32* %j, align 4
  %add = add nsw i32 %14, 1
  %15 = load i32, i32* %tmp_i, align 4
  %cmp13 = icmp ne i32 %add, %15
  br i1 %cmp13, label %while.body14, label %while.end21

while.body14:                                     ; preds = %while.cond12
  %16 = load i32, i32* %tmp_i, align 4
  %sub15 = sub nsw i32 %16, 1
  %idxprom16 = sext i32 %sub15 to i64
  %arrayidx17 = getelementptr inbounds [65535 x i32], [65535 x i32]* %big_array, i64 0, i64 %idxprom16
  %17 = load i32, i32* %arrayidx17, align 4
  %18 = load i32, i32* %tmp_i, align 4
  %idxprom18 = sext i32 %18 to i64
  %arrayidx19 = getelementptr inbounds [65535 x i32], [65535 x i32]* %big_array, i64 0, i64 %idxprom18
  store i32 %17, i32* %arrayidx19, align 4
  %19 = load i32, i32* %tmp_i, align 4
  %dec20 = add nsw i32 %19, -1
  store i32 %dec20, i32* %tmp_i, align 4
  br label %while.cond12, !llvm.loop !7

while.end21:                                      ; preds = %while.cond12
  %20 = load i32, i32* %big_array_at_i_old, align 4
  %21 = load i32, i32* %j, align 4
  %add22 = add nsw i32 %21, 1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [65535 x i32], [65535 x i32]* %big_array, i64 0, i64 %idxprom23
  store i32 %20, i32* %arrayidx24, align 4
  br label %while.cond, !llvm.loop !8

while.end25:                                      ; preds = %while.cond
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc33, %while.end25
  %22 = load i32, i32* %i, align 4
  %cmp27 = icmp slt i32 %22, 65535
  br i1 %cmp27, label %for.body28, label %for.end35

for.body28:                                       ; preds = %for.cond26
  %23 = load i32, i32* %i, align 4
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %23)
  %24 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %24 to i64
  %arrayidx31 = getelementptr inbounds [65535 x i32], [65535 x i32]* %big_array, i64 0, i64 %idxprom30
  %25 = load i32, i32* %arrayidx31, align 4
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %for.inc33

for.inc33:                                        ; preds = %for.body28
  %26 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %26, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond26, !llvm.loop !9

for.end35:                                        ; preds = %for.cond26
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
