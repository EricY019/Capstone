; ModuleID = 'code/320-17374tree.c'
source_filename = "code/320-17374tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TREE = type { i8, %struct.TREE*, %struct.TREE* }

@.str = private unnamed_addr constant [17 x i8] c"\0ApreOrderTree()\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\0AinOrderTree()\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"\0AposOrderTree()\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" %c \00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Mostrando a BTree\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %rootTree = alloca %struct.TREE, align 8
  %pNewTree = alloca %struct.TREE*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %data = getelementptr inbounds %struct.TREE, %struct.TREE* %rootTree, i32 0, i32 0
  store i8 52, i8* %data, align 8
  %pLeft = getelementptr inbounds %struct.TREE, %struct.TREE* %rootTree, i32 0, i32 1
  store %struct.TREE* null, %struct.TREE** %pLeft, align 8
  %pRight = getelementptr inbounds %struct.TREE, %struct.TREE* %rootTree, i32 0, i32 2
  store %struct.TREE* null, %struct.TREE** %pRight, align 8
  %call = call noalias align 16 i8* @malloc(i64 24) #3
  %0 = bitcast i8* %call to %struct.TREE*
  store %struct.TREE* %0, %struct.TREE** %pNewTree, align 8
  %1 = load %struct.TREE*, %struct.TREE** %pNewTree, align 8
  %pLeft1 = getelementptr inbounds %struct.TREE, %struct.TREE* %1, i32 0, i32 1
  store %struct.TREE* null, %struct.TREE** %pLeft1, align 8
  %2 = load %struct.TREE*, %struct.TREE** %pNewTree, align 8
  %pRight2 = getelementptr inbounds %struct.TREE, %struct.TREE* %2, i32 0, i32 2
  store %struct.TREE* null, %struct.TREE** %pRight2, align 8
  %3 = load %struct.TREE*, %struct.TREE** %pNewTree, align 8
  %data3 = getelementptr inbounds %struct.TREE, %struct.TREE* %3, i32 0, i32 0
  store i8 50, i8* %data3, align 8
  %4 = load %struct.TREE*, %struct.TREE** %pNewTree, align 8
  call void @insertTree(%struct.TREE* %rootTree, %struct.TREE* %4)
  %call4 = call noalias align 16 i8* @malloc(i64 24) #3
  %5 = bitcast i8* %call4 to %struct.TREE*
  store %struct.TREE* %5, %struct.TREE** %pNewTree, align 8
  %6 = load %struct.TREE*, %struct.TREE** %pNewTree, align 8
  %pLeft5 = getelementptr inbounds %struct.TREE, %struct.TREE* %6, i32 0, i32 1
  store %struct.TREE* null, %struct.TREE** %pLeft5, align 8
  %7 = load %struct.TREE*, %struct.TREE** %pNewTree, align 8
  %pRight6 = getelementptr inbounds %struct.TREE, %struct.TREE* %7, i32 0, i32 2
  store %struct.TREE* null, %struct.TREE** %pRight6, align 8
  %8 = load %struct.TREE*, %struct.TREE** %pNewTree, align 8
  %data7 = getelementptr inbounds %struct.TREE, %struct.TREE* %8, i32 0, i32 0
  store i8 51, i8* %data7, align 8
  %9 = load %struct.TREE*, %struct.TREE** %pNewTree, align 8
  call void @insertTree(%struct.TREE* %rootTree, %struct.TREE* %9)
  %call8 = call noalias align 16 i8* @malloc(i64 24) #3
  %10 = bitcast i8* %call8 to %struct.TREE*
  store %struct.TREE* %10, %struct.TREE** %pNewTree, align 8
  %11 = load %struct.TREE*, %struct.TREE** %pNewTree, align 8
  %pLeft9 = getelementptr inbounds %struct.TREE, %struct.TREE* %11, i32 0, i32 1
  store %struct.TREE* null, %struct.TREE** %pLeft9, align 8
  %12 = load %struct.TREE*, %struct.TREE** %pNewTree, align 8
  %pRight10 = getelementptr inbounds %struct.TREE, %struct.TREE* %12, i32 0, i32 2
  store %struct.TREE* null, %struct.TREE** %pRight10, align 8
  %13 = load %struct.TREE*, %struct.TREE** %pNewTree, align 8
  %data11 = getelementptr inbounds %struct.TREE, %struct.TREE* %13, i32 0, i32 0
  store i8 53, i8* %data11, align 8
  %14 = load %struct.TREE*, %struct.TREE** %pNewTree, align 8
  call void @insertTree(%struct.TREE* %rootTree, %struct.TREE* %14)
  %call12 = call noalias align 16 i8* @malloc(i64 24) #3
  %15 = bitcast i8* %call12 to %struct.TREE*
  store %struct.TREE* %15, %struct.TREE** %pNewTree, align 8
  %16 = load %struct.TREE*, %struct.TREE** %pNewTree, align 8
  %pLeft13 = getelementptr inbounds %struct.TREE, %struct.TREE* %16, i32 0, i32 1
  store %struct.TREE* null, %struct.TREE** %pLeft13, align 8
  %17 = load %struct.TREE*, %struct.TREE** %pNewTree, align 8
  %pRight14 = getelementptr inbounds %struct.TREE, %struct.TREE* %17, i32 0, i32 2
  store %struct.TREE* null, %struct.TREE** %pRight14, align 8
  %18 = load %struct.TREE*, %struct.TREE** %pNewTree, align 8
  %data15 = getelementptr inbounds %struct.TREE, %struct.TREE* %18, i32 0, i32 0
  store i8 49, i8* %data15, align 8
  %19 = load %struct.TREE*, %struct.TREE** %pNewTree, align 8
  call void @insertTree(%struct.TREE* %rootTree, %struct.TREE* %19)
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  call void @preOrderTree(%struct.TREE* %rootTree)
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  call void @inOrderTree(%struct.TREE* %rootTree)
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  call void @posOrderTree(%struct.TREE* %rootTree)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insertTree(%struct.TREE* %pRoot, %struct.TREE* %pNew) #0 {
entry:
  %pRoot.addr = alloca %struct.TREE*, align 8
  %pNew.addr = alloca %struct.TREE*, align 8
  %pCurr = alloca %struct.TREE*, align 8
  %pPrev = alloca %struct.TREE*, align 8
  store %struct.TREE* %pRoot, %struct.TREE** %pRoot.addr, align 8
  store %struct.TREE* %pNew, %struct.TREE** %pNew.addr, align 8
  %0 = load %struct.TREE*, %struct.TREE** %pRoot.addr, align 8
  %tobool = icmp ne %struct.TREE* %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.TREE*, %struct.TREE** %pNew.addr, align 8
  store %struct.TREE* %1, %struct.TREE** %pRoot.addr, align 8
  br label %if.end18

