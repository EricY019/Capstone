; ModuleID = './code/353-29632bstree.c'
source_filename = "./code/353-29632bstree.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.node = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [17 x i8] c"%d at depth %d, \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Trees height: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @createNode(i32 noundef %val) #0 {
entry:
  %val.addr = alloca i32, align 4
  %new = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4
  %call = call ptr @malloc(i64 noundef 24) #3
  store ptr %call, ptr %new, align 8
  %0 = load i32, ptr %val.addr, align 4
  %1 = load ptr, ptr %new, align 8
  %payload = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 1
  store i32 %0, ptr %payload, align 4
  %2 = load ptr, ptr %new, align 8
  %left = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 2
  store ptr null, ptr %left, align 8
  %3 = load ptr, ptr %new, align 8
  %right = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 3
  store ptr null, ptr %right, align 8
  %4 = load ptr, ptr %new, align 8
  ret ptr %4
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @insert(ptr noundef %root, i32 noundef %val) #0 {
entry:
  %retval = alloca ptr, align 8
  %root.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %pivot = alloca i32, align 4
  %newNode = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  store i32 %val, ptr %val.addr, align 4
  %0 = load ptr, ptr %root.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %val.addr, align 4
  %call = call ptr @createNode(i32 noundef %1)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %root.addr, align 8
  %payload = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %payload, align 4
  store i32 %3, ptr %pivot, align 4
  %4 = load i32, ptr %val.addr, align 4
  %5 = load i32, ptr %pivot, align 4
  %cmp1 = icmp eq i32 %4, %5
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %root.addr, align 8
  store ptr %6, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  store ptr null, ptr %newNode, align 8
  %7 = load i32, ptr %val.addr, align 4
  %8 = load i32, ptr %pivot, align 4
  %cmp4 = icmp sle i32 %7, %8
  br i1 %cmp4, label %if.then5, label %if.else13

if.then5:                                         ; preds = %if.end3
  %9 = load ptr, ptr %root.addr, align 8
  %left = getelementptr inbounds %struct.node, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %left, align 8
  %cmp6 = icmp eq ptr %10, null
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then5
  %11 = load i32, ptr %val.addr, align 4
  %call8 = call ptr @createNode(i32 noundef %11)
  store ptr %call8, ptr %newNode, align 8
  %12 = load ptr, ptr %newNode, align 8
  %13 = load ptr, ptr %root.addr, align 8
  %left9 = getelementptr inbounds %struct.node, ptr %13, i32 0, i32 2
  store ptr %12, ptr %left9, align 8
  br label %if.end12

if.else:                                          ; preds = %if.then5
  %14 = load ptr, ptr %root.addr, align 8
  %left10 = getelementptr inbounds %struct.node, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %left10, align 8
  %16 = load i32, ptr %val.addr, align 4
  %call11 = call ptr @insert(ptr noundef %15, i32 noundef %16)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then7
  br label %if.end22

if.else13:                                        ; preds = %if.end3
  %17 = load ptr, ptr %root.addr, align 8
  %right = getelementptr inbounds %struct.node, ptr %17, i32 0, i32 3
  %18 = load ptr, ptr %right, align 8
  %cmp14 = icmp eq ptr %18, null
  br i1 %cmp14, label %if.then15, label %if.else18

if.then15:                                        ; preds = %if.else13
  %19 = load i32, ptr %val.addr, align 4
  %call16 = call ptr @createNode(i32 noundef %19)
  store ptr %call16, ptr %newNode, align 8
  %20 = load ptr, ptr %newNode, align 8
  %21 = load ptr, ptr %root.addr, align 8
  %right17 = getelementptr inbounds %struct.node, ptr %21, i32 0, i32 3
  store ptr %20, ptr %right17, align 8
  br label %if.end21

if.else18:                                        ; preds = %if.else13
  %22 = load ptr, ptr %root.addr, align 8
  %right19 = getelementptr inbounds %struct.node, ptr %22, i32 0, i32 3
  %23 = load ptr, ptr %right19, align 8
  %24 = load i32, ptr %val.addr, align 4
  %call20 = call ptr @insert(ptr noundef %23, i32 noundef %24)
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.then15
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end12
  %25 = load ptr, ptr %newNode, align 8
  store ptr %25, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end22, %if.then2, %if.then
  %26 = load ptr, ptr %retval, align 8
  ret ptr %26
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @printTreeGo(ptr noundef %root) #0 {
entry:
  %root.addr = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  %0 = load ptr, ptr %root.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end8

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %root.addr, align 8
  %left = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %left, align 8
  %cmp1 = icmp ne ptr %2, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %root.addr, align 8
  %left3 = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %left3, align 8
  call void @printTreeGo(ptr noundef %4)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %5 = load ptr, ptr %root.addr, align 8
  %payload = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %payload, align 4
  %7 = load ptr, ptr %root.addr, align 8
  %depth = getelementptr inbounds %struct.node, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %depth, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %6, i32 noundef %8)
  %9 = load ptr, ptr %root.addr, align 8
  %right = getelementptr inbounds %struct.node, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %right, align 8
  %cmp5 = icmp ne ptr %10, null
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %11 = load ptr, ptr %root.addr, align 8
  %right7 = getelementptr inbounds %struct.node, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %right7, align 8
  call void @printTreeGo(ptr noundef %12)
  br label %if.end8

