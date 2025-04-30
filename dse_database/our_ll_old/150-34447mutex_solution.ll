; ModuleID = './code/150-34447mutex_solution.c'
source_filename = "./code/150-34447mutex_solution.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }

@lock = global %struct._opaque_pthread_mutex_t zeroinitializer, align 8
@counter = global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"\0A Job %d started\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"\0A Job %d finished\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"\0A mutex init failed\0A\00", align 1
@tid = global [2 x ptr] zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"\0Acan't create thread :[%s]\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @doSomeThing(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %arg, ptr %arg.addr, align 8
  %call = call i32 @pthread_mutex_lock(ptr noundef @lock)
  store i64 0, ptr %i, align 8
  %0 = load i32, ptr @counter, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, ptr @counter, align 4
  %1 = load i32, ptr @counter, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %1)
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %i, align 8
  %cmp = icmp ult i64 %2, 268435455
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i64, ptr %i, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr @counter, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %4)
  %call3 = call i32 @pthread_mutex_unlock(ptr noundef @lock)
  ret ptr null
}

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  %call = call i32 @pthread_mutex_init(ptr noundef @lock, ptr noundef null)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end8, %if.end
  %0 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %0, 2
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x ptr], ptr @tid, i64 0, i64 %idxprom
  %call3 = call i32 @pthread_create(ptr noundef %arrayidx, ptr noundef null, ptr noundef @doSomeThing, ptr noundef null)
  store i32 %call3, ptr %err, align 4
  %2 = load i32, ptr %err, align 4
  %cmp4 = icmp ne i32 %2, 0
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %while.body
  %3 = load i32, ptr %err, align 4
  %call6 = call ptr @"\01_strerror"(i32 noundef %3)
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %call6)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %while.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %5 = load ptr, ptr @tid, align 8
  %call9 = call i32 @"\01_pthread_join"(ptr noundef %5, ptr noundef null)
  %6 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @tid, i64 0, i64 1), align 8
  %call10 = call i32 @"\01_pthread_join"(ptr noundef %6, ptr noundef null)
  %call11 = call i32 @pthread_mutex_destroy(ptr noundef @lock)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #1

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @"\01_strerror"(i32 noundef) #1

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
!7 = distinct !{!7, !6}
