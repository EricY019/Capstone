; ModuleID = './code/186-11448000F_perf_001.c'
source_filename = "./code/186-11448000F_perf_001.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [9 x i8] c"pid: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define double @compute_pi_baseline(i64 noundef %N) #0 {
entry:
  %N.addr = alloca i64, align 8
  %pi = alloca double, align 8
  %dt = alloca double, align 8
  %i = alloca i64, align 8
  %x = alloca double, align 8
  store i64 %N, ptr %N.addr, align 8
  store double 0.000000e+00, ptr %pi, align 8
  %0 = load i64, ptr %N.addr, align 8
  %conv = uitofp i64 %0 to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, ptr %dt, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8
  %2 = load i64, ptr %N.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %i, align 8
  %conv2 = uitofp i64 %3 to double
  %4 = load i64, ptr %N.addr, align 8
  %conv3 = uitofp i64 %4 to double
  %div4 = fdiv double %conv2, %conv3
  store double %div4, ptr %x, align 8
  %5 = load double, ptr %dt, align 8
  %6 = load double, ptr %x, align 8
  %7 = load double, ptr %x, align 8
  %8 = call double @llvm.fmuladd.f64(double %6, double %7, double 1.000000e+00)
  %div5 = fdiv double %5, %8
  %9 = load double, ptr %pi, align 8
  %add = fadd double %9, %div5
  store double %add, ptr %pi, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, ptr %i, align 8
  %inc = add i64 %10, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %11 = load double, ptr %pi, align 8
  %mul = fmul double %11, 4.000000e+00
  ret double %mul
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @getpid()
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %call)
  %call2 = call i32 @"\01_sleep"(i32 noundef 10)
  %call3 = call double @compute_pi_baseline(i64 noundef 50000000)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #2

declare i32 @getpid() #2

declare i32 @"\01_sleep"(i32 noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
