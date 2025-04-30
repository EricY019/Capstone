; ModuleID = './code/385-9489ex12_15.c'
source_filename = "./code/385-9489ex12_15.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.queueNode = type { i32, ptr }

@.str = private unnamed_addr constant [26 x i8] c"A customer arrived at %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"The customer served at %d arrived at %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"\0AThe maximum number of customers at any one time was %d people.\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"The longest wait any 1 customer experienced was %d minutes.\0A\00", align 1
@.str.4 = private unnamed_addr constant [75 x i8] c"The number of customers still waiting to be served at closing time was %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"%c not inserted. No memory available.\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Queue is empty.\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"The queue is:\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%d --> \00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"NULL\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %headPtr = alloca ptr, align 8
  %tailPtr = alloca ptr, align 8
  %arrivalIntervalMax = alloca i32, align 4
  %minutes = alloca i32, align 4
  %customerDue = alloca i32, align 4
  %customerServiceTime = alloca i32, align 4
  %currentCustomerArrival = alloca i32, align 4
  %temp = alloca i32, align 4
  %longestQueue = alloca i32, align 4
  %longestWait = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv)
  store ptr null, ptr %headPtr, align 8
  store ptr null, ptr %tailPtr, align 8
  store i32 4, ptr %arrivalIntervalMax, align 4
  store i32 0, ptr %longestQueue, align 4
  store i32 0, ptr %longestWait, align 4
  %call1 = call i32 @rand()
  %0 = load i32, ptr %arrivalIntervalMax, align 4
  %rem = srem i32 %call1, %0
  %add = add nsw i32 %rem, 1
  store i32 %add, ptr %customerDue, align 4
  %call2 = call i32 @rand()
  %rem3 = srem i32 %call2, 4
  %add4 = add nsw i32 %rem3, 1
  %1 = load i32, ptr %customerDue, align 4
  %add5 = add nsw i32 %add4, %1
  store i32 %add5, ptr %customerServiceTime, align 4
  %2 = load i32, ptr %customerDue, align 4
  call void @enqueue(ptr noundef %headPtr, ptr noundef %tailPtr, i32 noundef %2)
  %3 = load i32, ptr %customerDue, align 4
  store i32 %3, ptr %minutes, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %minutes, align 4
  %cmp = icmp sle i32 %4, 720
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %headPtr, align 8
  %call7 = call i32 @getQueueLength(ptr noundef %5)
  store i32 %call7, ptr %temp, align 4
  %6 = load i32, ptr %temp, align 4
  %7 = load i32, ptr %longestQueue, align 4
  %cmp8 = icmp sgt i32 %6, %7
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, ptr %temp, align 4
  store i32 %8, ptr %longestQueue, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load i32, ptr %minutes, align 4
  %10 = load i32, ptr %customerDue, align 4
  %cmp10 = icmp eq i32 %9, %10
  br i1 %cmp10, label %if.then12, label %if.end26

if.then12:                                        ; preds = %if.end
  %11 = load i32, ptr %minutes, align 4
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %11)
  %12 = load i32, ptr %minutes, align 4
  call void @enqueue(ptr noundef %headPtr, ptr noundef %tailPtr, i32 noundef %12)
  %call14 = call i32 @rand()
  %13 = load i32, ptr %arrivalIntervalMax, align 4
  %rem15 = srem i32 %call14, %13
  %add16 = add nsw i32 %rem15, 1
  %14 = load i32, ptr %minutes, align 4
  %add17 = add nsw i32 %add16, %14
  store i32 %add17, ptr %customerDue, align 4
  %15 = load i32, ptr %currentCustomerArrival, align 4
  %cmp18 = icmp eq i32 %15, 0
  br i1 %cmp18, label %if.then20, label %if.end25

