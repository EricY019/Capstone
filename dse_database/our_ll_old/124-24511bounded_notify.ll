; ModuleID = './code/124-24511bounded_notify.c'
source_filename = "./code/124-24511bounded_notify.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%struct._opaque_pthread_cond_t = type { i64, [40 x i8] }

@duration = global i32 20, align 4
@length = global i32 0, align 4
@mutex = global %struct._opaque_pthread_mutex_t zeroinitializer, align 8
@.str = private unnamed_addr constant [25 x i8] c"Producer %s buffer full\0A\00", align 1
@cond = global %struct._opaque_pthread_cond_t zeroinitializer, align 8
@buffer = global [10 x i32] zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Producer %s length %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Consumer %s buffer empty\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Consumer %s value %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Consumer %s buffer no longer full\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"2\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @producer(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %str = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  %0 = load ptr, ptr %arg.addr, align 8
  store ptr %0, ptr %str, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr @duration, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @pthread_mutex_lock(ptr noundef @mutex)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %3 = load i32, ptr @length, align 4
  %cmp1 = icmp eq i32 %3, 10
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %str, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %4)
  %call3 = call i32 @"\01_pthread_cond_wait"(ptr noundef @cond, ptr noundef @mutex)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr @length, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr @buffer, i64 0, i64 %idxprom
  store i32 %5, ptr %arrayidx, align 4
  %7 = load i32, ptr @length, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr @length, align 4
  %8 = load ptr, ptr %str, align 8
  %9 = load i32, ptr @length, align 4
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %8, i32 noundef %9)
  %call5 = call i32 @pthread_cond_signal(ptr noundef @cond)
  %call6 = call i32 @pthread_mutex_unlock(ptr noundef @mutex)
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %10 = load i32, ptr %i, align 4
  %inc7 = add nsw i32 %10, 1
  store i32 %inc7, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret ptr null
}

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @"\01_pthread_cond_wait"(ptr noundef, ptr noundef) #1

declare i32 @pthread_cond_signal(ptr noundef) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @consumer(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %str = alloca ptr, align 8
  %i = alloca i32, align 4
  %temp = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  %0 = load ptr, ptr %arg.addr, align 8
  store ptr %0, ptr %str, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr @duration, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @pthread_mutex_lock(ptr noundef @mutex)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %3 = load i32, ptr @length, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %str, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %4)
  %call3 = call i32 @"\01_pthread_cond_wait"(ptr noundef @cond, ptr noundef @mutex)
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %5 = load i32, ptr @length, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, ptr @length, align 4
  %6 = load i32, ptr @length, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr @buffer, i64 0, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4
  store i32 %7, ptr %temp, align 4
  %8 = load ptr, ptr %str, align 8
  %9 = load i32, ptr %temp, align 4
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %8, i32 noundef %9)
  %10 = load i32, ptr @length, align 4
  %add = add nsw i32 %10, 1
  %cmp5 = icmp eq i32 %add, 10
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %11 = load ptr, ptr %str, align 8
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %11)
  %call7 = call i32 @pthread_cond_signal(ptr noundef @cond)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %call8 = call i32 @pthread_mutex_unlock(ptr noundef @mutex)
  %call9 = call i32 @"\01_usleep"(i32 noundef 3)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret ptr null
}

declare i32 @"\01_usleep"(i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %producer_thread = alloca ptr, align 8
  %producer_thread2 = alloca ptr, align 8
  %consumer_thread = alloca ptr, align 8
  %consumer_thread2 = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call i32 @pthread_mutex_init(ptr noundef @mutex, ptr noundef null)
  %call1 = call i32 @pthread_create(ptr noundef %producer_thread, ptr noundef null, ptr noundef @producer, ptr noundef @.str.5)
  %call2 = call i32 @pthread_create(ptr noundef %producer_thread2, ptr noundef null, ptr noundef @producer, ptr noundef @.str.6)
  %call3 = call i32 @pthread_create(ptr noundef %consumer_thread, ptr noundef null, ptr noundef @consumer, ptr noundef @.str.5)
  %call4 = call i32 @pthread_create(ptr noundef %consumer_thread2, ptr noundef null, ptr noundef @consumer, ptr noundef @.str.6)
  %0 = load ptr, ptr %producer_thread, align 8
  %call5 = call i32 @"\01_pthread_join"(ptr noundef %0, ptr noundef null)
  %1 = load ptr, ptr %producer_thread2, align 8
  %call6 = call i32 @"\01_pthread_join"(ptr noundef %1, ptr noundef null)
  %2 = load ptr, ptr %consumer_thread, align 8
  %call7 = call i32 @"\01_pthread_join"(ptr noundef %2, ptr noundef null)
  %3 = load ptr, ptr %consumer_thread2, align 8
  %call8 = call i32 @"\01_pthread_join"(ptr noundef %3, ptr noundef null)
  %call9 = call i32 @pthread_mutex_destroy(ptr noundef @mutex)
  ret i32 0
}

declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #1

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

declare i32 @pthread_mutex_destroy(ptr noundef) #1

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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
