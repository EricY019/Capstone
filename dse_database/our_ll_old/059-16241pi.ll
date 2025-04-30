; ModuleID = './code/059-16241pi.c'
source_filename = "./code/059-16241pi.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [43 x i8] c"pi is approximately %.16f, Error is %.16f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define double @pi_kernel(i32 noundef %n, double noundef %h) #0 {
entry:
  %n.addr = alloca i32, align 4
  %h.addr = alloca double, align 8
  %tmp = alloca double, align 8
  %x = alloca double, align 8
  %i = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store double %h, ptr %h.addr, align 8
  store double 0.000000e+00, ptr %tmp, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double, ptr %h.addr, align 8
  %3 = load i32, ptr %i, align 4
  %conv = sitofp i32 %3 to double
  %sub = fsub double %conv, 5.000000e-01
  %mul = fmul double %2, %sub
  store double %mul, ptr %x, align 8
  %4 = load double, ptr %x, align 8
  %5 = load double, ptr %x, align 8
  %6 = call double @llvm.fmuladd.f64(double %4, double %5, double 1.000000e+00)
  %div = fdiv double 4.000000e+00, %6
  %7 = load double, ptr %tmp, align 8
  %add = fadd double %7, %div
  store double %add, ptr %tmp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %9 = load double, ptr %tmp, align 8
  ret double %9
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %PI25DT = alloca double, align 8
  %pi = alloca double, align 8
  %h = alloca double, align 8
  %area = alloca double, align 8
  store i32 0, ptr %retval, align 4
  store i32 1000, ptr %n, align 4
  store double 0x400921FB54442D18, ptr %PI25DT, align 8
  %0 = load i32, ptr %n, align 4
  %conv = sitofp i32 %0 to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, ptr %h, align 8
  %1 = load i32, ptr %n, align 4
  %2 = load double, ptr %h, align 8
  %call = call double @pi_kernel(i32 noundef %1, double noundef %2)
  store double %call, ptr %area, align 8
  %3 = load double, ptr %h, align 8
  %4 = load double, ptr %area, align 8
  %mul = fmul double %3, %4
  store double %mul, ptr %pi, align 8
  %5 = load double, ptr %pi, align 8
  %6 = load double, ptr %pi, align 8
  %7 = load double, ptr %PI25DT, align 8
  %sub = fsub double %6, %7
  %8 = call double @llvm.fabs.f64(double %sub)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %5, double noundef %8)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

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
