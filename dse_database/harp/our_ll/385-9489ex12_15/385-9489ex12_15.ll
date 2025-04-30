; ModuleID = 'code/385-9489ex12_15.c'
source_filename = "code/385-9489ex12_15.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queueNode = type { i32, %struct.queueNode* }

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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %headPtr = alloca %struct.queueNode*, align 8
  %tailPtr = alloca %struct.queueNode*, align 8
  %arrivalIntervalMax = alloca i32, align 4
  %minutes = alloca i32, align 4
  %customerDue = alloca i32, align 4
  %customerServiceTime = alloca i32, align 4
  %currentCustomerArrival = alloca i32, align 4
  %temp = alloca i32, align 4
  %longestQueue = alloca i32, align 4
  %longestWait = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i64 @time(i64* null) #3
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #3
  store %struct.queueNode* null, %struct.queueNode** %headPtr, align 8
  store %struct.queueNode* null, %struct.queueNode** %tailPtr, align 8
  store i32 4, i32* %arrivalIntervalMax, align 4
  store i32 0, i32* %longestQueue, align 4
  store i32 0, i32* %longestWait, align 4
  %call1 = call i32 @rand() #3
  %0 = load i32, i32* %arrivalIntervalMax, align 4
  %rem = srem i32 %call1, %0
  %add = add nsw i32 %rem, 1
  store i32 %add, i32* %customerDue, align 4
  %call2 = call i32 @rand() #3
  %rem3 = srem i32 %call2, 4
  %add4 = add nsw i32 %rem3, 1
  %1 = load i32, i32* %customerDue, align 4
  %add5 = add nsw i32 %add4, %1
  store i32 %add5, i32* %customerServiceTime, align 4
  %2 = load i32, i32* %customerDue, align 4
  call void @enqueue(%struct.queueNode** %headPtr, %struct.queueNode** %tailPtr, i32 %2)
  %3 = load i32, i32* %customerDue, align 4
  store i32 %3, i32* %minutes, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %minutes, align 4
  %cmp = icmp sle i32 %4, 720
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.queueNode*, %struct.queueNode** %headPtr, align 8
  %call7 = call i32 @getQueueLength(%struct.queueNode* %5)
  store i32 %call7, i32* %temp, align 4
  %6 = load i32, i32* %temp, align 4
  %7 = load i32, i32* %longestQueue, align 4
  %cmp8 = icmp sgt i32 %6, %7
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %temp, align 4
  store i32 %8, i32* %longestQueue, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load i32, i32* %minutes, align 4
  %10 = load i32, i32* %customerDue, align 4
  %cmp10 = icmp eq i32 %9, %10
  br i1 %cmp10, label %if.then12, label %if.end26

if.then12:                                        ; preds = %if.end
  %11 = load i32, i32* %minutes, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %11)
  %12 = load i32, i32* %minutes, align 4
  call void @enqueue(%struct.queueNode** %headPtr, %struct.queueNode** %tailPtr, i32 %12)
  %call14 = call i32 @rand() #3
  %13 = load i32, i32* %arrivalIntervalMax, align 4
  %rem15 = srem i32 %call14, %13
  %add16 = add nsw i32 %rem15, 1
  %14 = load i32, i32* %minutes, align 4
  %add17 = add nsw i32 %add16, %14
  store i32 %add17, i32* %customerDue, align 4
  %15 = load i32, i32* %currentCustomerArrival, align 4
  %cmp18 = icmp eq i32 %15, 0
  br i1 %cmp18, label %if.then20, label %if.end25

if.then20:                                        ; preds = %if.then12
  %call21 = call i32 @rand() #3
  %rem22 = srem i32 %call21, 4
  %add23 = add nsw i32 %rem22, 1
  %16 = load i32, i32* %minutes, align 4
  %add24 = add nsw i32 %add23, %16
  store i32 %add24, i32* %customerServiceTime, align 4
  %17 = load i32, i32* %minutes, align 4
  store i32 %17, i32* %currentCustomerArrival, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.then12
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end
  %18 = load i32, i32* %minutes, align 4
  %19 = load i32, i32* %customerServiceTime, align 4
  %cmp27 = icmp eq i32 %18, %19
  br i1 %cmp27, label %if.then29, label %if.end44

