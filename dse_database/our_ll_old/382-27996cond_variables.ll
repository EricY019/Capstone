; ModuleID = './code/382-27996cond_variables.c'
source_filename = "./code/382-27996cond_variables.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%struct._opaque_pthread_cond_t = type { i64, [40 x i8] }

@shared_data = global i64 123456789, align 8
@lock = global %struct._opaque_pthread_mutex_t zeroinitializer, align 8
@.str = private unnamed_addr constant [19 x i8] c"Sending signal...\0A\00", align 1
@is_zero = global %struct._opaque_pthread_cond_t zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Waiting for signal!...\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Signal received\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @decrement(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr @shared_data, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call i32 @pthread_mutex_lock(ptr noundef @lock)
  %1 = load i64, ptr @shared_data, align 8
  %dec = add nsw i64 %1, -1
  store i64 %dec, ptr @shared_data, align 8
  %call1 = call i32 @pthread_mutex_unlock(ptr noundef @lock)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %call3 = call i32 @pthread_cond_signal(ptr noundef @is_zero)
  ret ptr null
}

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @pthread_cond_signal(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %decrement_thread = alloca ptr, align 8
  %exit_status = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call i32 @pthread_mutex_init(ptr noundef @lock, ptr noundef null)
  %call1 = call i32 @"\01_pthread_cond_init"(ptr noundef @is_zero, ptr noundef null)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %call3 = call i32 @pthread_create(ptr noundef %decrement_thread, ptr noundef null, ptr noundef @decrement, ptr noundef null)
  %call4 = call i32 @pthread_mutex_lock(ptr noundef @lock)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr @shared_data, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call5 = call i32 @"\01_pthread_cond_wait"(ptr noundef @is_zero, ptr noundef @lock)
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %call6 = call i32 @pthread_mutex_unlock(ptr noundef @lock)
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %1 = load ptr, ptr %decrement_thread, align 8
  %call8 = call i32 @"\01_pthread_join"(ptr noundef %1, ptr noundef %exit_status)
  %call9 = call i32 @pthread_mutex_destroy(ptr noundef @lock)
  %call10 = call i32 @pthread_cond_destroy(ptr noundef @is_zero)
  ret i32 0
}

declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_cond_init"(ptr noundef, ptr noundef) #1

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_cond_wait"(ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

declare i32 @pthread_mutex_destroy(ptr noundef) #1

declare i32 @pthread_cond_destroy(ptr noundef) #1

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
