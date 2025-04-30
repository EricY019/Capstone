; ModuleID = './code/121-13459pi.c'
source_filename = "./code/121-13459pi.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [48 x i8] c"Calculating PI using:\0A  %ld slices\0A  1 process\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"Obtained value for PI: %.16g\0ATime taken:            %.16g seconds\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %num_steps = alloca i64, align 8
  %step = alloca double, align 8
  %x = alloca double, align 8
  %sum = alloca double, align 8
  %pi = alloca double, align 8
  %taken = alloca double, align 8
  %start = alloca i64, align 8
  %stop = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i64 1000000000, ptr %num_steps, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i64 @atol(ptr noundef %2)
  store i64 %call, ptr %num_steps, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %num_steps, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %3)
  %call2 = call i64 @"\01_clock"()
  store i64 %call2, ptr %start, align 8
  store double 0.000000e+00, ptr %sum, align 8
  %4 = load i64, ptr %num_steps, align 8
  %conv = sitofp i64 %4 to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, ptr %step, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i64, ptr %i, align 8
  %6 = load i64, ptr %num_steps, align 8
  %cmp3 = icmp slt i64 %5, %6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, ptr %i, align 8
  %conv5 = sitofp i64 %7 to double
  %add = fadd double %conv5, 5.000000e-01
  %8 = load double, ptr %step, align 8
  %mul = fmul double %add, %8
  store double %mul, ptr %x, align 8
  %9 = load double, ptr %x, align 8
  %10 = load double, ptr %x, align 8
  %11 = call double @llvm.fmuladd.f64(double %9, double %10, double 1.000000e+00)
  %div7 = fdiv double 4.000000e+00, %11
  %12 = load double, ptr %sum, align 8
  %add8 = fadd double %12, %div7
  store double %add8, ptr %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64, ptr %i, align 8
  %inc = add nsw i64 %13, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %14 = load double, ptr %sum, align 8
  %15 = load double, ptr %step, align 8
  %mul9 = fmul double %14, %15
  store double %mul9, ptr %pi, align 8
  %call10 = call i64 @"\01_clock"()
  store i64 %call10, ptr %stop, align 8
  %16 = load i64, ptr %stop, align 8
  %17 = load i64, ptr %start, align 8
  %sub = sub i64 %16, %17
  %conv11 = uitofp i64 %sub to double
  %div12 = fdiv double %conv11, 1.000000e+06
  store double %div12, ptr %taken, align 8
  %18 = load double, ptr %pi, align 8
  %19 = load double, ptr %taken, align 8
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %18, double noundef %19)
  ret i32 0
}

declare i64 @atol(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i64 @"\01_clock"() #1

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
