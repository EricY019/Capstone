; ModuleID = 'code/183-17908flops-4.c'
source_filename = "code/183-17908flops-4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A0 = dso_local global double 1.000000e+00, align 8
@A1 = dso_local global double 0xBFC5555555559705, align 8
@A2 = dso_local global double 0x3F811111113AE9A3, align 8
@A3 = dso_local global double 0x3F2A01A03FB1CA71, align 8
@A4 = dso_local global double 0x3EC71DF284AA3566, align 8
@A5 = dso_local global double 0x3E5AEB5A8CF8A426, align 8
@A6 = dso_local global double 0x3DE68DF75229C1A6, align 8
@B0 = dso_local global double 1.000000e+00, align 8
@B1 = dso_local global double 0xBFDFFFFFFFFF8156, align 8
@B2 = dso_local global double 0x3FA5555555290224, align 8
@B3 = dso_local global double 0xBF56C16BFFE76516, align 8
@B4 = dso_local global double 0x3EFA019528242DB7, align 8
@B5 = dso_local global double 0xBE927BB3D47DDB8E, align 8
@B6 = dso_local global double 0x3E2157B275DF182A, align 8
@C0 = dso_local global double 1.000000e+00, align 8
@C1 = dso_local global double 0x3FEFFFFFFE37B3E2, align 8
@C2 = dso_local global double 0x3FDFFFFFCC2BA4B8, align 8
@C3 = dso_local global double 0x3FC555587C476915, align 8
@C4 = dso_local global double 0x3FA5555B7E795548, align 8
@C5 = dso_local global double 0x3F810D9A4AD9120C, align 8
@C6 = dso_local global double 0x3F5713187EDB8C05, align 8
@C7 = dso_local global double 0x3F26C077C8173F3A, align 8
@C8 = dso_local global double 0x3F049D03FE04B1CF, align 8
@D1 = dso_local global double 0x3FA47AE143138374, align 8
@D2 = dso_local global double 9.600000e-04, align 8
@D3 = dso_local global double 0x3EB4B05A0FF4A728, align 8
@E2 = dso_local global double 4.800000e-04, align 8
@E3 = dso_local global double 4.110510e-07, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"   FLOPS C Program (Double Precision), V2.0 18 Dec 1992\0A\0A\00", align 1
@TLimit = dso_local global double 0.000000e+00, align 8
@piref = dso_local global double 0.000000e+00, align 8
@one = dso_local global double 0.000000e+00, align 8
@two = dso_local global double 0.000000e+00, align 8
@three = dso_local global double 0.000000e+00, align 8
@four = dso_local global double 0.000000e+00, align 8
@five = dso_local global double 0.000000e+00, align 8
@scale = dso_local global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"   Module     Error        RunTime      MFLOPS\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"                            (usec)\0A\00", align 1
@sa = dso_local global double 0.000000e+00, align 8
@sb = dso_local global double 0.000000e+00, align 8
@sc = dso_local global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"     4   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@nulltime = dso_local global double 0.000000e+00, align 8
@TimeArray = dso_local global [3 x double] zeroinitializer, align 16
@T = dso_local global [36 x double] zeroinitializer, align 16
@sd = dso_local global double 0.000000e+00, align 8
@piprg = dso_local global double 0.000000e+00, align 8
@pierr = dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca double, align 8
  %u = alloca double, align 8
  %v = alloca double, align 8
  %w = alloca double, align 8
  %x = alloca double, align 8
  %loops = alloca i64, align 8
  %NLimit = alloca i64, align 8
  %i = alloca i64, align 8
  %m = alloca i64, align 8
  %n = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  store i64 15625, i64* %loops, align 8
  store double 1.000000e+00, double* @TLimit, align 8
  store i64 512000000, i64* %NLimit, align 8
  store double 0x400921FB54442D18, double* @piref, align 8
  store double 1.000000e+00, double* @one, align 8
  store double 2.000000e+00, double* @two, align 8
  store double 3.000000e+00, double* @three, align 8
  store double 4.000000e+00, double* @four, align 8
  store double 5.000000e+00, double* @five, align 8
  %0 = load double, double* @one, align 8
  store double %0, double* @scale, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %1 = load i64, i64* %loops, align 8
  %mul = mul nsw i64 %1, 10000
  store i64 %mul, i64* %m, align 8
  %2 = load double, double* @A3, align 8
  %fneg = fneg double %2
  store double %fneg, double* @A3, align 8
  %3 = load double, double* @A5, align 8
  %fneg4 = fneg double %3
  store double %fneg4, double* @A5, align 8
  %4 = load double, double* @piref, align 8
  %5 = load double, double* @three, align 8
  %6 = load i64, i64* %m, align 8
  %conv = sitofp i64 %6 to double
  %mul5 = fmul double %5, %conv
  %div = fdiv double %4, %mul5
  store double %div, double* %x, align 8
  store double 0.000000e+00, double* %s, align 8
  store double 0.000000e+00, double* %v, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i64, i64* %i, align 8
  %8 = load i64, i64* %m, align 8
  %sub = sub nsw i64 %8, 1
  %cmp = icmp sle i64 %7, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, i64* %i, align 8
  %conv7 = sitofp i64 %9 to double
  %10 = load double, double* %x, align 8
  %mul8 = fmul double %conv7, %10
  store double %mul8, double* %u, align 8
  %11 = load double, double* %u, align 8
  %12 = load double, double* %u, align 8
  %mul9 = fmul double %11, %12
  store double %mul9, double* %w, align 8
  %13 = load double, double* %s, align 8
  %14 = load double, double* %w, align 8
  %15 = load double, double* %w, align 8
  %16 = load double, double* %w, align 8
  %17 = load double, double* %w, align 8
  %18 = load double, double* %w, align 8
  %19 = load double, double* @B6, align 8
  %20 = load double, double* %w, align 8
  %mul10 = fmul double %19, %20
  %21 = load double, double* @B5, align 8
  %add = fadd double %mul10, %21
  %mul11 = fmul double %18, %add
  %22 = load double, double* @B4, align 8
  %add12 = fadd double %mul11, %22
  %mul13 = fmul double %17, %add12
  %23 = load double, double* @B3, align 8
  %add14 = fadd double %mul13, %23
  %mul15 = fmul double %16, %add14
  %24 = load double, double* @B2, align 8
  %add16 = fadd double %mul15, %24
  %mul17 = fmul double %15, %add16
  %25 = load double, double* @B1, align 8
  %add18 = fadd double %mul17, %25
  %mul19 = fmul double %14, %add18
  %add20 = fadd double %13, %mul19
  %26 = load double, double* @one, align 8
  %add21 = fadd double %add20, %26
  store double %add21, double* %s, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i64, i64* %i, align 8
  %inc = add nsw i64 %27, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %28 = load double, double* @piref, align 8
  %29 = load double, double* @three, align 8
  %div22 = fdiv double %28, %29
  store double %div22, double* %u, align 8
  %30 = load double, double* %u, align 8
  %31 = load double, double* %u, align 8
  %mul23 = fmul double %30, %31
  store double %mul23, double* %w, align 8
  %32 = load double, double* %w, align 8
  %33 = load double, double* %w, align 8
  %34 = load double, double* %w, align 8
  %35 = load double, double* %w, align 8
  %36 = load double, double* %w, align 8
  %37 = load double, double* @B6, align 8
  %38 = load double, double* %w, align 8
  %mul24 = fmul double %37, %38
  %39 = load double, double* @B5, align 8
  %add25 = fadd double %mul24, %39
  %mul26 = fmul double %36, %add25
  %40 = load double, double* @B4, align 8
  %add27 = fadd double %mul26, %40
  %mul28 = fmul double %35, %add27
  %41 = load double, double* @B3, align 8
  %add29 = fadd double %mul28, %41
  %mul30 = fmul double %34, %add29
  %42 = load double, double* @B2, align 8
  %add31 = fadd double %mul30, %42
  %mul32 = fmul double %33, %add31
  %43 = load double, double* @B1, align 8
  %add33 = fadd double %mul32, %43
  %mul34 = fmul double %32, %add33
  %44 = load double, double* @one, align 8
  %add35 = fadd double %mul34, %44
  store double %add35, double* @sa, align 8
  %45 = load double, double* %x, align 8
  %46 = load double, double* @sa, align 8
  %47 = load double, double* @one, align 8
  %add36 = fadd double %46, %47
  %48 = load double, double* @two, align 8
  %49 = load double, double* %s, align 8
  %mul37 = fmul double %48, %49
  %add38 = fadd double %add36, %mul37
  %mul39 = fmul double %45, %add38
  %50 = load double, double* @two, align 8
  %div40 = fdiv double %mul39, %50
  store double %div40, double* @sa, align 8
  %51 = load double, double* @piref, align 8
  %52 = load double, double* @three, align 8
  %div41 = fdiv double %51, %52
  store double %div41, double* %u, align 8
  %53 = load double, double* %u, align 8
  %54 = load double, double* %u, align 8
  %mul42 = fmul double %53, %54
  store double %mul42, double* %w, align 8
  %55 = load double, double* %u, align 8
  %56 = load double, double* @A6, align 8
  %57 = load double, double* %w, align 8
  %mul43 = fmul double %56, %57
  %58 = load double, double* @A5, align 8
  %add44 = fadd double %mul43, %58
  %59 = load double, double* %w, align 8
  %mul45 = fmul double %add44, %59
  %60 = load double, double* @A4, align 8
  %add46 = fadd double %mul45, %60
  %61 = load double, double* %w, align 8
  %mul47 = fmul double %add46, %61
  %62 = load double, double* @A3, align 8
  %add48 = fadd double %mul47, %62
  %63 = load double, double* %w, align 8
  %mul49 = fmul double %add48, %63
  %64 = load double, double* @A2, align 8
  %add50 = fadd double %mul49, %64
  %65 = load double, double* %w, align 8
  %mul51 = fmul double %add50, %65
  %66 = load double, double* @A1, align 8
  %add52 = fadd double %mul51, %66
  %67 = load double, double* %w, align 8
  %mul53 = fmul double %add52, %67
  %68 = load double, double* @A0, align 8
  %add54 = fadd double %mul53, %68
  %mul55 = fmul double %55, %add54
  store double %mul55, double* @sb, align 8
  %69 = load double, double* @sa, align 8
  %70 = load double, double* @sb, align 8
  %sub56 = fsub double %69, %70
  store double %sub56, double* @sc, align 8
  %71 = load double, double* @sc, align 8
  %mul57 = fmul double %71, 1.000000e-30
  %call58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), double %mul57, double 0.000000e+00, double 0.000000e+00)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

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
