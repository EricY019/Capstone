; ModuleID = './code/192-1700pi_serial.c'
source_filename = "./code/192-1700pi_serial.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [17 x i8] c"num_steps = %ld\0A\00", align 1
@num_steps = internal global i64 99000000, align 8
@step = global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"Pi is: %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca double, align 8
  %pi = alloca double, align 8
  %sum = alloca double, align 8
  store i32 0, ptr %retval, align 4
  store double 0.000000e+00, ptr %sum, align 8
  %0 = load i64, ptr @num_steps, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %0)
  %1 = load i64, ptr @num_steps, align 8
  %conv = sitofp i64 %1 to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, ptr @step, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %conv1 = sext i32 %2 to i64
  %3 = load i64, ptr @num_steps, align 8
  %cmp = icmp slt i64 %conv1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4
  %conv3 = sitofp i32 %4 to double
  %add = fadd double %conv3, 5.000000e-01
  %5 = load double, ptr @step, align 8
  %mul = fmul double %add, %5
  store double %mul, ptr %x, align 8
  %6 = load double, ptr %sum, align 8
  %7 = load double, ptr %x, align 8
  %8 = load double, ptr %x, align 8
  %9 = call double @llvm.fmuladd.f64(double %7, double %8, double 1.000000e+00)
  %div5 = fdiv double 4.000000e+00, %9
  %add6 = fadd double %6, %div5
  store double %add6, ptr %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %11 = load double, ptr @step, align 8
  %12 = load double, ptr %sum, align 8
  %mul7 = fmul double %11, %12
  store double %mul7, ptr %pi, align 8
  %13 = load double, ptr %pi, align 8
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %13)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

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