if.else:                                          ; preds = %entry
  %2 = load %struct.TREE*, %struct.TREE** %pRoot.addr, align 8
  store %struct.TREE* %2, %struct.TREE** %pCurr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else
  %3 = load %struct.TREE*, %struct.TREE** %pCurr, align 8
  %tobool1 = icmp ne %struct.TREE* %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.TREE*, %struct.TREE** %pCurr, align 8
  store %struct.TREE* %4, %struct.TREE** %pPrev, align 8
  %5 = load %struct.TREE*, %struct.TREE** %pCurr, align 8
  %data = getelementptr inbounds %struct.TREE, %struct.TREE* %5, i32 0, i32 0
  %6 = load i8, i8* %data, align 8
  %conv = sext i8 %6 to i32
  %7 = load %struct.TREE*, %struct.TREE** %pNew.addr, align 8
  %data2 = getelementptr inbounds %struct.TREE, %struct.TREE* %7, i32 0, i32 0
  %8 = load i8, i8* %data2, align 8
  %conv3 = sext i8 %8 to i32
  %cmp = icmp sgt i32 %conv, %conv3
  br i1 %cmp, label %if.then5, label %if.else6

if.then5:                                         ; preds = %while.body
  %9 = load %struct.TREE*, %struct.TREE** %pCurr, align 8
  %pLeft = getelementptr inbounds %struct.TREE, %struct.TREE* %9, i32 0, i32 1
  %10 = load %struct.TREE*, %struct.TREE** %pLeft, align 8
  store %struct.TREE* %10, %struct.TREE** %pCurr, align 8
  br label %if.end

