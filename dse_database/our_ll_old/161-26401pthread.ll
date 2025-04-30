; ModuleID = './code/161-26401pthread.c'
source_filename = "./code/161-26401pthread.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%struct._opaque_pthread_cond_t = type { i64, [40 x i8] }

@mutex = global %struct._opaque_pthread_mutex_t { i64 850045863, [56 x i8] zeroinitializer }, align 8
@cond = global %struct._opaque_pthread_cond_t { i64 1018212795, [40 x i8] zeroinitializer }, align 8
@cntdwn = global i32 5, align 4
@.str = private unnamed_addr constant [12 x i8] c"thread: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"main: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @thread_a(ptr noundef %dummy) #0 {
entry:
  %dummy.addr = alloca ptr, align 8
  store ptr %dummy, ptr %dummy.addr, align 8
  %call = call i32 @pthread_mutex_lock(ptr noundef @mutex)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr @cntdwn, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i32 @"\01_pthread_cond_wait"(ptr noundef @cond, ptr noundef @mutex)
  %1 = load i32, ptr @cntdwn, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %1)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %call3 = call i32 @pthread_mutex_unlock(ptr noundef @mutex)
  %2 = load ptr, ptr %dummy.addr, align 8
  ret ptr %2
}

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @"\01_pthread_cond_wait"(ptr noundef, ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %tid = alloca ptr, align 8
  %ret = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call i32 @pthread_create(ptr noundef %tid, ptr noundef null, ptr noundef @thread_a, ptr noundef null)
  store ptr null, ptr %ret, align 8
  %call1 = call i32 @pthread_mutex_lock(ptr noundef @mutex)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr @cntdwn, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr @cntdwn, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr @cntdwn, align 4
  %2 = load i32, ptr @cntdwn, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %2)
  %call3 = call i32 @pthread_cond_broadcast(ptr noundef @cond)
  %call4 = call i32 @pthread_mutex_unlock(ptr noundef @mutex)
  %call5 = call i32 @"\01_sleep"(i32 noundef 1)
  %call6 = call i32 @pthread_mutex_lock(ptr noundef @mutex)
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %call7 = call i32 @pthread_mutex_unlock(ptr noundef @mutex)
  %3 = load ptr, ptr %tid, align 8
  %call8 = call i32 @"\01_pthread_join"(ptr noundef %3, ptr noundef %ret)
  ret i32 0
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @pthread_cond_broadcast(ptr noundef) #1

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
