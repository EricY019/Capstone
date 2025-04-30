; ModuleID = 'code/384-12376complex.c'
source_filename = "code/384-12376complex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [62 x i8] c"https://mitpress.mit.edu/sicp/full-text/sicp/book/node43.html\00", align 1
@url1 = dso_local global i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"http://en.cppreference.com/w/c/numeric/complex\00", align 1
@url2 = dso_local global i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"z = %.1f + %.1fI\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"magnitue(z) = %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"phase angle(z) = %f\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"thus %.1f%+.1fi cartesian as polar becomes rho=%f theta=%f\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"\0ASee also:\0A%s\0A%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %z = alloca { float, float }, align 4
  %coerce = alloca { double, double }, align 8
  %coerce24 = alloca { double, double }, align 8
  %coerce45 = alloca { double, double }, align 8
  %coerce53 = alloca { double, double }, align 8
  %z.realp = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.imagp = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  store float 2.300000e+01, float* %z.realp, align 4
  store float 5.000000e+00, float* %z.imagp, align 4
  %z.realp1 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.real = load float, float* %z.realp1, align 4
  %z.imagp2 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  %z.imag = load float, float* %z.imagp2, align 4
  %conv = fpext float %z.real to double
  %conv3 = fpext float %z.imag to double
  %z.realp4 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.real5 = load float, float* %z.realp4, align 4
  %z.imagp6 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  %z.imag7 = load float, float* %z.imagp6, align 4
  %conv8 = fpext float %z.real5 to double
  %conv9 = fpext float %z.imag7 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), double %conv, double %conv9)
  %z.realp10 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.real11 = load float, float* %z.realp10, align 4
  %z.imagp12 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  %z.imag13 = load float, float* %z.imagp12, align 4
  %conv14 = fpext float %z.real11 to double
  %conv15 = fpext float %z.imag13 to double
  %coerce.realp = getelementptr inbounds { double, double }, { double, double }* %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { double, double }, { double, double }* %coerce, i32 0, i32 1
  store double %conv14, double* %coerce.realp, align 8
  store double %conv15, double* %coerce.imagp, align 8
  %0 = getelementptr inbounds { double, double }, { double, double }* %coerce, i32 0, i32 0
  %1 = load double, double* %0, align 8
  %2 = getelementptr inbounds { double, double }, { double, double }* %coerce, i32 0, i32 1
  %3 = load double, double* %2, align 8
  %call16 = call double @cabs(double %1, double %3) #3
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), double %call16)
  %z.realp18 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.real19 = load float, float* %z.realp18, align 4
  %z.imagp20 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  %z.imag21 = load float, float* %z.imagp20, align 4
  %conv22 = fpext float %z.real19 to double
  %conv23 = fpext float %z.imag21 to double
  %coerce24.realp = getelementptr inbounds { double, double }, { double, double }* %coerce24, i32 0, i32 0
  %coerce24.imagp = getelementptr inbounds { double, double }, { double, double }* %coerce24, i32 0, i32 1
  store double %conv22, double* %coerce24.realp, align 8
  store double %conv23, double* %coerce24.imagp, align 8
  %4 = getelementptr inbounds { double, double }, { double, double }* %coerce24, i32 0, i32 0
  %5 = load double, double* %4, align 8
  %6 = getelementptr inbounds { double, double }, { double, double }* %coerce24, i32 0, i32 1
  %7 = load double, double* %6, align 8
  %call25 = call double @carg(double %5, double %7) #3
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), double %call25)
  %z.realp27 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.real28 = load float, float* %z.realp27, align 4
  %z.imagp29 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  %z.imag30 = load float, float* %z.imagp29, align 4
  %conv31 = fpext float %z.real28 to double
  %conv32 = fpext float %z.imag30 to double
  %z.realp33 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.real34 = load float, float* %z.realp33, align 4
  %z.imagp35 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  %z.imag36 = load float, float* %z.imagp35, align 4
  %conv37 = fpext float %z.real34 to double
  %conv38 = fpext float %z.imag36 to double
  %z.realp39 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.real40 = load float, float* %z.realp39, align 4
  %z.imagp41 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  %z.imag42 = load float, float* %z.imagp41, align 4
  %conv43 = fpext float %z.real40 to double
  %conv44 = fpext float %z.imag42 to double
  %coerce45.realp = getelementptr inbounds { double, double }, { double, double }* %coerce45, i32 0, i32 0
  %coerce45.imagp = getelementptr inbounds { double, double }, { double, double }* %coerce45, i32 0, i32 1
  store double %conv43, double* %coerce45.realp, align 8
  store double %conv44, double* %coerce45.imagp, align 8
  %8 = getelementptr inbounds { double, double }, { double, double }* %coerce45, i32 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = getelementptr inbounds { double, double }, { double, double }* %coerce45, i32 0, i32 1
  %11 = load double, double* %10, align 8
  %call46 = call double @cabs(double %9, double %11) #3
  %z.realp47 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 0
  %z.real48 = load float, float* %z.realp47, align 4
  %z.imagp49 = getelementptr inbounds { float, float }, { float, float }* %z, i32 0, i32 1
  %z.imag50 = load float, float* %z.imagp49, align 4
  %conv51 = fpext float %z.real48 to double
  %conv52 = fpext float %z.imag50 to double
  %coerce53.realp = getelementptr inbounds { double, double }, { double, double }* %coerce53, i32 0, i32 0
  %coerce53.imagp = getelementptr inbounds { double, double }, { double, double }* %coerce53, i32 0, i32 1
  store double %conv51, double* %coerce53.realp, align 8
  store double %conv52, double* %coerce53.imagp, align 8
  %12 = getelementptr inbounds { double, double }, { double, double }* %coerce53, i32 0, i32 0
  %13 = load double, double* %12, align 8
  %14 = getelementptr inbounds { double, double }, { double, double }* %coerce53, i32 0, i32 1
  %15 = load double, double* %14, align 8
  %call54 = call double @carg(double %13, double %15) #3
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), double %conv31, double %conv38, double %call46, double %call54)
  %16 = load i8*, i8** @url1, align 8
  %17 = load i8*, i8** @url2, align 8
  %call56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %16, i8* %17)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare dso_local double @cabs(double, double) #2

; Function Attrs: nounwind
declare dso_local double @carg(double, double) #2

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
