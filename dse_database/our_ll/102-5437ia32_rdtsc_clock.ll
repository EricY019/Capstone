; ModuleID = 'code/102-5437ia32_rdtsc_clock.c'
source_filename = "code/102-5437ia32_rdtsc_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@proc_timebase_MHz = dso_local global i64 2000, align 8
@.str = private unnamed_addr constant [33 x i8] c"RESULT : clock_gettime() %Lu ns\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ia32_getTime() #0 {
entry:
  %call = call i64 @ia32_cputime()
  %mul = mul i64 %call, 1000
  %0 = load i64, i64* @proc_timebase_MHz, align 8
  %div = udiv i64 %mul, %0
  ret i64 %div
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ia32_cputime() #0 {
entry:
  %lo = alloca i64, align 8
  %hi = alloca i64, align 8
  %0 = call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !4
  %asmresult = extractvalue { i64, i64 } %0, 0
  %asmresult1 = extractvalue { i64, i64 } %0, 1
  store i64 %asmresult, i64* %lo, align 8
  store i64 %asmresult1, i64* %hi, align 8
  %1 = load i64, i64* %hi, align 8
  %shl = shl i64 %1, 32
  %2 = load i64, i64* %lo, align 8
  %or = or i64 %shl, %2
  ret i64 %or
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %start = alloca %struct.timespec, align 8
  %stop = alloca %struct.timespec, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  %useless = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1000000, i32* %n, align 4
  %call = call i32 @clock_gettime(i32 1, %struct.timespec* %start) #3
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i64 @ia32_getTime()
  store i64 %call1, i64* %useless, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call2 = call i32 @clock_gettime(i32 1, %struct.timespec* %stop) #3
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %start, i32 0, i32 1
  %3 = load i64, i64* %tv_nsec, align 8
  store i64 %3, i64* %t1, align 8
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %start, i32 0, i32 0
  %4 = load i64, i64* %tv_sec, align 8
  %mul = mul nsw i64 %4, 1000000000
  %5 = load i64, i64* %t1, align 8
  %add = add i64 %5, %mul
  store i64 %add, i64* %t1, align 8
  %tv_nsec3 = getelementptr inbounds %struct.timespec, %struct.timespec* %stop, i32 0, i32 1
  %6 = load i64, i64* %tv_nsec3, align 8
  store i64 %6, i64* %t2, align 8
  %tv_sec4 = getelementptr inbounds %struct.timespec, %struct.timespec* %stop, i32 0, i32 0
  %7 = load i64, i64* %tv_sec4, align 8
  %mul5 = mul nsw i64 %7, 1000000000
  %8 = load i64, i64* %t2, align 8
  %add6 = add i64 %8, %mul5
  store i64 %add6, i64* %t2, align 8
  %9 = load i64, i64* %t2, align 8
  %10 = load i64, i64* %t1, align 8
  %sub = sub i64 %9, %10
  %11 = load i32, i32* %n, align 4
  %conv = zext i32 %11 to i64
  %div = udiv i64 %sub, %conv
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %div)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = !{i64 3248}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
