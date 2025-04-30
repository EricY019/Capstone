; ModuleID = './code/053-18642queue_practice.c'
source_filename = "./code/053-18642queue_practice.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@head = global i32 0, align 4
@tail = global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"[Error] Cannot enqueue %d: queue is full!\0A\00", align 1
@q = global [5 x i32] zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"[Error] Cannot dequeue: queue is empty!\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"[Error] Cannot print queue: queue is empty!\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @init_queue() #0 {
entry:
  store i32 -1, ptr @head, align 4
  store i32 -1, ptr @tail, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @is_empty() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, ptr @head, align 4
  %1 = load i32, ptr @tail, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @is_full() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, ptr @tail, align 4
  %1 = load i32, ptr @head, align 4
  %add = add nsw i32 %1, 5
  %cmp = icmp sge i32 %0, %add
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, ptr %retval, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @enqueue(i32 noundef %val) #0 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  %call = call i32 @is_full()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %val.addr, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %0)
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i32, ptr @tail, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @tail, align 4
  %2 = load i32, ptr %val.addr, align 4
  %3 = load i32, ptr @tail, align 4
  %rem = srem i32 %3, 5
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds [5 x i32], ptr @q, i64 0, i64 %idxprom
  store i32 %2, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @dequeue() #0 {
entry:
  %call = call i32 @is_empty()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end

if.else:                                          ; preds = %entry
  %0 = load i32, ptr @head, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @head, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_queue() #0 {
entry:
  %i = alloca i32, align 4
  %call = call i32 @is_empty()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end

if.else:                                          ; preds = %entry
  %0 = load i32, ptr @head, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr @tail, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %rem = srem i32 %3, 5
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds [5 x i32], ptr @q, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  call void @init_queue()
  call void @print_queue()
  call void @enqueue(i32 noundef 1)
  call void @enqueue(i32 noundef 2)
  call void @print_queue()
  call void @enqueue(i32 noundef 3)
  call void @enqueue(i32 noundef 4)
  call void @enqueue(i32 noundef 5)
  call void @enqueue(i32 noundef 6)
  call void @print_queue()
  call void @dequeue()
  call void @dequeue()
  call void @print_queue()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
