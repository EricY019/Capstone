; ModuleID = './code/004-4020test.c'
source_filename = "./code/004-4020test.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%struct._buffer_list = type { ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@bufs1 = global ptr null, align 8
@buf_lock1 = global %struct._opaque_pthread_mutex_t zeroinitializer, align 8
@perf_ctr1 = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @makeData1(i64 noundef %s) #0 {
entry:
  %s.addr = alloca i64, align 8
  store i64 %s, ptr %s.addr, align 8
  %0 = load i64, ptr %s.addr, align 8
  %call = call ptr @malloc(i64 noundef %0) #3
  ret ptr %call
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @makeList1(i32 noundef %num) #0 {
entry:
  %num.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %result = alloca ptr, align 8
  %next = alloca ptr, align 8
  store i32 %num, ptr %num.addr, align 4
  store ptr null, ptr %result, align 8
  store ptr null, ptr %next, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %num.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %next, align 8
  %2 = load ptr, ptr %result, align 8
  %3 = load ptr, ptr %next, align 8
  %next1 = getelementptr inbounds %struct._buffer_list, ptr %3, i32 0, i32 1
  store ptr %2, ptr %next1, align 8
  %4 = load ptr, ptr %next, align 8
  store ptr %4, ptr %result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %6 = load ptr, ptr %result, align 8
  ret ptr %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @produce1() #0 {
entry:
  %i = alloca i32, align 4
  %result = alloca ptr, align 8
  %call = call ptr @malloc(i64 noundef 400) #3
  store ptr %call, ptr %result, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %2 = load ptr, ptr %result, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  store i32 %1, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %5 = load ptr, ptr %result, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @consume1(ptr noundef %data) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  %0 = load ptr, ptr %data.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, ptr %i, align 4
  %cmp1 = icmp slt i32 %1, 100
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %data.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @thread_producer1(ptr noundef %ignore) #0 {
entry:
  %ignore.addr = alloca ptr, align 8
  %px = alloca ptr, align 8
  %t = alloca ptr, align 8
  store ptr %ignore, ptr %ignore.addr, align 8
  %0 = load ptr, ptr @bufs1, align 8
  store ptr %0, ptr %px, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %px, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call i32 @pthread_mutex_lock(ptr noundef @buf_lock1)
  %call1 = call ptr @makeData1(i64 noundef 8)
  %2 = load ptr, ptr %px, align 8
  %data = getelementptr inbounds %struct._buffer_list, ptr %2, i32 0, i32 0
  store ptr %call1, ptr %data, align 8
  %3 = load i32, ptr @perf_ctr1, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr @perf_ctr1, align 4
  %call2 = call ptr @produce1()
  store ptr %call2, ptr %t, align 8
  %4 = load ptr, ptr %t, align 8
  %5 = load ptr, ptr %px, align 8
  %data3 = getelementptr inbounds %struct._buffer_list, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %data3, align 8
  store ptr %4, ptr %6, align 8
  %call4 = call i32 @pthread_mutex_unlock(ptr noundef @buf_lock1)
  %7 = load ptr, ptr %px, align 8
  %next = getelementptr inbounds %struct._buffer_list, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %next, align 8
  store ptr %8, ptr %px, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  ret ptr null
}

declare i32 @pthread_mutex_lock(ptr noundef) #2

declare i32 @pthread_mutex_unlock(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @thread_consumer1(ptr noundef %ignore) #0 {
entry:
  %ignore.addr = alloca ptr, align 8
  %cx = alloca ptr, align 8
  store ptr %ignore, ptr %ignore.addr, align 8
  store i32 0, ptr @perf_ctr1, align 4
  %0 = load ptr, ptr @bufs1, align 8
  store ptr %0, ptr %cx, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load ptr, ptr %cx, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call i32 @pthread_mutex_lock(ptr noundef @buf_lock1)
  %2 = load ptr, ptr %cx, align 8
  %data = getelementptr inbounds %struct._buffer_list, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %data, align 8
  %cmp1 = icmp ne ptr %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load ptr, ptr %cx, align 8
  %data2 = getelementptr inbounds %struct._buffer_list, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %data2, align 8
  %6 = load ptr, ptr %5, align 8
  call void @consume1(ptr noundef %6)
  %7 = load ptr, ptr %cx, align 8
  %data3 = getelementptr inbounds %struct._buffer_list, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %data3, align 8
  call void @free(ptr noundef %8)
  %9 = load ptr, ptr %cx, align 8
  %data4 = getelementptr inbounds %struct._buffer_list, ptr %9, i32 0, i32 0
  store ptr null, ptr %data4, align 8
  %10 = load ptr, ptr %cx, align 8
  %next = getelementptr inbounds %struct._buffer_list, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %next, align 8
  store ptr %11, ptr %cx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %call5 = call i32 @pthread_mutex_unlock(ptr noundef @buf_lock1)
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  ret ptr null
}

declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %thr0 = alloca ptr, align 8
  %thr1 = alloca ptr, align 8
  %thr2 = alloca ptr, align 8
  %thr3 = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call i32 @pthread_mutex_init(ptr noundef @buf_lock1, ptr noundef null)
  %call1 = call ptr @makeList1(i32 noundef 1000)
  store ptr %call1, ptr @bufs1, align 8
  %call2 = call i32 @pthread_create(ptr noundef %thr0, ptr noundef null, ptr noundef @thread_consumer1, ptr noundef null)
  %call3 = call i32 @pthread_create(ptr noundef %thr1, ptr noundef null, ptr noundef @thread_producer1, ptr noundef null)
  ret i32 0
}

declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #2

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
