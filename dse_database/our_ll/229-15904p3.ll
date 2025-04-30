; ModuleID = 'code/229-15904p3.c'
source_filename = "code/229-15904p3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"\0Aleft: %d, right: %d, midpt: %d\00", align 1
@__const.main.ar = private unnamed_addr constant [10 x i32] [i32 5, i32 6, i32 7, i32 8, i32 9, i32 0, i32 1, i32 2, i32 3, i32 4], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"\0A %d \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @binarySearch(i32 %target, i32* %arr, i32 %leftBound, i32 %rightBound) #0 {
entry:
  %retval = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %arr.addr = alloca i32*, align 8
  %leftBound.addr = alloca i32, align 4
  %rightBound.addr = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %midptIdx = alloca i32, align 4
  %midpt = alloca i32, align 4
  store i32 %target, i32* %target.addr, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %leftBound, i32* %leftBound.addr, align 4
  store i32 %rightBound, i32* %rightBound.addr, align 4
  %0 = load i32*, i32** %arr.addr, align 8
  %1 = load i32, i32* %leftBound.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %left, align 4
  %3 = load i32*, i32** %arr.addr, align 8
  %4 = load i32, i32* %rightBound.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %3, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  store i32 %5, i32* %right, align 4
  %6 = load i32, i32* %rightBound.addr, align 4
  %7 = load i32, i32* %leftBound.addr, align 4
  %add = add nsw i32 %6, %7
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %midptIdx, align 4
  %8 = load i32*, i32** %arr.addr, align 8
  %9 = load i32, i32* %midptIdx, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 %idxprom3
  %10 = load i32, i32* %arrayidx4, align 4
  store i32 %10, i32* %midpt, align 4
  %11 = load i32, i32* %leftBound.addr, align 4
  %12 = load i32, i32* %rightBound.addr, align 4
  %13 = load i32, i32* %midptIdx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i32 %13)
  %14 = load i32, i32* %left, align 4
  %15 = load i32, i32* %target.addr, align 4
  %cmp = icmp eq i32 %14, %15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load i32, i32* %leftBound.addr, align 4
  store i32 %16, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %17 = load i32, i32* %right, align 4
  %18 = load i32, i32* %target.addr, align 4
  %cmp5 = icmp eq i32 %17, %18
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %19 = load i32, i32* %rightBound.addr, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %20 = load i32, i32* %midpt, align 4
  %21 = load i32, i32* %target.addr, align 4
  %cmp8 = icmp eq i32 %20, %21
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  %22 = load i32, i32* %midptIdx, align 4
  store i32 %22, i32* %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end7
  %23 = load i32, i32* %midpt, align 4
  %24 = load i32, i32* %target.addr, align 4
  %cmp11 = icmp slt i32 %23, %24
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %25 = load i32, i32* %target.addr, align 4
  %26 = load i32*, i32** %arr.addr, align 8
  %27 = load i32, i32* %midptIdx, align 4
  %28 = load i32, i32* %rightBound.addr, align 4
  %call13 = call i32 @binarySearch(i32 %25, i32* %26, i32 %27, i32 %28)
  store i32 %call13, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end10
  %29 = load i32, i32* %target.addr, align 4
  %30 = load i32*, i32** %arr.addr, align 8
  %31 = load i32, i32* %leftBound.addr, align 4
  %32 = load i32, i32* %midptIdx, align 4
  %call15 = call i32 @binarySearch(i32 %29, i32* %30, i32 %31, i32 %32)
  store i32 %call15, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then12, %if.then9, %if.then6, %if.then
  %33 = load i32, i32* %retval, align 4
  ret i32 %33
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @binarySearchMin(i32* %arr, i32 %leftBound, i32 %rightBound) #0 {
entry:
  %retval = alloca i32, align 4
  %arr.addr = alloca i32*, align 8
  %leftBound.addr = alloca i32, align 4
  %rightBound.addr = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %midptIdx = alloca i32, align 4
  %midpt = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %leftBound, i32* %leftBound.addr, align 4
  store i32 %rightBound, i32* %rightBound.addr, align 4
  %0 = load i32*, i32** %arr.addr, align 8
  %1 = load i32, i32* %leftBound.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %left, align 4
  %3 = load i32*, i32** %arr.addr, align 8
  %4 = load i32, i32* %rightBound.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %3, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  store i32 %5, i32* %right, align 4
  %6 = load i32, i32* %rightBound.addr, align 4
  %7 = load i32, i32* %leftBound.addr, align 4
  %add = add nsw i32 %6, %7
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %midptIdx, align 4
  %8 = load i32*, i32** %arr.addr, align 8
  %9 = load i32, i32* %midptIdx, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 %idxprom3
  %10 = load i32, i32* %arrayidx4, align 4
  store i32 %10, i32* %midpt, align 4
  %11 = load i32, i32* %leftBound.addr, align 4
  %12 = load i32, i32* %rightBound.addr, align 4
  %13 = load i32, i32* %midptIdx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i32 %13)
  %14 = load i32, i32* %rightBound.addr, align 4
  %15 = load i32, i32* %leftBound.addr, align 4
  %sub = sub nsw i32 %14, %15
  %cmp = icmp eq i32 %sub, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %16 = load i32, i32* %rightBound.addr, align 4
  %17 = load i32, i32* %leftBound.addr, align 4
  %cmp5 = icmp eq i32 %16, %17
  br i1 %cmp5, label %if.then, label %if.end8

