; ModuleID = 'code/208-17160MinNumberInRotatedArray.c'
source_filename = "code/208-17160MinNumberInRotatedArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.array = private unnamed_addr constant [5 x i32] [i32 1, i32 1, i32 1, i32 0, i32 1], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @findMinNumberInRotatedArray(i32* %array, i32 %low, i32 %high) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca i32*, align 8
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %medium = alloca i32, align 4
  %position = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 8
  store i32 %low, i32* %low.addr, align 4
  store i32 %high, i32* %high.addr, align 4
  %0 = load i32*, i32** %array.addr, align 8
  %cmp = icmp eq i32* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %low.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %high.addr, align 4
  %cmp3 = icmp sle i32 %2, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i32, i32* %high.addr, align 4
  %4 = load i32, i32* %low.addr, align 4
  %cmp5 = icmp sle i32 %3, %4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %5 = load i32, i32* %high.addr, align 4
  %6 = load i32, i32* %low.addr, align 4
  %sub = sub nsw i32 %5, %6
  %cmp6 = icmp eq i32 %sub, 1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %7 = load i32, i32* %high.addr, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %8 = load i32, i32* %low.addr, align 4
  %9 = load i32, i32* %high.addr, align 4
  %add = add nsw i32 %8, %9
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %medium, align 4
  %10 = load i32*, i32** %array.addr, align 8
  %11 = load i32, i32* %medium, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4
  %13 = load i32*, i32** %array.addr, align 8
  %14 = load i32, i32* %low.addr, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %13, i64 %idxprom9
  %15 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp sge i32 %12, %15
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end8
  %16 = load i32*, i32** %array.addr, align 8
  %17 = load i32, i32* %medium, align 4
  %18 = load i32, i32* %high.addr, align 4
  %call = call i32 @findMinNumberInRotatedArray(i32* %16, i32 %17, i32 %18)
  store i32 %call, i32* %position, align 4
  br label %if.end21

if.else:                                          ; preds = %if.end8
  %19 = load i32*, i32** %array.addr, align 8
  %20 = load i32, i32* %medium, align 4
  %idxprom13 = sext i32 %20 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %19, i64 %idxprom13
  %21 = load i32, i32* %arrayidx14, align 4
  %22 = load i32*, i32** %array.addr, align 8
  %23 = load i32, i32* %low.addr, align 4
  %idxprom15 = sext i32 %23 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %22, i64 %idxprom15
  %24 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp sle i32 %21, %24
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.else
  %25 = load i32*, i32** %array.addr, align 8
  %26 = load i32, i32* %low.addr, align 4
  %27 = load i32, i32* %medium, align 4
  %call19 = call i32 @findMinNumberInRotatedArray(i32* %25, i32 %26, i32 %27)
  store i32 %call19, i32* %position, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.else
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then12
  %28 = load i32, i32* %position, align 4
  store i32 %28, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then7, %if.then
  %29 = load i32, i32* %retval, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @findMinNumberInRotatedArray_loop(i32* %array, i32 %low, i32 %high) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca i32*, align 8
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %medium = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 8
  store i32 %low, i32* %low.addr, align 4
  store i32 %high, i32* %high.addr, align 4
  %0 = load i32*, i32** %array.addr, align 8
  %cmp = icmp eq i32* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %low.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %high.addr, align 4
  %cmp3 = icmp slt i32 %2, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i32, i32* %high.addr, align 4
  %4 = load i32, i32* %low.addr, align 4
  %cmp5 = icmp slt i32 %3, %4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  br label %while.cond

while.cond:                                       ; preds = %if.end18, %if.end
  %5 = load i32, i32* %high.addr, align 4
  %6 = load i32, i32* %low.addr, align 4
  %sub = sub nsw i32 %5, %6
  %cmp6 = icmp sgt i32 %sub, 1
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %high.addr, align 4
  %8 = load i32, i32* %low.addr, align 4
  %add = add nsw i32 %7, %8
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %medium, align 4
  %9 = load i32*, i32** %array.addr, align 8
  %10 = load i32, i32* %medium, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  %12 = load i32*, i32** %array.addr, align 8
  %13 = load i32, i32* %low.addr, align 4
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %12, i64 %idxprom7
  %14 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp sge i32 %11, %14
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %while.body
  %15 = load i32, i32* %medium, align 4
  store i32 %15, i32* %low.addr, align 4
  br label %if.end18

if.else:                                          ; preds = %while.body
  %16 = load i32*, i32** %array.addr, align 8
  %17 = load i32, i32* %medium, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %16, i64 %idxprom11
  %18 = load i32, i32* %arrayidx12, align 4
  %19 = load i32*, i32** %array.addr, align 8
  %20 = load i32, i32* %low.addr, align 4
  %idxprom13 = sext i32 %20 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %19, i64 %idxprom13
  %21 = load i32, i32* %arrayidx14, align 4
  %cmp15 = icmp sle i32 %18, %21
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.else
  %22 = load i32, i32* %medium, align 4
  store i32 %22, i32* %high.addr, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then10
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %23 = load i32, i32* %high.addr, align 4
  store i32 %23, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @findMinNumberInRotatedArray_improved(i32* %array, i32 %length) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca i32*, align 8
  %length.addr = alloca i32, align 4
  %low = alloca i32, align 4
  %high = alloca i32, align 4
  %medium = alloca i32, align 4
  %min = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i32 0, i32* %low, align 4
  %0 = load i32, i32* %length.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %high, align 4
  %1 = load i32, i32* %low, align 4
  store i32 %1, i32* %medium, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end40, %entry
  %2 = load i32*, i32** %array.addr, align 8
  %3 = load i32, i32* %low, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32*, i32** %array.addr, align 8
  %6 = load i32, i32* %high, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %cmp = icmp sge i32 %4, %7
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %low, align 4
  %9 = load i32, i32* %high, align 4
  %add = add nsw i32 %8, %9
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %medium, align 4
  %10 = load i32, i32* %high, align 4
  %11 = load i32, i32* %low, align 4
  %sub3 = sub nsw i32 %10, %11
  %cmp4 = icmp eq i32 %sub3, 1
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %12 = load i32, i32* %high, align 4
  store i32 %12, i32* %medium, align 4
  br label %while.end

