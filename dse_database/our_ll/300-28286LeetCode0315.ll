; ModuleID = 'code/300-28286LeetCode0315.c'
source_filename = "code/300-28286LeetCode0315.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.segmentTree = type { i32, i32, i32 }

@min = dso_local global i32 2147483647, align 4
@tree = dso_local global %struct.segmentTree* null, align 8
@__const.main.nums = private unnamed_addr constant [5 x i32] [i32 1, i32 9, i32 7, i32 8, i32 5], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"pause\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buildTree(i32 %l, i32 %r, i32 %current) #0 {
entry:
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %current.addr = alloca i32, align 4
  %mid = alloca i32, align 4
  store i32 %l, i32* %l.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  store i32 %current, i32* %current.addr, align 4
  %0 = load i32, i32* %l.addr, align 4
  %1 = load %struct.segmentTree*, %struct.segmentTree** @tree, align 8
  %2 = load i32, i32* %current.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %1, i64 %idxprom
  %min = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %arrayidx, i32 0, i32 0
  store i32 %0, i32* %min, align 4
  %3 = load i32, i32* %r.addr, align 4
  %4 = load %struct.segmentTree*, %struct.segmentTree** @tree, align 8
  %5 = load i32, i32* %current.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %4, i64 %idxprom1
  %max = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %arrayidx2, i32 0, i32 1
  store i32 %3, i32* %max, align 4
  %6 = load %struct.segmentTree*, %struct.segmentTree** @tree, align 8
  %7 = load i32, i32* %current.addr, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %6, i64 %idxprom3
  %count = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %arrayidx4, i32 0, i32 2
  store i32 0, i32* %count, align 4
  %8 = load i32, i32* %l.addr, align 4
  %9 = load i32, i32* %r.addr, align 4
  %cmp = icmp eq i32 %8, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct.segmentTree*, %struct.segmentTree** @tree, align 8
  %11 = load i32, i32* %current.addr, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %10, i64 %idxprom5
  %min7 = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %arrayidx6, i32 0, i32 0
  %12 = load i32, i32* %min7, align 4
  %13 = load %struct.segmentTree*, %struct.segmentTree** @tree, align 8
  %14 = load i32, i32* %current.addr, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %13, i64 %idxprom8
  %max10 = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %arrayidx9, i32 0, i32 1
  %15 = load i32, i32* %max10, align 4
  %add = add nsw i32 %12, %15
  %shr = ashr i32 %add, 1
  store i32 %shr, i32* %mid, align 4
  %16 = load i32, i32* %l.addr, align 4
  %17 = load i32, i32* %mid, align 4
  %18 = load i32, i32* %current.addr, align 4
  %shl = shl i32 %18, 1
  call void @buildTree(i32 %16, i32 %17, i32 %shl)
  %19 = load i32, i32* %mid, align 4
  %add11 = add nsw i32 %19, 1
  %20 = load i32, i32* %r.addr, align 4
  %21 = load i32, i32* %current.addr, align 4
  %shl12 = shl i32 %21, 1
  %or = or i32 %shl12, 1
  call void @buildTree(i32 %add11, i32 %20, i32 %or)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @query(i32 %num, i32 %current) #0 {
