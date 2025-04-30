; ModuleID = './code/292-20650DeleteNodeDLL.c'
source_filename = "./code/292-20650DeleteNodeDLL.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.node = type { i32, ptr, ptr }

@.str = private unnamed_addr constant [7 x i8] c"%s %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Found: \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"After Deletion.\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Element value= %d \0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %head = alloca ptr, align 8
  %point = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store ptr null, ptr %head, align 8
  call void @push(ptr noundef %head, i32 noundef 1)
  call void @push(ptr noundef %head, i32 noundef 2)
  call void @push(ptr noundef %head, i32 noundef 3)
  %0 = load ptr, ptr %head, align 8
  call void @traverseLinkedList(ptr noundef %0)
  %1 = load ptr, ptr %head, align 8
  store ptr %1, ptr %point, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %point, align 8
  %data = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %data, align 8
  %cmp = icmp ne i32 %3, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %point, align 8
  %next = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %next, align 8
  store ptr %5, ptr %point, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %6 = load ptr, ptr %point, align 8
  %data1 = getelementptr inbounds %struct.node, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %data1, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef @.str.1, i32 noundef %7)
  %8 = load ptr, ptr %point, align 8
  call void @deleteNode(ptr noundef %head, ptr noundef %8)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef @.str.3)
  %9 = load ptr, ptr %head, align 8
  call void @traverseLinkedList(ptr noundef %9)
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @push(ptr noundef %head, i32 noundef %data) #0 {
entry:
  %head.addr = alloca ptr, align 8
  %data.addr = alloca i32, align 4
  %newNode = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  store i32 %data, ptr %data.addr, align 4
  %call = call ptr @malloc(i64 noundef 24) #3
  store ptr %call, ptr %newNode, align 8
  %0 = load i32, ptr %data.addr, align 4
  %1 = load ptr, ptr %newNode, align 8
  %data1 = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 0
  store i32 %0, ptr %data1, align 8
  %2 = load ptr, ptr %head.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %newNode, align 8
  %next = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 2
  store ptr %3, ptr %next, align 8
  %5 = load ptr, ptr %newNode, align 8
  %prev = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 1
  store ptr null, ptr %prev, align 8
  %6 = load ptr, ptr %head.addr, align 8
  %7 = load ptr, ptr %6, align 8
  %cmp = icmp ne ptr %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %newNode, align 8
  %9 = load ptr, ptr %head.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %prev2 = getelementptr inbounds %struct.node, ptr %10, i32 0, i32 1
  store ptr %8, ptr %prev2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load ptr, ptr %newNode, align 8
  %12 = load ptr, ptr %head.addr, align 8
  store ptr %11, ptr %12, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @traverseLinkedList(ptr noundef %head) #0 {
entry:
  %head.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  %0 = load ptr, ptr %head.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %head.addr, align 8
  %data = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %data, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %2)
  %3 = load ptr, ptr %head.addr, align 8
  %next = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %next, align 8
  call void @traverseLinkedList(ptr noundef %4)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @deleteNode(ptr noundef %head, ptr noundef %point) #0 {
entry:
  %head.addr = alloca ptr, align 8
  %point.addr = alloca ptr, align 8
  %prev7 = alloca ptr, align 8
  %next9 = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  store ptr %point, ptr %point.addr, align 8
  %0 = load ptr, ptr %point.addr, align 8
  %next = getelementptr inbounds %struct.node, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %next, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %point.addr, align 8
  %prev = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %prev, align 8
  %next1 = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 2
  store ptr null, ptr %next1, align 8
  br label %if.end13

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %point.addr, align 8
  %prev2 = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %prev2, align 8
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  %6 = load ptr, ptr %point.addr, align 8
  %next5 = getelementptr inbounds %struct.node, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %next5, align 8
  %8 = load ptr, ptr %head.addr, align 8
  store ptr %7, ptr %8, align 8
  br label %if.end

if.else6:                                         ; preds = %if.else
  %9 = load ptr, ptr %point.addr, align 8
  %prev8 = getelementptr inbounds %struct.node, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %prev8, align 8
  store ptr %10, ptr %prev7, align 8
  %11 = load ptr, ptr %point.addr, align 8
  %next10 = getelementptr inbounds %struct.node, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %next10, align 8
  store ptr %12, ptr %next9, align 8
  %13 = load ptr, ptr %next9, align 8
  %14 = load ptr, ptr %prev7, align 8
  %next11 = getelementptr inbounds %struct.node, ptr %14, i32 0, i32 2
  store ptr %13, ptr %next11, align 8
  %15 = load ptr, ptr %prev7, align 8
  %16 = load ptr, ptr %next9, align 8
  %prev12 = getelementptr inbounds %struct.node, ptr %16, i32 0, i32 1
  store ptr %15, ptr %prev12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then4
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then
  %17 = load ptr, ptr %point.addr, align 8
  call void @free(ptr noundef %17)
  ret void
}

declare void @free(ptr noundef) #1

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
