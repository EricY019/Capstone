; ModuleID = './code/077-23530mandel-2.c'
source_filename = "./code/077-23530mandel-2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@max_i = global i32 65536, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define double @sqr(double noundef %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, ptr %x.addr, align 8
  %0 = load double, ptr %x.addr, align 8
  %1 = load double, ptr %x.addr, align 8
  %mul = fmul double %0, %1
  ret double %mul
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define double @cnorm2([2 x double] noundef %z.coerce) #0 {
entry:
  %z = alloca { double, double }, align 8
  store [2 x double] %z.coerce, ptr %z, align 8
  %z.realp = getelementptr inbounds { double, double }, ptr %z, i32 0, i32 0
  %z.real = load double, ptr %z.realp, align 8
  %z.imagp = getelementptr inbounds { double, double }, ptr %z, i32 0, i32 1
  %z.imag = load double, ptr %z.imagp, align 8
  %call = call double @sqr(double noundef %z.real)
  %z.realp1 = getelementptr inbounds { double, double }, ptr %z, i32 0, i32 0
  %z.real2 = load double, ptr %z.realp1, align 8
  %z.imagp3 = getelementptr inbounds { double, double }, ptr %z, i32 0, i32 1
  %z.imag4 = load double, ptr %z.imagp3, align 8
  %call5 = call double @sqr(double noundef %z.imag4)
  %add = fadd double %call, %call5
  ret double %add
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @loop([2 x double] noundef %c.coerce) #0 {
entry:
  %c = alloca { double, double }, align 8
  %z = alloca { double, double }, align 8
  %i = alloca i32, align 4
  %coerce = alloca { double, double }, align 8
  store [2 x double] %c.coerce, ptr %c, align 8
  %c.realp = getelementptr inbounds { double, double }, ptr %c, i32 0, i32 0
  %c.real = load double, ptr %c.realp, align 8
  %c.imagp = getelementptr inbounds { double, double }, ptr %c, i32 0, i32 1
  %c.imag = load double, ptr %c.imagp, align 8
  %z.realp = getelementptr inbounds { double, double }, ptr %z, i32 0, i32 0
  %z.imagp = getelementptr inbounds { double, double }, ptr %z, i32 0, i32 1
  store double %c.real, ptr %z.realp, align 8
  store double %c.imag, ptr %z.imagp, align 8
  store i32 1, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %complex_mul_cont, %entry
  %z.realp1 = getelementptr inbounds { double, double }, ptr %z, i32 0, i32 0
  %z.real = load double, ptr %z.realp1, align 8
  %z.imagp2 = getelementptr inbounds { double, double }, ptr %z, i32 0, i32 1
  %z.imag = load double, ptr %z.imagp2, align 8
  %coerce.realp = getelementptr inbounds { double, double }, ptr %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { double, double }, ptr %coerce, i32 0, i32 1
  store double %z.real, ptr %coerce.realp, align 8
  store double %z.imag, ptr %coerce.imagp, align 8
  %0 = load [2 x double], ptr %coerce, align 8
  %call = call double @cnorm2([2 x double] noundef %0)
  %cmp = fcmp ole double %call, 4.000000e+00
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, ptr %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %i, align 4
  %2 = load i32, ptr @max_i, align 4
  %cmp3 = icmp slt i32 %1, %2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %z.realp4 = getelementptr inbounds { double, double }, ptr %z, i32 0, i32 0
  %z.real5 = load double, ptr %z.realp4, align 8
  %z.imagp6 = getelementptr inbounds { double, double }, ptr %z, i32 0, i32 1
  %z.imag7 = load double, ptr %z.imagp6, align 8
  %z.realp8 = getelementptr inbounds { double, double }, ptr %z, i32 0, i32 0
  %z.real9 = load double, ptr %z.realp8, align 8
  %z.imagp10 = getelementptr inbounds { double, double }, ptr %z, i32 0, i32 1
  %z.imag11 = load double, ptr %z.imagp10, align 8
  %mul_ac = fmul double %z.real5, %z.real9
  %mul_bd = fmul double %z.imag7, %z.imag11
  %mul_ad = fmul double %z.real5, %z.imag11
  %mul_bc = fmul double %z.imag7, %z.real9
  %mul_r = fsub double %mul_ac, %mul_bd
  %mul_i = fadd double %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno double %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !5