entry:
  %retval = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %current.addr = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 %current, i32* %current.addr, align 4
  %0 = load i32, i32* %num.addr, align 4
  %1 = load %struct.segmentTree*, %struct.segmentTree** @tree, align 8
  %2 = load i32, i32* %current.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %1, i64 %idxprom
  %max = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %arrayidx, i32 0, i32 1
  %3 = load i32, i32* %max, align 4
  %cmp = icmp sge i32 %0, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.segmentTree*, %struct.segmentTree** @tree, align 8
  %5 = load i32, i32* %current.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %4, i64 %idxprom1
  %count = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %arrayidx2, i32 0, i32 2
  %6 = load i32, i32* %count, align 4
  store i32 %6, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %num.addr, align 4
  %8 = load i32, i32* @min, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %9 = load i32, i32* %num.addr, align 4
  %10 = load %struct.segmentTree*, %struct.segmentTree** @tree, align 8
  %11 = load i32, i32* %current.addr, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %10, i64 %idxprom6
  %min = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %arrayidx7, i32 0, i32 0
  %12 = load i32, i32* %min, align 4
  %13 = load %struct.segmentTree*, %struct.segmentTree** @tree, align 8
  %14 = load i32, i32* %current.addr, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %13, i64 %idxprom8
  %max10 = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %arrayidx9, i32 0, i32 1
  %15 = load i32, i32* %max10, align 4
  %add = add nsw i32 %12, %15
  %shr = ashr i32 %add, 1
  %cmp11 = icmp sle i32 %9, %shr
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end5
  %16 = load i32, i32* %num.addr, align 4
  %17 = load i32, i32* %current.addr, align 4
  %shl = shl i32 %17, 1
  %call = call i32 @query(i32 %16, i32 %shl)
  store i32 %call, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end5
  %18 = load i32, i32* %num.addr, align 4
  %19 = load i32, i32* %current.addr, align 4
  %shl14 = shl i32 %19, 1
  %call15 = call i32 @query(i32 %18, i32 %shl14)
  %20 = load i32, i32* %num.addr, align 4
  %21 = load i32, i32* %current.addr, align 4
  %shl16 = shl i32 %21, 1
  %or = or i32 %shl16, 1
  %call17 = call i32 @query(i32 %20, i32 %or)
  %add18 = add nsw i32 %call15, %call17
  store i32 %add18, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then12, %if.then4, %if.then
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert(i32 %num, i32 %current) #0 {
entry:
  %num.addr = alloca i32, align 4
  %current.addr = alloca i32, align 4
  %mid = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 %current, i32* %current.addr, align 4
  %0 = load i32, i32* %num.addr, align 4
  %1 = load %struct.segmentTree*, %struct.segmentTree** @tree, align 8
  %2 = load i32, i32* %current.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %1, i64 %idxprom
  %min = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %arrayidx, i32 0, i32 0
  %3 = load i32, i32* %min, align 4
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %num.addr, align 4
  %5 = load %struct.segmentTree*, %struct.segmentTree** @tree, align 8
  %6 = load i32, i32* %current.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %5, i64 %idxprom1
  %max = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %arrayidx2, i32 0, i32 1
  %7 = load i32, i32* %max, align 4
  %cmp3 = icmp sgt i32 %4, %7
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %8 = load %struct.segmentTree*, %struct.segmentTree** @tree, align 8
  %9 = load i32, i32* %current.addr, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %8, i64 %idxprom5
  %min7 = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %arrayidx6, i32 0, i32 0
  %10 = load i32, i32* %min7, align 4
  %11 = load %struct.segmentTree*, %struct.segmentTree** @tree, align 8
  %12 = load i32, i32* %current.addr, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %11, i64 %idxprom8
  %max10 = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %arrayidx9, i32 0, i32 1
  %13 = load i32, i32* %max10, align 4
  %cmp11 = icmp eq i32 %10, %13
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %entry
  br label %if.end23

if.end:                                           ; preds = %lor.lhs.false4
  %14 = load %struct.segmentTree*, %struct.segmentTree** @tree, align 8
  %15 = load i32, i32* %current.addr, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %14, i64 %idxprom12
  %count = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %arrayidx13, i32 0, i32 2
  %16 = load i32, i32* %count, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %count, align 4
  %17 = load %struct.segmentTree*, %struct.segmentTree** @tree, align 8
  %18 = load i32, i32* %current.addr, align 4
  %idxprom14 = sext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %17, i64 %idxprom14
  %min16 = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %arrayidx15, i32 0, i32 0
  %19 = load i32, i32* %min16, align 4
  %20 = load %struct.segmentTree*, %struct.segmentTree** @tree, align 8
  %21 = load i32, i32* %current.addr, align 4
  %idxprom17 = sext i32 %21 to i64
  %arrayidx18 = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %20, i64 %idxprom17
  %max19 = getelementptr inbounds %struct.segmentTree, %struct.segmentTree* %arrayidx18, i32 0, i32 1
  %22 = load i32, i32* %max19, align 4
  %add = add nsw i32 %19, %22
  %shr = ashr i32 %add, 1
  store i32 %shr, i32* %mid, align 4
  %23 = load i32, i32* %num.addr, align 4
  %24 = load i32, i32* %mid, align 4
  %cmp20 = icmp sle i32 %23, %24
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end
  %25 = load i32, i32* %num.addr, align 4
  %26 = load i32, i32* %current.addr, align 4
  %shl = shl i32 %26, 1
  call void @insert(i32 %25, i32 %shl)
  br label %if.end23

if.else:                                          ; preds = %if.end
  %27 = load i32, i32* %num.addr, align 4
  %28 = load i32, i32* %current.addr, align 4
  %shl22 = shl i32 %28, 1
  %or = or i32 %shl22, 1
  call void @insert(i32 %27, i32 %or)
  br label %if.end23

if.end23:                                         ; preds = %if.then, %if.else, %if.then21
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @countSmaller(i32* %nums, i32 %numsSize, i32* %returnSize) #0 {
entry:
  %retval = alloca i32*, align 8
  %nums.addr = alloca i32*, align 8
  %numsSize.addr = alloca i32, align 4
  %returnSize.addr = alloca i32*, align 8
  %result = alloca i32*, align 8
  %max = alloca i32, align 4
  %i = alloca i32, align 4
  %i22 = alloca i32, align 4
  store i32* %nums, i32** %nums.addr, align 8
  store i32 %numsSize, i32* %numsSize.addr, align 4
  store i32* %returnSize, i32** %returnSize.addr, align 8
  %0 = load i32*, i32** %returnSize.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load i32, i32* %numsSize.addr, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 8, %conv
  %call = call noalias align 16 i8* @malloc(i64 %mul) #4
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** %result, align 8
  %3 = load i32, i32* %numsSize.addr, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32*, i32** %result, align 8
  store i32* %4, i32** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i32 -2147483648, i32* %max, align 4
  store i32 2147483647, i32* @min, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %numsSize.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* @min, align 4
  %8 = load i32*, i32** %nums.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %cmp4 = icmp sgt i32 %7, %10
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %11 = load i32*, i32** %nums.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 %idxprom6
  %13 = load i32, i32* %arrayidx7, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %14 = load i32, i32* @min, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %14, %cond.false ]
  store i32 %cond, i32* @min, align 4
  %15 = load i32, i32* %max, align 4
  %16 = load i32*, i32** %nums.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %16, i64 %idxprom8
  %18 = load i32, i32* %arrayidx9, align 4
  %cmp10 = icmp slt i32 %15, %18
  br i1 %cmp10, label %cond.true12, label %cond.false15