if.then:                                          ; preds = %lor.lhs.false, %entry
  %18 = load i32, i32* %right, align 4
  %19 = load i32, i32* %left, align 4
  %cmp6 = icmp sge i32 %18, %19
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %20 = load i32, i32* %leftBound.addr, align 4
  store i32 %20, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %21 = load i32, i32* %rightBound.addr, align 4
  store i32 %21, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %lor.lhs.false
  %22 = load i32, i32* %midpt, align 4
  %23 = load i32, i32* %left, align 4
  %cmp9 = icmp slt i32 %22, %23
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %24 = load i32*, i32** %arr.addr, align 8
  %25 = load i32, i32* %leftBound.addr, align 4
  %26 = load i32, i32* %midptIdx, align 4
  %call11 = call i32 @binarySearchMin(i32* %24, i32 %25, i32 %26)
  store i32 %call11, i32* %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end8
  %27 = load i32*, i32** %arr.addr, align 8
  %28 = load i32, i32* %midptIdx, align 4
  %29 = load i32, i32* %rightBound.addr, align 4
  %call13 = call i32 @binarySearchMin(i32* %27, i32 %28, i32 %29)
  store i32 %call13, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then10, %if.end, %if.then7
  %30 = load i32, i32* %retval, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @searchRotatedArray(i32 %target, i32* %arr, i32 %arrLen) #0 {
entry:
  %retval = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %arr.addr = alloca i32*, align 8
  %arrLen.addr = alloca i32, align 4
  %minIdx = alloca i32, align 4
  store i32 %target, i32* %target.addr, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %arrLen, i32* %arrLen.addr, align 4
  %0 = load i32*, i32** %arr.addr, align 8
  %1 = load i32, i32* %arrLen.addr, align 4
  %sub = sub nsw i32 %1, 1
  %call = call i32 @binarySearchMin(i32* %0, i32 0, i32 %sub)
  store i32 %call, i32* %minIdx, align 4
  %2 = load i32, i32* %target.addr, align 4
  %3 = load i32*, i32** %arr.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 0
  %4 = load i32, i32* %arrayidx, align 4
  %cmp = icmp sge i32 %2, %4
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load i32*, i32** %arr.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %5, i64 0
  %6 = load i32, i32* %arrayidx1, align 4
  %7 = load i32*, i32** %arr.addr, align 8
  %8 = load i32, i32* %minIdx, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %9 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp sgt i32 %6, %9
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %10 = load i32, i32* %target.addr, align 4
  %11 = load i32*, i32** %arr.addr, align 8
  %12 = load i32, i32* %minIdx, align 4
  %sub4 = sub nsw i32 %12, 1
  %call5 = call i32 @binarySearch(i32 %10, i32* %11, i32 0, i32 %sub4)
  store i32 %call5, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %13 = load i32, i32* %target.addr, align 4
  %14 = load i32*, i32** %arr.addr, align 8
  %15 = load i32, i32* %minIdx, align 4
  %16 = load i32, i32* %arrLen.addr, align 4
  %sub6 = sub nsw i32 %16, 1
  %call7 = call i32 @binarySearch(i32 %13, i32* %14, i32 %15, i32 %sub6)
  store i32 %call7, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %ar = alloca [10 x i32], align 16
  %0 = bitcast [10 x i32]* %ar to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([10 x i32]* @__const.main.ar to i8*), i64 40, i1 false)
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %ar, i64 0, i64 0
  %call = call i32 @searchRotatedArray(i32 8, i32* %arraydecay, i32 10)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %call)
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
