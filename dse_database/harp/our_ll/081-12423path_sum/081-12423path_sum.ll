; ModuleID = 'code/081-12423path_sum.c'
source_filename = "code/081-12423path_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TreeNode = type { i32, %struct.TreeNode*, %struct.TreeNode* }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32** @pathSum(%struct.TreeNode* %root, i32 %sum, i32* %returnSize, i32** %returnColumnSizes) #0 {
entry:
  %retval = alloca i32**, align 8
  %root.addr = alloca %struct.TreeNode*, align 8
  %sum.addr = alloca i32, align 4
  %returnSize.addr = alloca i32*, align 8
  %returnColumnSizes.addr = alloca i32**, align 8
  %level = alloca i32, align 4
  %cap = alloca i32, align 4
  %stack = alloca i32*, align 8
  %results = alloca i32**, align 8
  store %struct.TreeNode* %root, %struct.TreeNode** %root.addr, align 8
  store i32 %sum, i32* %sum.addr, align 4
  store i32* %returnSize, i32** %returnSize.addr, align 8
  store i32** %returnColumnSizes, i32*** %returnColumnSizes.addr, align 8
  %0 = load %struct.TreeNode*, %struct.TreeNode** %root.addr, align 8
  %cmp = icmp eq %struct.TreeNode* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %returnSize.addr, align 8
  store i32 0, i32* %1, align 4
  store i32** null, i32*** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i32 5000, i32* %level, align 4
  store i32 1000, i32* %cap, align 4
  %2 = load i32, i32* %level, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias align 16 i8* @malloc(i64 %mul) #4
  %3 = bitcast i8* %call to i32*
  store i32* %3, i32** %stack, align 8
  %4 = load i32, i32* %cap, align 4
  %conv1 = sext i32 %4 to i64
  %mul2 = mul i64 %conv1, 8
  %call3 = call noalias align 16 i8* @malloc(i64 %mul2) #4
  %5 = bitcast i8* %call3 to i32**
  store i32** %5, i32*** %results, align 8
  %6 = load i32, i32* %cap, align 4
  %conv4 = sext i32 %6 to i64
  %mul5 = mul i64 %conv4, 4
  %call6 = call noalias align 16 i8* @malloc(i64 %mul5) #4
  %7 = bitcast i8* %call6 to i32*
  %8 = load i32**, i32*** %returnColumnSizes.addr, align 8
  store i32* %7, i32** %8, align 8
  %9 = load %struct.TreeNode*, %struct.TreeNode** %root.addr, align 8
  %10 = load i32, i32* %sum.addr, align 4
  %11 = load i32*, i32** %stack, align 8
  %12 = load i32**, i32*** %results, align 8
  %13 = load i32**, i32*** %returnColumnSizes.addr, align 8
  %14 = load i32*, i32** %13, align 8
  %15 = load i32*, i32** %returnSize.addr, align 8
  call void @dfs(%struct.TreeNode* %9, i32 %10, i32* %11, i32 0, i32** %12, i32* %14, i32* %15)
  %16 = load i32**, i32*** %results, align 8
  store i32** %16, i32*** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load i32**, i32*** %retval, align 8
  ret i32** %17
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dfs(%struct.TreeNode* %node, i32 %sum, i32* %stack, i32 %len, i32** %results, i32* %sizes, i32* %count) #0 {
entry:
  %node.addr = alloca %struct.TreeNode*, align 8
  %sum.addr = alloca i32, align 4
  %stack.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %results.addr = alloca i32**, align 8
  %sizes.addr = alloca i32*, align 8
  %count.addr = alloca i32*, align 8
  store %struct.TreeNode* %node, %struct.TreeNode** %node.addr, align 8
  store i32 %sum, i32* %sum.addr, align 4
  store i32* %stack, i32** %stack.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32** %results, i32*** %results.addr, align 8
  store i32* %sizes, i32** %sizes.addr, align 8
  store i32* %count, i32** %count.addr, align 8
  %0 = load %struct.TreeNode*, %struct.TreeNode** %node.addr, align 8
  %cmp = icmp eq %struct.TreeNode* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end29

