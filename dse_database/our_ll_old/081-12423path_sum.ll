; ModuleID = './code/081-12423path_sum.c'
source_filename = "./code/081-12423path_sum.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.TreeNode = type { i32, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @pathSum(ptr noundef %root, i32 noundef %sum, ptr noundef %returnSize, ptr noundef %returnColumnSizes) #0 {
entry:
  %retval = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %sum.addr = alloca i32, align 4
  %returnSize.addr = alloca ptr, align 8
  %returnColumnSizes.addr = alloca ptr, align 8
  %level = alloca i32, align 4
  %cap = alloca i32, align 4
  %stack = alloca ptr, align 8
  %results = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  store i32 %sum, ptr %sum.addr, align 4
  store ptr %returnSize, ptr %returnSize.addr, align 8
  store ptr %returnColumnSizes, ptr %returnColumnSizes.addr, align 8
  %0 = load ptr, ptr %root.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %returnSize.addr, align 8
  store i32 0, ptr %1, align 4
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i32 5000, ptr %level, align 4
  store i32 1000, ptr %cap, align 4
  %2 = load i32, ptr %level, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 %conv, 4
  %call = call ptr @malloc(i64 noundef %mul) #5
  store ptr %call, ptr %stack, align 8
  %3 = load i32, ptr %cap, align 4
  %conv1 = sext i32 %3 to i64
  %mul2 = mul i64 %conv1, 8
  %call3 = call ptr @malloc(i64 noundef %mul2) #5
  store ptr %call3, ptr %results, align 8
  %4 = load i32, ptr %cap, align 4
  %conv4 = sext i32 %4 to i64
  %mul5 = mul i64 %conv4, 4
  %call6 = call ptr @malloc(i64 noundef %mul5) #5
  %5 = load ptr, ptr %returnColumnSizes.addr, align 8
  store ptr %call6, ptr %5, align 8
  %6 = load ptr, ptr %root.addr, align 8
  %7 = load i32, ptr %sum.addr, align 4
  %8 = load ptr, ptr %stack, align 8
  %9 = load ptr, ptr %results, align 8
  %10 = load ptr, ptr %returnColumnSizes.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %returnSize.addr, align 8
  call void @dfs(ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef 0, ptr noundef %9, ptr noundef %11, ptr noundef %12)
  %13 = load ptr, ptr %results, align 8
  store ptr %13, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load ptr, ptr %retval, align 8
  ret ptr %14
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @dfs(ptr noundef %node, i32 noundef %sum, ptr noundef %stack, i32 noundef %len, ptr noundef %results, ptr noundef %sizes, ptr noundef %count) #0 {
entry:
  %node.addr = alloca ptr, align 8
  %sum.addr = alloca i32, align 4
  %stack.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %results.addr = alloca ptr, align 8
  %sizes.addr = alloca ptr, align 8
  %count.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  store i32 %sum, ptr %sum.addr, align 4
  store ptr %stack, ptr %stack.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store ptr %results, ptr %results.addr, align 8
  store ptr %sizes, ptr %sizes.addr, align 8
  store ptr %count, ptr %count.addr, align 8
  %0 = load ptr, ptr %node.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end32

if.else:                                          ; preds = %entry
  %1 = load ptr, ptr %node.addr, align 8
  %left = getelementptr inbounds %struct.TreeNode, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %left, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %land.lhs.true, label %if.else21

land.lhs.true:                                    ; preds = %if.else
  %3 = load ptr, ptr %node.addr, align 8
  %right = getelementptr inbounds %struct.TreeNode, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %right, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %land.lhs.true3, label %if.else21

land.lhs.true3:                                   ; preds = %land.lhs.true
  %5 = load i32, ptr %sum.addr, align 4
  %6 = load ptr, ptr %node.addr, align 8
  %val = getelementptr inbounds %struct.TreeNode, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %val, align 8
  %cmp4 = icmp eq i32 %5, %7
  br i1 %cmp4, label %if.then5, label %if.else21

