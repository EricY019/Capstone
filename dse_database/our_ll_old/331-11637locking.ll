; ModuleID = './code/331-11637locking.c'
source_filename = "./code/331-11637locking.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }

@count = global i32 0, align 4
@mutex = global %struct._opaque_pthread_mutex_t zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"%s says %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Thread 1\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Thread 2\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @runner(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %str = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  store i32 0, ptr %i, align 4
  %0 = load ptr, ptr %arg.addr, align 8
  store ptr %0, ptr %str, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call i32 @pthread_mutex_lock(ptr noundef @mutex)
  %2 = load i32, ptr @count, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @count, align 4
  %3 = load ptr, ptr %str, align 8
  %4 = load i32, ptr @count, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %3, i32 noundef %4)
  %call2 = call i32 @pthread_mutex_unlock(ptr noundef @mutex)
  %call3 = call i32 @"\01_usleep"(i32 noundef 1)
  %5 = load i32, ptr %i, align 4
  %inc4 = add nsw i32 %5, 1
  store i32 %inc4, ptr %i, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret ptr null
}

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

declare i32 @"\01_usleep"(i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %pth = alloca ptr, align 8
  %pth2 = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call i32 @pthread_mutex_init(ptr noundef @mutex, ptr noundef null)
  %call1 = call i32 @pthread_create(ptr noundef %pth, ptr noundef null, ptr noundef @runner, ptr noundef @.str.1)
  %call2 = call i32 @pthread_create(ptr noundef %pth2, ptr noundef null, ptr noundef @runner, ptr noundef @.str.2)
  %0 = load ptr, ptr %pth, align 8
  %call3 = call i32 @"\01_pthread_join"(ptr noundef %0, ptr noundef null)
  %1 = load ptr, ptr %pth2, align 8
  %call4 = call i32 @"\01_pthread_join"(ptr noundef %1, ptr noundef null)
  %call5 = call i32 @pthread_mutex_destroy(ptr noundef @mutex)
  ret i32 0
}

declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #1

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

declare i32 @pthread_mutex_destroy(ptr noundef) #1

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