if.else:                                          ; preds = %entry
  %1 = load %struct.TreeNode*, %struct.TreeNode** %node.addr, align 8
  %left = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %1, i32 0, i32 1
  %2 = load %struct.TreeNode*, %struct.TreeNode** %left, align 8
  %cmp1 = icmp eq %struct.TreeNode* %2, null
  br i1 %cmp1, label %land.lhs.true, label %if.else18

land.lhs.true:                                    ; preds = %if.else
  %3 = load %struct.TreeNode*, %struct.TreeNode** %node.addr, align 8
  %right = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %3, i32 0, i32 2
  %4 = load %struct.TreeNode*, %struct.TreeNode** %right, align 8
  %cmp2 = icmp eq %struct.TreeNode* %4, null
  br i1 %cmp2, label %land.lhs.true3, label %if.else18

land.lhs.true3:                                   ; preds = %land.lhs.true
  %5 = load i32, i32* %sum.addr, align 4
  %6 = load %struct.TreeNode*, %struct.TreeNode** %node.addr, align 8
  %val = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %6, i32 0, i32 0
  %7 = load i32, i32* %val, align 8
  %cmp4 = icmp eq i32 %5, %7
  br i1 %cmp4, label %if.then5, label %if.else18

if.then5:                                         ; preds = %land.lhs.true3
  %8 = load i32, i32* %len.addr, align 4
  %add = add nsw i32 %8, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 4
  %call = call noalias align 16 i8* @malloc(i64 %mul) #4
  %9 = bitcast i8* %call to i32*
  %10 = load i32**, i32*** %results.addr, align 8
  %11 = load i32*, i32** %count.addr, align 8
  %12 = load i32, i32* %11, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i32*, i32** %10, i64 %idxprom
  store i32* %9, i32** %arrayidx, align 8
  %13 = load i32**, i32*** %results.addr, align 8
  %14 = load i32*, i32** %count.addr, align 8
  %15 = load i32, i32* %14, align 4
  %idxprom6 = sext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds i32*, i32** %13, i64 %idxprom6
  %16 = load i32*, i32** %arrayidx7, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = load i32*, i32** %stack.addr, align 8
  %19 = bitcast i32* %18 to i8*
  %20 = load i32, i32* %len.addr, align 4
  %conv8 = sext i32 %20 to i64
  %mul9 = mul i64 %conv8, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %19, i64 %mul9, i1 false)
  %21 = load %struct.TreeNode*, %struct.TreeNode** %node.addr, align 8
  %val10 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %21, i32 0, i32 0
  %22 = load i32, i32* %val10, align 8
  %23 = load i32**, i32*** %results.addr, align 8
  %24 = load i32*, i32** %count.addr, align 8
  %25 = load i32, i32* %24, align 4
  %idxprom11 = sext i32 %25 to i64
  %arrayidx12 = getelementptr inbounds i32*, i32** %23, i64 %idxprom11
  %26 = load i32*, i32** %arrayidx12, align 8
  %27 = load i32, i32* %len.addr, align 4
  %idxprom13 = sext i32 %27 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %26, i64 %idxprom13
  store i32 %22, i32* %arrayidx14, align 4
  %28 = load i32, i32* %len.addr, align 4
  %add15 = add nsw i32 %28, 1
  %29 = load i32*, i32** %sizes.addr, align 8
  %30 = load i32*, i32** %count.addr, align 8
  %31 = load i32, i32* %30, align 4
  %idxprom16 = sext i32 %31 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %29, i64 %idxprom16
  store i32 %add15, i32* %arrayidx17, align 4
  %32 = load i32*, i32** %count.addr, align 8
  %33 = load i32, i32* %32, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %32, align 4
  br label %if.end

