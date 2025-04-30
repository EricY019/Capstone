; ModuleID = './code/105-30329mandelbrot.c'
source_filename = "./code/105-30329mandelbrot.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define double @dbl(double noundef %f) #0 {
entry:
  %f.addr = alloca double, align 8
  store double %f, ptr %f.addr, align 8
  %0 = load double, ptr %f.addr, align 8
  %1 = load double, ptr %f.addr, align 8
  %add = fadd double %0, %1
  ret double %add
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %i = alloca i32, align 4
  %iter = alloca i32, align 4
  %limit = alloca double, align 8
  %zr = alloca double, align 8
  %zi = alloca double, align 8
  %zr2 = alloca double, align 8
  %zi2 = alloca double, align 8
  %cr = alloca double, align 8
  %ci = alloca double, align 8
  %tr = alloca double, align 8
  %ti = alloca double, align 8
  store i32 0, ptr %retval, align 4
  store i32 1000, ptr %iter, align 4
  store double 2.000000e+00, ptr %limit, align 8
  store i32 400, ptr %w, align 4
  %0 = load i32, ptr %w, align 4
  store i32 %0, ptr %h, align 4
  store i32 0, ptr %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %entry
  %1 = load i32, ptr %y, align 4
  %2 = load i32, ptr %h, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end28

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %x, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc23, %for.body
  %3 = load i32, ptr %x, align 4
  %4 = load i32, ptr %w, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body3, label %for.end25

for.body3:                                        ; preds = %for.cond1
  store double 0.000000e+00, ptr %zr, align 8
  store double 0.000000e+00, ptr %zi, align 8
  store double 0.000000e+00, ptr %zr2, align 8
  store double 0.000000e+00, ptr %zi2, align 8
  %5 = load i32, ptr %x, align 4
  %conv = sitofp i32 %5 to double
  %call = call double @dbl(double noundef %conv)
  %6 = load i32, ptr %w, align 4
  %conv4 = sitofp i32 %6 to double
  %div = fdiv double %call, %conv4
  %sub = fsub double %div, 1.500000e+00
  store double %sub, ptr %cr, align 8
  %7 = load i32, ptr %y, align 4
  %conv5 = sitofp i32 %7 to double
  %call6 = call double @dbl(double noundef %conv5)
  %8 = load i32, ptr %h, align 4
  %conv7 = sitofp i32 %8 to double
  %div8 = fdiv double %call6, %conv7
  %sub9 = fsub double %div8, 1.000000e+00
  store double %sub9, ptr %ci, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body3
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %iter, align 4
  %cmp11 = icmp slt i32 %9, %10
  br i1 %cmp11, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond10
  %11 = load double, ptr %zr2, align 8
  %12 = load double, ptr %zi2, align 8
  %sub14 = fsub double %11, %12
  %13 = load double, ptr %cr, align 8
  %add = fadd double %sub14, %13
  store double %add, ptr %tr, align 8
  %14 = load double, ptr %zr, align 8
  %call15 = call double @dbl(double noundef %14)
  %15 = load double, ptr %zi, align 8
  %16 = load double, ptr %ci, align 8
  %17 = call double @llvm.fmuladd.f64(double %call15, double %15, double %16)
  store double %17, ptr %ti, align 8
  %18 = load double, ptr %tr, align 8
  store double %18, ptr %zr, align 8
  %19 = load double, ptr %ti, align 8
  store double %19, ptr %zi, align 8
  %20 = load double, ptr %zr, align 8
  %21 = load double, ptr %zr, align 8
  %mul = fmul double %20, %21
  store double %mul, ptr %zr2, align 8
  %22 = load double, ptr %zi, align 8
  %23 = load double, ptr %zi, align 8
  %mul16 = fmul double %22, %23
  store double %mul16, ptr %zi2, align 8
  %24 = load double, ptr %zr2, align 8
  %25 = load double, ptr %zi2, align 8
  %add17 = fadd double %24, %25
  %26 = load double, ptr %limit, align 8
  %27 = load double, ptr %limit, align 8
  %mul18 = fmul double %26, %27
  %cmp19 = fcmp ogt double %add17, %mul18
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %for.body13
  %call21 = call i32 @putchar(i32 noundef 48)
  br label %cont

if.end:                                           ; preds = %for.body13
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, ptr %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond10, !llvm.loop !5

for.end:                                          ; preds = %for.cond10
  %call22 = call i32 @putchar(i32 noundef 49)
  br label %cont

cont:                                             ; preds = %for.end, %if.then
  br label %for.inc23

for.inc23:                                        ; preds = %cont
  %29 = load i32, ptr %x, align 4
  %inc24 = add nsw i32 %29, 1
  store i32 %inc24, ptr %x, align 4
  br label %for.cond1, !llvm.loop !7

for.end25:                                        ; preds = %for.cond1
  br label %for.inc26

for.inc26:                                        ; preds = %for.end25
  %30 = load i32, ptr %y, align 4
  %inc27 = add nsw i32 %30, 1
  store i32 %inc27, ptr %y, align 4
  br label %for.cond, !llvm.loop !8

for.end28:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

declare i32 @putchar(i32 noundef) #2

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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
