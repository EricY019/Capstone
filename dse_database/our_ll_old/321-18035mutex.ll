; ModuleID = './code/321-18035mutex.c'
source_filename = "./code/321-18035mutex.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }

@mutex = global %struct._opaque_pthread_mutex_t { i64 850045863, [56 x i8] zeroinitializer }, align 8
@count = global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"\E7\BA\BF\E7\A8\8B%d\E6\AD\A3\E5\9C\A8\E8\BF\90\E8\A1\8C...\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"\E7\BA\BF\E7\A8\8B%d running...%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"\E7\BA\BF\E7\A8\8B%d\E7\BB\93\E6\9D\9F\0A\00", align 1
@__const.main.arg = private unnamed_addr constant [2 x i32] [i32 1, i32 2], align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @func(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %th = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  %0 = load ptr, ptr %arg.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %th, align 4
  %2 = load i32, ptr %th, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  store i32 0, ptr %i, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %3, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 @pthread_mutex_lock(ptr noundef @mutex)
  %4 = load i32, ptr @count, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr @count, align 4
  %call2 = call i32 @pthread_mutex_unlock(ptr noundef @mutex)
  %5 = load i32, ptr %th, align 4
  %6 = load i32, ptr @count, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %5, i32 noundef %6)
  %call4 = call i32 @"\01_usleep"(i32 noundef 10000)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc5 = add nsw i32 %7, 1
  store i32 %inc5, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %th, align 4
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %8)
  call void @pthread_exit(ptr noundef null) #4
  unreachable
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

declare i32 @"\01_usleep"(i32 noundef) #1

; Function Attrs: noreturn
declare void @pthread_exit(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %thrd1 = alloca ptr, align 8
  %thrd2 = alloca ptr, align 8
  %arg = alloca [2 x i32], align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arg, ptr align 4 @__const.main.arg, i64 8, i1 false)
  %arrayidx = getelementptr inbounds [2 x i32], ptr %arg, i64 0, i64 0
  %call = call i32 @pthread_create(ptr noundef %thrd1, ptr noundef null, ptr noundef @func, ptr noundef %arrayidx)
  %arrayidx1 = getelementptr inbounds [2 x i32], ptr %arg, i64 0, i64 1
  %call2 = call i32 @pthread_create(ptr noundef %thrd2, ptr noundef null, ptr noundef @func, ptr noundef %arrayidx1)
  %0 = load ptr, ptr %thrd1, align 8
  %call3 = call i32 @"\01_pthread_join"(ptr noundef %0, ptr noundef null)
  %1 = load ptr, ptr %thrd2, align 8
  %call4 = call i32 @"\01_pthread_join"(ptr noundef %1, ptr noundef null)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