complex_mul_imag_nan:                             ; preds = %while.body
  %isnan_cmp12 = fcmp uno double %mul_i, %mul_i
  br i1 %isnan_cmp12, label %complex_mul_libcall, label %complex_mul_cont, !prof !5

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call13 = call { double, double } @__muldc3(double noundef %z.real5, double noundef %z.imag7, double noundef %z.real9, double noundef %z.imag11) #2
  %4 = extractvalue { double, double } %call13, 0
  %5 = extractvalue { double, double } %call13, 1
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %while.body
  %real_mul_phi = phi double [ %mul_r, %while.body ], [ %mul_r, %complex_mul_imag_nan ], [ %4, %complex_mul_libcall ]
  %imag_mul_phi = phi double [ %mul_i, %while.body ], [ %mul_i, %complex_mul_imag_nan ], [ %5, %complex_mul_libcall ]
  %c.realp14 = getelementptr inbounds { double, double }, ptr %c, i32 0, i32 0
  %c.real15 = load double, ptr %c.realp14, align 8
  %c.imagp16 = getelementptr inbounds { double, double }, ptr %c, i32 0, i32 1
  %c.imag17 = load double, ptr %c.imagp16, align 8
  %add.r = fadd double %real_mul_phi, %c.real15
  %add.i = fadd double %imag_mul_phi, %c.imag17
  %z.realp18 = getelementptr inbounds { double, double }, ptr %z, i32 0, i32 0
  %z.imagp19 = getelementptr inbounds { double, double }, ptr %z, i32 0, i32 1
  store double %add.r, ptr %z.realp18, align 8
  store double %add.i, ptr %z.imagp19, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %6 = load i32, ptr %i, align 4
  ret i32 %6
}

declare { double, double } @__muldc3(double, double, double, double)

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %coerce = alloca { double, double }, align 8
  store i32 0, ptr %retval, align 4
  store i32 -39, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, ptr %j, align 4
  %cmp = icmp slt i32 %0, 39
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 -39, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %1, 39
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %j, align 4
  %conv = sitofp i32 %2 to double
  %div = fdiv double %conv, 4.000000e+01
  %sub = fsub double %div, 5.000000e-01
  %3 = load i32, ptr %i, align 4
  %conv4 = sitofp i32 %3 to double
  %div5 = fdiv double %conv4, 4.000000e+01
  %mul.rl = fmul double %div5, 0.000000e+00
  %mul.ir = fmul double %div5, 1.000000e+00
  %add.r = fadd double %sub, %mul.rl
  %coerce.realp = getelementptr inbounds { double, double }, ptr %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { double, double }, ptr %coerce, i32 0, i32 1
  store double %add.r, ptr %coerce.realp, align 8
  store double %mul.ir, ptr %coerce.imagp, align 8
  %4 = load [2 x double], ptr %coerce, align 8
  %call = call i32 @loop([2 x double] noundef %4)
  %5 = load i32, ptr @max_i, align 4
  %cmp6 = icmp sgt i32 %call, %5
  %6 = zext i1 %cmp6 to i64
  %cond = select i1 %cmp6, ptr @.str, ptr @.str.1
  %call8 = call i32 (ptr, ...) @printf(ptr noundef %cond)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond1, !llvm.loop !8

for.end:                                          ; preds = %for.cond1
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %8 = load i32, ptr %j, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, ptr %j, align 4
  br label %for.cond, !llvm.loop !9

for.end12:                                        ; preds = %for.cond
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = !{!"branch_weights", i32 1, i32 1048575}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
