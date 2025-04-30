; ModuleID = './code/384-12376complex.c'
source_filename = "./code/384-12376complex.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [62 x i8] c"https://mitpress.mit.edu/sicp/full-text/sicp/book/node43.html\00", align 1
@url1 = global ptr @.str, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"http://en.cppreference.com/w/c/numeric/complex\00", align 1
@url2 = global ptr @.str.1, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"z = %.1f + %.1fI\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"magnitue(z) = %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"phase angle(z) = %f\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"thus %.1f%+.1fi cartesian as polar becomes rho=%f theta=%f\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"\0ASee also:\0A%s\0A%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %z = alloca { float, float }, align 4
  %coerce = alloca { double, double }, align 8
  %coerce24 = alloca { double, double }, align 8
  %coerce45 = alloca { double, double }, align 8
  %coerce53 = alloca { double, double }, align 8
  %z.realp = getelementptr inbounds { float, float }, ptr %z, i32 0, i32 0
  %z.imagp = getelementptr inbounds { float, float }, ptr %z, i32 0, i32 1
  store float 2.300000e+01, ptr %z.realp, align 4
  store float 5.000000e+00, ptr %z.imagp, align 4
  %z.realp1 = getelementptr inbounds { float, float }, ptr %z, i32 0, i32 0
  %z.real = load float, ptr %z.realp1, align 4
  %z.imagp2 = getelementptr inbounds { float, float }, ptr %z, i32 0, i32 1
  %z.imag = load float, ptr %z.imagp2, align 4
  %conv = fpext float %z.real to double
  %conv3 = fpext float %z.imag to double
  %z.realp4 = getelementptr inbounds { float, float }, ptr %z, i32 0, i32 0
  %z.real5 = load float, ptr %z.realp4, align 4
  %z.imagp6 = getelementptr inbounds { float, float }, ptr %z, i32 0, i32 1
  %z.imag7 = load float, ptr %z.imagp6, align 4
  %conv8 = fpext float %z.real5 to double
  %conv9 = fpext float %z.imag7 to double
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %conv, double noundef %conv9)
  %z.realp10 = getelementptr inbounds { float, float }, ptr %z, i32 0, i32 0
  %z.real11 = load float, ptr %z.realp10, align 4
  %z.imagp12 = getelementptr inbounds { float, float }, ptr %z, i32 0, i32 1
  %z.imag13 = load float, ptr %z.imagp12, align 4
  %conv14 = fpext float %z.real11 to double
  %conv15 = fpext float %z.imag13 to double
  %coerce.realp = getelementptr inbounds { double, double }, ptr %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { double, double }, ptr %coerce, i32 0, i32 1
  store double %conv14, ptr %coerce.realp, align 8
  store double %conv15, ptr %coerce.imagp, align 8
  %0 = load [2 x double], ptr %coerce, align 8
  %call16 = call double @cabs([2 x double] noundef %0) #3
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %call16)
  %z.realp18 = getelementptr inbounds { float, float }, ptr %z, i32 0, i32 0
  %z.real19 = load float, ptr %z.realp18, align 4
  %z.imagp20 = getelementptr inbounds { float, float }, ptr %z, i32 0, i32 1
  %z.imag21 = load float, ptr %z.imagp20, align 4
  %conv22 = fpext float %z.real19 to double
  %conv23 = fpext float %z.imag21 to double
  %coerce24.realp = getelementptr inbounds { double, double }, ptr %coerce24, i32 0, i32 0
  %coerce24.imagp = getelementptr inbounds { double, double }, ptr %coerce24, i32 0, i32 1
  store double %conv22, ptr %coerce24.realp, align 8
  store double %conv23, ptr %coerce24.imagp, align 8
  %1 = load [2 x double], ptr %coerce24, align 8
  %call25 = call double @carg([2 x double] noundef %1) #3
  %call26 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %call25)
  %z.realp27 = getelementptr inbounds { float, float }, ptr %z, i32 0, i32 0
  %z.real28 = load float, ptr %z.realp27, align 4
  %z.imagp29 = getelementptr inbounds { float, float }, ptr %z, i32 0, i32 1
  %z.imag30 = load float, ptr %z.imagp29, align 4
  %conv31 = fpext float %z.real28 to double
  %conv32 = fpext float %z.imag30 to double
  %z.realp33 = getelementptr inbounds { float, float }, ptr %z, i32 0, i32 0
  %z.real34 = load float, ptr %z.realp33, align 4
  %z.imagp35 = getelementptr inbounds { float, float }, ptr %z, i32 0, i32 1
  %z.imag36 = load float, ptr %z.imagp35, align 4
  %conv37 = fpext float %z.real34 to double
  %conv38 = fpext float %z.imag36 to double
  %z.realp39 = getelementptr inbounds { float, float }, ptr %z, i32 0, i32 0
  %z.real40 = load float, ptr %z.realp39, align 4
  %z.imagp41 = getelementptr inbounds { float, float }, ptr %z, i32 0, i32 1
  %z.imag42 = load float, ptr %z.imagp41, align 4
  %conv43 = fpext float %z.real40 to double
  %conv44 = fpext float %z.imag42 to double
  %coerce45.realp = getelementptr inbounds { double, double }, ptr %coerce45, i32 0, i32 0
  %coerce45.imagp = getelementptr inbounds { double, double }, ptr %coerce45, i32 0, i32 1
  store double %conv43, ptr %coerce45.realp, align 8
  store double %conv44, ptr %coerce45.imagp, align 8
  %2 = load [2 x double], ptr %coerce45, align 8
  %call46 = call double @cabs([2 x double] noundef %2) #3
  %z.realp47 = getelementptr inbounds { float, float }, ptr %z, i32 0, i32 0
  %z.real48 = load float, ptr %z.realp47, align 4
  %z.imagp49 = getelementptr inbounds { float, float }, ptr %z, i32 0, i32 1
  %z.imag50 = load float, ptr %z.imagp49, align 4
  %conv51 = fpext float %z.real48 to double
  %conv52 = fpext float %z.imag50 to double
  %coerce53.realp = getelementptr inbounds { double, double }, ptr %coerce53, i32 0, i32 0
  %coerce53.imagp = getelementptr inbounds { double, double }, ptr %coerce53, i32 0, i32 1
  store double %conv51, ptr %coerce53.realp, align 8
  store double %conv52, ptr %coerce53.imagp, align 8
  %3 = load [2 x double], ptr %coerce53, align 8
  %call54 = call double @carg([2 x double] noundef %3) #3
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %conv31, double noundef %conv38, double noundef %call46, double noundef %call54)
  %4 = load ptr, ptr @url1, align 8
  %5 = load ptr, ptr @url2, align 8
  %call56 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, ptr noundef %4, ptr noundef %5)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nounwind willreturn memory(none)
declare double @cabs([2 x double] noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare double @carg([2 x double] noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind willreturn memory(none) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
