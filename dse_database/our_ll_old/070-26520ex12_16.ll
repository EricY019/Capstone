; ModuleID = './code/070-26520ex12_16.c'
source_filename = "./code/070-26520ex12_16.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.treeNode = type { ptr, i32, ptr }

@.str = private unnamed_addr constant [43 x i8] c"The numbers being placed in the tree are:\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%3d\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\0A\0AThe preOrder traversal is:\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"\0A\0AThe inOrder traversal is:\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"\0A\0AThe postOrder traversal is:\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"%c not inserted. No memory available.\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %item = alloca i32, align 4
  %rootPtr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store ptr null, ptr %rootPtr, align 8
  %call = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call3 = call i32 @rand()
  %rem = srem i32 %call3, 15
  store i32 %rem, ptr %item, align 4
  %1 = load i32, ptr %item, align 4
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %1)
  %2 = load i32, ptr %item, align 4
  call void @insertNode(ptr noundef %rootPtr, i32 noundef %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %4 = load ptr, ptr %rootPtr, align 8
  call void @preOrder(ptr noundef %4)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %5 = load ptr, ptr %rootPtr, align 8
  call void @inOrder(ptr noundef %5)
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %6 = load ptr, ptr %rootPtr, align 8
  call void @postOrder(ptr noundef %6)
  ret i32 0
}

declare void @srand(i32 noundef) #1

declare i64 @time(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @rand() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @insertNode(ptr noundef %treePtr, i32 noundef %value) #0 {
entry:
  %treePtr.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  store ptr %treePtr, ptr %treePtr.addr, align 8
  store i32 %value, ptr %value.addr, align 4
  %0 = load ptr, ptr %treePtr.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  %call = call ptr @malloc(i64 noundef 24) #3
  %2 = load ptr, ptr %treePtr.addr, align 8
  store ptr %call, ptr %2, align 8
  %3 = load ptr, ptr %treePtr.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %cmp1 = icmp ne ptr %4, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %5 = load i32, ptr %value.addr, align 4
  %6 = load ptr, ptr %treePtr.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %data = getelementptr inbounds %struct.treeNode, ptr %7, i32 0, i32 1
  store i32 %5, ptr %data, align 8
  %8 = load ptr, ptr %treePtr.addr, align 8
  %9 = load ptr, ptr %8, align 8
  %leftPtr = getelementptr inbounds %struct.treeNode, ptr %9, i32 0, i32 0
  store ptr null, ptr %leftPtr, align 8
  %10 = load ptr, ptr %treePtr.addr, align 8
  %11 = load ptr, ptr %10, align 8
  %rightPtr = getelementptr inbounds %struct.treeNode, ptr %11, i32 0, i32 2
  store ptr null, ptr %rightPtr, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load i32, ptr %value.addr, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end16

if.else4:                                         ; preds = %entry
  %13 = load i32, ptr %value.addr, align 4
  %14 = load ptr, ptr %treePtr.addr, align 8
  %15 = load ptr, ptr %14, align 8
  %data5 = getelementptr inbounds %struct.treeNode, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %data5, align 8
  %cmp6 = icmp sle i32 %13, %16
  br i1 %cmp6, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else4
  %17 = load ptr, ptr %treePtr.addr, align 8
  %18 = load ptr, ptr %17, align 8
  %leftPtr8 = getelementptr inbounds %struct.treeNode, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %value.addr, align 4
  call void @insertNode(ptr noundef %leftPtr8, i32 noundef %19)
  br label %if.end15

if.else9:                                         ; preds = %if.else4
  %20 = load i32, ptr %value.addr, align 4
  %21 = load ptr, ptr %treePtr.addr, align 8
  %22 = load ptr, ptr %21, align 8
  %data10 = getelementptr inbounds %struct.treeNode, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %data10, align 8
  %cmp11 = icmp sgt i32 %20, %23
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.else9
  %24 = load ptr, ptr %treePtr.addr, align 8
  %25 = load ptr, ptr %24, align 8
  %rightPtr13 = getelementptr inbounds %struct.treeNode, ptr %25, i32 0, i32 2
  %26 = load i32, ptr %value.addr, align 4
  call void @insertNode(ptr noundef %rightPtr13, i32 noundef %26)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.else9
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then7
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @preOrder(ptr noundef %treePtr) #0 {
entry:
  %treePtr.addr = alloca ptr, align 8
  store ptr %treePtr, ptr %treePtr.addr, align 8
  %0 = load ptr, ptr %treePtr.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %treePtr.addr, align 8
  %data = getelementptr inbounds %struct.treeNode, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %data, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %2)
  %3 = load ptr, ptr %treePtr.addr, align 8
  %leftPtr = getelementptr inbounds %struct.treeNode, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %leftPtr, align 8
  call void @preOrder(ptr noundef %4)
  %5 = load ptr, ptr %treePtr.addr, align 8
  %rightPtr = getelementptr inbounds %struct.treeNode, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %rightPtr, align 8
  call void @preOrder(ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @inOrder(ptr noundef %treePtr) #0 {
entry:
  %treePtr.addr = alloca ptr, align 8
  store ptr %treePtr, ptr %treePtr.addr, align 8
  %0 = load ptr, ptr %treePtr.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %treePtr.addr, align 8
  %leftPtr = getelementptr inbounds %struct.treeNode, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %leftPtr, align 8
  call void @inOrder(ptr noundef %2)
  %3 = load ptr, ptr %treePtr.addr, align 8
  %data = getelementptr inbounds %struct.treeNode, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %data, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %4)
  %5 = load ptr, ptr %treePtr.addr, align 8
  %rightPtr = getelementptr inbounds %struct.treeNode, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %rightPtr, align 8
  call void @inOrder(ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @postOrder(ptr noundef %treePtr) #0 {
entry:
  %treePtr.addr = alloca ptr, align 8
  store ptr %treePtr, ptr %treePtr.addr, align 8
  %0 = load ptr, ptr %treePtr.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %treePtr.addr, align 8
  %leftPtr = getelementptr inbounds %struct.treeNode, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %leftPtr, align 8
  call void @postOrder(ptr noundef %2)
  %3 = load ptr, ptr %treePtr.addr, align 8
  %rightPtr = getelementptr inbounds %struct.treeNode, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %rightPtr, align 8
  call void @postOrder(ptr noundef %4)
  %5 = load ptr, ptr %treePtr.addr, align 8
  %data = getelementptr inbounds %struct.treeNode, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %data, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
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