if.then20:                                        ; preds = %if.then12
  %call21 = call i32 @rand()
  %rem22 = srem i32 %call21, 4
  %add23 = add nsw i32 %rem22, 1
  %16 = load i32, ptr %minutes, align 4
  %add24 = add nsw i32 %add23, %16
  store i32 %add24, ptr %customerServiceTime, align 4
  %17 = load i32, ptr %minutes, align 4
  store i32 %17, ptr %currentCustomerArrival, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.then12
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end
  %18 = load i32, ptr %minutes, align 4
  %19 = load i32, ptr %customerServiceTime, align 4
  %cmp27 = icmp eq i32 %18, %19
  br i1 %cmp27, label %if.then29, label %if.end44

if.then29:                                        ; preds = %if.end26
  %20 = load i32, ptr %customerServiceTime, align 4
  %21 = load i32, ptr %currentCustomerArrival, align 4
  %sub = sub nsw i32 %20, %21
  %22 = load i32, ptr %longestWait, align 4
  %cmp30 = icmp sgt i32 %sub, %22
  br i1 %cmp30, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.then29
  %23 = load i32, ptr %customerServiceTime, align 4
  %24 = load i32, ptr %currentCustomerArrival, align 4
  %sub33 = sub nsw i32 %23, %24
  store i32 %sub33, ptr %longestWait, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then29
  %25 = load i32, ptr %minutes, align 4
  %26 = load i32, ptr %currentCustomerArrival, align 4
  %call35 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %25, i32 noundef %26)
  %27 = load ptr, ptr %headPtr, align 8
  %call36 = call i32 @isEmpty(ptr noundef %27)
  %tobool = icmp ne i32 %call36, 0
  br i1 %tobool, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.end34
  %call38 = call i32 @dequeue(ptr noundef %headPtr, ptr noundef %tailPtr)
  store i32 %call38, ptr %currentCustomerArrival, align 4
  %call39 = call i32 @rand()
  %rem40 = srem i32 %call39, 4
  %add41 = add nsw i32 %rem40, 1
  %28 = load i32, ptr %minutes, align 4
  %add42 = add nsw i32 %add41, %28
  store i32 %add42, ptr %customerServiceTime, align 4
  br label %if.end43

if.else:                                          ; preds = %if.end34
  store i32 0, ptr %currentCustomerArrival, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then37
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end26
  br label %for.inc

for.inc:                                          ; preds = %if.end44
  %29 = load i32, ptr %minutes, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, ptr %minutes, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %30 = load i32, ptr %longestQueue, align 4
  %call45 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %30)
  %31 = load i32, ptr %longestWait, align 4
  %call46 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %31)
  %32 = load ptr, ptr %headPtr, align 8
  %call47 = call i32 @getQueueLength(ptr noundef %32)
  %call48 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %call47)
  ret i32 0
}

declare void @srand(i32 noundef) #1

declare i64 @time(ptr noundef) #1

declare i32 @rand() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @enqueue(ptr noundef %headPtr, ptr noundef %tailPtr, i32 noundef %value) #0 {
entry:
  %headPtr.addr = alloca ptr, align 8
  %tailPtr.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  %newPtr = alloca ptr, align 8
  store ptr %headPtr, ptr %headPtr.addr, align 8
  store ptr %tailPtr, ptr %tailPtr.addr, align 8
  store i32 %value, ptr %value.addr, align 4
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %newPtr, align 8
  %0 = load ptr, ptr %newPtr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %value.addr, align 4
  %2 = load ptr, ptr %newPtr, align 8
  %customer = getelementptr inbounds %struct.queueNode, ptr %2, i32 0, i32 0
  store i32 %1, ptr %customer, align 8
  %3 = load ptr, ptr %newPtr, align 8
  %nextPtr = getelementptr inbounds %struct.queueNode, ptr %3, i32 0, i32 1
  store ptr null, ptr %nextPtr, align 8
  %4 = load ptr, ptr %headPtr.addr, align 8
  %5 = load ptr, ptr %4, align 8
  %call1 = call i32 @isEmpty(ptr noundef %5)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %6 = load ptr, ptr %newPtr, align 8
  %7 = load ptr, ptr %headPtr.addr, align 8
  store ptr %6, ptr %7, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %8 = load ptr, ptr %newPtr, align 8
  %9 = load ptr, ptr %tailPtr.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %nextPtr3 = getelementptr inbounds %struct.queueNode, ptr %10, i32 0, i32 1
  store ptr %8, ptr %nextPtr3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %11 = load ptr, ptr %newPtr, align 8
  %12 = load ptr, ptr %tailPtr.addr, align 8
  store ptr %11, ptr %12, align 8
  br label %if.end6

