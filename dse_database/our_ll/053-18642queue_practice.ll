; ModuleID = 'code/053-18642queue_practice.c'
source_filename = "code/053-18642queue_practice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@head = dso_local global i32 0, align 4
@tail = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"[Error] Cannot enqueue %d: queue is full!\0A\00", align 1
@q = dso_local global [5 x i32] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [41 x i8] c"[Error] Cannot dequeue: queue is empty!\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"[Error] Cannot print queue: queue is empty!\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_queue() #0 {
entry:
  store i32 -1, i32* @head, align 4
  store i32 -1, i32* @tail, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_empty() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* @head, align 4
  %1 = load i32, i32* @tail, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_full() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* @tail, align 4
  %1 = load i32, i32* @head, align 4
  %add = add nsw i32 %1, 5
  %cmp = icmp sge i32 %0, %add
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enqueue(i32 %val) #0 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  %call = call i32 @is_full()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i32, i32* %val.addr, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %0)
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i32, i32* @tail, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @tail, align 4
  %2 = load i32, i32* %val.addr, align 4
  %3 = load i32, i32* @tail, align 4
  %rem = srem i32 %3, 5
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* @q, i64 0, i64 %idxprom
  store i32 %2, i32* %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dequeue() #0 {
entry:
  %call = call i32 @is_empty()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %0 = load i32, i32* @head, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @head, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_queue() #0 {
entry:
  %i = alloca i32, align 4
  %call = call i32 @is_empty()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %0 = load i32, i32* @head, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @tail, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %rem = srem i32 %3, 5
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* @q, i64 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  call void @init_queue()
  call void @print_queue()
  call void @enqueue(i32 1)
  call void @enqueue(i32 2)
  call void @print_queue()
  call void @enqueue(i32 3)
  call void @enqueue(i32 4)
  call void @enqueue(i32 5)
  call void @enqueue(i32 6)
  call void @print_queue()
  call void @dequeue()
  call void @dequeue()
  call void @print_queue()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
