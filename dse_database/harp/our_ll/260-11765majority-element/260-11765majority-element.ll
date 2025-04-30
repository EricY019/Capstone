; ModuleID = 'code/260-11765majority-element.c'
source_filename = "code/260-11765majority-element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d,%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d,\0A\00", align 1
@__const.main.nums1 = private unnamed_addr constant [5 x i32] [i32 6, i32 6, i32 6, i32 7, i32 7], align 16
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @partition(i32* %nums, i32 %start, i32 %end) #0 {
entry:
  %retval = alloca i32, align 4
  %nums.addr = alloca i32*, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %v = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32* %nums, i32** %nums.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %0 = load i32, i32* %start.addr, align 4
  %1 = load i32, i32* %end.addr, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %start.addr, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32*, i32** %nums.addr, align 8
  %4 = load i32, i32* %start.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* %v, align 4
  %6 = load i32, i32* %start.addr, align 4
  store i32 %6, i32* %i, align 4
  %7 = load i32, i32* %end.addr, align 4
  store i32 %7, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end27, %if.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %j, align 4
  %cmp1 = icmp ne i32 %8, %9
  br i1 %cmp1, label %while.body, label %while.end28

while.body:                                       ; preds = %while.cond
  br label %while.cond2

while.cond2:                                      ; preds = %while.body7, %while.body
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %10, %11
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond2
  %12 = load i32*, i32** %nums.addr, align 8
  %13 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %13 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %12, i64 %idxprom4
  %14 = load i32, i32* %arrayidx5, align 4
  %15 = load i32, i32* %v, align 4
  %cmp6 = icmp sge i32 %14, %15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond2
  %16 = phi i1 [ false, %while.cond2 ], [ %cmp6, %land.rhs ]
  br i1 %16, label %while.body7, label %while.end

while.body7:                                      ; preds = %land.end
  %17 = load i32, i32* %j, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %j, align 4
  br label %while.cond2, !llvm.loop !4

while.end:                                        ; preds = %land.end
  br label %while.cond8

while.cond8:                                      ; preds = %while.body15, %while.end
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %j, align 4
  %cmp9 = icmp slt i32 %18, %19
  br i1 %cmp9, label %land.rhs10, label %land.end14

land.rhs10:                                       ; preds = %while.cond8
  %20 = load i32*, i32** %nums.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %21 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %20, i64 %idxprom11
  %22 = load i32, i32* %arrayidx12, align 4
  %23 = load i32, i32* %v, align 4
  %cmp13 = icmp sle i32 %22, %23
  br label %land.end14

land.end14:                                       ; preds = %land.rhs10, %while.cond8
  %24 = phi i1 [ false, %while.cond8 ], [ %cmp13, %land.rhs10 ]
  br i1 %24, label %while.body15, label %while.end16

while.body15:                                     ; preds = %land.end14
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond8, !llvm.loop !6

while.end16:                                      ; preds = %land.end14
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %j, align 4
  %cmp17 = icmp slt i32 %26, %27
  br i1 %cmp17, label %if.then18, label %if.end27

if.then18:                                        ; preds = %while.end16
  %28 = load i32*, i32** %nums.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %29 to i64
  %arrayidx20 = getelementptr inbounds i32, i32* %28, i64 %idxprom19
  %30 = load i32, i32* %arrayidx20, align 4
  store i32 %30, i32* %tmp, align 4
  %31 = load i32*, i32** %nums.addr, align 8
  %32 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %32 to i64
  %arrayidx22 = getelementptr inbounds i32, i32* %31, i64 %idxprom21
  %33 = load i32, i32* %arrayidx22, align 4
  %34 = load i32*, i32** %nums.addr, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %35 to i64
  %arrayidx24 = getelementptr inbounds i32, i32* %34, i64 %idxprom23
  store i32 %33, i32* %arrayidx24, align 4
  %36 = load i32, i32* %tmp, align 4
  %37 = load i32*, i32** %nums.addr, align 8
  %38 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %38 to i64
  %arrayidx26 = getelementptr inbounds i32, i32* %37, i64 %idxprom25
  store i32 %36, i32* %arrayidx26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then18, %while.end16
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %j, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  br label %while.cond, !llvm.loop !7

