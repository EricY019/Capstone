; ModuleID = './code/183-17908flops-4.c'
source_filename = "./code/183-17908flops-4.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@A0 = global double 1.000000e+00, align 8
@A1 = global double 0xBFC5555555559705, align 8
@A2 = global double 0x3F811111113AE9A3, align 8
@A3 = global double 0x3F2A01A03FB1CA71, align 8
@A4 = global double 0x3EC71DF284AA3566, align 8
@A5 = global double 0x3E5AEB5A8CF8A426, align 8
@A6 = global double 0x3DE68DF75229C1A6, align 8
@B0 = global double 1.000000e+00, align 8
@B1 = global double 0xBFDFFFFFFFFF8156, align 8
@B2 = global double 0x3FA5555555290224, align 8
@B3 = global double 0xBF56C16BFFE76516, align 8
@B4 = global double 0x3EFA019528242DB7, align 8
@B5 = global double 0xBE927BB3D47DDB8E, align 8
@B6 = global double 0x3E2157B275DF182A, align 8
@C0 = global double 1.000000e+00, align 8
@C1 = global double 0x3FEFFFFFFE37B3E2, align 8
@C2 = global double 0x3FDFFFFFCC2BA4B8, align 8
@C3 = global double 0x3FC555587C476915, align 8
@C4 = global double 0x3FA5555B7E795548, align 8
@C5 = global double 0x3F810D9A4AD9120C, align 8
@C6 = global double 0x3F5713187EDB8C05, align 8
@C7 = global double 0x3F26C077C8173F3A, align 8
@C8 = global double 0x3F049D03FE04B1CF, align 8
@D1 = global double 0x3FA47AE143138374, align 8
@D2 = global double 9.600000e-04, align 8
@D3 = global double 0x3EB4B05A0FF4A728, align 8
@E2 = global double 4.800000e-04, align 8
@E3 = global double 4.110510e-07, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"   FLOPS C Program (Double Precision), V2.0 18 Dec 1992\0A\0A\00", align 1
@TLimit = global double 0.000000e+00, align 8
@piref = global double 0.000000e+00, align 8
@one = global double 0.000000e+00, align 8
@two = global double 0.000000e+00, align 8
@three = global double 0.000000e+00, align 8
@four = global double 0.000000e+00, align 8
@five = global double 0.000000e+00, align 8
@scale = global double 0.000000e+00, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"   Module     Error        RunTime      MFLOPS\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"                            (usec)\0A\00", align 1
@sa = global double 0.000000e+00, align 8
@sb = global double 0.000000e+00, align 8
@sc = global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"     4   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@nulltime = global double 0.000000e+00, align 8
@TimeArray = global [3 x double] zeroinitializer, align 8
@T = global [36 x double] zeroinitializer, align 8
@sd = global double 0.000000e+00, align 8
@piprg = global double 0.000000e+00, align 8
@pierr = global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
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
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i64 15625, ptr %loops, align 8
  store double 1.000000e+00, ptr @TLimit, align 8
  store i64 512000000, ptr %NLimit, align 8
  store double 0x400921FB54442D18, ptr @piref, align 8
  store double 1.000000e+00, ptr @one, align 8
  store double 2.000000e+00, ptr @two, align 8
  store double 3.000000e+00, ptr @three, align 8
  store double 4.000000e+00, ptr @four, align 8
  store double 5.000000e+00, ptr @five, align 8
  %0 = load double, ptr @one, align 8
  store double %0, ptr @scale, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %1 = load i64, ptr %loops, align 8
  %mul = mul nsw i64 %1, 10000
  store i64 %mul, ptr %m, align 8
  %2 = load double, ptr @A3, align 8
  %fneg = fneg double %2
  store double %fneg, ptr @A3, align 8
  %3 = load double, ptr @A5, align 8
  %fneg4 = fneg double %3
  store double %fneg4, ptr @A5, align 8
  %4 = load double, ptr @piref, align 8
  %5 = load double, ptr @three, align 8
  %6 = load i64, ptr %m, align 8
  %conv = sitofp i64 %6 to double
  %mul5 = fmul double %5, %conv
  %div = fdiv double %4, %mul5
  store double %div, ptr %x, align 8
  store double 0.000000e+00, ptr %s, align 8
  store double 0.000000e+00, ptr %v, align 8
  store i64 1, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i64, ptr %i, align 8
  %8 = load i64, ptr %m, align 8
  %sub = sub nsw i64 %8, 1
  %cmp = icmp sle i64 %7, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, ptr %i, align 8
  %conv7 = sitofp i64 %9 to double
  %10 = load double, ptr %x, align 8
  %mul8 = fmul double %conv7, %10
  store double %mul8, ptr %u, align 8
  %11 = load double, ptr %u, align 8
  %12 = load double, ptr %u, align 8
  %mul9 = fmul double %11, %12
  store double %mul9, ptr %w, align 8
  %13 = load double, ptr %s, align 8
  %14 = load double, ptr %w, align 8
  %15 = load double, ptr %w, align 8
  %16 = load double, ptr %w, align 8
  %17 = load double, ptr %w, align 8
  %18 = load double, ptr %w, align 8
  %19 = load double, ptr @B6, align 8
  %20 = load double, ptr %w, align 8
  %21 = load double, ptr @B5, align 8
  %22 = call double @llvm.fmuladd.f64(double %19, double %20, double %21)
  %23 = load double, ptr @B4, align 8
  %24 = call double @llvm.fmuladd.f64(double %18, double %22, double %23)
  %25 = load double, ptr @B3, align 8
  %26 = call double @llvm.fmuladd.f64(double %17, double %24, double %25)
  %27 = load double, ptr @B2, align 8
  %28 = call double @llvm.fmuladd.f64(double %16, double %26, double %27)
  %29 = load double, ptr @B1, align 8
  %30 = call double @llvm.fmuladd.f64(double %15, double %28, double %29)
  %31 = call double @llvm.fmuladd.f64(double %14, double %30, double %13)
  %32 = load double, ptr @one, align 8
  %add = fadd double %31, %32
  store double %add, ptr %s, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i64, ptr %i, align 8
  %inc = add nsw i64 %33, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %34 = load double, ptr @piref, align 8
  %35 = load double, ptr @three, align 8
  %div16 = fdiv double %34, %35
  store double %div16, ptr %u, align 8
  %36 = load double, ptr %u, align 8
  %37 = load double, ptr %u, align 8
  %mul17 = fmul double %36, %37
  store double %mul17, ptr %w, align 8
  %38 = load double, ptr %w, align 8
  %39 = load double, ptr %w, align 8
  %40 = load double, ptr %w, align 8
  %41 = load double, ptr %w, align 8
  %42 = load double, ptr %w, align 8
  %43 = load double, ptr @B6, align 8
  %44 = load double, ptr %w, align 8
  %45 = load double, ptr @B5, align 8
  %46 = call double @llvm.fmuladd.f64(double %43, double %44, double %45)
  %47 = load double, ptr @B4, align 8
  %48 = call double @llvm.fmuladd.f64(double %42, double %46, double %47)
  %49 = load double, ptr @B3, align 8
  %50 = call double @llvm.fmuladd.f64(double %41, double %48, double %49)
  %51 = load double, ptr @B2, align 8
  %52 = call double @llvm.fmuladd.f64(double %40, double %50, double %51)
  %53 = load double, ptr @B1, align 8
  %54 = call double @llvm.fmuladd.f64(double %39, double %52, double %53)
  %55 = load double, ptr @one, align 8
  %56 = call double @llvm.fmuladd.f64(double %38, double %54, double %55)
  store double %56, ptr @sa, align 8
  %57 = load double, ptr %x, align 8
  %58 = load double, ptr @sa, align 8
  %59 = load double, ptr @one, align 8
  %add24 = fadd double %58, %59
  %60 = load double, ptr @two, align 8
  %61 = load double, ptr %s, align 8
  %62 = call double @llvm.fmuladd.f64(double %60, double %61, double %add24)
  %mul26 = fmul double %57, %62
  %63 = load double, ptr @two, align 8
  %div27 = fdiv double %mul26, %63
  store double %div27, ptr @sa, align 8
  %64 = load double, ptr @piref, align 8
  %65 = load double, ptr @three, align 8
  %div28 = fdiv double %64, %65
  store double %div28, ptr %u, align 8
  %66 = load double, ptr %u, align 8
  %67 = load double, ptr %u, align 8
  %mul29 = fmul double %66, %67
  store double %mul29, ptr %w, align 8
  %68 = load double, ptr %u, align 8
  %69 = load double, ptr @A6, align 8
  %70 = load double, ptr %w, align 8
  %71 = load double, ptr @A5, align 8
  %72 = call double @llvm.fmuladd.f64(double %69, double %70, double %71)
  %73 = load double, ptr %w, align 8
  %74 = load double, ptr @A4, align 8
  %75 = call double @llvm.fmuladd.f64(double %72, double %73, double %74)
  %76 = load double, ptr %w, align 8
  %77 = load double, ptr @A3, align 8
  %78 = call double @llvm.fmuladd.f64(double %75, double %76, double %77)
  %79 = load double, ptr %w, align 8
  %80 = load double, ptr @A2, align 8
  %81 = call double @llvm.fmuladd.f64(double %78, double %79, double %80)
  %82 = load double, ptr %w, align 8
  %83 = load double, ptr @A1, align 8
  %84 = call double @llvm.fmuladd.f64(double %81, double %82, double %83)
  %85 = load double, ptr %w, align 8
  %86 = load double, ptr @A0, align 8
  %87 = call double @llvm.fmuladd.f64(double %84, double %85, double %86)
  %mul36 = fmul double %68, %87
  store double %mul36, ptr @sb, align 8
  %88 = load double, ptr @sa, align 8
  %89 = load double, ptr @sb, align 8
  %sub37 = fsub double %88, %89
  store double %sub37, ptr @sc, align 8
  %90 = load double, ptr @sc, align 8
  %mul38 = fmul double %90, 1.000000e-30
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %mul38, double noundef 0.000000e+00, double noundef 0.000000e+00)
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
