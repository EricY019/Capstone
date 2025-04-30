; ModuleID = './code/392-8017e14-backoff-1.c'
source_filename = "./code/392-8017e14-backoff-1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }

@mutex = global [3 x %struct._opaque_pthread_mutex_t] [%struct._opaque_pthread_mutex_t { i64 850045863, [56 x i8] zeroinitializer }, %struct._opaque_pthread_mutex_t { i64 850045863, [56 x i8] zeroinitializer }, %struct._opaque_pthread_mutex_t { i64 850045863, [56 x i8] zeroinitializer }], align 8
@.str = private unnamed_addr constant [34 x i8] c"forward locker backing off at %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c" forward locker got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"lock forward got all locks, %d backoffs\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"backward locker backing off at %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c" backward locker got %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @lock_forward(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %iterate = alloca i32, align 4
  %backoffs = alloca i32, align 4
  %status = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  store i32 0, ptr %iterate, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %0 = load i32, ptr %iterate, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %backoffs, align 4
  %call = call i32 @pthread_mutex_lock(ptr noundef @mutex)
  store i32 %call, ptr %status, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc16, %for.body
  %1 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %1, 3
  br i1 %cmp2, label %for.body3, label %for.end18

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x %struct._opaque_pthread_mutex_t], ptr @mutex, i64 0, i64 %idxprom
  %call4 = call i32 @pthread_mutex_trylock(ptr noundef %arrayidx)
  store i32 %call4, ptr %status, align 4
  %3 = load i32, ptr %status, align 4
  %cmp5 = icmp eq i32 %3, 16
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  %4 = load i32, ptr %backoffs, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %backoffs, align 4
  %5 = load i32, ptr %i, align 4
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %5)
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %if.then
  %6 = load i32, ptr %i, align 4
  %cmp8 = icmp sge i32 %6, 0
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %7 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [3 x %struct._opaque_pthread_mutex_t], ptr @mutex, i64 0, i64 %idxprom10
  %call12 = call i32 @pthread_mutex_unlock(ptr noundef %arrayidx11)
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %8 = load i32, ptr %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond7, !llvm.loop !5

for.end:                                          ; preds = %for.cond7
  br label %if.end

if.else:                                          ; preds = %for.body3
  %9 = load i32, ptr %i, align 4
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %call14 = call i32 @rand()
  %rem = srem i32 %call14, 10
  %call15 = call i32 @"\01_usleep"(i32 noundef %rem)
  br label %for.inc16

for.inc16:                                        ; preds = %if.end
  %10 = load i32, ptr %i, align 4
  %inc17 = add nsw i32 %10, 1
  store i32 %inc17, ptr %i, align 4
  br label %for.cond1, !llvm.loop !7

for.end18:                                        ; preds = %for.cond1
  %11 = load i32, ptr %backoffs, align 4
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %11)
  %call20 = call i32 @pthread_mutex_unlock(ptr noundef getelementptr inbounds ([3 x %struct._opaque_pthread_mutex_t], ptr @mutex, i64 0, i64 2))
  %call21 = call i32 @pthread_mutex_unlock(ptr noundef getelementptr inbounds ([3 x %struct._opaque_pthread_mutex_t], ptr @mutex, i64 0, i64 1))
  %call22 = call i32 @pthread_mutex_unlock(ptr noundef @mutex)
  %call23 = call i32 @"\01_sleep"(i32 noundef 1)
  br label %for.inc24

for.inc24:                                        ; preds = %for.end18
  %12 = load i32, ptr %iterate, align 4
  %inc25 = add nsw i32 %12, 1
  store i32 %inc25, ptr %iterate, align 4
  br label %for.cond, !llvm.loop !8

for.end26:                                        ; preds = %for.cond
  ret ptr null
}

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @pthread_mutex_trylock(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

declare i32 @"\01_usleep"(i32 noundef) #1

declare i32 @rand() #1

declare i32 @"\01_sleep"(i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @lock_backward(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %iterate = alloca i32, align 4
  %backoffs = alloca i32, align 4
  %status = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  store i32 0, ptr %iterate, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %0 = load i32, ptr %iterate, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %backoffs, align 4
  %call = call i32 @pthread_mutex_lock(ptr noundef getelementptr inbounds ([3 x %struct._opaque_pthread_mutex_t], ptr @mutex, i64 0, i64 2))
  store i32 %call, ptr %status, align 4
  store i32 2, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc17, %for.body
  %1 = load i32, ptr %i, align 4
  %cmp2 = icmp sge i32 %1, 0
  br i1 %cmp2, label %for.body3, label %for.end18

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x %struct._opaque_pthread_mutex_t], ptr @mutex, i64 0, i64 %idxprom
  %call4 = call i32 @pthread_mutex_trylock(ptr noundef %arrayidx)
  store i32 %call4, ptr %status, align 4
  %3 = load i32, ptr %status, align 4
  %cmp5 = icmp eq i32 %3, 16
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  %4 = load i32, ptr %backoffs, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %backoffs, align 4
  %5 = load i32, ptr %i, align 4
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %5)
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %if.then
  %6 = load i32, ptr %i, align 4
  %cmp8 = icmp slt i32 %6, 3
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %7 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [3 x %struct._opaque_pthread_mutex_t], ptr @mutex, i64 0, i64 %idxprom10
  %call12 = call i32 @pthread_mutex_unlock(ptr noundef %arrayidx11)
  store i32 %call12, ptr %status, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %8 = load i32, ptr %i, align 4
  %inc13 = add nsw i32 %8, 1
  store i32 %inc13, ptr %i, align 4
  br label %for.cond7, !llvm.loop !9

for.end:                                          ; preds = %for.cond7
  br label %if.end

if.else:                                          ; preds = %for.body3
  %9 = load i32, ptr %i, align 4
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %call15 = call i32 @rand()
  %rem = srem i32 %call15, 10
  %call16 = call i32 @"\01_usleep"(i32 noundef %rem)
  br label %for.inc17

for.inc17:                                        ; preds = %if.end
  %10 = load i32, ptr %i, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond1, !llvm.loop !10

for.end18:                                        ; preds = %for.cond1
  %11 = load i32, ptr %backoffs, align 4
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %11)
  %call20 = call i32 @pthread_mutex_unlock(ptr noundef getelementptr inbounds ([3 x %struct._opaque_pthread_mutex_t], ptr @mutex, i64 0, i64 2))
  %call21 = call i32 @pthread_mutex_unlock(ptr noundef getelementptr inbounds ([3 x %struct._opaque_pthread_mutex_t], ptr @mutex, i64 0, i64 1))
  %call22 = call i32 @pthread_mutex_unlock(ptr noundef @mutex)
  %call23 = call i32 @"\01_sleep"(i32 noundef 1)
  br label %for.inc24

for.inc24:                                        ; preds = %for.end18
  %12 = load i32, ptr %iterate, align 4
  %inc25 = add nsw i32 %12, 1
  store i32 %inc25, ptr %iterate, align 4
  br label %for.cond, !llvm.loop !11

for.end26:                                        ; preds = %for.cond
  ret ptr null
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %forward = alloca ptr, align 8
  %backward = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call i32 @pthread_create(ptr noundef %forward, ptr noundef null, ptr noundef @lock_forward, ptr noundef null)
  %call1 = call i32 @pthread_create(ptr noundef %backward, ptr noundef null, ptr noundef @lock_backward, ptr noundef null)
  call void @pthread_exit(ptr noundef null) #3
  unreachable
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noreturn
declare void @pthread_exit(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { noreturn }

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
