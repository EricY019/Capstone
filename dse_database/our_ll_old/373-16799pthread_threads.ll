; ModuleID = './code/373-16799pthread_threads.c'
source_filename = "./code/373-16799pthread_threads.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [23 x i8] c"Waiting for thread...\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Thread joined!\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %th = alloca ptr, align 8
  %th2 = alloca ptr, align 8
  %rv = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call i32 @pthread_create(ptr noundef %th, ptr noundef null, ptr noundef @mythread, ptr noundef null)
  %call1 = call i32 @"\01_sleep"(i32 noundef 1)
  %call2 = call i32 @pthread_create(ptr noundef %th2, ptr noundef null, ptr noundef @mythread, ptr noundef null)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = load ptr, ptr %th, align 8
  %call4 = call i32 @"\01_pthread_join"(ptr noundef %0, ptr noundef %rv)
  %1 = load ptr, ptr %th2, align 8
  %call5 = call i32 @"\01_pthread_join"(ptr noundef %1, ptr noundef %rv)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret i32 0
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @mythread(ptr noundef %p) #0 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %call = call i32 @"\01_sleep"(i32 noundef 2)
  %0 = load ptr, ptr %retval, align 8
  ret ptr %0
}

declare i32 @"\01_sleep"(i32 noundef) #1

declare i32 @printf(ptr noundef, ...) #1

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
