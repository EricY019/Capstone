; ModuleID = './code/119-1530producer_consumer.c'
source_filename = "./code/119-1530producer_consumer.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%struct._opaque_pthread_cond_t = type { i64, [40 x i8] }

@mutex = global %struct._opaque_pthread_mutex_t { i64 850045863, [56 x i8] zeroinitializer }, align 8
@prod_cond = global %struct._opaque_pthread_cond_t { i64 1018212795, [40 x i8] zeroinitializer }, align 8
@cons_cond = global %struct._opaque_pthread_cond_t { i64 1018212795, [40 x i8] zeroinitializer }, align 8
@buffer = global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Producer: buffer = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Consumer %d: buffer = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @producer(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @pthread_mutex_lock(ptr noundef @mutex)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %1 = load i32, ptr @buffer, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i32 @"\01_pthread_cond_wait"(ptr noundef @prod_cond, ptr noundef @mutex)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %2 = load i32, ptr @buffer, align 4
  %add = add nsw i32 %2, 5
  store i32 %add, ptr @buffer, align 4
  %3 = load i32, ptr @buffer, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %3)
  %call4 = call i32 @pthread_cond_broadcast(ptr noundef @cons_cond)
  %call5 = call i32 @pthread_mutex_unlock(ptr noundef @mutex)
  %call6 = call i32 @"\01_usleep"(i32 noundef 500000)
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  call void @pthread_exit(ptr noundef null) #4
  unreachable
}

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @"\01_pthread_cond_wait"(ptr noundef, ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @pthread_cond_broadcast(ptr noundef) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

declare i32 @"\01_usleep"(i32 noundef) #1

; Function Attrs: noreturn
declare void @pthread_exit(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @consumer(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %id = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  %0 = load ptr, ptr %arg.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %id, align 4
  %2 = load ptr, ptr %arg.addr, align 8
  call void @free(ptr noundef %2)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %3, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @pthread_mutex_lock(ptr noundef @mutex)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %4 = load i32, ptr @buffer, align 4
  %cmp1 = icmp sle i32 %4, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i32 @"\01_pthread_cond_wait"(ptr noundef @cons_cond, ptr noundef @mutex)
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %5 = load i32, ptr @buffer, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, ptr @buffer, align 4
  %6 = load i32, ptr %id, align 4
  %7 = load i32, ptr @buffer, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %6, i32 noundef %7)
  %call4 = call i32 @pthread_cond_broadcast(ptr noundef @prod_cond)
  %call5 = call i32 @pthread_mutex_unlock(ptr noundef @mutex)
  %call6 = call i32 @"\01_usleep"(i32 noundef 500000)
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @pthread_exit(ptr noundef null) #4
  unreachable
}

declare void @free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %thr_prod = alloca ptr, align 8
  %thr_cons = alloca [5 x ptr], align 8
  %i = alloca i32, align 4
  %id = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr @buffer, align 4
  %call = call i32 @pthread_create(ptr noundef %thr_prod, ptr noundef null, ptr noundef @producer, ptr noundef null)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call ptr @malloc(i64 noundef 4) #5
  store ptr %call1, ptr %id, align 8
  %1 = load i32, ptr %i, align 4
  %2 = load ptr, ptr %id, align 8
  store i32 %1, ptr %2, align 4
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [5 x ptr], ptr %thr_cons, i64 0, i64 %idxprom
  %4 = load ptr, ptr %id, align 8
  %call2 = call i32 @pthread_create(ptr noundef %arrayidx, ptr noundef null, ptr noundef @consumer, ptr noundef %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  call void @pthread_exit(ptr noundef null) #4
  unreachable
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { noreturn }
attributes #5 = { allocsize(0) }

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
!10 = distinct !{!10, !6}