cond.true12:                                      ; preds = %cond.end
  %19 = load i32*, i32** %nums.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %20 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %19, i64 %idxprom13
  %21 = load i32, i32* %arrayidx14, align 4
  br label %cond.end16

cond.false15:                                     ; preds = %cond.end
  %22 = load i32, i32* %max, align 4
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false15, %cond.true12
  %cond17 = phi i32 [ %21, %cond.true12 ], [ %22, %cond.false15 ]
  store i32 %cond17, i32* %max, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end16
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %max, align 4
  %25 = load i32, i32* @min, align 4
  %sub = sub nsw i32 %24, %25
  %add = add nsw i32 %sub, 1
  %conv18 = sext i32 %add to i64
  %mul19 = mul i64 12, %conv18
  %mul20 = mul i64 %mul19, 4
  %call21 = call noalias align 16 i8* @malloc(i64 %mul20) #4
  %26 = bitcast i8* %call21 to %struct.segmentTree*
  store %struct.segmentTree* %26, %struct.segmentTree** @tree, align 8
  %27 = load i32, i32* @min, align 4
  %28 = load i32, i32* %max, align 4
  call void @buildTree(i32 %27, i32 %28, i32 1)
  %29 = load i32, i32* %numsSize.addr, align 4
  %sub23 = sub nsw i32 %29, 1
  store i32 %sub23, i32* %i22, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc37, %for.end
  %30 = load i32, i32* %i22, align 4
  %cmp25 = icmp sge i32 %30, 0
  br i1 %cmp25, label %for.body27, label %for.end38

for.body27:                                       ; preds = %for.cond24
  %31 = load i32*, i32** %nums.addr, align 8
  %32 = load i32, i32* %i22, align 4
  %idxprom28 = sext i32 %32 to i64
  %arrayidx29 = getelementptr inbounds i32, i32* %31, i64 %idxprom28
  %33 = load i32, i32* %arrayidx29, align 4
  %sub30 = sub nsw i32 %33, 1
  %call31 = call i32 @query(i32 %sub30, i32 1)
  %34 = load i32*, i32** %result, align 8
  %35 = load i32, i32* %i22, align 4
  %idxprom32 = sext i32 %35 to i64
  %arrayidx33 = getelementptr inbounds i32, i32* %34, i64 %idxprom32
  store i32 %call31, i32* %arrayidx33, align 4
  %36 = load i32*, i32** %nums.addr, align 8
  %37 = load i32, i32* %i22, align 4
  %idxprom34 = sext i32 %37 to i64
  %arrayidx35 = getelementptr inbounds i32, i32* %36, i64 %idxprom34
  %38 = load i32, i32* %arrayidx35, align 4
  call void @insert(i32 %38, i32 1)
  %39 = load i32*, i32** %returnSize.addr, align 8
  %40 = load i32, i32* %39, align 4
  %inc36 = add nsw i32 %40, 1
  store i32 %inc36, i32* %39, align 4
  br label %for.inc37

for.inc37:                                        ; preds = %for.body27
  %41 = load i32, i32* %i22, align 4
  %dec = add nsw i32 %41, -1
  store i32 %dec, i32* %i22, align 4
  br label %for.cond24, !llvm.loop !6

for.end38:                                        ; preds = %for.cond24
  %42 = load i32*, i32** %result, align 8
  store i32* %42, i32** %retval, align 8
  br label %return

return:                                           ; preds = %for.end38, %if.then
  %43 = load i32*, i32** %retval, align 8
  ret i32* %43
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %nums = alloca [5 x i32], align 16
  %returnSize = alloca i32*, align 8
  %result = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [5 x i32]* %nums to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([5 x i32]* @__const.main.nums to i8*), i64 20, i1 false)
  %call = call noalias align 16 i8* @malloc(i64 4) #4
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %returnSize, align 8
  %arraydecay = getelementptr inbounds [5 x i32], [5 x i32]* %nums, i64 0, i64 0
  %2 = load i32*, i32** %returnSize, align 8
  %call1 = call i32* @countSmaller(i32* %arraydecay, i32 5, i32* %2)
  store i32* %call1, i32** %result, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32*, i32** %returnSize, align 8
  %5 = load i32, i32* %4, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32*, i32** %result, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %call3 = call i32 @system(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #3

declare dso_local i32 @system(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
