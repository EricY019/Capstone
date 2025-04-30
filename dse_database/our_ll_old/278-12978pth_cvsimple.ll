; ModuleID = './code/278-12978pth_cvsimple.c'
source_filename = "./code/278-12978pth_cvsimple.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%struct._opaque_pthread_cond_t = type { i64, [40 x i8] }

@condvar_was_hit = global i32 0, align 4
@count = global i32 0, align 4
@thread_ids = global [3 x i32] [i32 0, i32 1, i32 2], align 4
@count_lock = global %struct._opaque_pthread_mutex_t { i64 850045863, [56 x i8] zeroinitializer }, align 8
@count_hit_threshold = global %struct._opaque_pthread_cond_t { i64 1018212795, [40 x i8] zeroinitializer }, align 8
@.str = private unnamed_addr constant [44 x i8] c"inc_counter(): count = %d, unlocking mutex\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"hit threshold!\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"condvar was hit!\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"condvar was multi-hit...\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"condvar was missed...\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @inc_count(ptr noundef %null) #0 {
entry:
  %null.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %null, ptr %null.addr, align 8
  store i32 0, ptr %i, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @pthread_mutex_lock(ptr noundef @count_lock)
  %1 = load i32, ptr @count, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @count, align 4
  %2 = load i32, ptr @count, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  %3 = load i32, ptr @count, align 4
  %cmp2 = icmp eq i32 %3, 12
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %call4 = call i32 @pthread_cond_signal(ptr noundef @count_hit_threshold)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %call5 = call i32 @pthread_mutex_unlock(ptr noundef @count_lock)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %inc6 = add nsw i32 %4, 1
  store i32 %inc6, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret ptr null
}

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @pthread_cond_signal(ptr noundef) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @watch_count(ptr noundef %null) #0 {
entry:
  %null.addr = alloca ptr, align 8
  store ptr %null, ptr %null.addr, align 8
  %call = call i32 @pthread_mutex_lock(ptr noundef @count_lock)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr @count, align 4
  %cmp = icmp slt i32 %0, 12
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i32 @"\01_pthread_cond_wait"(ptr noundef @count_hit_threshold, ptr noundef @count_lock)
  store i32 1, ptr @condvar_was_hit, align 4
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %call2 = call i32 @pthread_mutex_unlock(ptr noundef @count_lock)
  ret ptr null
}

declare i32 @"\01_pthread_cond_wait"(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %threads = alloca [3 x ptr], align 8
  store i32 0, ptr %retval, align 4
  %arrayidx = getelementptr inbounds [3 x ptr], ptr %threads, i64 0, i64 0
  %call = call i32 @pthread_create(ptr noundef %arrayidx, ptr noundef null, ptr noundef @watch_count, ptr noundef null)
  %call1 = call i32 @"\01_sleep"(i32 noundef 1)
  %arrayidx2 = getelementptr inbounds [3 x ptr], ptr %threads, i64 0, i64 1
  %call3 = call i32 @pthread_create(ptr noundef %arrayidx2, ptr noundef null, ptr noundef @inc_count, ptr noundef null)
  %arrayidx4 = getelementptr inbounds [3 x ptr], ptr %threads, i64 0, i64 2
  %call5 = call i32 @pthread_create(ptr noundef %arrayidx4, ptr noundef null, ptr noundef @inc_count, ptr noundef null)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx6 = getelementptr inbounds [3 x ptr], ptr %threads, i64 0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx6, align 8
  %call7 = call i32 @"\01_pthread_join"(ptr noundef %2, ptr noundef null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr @condvar_was_hit, align 4
  %cmp8 = icmp eq i32 %4, 1
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end15

if.else:                                          ; preds = %for.end
  %5 = load i32, ptr @condvar_was_hit, align 4
  %cmp10 = icmp sgt i32 %5, 1
  br i1 %cmp10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end

if.else13:                                        ; preds = %if.else
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then11
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then
  ret i32 0
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @"\01_sleep"(i32 noundef) #1

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

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