if.end8:                                          ; preds = %if.then, %if.then6, %if.end4
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @printTree(ptr noundef %root) #0 {
entry:
  %root.addr = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  %0 = load ptr, ptr %root.addr, align 8
  call void @printTreeGo(ptr noundef %0)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @freeTree(ptr noundef %root) #0 {
entry:
  %root.addr = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  %0 = load ptr, ptr %root.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %root.addr, align 8
  %left = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %left, align 8
  call void @freeTree(ptr noundef %2)
  %3 = load ptr, ptr %root.addr, align 8
  %right = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %right, align 8
  call void @freeTree(ptr noundef %4)
  %5 = load ptr, ptr %root.addr, align 8
  call void @free(ptr noundef %5)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @height(ptr noundef %root) #0 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca ptr, align 8
  %leftH = alloca i32, align 4
  %rightH = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  %0 = load ptr, ptr %root.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %root.addr, align 8
  %left = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %left, align 8
  %call = call i32 @height(ptr noundef %2)
  store i32 %call, ptr %leftH, align 4
  %3 = load ptr, ptr %root.addr, align 8
  %right = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %right, align 8
  %call1 = call i32 @height(ptr noundef %4)
  store i32 %call1, ptr %rightH, align 4
  %5 = load i32, ptr %leftH, align 4
  %6 = load i32, ptr %rightH, align 4
  %cmp2 = icmp sgt i32 %5, %6
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %7 = load i32, ptr %leftH, align 4
  %add = add nsw i32 1, %7
  store i32 %add, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %8 = load i32, ptr %rightH, align 4
  %add4 = add nsw i32 1, %8
  store i32 %add4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then3, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @createExampleTree() #0 {
entry:
  %root = alloca ptr, align 8
  %call = call ptr @insert(ptr noundef null, i32 noundef 5)
  store ptr %call, ptr %root, align 8
  %0 = load ptr, ptr %root, align 8
  %call1 = call ptr @insert(ptr noundef %0, i32 noundef 10)
  %1 = load ptr, ptr %root, align 8
  %call2 = call ptr @insert(ptr noundef %1, i32 noundef 2)
  %2 = load ptr, ptr %root, align 8
  %call3 = call ptr @insert(ptr noundef %2, i32 noundef 7)
  %3 = load ptr, ptr %root, align 8
  %call4 = call ptr @insert(ptr noundef %3, i32 noundef 13)
  %4 = load ptr, ptr %root, align 8
  %call5 = call ptr @insert(ptr noundef %4, i32 noundef 8)
  %5 = load ptr, ptr %root, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @calcDepthsGo(ptr noundef %root, i32 noundef %depth) #0 {
entry:
  %root.addr = alloca ptr, align 8
  %depth.addr = alloca i32, align 4
  store ptr %root, ptr %root.addr, align 8
  store i32 %depth, ptr %depth.addr, align 4
  %0 = load ptr, ptr %root.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end9

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %depth.addr, align 4
  %2 = load ptr, ptr %root.addr, align 8
  %depth1 = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 0
  store i32 %1, ptr %depth1, align 8
  %3 = load ptr, ptr %root.addr, align 8
  %left = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %left, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %root.addr, align 8
  %left3 = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %left3, align 8
  %7 = load i32, ptr %depth.addr, align 4
  %add = add nsw i32 %7, 1
  call void @calcDepthsGo(ptr noundef %6, i32 noundef %add)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %8 = load ptr, ptr %root.addr, align 8
  %right = getelementptr inbounds %struct.node, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %right, align 8
  %tobool5 = icmp ne ptr %9, null
  br i1 %tobool5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end4
  %10 = load ptr, ptr %root.addr, align 8
  %right7 = getelementptr inbounds %struct.node, ptr %10, i32 0, i32 3
  %11 = load ptr, ptr %right7, align 8
  %12 = load i32, ptr %depth.addr, align 4
  %add8 = add nsw i32 %12, 1
  call void @calcDepthsGo(ptr noundef %11, i32 noundef %add8)
  br label %if.end9

if.end9:                                          ; preds = %if.then, %if.then6, %if.end4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @calcDepths(ptr noundef %root) #0 {
entry:
  %root.addr = alloca ptr, align 8
  store ptr %root, ptr %root.addr, align 8
  %0 = load ptr, ptr %root.addr, align 8
  call void @calcDepthsGo(ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %root = alloca ptr, align 8
  %call = call ptr @createExampleTree()
  store ptr %call, ptr %root, align 8
  %0 = load ptr, ptr %root, align 8
  %call1 = call i32 @height(ptr noundef %0)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %call1)
  %1 = load ptr, ptr %root, align 8
  call void @calcDepths(ptr noundef %1)
  %2 = load ptr, ptr %root, align 8
  call void @printTree(ptr noundef %2)
  %3 = load ptr, ptr %root, align 8
  call void @freeTree(ptr noundef %3)
  store ptr null, ptr %root, align 8
  ret i32 0
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