if.then29:                                        ; preds = %if.end26
  %20 = load i32, i32* %customerServiceTime, align 4
  %21 = load i32, i32* %currentCustomerArrival, align 4
  %sub = sub nsw i32 %20, %21
  %22 = load i32, i32* %longestWait, align 4
  %cmp30 = icmp sgt i32 %sub, %22
  br i1 %cmp30, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.then29
  %23 = load i32, i32* %customerServiceTime, align 4
  %24 = load i32, i32* %currentCustomerArrival, align 4
  %sub33 = sub nsw i32 %23, %24
  store i32 %sub33, i32* %longestWait, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then29
  %25 = load i32, i32* %minutes, align 4
  %26 = load i32, i32* %currentCustomerArrival, align 4
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %26)
  %27 = load %struct.queueNode*, %struct.queueNode** %headPtr, align 8
  %call36 = call i32 @isEmpty(%struct.queueNode* %27)
  %tobool = icmp ne i32 %call36, 0
  br i1 %tobool, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.end34
  %call38 = call i32 @dequeue(%struct.queueNode** %headPtr, %struct.queueNode** %tailPtr)
  store i32 %call38, i32* %currentCustomerArrival, align 4
  %call39 = call i32 @rand() #3
  %rem40 = srem i32 %call39, 4
  %add41 = add nsw i32 %rem40, 1
  %28 = load i32, i32* %minutes, align 4
  %add42 = add nsw i32 %add41, %28
  store i32 %add42, i32* %customerServiceTime, align 4
  br label %if.end43

if.else:                                          ; preds = %if.end34
  store i32 0, i32* %currentCustomerArrival, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then37
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.end26
  br label %for.inc

for.inc:                                          ; preds = %if.end44
  %29 = load i32, i32* %minutes, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %minutes, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %30 = load i32, i32* %longestQueue, align 4
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %31 = load i32, i32* %longestWait, align 4
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %32 = load %struct.queueNode*, %struct.queueNode** %headPtr, align 8
  %call47 = call i32 @getQueueLength(%struct.queueNode* %32)
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0), i32 %call47)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enqueue(%struct.queueNode** %headPtr, %struct.queueNode** %tailPtr, i32 %value) #0 {
entry:
  %headPtr.addr = alloca %struct.queueNode**, align 8
  %tailPtr.addr = alloca %struct.queueNode**, align 8
  %value.addr = alloca i32, align 4
  %newPtr = alloca %struct.queueNode*, align 8
  store %struct.queueNode** %headPtr, %struct.queueNode*** %headPtr.addr, align 8
  store %struct.queueNode** %tailPtr, %struct.queueNode*** %tailPtr.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.queueNode*
  store %struct.queueNode* %0, %struct.queueNode** %newPtr, align 8
  %1 = load %struct.queueNode*, %struct.queueNode** %newPtr, align 8
  %cmp = icmp ne %struct.queueNode* %1, null
  br i1 %cmp, label %if.then, label %if.else4

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %value.addr, align 4
  %3 = load %struct.queueNode*, %struct.queueNode** %newPtr, align 8
  %customer = getelementptr inbounds %struct.queueNode, %struct.queueNode* %3, i32 0, i32 0
  store i32 %2, i32* %customer, align 8
  %4 = load %struct.queueNode*, %struct.queueNode** %newPtr, align 8
  %nextPtr = getelementptr inbounds %struct.queueNode, %struct.queueNode* %4, i32 0, i32 1
  store %struct.queueNode* null, %struct.queueNode** %nextPtr, align 8
  %5 = load %struct.queueNode**, %struct.queueNode*** %headPtr.addr, align 8
  %6 = load %struct.queueNode*, %struct.queueNode** %5, align 8
  %call1 = call i32 @isEmpty(%struct.queueNode* %6)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %7 = load %struct.queueNode*, %struct.queueNode** %newPtr, align 8
  %8 = load %struct.queueNode**, %struct.queueNode*** %headPtr.addr, align 8
  store %struct.queueNode* %7, %struct.queueNode** %8, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load %struct.queueNode*, %struct.queueNode** %newPtr, align 8
  %10 = load %struct.queueNode**, %struct.queueNode*** %tailPtr.addr, align 8
  %11 = load %struct.queueNode*, %struct.queueNode** %10, align 8
  %nextPtr3 = getelementptr inbounds %struct.queueNode, %struct.queueNode* %11, i32 0, i32 1
  store %struct.queueNode* %9, %struct.queueNode** %nextPtr3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %12 = load %struct.queueNode*, %struct.queueNode** %newPtr, align 8
  %13 = load %struct.queueNode**, %struct.queueNode*** %tailPtr.addr, align 8
  store %struct.queueNode* %12, %struct.queueNode** %13, align 8
  br label %if.end6

if.else4:                                         ; preds = %entry
  %14 = load i32, i32* %value.addr, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %14)
  br label %if.end6

