; ModuleID = './code/171-12549thread_02_withmutex.c'
source_filename = "./code/171-12549thread_02_withmutex.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }

@mutex = global %struct._opaque_pthread_mutex_t zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@__stdoutp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"\0A End of the thread A\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"\0A End of the thread C\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"\0A Thread B is waiting for thread C\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"\0A End of the thread B\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c" Creation of the thread A\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c" Creation of the thread B\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"The main thread is waiting for A and B to finish\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @display(i32 noundef %n, i8 noundef signext %letter) #0 {
entry:
  %n.addr = alloca i32, align 4
  %letter.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store i8 %letter, ptr %letter.addr, align 1
  store i32 1, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %j, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  %call = call i32 @pthread_mutex_lock(ptr noundef @mutex)
  store i32 1, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %2, 100000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  %4 = load i8, ptr %letter.addr, align 1
  %conv = sext i8 %4 to i32
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv)
  %5 = load ptr, ptr @__stdoutp, align 8
  %call5 = call i32 @fflush(ptr noundef %5)
  %call6 = call i32 @pthread_mutex_unlock(ptr noundef @mutex)
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %6 = load i32, ptr %j, align 4
  %inc8 = add nsw i32 %6, 1
  store i32 %inc8, ptr %j, align 4
  br label %for.cond, !llvm.loop !7

for.end9:                                         ; preds = %for.cond
  ret void
}

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @fflush(ptr noundef) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @threadA(ptr noundef %unused) #0 {
entry:
  %unused.addr = alloca ptr, align 8
  store ptr %unused, ptr %unused.addr, align 8
  call void @display(i32 noundef 100, i8 noundef signext 65)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %0 = load ptr, ptr @__stdoutp, align 8
  %call1 = call i32 @fflush(ptr noundef %0)
  call void @pthread_exit(ptr noundef null) #3
  unreachable
}

; Function Attrs: noreturn
declare void @pthread_exit(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @threadC(ptr noundef %unused) #0 {
entry:
  %unused.addr = alloca ptr, align 8
  store ptr %unused, ptr %unused.addr, align 8
  call void @display(i32 noundef 150, i8 noundef signext 67)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %0 = load ptr, ptr @__stdoutp, align 8
  %call1 = call i32 @fflush(ptr noundef %0)
  call void @pthread_exit(ptr noundef null) #3
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @threadB(ptr noundef %unused) #0 {
entry:
  %unused.addr = alloca ptr, align 8
  %thC = alloca ptr, align 8
  store ptr %unused, ptr %unused.addr, align 8
  %call = call i32 @pthread_create(ptr noundef %thC, ptr noundef null, ptr noundef @threadC, ptr noundef null)
  call void @display(i32 noundef 100, i8 noundef signext 66)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %0 = load ptr, ptr %thC, align 8
  %call2 = call i32 @"\01_pthread_join"(ptr noundef %0, ptr noundef null)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %1 = load ptr, ptr @__stdoutp, align 8
  %call4 = call i32 @fflush(ptr noundef %1)
  call void @pthread_exit(ptr noundef null) #3
  unreachable
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %thA = alloca ptr, align 8
  %thB = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call i32 @pthread_mutex_init(ptr noundef @mutex, ptr noundef null)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %call2 = call i32 @pthread_create(ptr noundef %thA, ptr noundef null, ptr noundef @threadA, ptr noundef null)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %call4 = call i32 @pthread_create(ptr noundef %thB, ptr noundef null, ptr noundef @threadB, ptr noundef null)
  %call5 = call i32 @"\01_sleep"(i32 noundef 1)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %0 = load ptr, ptr %thA, align 8
  %call7 = call i32 @"\01_pthread_join"(ptr noundef %0, ptr noundef null)
  %1 = load ptr, ptr %thB, align 8
  %call8 = call i32 @"\01_pthread_join"(ptr noundef %1, ptr noundef null)
  call void @pthread_exit(ptr noundef null) #3
  unreachable
}

declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #1

declare i32 @"\01_sleep"(i32 noundef) #1

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
