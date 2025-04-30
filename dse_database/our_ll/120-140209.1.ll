; ModuleID = 'code/120-140209.1.c'
source_filename = "code/120-140209.1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"%.0f + %.0f + %.0f is a triplet.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"The product a*b*c is %.0f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %__x.addr.i37 = alloca double, align 8
  %__y.addr.i38 = alloca double, align 8
  %__x.addr.i34 = alloca double, align 8
  %__y.addr.i35 = alloca double, align 8
  %__x.addr.i = alloca double, align 8
  %__y.addr.i = alloca double, align 8
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %sum = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1000, i32* %sum, align 4
  store double 0.000000e+00, double* %a, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %entry
  %0 = load double, double* %a, align 8
  %1 = load i32, i32* %sum, align 4
  %conv = sitofp i32 %1 to double
  %cmp = fcmp olt double %0, %conv
  br i1 %cmp, label %for.body, label %for.end33

for.body:                                         ; preds = %for.cond
  %2 = load double, double* %a, align 8
  %add = fadd double %2, 1.000000e+00
  store double %add, double* %b, align 8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc28, %for.body
  %3 = load double, double* %b, align 8
  %4 = load i32, i32* %sum, align 4
  %conv3 = sitofp i32 %4 to double
  %cmp4 = fcmp olt double %3, %conv3
  br i1 %cmp4, label %for.body6, label %for.end30

for.body6:                                        ; preds = %for.cond2
  %5 = load double, double* %b, align 8
  %add7 = fadd double %5, 1.000000e+00
  store double %add7, double* %c, align 8
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body6
  %6 = load double, double* %c, align 8
  %7 = load i32, i32* %sum, align 4
  %conv9 = sitofp i32 %7 to double
  %cmp10 = fcmp olt double %6, %conv9
  br i1 %cmp10, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond8
  %8 = load double, double* %a, align 8
  %9 = load double, double* %b, align 8
  %add13 = fadd double %8, %9
  %10 = load double, double* %c, align 8
  %add14 = fadd double %add13, %10
  %11 = load i32, i32* %sum, align 4
  %conv15 = sitofp i32 %11 to double
  %cmp16 = fcmp oeq double %add14, %conv15
  br i1 %cmp16, label %if.then, label %if.end27

if.then:                                          ; preds = %for.body12
  %12 = load double, double* %a, align 8
  store double %12, double* %__x.addr.i37, align 8
  store double 2.000000e+00, double* %__y.addr.i38, align 8
  %13 = load double, double* %__x.addr.i37, align 8
  %14 = load double, double* %__y.addr.i38, align 8
  %call.i39 = call double @pow(double %13, double %14) #3
  %15 = load double, double* %b, align 8
  store double %15, double* %__x.addr.i34, align 8
  store double 2.000000e+00, double* %__y.addr.i35, align 8
  %16 = load double, double* %__x.addr.i34, align 8
  %17 = load double, double* %__y.addr.i35, align 8
  %call.i36 = call double @pow(double %16, double %17) #3
  %add19 = fadd double %call.i39, %call.i36
  %18 = load double, double* %c, align 8
  store double %18, double* %__x.addr.i, align 8
  store double 2.000000e+00, double* %__y.addr.i, align 8
  %19 = load double, double* %__x.addr.i, align 8
  %20 = load double, double* %__y.addr.i, align 8
  %call.i = call double @pow(double %19, double %20) #3
  %cmp21 = fcmp oeq double %add19, %call.i
  br i1 %cmp21, label %if.then23, label %if.end

if.then23:                                        ; preds = %if.then
  %21 = load double, double* %a, align 8
  %22 = load double, double* %b, align 8
  %23 = load double, double* %c, align 8
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), double %21, double %22, double %23)
  %24 = load double, double* %a, align 8
  %25 = load double, double* %b, align 8
  %mul = fmul double %24, %25
  %26 = load double, double* %c, align 8
  %mul25 = fmul double %mul, %26
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), double %mul25)
  br label %if.end

if.end:                                           ; preds = %if.then23, %if.then
  br label %if.end27

if.end27:                                         ; preds = %if.end, %for.body12
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %27 = load double, double* %c, align 8
  %inc = fadd double %27, 1.000000e+00
  store double %inc, double* %c, align 8
  br label %for.cond8, !llvm.loop !4

for.end:                                          ; preds = %for.cond8
  br label %for.inc28

for.inc28:                                        ; preds = %for.end
  %28 = load double, double* %b, align 8
  %inc29 = fadd double %28, 1.000000e+00
  store double %inc29, double* %b, align 8
  br label %for.cond2, !llvm.loop !6

for.end30:                                        ; preds = %for.cond2
  br label %for.inc31

for.inc31:                                        ; preds = %for.end30
  %29 = load double, double* %a, align 8
  %inc32 = fadd double %29, 1.000000e+00
  store double %inc32, double* %a, align 8
  br label %for.cond, !llvm.loop !7

for.end33:                                        ; preds = %for.cond
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
