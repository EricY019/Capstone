; ModuleID = './code/102-5437ia32_rdtsc_clock.c'
source_filename = "./code/102-5437ia32_rdtsc_clock.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.timespec = type { i64, i64 }

@proc_timebase_MHz = global i64 2000, align 8
@.str = private unnamed_addr constant [33 x i8] c"RESULT : clock_gettime() %Lu ns\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @ia32_getTime() #0 {
entry:
  %call = call i64 @ia32_cputime()
  %mul = mul i64 %call, 1000
  %0 = load i64, ptr @proc_timebase_MHz, align 8
  %div = udiv i64 %mul, %0
  ret i64 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i64 @ia32_cputime() #0 {
entry:
  ret i64 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %start = alloca %struct.timespec, align 8
  %stop = alloca %struct.timespec, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  %useless = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 1000000, ptr %n, align 4
  %call = call i32 @clock_gettime(i32 noundef 6, ptr noundef %start)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i64 @ia32_getTime()
  store i64 %call1, ptr %useless, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call2 = call i32 @clock_gettime(i32 noundef 6, ptr noundef %stop)
  %tv_nsec = getelementptr inbounds %struct.timespec, ptr %start, i32 0, i32 1
  %3 = load i64, ptr %tv_nsec, align 8
  store i64 %3, ptr %t1, align 8
  %tv_sec = getelementptr inbounds %struct.timespec, ptr %start, i32 0, i32 0
  %4 = load i64, ptr %tv_sec, align 8
  %mul = mul nsw i64 %4, 1000000000
  %5 = load i64, ptr %t1, align 8
  %add = add i64 %5, %mul
  store i64 %add, ptr %t1, align 8
  %tv_nsec3 = getelementptr inbounds %struct.timespec, ptr %stop, i32 0, i32 1
  %6 = load i64, ptr %tv_nsec3, align 8
  store i64 %6, ptr %t2, align 8
  %tv_sec4 = getelementptr inbounds %struct.timespec, ptr %stop, i32 0, i32 0
  %7 = load i64, ptr %tv_sec4, align 8
  %mul5 = mul nsw i64 %7, 1000000000
  %8 = load i64, ptr %t2, align 8
  %add6 = add i64 %8, %mul5
  store i64 %add6, ptr %t2, align 8
  %9 = load i64, ptr %t2, align 8
  %10 = load i64, ptr %t1, align 8
  %sub = sub i64 %9, %10
  %11 = load i32, ptr %n, align 4
  %conv = zext i32 %11 to i64
  %div = udiv i64 %sub, %conv
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %div)
  ret i32 0
}

declare i32 @clock_gettime(i32 noundef, ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

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