if.else18:                                        ; preds = %land.lhs.true3, %land.lhs.true, %if.else
  %34 = load %struct.TreeNode*, %struct.TreeNode** %node.addr, align 8
  %val19 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %34, i32 0, i32 0
  %35 = load i32, i32* %val19, align 8
  %36 = load i32*, i32** %stack.addr, align 8
  %37 = load i32, i32* %len.addr, align 4
  %idxprom20 = sext i32 %37 to i64
  %arrayidx21 = getelementptr inbounds i32, i32* %36, i64 %idxprom20
  store i32 %35, i32* %arrayidx21, align 4
  %38 = load %struct.TreeNode*, %struct.TreeNode** %node.addr, align 8
  %left22 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %38, i32 0, i32 1
  %39 = load %struct.TreeNode*, %struct.TreeNode** %left22, align 8
  %40 = load i32, i32* %sum.addr, align 4
  %41 = load %struct.TreeNode*, %struct.TreeNode** %node.addr, align 8
  %val23 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %41, i32 0, i32 0
  %42 = load i32, i32* %val23, align 8
  %sub = sub nsw i32 %40, %42
  %43 = load i32*, i32** %stack.addr, align 8
  %44 = load i32, i32* %len.addr, align 4
  %add24 = add nsw i32 %44, 1
  %45 = load i32**, i32*** %results.addr, align 8
  %46 = load i32*, i32** %sizes.addr, align 8
  %47 = load i32*, i32** %count.addr, align 8
  call void @dfs(%struct.TreeNode* %39, i32 %sub, i32* %43, i32 %add24, i32** %45, i32* %46, i32* %47)
  %48 = load %struct.TreeNode*, %struct.TreeNode** %node.addr, align 8
  %right25 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %48, i32 0, i32 2
  %49 = load %struct.TreeNode*, %struct.TreeNode** %right25, align 8
  %50 = load i32, i32* %sum.addr, align 4
  %51 = load %struct.TreeNode*, %struct.TreeNode** %node.addr, align 8
  %val26 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %51, i32 0, i32 0
  %52 = load i32, i32* %val26, align 8
  %sub27 = sub nsw i32 %50, %52
  %53 = load i32*, i32** %stack.addr, align 8
  %54 = load i32, i32* %len.addr, align 4
  %add28 = add nsw i32 %54, 1
  %55 = load i32**, i32*** %results.addr, align 8
  %56 = load i32*, i32** %sizes.addr, align 8
  %57 = load i32*, i32** %count.addr, align 8
  call void @dfs(%struct.TreeNode* %49, i32 %sub27, i32* %53, i32 %add28, i32** %55, i32* %56, i32* %57)
  br label %if.end

if.end:                                           ; preds = %if.else18, %if.then5
  br label %if.end29

