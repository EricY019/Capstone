; ModuleID = './code/071-5557mutex.c'
source_filename = "./code/071-5557mutex.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%struct.Node = type { i8, ptr }

@head = global ptr null, align 8
@m = global %struct._opaque_pthread_mutex_t { i64 850045863, [56 x i8] zeroinitializer }, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @printlist() #0 {
entry:
  %p = alloca ptr, align 8
  %0 = load ptr, ptr @head, align 8
  store ptr %0, ptr %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %p, align 8
  %c = getelementptr inbounds %struct.Node, ptr %2, i32 0, i32 0
  %call = call i64 @"\01_write"(i32 noundef 1, ptr noundef %c, i64 noundef 1)
  %3 = load ptr, ptr %p, align 8
  %next = getelementptr inbounds %struct.Node, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %next, align 8
  store ptr %4, ptr %p, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %call1 = call i32 @putchar(i32 noundef 10)
  ret void
}

declare i64 @"\01_write"(i32 noundef, ptr noundef, i64 noundef) #1

declare i32 @putchar(i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @f1(ptr noundef %p) #0 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %i = alloca i8, align 1
  %q = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i8 65, ptr %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, ptr %i, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sle i32 %conv, 90
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call ptr @malloc(i64 noundef 16) #4
  store ptr %call, ptr %q, align 8
  %1 = load i8, ptr %i, align 1
  %2 = load ptr, ptr %q, align 8
  %c = getelementptr inbounds %struct.Node, ptr %2, i32 0, i32 0
  store i8 %1, ptr %c, align 8
  %3 = load ptr, ptr @head, align 8
  %4 = load ptr, ptr %q, align 8
  %next = getelementptr inbounds %struct.Node, ptr %4, i32 0, i32 1
  store ptr %3, ptr %next, align 8
  %call2 = call i32 @pthread_mutex_lock(ptr noundef @m)
  %call3 = call i32 @"\01_usleep"(i32 noundef 100000)
  %5 = load ptr, ptr %q, align 8
  store ptr %5, ptr @head, align 8
  call void @printlist()
  %call4 = call i32 @pthread_mutex_unlock(ptr noundef @m)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i8, ptr %i, align 1
  %inc = add i8 %6, 1
  store i8 %inc, ptr %i, align 1
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @"\01_usleep"(i32 noundef) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @f2(ptr noundef %p) #0 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %i = alloca i8, align 1
  %q = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i8 97, ptr %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, ptr %i, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sle i32 %conv, 122
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call ptr @malloc(i64 noundef 16) #4
  store ptr %call, ptr %q, align 8
  %1 = load i8, ptr %i, align 1
  %2 = load ptr, ptr %q, align 8
  %c = getelementptr inbounds %struct.Node, ptr %2, i32 0, i32 0
  store i8 %1, ptr %c, align 8
  %call2 = call i32 @pthread_mutex_lock(ptr noundef @m)
  %3 = load ptr, ptr @head, align 8
  %4 = load ptr, ptr %q, align 8
  %next = getelementptr inbounds %struct.Node, ptr %4, i32 0, i32 1
  store ptr %3, ptr %next, align 8
  %call3 = call i32 @"\01_usleep"(i32 noundef 90000)
  %5 = load ptr, ptr %q, align 8
  store ptr %5, ptr @head, align 8
  call void @printlist()
  %call4 = call i32 @pthread_mutex_unlock(ptr noundef @m)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i8, ptr %i, align 1
  %inc = add i8 %6, 1
  store i8 %inc, ptr %i, align 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ids = alloca [2 x ptr], align 8
  store i32 0, ptr %retval, align 4
  %arraydecay = getelementptr inbounds [2 x ptr], ptr %ids, i64 0, i64 0
  %call = call i32 @pthread_create(ptr noundef %arraydecay, ptr noundef null, ptr noundef @f1, ptr noundef null)
  %call1 = call i32 @"\01_sleep"(i32 noundef 1)
  %arraydecay2 = getelementptr inbounds [2 x ptr], ptr %ids, i64 0, i64 0
  %add.ptr = getelementptr inbounds ptr, ptr %arraydecay2, i64 1
  %call3 = call i32 @pthread_create(ptr noundef %add.ptr, ptr noundef null, ptr noundef @f2, ptr noundef null)
  call void @pthread_exit(ptr noundef null) #5
  unreachable
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @"\01_sleep"(i32 noundef) #1

; Function Attrs: noreturn
declare void @pthread_exit(ptr noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { allocsize(0) }
attributes #5 = { noreturn }

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
