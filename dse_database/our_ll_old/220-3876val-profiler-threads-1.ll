; ModuleID = './code/220-3876val-profiler-threads-1.c'
source_filename = "./code/220-3876val-profiler-threads-1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@buffer = global [1024 x i8] zeroinitializer, align 1
@buffer2 = global [1024 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @copy_memory(ptr noundef %dst, ptr noundef %src, i32 noundef %size) #0 {
entry:
  %retval = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  store ptr %src, ptr %src.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp ult i32 %0, 1000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %src.addr, align 8
  %2 = load i32, ptr %size.addr, align 4
  %rem = urem i32 %2, 20
  %idxprom = zext i32 %rem to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %4 = load ptr, ptr %dst.addr, align 8
  %5 = load i32, ptr %size.addr, align 4
  %rem1 = urem i32 %5, 10
  %idxprom2 = zext i32 %rem1 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %4, i64 %idxprom2
  store i8 %3, ptr %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @foo(ptr noundef %d) #0 {
entry:
  %retval = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  %call = call ptr @copy_memory(ptr noundef @buffer, ptr noundef @buffer2, i32 noundef 1024)
  %0 = load ptr, ptr %retval, align 8
  ret ptr %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %threads = alloca [8 x ptr], align 8
  %rc = alloca i32, align 4
  %t = alloca i64, align 8
  %retval1 = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i64 0, ptr %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %t, align 8
  %cmp = icmp slt i64 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %t, align 8
  %arrayidx = getelementptr inbounds [8 x ptr], ptr %threads, i64 0, i64 %1
  %call = call i32 @pthread_create(ptr noundef %arrayidx, ptr noundef null, ptr noundef @foo, ptr noundef null)
  store i32 %call, ptr %rc, align 4
  %2 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %3 = load i64, ptr %t, align 8
  %inc = add nsw i64 %3, 1
  store i64 %inc, ptr %t, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %t, align 8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc7, %for.end
  %4 = load i64, ptr %t, align 8
  %cmp3 = icmp slt i64 %4, 8
  br i1 %cmp3, label %for.body4, label %for.end9

for.body4:                                        ; preds = %for.cond2
  %5 = load i64, ptr %t, align 8
  %arrayidx5 = getelementptr inbounds [8 x ptr], ptr %threads, i64 0, i64 %5
  %6 = load ptr, ptr %arrayidx5, align 8
  %call6 = call i32 @"\01_pthread_join"(ptr noundef %6, ptr noundef %retval1)
  br label %for.inc7

for.inc7:                                         ; preds = %for.body4
  %7 = load i64, ptr %t, align 8
  %inc8 = add nsw i64 %7, 1
  store i64 %inc8, ptr %t, align 8
  br label %for.cond2, !llvm.loop !8

for.end9:                                         ; preds = %for.cond2
  %8 = load i8, ptr getelementptr inbounds ([1024 x i8], ptr @buffer, i64 0, i64 10), align 1
  %conv = sext i8 %8 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end9, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

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
!8 = distinct !{!8, !6}
