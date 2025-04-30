; ModuleID = './code/238-57253.c'
source_filename = "./code/238-57253.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }

@sum = global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"thread: %ld starting. start=%d end=%d\0A\00", align 1
@mutex = global %struct._opaque_pthread_mutex_t zeroinitializer, align 8
@a = global ptr null, align 8
@b = global ptr null, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"thread: %ld done. Global sum now is=%li\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Final Global Sum=%li\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @dotprod(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %offset = alloca i32, align 4
  %len = alloca i32, align 4
  %tid = alloca i64, align 8
  store ptr %arg, ptr %arg.addr, align 8
  %0 = load ptr, ptr %arg.addr, align 8
  %1 = ptrtoint ptr %0 to i64
  store i64 %1, ptr %tid, align 8
  %2 = load i64, ptr %tid, align 8
  %conv = trunc i64 %2 to i32
  store i32 %conv, ptr %offset, align 4
  store i32 100000, ptr %len, align 4
  %3 = load i32, ptr %offset, align 4
  %4 = load i32, ptr %len, align 4
  %mul = mul nsw i32 %3, %4
  store i32 %mul, ptr %start, align 4
  %5 = load i32, ptr %start, align 4
  %6 = load i32, ptr %len, align 4
  %add = add nsw i32 %5, %6
  store i32 %add, ptr %end, align 4
  %7 = load i64, ptr %tid, align 8
  %8 = load i32, ptr %start, align 4
  %9 = load i32, ptr %end, align 4
  %sub = sub nsw i32 %9, 1
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %7, i32 noundef %8, i32 noundef %sub)
  %10 = load i32, ptr %start, align 4
  store i32 %10, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %end, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @pthread_mutex_lock(ptr noundef @mutex)
  %13 = load ptr, ptr @a, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds i32, ptr %13, i64 %idxprom
  %15 = load i32, ptr %arrayidx, align 4
  %16 = load ptr, ptr @b, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %17 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %16, i64 %idxprom3
  %18 = load i32, ptr %arrayidx4, align 4
  %mul5 = mul nsw i32 %15, %18
  %conv6 = sext i32 %mul5 to i64
  %19 = load i64, ptr @sum, align 8
  %add7 = add nsw i64 %19, %conv6
  store i64 %add7, ptr @sum, align 8
  %call8 = call i32 @pthread_mutex_unlock(ptr noundef @mutex)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %21 = load i64, ptr %tid, align 8
  %22 = load i64, ptr @sum, align 8
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %21, i64 noundef %22)
  call void @pthread_exit(ptr noundef null) #4
  unreachable
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

; Function Attrs: noreturn
declare void @pthread_exit(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %status = alloca ptr, align 8
  %threads = alloca [8 x ptr], align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call i32 @pthread_mutex_init(ptr noundef @mutex, ptr noundef null)
  %call1 = call ptr @malloc(i64 noundef 3200000) #5
  store ptr %call1, ptr @a, align 8
  %call2 = call ptr @malloc(i64 noundef 3200000) #5
  store ptr %call2, ptr @b, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8
  %cmp = icmp slt i64 %0, 800000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr @b, align 8
  %2 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %2
  store i32 1, ptr %arrayidx, align 4
  %3 = load ptr, ptr @a, align 8
  %4 = load i64, ptr %i, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %3, i64 %4
  store i32 1, ptr %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i64, ptr %i, align 8
  %inc = add nsw i64 %5, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %i, align 8
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc9, %for.end
  %6 = load i64, ptr %i, align 8
  %cmp5 = icmp slt i64 %6, 8
  br i1 %cmp5, label %for.body6, label %for.end11

for.body6:                                        ; preds = %for.cond4
  %7 = load i64, ptr %i, align 8
  %arrayidx7 = getelementptr inbounds [8 x ptr], ptr %threads, i64 0, i64 %7
  %8 = load i64, ptr %i, align 8
  %9 = inttoptr i64 %8 to ptr
  %call8 = call i32 @pthread_create(ptr noundef %arrayidx7, ptr noundef null, ptr noundef @dotprod, ptr noundef %9)
  br label %for.inc9

for.inc9:                                         ; preds = %for.body6
  %10 = load i64, ptr %i, align 8
  %inc10 = add nsw i64 %10, 1
  store i64 %inc10, ptr %i, align 8
  br label %for.cond4, !llvm.loop !8

for.end11:                                        ; preds = %for.cond4
  store i64 0, ptr %i, align 8
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc17, %for.end11
  %11 = load i64, ptr %i, align 8
  %cmp13 = icmp slt i64 %11, 8
  br i1 %cmp13, label %for.body14, label %for.end19

for.body14:                                       ; preds = %for.cond12
  %12 = load i64, ptr %i, align 8
  %arrayidx15 = getelementptr inbounds [8 x ptr], ptr %threads, i64 0, i64 %12
  %13 = load ptr, ptr %arrayidx15, align 8
  %call16 = call i32 @"\01_pthread_join"(ptr noundef %13, ptr noundef %status)
  br label %for.inc17

for.inc17:                                        ; preds = %for.body14
  %14 = load i64, ptr %i, align 8
  %inc18 = add nsw i64 %14, 1
  store i64 %inc18, ptr %i, align 8
  br label %for.cond12, !llvm.loop !9

for.end19:                                        ; preds = %for.cond12
  %15 = load i64, ptr @sum, align 8
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i64 noundef %15)
  %16 = load ptr, ptr @a, align 8
  call void @free(ptr noundef %16)
  %17 = load ptr, ptr @b, align 8
  call void @free(ptr noundef %17)
  call void @pthread_exit(ptr noundef null) #4
  unreachable
}

declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #3

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

declare void @free(ptr noundef) #1

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
