; ModuleID = 'code/355-34705threadSort.c'
source_filename = "code/355-34705threadSort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"Before Sort:  \0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"[ \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"After Sort:  \0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %arr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  call void @srand(i32 123456) #3
  %call = call noalias align 16 i8* @malloc(i64 4000) #3
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %arr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 1000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 @rand() #3
  %rem = srem i32 %call1, 200
  %2 = load i32*, i32** %arr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  store i32 %rem, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc15, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %5, 1000
  br i1 %cmp4, label %for.body5, label %for.end17

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, i32* %i, align 4
  %cmp6 = icmp eq i32 %6, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body5
  %7 = load i32*, i32** %arr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %7, i64 %idxprom8
  %9 = load i32, i32* %arrayidx9, align 4
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %9)
  %10 = load i32, i32* %i, align 4
  %cmp11 = icmp eq i32 %10, 999
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end
  br label %for.inc15

for.inc15:                                        ; preds = %if.end14
  %11 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %11, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond3, !llvm.loop !6

for.end17:                                        ; preds = %for.cond3
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %12 = load i32*, i32** %arr, align 8
  call void @quicksort(i32* %12, i32 0, i32 999)
  store i32 0, i32* %i, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc33, %for.end17
  %13 = load i32, i32* %i, align 4
  %cmp20 = icmp slt i32 %13, 1000
  br i1 %cmp20, label %for.body21, label %for.end35

for.body21:                                       ; preds = %for.cond19
  %14 = load i32, i32* %i, align 4
  %cmp22 = icmp eq i32 %14, 0
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %for.body21
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %for.body21
  %15 = load i32*, i32** %arr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %16 to i64
  %arrayidx27 = getelementptr inbounds i32, i32* %15, i64 %idxprom26
  %17 = load i32, i32* %arrayidx27, align 4
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %18 = load i32, i32* %i, align 4
  %cmp29 = icmp eq i32 %18, 999
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end25
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end25
  br label %for.inc33

for.inc33:                                        ; preds = %if.end32
  %19 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %19, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond19, !llvm.loop !7

