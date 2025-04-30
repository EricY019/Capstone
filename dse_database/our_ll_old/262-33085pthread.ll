; ModuleID = './code/262-33085pthread.c'
source_filename = "./code/262-33085pthread.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }

@number = global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"I am worker1\0A\00", align 1
@mutex_lock = global %struct._opaque_pthread_mutex_t zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"The worker1's number is: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"I am worker2\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"The worker2's number is: %d\0A\00", align 1
@workerid = global [2 x ptr] zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @worker1() #0 {
entry:
  %i = alloca i32, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 @pthread_mutex_lock(ptr noundef @mutex_lock)
  %1 = load i32, ptr @number, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @number, align 4
  %2 = load i32, ptr @number, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %2)
  %call3 = call i32 @pthread_mutex_unlock(ptr noundef @mutex_lock)
  %call4 = call i32 @"\01_sleep"(i32 noundef 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc5 = add nsw i32 %3, 1
  store i32 %inc5, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  call void @pthread_exit(ptr noundef null) #3
  unreachable
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

declare i32 @"\01_sleep"(i32 noundef) #1

; Function Attrs: noreturn
declare void @pthread_exit(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @worker2() #0 {
entry:
  %i = alloca i32, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 @pthread_mutex_lock(ptr noundef @mutex_lock)
  %1 = load i32, ptr @number, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @number, align 4
  %2 = load i32, ptr @number, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %2)
  %call3 = call i32 @pthread_mutex_unlock(ptr noundef @mutex_lock)
  %call4 = call i32 @"\01_sleep"(i32 noundef 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc5 = add nsw i32 %3, 1
  store i32 %inc5, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  call void @pthread_exit(ptr noundef null) #3
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @pthread_mutex_init(ptr noundef @mutex_lock, ptr noundef null)
  %call1 = call i32 @pthread_create(ptr noundef @workerid, ptr noundef null, ptr noundef @worker1, ptr noundef null)
  %call2 = call i32 @pthread_create(ptr noundef getelementptr inbounds ([2 x ptr], ptr @workerid, i64 0, i64 1), ptr noundef null, ptr noundef @worker2, ptr noundef null)
  %0 = load ptr, ptr @workerid, align 8
  %call3 = call i32 @"\01_pthread_join"(ptr noundef %0, ptr noundef null)
  %1 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @workerid, i64 0, i64 1), align 8
  %call4 = call i32 @"\01_pthread_join"(ptr noundef %1, ptr noundef null)
  ret i32 0
}

declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #1

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

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
