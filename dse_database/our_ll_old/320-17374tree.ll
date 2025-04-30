; ModuleID = './code/320-17374tree.c'
source_filename = "./code/320-17374tree.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.TREE = type { i8, ptr, ptr }

@.str = private unnamed_addr constant [17 x i8] c"\0ApreOrderTree()\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\0AinOrderTree()\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"\0AposOrderTree()\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" %c \00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Mostrando a BTree\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %rootTree = alloca %struct.TREE, align 8
  %pNewTree = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %data = getelementptr inbounds %struct.TREE, ptr %rootTree, i32 0, i32 0
  store i8 52, ptr %data, align 8
  %pLeft = getelementptr inbounds %struct.TREE, ptr %rootTree, i32 0, i32 1
  store ptr null, ptr %pLeft, align 8
  %pRight = getelementptr inbounds %struct.TREE, ptr %rootTree, i32 0, i32 2
  store ptr null, ptr %pRight, align 8
  %call = call ptr @malloc(i64 noundef 24) #3
  store ptr %call, ptr %pNewTree, align 8
  %0 = load ptr, ptr %pNewTree, align 8
  %pLeft1 = getelementptr inbounds %struct.TREE, ptr %0, i32 0, i32 1
  store ptr null, ptr %pLeft1, align 8
  %1 = load ptr, ptr %pNewTree, align 8
  %pRight2 = getelementptr inbounds %struct.TREE, ptr %1, i32 0, i32 2
  store ptr null, ptr %pRight2, align 8
  %2 = load ptr, ptr %pNewTree, align 8
  %data3 = getelementptr inbounds %struct.TREE, ptr %2, i32 0, i32 0
  store i8 50, ptr %data3, align 8
  %3 = load ptr, ptr %pNewTree, align 8
  call void @insertTree(ptr noundef %rootTree, ptr noundef %3)
  %call4 = call ptr @malloc(i64 noundef 24) #3
  store ptr %call4, ptr %pNewTree, align 8
  %4 = load ptr, ptr %pNewTree, align 8
  %pLeft5 = getelementptr inbounds %struct.TREE, ptr %4, i32 0, i32 1
  store ptr null, ptr %pLeft5, align 8
  %5 = load ptr, ptr %pNewTree, align 8
  %pRight6 = getelementptr inbounds %struct.TREE, ptr %5, i32 0, i32 2
  store ptr null, ptr %pRight6, align 8
  %6 = load ptr, ptr %pNewTree, align 8
  %data7 = getelementptr inbounds %struct.TREE, ptr %6, i32 0, i32 0
  store i8 51, ptr %data7, align 8
  %7 = load ptr, ptr %pNewTree, align 8
  call void @insertTree(ptr noundef %rootTree, ptr noundef %7)
  %call8 = call ptr @malloc(i64 noundef 24) #3
  store ptr %call8, ptr %pNewTree, align 8
  %8 = load ptr, ptr %pNewTree, align 8
  %pLeft9 = getelementptr inbounds %struct.TREE, ptr %8, i32 0, i32 1
  store ptr null, ptr %pLeft9, align 8
  %9 = load ptr, ptr %pNewTree, align 8
  %pRight10 = getelementptr inbounds %struct.TREE, ptr %9, i32 0, i32 2
  store ptr null, ptr %pRight10, align 8
  %10 = load ptr, ptr %pNewTree, align 8
  %data11 = getelementptr inbounds %struct.TREE, ptr %10, i32 0, i32 0
  store i8 53, ptr %data11, align 8
  %11 = load ptr, ptr %pNewTree, align 8
  call void @insertTree(ptr noundef %rootTree, ptr noundef %11)
  %call12 = call ptr @malloc(i64 noundef 24) #3
  store ptr %call12, ptr %pNewTree, align 8
  %12 = load ptr, ptr %pNewTree, align 8
  %pLeft13 = getelementptr inbounds %struct.TREE, ptr %12, i32 0, i32 1
  store ptr null, ptr %pLeft13, align 8
  %13 = load ptr, ptr %pNewTree, align 8
  %pRight14 = getelementptr inbounds %struct.TREE, ptr %13, i32 0, i32 2
  store ptr null, ptr %pRight14, align 8
  %14 = load ptr, ptr %pNewTree, align 8
  %data15 = getelementptr inbounds %struct.TREE, ptr %14, i32 0, i32 0
  store i8 49, ptr %data15, align 8
  %15 = load ptr, ptr %pNewTree, align 8
  call void @insertTree(ptr noundef %rootTree, ptr noundef %15)
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  call void @preOrderTree(ptr noundef %rootTree)
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  call void @inOrderTree(ptr noundef %rootTree)
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  call void @posOrderTree(ptr noundef %rootTree)
  ret i32 0
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @insertTree(ptr noundef %pRoot, ptr noundef %pNew) #0 {
entry:
  %pRoot.addr = alloca ptr, align 8
  %pNew.addr = alloca ptr, align 8
  %pCurr = alloca ptr, align 8
  %pPrev = alloca ptr, align 8
  store ptr %pRoot, ptr %pRoot.addr, align 8
  store ptr %pNew, ptr %pNew.addr, align 8
  %0 = load ptr, ptr %pRoot.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pNew.addr, align 8
  store ptr %1, ptr %pRoot.addr, align 8
  br label %if.end18

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %pRoot.addr, align 8
  store ptr %2, ptr %pCurr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else
  %3 = load ptr, ptr %pCurr, align 8
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %pCurr, align 8
  store ptr %4, ptr %pPrev, align 8
  %5 = load ptr, ptr %pCurr, align 8
  %data = getelementptr inbounds %struct.TREE, ptr %5, i32 0, i32 0
  %6 = load i8, ptr %data, align 8
  %conv = sext i8 %6 to i32
  %7 = load ptr, ptr %pNew.addr, align 8
  %data2 = getelementptr inbounds %struct.TREE, ptr %7, i32 0, i32 0
  %8 = load i8, ptr %data2, align 8
  %conv3 = sext i8 %8 to i32
  %cmp = icmp sgt i32 %conv, %conv3
  br i1 %cmp, label %if.then5, label %if.else6