while.end28:                                      ; preds = %while.cond
  %41 = load i32*, i32** %nums.addr, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %42 to i64
  %arrayidx30 = getelementptr inbounds i32, i32* %41, i64 %idxprom29
  %43 = load i32, i32* %arrayidx30, align 4
  %44 = load i32*, i32** %nums.addr, align 8
  %45 = load i32, i32* %start.addr, align 4
  %idxprom31 = sext i32 %45 to i64
  %arrayidx32 = getelementptr inbounds i32, i32* %44, i64 %idxprom31
  store i32 %43, i32* %arrayidx32, align 4
  %46 = load i32, i32* %v, align 4
  %47 = load i32*, i32** %nums.addr, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %48 to i64
  %arrayidx34 = getelementptr inbounds i32, i32* %47, i64 %idxprom33
  store i32 %46, i32* %arrayidx34, align 4
  %49 = load i32, i32* %i, align 4
  store i32 %49, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end28, %if.then
  %50 = load i32, i32* %retval, align 4
  ret i32 %50
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @majorityElement(i32* %nums, i32 %numsSize) #0 {
entry:
  %nums.addr = alloca i32*, align 8
  %numsSize.addr = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %index = alloca i32, align 4
  %mid = alloca i32, align 4
  store i32* %nums, i32** %nums.addr, align 8
  store i32 %numsSize, i32* %numsSize.addr, align 4
  store i32 0, i32* %start, align 4
  %0 = load i32, i32* %numsSize.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %end, align 4
  %1 = load i32*, i32** %nums.addr, align 8
  %2 = load i32, i32* %start, align 4
  %3 = load i32, i32* %end, align 4
  %call = call i32 @partition(i32* %1, i32 %2, i32 %3)
  store i32 %call, i32* %index, align 4
  %4 = load i32, i32* %numsSize.addr, align 4
  %div = sdiv i32 %4, 2
  store i32 %div, i32* %mid, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load i32, i32* %index, align 4
  %6 = load i32, i32* %mid, align 4
  %cmp = icmp ne i32 %5, %6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %index, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %8 = load i32, i32* %index, align 4
  %9 = load i32, i32* %mid, align 4
  %cmp2 = icmp sgt i32 %8, %9
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %10 = load i32, i32* %index, align 4
  %sub3 = sub nsw i32 %10, 1
  store i32 %sub3, i32* %end, align 4
  %11 = load i32*, i32** %nums.addr, align 8
  %12 = load i32, i32* %start, align 4
  %13 = load i32, i32* %end, align 4
  %call4 = call i32 @partition(i32* %11, i32 %12, i32 %13)
  store i32 %call4, i32* %index, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %14 = load i32, i32* %index, align 4
  %add = add nsw i32 %14, 1
  store i32 %add, i32* %start, align 4
  %15 = load i32*, i32** %nums.addr, align 8
  %16 = load i32, i32* %start, align 4
  %17 = load i32, i32* %end, align 4
  %call5 = call i32 @partition(i32* %15, i32 %16, i32 %17)
  store i32 %call5, i32* %index, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %18 = load i32*, i32** %nums.addr, align 8
  %19 = load i32, i32* %mid, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds i32, i32* %18, i64 %idxprom
  %20 = load i32, i32* %arrayidx, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %nums1 = alloca [5 x i32], align 16
  %0 = bitcast [5 x i32]* %nums1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([5 x i32]* @__const.main.nums1 to i8*), i64 20, i1 false)
  %arraydecay = getelementptr inbounds [5 x i32], [5 x i32]* %nums1, i64 0, i64 0
  %call = call i32 @majorityElement(i32* %arraydecay, i32 5)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %call)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

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