if.else6:                                         ; preds = %while.body
  %11 = load %struct.TREE*, %struct.TREE** %pCurr, align 8
  %pRight = getelementptr inbounds %struct.TREE, %struct.TREE* %11, i32 0, i32 2
  %12 = load %struct.TREE*, %struct.TREE** %pRight, align 8
  store %struct.TREE* %12, %struct.TREE** %pCurr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then5
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %13 = load %struct.TREE*, %struct.TREE** %pPrev, align 8
  %data7 = getelementptr inbounds %struct.TREE, %struct.TREE* %13, i32 0, i32 0
  %14 = load i8, i8* %data7, align 8
  %conv8 = sext i8 %14 to i32
  %15 = load %struct.TREE*, %struct.TREE** %pNew.addr, align 8
  %data9 = getelementptr inbounds %struct.TREE, %struct.TREE* %15, i32 0, i32 0
  %16 = load i8, i8* %data9, align 8
  %conv10 = sext i8 %16 to i32
  %cmp11 = icmp sgt i32 %conv8, %conv10
  br i1 %cmp11, label %if.then13, label %if.else15

if.then13:                                        ; preds = %while.end
  %17 = load %struct.TREE*, %struct.TREE** %pNew.addr, align 8
  %18 = load %struct.TREE*, %struct.TREE** %pPrev, align 8
  %pLeft14 = getelementptr inbounds %struct.TREE, %struct.TREE* %18, i32 0, i32 1
  store %struct.TREE* %17, %struct.TREE** %pLeft14, align 8
  br label %if.end17

