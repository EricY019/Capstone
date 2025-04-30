; ModuleID = './code/093-21371pthread.c'
source_filename = "./code/093-21371pthread.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [10 x i8] c"mytid=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"\E7\BA\BF\E7\A8\8B%u\E8\BF\94\E5\9B\9E%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"\E7\BA\BF\E7\A8\8B%u\E8\BF\94\E5\9B\9E%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"\E7\BA\BF\E7\A8\8B%u\E8\BF\94\E5\9B\9E%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @f1(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  %call = call ptr @pthread_self()
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %call)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i64 @"\01_write"(i32 noundef 1, ptr noundef @.str.1, i64 noundef 1)
  %call3 = call i32 @"\01_sleep"(i32 noundef 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, ptr %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret ptr inttoptr (i64 123 to ptr)
}

declare i32 @printf(ptr noundef, ...) #1

declare ptr @pthread_self() #1

declare i64 @"\01_write"(i32 noundef, ptr noundef, i64 noundef) #1

declare i32 @"\01_sleep"(i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @f2(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  %call = call ptr @pthread_self()
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %call)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i64 @"\01_write"(i32 noundef 1, ptr noundef @.str.2, i64 noundef 1)
  %call3 = call i32 @"\01_sleep"(i32 noundef 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, ptr %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  call void @pthread_exit(ptr noundef @.str.3) #3
  unreachable
}

; Function Attrs: noreturn
declare void @pthread_exit(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @f3(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  %call = call ptr @pthread_self()
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %call)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %call2 = call i64 @"\01_write"(i32 noundef 1, ptr noundef @.str.4, i64 noundef 1)
  %call3 = call i32 @"\01_sleep"(i32 noundef 1)
  br label %for.inc

for.inc:                                          ; preds = %for.cond
  %0 = load i32, ptr %i, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %ids = alloca [3 x ptr], align 8
  %ret = alloca ptr, align 8
  %arraydecay = getelementptr inbounds [3 x ptr], ptr %ids, i64 0, i64 0
  %add.ptr = getelementptr inbounds ptr, ptr %arraydecay, i64 0
  %call = call i32 @pthread_create(ptr noundef %add.ptr, ptr noundef null, ptr noundef @f1, ptr noundef null)
  %arraydecay1 = getelementptr inbounds [3 x ptr], ptr %ids, i64 0, i64 0
  %add.ptr2 = getelementptr inbounds ptr, ptr %arraydecay1, i64 1
  %call3 = call i32 @pthread_create(ptr noundef %add.ptr2, ptr noundef null, ptr noundef @f2, ptr noundef null)
  %arraydecay4 = getelementptr inbounds [3 x ptr], ptr %ids, i64 0, i64 0
  %add.ptr5 = getelementptr inbounds ptr, ptr %arraydecay4, i64 2
  %call6 = call i32 @pthread_create(ptr noundef %add.ptr5, ptr noundef null, ptr noundef @f3, ptr noundef null)
  %call7 = call i32 @"\01_sleep"(i32 noundef 3)
  %arrayidx = getelementptr inbounds [3 x ptr], ptr %ids, i64 0, i64 2
  %0 = load ptr, ptr %arrayidx, align 8
  %call8 = call i32 @"\01_pthread_cancel"(ptr noundef %0)
  %arrayidx9 = getelementptr inbounds [3 x ptr], ptr %ids, i64 0, i64 0
  %1 = load ptr, ptr %arrayidx9, align 8
  %call10 = call i32 @"\01_pthread_join"(ptr noundef %1, ptr noundef %ret)
  %arrayidx11 = getelementptr inbounds [3 x ptr], ptr %ids, i64 0, i64 0
  %2 = load ptr, ptr %arrayidx11, align 8
  %3 = load ptr, ptr %ret, align 8
  %4 = ptrtoint ptr %3 to i32
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, ptr noundef %2, i32 noundef %4)
  %arrayidx13 = getelementptr inbounds [3 x ptr], ptr %ids, i64 0, i64 1
  %5 = load ptr, ptr %arrayidx13, align 8
  %call14 = call i32 @"\01_pthread_join"(ptr noundef %5, ptr noundef %ret)
  %arrayidx15 = getelementptr inbounds [3 x ptr], ptr %ids, i64 0, i64 1
  %6 = load ptr, ptr %arrayidx15, align 8
  %7 = load ptr, ptr %ret, align 8
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, ptr noundef %6, ptr noundef %7)
  %arrayidx17 = getelementptr inbounds [3 x ptr], ptr %ids, i64 0, i64 2
  %8 = load ptr, ptr %arrayidx17, align 8
  %call18 = call i32 @"\01_pthread_join"(ptr noundef %8, ptr noundef %ret)
  %arrayidx19 = getelementptr inbounds [3 x ptr], ptr %ids, i64 0, i64 2
  %9 = load ptr, ptr %arrayidx19, align 8
  %10 = load ptr, ptr %ret, align 8
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, ptr noundef %9, ptr noundef %10)
  ret i32 0
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_cancel"(ptr noundef) #1

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
