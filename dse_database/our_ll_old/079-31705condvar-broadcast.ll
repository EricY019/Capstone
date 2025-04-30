; ModuleID = './code/079-31705condvar-broadcast.c'
source_filename = "./code/079-31705condvar-broadcast.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%struct._opaque_pthread_cond_t = type { i64, [40 x i8] }

@avail = global i32 0, align 4
@consumed = global i32 0, align 4
@mutex = global %struct._opaque_pthread_mutex_t zeroinitializer, align 8
@.str = private unnamed_addr constant [36 x i8] c"PRODUCED: thread %d pid: %d val %d\0A\00", align 1
@cond = global %struct._opaque_pthread_cond_t zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"CONSUMED: thread %d pid %d val %d consumed %d\0A\00", align 1
@__stderrp = external global ptr, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"condvar_broadcast: SUCCEEDED\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"condvar_broadcast: FAILED, consumed %d, avail %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @pause_thread(i32 noundef %pause_count) #0 {
entry:
  %pause_count.addr = alloca i32, align 4
  %total = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %pause_count, ptr %pause_count.addr, align 4
  store i32 0, ptr %total, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %pause_count.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %total, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %total, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc1 = add nsw i32 %3, 1
  store i32 %inc1, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %total, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @produce(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %id = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  %0 = load ptr, ptr %arg.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %id, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @pause_thread(i32 noundef 5000000)
  %call1 = call i32 @pthread_mutex_lock(ptr noundef @mutex)
  %3 = load i32, ptr @avail, align 4
  %add = add nsw i32 %3, 5
  store i32 %add, ptr @avail, align 4
  %4 = load i32, ptr %id, align 4
  %call2 = call i32 @getpid()
  %5 = load i32, ptr @avail, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4, i32 noundef %call2, i32 noundef %5)
  %call4 = call i32 @pthread_mutex_unlock(ptr noundef @mutex)
  %call5 = call i32 @pthread_cond_broadcast(ptr noundef @cond)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret ptr null
}

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @getpid() #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

declare i32 @pthread_cond_broadcast(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @consume(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %id = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  %0 = load ptr, ptr %arg.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %id, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @pause_thread(i32 noundef 1000)
  %call1 = call i32 @pthread_mutex_lock(ptr noundef @mutex)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %3 = load i32, ptr @avail, align 4
  %cmp2 = icmp sle i32 %3, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call i32 @"\01_pthread_cond_wait"(ptr noundef @cond, ptr noundef @mutex)
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %4 = load i32, ptr @avail, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr @avail, align 4
  %5 = load i32, ptr @consumed, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr @consumed, align 4
  %6 = load i32, ptr %id, align 4
  %call4 = call i32 @getpid()
  %7 = load i32, ptr @avail, align 4
  %8 = load i32, ptr @consumed, align 4
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %6, i32 noundef %call4, i32 noundef %7, i32 noundef %8)
  %call6 = call i32 @pthread_mutex_unlock(ptr noundef @mutex)
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %9 = load i32, ptr %i, align 4
  %inc7 = add nsw i32 %9, 1
  store i32 %inc7, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret ptr null
}

