; ModuleID = './code/300-28286LeetCode0315.c'
source_filename = "./code/300-28286LeetCode0315.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.segmentTree = type { i32, i32, i32 }

@min = global i32 2147483647, align 4
@tree = global ptr null, align 8
@__const.main.nums = private unnamed_addr constant [5 x i32] [i32 1, i32 9, i32 7, i32 8, i32 5], align 4
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"pause\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @buildTree(i32 noundef %l, i32 noundef %r, i32 noundef %current) #0 {
entry:
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %current.addr = alloca i32, align 4
  %mid = alloca i32, align 4
  store i32 %l, ptr %l.addr, align 4
  store i32 %r, ptr %r.addr, align 4
  store i32 %current, ptr %current.addr, align 4
  %0 = load i32, ptr %l.addr, align 4
  %1 = load ptr, ptr @tree, align 8
  %2 = load i32, ptr %current.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.segmentTree, ptr %1, i64 %idxprom
  %min = getelementptr inbounds %struct.segmentTree, ptr %arrayidx, i32 0, i32 0
  store i32 %0, ptr %min, align 4
  %3 = load i32, ptr %r.addr, align 4
  %4 = load ptr, ptr @tree, align 8
  %5 = load i32, ptr %current.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds %struct.segmentTree, ptr %4, i64 %idxprom1
  %max = getelementptr inbounds %struct.segmentTree, ptr %arrayidx2, i32 0, i32 1
  store i32 %3, ptr %max, align 4
  %6 = load ptr, ptr @tree, align 8
  %7 = load i32, ptr %current.addr, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds %struct.segmentTree, ptr %6, i64 %idxprom3
  %count = getelementptr inbounds %struct.segmentTree, ptr %arrayidx4, i32 0, i32 2
  store i32 0, ptr %count, align 4
  %8 = load i32, ptr %l.addr, align 4
  %9 = load i32, ptr %r.addr, align 4
  %cmp = icmp eq i32 %8, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr @tree, align 8
  %11 = load i32, ptr %current.addr, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds %struct.segmentTree, ptr %10, i64 %idxprom5
  %min7 = getelementptr inbounds %struct.segmentTree, ptr %arrayidx6, i32 0, i32 0
  %12 = load i32, ptr %min7, align 4
  %13 = load ptr, ptr @tree, align 8
  %14 = load i32, ptr %current.addr, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds %struct.segmentTree, ptr %13, i64 %idxprom8
  %max10 = getelementptr inbounds %struct.segmentTree, ptr %arrayidx9, i32 0, i32 1
  %15 = load i32, ptr %max10, align 4
  %add = add nsw i32 %12, %15
  %shr = ashr i32 %add, 1
  store i32 %shr, ptr %mid, align 4
  %16 = load i32, ptr %l.addr, align 4
  %17 = load i32, ptr %mid, align 4
  %18 = load i32, ptr %current.addr, align 4
  %shl = shl i32 %18, 1
  call void @buildTree(i32 noundef %16, i32 noundef %17, i32 noundef %shl)
  %19 = load i32, ptr %mid, align 4
  %add11 = add nsw i32 %19, 1
  %20 = load i32, ptr %r.addr, align 4
  %21 = load i32, ptr %current.addr, align 4
  %shl12 = shl i32 %21, 1
  %or = or i32 %shl12, 1
  call void @buildTree(i32 noundef %add11, i32 noundef %20, i32 noundef %or)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @query(i32 noundef %num, i32 noundef %current) #0 {