if.then5:                                         ; preds = %while.body
  %9 = load ptr, ptr %pCurr, align 8
  %pLeft = getelementptr inbounds %struct.TREE, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %pLeft, align 8
  store ptr %10, ptr %pCurr, align 8
  br label %if.end

if.else6:                                         ; preds = %while.body
  %11 = load ptr, ptr %pCurr, align 8
  %pRight = getelementptr inbounds %struct.TREE, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %pRight, align 8
  store ptr %12, ptr %pCurr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then5
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %13 = load ptr, ptr %pPrev, align 8
  %data7 = getelementptr inbounds %struct.TREE, ptr %13, i32 0, i32 0
  %14 = load i8, ptr %data7, align 8
  %conv8 = sext i8 %14 to i32
  %15 = load ptr, ptr %pNew.addr, align 8
  %data9 = getelementptr inbounds %struct.TREE, ptr %15, i32 0, i32 0
  %16 = load i8, ptr %data9, align 8
  %conv10 = sext i8 %16 to i32
  %cmp11 = icmp sgt i32 %conv8, %conv10
  br i1 %cmp11, label %if.then13, label %if.else15

if.then13:                                        ; preds = %while.end
  %17 = load ptr, ptr %pNew.addr, align 8
  %18 = load ptr, ptr %pPrev, align 8
  %pLeft14 = getelementptr inbounds %struct.TREE, ptr %18, i32 0, i32 1
  store ptr %17, ptr %pLeft14, align 8
  br label %if.end17

