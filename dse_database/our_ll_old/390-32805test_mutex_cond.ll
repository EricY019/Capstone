; ModuleID = './code/390-32805test_mutex_cond.c'
source_filename = "./code/390-32805test_mutex_cond.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%struct._opaque_pthread_cond_t = type { i64, [40 x i8] }

@mutex = global %struct._opaque_pthread_mutex_t { i64 850045863, [56 x i8] zeroinitializer }, align 8
@cond = global %struct._opaque_pthread_cond_t { i64 1018212795, [40 x i8] zeroinitializer }, align 8
@count = global i32 1, align 4
@.str = private unnamed_addr constant [23 x i8] c"This is threadfun1 %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"This is threadfun2 %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @fun1(ptr noundef %arg) #0 {
entry:
  %retval = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  %call = call i32 @pthread_mutex_lock(ptr noundef @mutex)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr @count, align 4
  %cmp = icmp sle i32 %0, 10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr @count, align 4
  %rem = srem i32 %1, 2
  %cmp1 = icmp eq i32 %rem, 1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %2 = load i32, ptr @count, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  %3 = load i32, ptr @count, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr @count, align 4
  %call3 = call i32 @pthread_cond_signal(ptr noundef @cond)
  br label %if.end

if.else:                                          ; preds = %while.body
  %call4 = call i32 @"\01_pthread_cond_wait"(ptr noundef @cond, ptr noundef @mutex)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call5 = call i32 @"\01_sleep"(i32 noundef 1)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %call6 = call i32 @pthread_mutex_unlock(ptr noundef @mutex)
  %4 = load ptr, ptr %retval, align 8
  ret ptr %4
}

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @pthread_cond_signal(ptr noundef) #1

declare i32 @"\01_pthread_cond_wait"(ptr noundef, ptr noundef) #1

declare i32 @"\01_sleep"(i32 noundef) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @fun2(ptr noundef %arg) #0 {
entry:
  %retval = alloca ptr, align 8
  %arg.addr = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  %call = call i32 @pthread_mutex_lock(ptr noundef @mutex)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr @count, align 4
  %cmp = icmp sle i32 %0, 10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr @count, align 4
  %rem = srem i32 %1, 2
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %2 = load i32, ptr @count, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %2)
  %3 = load i32, ptr @count, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr @count, align 4
  %call3 = call i32 @pthread_cond_signal(ptr noundef @cond)
  br label %if.end

if.else:                                          ; preds = %while.body
  %call4 = call i32 @"\01_pthread_cond_wait"(ptr noundef @cond, ptr noundef @mutex)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %call5 = call i32 @pthread_mutex_unlock(ptr noundef @mutex)
  %4 = load ptr, ptr %retval, align 8
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %tid = alloca [2 x ptr], align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %tid, i64 0, i64 0
  %call = call i32 @pthread_create(ptr noundef %arrayidx, ptr noundef null, ptr noundef @fun1, ptr noundef null)
  %arrayidx1 = getelementptr inbounds [2 x ptr], ptr %tid, i64 0, i64 1
  %call2 = call i32 @pthread_create(ptr noundef %arrayidx1, ptr noundef null, ptr noundef @fun2, ptr noundef null)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx3 = getelementptr inbounds [2 x ptr], ptr %tid, i64 0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @"\01_pthread_join"(ptr noundef %2, ptr noundef null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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