if.else4:                                         ; preds = %entry
  %13 = load i32, ptr %value.addr, align 4
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %13)
  br label %if.end6

if.end6:                                          ; preds = %if.else4, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @getQueueLength(ptr noundef %currentPtr) #0 {
entry:
  %currentPtr.addr = alloca ptr, align 8
  %queueLength = alloca i32, align 4
  store ptr %currentPtr, ptr %currentPtr.addr, align 8
  store i32 0, ptr %queueLength, align 4
  %0 = load ptr, ptr %currentPtr.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %1 = load ptr, ptr %currentPtr.addr, align 8
  %cmp1 = icmp ne ptr %1, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %queueLength, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %queueLength, align 4
  %3 = load ptr, ptr %currentPtr.addr, align 8
  %nextPtr = getelementptr inbounds %struct.queueNode, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %nextPtr, align 8
  store ptr %4, ptr %currentPtr.addr, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %5 = load i32, ptr %queueLength, align 4
  ret i32 %5
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @isEmpty(ptr noundef %headPtr) #0 {
entry:
  %headPtr.addr = alloca ptr, align 8
  store ptr %headPtr, ptr %headPtr.addr, align 8
  %0 = load ptr, ptr %headPtr.addr, align 8
  %cmp = icmp eq ptr %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @dequeue(ptr noundef %headPtr, ptr noundef %tailPtr) #0 {
entry:
  %headPtr.addr = alloca ptr, align 8
  %tailPtr.addr = alloca ptr, align 8
  %value = alloca i32, align 4
  %tempPtr = alloca ptr, align 8
  store ptr %headPtr, ptr %headPtr.addr, align 8
  store ptr %tailPtr, ptr %tailPtr.addr, align 8
  %0 = load ptr, ptr %headPtr.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %customer = getelementptr inbounds %struct.queueNode, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %customer, align 8
  store i32 %2, ptr %value, align 4
  %3 = load ptr, ptr %headPtr.addr, align 8
  %4 = load ptr, ptr %3, align 8
  store ptr %4, ptr %tempPtr, align 8
  %5 = load ptr, ptr %headPtr.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %nextPtr = getelementptr inbounds %struct.queueNode, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %nextPtr, align 8
  %8 = load ptr, ptr %headPtr.addr, align 8
  store ptr %7, ptr %8, align 8
  %9 = load ptr, ptr %headPtr.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %cmp = icmp eq ptr %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %tailPtr.addr, align 8
  store ptr null, ptr %11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %tempPtr, align 8
  call void @free(ptr noundef %12)
  %13 = load i32, ptr %value, align 4
  ret i32 %13
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

declare void @free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @printQueue(ptr noundef %currentPtr) #0 {
entry:
  %currentPtr.addr = alloca ptr, align 8
  store ptr %currentPtr, ptr %currentPtr.addr, align 8
  %0 = load ptr, ptr %currentPtr.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %1 = load ptr, ptr %currentPtr.addr, align 8
  %cmp2 = icmp ne ptr %1, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %currentPtr.addr, align 8
  %customer = getelementptr inbounds %struct.queueNode, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %customer, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %3)
  %4 = load ptr, ptr %currentPtr.addr, align 8
  %nextPtr = getelementptr inbounds %struct.queueNode, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %nextPtr, align 8
  store ptr %5, ptr %currentPtr.addr, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  ret void
}

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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
