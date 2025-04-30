; ModuleID = 'code/152-35022BubbleSortOptimizing.c'
source_filename = "code/152-35022BubbleSortOptimizing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"a round end n=%d\0A\00", align 1
@__const.test_bubbleSort.array = private unnamed_addr constant [5 x i32] [i32 4, i32 2, i32 8, i32 7, i32 1], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i32* %Aj, i32* %Aj1) #0 {
entry:
  %Aj.addr = alloca i32*, align 8
  %Aj1.addr = alloca i32*, align 8
  %originAj = alloca i32, align 4
  store i32* %Aj, i32** %Aj.addr, align 8
  store i32* %Aj1, i32** %Aj1.addr, align 8
  %0 = load i32*, i32** %Aj.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %originAj, align 4
  %2 = load i32*, i32** %Aj1.addr, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load i32*, i32** %Aj.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* %originAj, align 4
  %6 = load i32*, i32** %Aj1.addr, align 8
  store i32 %5, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printarray(i32* %array, i32 %size) #0 {
entry:
  %array.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %array.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bubbleSort(i32* %A, i32 %n) #0 {
entry:
  %A.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %swapped = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %A, i32** %A.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  store i32 0, i32* %swapped, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %A.addr, align 8
  %3 = load i32, i32* %n.addr, align 4
  call void @printarray(i32* %2, i32 %3)
  %4 = load i32*, i32** %A.addr, align 8
  %5 = load i32, i32* %i, align 4
  %sub1 = sub nsw i32 %5, 1
  %idxprom = sext i32 %sub1 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32*, i32** %A.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 %idxprom2
  %9 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp sgt i32 %6, %9
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i32*, i32** %A.addr, align 8
  %11 = load i32, i32* %i, align 4
  %sub5 = sub nsw i32 %11, 1
  %idxprom6 = sext i32 %sub5 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %10, i64 %idxprom6
  %12 = load i32*, i32** %A.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %12, i64 %idxprom8
  call void @swap(i32* %arrayidx7, i32* %arrayidx9)
  store i32 1, i32* %swapped, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %14 = load i32*, i32** %A.addr, align 8
  %15 = load i32, i32* %n.addr, align 4
  call void @printarray(i32* %14, i32 %15)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %n.addr, align 4
  %sub10 = sub nsw i32 %17, 1
  store i32 %sub10, i32* %n.addr, align 4
  %18 = load i32, i32* %n.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %19 = load i32, i32* %swapped, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !7

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_bubbleSort() #0 {
entry:
  %array = alloca [5 x i32], align 16
  %0 = bitcast [5 x i32]* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([5 x i32]* @__const.test_bubbleSort.array to i8*), i64 20, i1 false)
  %arraydecay = getelementptr inbounds [5 x i32], [5 x i32]* %array, i64 0, i64 0
  call void @bubbleSort(i32* %arraydecay, i32 5)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @solve() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @input()
  call void @solve()
  call void @test_bubbleSort()
  ret i32 0
}

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
