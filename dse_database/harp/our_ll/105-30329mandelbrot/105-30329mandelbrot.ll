; ModuleID = 'code/105-30329mandelbrot.c'
source_filename = "code/105-30329mandelbrot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @dbl(double %f) #0 {
entry:
  %f.addr = alloca double, align 8
  store double %f, double* %f.addr, align 8
  %0 = load double, double* %f.addr, align 8
  %1 = load double, double* %f.addr, align 8
  %add = fadd double %0, %1
  ret double %add
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
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
  store i32 0, i32* %retval, align 4
  store i32 1000, i32* %iter, align 4
  store double 2.000000e+00, double* %limit, align 8
  store i32 400, i32* %w, align 4
  %0 = load i32, i32* %w, align 4
  store i32 %0, i32* %h, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %entry
  %1 = load i32, i32* %y, align 4
  %2 = load i32, i32* %h, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc25, %for.body
  %3 = load i32, i32* %x, align 4
  %4 = load i32, i32* %w, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body3, label %for.end27

for.body3:                                        ; preds = %for.cond1
  store double 0.000000e+00, double* %zr, align 8
  store double 0.000000e+00, double* %zi, align 8
  store double 0.000000e+00, double* %zr2, align 8
  store double 0.000000e+00, double* %zi2, align 8
  %5 = load i32, i32* %x, align 4
  %conv = sitofp i32 %5 to double
  %call = call double @dbl(double %conv)
  %6 = load i32, i32* %w, align 4
  %conv4 = sitofp i32 %6 to double
  %div = fdiv double %call, %conv4
  %sub = fsub double %div, 1.500000e+00
  store double %sub, double* %cr, align 8
  %7 = load i32, i32* %y, align 4
  %conv5 = sitofp i32 %7 to double
  %call6 = call double @dbl(double %conv5)
  %8 = load i32, i32* %h, align 4
  %conv7 = sitofp i32 %8 to double
  %div8 = fdiv double %call6, %conv7
  %sub9 = fsub double %div8, 1.000000e+00
  store double %sub9, double* %ci, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body3
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %iter, align 4
  %cmp11 = icmp slt i32 %9, %10
  br i1 %cmp11, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond10
  %11 = load double, double* %zr2, align 8
  %12 = load double, double* %zi2, align 8
  %sub14 = fsub double %11, %12
  %13 = load double, double* %cr, align 8
  %add = fadd double %sub14, %13
  store double %add, double* %tr, align 8
  %14 = load double, double* %zr, align 8
  %call15 = call double @dbl(double %14)
  %15 = load double, double* %zi, align 8
  %mul = fmul double %call15, %15
  %16 = load double, double* %ci, align 8
  %add16 = fadd double %mul, %16
  store double %add16, double* %ti, align 8
  %17 = load double, double* %tr, align 8
  store double %17, double* %zr, align 8
  %18 = load double, double* %ti, align 8
  store double %18, double* %zi, align 8
  %19 = load double, double* %zr, align 8
  %20 = load double, double* %zr, align 8
  %mul17 = fmul double %19, %20
  store double %mul17, double* %zr2, align 8
  %21 = load double, double* %zi, align 8
  %22 = load double, double* %zi, align 8
  %mul18 = fmul double %21, %22
  store double %mul18, double* %zi2, align 8
  %23 = load double, double* %zr2, align 8
  %24 = load double, double* %zi2, align 8
  %add19 = fadd double %23, %24
  %25 = load double, double* %limit, align 8
  %26 = load double, double* %limit, align 8
  %mul20 = fmul double %25, %26
  %cmp21 = fcmp ogt double %add19, %mul20
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %for.body13
  %call23 = call i32 @putchar(i32 48)
  br label %cont

if.end:                                           ; preds = %for.body13
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond10, !llvm.loop !4

for.end:                                          ; preds = %for.cond10
  %call24 = call i32 @putchar(i32 49)
  br label %cont

cont:                                             ; preds = %for.end, %if.then
  br label %for.inc25

for.inc25:                                        ; preds = %cont
  %28 = load i32, i32* %x, align 4
  %inc26 = add nsw i32 %28, 1
  store i32 %inc26, i32* %x, align 4
  br label %for.cond1, !llvm.loop !6

for.end27:                                        ; preds = %for.cond1
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %29 = load i32, i32* %y, align 4
  %inc29 = add nsw i32 %29, 1
  store i32 %inc29, i32* %y, align 4
  br label %for.cond, !llvm.loop !7

for.end30:                                        ; preds = %for.cond
  ret i32 0
}

declare dso_local i32 @putchar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