entry:
  %retval = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %current.addr = alloca i32, align 4
  store i32 %num, ptr %num.addr, align 4
  store i32 %current, ptr %current.addr, align 4
  %0 = load i32, ptr %num.addr, align 4
  %1 = load ptr, ptr @tree, align 8
  %2 = load i32, ptr %current.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.segmentTree, ptr %1, i64 %idxprom
  %max = getelementptr inbounds %struct.segmentTree, ptr %arrayidx, i32 0, i32 1
  %3 = load i32, ptr %max, align 4
  %cmp = icmp sge i32 %0, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr @tree, align 8
  %5 = load i32, ptr %current.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds %struct.segmentTree, ptr %4, i64 %idxprom1
  %count = getelementptr inbounds %struct.segmentTree, ptr %arrayidx2, i32 0, i32 2
  %6 = load i32, ptr %count, align 4
  store i32 %6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i32, ptr %num.addr, align 4
  %8 = load i32, ptr @min, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %9 = load i32, ptr %num.addr, align 4
  %10 = load ptr, ptr @tree, align 8
  %11 = load i32, ptr %current.addr, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds %struct.segmentTree, ptr %10, i64 %idxprom6
  %min = getelementptr inbounds %struct.segmentTree, ptr %arrayidx7, i32 0, i32 0
  %12 = load i32, ptr %min, align 4
  %13 = load ptr, ptr @tree, align 8
  %14 = load i32, ptr %current.addr, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds %struct.segmentTree, ptr %13, i64 %idxprom8
  %max10 = getelementptr inbounds %struct.segmentTree, ptr %arrayidx9, i32 0, i32 1
  %15 = load i32, ptr %max10, align 4
  %add = add nsw i32 %12, %15
  %shr = ashr i32 %add, 1
  %cmp11 = icmp sle i32 %9, %shr
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end5
  %16 = load i32, ptr %num.addr, align 4
  %17 = load i32, ptr %current.addr, align 4
  %shl = shl i32 %17, 1
  %call = call i32 @query(i32 noundef %16, i32 noundef %shl)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end5
  %18 = load i32, ptr %num.addr, align 4
  %19 = load i32, ptr %current.addr, align 4
  %shl14 = shl i32 %19, 1
  %call15 = call i32 @query(i32 noundef %18, i32 noundef %shl14)
  %20 = load i32, ptr %num.addr, align 4
  %21 = load i32, ptr %current.addr, align 4
  %shl16 = shl i32 %21, 1
  %or = or i32 %shl16, 1
  %call17 = call i32 @query(i32 noundef %20, i32 noundef %or)
  %add18 = add nsw i32 %call15, %call17
  store i32 %add18, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then12, %if.then4, %if.then
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @insert(i32 noundef %num, i32 noundef %current) #0 {
entry:
  %num.addr = alloca i32, align 4
  %current.addr = alloca i32, align 4
  %mid = alloca i32, align 4
  store i32 %num, ptr %num.addr, align 4
  store i32 %current, ptr %current.addr, align 4
  %0 = load i32, ptr %num.addr, align 4
  %1 = load ptr, ptr @tree, align 8
  %2 = load i32, ptr %current.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.segmentTree, ptr %1, i64 %idxprom
  %min = getelementptr inbounds %struct.segmentTree, ptr %arrayidx, i32 0, i32 0
  %3 = load i32, ptr %min, align 4
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, ptr %num.addr, align 4
  %5 = load ptr, ptr @tree, align 8
  %6 = load i32, ptr %current.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds %struct.segmentTree, ptr %5, i64 %idxprom1
  %max = getelementptr inbounds %struct.segmentTree, ptr %arrayidx2, i32 0, i32 1
  %7 = load i32, ptr %max, align 4
  %cmp3 = icmp sgt i32 %4, %7
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %8 = load ptr, ptr @tree, align 8
  %9 = load i32, ptr %current.addr, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds %struct.segmentTree, ptr %8, i64 %idxprom5
  %min7 = getelementptr inbounds %struct.segmentTree, ptr %arrayidx6, i32 0, i32 0
  %10 = load i32, ptr %min7, align 4
  %11 = load ptr, ptr @tree, align 8
  %12 = load i32, ptr %current.addr, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds %struct.segmentTree, ptr %11, i64 %idxprom8
  %max10 = getelementptr inbounds %struct.segmentTree, ptr %arrayidx9, i32 0, i32 1
  %13 = load i32, ptr %max10, align 4
  %cmp11 = icmp eq i32 %10, %13
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  br label %if.end23

