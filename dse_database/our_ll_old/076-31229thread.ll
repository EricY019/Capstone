; ModuleID = './code/076-31229thread.c'
source_filename = "./code/076-31229thread.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [6 x i8] c"%s-A\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-B\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s-C\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"thread1\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"thread2\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"thread3\00", align 1
@__const.main.thread_name = private unnamed_addr constant [3 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @thread_entry(ptr noundef %ptr) #0 {
entry:
  %retval = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %name = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  %0 = load ptr, ptr %ptr.addr, align 8
  store ptr %0, ptr %name, align 8
  %1 = load ptr, ptr %name, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %1)
  %call1 = call i32 @"\01_sleep"(i32 noundef 1)
  %2 = load ptr, ptr %name, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %2)
  %call3 = call i32 @"\01_sleep"(i32 noundef 1)
  %3 = load ptr, ptr %name, align 8
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %3)
  %4 = load ptr, ptr %retval, align 8
  ret ptr %4
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @"\01_sleep"(i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %thread = alloca [3 x ptr], align 8
  %thread_name = alloca [3 x ptr], align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %thread_name, ptr align 8 @__const.main.thread_name, i64 24, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [3 x ptr], ptr %thread, i64 0, i64 %idxprom
  %2 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [3 x ptr], ptr %thread_name, i64 0, i64 %idxprom1
  %3 = load ptr, ptr %arrayidx2, align 8
  %call = call i32 @pthread_create(ptr noundef %arrayidx, ptr noundef null, ptr noundef @thread_entry, ptr noundef %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc9, %for.end
  %5 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %5, 3
  br i1 %cmp4, label %for.body5, label %for.end11

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [3 x ptr], ptr %thread, i64 0, i64 %idxprom6
  %7 = load ptr, ptr %arrayidx7, align 8
  %call8 = call i32 @"\01_pthread_join"(ptr noundef %7, ptr noundef null)
  br label %for.inc9

for.inc9:                                         ; preds = %for.body5
  %8 = load i32, ptr %i, align 4
  %inc10 = add nsw i32 %8, 1
  store i32 %inc10, ptr %i, align 4
  br label %for.cond3, !llvm.loop !7

for.end11:                                        ; preds = %for.cond3
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