if.then5:                                         ; preds = %land.lhs.true3
  %8 = load i32, ptr %len.addr, align 4
  %add = add nsw i32 %8, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 4
  %call = call ptr @malloc(i64 noundef %mul) #5
  %9 = load ptr, ptr %results.addr, align 8
  %10 = load ptr, ptr %count.addr, align 8
  %11 = load i32, ptr %10, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 %idxprom
  store ptr %call, ptr %arrayidx, align 8
  %12 = load ptr, ptr %results.addr, align 8
  %13 = load ptr, ptr %count.addr, align 8
  %14 = load i32, ptr %13, align 4
  %idxprom6 = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %12, i64 %idxprom6
  %15 = load ptr, ptr %arrayidx7, align 8
  %16 = load ptr, ptr %stack.addr, align 8
  %17 = load i32, ptr %len.addr, align 4
  %conv8 = sext i32 %17 to i64
  %mul9 = mul i64 %conv8, 4
  %18 = load ptr, ptr %results.addr, align 8
  %19 = load ptr, ptr %count.addr, align 8
  %20 = load i32, ptr %19, align 4
  %idxprom10 = sext i32 %20 to i64
  %arrayidx11 = getelementptr inbounds ptr, ptr %18, i64 %idxprom10
  %21 = load ptr, ptr %arrayidx11, align 8
  %22 = call i64 @llvm.objectsize.i64.p0(ptr %21, i1 false, i1 true, i1 false)
  %call12 = call ptr @__memcpy_chk(ptr noundef %15, ptr noundef %16, i64 noundef %mul9, i64 noundef %22) #6
  %23 = load ptr, ptr %node.addr, align 8
  %val13 = getelementptr inbounds %struct.TreeNode, ptr %23, i32 0, i32 0
  %24 = load i32, ptr %val13, align 8
  %25 = load ptr, ptr %results.addr, align 8
  %26 = load ptr, ptr %count.addr, align 8
  %27 = load i32, ptr %26, align 4
  %idxprom14 = sext i32 %27 to i64
  %arrayidx15 = getelementptr inbounds ptr, ptr %25, i64 %idxprom14
  %28 = load ptr, ptr %arrayidx15, align 8
  %29 = load i32, ptr %len.addr, align 4
  %idxprom16 = sext i32 %29 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %28, i64 %idxprom16
  store i32 %24, ptr %arrayidx17, align 4
  %30 = load i32, ptr %len.addr, align 4
  %add18 = add nsw i32 %30, 1
  %31 = load ptr, ptr %sizes.addr, align 8
  %32 = load ptr, ptr %count.addr, align 8
  %33 = load i32, ptr %32, align 4
  %idxprom19 = sext i32 %33 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %31, i64 %idxprom19
  store i32 %add18, ptr %arrayidx20, align 4
  %34 = load ptr, ptr %count.addr, align 8
  %35 = load i32, ptr %34, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, ptr %34, align 4
  br label %if.end

if.else21:                                        ; preds = %land.lhs.true3, %land.lhs.true, %if.else
  %36 = load ptr, ptr %node.addr, align 8
  %val22 = getelementptr inbounds %struct.TreeNode, ptr %36, i32 0, i32 0
  %37 = load i32, ptr %val22, align 8
  %38 = load ptr, ptr %stack.addr, align 8
  %39 = load i32, ptr %len.addr, align 4
  %idxprom23 = sext i32 %39 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %38, i64 %idxprom23
  store i32 %37, ptr %arrayidx24, align 4
  %40 = load ptr, ptr %node.addr, align 8
  %left25 = getelementptr inbounds %struct.TreeNode, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %left25, align 8
  %42 = load i32, ptr %sum.addr, align 4
  %43 = load ptr, ptr %node.addr, align 8
  %val26 = getelementptr inbounds %struct.TreeNode, ptr %43, i32 0, i32 0
  %44 = load i32, ptr %val26, align 8
  %sub = sub nsw i32 %42, %44
  %45 = load ptr, ptr %stack.addr, align 8
  %46 = load i32, ptr %len.addr, align 4
  %add27 = add nsw i32 %46, 1
  %47 = load ptr, ptr %results.addr, align 8
  %48 = load ptr, ptr %sizes.addr, align 8
  %49 = load ptr, ptr %count.addr, align 8
  call void @dfs(ptr noundef %41, i32 noundef %sub, ptr noundef %45, i32 noundef %add27, ptr noundef %47, ptr noundef %48, ptr noundef %49)
  %50 = load ptr, ptr %node.addr, align 8
  %right28 = getelementptr inbounds %struct.TreeNode, ptr %50, i32 0, i32 2
  %51 = load ptr, ptr %right28, align 8
  %52 = load i32, ptr %sum.addr, align 4
  %53 = load ptr, ptr %node.addr, align 8
  %val29 = getelementptr inbounds %struct.TreeNode, ptr %53, i32 0, i32 0
  %54 = load i32, ptr %val29, align 8
  %sub30 = sub nsw i32 %52, %54
  %55 = load ptr, ptr %stack.addr, align 8
  %56 = load i32, ptr %len.addr, align 4
  %add31 = add nsw i32 %56, 1
  %57 = load ptr, ptr %results.addr, align 8
  %58 = load ptr, ptr %sizes.addr, align 8
  %59 = load ptr, ptr %count.addr, align 8
  call void @dfs(ptr noundef %51, i32 noundef %sub30, ptr noundef %55, i32 noundef %add31, ptr noundef %57, ptr noundef %58, ptr noundef %59)
  br label %if.end

