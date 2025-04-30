; ModuleID = './code/117-4062thread_test.c'
source_filename = "./code/117-4062thread_test.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%struct._opaque_pthread_cond_t = type { i64, [40 x i8] }

@mymutex1 = global %struct._opaque_pthread_mutex_t { i64 850045863, [56 x i8] zeroinitializer }, align 8
@mymutex2 = global %struct._opaque_pthread_mutex_t { i64 850045863, [56 x i8] zeroinitializer }, align 8
@mycond = global %struct._opaque_pthread_cond_t { i64 1018212795, [40 x i8] zeroinitializer }, align 8
@a = global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"AAAAAAAAAAAAAAA begin mythread1.  %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"AAAAAAAAAAAAAA wait in mythread1.....\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"AAAAAAAAAAAAA end mythread1.  %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"begin mythread2.  %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"wait in mythread2.\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"end mythread2.  %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"begin main thread.  %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [80 x i8] c"\0A==============try to wake up mythread1 and mythread2 in main thread. a=%d  %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"error\0A\00", align 1
@.str.9 = private unnamed_addr constant [83 x i8] c"\0A===============try to wake up mythread1 and mythread2 in main thread.  a=%d   %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"end main thread.  %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @mythread1(ptr noundef %param) #0 {
entry:
  %param.addr = alloca ptr, align 8
  store ptr %param, ptr %param.addr, align 8
  %call = call ptr @pthread_self()
  %0 = ptrtoint ptr %call to i32
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %0)
  %call2 = call i32 @pthread_mutex_lock(ptr noundef @mymutex1)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, ptr @a, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %call4 = call i32 @"\01_pthread_cond_wait"(ptr noundef @mycond, ptr noundef @mymutex1)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %call5 = call i32 @pthread_mutex_unlock(ptr noundef @mymutex1)
  %call6 = call ptr @pthread_self()
  %2 = ptrtoint ptr %call6 to i32
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %2)
  ret ptr null
}

declare i32 @printf(ptr noundef, ...) #1

declare ptr @pthread_self() #1

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @"\01_pthread_cond_wait"(ptr noundef, ptr noundef) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @mythread2(ptr noundef %param) #0 {
entry:
  %param.addr = alloca ptr, align 8
  store ptr %param, ptr %param.addr, align 8
  %call = call ptr @pthread_self()
  %0 = ptrtoint ptr %call to i32
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %0)
  %call2 = call i32 @pthread_mutex_lock(ptr noundef @mymutex1)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, ptr @a, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %call4 = call i32 @"\01_pthread_cond_wait"(ptr noundef @mycond, ptr noundef @mymutex1)
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %call5 = call i32 @pthread_mutex_unlock(ptr noundef @mymutex1)
  %call6 = call ptr @pthread_self()
  %2 = ptrtoint ptr %call6 to i32
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %2)
  ret ptr null
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %tid1 = alloca ptr, align 8
  %tid2 = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call ptr @pthread_self()
  %0 = ptrtoint ptr %call to i32
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %0)
  %call2 = call i32 @pthread_create(ptr noundef %tid1, ptr noundef null, ptr noundef @mythread1, ptr noundef null)
  %call3 = call i32 @pthread_create(ptr noundef %tid2, ptr noundef null, ptr noundef @mythread2, ptr noundef null)
  %call4 = call i32 @"\01_sleep"(i32 noundef 2)
  store i32 2, ptr @a, align 4
  %call5 = call ptr @pthread_self()
  %1 = ptrtoint ptr %call5 to i32
  %2 = load i32, ptr @a, align 4
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef %1, i32 noundef %2)
  %call7 = call i32 @pthread_cond_broadcast(ptr noundef @mycond)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call9 = call i32 @"\01_sleep"(i32 noundef 5)
  store i32 1, ptr @a, align 4
  %call10 = call ptr @pthread_self()
  %3 = ptrtoint ptr %call10 to i32
  %4 = load i32, ptr @a, align 4
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %3, i32 noundef %4)
  %call12 = call i32 @pthread_cond_broadcast(ptr noundef @mycond)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end
  %5 = load ptr, ptr %tid1, align 8
  %call17 = call i32 @"\01_pthread_join"(ptr noundef %5, ptr noundef null)
  %6 = load ptr, ptr %tid2, align 8
  %call18 = call i32 @"\01_pthread_join"(ptr noundef %6, ptr noundef null)
  %call19 = call ptr @pthread_self()
  %7 = ptrtoint ptr %call19 to i32
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i32 noundef %7)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then14, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @"\01_sleep"(i32 noundef) #1

declare i32 @pthread_cond_broadcast(ptr noundef) #1

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