declare i32 @"\01_pthread_cond_wait"(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %producers = alloca [1 x ptr], align 8
  %producer_ids = alloca [1 x i32], align 4
  %i = alloca i32, align 4
  %consumers = alloca [5 x ptr], align 8
  %consumer_ids = alloca [5 x i32], align 4
  %i7 = alloca i32, align 4
  %i21 = alloca i32, align 4
  %i31 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @pthread_mutex_init(ptr noundef @mutex, ptr noundef null)
  %call1 = call i32 @"\01_pthread_cond_init"(ptr noundef @cond, ptr noundef null)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1 x i32], ptr %producer_ids, i64 0, i64 %idxprom
  store i32 %1, ptr %arrayidx, align 4
  %3 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [1 x ptr], ptr %producers, i64 0, i64 %idxprom2
  %4 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [1 x i32], ptr %producer_ids, i64 0, i64 %idxprom4
  %call6 = call i32 @pthread_create(ptr noundef %arrayidx3, ptr noundef null, ptr noundef @produce, ptr noundef %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i7, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc18, %for.end
  %6 = load i32, ptr %i7, align 4
  %cmp9 = icmp slt i32 %6, 5
  br i1 %cmp9, label %for.body10, label %for.end20

for.body10:                                       ; preds = %for.cond8
  %7 = load i32, ptr %i7, align 4
  %add = add nsw i32 %7, 1
  %8 = load i32, ptr %i7, align 4
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [5 x i32], ptr %consumer_ids, i64 0, i64 %idxprom11
  store i32 %add, ptr %arrayidx12, align 4
  %9 = load i32, ptr %i7, align 4
  %idxprom13 = sext i32 %9 to i64
  %arrayidx14 = getelementptr inbounds [5 x ptr], ptr %consumers, i64 0, i64 %idxprom13
  %10 = load i32, ptr %i7, align 4
  %idxprom15 = sext i32 %10 to i64
  %arrayidx16 = getelementptr inbounds [5 x i32], ptr %consumer_ids, i64 0, i64 %idxprom15
  %call17 = call i32 @pthread_create(ptr noundef %arrayidx14, ptr noundef null, ptr noundef @consume, ptr noundef %arrayidx16)
  br label %for.inc18

for.inc18:                                        ; preds = %for.body10
  %11 = load i32, ptr %i7, align 4
  %inc19 = add nsw i32 %11, 1
  store i32 %inc19, ptr %i7, align 4
  br label %for.cond8, !llvm.loop !11

for.end20:                                        ; preds = %for.cond8
  store i32 0, ptr %i21, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc28, %for.end20
  %12 = load i32, ptr %i21, align 4
  %cmp23 = icmp slt i32 %12, 1
  br i1 %cmp23, label %for.body24, label %for.end30

for.body24:                                       ; preds = %for.cond22
  %13 = load i32, ptr %i21, align 4
  %idxprom25 = sext i32 %13 to i64
  %arrayidx26 = getelementptr inbounds [1 x ptr], ptr %producers, i64 0, i64 %idxprom25
  %14 = load ptr, ptr %arrayidx26, align 8
  %call27 = call i32 @"\01_pthread_join"(ptr noundef %14, ptr noundef null)
  br label %for.inc28

for.inc28:                                        ; preds = %for.body24
  %15 = load i32, ptr %i21, align 4
  %inc29 = add nsw i32 %15, 1
  store i32 %inc29, ptr %i21, align 4
  br label %for.cond22, !llvm.loop !12

for.end30:                                        ; preds = %for.cond22
  store i32 0, ptr %i31, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc38, %for.end30
  %16 = load i32, ptr %i31, align 4
  %cmp33 = icmp slt i32 %16, 5
  br i1 %cmp33, label %for.body34, label %for.end40

for.body34:                                       ; preds = %for.cond32
  %17 = load i32, ptr %i31, align 4
  %idxprom35 = sext i32 %17 to i64
  %arrayidx36 = getelementptr inbounds [5 x ptr], ptr %consumers, i64 0, i64 %idxprom35
  %18 = load ptr, ptr %arrayidx36, align 8
  %call37 = call i32 @"\01_pthread_join"(ptr noundef %18, ptr noundef null)
  br label %for.inc38

for.inc38:                                        ; preds = %for.body34
  %19 = load i32, ptr %i31, align 4
  %inc39 = add nsw i32 %19, 1
  store i32 %inc39, ptr %i31, align 4
  br label %for.cond32, !llvm.loop !13

for.end40:                                        ; preds = %for.cond32
  %20 = load i32, ptr @consumed, align 4
  %cmp41 = icmp eq i32 %20, 250
  br i1 %cmp41, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end40
  %21 = load i32, ptr @avail, align 4
  %cmp42 = icmp eq i32 %21, 0
  br i1 %cmp42, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %22 = load ptr, ptr @__stderrp, align 8
  %call43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.2) #3
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.end40
  %23 = load ptr, ptr @__stderrp, align 8
  %24 = load i32, ptr @consumed, align 4
  %25 = load i32, ptr @avail, align 4
  %call44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.3, i32 noundef %24, i32 noundef %25) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_cond_init"(ptr noundef, ptr noundef) #1

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind }

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
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
