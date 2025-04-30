; ModuleID = 'code/354-29497heapsort.c'
source_filename = "code/354-29497heapsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_heapify.input = private unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@__const.test_heapify.expected = private unnamed_addr constant [10 x i32] [i32 9, i32 8, i32 6, i32 7, i32 4, i32 5, i32 2, i32 0, i32 3, i32 1], align 16
@__const.test_heapsort_sorted.input = private unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@__const.test_heapsort_sorted.expected = private unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@__const.test_heapsort_reverse_sorted.input = private unnamed_addr constant [10 x i32] [i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0], align 16
@__const.test_heapsort_reverse_sorted.expected = private unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@__const.test_heapsort_all_equal.input = private unnamed_addr constant [10 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3], align 16
@__const.test_heapsort_all_equal.expected = private unnamed_addr constant [10 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3], align 16
@__const.test_heapsort.input = private unnamed_addr constant [10 x i32] [i32 8, i32 2, i32 9, i32 4, i32 0, i32 5, i32 1, i32 7, i32 6, i32 3], align 16
@__const.test_heapsort.expected = private unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@.str = private unnamed_addr constant [22 x i8] c"Heapify test failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Heapsort already sorted test failed!\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Heapsort already reverse sorted test failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Heapsort all elements equal test failed!\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Heapsort test failed!\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"%d tests failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i32* %array, i32 %a, i32 %b) #0 {
entry:
  %array.addr = alloca i32*, align 8
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32*, i32** %array.addr, align 8
  %3 = load i32, i32* %a.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %temp, align 4
  %5 = load i32*, i32** %array.addr, align 8
  %6 = load i32, i32* %b.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %8 = load i32*, i32** %array.addr, align 8
  %9 = load i32, i32* %a.addr, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 %idxprom3
  store i32 %7, i32* %arrayidx4, align 4
  %10 = load i32, i32* %temp, align 4
  %11 = load i32*, i32** %array.addr, align 8
  %12 = load i32, i32* %b.addr, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %11, i64 %idxprom5
  store i32 %10, i32* %arrayidx6, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @downheap(i32* %array, i32 %size, i32 %parent) #0 {
entry:
  %array.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %parent.addr = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %max = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %parent, i32* %parent.addr, align 4
  %0 = load i32, i32* %parent.addr, align 4
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 %mul, 1
  store i32 %add, i32* %left, align 4
  %1 = load i32, i32* %parent.addr, align 4
  %mul1 = mul nsw i32 2, %1
  %add2 = add nsw i32 %mul1, 2
  store i32 %add2, i32* %right, align 4
  %2 = load i32, i32* %parent.addr, align 4
  store i32 %2, i32* %max, align 4
  %3 = load i32, i32* %left, align 4
  %4 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i32*, i32** %array.addr, align 8
  %6 = load i32, i32* %left, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load i32*, i32** %array.addr, align 8
  %9 = load i32, i32* %max, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 %idxprom3
  %10 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp sgt i32 %7, %10
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load i32, i32* %left, align 4
  store i32 %11, i32* %max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load i32, i32* %right, align 4
  %13 = load i32, i32* %size.addr, align 4
  %cmp6 = icmp slt i32 %12, %13
  br i1 %cmp6, label %land.lhs.true7, label %if.end14

land.lhs.true7:                                   ; preds = %if.end
  %14 = load i32*, i32** %array.addr, align 8
  %15 = load i32, i32* %right, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 %idxprom8
  %16 = load i32, i32* %arrayidx9, align 4
  %17 = load i32*, i32** %array.addr, align 8
  %18 = load i32, i32* %max, align 4
  %idxprom10 = sext i32 %18 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %17, i64 %idxprom10
  %19 = load i32, i32* %arrayidx11, align 4
  %cmp12 = icmp sgt i32 %16, %19
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %land.lhs.true7
  %20 = load i32, i32* %right, align 4
  store i32 %20, i32* %max, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %land.lhs.true7, %if.end
  %21 = load i32, i32* %max, align 4
  %22 = load i32, i32* %parent.addr, align 4
  %cmp15 = icmp ne i32 %21, %22
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end14
  %23 = load i32*, i32** %array.addr, align 8
  %24 = load i32, i32* %parent.addr, align 4
  %25 = load i32, i32* %max, align 4
  call void @swap(i32* %23, i32 %24, i32 %25)
  %26 = load i32*, i32** %array.addr, align 8
  %27 = load i32, i32* %size.addr, align 4
  %28 = load i32, i32* %max, align 4
  call void @downheap(i32* %26, i32 %27, i32 %28)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heapify(i32* %array, i32 %size) #0 {