if.end6:                                          ; preds = %if.else4, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getQueueLength(%struct.queueNode* %currentPtr) #0 {
entry:
  %currentPtr.addr = alloca %struct.queueNode*, align 8
  %queueLength = alloca i32, align 4
  store %struct.queueNode* %currentPtr, %struct.queueNode** %currentPtr.addr, align 8
  store i32 0, i32* %queueLength, align 4
  %0 = load %struct.queueNode*, %struct.queueNode** %currentPtr.addr, align 8
  %cmp = icmp ne %struct.queueNode* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %1 = load %struct.queueNode*, %struct.queueNode** %currentPtr.addr, align 8
  %cmp1 = icmp ne %struct.queueNode* %1, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %queueLength, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %queueLength, align 4
  %3 = load %struct.queueNode*, %struct.queueNode** %currentPtr.addr, align 8
  %nextPtr = getelementptr inbounds %struct.queueNode, %struct.queueNode* %3, i32 0, i32 1
  %4 = load %struct.queueNode*, %struct.queueNode** %nextPtr, align 8
  store %struct.queueNode* %4, %struct.queueNode** %currentPtr.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %5 = load i32, i32* %queueLength, align 4
  ret i32 %5
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isEmpty(%struct.queueNode* %headPtr) #0 {
entry:
  %headPtr.addr = alloca %struct.queueNode*, align 8
  store %struct.queueNode* %headPtr, %struct.queueNode** %headPtr.addr, align 8
  %0 = load %struct.queueNode*, %struct.queueNode** %headPtr.addr, align 8
  %cmp = icmp eq %struct.queueNode* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dequeue(%struct.queueNode** %headPtr, %struct.queueNode** %tailPtr) #0 {
entry:
  %headPtr.addr = alloca %struct.queueNode**, align 8
  %tailPtr.addr = alloca %struct.queueNode**, align 8
  %value = alloca i32, align 4
  %tempPtr = alloca %struct.queueNode*, align 8
  store %struct.queueNode** %headPtr, %struct.queueNode*** %headPtr.addr, align 8
  store %struct.queueNode** %tailPtr, %struct.queueNode*** %tailPtr.addr, align 8
  %0 = load %struct.queueNode**, %struct.queueNode*** %headPtr.addr, align 8
  %1 = load %struct.queueNode*, %struct.queueNode** %0, align 8
  %customer = getelementptr inbounds %struct.queueNode, %struct.queueNode* %1, i32 0, i32 0
  %2 = load i32, i32* %customer, align 8
  store i32 %2, i32* %value, align 4
  %3 = load %struct.queueNode**, %struct.queueNode*** %headPtr.addr, align 8
  %4 = load %struct.queueNode*, %struct.queueNode** %3, align 8
  store %struct.queueNode* %4, %struct.queueNode** %tempPtr, align 8
  %5 = load %struct.queueNode**, %struct.queueNode*** %headPtr.addr, align 8
  %6 = load %struct.queueNode*, %struct.queueNode** %5, align 8
  %nextPtr = getelementptr inbounds %struct.queueNode, %struct.queueNode* %6, i32 0, i32 1
  %7 = load %struct.queueNode*, %struct.queueNode** %nextPtr, align 8
  %8 = load %struct.queueNode**, %struct.queueNode*** %headPtr.addr, align 8
  store %struct.queueNode* %7, %struct.queueNode** %8, align 8
  %9 = load %struct.queueNode**, %struct.queueNode*** %headPtr.addr, align 8
  %10 = load %struct.queueNode*, %struct.queueNode** %9, align 8
  %cmp = icmp eq %struct.queueNode* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load %struct.queueNode**, %struct.queueNode*** %tailPtr.addr, align 8
  store %struct.queueNode* null, %struct.queueNode** %11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.queueNode*, %struct.queueNode** %tempPtr, align 8
  %13 = bitcast %struct.queueNode* %12 to i8*
  call void @free(i8* %13) #3
  %14 = load i32, i32* %value, align 4
  ret i32 %14
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printQueue(%struct.queueNode* %currentPtr) #0 {
entry:
  %currentPtr.addr = alloca %struct.queueNode*, align 8
  store %struct.queueNode* %currentPtr, %struct.queueNode** %currentPtr.addr, align 8
  %0 = load %struct.queueNode*, %struct.queueNode** %currentPtr.addr, align 8
  %cmp = icmp eq %struct.queueNode* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %1 = load %struct.queueNode*, %struct.queueNode** %currentPtr.addr, align 8
  %cmp2 = icmp ne %struct.queueNode* %1, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.queueNode*, %struct.queueNode** %currentPtr.addr, align 8
  %customer = getelementptr inbounds %struct.queueNode, %struct.queueNode* %2, i32 0, i32 0
  %3 = load i32, i32* %customer, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %3)
  %4 = load %struct.queueNode*, %struct.queueNode** %currentPtr.addr, align 8
  %nextPtr = getelementptr inbounds %struct.queueNode, %struct.queueNode* %4, i32 0, i32 1
  %5 = load %struct.queueNode*, %struct.queueNode** %nextPtr, align 8
  store %struct.queueNode* %5, %struct.queueNode** %currentPtr.addr, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
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