if.end:                                           ; preds = %lor.lhs.false4
  %14 = load ptr, ptr @tree, align 8
  %15 = load i32, ptr %current.addr, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds %struct.segmentTree, ptr %14, i64 %idxprom12
  %count = getelementptr inbounds %struct.segmentTree, ptr %arrayidx13, i32 0, i32 2
  %16 = load i32, ptr %count, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %count, align 4
  %17 = load ptr, ptr @tree, align 8
  %18 = load i32, ptr %current.addr, align 4
  %idxprom14 = sext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds %struct.segmentTree, ptr %17, i64 %idxprom14
  %min16 = getelementptr inbounds %struct.segmentTree, ptr %arrayidx15, i32 0, i32 0
  %19 = load i32, ptr %min16, align 4
  %20 = load ptr, ptr @tree, align 8
  %21 = load i32, ptr %current.addr, align 4
  %idxprom17 = sext i32 %21 to i64
  %arrayidx18 = getelementptr inbounds %struct.segmentTree, ptr %20, i64 %idxprom17
  %max19 = getelementptr inbounds %struct.segmentTree, ptr %arrayidx18, i32 0, i32 1
  %22 = load i32, ptr %max19, align 4
  %add = add nsw i32 %19, %22
  %shr = ashr i32 %add, 1
  store i32 %shr, ptr %mid, align 4
  %23 = load i32, ptr %num.addr, align 4
  %24 = load i32, ptr %mid, align 4
  %cmp20 = icmp sle i32 %23, %24
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end
  %25 = load i32, ptr %num.addr, align 4
  %26 = load i32, ptr %current.addr, align 4
  %shl = shl i32 %26, 1
  call void @insert(i32 noundef %25, i32 noundef %shl)
  br label %if.end23

if.else:                                          ; preds = %if.end
  %27 = load i32, ptr %num.addr, align 4
  %28 = load i32, ptr %current.addr, align 4
  %shl22 = shl i32 %28, 1
  %or = or i32 %shl22, 1
  call void @insert(i32 noundef %27, i32 noundef %or)
  br label %if.end23

if.end23:                                         ; preds = %if.then, %if.else, %if.then21
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @countSmaller(ptr noundef %nums, i32 noundef %numsSize, ptr noundef %returnSize) #0 {
entry:
  %retval = alloca ptr, align 8
  %nums.addr = alloca ptr, align 8
  %numsSize.addr = alloca i32, align 4
  %returnSize.addr = alloca ptr, align 8
  %result = alloca ptr, align 8
  %max = alloca i32, align 4
  %i = alloca i32, align 4
  %i22 = alloca i32, align 4
  store ptr %nums, ptr %nums.addr, align 8
  store i32 %numsSize, ptr %numsSize.addr, align 4
  store ptr %returnSize, ptr %returnSize.addr, align 8
  %0 = load ptr, ptr %returnSize.addr, align 8
  store i32 0, ptr %0, align 4
  %1 = load i32, ptr %numsSize.addr, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 8, %conv
  %call = call ptr @malloc(i64 noundef %mul) #4
  store ptr %call, ptr %result, align 8
  %2 = load i32, ptr %numsSize.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %result, align 8
  store ptr %3, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i32 -2147483648, ptr %max, align 4
  store i32 2147483647, ptr @min, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %numsSize.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr @min, align 4
  %7 = load ptr, ptr %nums.addr, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, ptr %7, i64 %idxprom
  %9 = load i32, ptr %arrayidx, align 4
  %cmp4 = icmp sgt i32 %6, %9
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %10 = load ptr, ptr %nums.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %10, i64 %idxprom6
  %12 = load i32, ptr %arrayidx7, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %13 = load i32, ptr @min, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ %13, %cond.false ]
  store i32 %cond, ptr @min, align 4
  %14 = load i32, ptr %max, align 4
  %15 = load ptr, ptr %nums.addr, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %15, i64 %idxprom8
  %17 = load i32, ptr %arrayidx9, align 4
  %cmp10 = icmp slt i32 %14, %17
  br i1 %cmp10, label %cond.true12, label %cond.false15