if.end:                                           ; preds = %if.else21, %if.then5
  br label %if.end32

if.end32:                                         ; preds = %if.then, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %root = alloca %struct.TreeNode, align 8
  %n1 = alloca [2 x %struct.TreeNode], align 8
  %n2 = alloca [4 x %struct.TreeNode], align 8
  %n3 = alloca [8 x %struct.TreeNode], align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %count = alloca i32, align 4
  %col_sizes = alloca ptr, align 8
  %sum = alloca i32, align 4
  %list = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %val = getelementptr inbounds %struct.TreeNode, ptr %root, i32 0, i32 0
  store i32 5, ptr %val, align 8
  %arrayidx = getelementptr inbounds [2 x %struct.TreeNode], ptr %n1, i64 0, i64 0
  %val1 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx, i32 0, i32 0
  store i32 4, ptr %val1, align 8
  %arrayidx2 = getelementptr inbounds [2 x %struct.TreeNode], ptr %n1, i64 0, i64 1
  %val3 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx2, i32 0, i32 0
  store i32 8, ptr %val3, align 8
  %arrayidx4 = getelementptr inbounds [4 x %struct.TreeNode], ptr %n2, i64 0, i64 0
  %val5 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx4, i32 0, i32 0
  store i32 11, ptr %val5, align 8
  %arrayidx6 = getelementptr inbounds [4 x %struct.TreeNode], ptr %n2, i64 0, i64 2
  %val7 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx6, i32 0, i32 0
  store i32 13, ptr %val7, align 8
  %arrayidx8 = getelementptr inbounds [4 x %struct.TreeNode], ptr %n2, i64 0, i64 3
  %val9 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx8, i32 0, i32 0
  store i32 4, ptr %val9, align 8
  %arrayidx10 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 0
  %val11 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx10, i32 0, i32 0
  store i32 7, ptr %val11, align 8
  %arrayidx12 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 1
  %val13 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx12, i32 0, i32 0
  store i32 2, ptr %val13, align 8
  %arrayidx14 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 6
  %val15 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx14, i32 0, i32 0
  store i32 5, ptr %val15, align 8
  %arrayidx16 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 7
  %val17 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx16, i32 0, i32 0
  store i32 1, ptr %val17, align 8
  %arrayidx18 = getelementptr inbounds [2 x %struct.TreeNode], ptr %n1, i64 0, i64 0
  %left = getelementptr inbounds %struct.TreeNode, ptr %root, i32 0, i32 1
  store ptr %arrayidx18, ptr %left, align 8
  %arrayidx19 = getelementptr inbounds [2 x %struct.TreeNode], ptr %n1, i64 0, i64 1
  %right = getelementptr inbounds %struct.TreeNode, ptr %root, i32 0, i32 2
  store ptr %arrayidx19, ptr %right, align 8
  %arrayidx20 = getelementptr inbounds [4 x %struct.TreeNode], ptr %n2, i64 0, i64 0
  %arrayidx21 = getelementptr inbounds [2 x %struct.TreeNode], ptr %n1, i64 0, i64 0
  %left22 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx21, i32 0, i32 1
  store ptr %arrayidx20, ptr %left22, align 8
  %arrayidx23 = getelementptr inbounds [2 x %struct.TreeNode], ptr %n1, i64 0, i64 0
  %right24 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx23, i32 0, i32 2
  store ptr null, ptr %right24, align 8
  %arrayidx25 = getelementptr inbounds [4 x %struct.TreeNode], ptr %n2, i64 0, i64 2
  %arrayidx26 = getelementptr inbounds [2 x %struct.TreeNode], ptr %n1, i64 0, i64 1
  %left27 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx26, i32 0, i32 1
  store ptr %arrayidx25, ptr %left27, align 8
  %arrayidx28 = getelementptr inbounds [4 x %struct.TreeNode], ptr %n2, i64 0, i64 3
  %arrayidx29 = getelementptr inbounds [2 x %struct.TreeNode], ptr %n1, i64 0, i64 1
  %right30 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx29, i32 0, i32 2
  store ptr %arrayidx28, ptr %right30, align 8
  %arrayidx31 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 0
  %arrayidx32 = getelementptr inbounds [4 x %struct.TreeNode], ptr %n2, i64 0, i64 0
  %left33 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx32, i32 0, i32 1
  store ptr %arrayidx31, ptr %left33, align 8
  %arrayidx34 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 1
  %arrayidx35 = getelementptr inbounds [4 x %struct.TreeNode], ptr %n2, i64 0, i64 0
  %right36 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx35, i32 0, i32 2
  store ptr %arrayidx34, ptr %right36, align 8
  %arrayidx37 = getelementptr inbounds [4 x %struct.TreeNode], ptr %n2, i64 0, i64 2
  %left38 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx37, i32 0, i32 1
  store ptr null, ptr %left38, align 8
  %arrayidx39 = getelementptr inbounds [4 x %struct.TreeNode], ptr %n2, i64 0, i64 2
  %right40 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx39, i32 0, i32 2
  store ptr null, ptr %right40, align 8
  %arrayidx41 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 6
  %arrayidx42 = getelementptr inbounds [4 x %struct.TreeNode], ptr %n2, i64 0, i64 3
  %left43 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx42, i32 0, i32 1
  store ptr %arrayidx41, ptr %left43, align 8
  %arrayidx44 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 7
  %arrayidx45 = getelementptr inbounds [4 x %struct.TreeNode], ptr %n2, i64 0, i64 3
  %right46 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx45, i32 0, i32 2
  store ptr %arrayidx44, ptr %right46, align 8
  %arrayidx47 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 0
  %left48 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx47, i32 0, i32 1
  store ptr null, ptr %left48, align 8
  %arrayidx49 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 0
  %right50 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx49, i32 0, i32 2
  store ptr null, ptr %right50, align 8
  %arrayidx51 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 1
  %left52 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx51, i32 0, i32 1
  store ptr null, ptr %left52, align 8
  %arrayidx53 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 1
  %right54 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx53, i32 0, i32 2
  store ptr null, ptr %right54, align 8
  %arrayidx55 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 6
  %left56 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx55, i32 0, i32 1
  store ptr null, ptr %left56, align 8
  %arrayidx57 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 6
  %right58 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx57, i32 0, i32 2
  store ptr null, ptr %right58, align 8
  %arrayidx59 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 7
  %left60 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx59, i32 0, i32 1
  store ptr null, ptr %left60, align 8
  %arrayidx61 = getelementptr inbounds [8 x %struct.TreeNode], ptr %n3, i64 0, i64 7
  %right62 = getelementptr inbounds %struct.TreeNode, ptr %arrayidx61, i32 0, i32 2
  store ptr null, ptr %right62, align 8
  store i32 0, ptr %count, align 4
  store i32 22, ptr %sum, align 4
  %0 = load i32, ptr %sum, align 4
  %call = call ptr @pathSum(ptr noundef %root, i32 noundef %0, ptr noundef %count, ptr noundef %col_sizes)
  store ptr %call, ptr %list, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc73, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %count, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end75

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc, %for.body
  %3 = load i32, ptr %j, align 4
  %4 = load ptr, ptr %col_sizes, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx64 = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %6 = load i32, ptr %arrayidx64, align 4
  %cmp65 = icmp slt i32 %3, %6
  br i1 %cmp65, label %for.body66, label %for.end

for.body66:                                       ; preds = %for.cond63
  %7 = load ptr, ptr %list, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom67 = sext i32 %8 to i64
  %arrayidx68 = getelementptr inbounds ptr, ptr %7, i64 %idxprom67
  %9 = load ptr, ptr %arrayidx68, align 8
  %10 = load i32, ptr %j, align 4
  %idxprom69 = sext i32 %10 to i64
  %arrayidx70 = getelementptr inbounds i32, ptr %9, i64 %idxprom69
  %11 = load i32, ptr %arrayidx70, align 4
  %call71 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body66
  %12 = load i32, ptr %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond63, !llvm.loop !5

for.end:                                          ; preds = %for.cond63
  %call72 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %for.inc73

for.inc73:                                        ; preds = %for.end
  %13 = load i32, ptr %i, align 4
  %inc74 = add nsw i32 %13, 1
  store i32 %inc74, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end75:                                        ; preds = %for.cond
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { allocsize(0) }
attributes #6 = { nounwind }

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
