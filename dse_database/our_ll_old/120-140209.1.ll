; ModuleID = './code/120-140209.1.c'
source_filename = "./code/120-140209.1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [34 x i8] c"%.0f + %.0f + %.0f is a triplet.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"The product a*b*c is %.0f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %__x.addr.i36 = alloca double, align 8
  %__y.addr.i37 = alloca double, align 8
  %__x.addr.i34 = alloca double, align 8
  %__y.addr.i35 = alloca double, align 8
  %__x.addr.i = alloca double, align 8
  %__y.addr.i = alloca double, align 8
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %sum = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 1000, ptr %sum, align 4
  store double 0.000000e+00, ptr %a, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %entry
  %0 = load double, ptr %a, align 8
  %1 = load i32, ptr %sum, align 4
  %conv = sitofp i32 %1 to double
  %cmp = fcmp olt double %0, %conv
  br i1 %cmp, label %for.body, label %for.end33

for.body:                                         ; preds = %for.cond
  %2 = load double, ptr %a, align 8
  %add = fadd double %2, 1.000000e+00
  store double %add, ptr %b, align 8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc28, %for.body
  %3 = load double, ptr %b, align 8
  %4 = load i32, ptr %sum, align 4
  %conv3 = sitofp i32 %4 to double
  %cmp4 = fcmp olt double %3, %conv3
  br i1 %cmp4, label %for.body6, label %for.end30

for.body6:                                        ; preds = %for.cond2
  %5 = load double, ptr %b, align 8
  %add7 = fadd double %5, 1.000000e+00
  store double %add7, ptr %c, align 8
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body6
  %6 = load double, ptr %c, align 8
  %7 = load i32, ptr %sum, align 4
  %conv9 = sitofp i32 %7 to double
  %cmp10 = fcmp olt double %6, %conv9
  br i1 %cmp10, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond8
  %8 = load double, ptr %a, align 8
  %9 = load double, ptr %b, align 8
  %add13 = fadd double %8, %9
  %10 = load double, ptr %c, align 8
  %add14 = fadd double %add13, %10
  %11 = load i32, ptr %sum, align 4
  %conv15 = sitofp i32 %11 to double
  %cmp16 = fcmp oeq double %add14, %conv15
  br i1 %cmp16, label %if.then, label %if.end27

if.then:                                          ; preds = %for.body12
  %12 = load double, ptr %a, align 8
  store double %12, ptr %__x.addr.i36, align 8
  store double 2.000000e+00, ptr %__y.addr.i37, align 8
  %13 = load double, ptr %__x.addr.i36, align 8
  %14 = load double, ptr %__y.addr.i37, align 8
  %15 = call double @llvm.pow.f64(double %13, double %14)
  %16 = load double, ptr %b, align 8
  store double %16, ptr %__x.addr.i34, align 8
  store double 2.000000e+00, ptr %__y.addr.i35, align 8
  %17 = load double, ptr %__x.addr.i34, align 8
  %18 = load double, ptr %__y.addr.i35, align 8
  %19 = call double @llvm.pow.f64(double %17, double %18)
  %add19 = fadd double %15, %19
  %20 = load double, ptr %c, align 8
  store double %20, ptr %__x.addr.i, align 8
  store double 2.000000e+00, ptr %__y.addr.i, align 8
  %21 = load double, ptr %__x.addr.i, align 8
  %22 = load double, ptr %__y.addr.i, align 8
  %23 = call double @llvm.pow.f64(double %21, double %22)
  %cmp21 = fcmp oeq double %add19, %23
  br i1 %cmp21, label %if.then23, label %if.end

if.then23:                                        ; preds = %if.then
  %24 = load double, ptr %a, align 8
  %25 = load double, ptr %b, align 8
  %26 = load double, ptr %c, align 8
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %24, double noundef %25, double noundef %26)
  %27 = load double, ptr %a, align 8
  %28 = load double, ptr %b, align 8
  %mul = fmul double %27, %28
  %29 = load double, ptr %c, align 8
  %mul25 = fmul double %mul, %29
  %call26 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %mul25)
  br label %if.end

if.end:                                           ; preds = %if.then23, %if.then
  br label %if.end27

if.end27:                                         ; preds = %if.end, %for.body12
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %30 = load double, ptr %c, align 8
  %inc = fadd double %30, 1.000000e+00
  store double %inc, ptr %c, align 8
  br label %for.cond8, !llvm.loop !5

for.end:                                          ; preds = %for.cond8
  br label %for.inc28

for.inc28:                                        ; preds = %for.end
  %31 = load double, ptr %b, align 8
  %inc29 = fadd double %31, 1.000000e+00
  store double %inc29, ptr %b, align 8
  br label %for.cond2, !llvm.loop !7

for.end30:                                        ; preds = %for.cond2
  br label %for.inc31

for.inc31:                                        ; preds = %for.end30
  %32 = load double, ptr %a, align 8
  %inc32 = fadd double %32, 1.000000e+00
  store double %inc32, ptr %a, align 8
  br label %for.cond, !llvm.loop !8

for.end33:                                        ; preds = %for.cond
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #2

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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