cond.true12:                                      ; preds = %cond.end
  %18 = load ptr, ptr %nums.addr, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %19 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %18, i64 %idxprom13
  %20 = load i32, ptr %arrayidx14, align 4
  br label %cond.end16

cond.false15:                                     ; preds = %cond.end
  %21 = load i32, ptr %max, align 4
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false15, %cond.true12
  %cond17 = phi i32 [ %20, %cond.true12 ], [ %21, %cond.false15 ]
  store i32 %cond17, ptr %max, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end16
  %22 = load i32, ptr %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %23 = load i32, ptr %max, align 4
  %24 = load i32, ptr @min, align 4
  %sub = sub nsw i32 %23, %24
  %add = add nsw i32 %sub, 1
  %conv18 = sext i32 %add to i64
  %mul19 = mul i64 12, %conv18
  %mul20 = mul i64 %mul19, 4
  %call21 = call ptr @malloc(i64 noundef %mul20) #4
  store ptr %call21, ptr @tree, align 8
  %25 = load i32, ptr @min, align 4
  %26 = load i32, ptr %max, align 4
  call void @buildTree(i32 noundef %25, i32 noundef %26, i32 noundef 1)
  %27 = load i32, ptr %numsSize.addr, align 4
  %sub23 = sub nsw i32 %27, 1
  store i32 %sub23, ptr %i22, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc37, %for.end
  %28 = load i32, ptr %i22, align 4
  %cmp25 = icmp sge i32 %28, 0
  br i1 %cmp25, label %for.body27, label %for.end38

for.body27:                                       ; preds = %for.cond24
  %29 = load ptr, ptr %nums.addr, align 8
  %30 = load i32, ptr %i22, align 4
  %idxprom28 = sext i32 %30 to i64
  %arrayidx29 = getelementptr inbounds i32, ptr %29, i64 %idxprom28
  %31 = load i32, ptr %arrayidx29, align 4
  %sub30 = sub nsw i32 %31, 1
  %call31 = call i32 @query(i32 noundef %sub30, i32 noundef 1)
  %32 = load ptr, ptr %result, align 8
  %33 = load i32, ptr %i22, align 4
  %idxprom32 = sext i32 %33 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %32, i64 %idxprom32
  store i32 %call31, ptr %arrayidx33, align 4
  %34 = load ptr, ptr %nums.addr, align 8
  %35 = load i32, ptr %i22, align 4
  %idxprom34 = sext i32 %35 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %34, i64 %idxprom34
  %36 = load i32, ptr %arrayidx35, align 4
  call void @insert(i32 noundef %36, i32 noundef 1)
  %37 = load ptr, ptr %returnSize.addr, align 8
  %38 = load i32, ptr %37, align 4
  %inc36 = add nsw i32 %38, 1
  store i32 %inc36, ptr %37, align 4
  br label %for.inc37

for.inc37:                                        ; preds = %for.body27
  %39 = load i32, ptr %i22, align 4
  %dec = add nsw i32 %39, -1
  store i32 %dec, ptr %i22, align 4
  br label %for.cond24, !llvm.loop !7

for.end38:                                        ; preds = %for.cond24
  %40 = load ptr, ptr %result, align 8
  store ptr %40, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end38, %if.then
  %41 = load ptr, ptr %retval, align 8
  ret ptr %41
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %nums = alloca [5 x i32], align 4
  %returnSize = alloca ptr, align 8
  %result = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %nums, ptr align 4 @__const.main.nums, i64 20, i1 false)
  %call = call ptr @malloc(i64 noundef 4) #4
  store ptr %call, ptr %returnSize, align 8
  %arraydecay = getelementptr inbounds [5 x i32], ptr %nums, i64 0, i64 0
  %0 = load ptr, ptr %returnSize, align 8
  %call1 = call ptr @countSmaller(ptr noundef %arraydecay, i32 noundef 5, ptr noundef %0)
  store ptr %call1, ptr %result, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load ptr, ptr %returnSize, align 8
  %3 = load i32, ptr %2, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %result, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %call3 = call i32 @"\01_system"(ptr noundef @.str.1)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @printf(ptr noundef, ...) #3

declare i32 @"\01_system"(ptr noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
