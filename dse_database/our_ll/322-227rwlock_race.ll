; ModuleID = 'code/322-227rwlock_race.c'
source_filename = "code/322-227rwlock_race.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_rwlock_t = type { %struct.anon }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.pthread_rwlockattr_t = type { i64 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%struct.timespec = type { i64, i64 }

@s_rwlock = internal global %union.pthread_rwlock_t zeroinitializer, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [12 x i8] c"Result: %d\0A\00", align 1
@s_racy = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %thread1 = alloca i64, align 8
  %thread2 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 @pthread_rwlock_init(%union.pthread_rwlock_t* @s_rwlock, %union.pthread_rwlockattr_t* null) #3
  %call1 = call i32 @pthread_create(i64* %thread1, %union.pthread_attr_t* null, i8* (i8*)* @thread_func, i8* null) #3
  %call2 = call i32 @pthread_create(i64* %thread2, %union.pthread_attr_t* null, i8* (i8*)* @thread_func, i8* null) #3
  %0 = load i64, i64* %thread1, align 8
  %call3 = call i32 @pthread_join(i64 %0, i8** null)
  %1 = load i64, i64* %thread2, align 8
  %call4 = call i32 @pthread_join(i64 %1, i8** null)
  %call5 = call i32 @pthread_rwlock_destroy(%union.pthread_rwlock_t* @s_rwlock) #3
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i32, i32* @s_racy, align 4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %3)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_rwlock_init(%union.pthread_rwlock_t*, %union.pthread_rwlockattr_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @thread_func(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %call = call i32 @pthread_rwlock_rdlock(%union.pthread_rwlock_t* @s_rwlock) #3
  %0 = load i32, i32* @s_racy, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @s_racy, align 4
  %call1 = call i32 @pthread_rwlock_unlock(%union.pthread_rwlock_t* @s_rwlock) #3
  call void @sleep_ms(i32 100)
  ret i8* null
}

declare dso_local i32 @pthread_join(i64, i8**) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_rwlock_destroy(%union.pthread_rwlock_t*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_rwlock_rdlock(%union.pthread_rwlock_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_rwlock_unlock(%union.pthread_rwlock_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sleep_ms(i32 %ms) #0 {
entry:
  %ms.addr = alloca i32, align 4
  %delay = alloca %struct.timespec, align 8
  store i32 %ms, i32* %ms.addr, align 4
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %delay, i32 0, i32 0
  %0 = load i32, i32* %ms.addr, align 4
  %div = sdiv i32 %0, 1000
  %conv = sext i32 %div to i64
  store i64 %conv, i64* %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %delay, i32 0, i32 1
  %1 = load i32, i32* %ms.addr, align 4
  %rem = srem i32 %1, 1000
  %mul = mul nsw i32 %rem, 1000
  %mul1 = mul nsw i32 %mul, 1000
  %conv2 = sext i32 %mul1 to i64
  store i64 %conv2, i64* %tv_nsec, align 8
  %call = call i32 @nanosleep(%struct.timespec* %delay, %struct.timespec* null)
  ret void
}

declare dso_local i32 @nanosleep(%struct.timespec*, %struct.timespec*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