if.end29:                                         ; preds = %if.then, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %root = alloca %struct.TreeNode, align 8
  %n1 = alloca [2 x %struct.TreeNode], align 16
  %n2 = alloca [4 x %struct.TreeNode], align 16
  %n3 = alloca [8 x %struct.TreeNode], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %count = alloca i32, align 4
  %col_sizes = alloca i32*, align 8
  %sum = alloca i32, align 4
  %list = alloca i32**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %val = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %root, i32 0, i32 0
  store i32 5, i32* %val, align 8
  %arrayidx = getelementptr inbounds [2 x %struct.TreeNode], [2 x %struct.TreeNode]* %n1, i64 0, i64 0
  %val1 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx, i32 0, i32 0
  store i32 4, i32* %val1, align 16
  %arrayidx2 = getelementptr inbounds [2 x %struct.TreeNode], [2 x %struct.TreeNode]* %n1, i64 0, i64 1
  %val3 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx2, i32 0, i32 0
  store i32 8, i32* %val3, align 8
  %arrayidx4 = getelementptr inbounds [4 x %struct.TreeNode], [4 x %struct.TreeNode]* %n2, i64 0, i64 0
  %val5 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx4, i32 0, i32 0
  store i32 11, i32* %val5, align 16
  %arrayidx6 = getelementptr inbounds [4 x %struct.TreeNode], [4 x %struct.TreeNode]* %n2, i64 0, i64 2
  %val7 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx6, i32 0, i32 0
  store i32 13, i32* %val7, align 16
  %arrayidx8 = getelementptr inbounds [4 x %struct.TreeNode], [4 x %struct.TreeNode]* %n2, i64 0, i64 3
  %val9 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx8, i32 0, i32 0
  store i32 4, i32* %val9, align 8
  %arrayidx10 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 0
  %val11 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx10, i32 0, i32 0
  store i32 7, i32* %val11, align 16
  %arrayidx12 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 1
  %val13 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx12, i32 0, i32 0
  store i32 2, i32* %val13, align 8
  %arrayidx14 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 6
  %val15 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx14, i32 0, i32 0
  store i32 5, i32* %val15, align 16
  %arrayidx16 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 7
  %val17 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx16, i32 0, i32 0
  store i32 1, i32* %val17, align 8
  %arrayidx18 = getelementptr inbounds [2 x %struct.TreeNode], [2 x %struct.TreeNode]* %n1, i64 0, i64 0
  %left = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %root, i32 0, i32 1
  store %struct.TreeNode* %arrayidx18, %struct.TreeNode** %left, align 8
  %arrayidx19 = getelementptr inbounds [2 x %struct.TreeNode], [2 x %struct.TreeNode]* %n1, i64 0, i64 1
  %right = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %root, i32 0, i32 2
  store %struct.TreeNode* %arrayidx19, %struct.TreeNode** %right, align 8
  %arrayidx20 = getelementptr inbounds [4 x %struct.TreeNode], [4 x %struct.TreeNode]* %n2, i64 0, i64 0
  %arrayidx21 = getelementptr inbounds [2 x %struct.TreeNode], [2 x %struct.TreeNode]* %n1, i64 0, i64 0
  %left22 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx21, i32 0, i32 1
  store %struct.TreeNode* %arrayidx20, %struct.TreeNode** %left22, align 8
  %arrayidx23 = getelementptr inbounds [2 x %struct.TreeNode], [2 x %struct.TreeNode]* %n1, i64 0, i64 0
  %right24 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx23, i32 0, i32 2
  store %struct.TreeNode* null, %struct.TreeNode** %right24, align 16
  %arrayidx25 = getelementptr inbounds [4 x %struct.TreeNode], [4 x %struct.TreeNode]* %n2, i64 0, i64 2
  %arrayidx26 = getelementptr inbounds [2 x %struct.TreeNode], [2 x %struct.TreeNode]* %n1, i64 0, i64 1
  %left27 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx26, i32 0, i32 1
  store %struct.TreeNode* %arrayidx25, %struct.TreeNode** %left27, align 8
  %arrayidx28 = getelementptr inbounds [4 x %struct.TreeNode], [4 x %struct.TreeNode]* %n2, i64 0, i64 3
  %arrayidx29 = getelementptr inbounds [2 x %struct.TreeNode], [2 x %struct.TreeNode]* %n1, i64 0, i64 1
  %right30 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx29, i32 0, i32 2
  store %struct.TreeNode* %arrayidx28, %struct.TreeNode** %right30, align 8
  %arrayidx31 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 0
  %arrayidx32 = getelementptr inbounds [4 x %struct.TreeNode], [4 x %struct.TreeNode]* %n2, i64 0, i64 0
  %left33 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx32, i32 0, i32 1
  store %struct.TreeNode* %arrayidx31, %struct.TreeNode** %left33, align 8
  %arrayidx34 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 1
  %arrayidx35 = getelementptr inbounds [4 x %struct.TreeNode], [4 x %struct.TreeNode]* %n2, i64 0, i64 0
  %right36 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx35, i32 0, i32 2
  store %struct.TreeNode* %arrayidx34, %struct.TreeNode** %right36, align 16
  %arrayidx37 = getelementptr inbounds [4 x %struct.TreeNode], [4 x %struct.TreeNode]* %n2, i64 0, i64 2
  %left38 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx37, i32 0, i32 1
  store %struct.TreeNode* null, %struct.TreeNode** %left38, align 8
  %arrayidx39 = getelementptr inbounds [4 x %struct.TreeNode], [4 x %struct.TreeNode]* %n2, i64 0, i64 2
  %right40 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx39, i32 0, i32 2
  store %struct.TreeNode* null, %struct.TreeNode** %right40, align 16
  %arrayidx41 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 6
  %arrayidx42 = getelementptr inbounds [4 x %struct.TreeNode], [4 x %struct.TreeNode]* %n2, i64 0, i64 3
  %left43 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx42, i32 0, i32 1
  store %struct.TreeNode* %arrayidx41, %struct.TreeNode** %left43, align 8
  %arrayidx44 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 7
  %arrayidx45 = getelementptr inbounds [4 x %struct.TreeNode], [4 x %struct.TreeNode]* %n2, i64 0, i64 3
  %right46 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx45, i32 0, i32 2
  store %struct.TreeNode* %arrayidx44, %struct.TreeNode** %right46, align 8
  %arrayidx47 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 0
  %left48 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx47, i32 0, i32 1
  store %struct.TreeNode* null, %struct.TreeNode** %left48, align 8
  %arrayidx49 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 0
  %right50 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx49, i32 0, i32 2
  store %struct.TreeNode* null, %struct.TreeNode** %right50, align 16
  %arrayidx51 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 1
  %left52 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx51, i32 0, i32 1
  store %struct.TreeNode* null, %struct.TreeNode** %left52, align 8
  %arrayidx53 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 1
  %right54 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx53, i32 0, i32 2
  store %struct.TreeNode* null, %struct.TreeNode** %right54, align 8
  %arrayidx55 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 6
  %left56 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx55, i32 0, i32 1
  store %struct.TreeNode* null, %struct.TreeNode** %left56, align 8
  %arrayidx57 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 6
  %right58 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx57, i32 0, i32 2
  store %struct.TreeNode* null, %struct.TreeNode** %right58, align 16
  %arrayidx59 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 7
  %left60 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx59, i32 0, i32 1
  store %struct.TreeNode* null, %struct.TreeNode** %left60, align 8
  %arrayidx61 = getelementptr inbounds [8 x %struct.TreeNode], [8 x %struct.TreeNode]* %n3, i64 0, i64 7
  %right62 = getelementptr inbounds %struct.TreeNode, %struct.TreeNode* %arrayidx61, i32 0, i32 2
  store %struct.TreeNode* null, %struct.TreeNode** %right62, align 8
  store i32 0, i32* %count, align 4
  store i32 22, i32* %sum, align 4
  %0 = load i32, i32* %sum, align 4
  %call = call i32** @pathSum(%struct.TreeNode* %root, i32 %0, i32* %count, i32** %col_sizes)
  store i32** %call, i32*** %list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc73, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %count, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end75

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32*, i32** %col_sizes, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx64 = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx64, align 4
  %cmp65 = icmp slt i32 %3, %6
  br i1 %cmp65, label %for.body66, label %for.end

for.body66:                                       ; preds = %for.cond63
  %7 = load i32**, i32*** %list, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %8 to i64
  %arrayidx68 = getelementptr inbounds i32*, i32** %7, i64 %idxprom67
  %9 = load i32*, i32** %arrayidx68, align 8
  %10 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %10 to i64
  %arrayidx70 = getelementptr inbounds i32, i32* %9, i64 %idxprom69
  %11 = load i32, i32* %arrayidx70, align 4
  %call71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body66
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond63, !llvm.loop !4

for.end:                                          ; preds = %for.cond63
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %for.inc73

for.inc73:                                        ; preds = %for.end
  %13 = load i32, i32* %i, align 4
  %inc74 = add nsw i32 %13, 1
  store i32 %inc74, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end75:                                        ; preds = %for.cond
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
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
