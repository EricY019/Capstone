; ModuleID = './code/145-19110producer_consumer.c'
source_filename = "./code/145-19110producer_consumer.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%struct._opaque_pthread_cond_t = type { i64, [40 x i8] }

@buffer = global i32 0, align 4
@the_mutex = global %struct._opaque_pthread_mutex_t zeroinitializer, align 8
@cond_p = global %struct._opaque_pthread_cond_t zeroinitializer, align 8
@cond_c = global %struct._opaque_pthread_cond_t zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @producer(ptr noundef %ptr) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 100000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @pthread_mutex_lock(ptr noundef @the_mutex)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %1 = load i32, ptr @buffer, align 4
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i32 @"\01_pthread_cond_wait"(ptr noundef @cond_p, ptr noundef @the_mutex)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %2 = load i32, ptr %i, align 4
  store i32 %2, ptr @buffer, align 4
  %call3 = call i32 @pthread_cond_signal(ptr noundef @cond_c)
  %call4 = call i32 @pthread_mutex_unlock(ptr noundef @the_mutex)
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  call void @pthread_exit(ptr noundef null) #3
  unreachable
}

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @"\01_pthread_cond_wait"(ptr noundef, ptr noundef) #1

declare i32 @pthread_cond_signal(ptr noundef) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

; Function Attrs: noreturn
declare void @pthread_exit(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @consumer(ptr noundef %ptr) #0 {
entry:
  %ptr.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 100000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @pthread_mutex_lock(ptr noundef @the_mutex)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %1 = load i32, ptr @buffer, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i32 @"\01_pthread_cond_wait"(ptr noundef @cond_c, ptr noundef @the_mutex)
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  store i32 0, ptr @buffer, align 4
  %call3 = call i32 @pthread_cond_signal(ptr noundef @cond_p)
  %call4 = call i32 @pthread_mutex_unlock(ptr noundef @the_mutex)
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @pthread_exit(ptr noundef null) #3
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %pro_thread = alloca ptr, align 8
  %con_thread = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call i32 @pthread_mutex_init(ptr noundef @the_mutex, ptr noundef null)
  %call1 = call i32 @"\01_pthread_cond_init"(ptr noundef @cond_c, ptr noundef null)
  %call2 = call i32 @"\01_pthread_cond_init"(ptr noundef @cond_p, ptr noundef null)
  %call3 = call i32 @pthread_create(ptr noundef %con_thread, ptr noundef null, ptr noundef @consumer, ptr noundef null)
  %call4 = call i32 @pthread_create(ptr noundef %pro_thread, ptr noundef null, ptr noundef @producer, ptr noundef null)
  %0 = load ptr, ptr %pro_thread, align 8
  %call5 = call i32 @"\01_pthread_join"(ptr noundef %0, ptr noundef null)
  %1 = load ptr, ptr %con_thread, align 8
  %call6 = call i32 @"\01_pthread_join"(ptr noundef %1, ptr noundef null)
  %call7 = call i32 @pthread_cond_destroy(ptr noundef @cond_c)
  %call8 = call i32 @pthread_cond_destroy(ptr noundef @cond_p)
  %call9 = call i32 @pthread_mutex_destroy(ptr noundef @the_mutex)
  ret i32 0
}

declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_cond_init"(ptr noundef, ptr noundef) #1

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

declare i32 @pthread_cond_destroy(ptr noundef) #1

declare i32 @pthread_mutex_destroy(ptr noundef) #1

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
