; ModuleID = './code/254-6490rwlock_race.c'
source_filename = "./code/254-6490rwlock_race.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_rwlock_t = type { i64, [192 x i8] }
%struct.timespec = type { i64, i64 }

@s_rwlock = internal global %struct._opaque_pthread_rwlock_t zeroinitializer, align 8
@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"Result: %d\0A\00", align 1
@s_racy = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %thread1 = alloca ptr, align 8
  %thread2 = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call i32 @"\01_pthread_rwlock_init"(ptr noundef @s_rwlock, ptr noundef null)
  %call1 = call i32 @pthread_create(ptr noundef %thread1, ptr noundef null, ptr noundef @thread_func, ptr noundef null)
  %call2 = call i32 @pthread_create(ptr noundef %thread2, ptr noundef null, ptr noundef @thread_func, ptr noundef null)
  %0 = load ptr, ptr %thread1, align 8
  %call3 = call i32 @"\01_pthread_join"(ptr noundef %0, ptr noundef null)
  %1 = load ptr, ptr %thread2, align 8
  %call4 = call i32 @"\01_pthread_join"(ptr noundef %1, ptr noundef null)
  %call5 = call i32 @"\01_pthread_rwlock_destroy"(ptr noundef @s_rwlock)
  %2 = load ptr, ptr @__stderrp, align 8
  %3 = load i32, ptr @s_racy, align 4
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str, i32 noundef %3) #3
  ret i32 0
}

declare i32 @"\01_pthread_rwlock_init"(ptr noundef, ptr noundef) #1

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal ptr @thread_func(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  %call = call i32 @"\01_pthread_rwlock_rdlock"(ptr noundef @s_rwlock)
  %0 = load i32, ptr @s_racy, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @s_racy, align 4
  %call1 = call i32 @"\01_pthread_rwlock_unlock"(ptr noundef @s_rwlock)
  call void @sleep_ms(i32 noundef 100)
  ret ptr null
}

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_rwlock_destroy"(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @"\01_pthread_rwlock_rdlock"(ptr noundef) #1

declare i32 @"\01_pthread_rwlock_unlock"(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @sleep_ms(i32 noundef %ms) #0 {
entry:
  %ms.addr = alloca i32, align 4
  %delay = alloca %struct.timespec, align 8
  store i32 %ms, ptr %ms.addr, align 4
  %tv_sec = getelementptr inbounds %struct.timespec, ptr %delay, i32 0, i32 0
  %0 = load i32, ptr %ms.addr, align 4
  %div = sdiv i32 %0, 1000
  %conv = sext i32 %div to i64
  store i64 %conv, ptr %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec, ptr %delay, i32 0, i32 1
  %1 = load i32, ptr %ms.addr, align 4
  %rem = srem i32 %1, 1000
  %mul = mul nsw i32 %rem, 1000
  %mul1 = mul nsw i32 %mul, 1000
  %conv2 = sext i32 %mul1 to i64
  store i64 %conv2, ptr %tv_nsec, align 8
  %call = call i32 @"\01_nanosleep"(ptr noundef %delay, ptr noundef null)
  ret void
}

declare i32 @"\01_nanosleep"(ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
