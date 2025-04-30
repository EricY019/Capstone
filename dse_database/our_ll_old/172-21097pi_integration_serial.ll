; ModuleID = './code/172-21097pi_integration_serial.c'
source_filename = "./code/172-21097pi_integration_serial.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [18 x i8] c"Value of pi = %g\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Expended wall clock time = %.20f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %num_steps = alloca i32, align 4
  %x = alloca double, align 8
  %sum = alloca double, align 8
  %step = alloca double, align 8
  %pi = alloca double, align 8
  %t_start = alloca i64, align 8
  %t_end = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 500000000, ptr %num_steps, align 4
  store double 0.000000e+00, ptr %x, align 8
  store double 0.000000e+00, ptr %sum, align 8
  %0 = load i32, ptr %num_steps, align 4
  %conv = sitofp i32 %0 to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, ptr %step, align 8
  %call = call i64 @"\01_clock"()
  store i64 %call, ptr %t_start, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %num_steps, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %conv2 = sitofp i32 %3 to double
  %add = fadd double %conv2, 5.000000e-01
  %4 = load double, ptr %step, align 8
  %mul = fmul double %add, %4
  store double %mul, ptr %x, align 8
  %5 = load double, ptr %sum, align 8
  %6 = load double, ptr %x, align 8
  %7 = load double, ptr %x, align 8
  %8 = call double @llvm.fmuladd.f64(double %6, double %7, double 1.000000e+00)
  %div4 = fdiv double 4.000000e+00, %8
  %add5 = fadd double %5, %div4
  store double %add5, ptr %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %10 = load double, ptr %step, align 8
  %11 = load double, ptr %sum, align 8
  %mul6 = fmul double %10, %11
  store double %mul6, ptr %pi, align 8
  %call7 = call i64 @"\01_clock"()
  store i64 %call7, ptr %t_end, align 8
  %12 = load double, ptr %pi, align 8
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %12)
  %13 = load i64, ptr %t_end, align 8
  %14 = load i64, ptr %t_start, align 8
  %sub = sub i64 %13, %14
  %conv9 = uitofp i64 %sub to double
  %div10 = fdiv double %conv9, 1.000000e+06
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %div10)
  ret i32 0
}

declare i64 @"\01_clock"() #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