for.end35:                                        ; preds = %for.cond19
  %20 = load i32*, i32** %arr, align 8
  %21 = bitcast i32* %20 to i8*
  call void @free(i8* %21) #3
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quicksort(i32* %arr, i32 %low, i32 %upp) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  %low.addr = alloca i32, align 4
  %upp.addr = alloca i32, align 4
  %p = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %low, i32* %low.addr, align 4
  store i32 %upp, i32* %upp.addr, align 4
  %0 = load i32, i32* %low.addr, align 4
  %1 = load i32, i32* %upp.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %arr.addr, align 8
  %3 = load i32, i32* %low.addr, align 4
  %4 = load i32, i32* %upp.addr, align 4
  %call = call i32 @partition(i32* %2, i32 %3, i32 %4)
  store i32 %call, i32* %p, align 4
  %5 = load i32*, i32** %arr.addr, align 8
  %6 = load i32, i32* %low.addr, align 4
  %7 = load i32, i32* %p, align 4
  %sub = sub nsw i32 %7, 1
  call void @quicksort(i32* %5, i32 %6, i32 %sub)
  %8 = load i32*, i32** %arr.addr, align 8
  %9 = load i32, i32* %p, align 4
  %add = add nsw i32 %9, 1
  %10 = load i32, i32* %upp.addr, align 4
  call void @quicksort(i32* %8, i32 %add, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @partition(i32* %arr, i32 %low, i32 %upp) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  %low.addr = alloca i32, align 4
  %upp.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %pivotIdx = alloca i32, align 4
  %pivotVal = alloca i32, align 4
  %storeIdx = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %low, i32* %low.addr, align 4
  store i32 %upp, i32* %upp.addr, align 4
  %0 = load i32*, i32** %arr.addr, align 8
  %1 = load i32, i32* %low.addr, align 4
  %2 = load i32, i32* %upp.addr, align 4
  %call = call i32 @choosePivot(i32* %0, i32 %1, i32 %2)
  store i32 %call, i32* %pivotIdx, align 4
  %3 = load i32*, i32** %arr.addr, align 8
  %4 = load i32, i32* %pivotIdx, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* %pivotVal, align 4
  %6 = load i32*, i32** %arr.addr, align 8
  %7 = load i32, i32* %pivotIdx, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 %idxprom1
  %8 = load i32*, i32** %arr.addr, align 8
  %9 = load i32, i32* %upp.addr, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 %idxprom3
  call void @swaparr(i32* %arrayidx2, i32* %arrayidx4)
  %10 = load i32, i32* %low.addr, align 4
  store i32 %10, i32* %storeIdx, align 4
  %11 = load i32, i32* %low.addr, align 4
  store i32 %11, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %upp.addr, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32*, i32** %arr.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %15 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %14, i64 %idxprom5
  %16 = load i32, i32* %arrayidx6, align 4
  %17 = load i32, i32* %pivotVal, align 4
  %cmp7 = icmp slt i32 %16, %17
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %18 = load i32*, i32** %arr.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %19 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %18, i64 %idxprom8
  %20 = load i32*, i32** %arr.addr, align 8
  %21 = load i32, i32* %storeIdx, align 4
  %idxprom10 = sext i32 %21 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %20, i64 %idxprom10
  call void @swaparr(i32* %arrayidx9, i32* %arrayidx11)
  %22 = load i32, i32* %storeIdx, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %storeIdx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %23, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %24 = load i32*, i32** %arr.addr, align 8
  %25 = load i32, i32* %storeIdx, align 4
  %idxprom13 = sext i32 %25 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %24, i64 %idxprom13
  %26 = load i32*, i32** %arr.addr, align 8
  %27 = load i32, i32* %upp.addr, align 4
  %idxprom15 = sext i32 %27 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %26, i64 %idxprom15
  call void @swaparr(i32* %arrayidx14, i32* %arrayidx16)
  %28 = load i32, i32* %storeIdx, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @choosePivot(i32* %arr, i32 %low, i32 %upp) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  %low.addr = alloca i32, align 4
  %upp.addr = alloca i32, align 4
  %mid = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %low, i32* %low.addr, align 4
  store i32 %upp, i32* %upp.addr, align 4
  %0 = load i32, i32* %low.addr, align 4
  %1 = load i32, i32* %upp.addr, align 4
  %add = add nsw i32 %0, %1
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %mid, align 4
  %2 = load i32*, i32** %arr.addr, align 8
  %3 = load i32, i32* %low.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32*, i32** %arr.addr, align 8
  %6 = load i32, i32* %upp.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %cmp = icmp sgt i32 %4, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %low.addr, align 4
  %9 = load i32, i32* %upp.addr, align 4
  call void @swapval(i32 %8, i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32*, i32** %arr.addr, align 8
  %11 = load i32, i32* %mid, align 4
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 %idxprom3
  %12 = load i32, i32* %arrayidx4, align 4
  %13 = load i32*, i32** %arr.addr, align 8
  %14 = load i32, i32* %low.addr, align 4
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %13, i64 %idxprom5
  %15 = load i32, i32* %arrayidx6, align 4
  %cmp7 = icmp slt i32 %12, %15
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %16 = load i32, i32* %mid, align 4
  %17 = load i32, i32* %low.addr, align 4
  call void @swapval(i32 %16, i32 %17)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  %18 = load i32*, i32** %arr.addr, align 8
  %19 = load i32, i32* %upp.addr, align 4
  %idxprom10 = sext i32 %19 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %18, i64 %idxprom10
  %20 = load i32, i32* %arrayidx11, align 4
  %21 = load i32*, i32** %arr.addr, align 8
  %22 = load i32, i32* %mid, align 4
  %idxprom12 = sext i32 %22 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %21, i64 %idxprom12
  %23 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp slt i32 %20, %23
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end9
  %24 = load i32, i32* %mid, align 4
  %25 = load i32, i32* %upp.addr, align 4
  call void @swapval(i32 %24, i32 %25)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end9
  %26 = load i32, i32* %mid, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swaparr(i32* %x, i32* %y) #0 {
entry:
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %tmp = alloca i32, align 4
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  %0 = load i32*, i32** %x.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %tmp, align 4
  %2 = load i32*, i32** %y.addr, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load i32*, i32** %x.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* %tmp, align 4
  %6 = load i32*, i32** %y.addr, align 8
  store i32 %5, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swapval(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  store i32 %0, i32* %tmp, align 4
  %1 = load i32, i32* %y.addr, align 4
  store i32 %1, i32* %x.addr, align 4
  %2 = load i32, i32* %tmp, align 4
  store i32 %2, i32* %y.addr, align 4
  ret void
}

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