if.else15:                                        ; preds = %while.end
  %19 = load %struct.TREE*, %struct.TREE** %pNew.addr, align 8
  %20 = load %struct.TREE*, %struct.TREE** %pPrev, align 8
  %pRight16 = getelementptr inbounds %struct.TREE, %struct.TREE* %20, i32 0, i32 2
  store %struct.TREE* %19, %struct.TREE** %pRight16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.then13
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @preOrderTree(%struct.TREE* %pRoot) #0 {
entry:
  %pRoot.addr = alloca %struct.TREE*, align 8
  store %struct.TREE* %pRoot, %struct.TREE** %pRoot.addr, align 8
  %0 = load %struct.TREE*, %struct.TREE** %pRoot.addr, align 8
  %tobool = icmp ne %struct.TREE* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.TREE*, %struct.TREE** %pRoot.addr, align 8
  call void @printDataAsChar(%struct.TREE* %1)
  %2 = load %struct.TREE*, %struct.TREE** %pRoot.addr, align 8
  %pLeft = getelementptr inbounds %struct.TREE, %struct.TREE* %2, i32 0, i32 1
  %3 = load %struct.TREE*, %struct.TREE** %pLeft, align 8
  call void @preOrderTree(%struct.TREE* %3)
  %4 = load %struct.TREE*, %struct.TREE** %pRoot.addr, align 8
  %pRight = getelementptr inbounds %struct.TREE, %struct.TREE* %4, i32 0, i32 2
  %5 = load %struct.TREE*, %struct.TREE** %pRight, align 8
  call void @preOrderTree(%struct.TREE* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inOrderTree(%struct.TREE* %pRoot) #0 {
entry:
  %pRoot.addr = alloca %struct.TREE*, align 8
  store %struct.TREE* %pRoot, %struct.TREE** %pRoot.addr, align 8
  %0 = load %struct.TREE*, %struct.TREE** %pRoot.addr, align 8
  %tobool = icmp ne %struct.TREE* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.TREE*, %struct.TREE** %pRoot.addr, align 8
  %pLeft = getelementptr inbounds %struct.TREE, %struct.TREE* %1, i32 0, i32 1
  %2 = load %struct.TREE*, %struct.TREE** %pLeft, align 8
  call void @inOrderTree(%struct.TREE* %2)
  %3 = load %struct.TREE*, %struct.TREE** %pRoot.addr, align 8
  call void @printDataAsChar(%struct.TREE* %3)
  %4 = load %struct.TREE*, %struct.TREE** %pRoot.addr, align 8
  %pRight = getelementptr inbounds %struct.TREE, %struct.TREE* %4, i32 0, i32 2
  %5 = load %struct.TREE*, %struct.TREE** %pRight, align 8
  call void @inOrderTree(%struct.TREE* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @posOrderTree(%struct.TREE* %pRoot) #0 {
entry:
  %pRoot.addr = alloca %struct.TREE*, align 8
  store %struct.TREE* %pRoot, %struct.TREE** %pRoot.addr, align 8
  %0 = load %struct.TREE*, %struct.TREE** %pRoot.addr, align 8
  %tobool = icmp ne %struct.TREE* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.TREE*, %struct.TREE** %pRoot.addr, align 8
  %pLeft = getelementptr inbounds %struct.TREE, %struct.TREE* %1, i32 0, i32 1
  %2 = load %struct.TREE*, %struct.TREE** %pLeft, align 8
  call void @posOrderTree(%struct.TREE* %2)
  %3 = load %struct.TREE*, %struct.TREE** %pRoot.addr, align 8
  %pRight = getelementptr inbounds %struct.TREE, %struct.TREE* %3, i32 0, i32 2
  %4 = load %struct.TREE*, %struct.TREE** %pRight, align 8
  call void @posOrderTree(%struct.TREE* %4)
  %5 = load %struct.TREE*, %struct.TREE** %pRoot.addr, align 8
  call void @printDataAsChar(%struct.TREE* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TREE* @searchTree(%struct.TREE* %pRoot, i32 %k) #0 {
entry:
  %retval = alloca %struct.TREE*, align 8
  %pRoot.addr = alloca %struct.TREE*, align 8
  %k.addr = alloca i32, align 4
  store %struct.TREE* %pRoot, %struct.TREE** %pRoot.addr, align 8
  store i32 %k, i32* %k.addr, align 4
  %0 = load %struct.TREE*, %struct.TREE** %pRoot.addr, align 8
  %cmp = icmp ne %struct.TREE* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.TREE*, %struct.TREE** %pRoot.addr, align 8
  %data = getelementptr inbounds %struct.TREE, %struct.TREE* %1, i32 0, i32 0
  %2 = load i8, i8* %data, align 8
  %conv = sext i8 %2 to i32
  %3 = load i32, i32* %k.addr, align 4
  %cmp1 = icmp eq i32 %conv, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.TREE*, %struct.TREE** %pRoot.addr, align 8
  store %struct.TREE* %4, %struct.TREE** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.TREE*, %struct.TREE** %pRoot.addr, align 8
  %data3 = getelementptr inbounds %struct.TREE, %struct.TREE* %5, i32 0, i32 0
  %6 = load i8, i8* %data3, align 8
  %conv4 = sext i8 %6 to i32
  %7 = load i32, i32* %k.addr, align 4
  %cmp5 = icmp sgt i32 %conv4, %7
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %8 = load %struct.TREE*, %struct.TREE** %pRoot.addr, align 8
  %pLeft = getelementptr inbounds %struct.TREE, %struct.TREE* %8, i32 0, i32 1
  %9 = load %struct.TREE*, %struct.TREE** %pLeft, align 8
  %10 = load i32, i32* %k.addr, align 4
  %call = call %struct.TREE* @searchTree(%struct.TREE* %9, i32 %10)
  store %struct.TREE* %call, %struct.TREE** %retval, align 8
  br label %return

if.else:                                          ; preds = %if.end
  %11 = load %struct.TREE*, %struct.TREE** %pRoot.addr, align 8
  %pRight = getelementptr inbounds %struct.TREE, %struct.TREE* %11, i32 0, i32 2
  %12 = load %struct.TREE*, %struct.TREE** %pRight, align 8
  %13 = load i32, i32* %k.addr, align 4
  %call8 = call %struct.TREE* @searchTree(%struct.TREE* %12, i32 %13)
  store %struct.TREE* %call8, %struct.TREE** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then7, %if.then
  %14 = load %struct.TREE*, %struct.TREE** %retval, align 8
  ret %struct.TREE* %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDataAsChar(%struct.TREE* %pTree) #0 {
entry:
  %pTree.addr = alloca %struct.TREE*, align 8
  store %struct.TREE* %pTree, %struct.TREE** %pTree.addr, align 8
  %0 = load %struct.TREE*, %struct.TREE** %pTree.addr, align 8
  %data = getelementptr inbounds %struct.TREE, %struct.TREE* %0, i32 0, i32 0
  %1 = load i8, i8* %data, align 8
  %conv = sext i8 %1 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %conv)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printTree(%struct.TREE* %pRoot) #0 {
entry:
  %pRoot.addr = alloca %struct.TREE*, align 8
  %pCurr = alloca %struct.TREE*, align 8
  store %struct.TREE* %pRoot, %struct.TREE** %pRoot.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %0 = load %struct.TREE*, %struct.TREE** %pRoot.addr, align 8
  %cmp = icmp ne %struct.TREE* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.TREE*, %struct.TREE** %pRoot.addr, align 8
  %data = getelementptr inbounds %struct.TREE, %struct.TREE* %1, i32 0, i32 0
  %2 = load i8, i8* %data, align 8
  %conv = sext i8 %2 to i32
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %conv)
  %3 = load %struct.TREE*, %struct.TREE** %pRoot.addr, align 8
  %pLeft = getelementptr inbounds %struct.TREE, %struct.TREE* %3, i32 0, i32 1
  %4 = load %struct.TREE*, %struct.TREE** %pLeft, align 8
  store %struct.TREE* %4, %struct.TREE** %pCurr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %5 = load %struct.TREE*, %struct.TREE** %pCurr, align 8
  %tobool = icmp ne %struct.TREE* %5, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.TREE*, %struct.TREE** %pCurr, align 8
  %data2 = getelementptr inbounds %struct.TREE, %struct.TREE* %6, i32 0, i32 0
  %7 = load i8, i8* %data2, align 8
  %conv3 = sext i8 %7 to i32
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %conv3)
  %8 = load %struct.TREE*, %struct.TREE** %pCurr, align 8
  %pLeft5 = getelementptr inbounds %struct.TREE, %struct.TREE* %8, i32 0, i32 1
  %9 = load %struct.TREE*, %struct.TREE** %pLeft5, align 8
  store %struct.TREE* %9, %struct.TREE** %pCurr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %10 = load %struct.TREE*, %struct.TREE** %pRoot.addr, align 8
  %pRight = getelementptr inbounds %struct.TREE, %struct.TREE* %10, i32 0, i32 2
  %11 = load %struct.TREE*, %struct.TREE** %pRight, align 8
  store %struct.TREE* %11, %struct.TREE** %pCurr, align 8
  br label %while.cond6

while.cond6:                                      ; preds = %while.body8, %while.end
  %12 = load %struct.TREE*, %struct.TREE** %pCurr, align 8
  %tobool7 = icmp ne %struct.TREE* %12, null
  br i1 %tobool7, label %while.body8, label %while.end13

while.body8:                                      ; preds = %while.cond6
  %13 = load %struct.TREE*, %struct.TREE** %pCurr, align 8
  %data9 = getelementptr inbounds %struct.TREE, %struct.TREE* %13, i32 0, i32 0
  %14 = load i8, i8* %data9, align 8
  %conv10 = sext i8 %14 to i32
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %conv10)
  %15 = load %struct.TREE*, %struct.TREE** %pCurr, align 8
  %pRight12 = getelementptr inbounds %struct.TREE, %struct.TREE* %15, i32 0, i32 2
  %16 = load %struct.TREE*, %struct.TREE** %pRight12, align 8
  store %struct.TREE* %16, %struct.TREE** %pCurr, align 8
  br label %while.cond6, !llvm.loop !7

while.end13:                                      ; preds = %while.cond6
  br label %if.end

if.end:                                           ; preds = %while.end13, %entry
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