if.else15:                                        ; preds = %while.end
  %19 = load ptr, ptr %pNew.addr, align 8
  %20 = load ptr, ptr %pPrev, align 8
  %pRight16 = getelementptr inbounds %struct.TREE, ptr %20, i32 0, i32 2
  store ptr %19, ptr %pRight16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.then13
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @preOrderTree(ptr noundef %pRoot) #0 {
entry:
  %pRoot.addr = alloca ptr, align 8
  store ptr %pRoot, ptr %pRoot.addr, align 8
  %0 = load ptr, ptr %pRoot.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pRoot.addr, align 8
  call void @printDataAsChar(ptr noundef %1)
  %2 = load ptr, ptr %pRoot.addr, align 8
  %pLeft = getelementptr inbounds %struct.TREE, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %pLeft, align 8
  call void @preOrderTree(ptr noundef %3)
  %4 = load ptr, ptr %pRoot.addr, align 8
  %pRight = getelementptr inbounds %struct.TREE, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %pRight, align 8
  call void @preOrderTree(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @inOrderTree(ptr noundef %pRoot) #0 {
entry:
  %pRoot.addr = alloca ptr, align 8
  store ptr %pRoot, ptr %pRoot.addr, align 8
  %0 = load ptr, ptr %pRoot.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pRoot.addr, align 8
  %pLeft = getelementptr inbounds %struct.TREE, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %pLeft, align 8
  call void @inOrderTree(ptr noundef %2)
  %3 = load ptr, ptr %pRoot.addr, align 8
  call void @printDataAsChar(ptr noundef %3)
  %4 = load ptr, ptr %pRoot.addr, align 8
  %pRight = getelementptr inbounds %struct.TREE, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %pRight, align 8
  call void @inOrderTree(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @posOrderTree(ptr noundef %pRoot) #0 {
entry:
  %pRoot.addr = alloca ptr, align 8
  store ptr %pRoot, ptr %pRoot.addr, align 8
  %0 = load ptr, ptr %pRoot.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pRoot.addr, align 8
  %pLeft = getelementptr inbounds %struct.TREE, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %pLeft, align 8
  call void @posOrderTree(ptr noundef %2)
  %3 = load ptr, ptr %pRoot.addr, align 8
  %pRight = getelementptr inbounds %struct.TREE, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %pRight, align 8
  call void @posOrderTree(ptr noundef %4)
  %5 = load ptr, ptr %pRoot.addr, align 8
  call void @printDataAsChar(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @searchTree(ptr noundef %pRoot, i32 noundef %k) #0 {
entry:
  %retval = alloca ptr, align 8
  %pRoot.addr = alloca ptr, align 8
  %k.addr = alloca i32, align 4
  store ptr %pRoot, ptr %pRoot.addr, align 8
  store i32 %k, ptr %k.addr, align 4
  %0 = load ptr, ptr %pRoot.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %pRoot.addr, align 8
  %data = getelementptr inbounds %struct.TREE, ptr %1, i32 0, i32 0
  %2 = load i8, ptr %data, align 8
  %conv = sext i8 %2 to i32
  %3 = load i32, ptr %k.addr, align 4
  %cmp1 = icmp eq i32 %conv, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %pRoot.addr, align 8
  store ptr %4, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %pRoot.addr, align 8
  %data3 = getelementptr inbounds %struct.TREE, ptr %5, i32 0, i32 0
  %6 = load i8, ptr %data3, align 8
  %conv4 = sext i8 %6 to i32
  %7 = load i32, ptr %k.addr, align 4
  %cmp5 = icmp sgt i32 %conv4, %7
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %8 = load ptr, ptr %pRoot.addr, align 8
  %pLeft = getelementptr inbounds %struct.TREE, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %pLeft, align 8
  %10 = load i32, ptr %k.addr, align 4
  %call = call ptr @searchTree(ptr noundef %9, i32 noundef %10)
  store ptr %call, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %if.end
  %11 = load ptr, ptr %pRoot.addr, align 8
  %pRight = getelementptr inbounds %struct.TREE, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %pRight, align 8
  %13 = load i32, ptr %k.addr, align 4
  %call8 = call ptr @searchTree(ptr noundef %12, i32 noundef %13)
  store ptr %call8, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then7, %if.then
  %14 = load ptr, ptr %retval, align 8
  ret ptr %14
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @printDataAsChar(ptr noundef %pTree) #0 {
entry:
  %pTree.addr = alloca ptr, align 8
  store ptr %pTree, ptr %pTree.addr, align 8
  %0 = load ptr, ptr %pTree.addr, align 8
  %data = getelementptr inbounds %struct.TREE, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %data, align 8
  %conv = sext i8 %1 to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %conv)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @printTree(ptr noundef %pRoot) #0 {
entry:
  %pRoot.addr = alloca ptr, align 8
  %pCurr = alloca ptr, align 8
  store ptr %pRoot, ptr %pRoot.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %0 = load ptr, ptr %pRoot.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pRoot.addr, align 8
  %data = getelementptr inbounds %struct.TREE, ptr %1, i32 0, i32 0
  %2 = load i8, ptr %data, align 8
  %conv = sext i8 %2 to i32
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %conv)
  %3 = load ptr, ptr %pRoot.addr, align 8
  %pLeft = getelementptr inbounds %struct.TREE, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %pLeft, align 8
  store ptr %4, ptr %pCurr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %5 = load ptr, ptr %pCurr, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %pCurr, align 8
  %data2 = getelementptr inbounds %struct.TREE, ptr %6, i32 0, i32 0
  %7 = load i8, ptr %data2, align 8
  %conv3 = sext i8 %7 to i32
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %conv3)
  %8 = load ptr, ptr %pCurr, align 8
  %pLeft5 = getelementptr inbounds %struct.TREE, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %pLeft5, align 8
  store ptr %9, ptr %pCurr, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %10 = load ptr, ptr %pRoot.addr, align 8
  %pRight = getelementptr inbounds %struct.TREE, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %pRight, align 8
  store ptr %11, ptr %pCurr, align 8
  br label %while.cond6

while.cond6:                                      ; preds = %while.body8, %while.end
  %12 = load ptr, ptr %pCurr, align 8
  %tobool7 = icmp ne ptr %12, null
  br i1 %tobool7, label %while.body8, label %while.end13

while.body8:                                      ; preds = %while.cond6
  %13 = load ptr, ptr %pCurr, align 8
  %data9 = getelementptr inbounds %struct.TREE, ptr %13, i32 0, i32 0
  %14 = load i8, ptr %data9, align 8
  %conv10 = sext i8 %14 to i32
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %conv10)
  %15 = load ptr, ptr %pCurr, align 8
  %pRight12 = getelementptr inbounds %struct.TREE, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %pRight12, align 8
  store ptr %16, ptr %pCurr, align 8
  br label %while.cond6, !llvm.loop !8

while.end13:                                      ; preds = %while.cond6
  br label %if.end

if.end:                                           ; preds = %while.end13, %entry
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

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
