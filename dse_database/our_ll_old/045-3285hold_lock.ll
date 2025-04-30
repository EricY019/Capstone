; ModuleID = './code/045-3285hold_lock.c'
source_filename = "./code/045-3285hold_lock.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%struct._opaque_pthread_mutexattr_t = type { i64, [8 x i8] }
%struct._opaque_pthread_rwlock_t = type { i64, [192 x i8] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"i:\00", align 1
@optarg = external global ptr, align 8
@__stderrp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Usage: %s [-i <interval time in ms>].\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Locking mutex ...\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Locking rwlock exclusively ...\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Locking rwlock shared ...\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1
@__func__.delay_ms = private unnamed_addr constant [9 x i8] c"delay_ms\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"045-3285hold_lock.c\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ms >= 0\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %interval = alloca i32, align 4
  %optchar = alloca i32, align 4
  %mutex = alloca %struct._opaque_pthread_mutex_t, align 8
  %mutexattr = alloca %struct._opaque_pthread_mutexattr_t, align 8
  %rwlock = alloca %struct._opaque_pthread_rwlock_t, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %interval, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %call = call i32 @"\01_getopt"(i32 noundef %0, ptr noundef %1, ptr noundef @.str)
  store i32 %call, ptr %optchar, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %optchar, align 4
  switch i32 %2, label %sw.default [
    i32 105, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body
  %3 = load ptr, ptr @optarg, align 8
  %call1 = call i32 @atoi(ptr noundef %3)
  store i32 %call1, ptr %interval, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %4 = load ptr, ptr @__stderrp, align 8
  %5 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.1, ptr noundef %6) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.2) #4
  %call4 = call i32 @pthread_mutexattr_init(ptr noundef %mutexattr)
  %call5 = call i32 @pthread_mutexattr_settype(ptr noundef %mutexattr, i32 noundef 2)
  %call6 = call i32 @pthread_mutex_init(ptr noundef %mutex, ptr noundef %mutexattr)
  %call7 = call i32 @"\01_pthread_mutexattr_destroy"(ptr noundef %mutexattr)
  %call8 = call i32 @pthread_mutex_lock(ptr noundef %mutex)
  %8 = load i32, ptr %interval, align 4
  call void @delay_ms(i32 noundef %8)
  %call9 = call i32 @pthread_mutex_lock(ptr noundef %mutex)
  %call10 = call i32 @pthread_mutex_unlock(ptr noundef %mutex)
  %call11 = call i32 @pthread_mutex_unlock(ptr noundef %mutex)
  %call12 = call i32 @pthread_mutex_destroy(ptr noundef %mutex)
  %9 = load ptr, ptr @__stderrp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.3) #4
  %call14 = call i32 @"\01_pthread_rwlock_init"(ptr noundef %rwlock, ptr noundef null)
  %call15 = call i32 @"\01_pthread_rwlock_wrlock"(ptr noundef %rwlock)
  %10 = load i32, ptr %interval, align 4
  call void @delay_ms(i32 noundef %10)
  %call16 = call i32 @"\01_pthread_rwlock_unlock"(ptr noundef %rwlock)
  %call17 = call i32 @"\01_pthread_rwlock_destroy"(ptr noundef %rwlock)
  %11 = load ptr, ptr @__stderrp, align 8
  %call18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.4) #4
  %call19 = call i32 @"\01_pthread_rwlock_init"(ptr noundef %rwlock, ptr noundef null)
  %call20 = call i32 @"\01_pthread_rwlock_rdlock"(ptr noundef %rwlock)
  %12 = load i32, ptr %interval, align 4
  call void @delay_ms(i32 noundef %12)
  %call21 = call i32 @"\01_pthread_rwlock_rdlock"(ptr noundef %rwlock)
  %call22 = call i32 @"\01_pthread_rwlock_unlock"(ptr noundef %rwlock)
  %call23 = call i32 @"\01_pthread_rwlock_unlock"(ptr noundef %rwlock)
  %call24 = call i32 @"\01_pthread_rwlock_destroy"(ptr noundef %rwlock)
  %13 = load ptr, ptr @__stderrp, align 8
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.5) #4
  ret i32 0
}

declare i32 @"\01_getopt"(i32 noundef, ptr noundef, ptr noundef) #1

declare i32 @atoi(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @pthread_mutexattr_init(ptr noundef) #1

declare i32 @pthread_mutexattr_settype(ptr noundef, i32 noundef) #1

declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_mutexattr_destroy"(ptr noundef) #1

declare i32 @pthread_mutex_lock(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @delay_ms(i32 noundef %ms) #0 {
entry:
  %ms.addr = alloca i32, align 4
  %ts = alloca %struct.timespec, align 8
  store i32 %ms, ptr %ms.addr, align 4
  %0 = load i32, ptr %ms.addr, align 4
  %cmp = icmp sge i32 %0, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.delay_ms, ptr noundef @.str.6, i32 noundef 18, ptr noundef @.str.7) #5
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %2 = load i32, ptr %ms.addr, align 4
  %div = sdiv i32 %2, 1000
  %conv1 = sext i32 %div to i64
  %tv_sec = getelementptr inbounds %struct.timespec, ptr %ts, i32 0, i32 0
  store i64 %conv1, ptr %tv_sec, align 8
  %3 = load i32, ptr %ms.addr, align 4
  %rem = srem i32 %3, 1000
  %mul = mul nsw i32 %rem, 1000
  %mul2 = mul nsw i32 %mul, 1000
  %conv3 = sext i32 %mul2 to i64
  %tv_nsec = getelementptr inbounds %struct.timespec, ptr %ts, i32 0, i32 1
  store i64 %conv3, ptr %tv_nsec, align 8
  %call = call i32 @"\01_nanosleep"(ptr noundef %ts, ptr noundef null)
  ret void
}

declare i32 @pthread_mutex_unlock(ptr noundef) #1

declare i32 @pthread_mutex_destroy(ptr noundef) #1

declare i32 @"\01_pthread_rwlock_init"(ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_rwlock_wrlock"(ptr noundef) #1

declare i32 @"\01_pthread_rwlock_unlock"(ptr noundef) #1

declare i32 @"\01_pthread_rwlock_destroy"(ptr noundef) #1

declare i32 @"\01_pthread_rwlock_rdlock"(ptr noundef) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

declare i32 @"\01_nanosleep"(ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind }
attributes #5 = { cold noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
