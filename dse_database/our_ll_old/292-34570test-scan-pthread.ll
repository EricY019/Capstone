; ModuleID = './code/292-34570test-scan-pthread.c'
source_filename = "./code/292-34570test-scan-pthread.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@size = global i32 4096, align 4
@p = global ptr null, align 8
@.str = private unnamed_addr constant [22 x i8] c"%s p[%d] at %p is %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"thread 1\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"thread 2\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Allocate %d ints at %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"create thread 1\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"create thread 2\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @mem_scan(ptr noundef %ptr) #0 {
entry:
  %retval = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %0 = load i32, ptr %j, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr @size, align 4
  %cmp2 = icmp slt i32 %1, %2
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, ptr %i, align 4
  %4 = load ptr, ptr @p, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %idxprom
  store i32 %3, ptr %arrayidx, align 4
  %6 = load i32, ptr %i, align 4
  %rem = srem i32 %6, 1024
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %7 = load ptr, ptr %ptr.addr, align 8
  %8 = load i32, ptr %i, align 4
  %9 = load ptr, ptr @p, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %9, i64 %idxprom5
  %11 = load ptr, ptr @p, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %11, i64 %idxprom7
  %13 = load i32, ptr %arrayidx8, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %7, i32 noundef %8, ptr noundef %arrayidx6, i32 noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %i, align 4
  %add = add nsw i32 %14, 1024
  store i32 %add, ptr %i, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %15 = load i32, ptr %j, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !7

for.end10:                                        ; preds = %for.cond
  %16 = load ptr, ptr %retval, align 8
  ret ptr %16
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %thread1 = alloca ptr, align 8
  %thread2 = alloca ptr, align 8
  %msg1 = alloca ptr, align 8
  %msg2 = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store ptr @.str.1, ptr %msg1, align 8
  store ptr @.str.2, ptr %msg2, align 8
  %0 = load i32, ptr @size, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call = call ptr @malloc(i64 noundef %mul) #3
  store ptr %call, ptr @p, align 8
  %1 = load i32, ptr @size, align 4
  %2 = load ptr, ptr @p, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %1, ptr noundef %2)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %3 = load ptr, ptr %msg1, align 8
  %call3 = call i32 @pthread_create(ptr noundef %thread1, ptr noundef null, ptr noundef @mem_scan, ptr noundef %3)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %4 = load ptr, ptr %msg2, align 8
  %call5 = call i32 @pthread_create(ptr noundef %thread2, ptr noundef null, ptr noundef @mem_scan, ptr noundef %4)
  %5 = load ptr, ptr %thread1, align 8
  %call6 = call i32 @"\01_pthread_join"(ptr noundef %5, ptr noundef null)
  %6 = load ptr, ptr %thread2, align 8
  %call7 = call i32 @"\01_pthread_join"(ptr noundef %6, ptr noundef null)
  ret i32 0
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

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