if.end:                                           ; preds = %while.body
  %13 = load i32*, i32** %array.addr, align 8
  %14 = load i32, i32* %low, align 4
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %13, i64 %idxprom5
  %15 = load i32, i32* %arrayidx6, align 4
  %16 = load i32*, i32** %array.addr, align 8
  %17 = load i32, i32* %high, align 4
  %idxprom7 = sext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %16, i64 %idxprom7
  %18 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp eq i32 %15, %18
  br i1 %cmp9, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %if.end
  %19 = load i32*, i32** %array.addr, align 8
  %20 = load i32, i32* %low, align 4
  %idxprom10 = sext i32 %20 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %19, i64 %idxprom10
  %21 = load i32, i32* %arrayidx11, align 4
  %22 = load i32*, i32** %array.addr, align 8
  %23 = load i32, i32* %medium, align 4
  %idxprom12 = sext i32 %23 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %22, i64 %idxprom12
  %24 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp eq i32 %21, %24
  br i1 %cmp14, label %if.then15, label %if.end26

if.then15:                                        ; preds = %land.lhs.true
  %25 = load i32*, i32** %array.addr, align 8
  %26 = load i32, i32* %low, align 4
  %idxprom16 = sext i32 %26 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %25, i64 %idxprom16
  %27 = load i32, i32* %arrayidx17, align 4
  store i32 %27, i32* %min, align 4
  %28 = load i32, i32* %low, align 4
  store i32 %28, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then15
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %high, align 4
  %cmp18 = icmp sle i32 %29, %30
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32*, i32** %array.addr, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %32 to i64
  %arrayidx20 = getelementptr inbounds i32, i32* %31, i64 %idxprom19
  %33 = load i32, i32* %arrayidx20, align 4
  %34 = load i32, i32* %min, align 4
  %cmp21 = icmp slt i32 %33, %34
  br i1 %cmp21, label %if.then22, label %if.end25

if.then22:                                        ; preds = %for.body
  %35 = load i32*, i32** %array.addr, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %36 to i64
  %arrayidx24 = getelementptr inbounds i32, i32* %35, i64 %idxprom23
  %37 = load i32, i32* %arrayidx24, align 4
  store i32 %37, i32* %min, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end25
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %39 = load i32, i32* %min, align 4
  store i32 %39, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %land.lhs.true, %if.end
  %40 = load i32*, i32** %array.addr, align 8
  %41 = load i32, i32* %medium, align 4
  %idxprom27 = sext i32 %41 to i64
  %arrayidx28 = getelementptr inbounds i32, i32* %40, i64 %idxprom27
  %42 = load i32, i32* %arrayidx28, align 4
  %43 = load i32*, i32** %array.addr, align 8
  %44 = load i32, i32* %low, align 4
  %idxprom29 = sext i32 %44 to i64
  %arrayidx30 = getelementptr inbounds i32, i32* %43, i64 %idxprom29
  %45 = load i32, i32* %arrayidx30, align 4
  %cmp31 = icmp sge i32 %42, %45
  br i1 %cmp31, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end26
  %46 = load i32, i32* %medium, align 4
  store i32 %46, i32* %low, align 4
  br label %if.end40

if.else:                                          ; preds = %if.end26
  %47 = load i32*, i32** %array.addr, align 8
  %48 = load i32, i32* %medium, align 4
  %idxprom33 = sext i32 %48 to i64
  %arrayidx34 = getelementptr inbounds i32, i32* %47, i64 %idxprom33
  %49 = load i32, i32* %arrayidx34, align 4
  %50 = load i32*, i32** %array.addr, align 8
  %51 = load i32, i32* %low, align 4
  %idxprom35 = sext i32 %51 to i64
  %arrayidx36 = getelementptr inbounds i32, i32* %50, i64 %idxprom35
  %52 = load i32, i32* %arrayidx36, align 4
  %cmp37 = icmp sle i32 %49, %52
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.else
  %53 = load i32, i32* %medium, align 4
  store i32 %53, i32* %high, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.else
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then32
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %if.then, %while.cond
  %54 = load i32, i32* %medium, align 4
  store i32 %54, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %for.end
  %55 = load i32, i32* %retval, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %array = alloca [5 x i32], align 16
  %position = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [5 x i32]* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([5 x i32]* @__const.main.array to i8*), i64 20, i1 false)
  %arraydecay = getelementptr inbounds [5 x i32], [5 x i32]* %array, i64 0, i64 0
  %call = call i32 @findMinNumberInRotatedArray_improved(i32* %arraydecay, i32 5)
  store i32 %call, i32* %position, align 4
  %1 = load i32, i32* %position, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %1)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
