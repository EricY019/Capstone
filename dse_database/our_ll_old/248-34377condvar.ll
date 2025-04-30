; ModuleID = './code/248-34377condvar.c'
source_filename = "./code/248-34377condvar.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_cond_t = type { i64, [40 x i8] }
%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }

@cond = global %struct._opaque_pthread_cond_t { i64 1018212795, [40 x i8] zeroinitializer }, align 8
@flag = global i32 0, align 4
@mutex = global %struct._opaque_pthread_mutex_t zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"flag is set\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @my_thread(ptr noundef %var) #0 {
entry:
  %var.addr = alloca ptr, align 8
  store ptr %var, ptr %var.addr, align 8
  %call = call i32 @pthread_mutex_lock(ptr noundef @mutex)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr @flag, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i32 @"\01_pthread_cond_wait"(ptr noundef @cond, ptr noundef @mutex)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %call2 = call i32 @pthread_mutex_unlock(ptr noundef @mutex)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret ptr null
}

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @"\01_pthread_cond_wait"(ptr noundef, ptr noundef) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %t = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call i32 @pthread_create(ptr noundef %t, ptr noundef null, ptr noundef @my_thread, ptr noundef null)
  %call1 = call i32 @"\01_sleep"(i32 noundef 10)
  %call2 = call i32 @pthread_mutex_lock(ptr noundef @mutex)
  store i32 1, ptr @flag, align 4
  %call3 = call i32 @pthread_cond_signal(ptr noundef @cond)
  %call4 = call i32 @pthread_mutex_unlock(ptr noundef @mutex)
  %0 = load ptr, ptr %t, align 8
  %call5 = call i32 @"\01_pthread_join"(ptr noundef %0, ptr noundef null)
  ret i32 0
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @"\01_sleep"(i32 noundef) #1

declare i32 @pthread_cond_signal(ptr noundef) #1

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
