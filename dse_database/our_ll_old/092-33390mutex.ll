; ModuleID = './code/092-33390mutex.c'
source_filename = "./code/092-33390mutex.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }
%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }

@mutex = global %struct._opaque_pthread_mutex_t zeroinitializer, align 8
@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [28 x i8] c"Unable to initialize mutex\0A\00", align 1
@thd_var = global [10 x i32] zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"\0A\0AMain Thread Finished.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Unable to acquire lock\0A\00", align 1
@__stdoutp = external global ptr, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"\0AMutex acquired by Thread %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"1.txt\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"\0AText 1 written by Thread %d\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"\0AText 2 written by Thread %d\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"\0AText 3 written by Thread %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Unable to release mutex\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Mutex released by Thread %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %tid = alloca [10 x ptr], align 8
  %attr = alloca %struct._opaque_pthread_attr_t, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @pthread_mutex_init(ptr noundef @mutex, ptr noundef null)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str) #4
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i32 @pthread_attr_init(ptr noundef %attr)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4
  %cmp3 = icmp slt i32 %1, 10
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr @thd_var, i64 0, i64 %idxprom
  store i32 %2, ptr %arrayidx, align 4
  %4 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [10 x ptr], ptr %tid, i64 0, i64 %idxprom4
  %5 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [10 x i32], ptr @thd_var, i64 0, i64 %idxprom6
  %call8 = call i32 @pthread_create(ptr noundef %arrayidx5, ptr noundef %attr, ptr noundef @runner, ptr noundef %arrayidx7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc15, %for.end
  %7 = load i32, ptr %i, align 4
  %cmp10 = icmp slt i32 %7, 10
  br i1 %cmp10, label %for.body11, label %for.end17

for.body11:                                       ; preds = %for.cond9
  %8 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds [10 x ptr], ptr %tid, i64 0, i64 %idxprom12
  %9 = load ptr, ptr %arrayidx13, align 8
  %call14 = call i32 @"\01_pthread_join"(ptr noundef %9, ptr noundef null)
  br label %for.inc15

for.inc15:                                        ; preds = %for.body11
  %10 = load i32, ptr %i, align 4
  %inc16 = add nsw i32 %10, 1
  store i32 %inc16, ptr %i, align 4
  br label %for.cond9, !llvm.loop !7

for.end17:                                        ; preds = %for.cond9
  %call18 = call i32 @pthread_mutex_destroy(ptr noundef @mutex)
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %return

return:                                           ; preds = %for.end17, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @pthread_attr_init(ptr noundef) #1

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @runner(ptr noundef %param) #0 {
entry:
  %param.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %f = alloca ptr, align 8
  store ptr %param, ptr %param.addr, align 8
  %0 = load ptr, ptr %param.addr, align 8
  store ptr %0, ptr %p, align 8
  %call = call i32 @pthread_mutex_lock(ptr noundef @mutex)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.2) #4
  call void @_exit(i32 noundef 2) #5
  unreachable

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @__stdoutp, align 8
  %3 = load ptr, ptr %p, align 8
  %4 = load i32, ptr %3, align 4
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.3, i32 noundef %4) #4
  %call3 = call i32 @"\01_sleep"(i32 noundef 1)
  %call4 = call ptr @"\01_fopen"(ptr noundef @.str.4, ptr noundef @.str.5)
  store ptr %call4, ptr %f, align 8
  %5 = load ptr, ptr %f, align 8
  %6 = load ptr, ptr %p, align 8
  %7 = load i32, ptr %6, align 4
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.6, i32 noundef %7) #4
  %8 = load ptr, ptr %f, align 8
  %9 = load ptr, ptr %p, align 8
  %10 = load i32, ptr %9, align 4
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.7, i32 noundef %10) #4
  %11 = load ptr, ptr %f, align 8
  %12 = load ptr, ptr %p, align 8
  %13 = load i32, ptr %12, align 4
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.8, i32 noundef %13) #4
  %14 = load ptr, ptr %f, align 8
  %call8 = call i32 @fclose(ptr noundef %14)
  %call9 = call i32 @pthread_mutex_unlock(ptr noundef @mutex)
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  %15 = load ptr, ptr @__stderrp, align 8
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.9) #4
  call void @_exit(i32 noundef 3) #5
  unreachable

if.end13:                                         ; preds = %if.end
  %16 = load ptr, ptr @__stdoutp, align 8
  %17 = load ptr, ptr %p, align 8
  %18 = load i32, ptr %17, align 4
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.10, i32 noundef %18) #4
  %call15 = call i32 @"\01_sleep"(i32 noundef 1)
  call void @pthread_exit(ptr noundef null) #5
  unreachable
}

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

declare i32 @pthread_mutex_destroy(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @pthread_mutex_lock(ptr noundef) #1

; Function Attrs: noreturn
declare void @_exit(i32 noundef) #3

declare i32 @"\01_sleep"(i32 noundef) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

; Function Attrs: noreturn
declare void @pthread_exit(ptr noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind }
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
