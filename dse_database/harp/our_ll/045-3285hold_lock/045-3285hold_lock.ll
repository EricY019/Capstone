; ModuleID = 'code/045-3285hold_lock.c'
source_filename = "code/045-3285hold_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_rwlock_t = type { %struct.anon }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%union.pthread_rwlockattr_t = type { i64 }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"i:\00", align 1
@optarg = external dso_local global i8*, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Usage: %s [-i <interval time in ms>].\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Locking mutex ...\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Locking rwlock exclusively ...\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Locking rwlock shared ...\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"ms >= 0\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"code/045-3285hold_lock.c\00", align 1
@__PRETTY_FUNCTION__.delay_ms = private unnamed_addr constant [25 x i8] c"void delay_ms(const int)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %interval = alloca i32, align 4
  %optchar = alloca i32, align 4
  %mutex = alloca %union.pthread_mutex_t, align 8
  %mutexattr = alloca %union.pthread_mutexattr_t, align 4
  %rwlock = alloca %union.pthread_rwlock_t, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %interval, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @getopt(i32 %0, i8** %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #5
  store i32 %call, i32* %optchar, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %optchar, align 4
  switch i32 %2, label %sw.default [
    i32 105, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body
  %3 = load i8*, i8** @optarg, align 8
  %call1 = call i32 @atoi(i8* %3) #6
  store i32 %call1, i32* %interval, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 0
  %6 = load i8*, i8** %arrayidx, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %6)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %call4 = call i32 @pthread_mutexattr_init(%union.pthread_mutexattr_t* %mutexattr) #5
  %call5 = call i32 @pthread_mutexattr_settype(%union.pthread_mutexattr_t* %mutexattr, i32 1) #5
  %call6 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* %mutex, %union.pthread_mutexattr_t* %mutexattr) #5
  %call7 = call i32 @pthread_mutexattr_destroy(%union.pthread_mutexattr_t* %mutexattr) #5
  %call8 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %mutex) #5
  %8 = load i32, i32* %interval, align 4
  call void @delay_ms(i32 %8)
  %call9 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* %mutex) #5
  %call10 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %mutex) #5
  %call11 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %mutex) #5
  %call12 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* %mutex) #5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %call14 = call i32 @pthread_rwlock_init(%union.pthread_rwlock_t* %rwlock, %union.pthread_rwlockattr_t* null) #5
  %call15 = call i32 @pthread_rwlock_wrlock(%union.pthread_rwlock_t* %rwlock) #5
  %10 = load i32, i32* %interval, align 4
  call void @delay_ms(i32 %10)
  %call16 = call i32 @pthread_rwlock_unlock(%union.pthread_rwlock_t* %rwlock) #5
  %call17 = call i32 @pthread_rwlock_destroy(%union.pthread_rwlock_t* %rwlock) #5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %call19 = call i32 @pthread_rwlock_init(%union.pthread_rwlock_t* %rwlock, %union.pthread_rwlockattr_t* null) #5
  %call20 = call i32 @pthread_rwlock_rdlock(%union.pthread_rwlock_t* %rwlock) #5
  %12 = load i32, i32* %interval, align 4
  call void @delay_ms(i32 %12)
  %call21 = call i32 @pthread_rwlock_rdlock(%union.pthread_rwlock_t* %rwlock) #5
  %call22 = call i32 @pthread_rwlock_unlock(%union.pthread_rwlock_t* %rwlock) #5
  %call23 = call i32 @pthread_rwlock_unlock(%union.pthread_rwlock_t* %rwlock) #5
  %call24 = call i32 @pthread_rwlock_destroy(%union.pthread_rwlock_t* %rwlock) #5
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @getopt(i32, i8**, i8*) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutexattr_init(%union.pthread_mutexattr_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutexattr_settype(%union.pthread_mutexattr_t*, i32) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutexattr_destroy(%union.pthread_mutexattr_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delay_ms(i32 %ms) #0 {
entry:
  %ms.addr = alloca i32, align 4
  %ts = alloca %struct.timespec, align 8
  store i32 %ms, i32* %ms.addr, align 4
  %0 = load i32, i32* %ms.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.delay_ms, i64 0, i64 0)) #7
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %2 = load i32, i32* %ms.addr, align 4
  %div = sdiv i32 %2, 1000
  %conv = sext i32 %div to i64
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %ts, i32 0, i32 0
  store i64 %conv, i64* %tv_sec, align 8
  %3 = load i32, i32* %ms.addr, align 4
  %rem = srem i32 %3, 1000
  %mul = mul nsw i32 %rem, 1000
  %mul1 = mul nsw i32 %mul, 1000
  %conv2 = sext i32 %mul1 to i64
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %ts, i32 0, i32 1
  store i64 %conv2, i64* %tv_nsec, align 8
  %call = call i32 @nanosleep(%struct.timespec* %ts, %struct.timespec* null)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_rwlock_init(%union.pthread_rwlock_t*, %union.pthread_rwlockattr_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_rwlock_wrlock(%union.pthread_rwlock_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_rwlock_unlock(%union.pthread_rwlock_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_rwlock_destroy(%union.pthread_rwlock_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_rwlock_rdlock(%union.pthread_rwlock_t*) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #4

declare dso_local i32 @nanosleep(%struct.timespec*, %struct.timespec*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