entry:
  %array.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %parent = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %sub1 = sub nsw i32 %2, 1
  %div = sdiv i32 %sub1, 2
  store i32 %div, i32* %parent, align 4
  %3 = load i32*, i32** %array.addr, align 8
  %4 = load i32, i32* %size.addr, align 4
  %5 = load i32, i32* %parent, align 4
  call void @downheap(i32* %3, i32 %4, i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heapsort(i32* %array, i32 %size) #0 {
entry:
  %array.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32*, i32** %array.addr, align 8
  %1 = load i32, i32* %size.addr, align 4
  call void @heapify(i32* %0, i32 %1)
  %2 = load i32, i32* %size.addr, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %array.addr, align 8
  %5 = load i32, i32* %i, align 4
  call void @swap(i32* %4, i32 0, i32 %5)
  %6 = load i32*, i32** %array.addr, align 8
  %7 = load i32, i32* %i, align 4
  call void @downheap(i32* %6, i32 %7, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @are_equal(i32* %a, i32* %b, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %a.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32*, i32** %b.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp ne i32 %4, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_heapify() #0 {
entry:
  %input = alloca [10 x i32], align 16
  %expected = alloca [10 x i32], align 16
  %0 = bitcast [10 x i32]* %input to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([10 x i32]* @__const.test_heapify.input to i8*), i64 40, i1 false)
  %1 = bitcast [10 x i32]* %expected to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([10 x i32]* @__const.test_heapify.expected to i8*), i64 40, i1 false)
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %input, i64 0, i64 0
  call void @heapify(i32* %arraydecay, i32 10)
  %arraydecay1 = getelementptr inbounds [10 x i32], [10 x i32]* %input, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [10 x i32], [10 x i32]* %expected, i64 0, i64 0
  %call = call i32 @are_equal(i32* %arraydecay1, i32* %arraydecay2, i32 10)
  ret i32 %call
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_heapsort_sorted() #0 {
entry:
  %input = alloca [10 x i32], align 16
  %expected = alloca [10 x i32], align 16
  %0 = bitcast [10 x i32]* %input to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([10 x i32]* @__const.test_heapsort_sorted.input to i8*), i64 40, i1 false)
  %1 = bitcast [10 x i32]* %expected to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([10 x i32]* @__const.test_heapsort_sorted.expected to i8*), i64 40, i1 false)
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %input, i64 0, i64 0
  call void @heapsort(i32* %arraydecay, i32 10)
  %arraydecay1 = getelementptr inbounds [10 x i32], [10 x i32]* %input, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [10 x i32], [10 x i32]* %expected, i64 0, i64 0
  %call = call i32 @are_equal(i32* %arraydecay1, i32* %arraydecay2, i32 10)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_heapsort_reverse_sorted() #0 {
entry:
  %input = alloca [10 x i32], align 16
  %expected = alloca [10 x i32], align 16
  %0 = bitcast [10 x i32]* %input to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([10 x i32]* @__const.test_heapsort_reverse_sorted.input to i8*), i64 40, i1 false)
  %1 = bitcast [10 x i32]* %expected to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([10 x i32]* @__const.test_heapsort_reverse_sorted.expected to i8*), i64 40, i1 false)
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %input, i64 0, i64 0
  call void @heapsort(i32* %arraydecay, i32 10)
  %arraydecay1 = getelementptr inbounds [10 x i32], [10 x i32]* %input, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [10 x i32], [10 x i32]* %expected, i64 0, i64 0
  %call = call i32 @are_equal(i32* %arraydecay1, i32* %arraydecay2, i32 10)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_heapsort_all_equal() #0 {
entry:
  %input = alloca [10 x i32], align 16
  %expected = alloca [10 x i32], align 16
  %0 = bitcast [10 x i32]* %input to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([10 x i32]* @__const.test_heapsort_all_equal.input to i8*), i64 40, i1 false)
  %1 = bitcast [10 x i32]* %expected to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([10 x i32]* @__const.test_heapsort_all_equal.expected to i8*), i64 40, i1 false)
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %input, i64 0, i64 0
  call void @heapsort(i32* %arraydecay, i32 10)
  %arraydecay1 = getelementptr inbounds [10 x i32], [10 x i32]* %input, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [10 x i32], [10 x i32]* %expected, i64 0, i64 0
  %call = call i32 @are_equal(i32* %arraydecay1, i32* %arraydecay2, i32 10)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_heapsort() #0 {
entry:
  %input = alloca [10 x i32], align 16
  %expected = alloca [10 x i32], align 16
  %0 = bitcast [10 x i32]* %input to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([10 x i32]* @__const.test_heapsort.input to i8*), i64 40, i1 false)
  %1 = bitcast [10 x i32]* %expected to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([10 x i32]* @__const.test_heapsort.expected to i8*), i64 40, i1 false)
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %input, i64 0, i64 0
  call void @heapsort(i32* %arraydecay, i32 10)
  %arraydecay1 = getelementptr inbounds [10 x i32], [10 x i32]* %input, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [10 x i32], [10 x i32]* %expected, i64 0, i64 0
  %call = call i32 @are_equal(i32* %arraydecay1, i32* %arraydecay2, i32 10)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %counter = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %counter, align 4
  %call = call i32 @test_heapify()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %0 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %counter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @test_heapsort_sorted()
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %1 = load i32, i32* %counter, align 4
  %inc6 = add nsw i32 %1, 1
  store i32 %inc6, i32* %counter, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %call8 = call i32 @test_heapsort_reverse_sorted()
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end7
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %2 = load i32, i32* %counter, align 4
  %inc12 = add nsw i32 %2, 1
  store i32 %inc12, i32* %counter, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7
  %call14 = call i32 @test_heapsort_all_equal()
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end13
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %3 = load i32, i32* %counter, align 4
  %inc18 = add nsw i32 %3, 1
  store i32 %inc18, i32* %counter, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13
  %call20 = call i32 @test_heapsort()
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end25, label %if.then22

if.then22:                                        ; preds = %if.end19
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %4 = load i32, i32* %counter, align 4
  %inc24 = add nsw i32 %4, 1
  store i32 %inc24, i32* %counter, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end19
  %5 = load i32, i32* %counter, align 4
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %5)
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

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
