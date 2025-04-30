; ModuleID = 'code/352-19521reduction-cplx-flt.c'
source_filename = "code/352-19521reduction-cplx-flt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_enough(<2 x float> %a.coerce, <2 x float> %b.coerce) #0 {
entry:
  %a = alloca { float, float }, align 4
  %b = alloca { float, float }, align 4
  %diff = alloca { float, float }, align 4
  %mag2_a = alloca float, align 4
  %mag2_diff = alloca float, align 4
  %0 = bitcast { float, float }* %a to <2 x float>*
  store <2 x float> %a.coerce, <2 x float>* %0, align 4
  %1 = bitcast { float, float }* %b to <2 x float>*
  store <2 x float> %b.coerce, <2 x float>* %1, align 4
  %a.realp = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 0
  %a.real = load float, float* %a.realp, align 4
  %a.imagp = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 1
  %a.imag = load float, float* %a.imagp, align 4
  %b.realp = getelementptr inbounds { float, float }, { float, float }* %b, i32 0, i32 0
  %b.real = load float, float* %b.realp, align 4
  %b.imagp = getelementptr inbounds { float, float }, { float, float }* %b, i32 0, i32 1
  %b.imag = load float, float* %b.imagp, align 4
  %sub.r = fsub float %a.real, %b.real
  %sub.i = fsub float %a.imag, %b.imag
  %diff.realp = getelementptr inbounds { float, float }, { float, float }* %diff, i32 0, i32 0
  %diff.imagp = getelementptr inbounds { float, float }, { float, float }* %diff, i32 0, i32 1
  store float %sub.r, float* %diff.realp, align 4
  store float %sub.i, float* %diff.imagp, align 4
  %a.realp1 = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 0
  %2 = load float, float* %a.realp1, align 4
  %a.realp2 = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 0
  %3 = load float, float* %a.realp2, align 4
  %mul = fmul float %2, %3
  %a.imagp3 = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 1
  %4 = load float, float* %a.imagp3, align 4
  %a.imagp4 = getelementptr inbounds { float, float }, { float, float }* %a, i32 0, i32 1
  %5 = load float, float* %a.imagp4, align 4
  %mul5 = fmul float %4, %5
  %add = fadd float %mul, %mul5
  store float %add, float* %mag2_a, align 4
  %diff.realp6 = getelementptr inbounds { float, float }, { float, float }* %diff, i32 0, i32 0
  %6 = load float, float* %diff.realp6, align 4
  %diff.realp7 = getelementptr inbounds { float, float }, { float, float }* %diff, i32 0, i32 0
  %7 = load float, float* %diff.realp7, align 4
  %mul8 = fmul float %6, %7
  %diff.imagp9 = getelementptr inbounds { float, float }, { float, float }* %diff, i32 0, i32 1
  %8 = load float, float* %diff.imagp9, align 4
  %diff.imagp10 = getelementptr inbounds { float, float }, { float, float }* %diff, i32 0, i32 1
  %9 = load float, float* %diff.imagp10, align 4
  %mul11 = fmul float %8, %9
  %add12 = fadd float %mul8, %mul11
  store float %add12, float* %mag2_diff, align 4
  %10 = load float, float* %mag2_diff, align 4
  %11 = load float, float* %mag2_a, align 4
  %div = fdiv float %10, %11
  %cmp = fcmp olt float %div, 0x3D70000000000000
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ary = alloca [100 x { float, float }], align 16
  %sum = alloca { float, float }, align 4
  %prod = alloca { float, float }, align 4
  %ix = alloca i32, align 4
  %frac = alloca float, align 4
  %coerce = alloca { float, float }, align 4
  %coerce27 = alloca { float, float }, align 4
  %coerce28 = alloca { float, float }, align 4
  %coerce39 = alloca { float, float }, align 4
  %coerce40 = alloca { float, float }, align 4
  %coerce54 = alloca { float, float }, align 4
  %coerce55 = alloca { float, float }, align 4
  store i32 0, i32* %retval, align 4
  %sum.realp = getelementptr inbounds { float, float }, { float, float }* %sum, i32 0, i32 0
  %sum.imagp = getelementptr inbounds { float, float }, { float, float }* %sum, i32 0, i32 1
  store float 0.000000e+00, float* %sum.realp, align 4
  store float 0.000000e+00, float* %sum.imagp, align 4
  %prod.realp = getelementptr inbounds { float, float }, { float, float }* %prod, i32 0, i32 0
  %prod.imagp = getelementptr inbounds { float, float }, { float, float }* %prod, i32 0, i32 1
  store float 1.000000e+00, float* %prod.realp, align 4
  store float 0.000000e+00, float* %prod.imagp, align 4
  store i32 0, i32* %ix, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %ix, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %ix, align 4
  %conv = sitofp i32 %1 to float
  %mul = fmul float %conv, 0x3F50000000000000
  %add = fadd float %mul, 1.000000e+00
  store float %add, float* %frac, align 4
  %2 = load float, float* %frac, align 4
  %conv1 = fpext float %2 to double
  %3 = load float, float* %frac, align 4
  %conv2 = fpext float %3 to double
  %mul.rl = fmul double %conv2, 0.000000e+00
  %mul.ir = fmul double %conv2, 2.000000e+00
  %add.r = fadd double %conv1, %mul.rl
  %sub.r = fsub double %add.r, 0.000000e+00
  %sub.i = fsub double %mul.ir, 1.000000e+00
  %conv3 = fptrunc double %sub.r to float
  %conv4 = fptrunc double %sub.i to float
  %4 = load i32, i32* %ix, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [100 x { float, float }], [100 x { float, float }]* %ary, i64 0, i64 %idxprom
  %arrayidx.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 0
  %arrayidx.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 1
  store float %conv3, float* %arrayidx.realp, align 8
  store float %conv4, float* %arrayidx.imagp, align 4
  %5 = load i32, i32* %ix, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [100 x { float, float }], [100 x { float, float }]* %ary, i64 0, i64 %idxprom5
  %arrayidx6.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx6, i32 0, i32 0
  %arrayidx6.real = load float, float* %arrayidx6.realp, align 8
  %arrayidx6.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx6, i32 0, i32 1
  %arrayidx6.imag = load float, float* %arrayidx6.imagp, align 4
  %sum.realp7 = getelementptr inbounds { float, float }, { float, float }* %sum, i32 0, i32 0
  %sum.real = load float, float* %sum.realp7, align 4
  %sum.imagp8 = getelementptr inbounds { float, float }, { float, float }* %sum, i32 0, i32 1
  %sum.imag = load float, float* %sum.imagp8, align 4
  %add.r9 = fadd float %sum.real, %arrayidx6.real
  %add.i = fadd float %sum.imag, %arrayidx6.imag
  %sum.realp10 = getelementptr inbounds { float, float }, { float, float }* %sum, i32 0, i32 0
  %sum.imagp11 = getelementptr inbounds { float, float }, { float, float }* %sum, i32 0, i32 1
  store float %add.r9, float* %sum.realp10, align 4
  store float %add.i, float* %sum.imagp11, align 4
  %6 = load i32, i32* %ix, align 4
  %idxprom12 = sext i32 %6 to i64
  %arrayidx13 = getelementptr inbounds [100 x { float, float }], [100 x { float, float }]* %ary, i64 0, i64 %idxprom12
  %arrayidx13.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx13, i32 0, i32 0
  %arrayidx13.real = load float, float* %arrayidx13.realp, align 8
  %arrayidx13.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx13, i32 0, i32 1
  %arrayidx13.imag = load float, float* %arrayidx13.imagp, align 4
  %prod.realp14 = getelementptr inbounds { float, float }, { float, float }* %prod, i32 0, i32 0
  %prod.real = load float, float* %prod.realp14, align 4
  %prod.imagp15 = getelementptr inbounds { float, float }, { float, float }* %prod, i32 0, i32 1
  %prod.imag = load float, float* %prod.imagp15, align 4
  %mul_ac = fmul float %prod.real, %arrayidx13.real
  %mul_bd = fmul float %prod.imag, %arrayidx13.imag
  %mul_ad = fmul float %prod.real, %arrayidx13.imag
  %mul_bc = fmul float %prod.imag, %arrayidx13.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !4

complex_mul_imag_nan:                             ; preds = %for.body
  %isnan_cmp16 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp16, label %complex_mul_libcall, label %complex_mul_cont, !prof !4

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call = call <2 x float> @__mulsc3(float %prod.real, float %prod.imag, float %arrayidx13.real, float %arrayidx13.imag) #1
  %7 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call, <2 x float>* %7, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float, float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float, float* %coerce.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %for.body
  %real_mul_phi = phi float [ %mul_r, %for.body ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %for.body ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce.imag, %complex_mul_libcall ]
  %prod.realp17 = getelementptr inbounds { float, float }, { float, float }* %prod, i32 0, i32 0
  %prod.imagp18 = getelementptr inbounds { float, float }, { float, float }* %prod, i32 0, i32 1
  store float %real_mul_phi, float* %prod.realp17, align 4
  store float %imag_mul_phi, float* %prod.imagp18, align 4
  br label %for.inc

for.inc:                                          ; preds = %complex_mul_cont
  %8 = load i32, i32* %ix, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %ix, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [100 x { float, float }], [100 x { float, float }]* %ary, i64 0, i64 0
  %sum.realp19 = getelementptr inbounds { float, float }, { float, float }* %sum, i32 0, i32 0
  %sum.real20 = load float, float* %sum.realp19, align 4
  %sum.imagp21 = getelementptr inbounds { float, float }, { float, float }* %sum, i32 0, i32 1
  %sum.imag22 = load float, float* %sum.imagp21, align 4
  %prod.realp23 = getelementptr inbounds { float, float }, { float, float }* %prod, i32 0, i32 0
  %prod.real24 = load float, float* %prod.realp23, align 4
  %prod.imagp25 = getelementptr inbounds { float, float }, { float, float }* %prod, i32 0, i32 1
  %prod.imag26 = load float, float* %prod.imagp25, align 4
  %coerce27.realp = getelementptr inbounds { float, float }, { float, float }* %coerce27, i32 0, i32 0
  %coerce27.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce27, i32 0, i32 1
  store float %sum.real20, float* %coerce27.realp, align 4
  store float %sum.imag22, float* %coerce27.imagp, align 4
  %9 = bitcast { float, float }* %coerce27 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 4
  %coerce28.realp = getelementptr inbounds { float, float }, { float, float }* %coerce28, i32 0, i32 0
  %coerce28.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce28, i32 0, i32 1
  store float %prod.real24, float* %coerce28.realp, align 4
  store float %prod.imag26, float* %coerce28.imagp, align 4
  %11 = bitcast { float, float }* %coerce28 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 4
  %call29 = call i32 @vector({ float, float }* %arraydecay, <2 x float> %10, <2 x float> %12)
  %tobool = icmp ne i32 %call29, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.end
  %arraydecay30 = getelementptr inbounds [100 x { float, float }], [100 x { float, float }]* %ary, i64 0, i64 0
  %sum.realp31 = getelementptr inbounds { float, float }, { float, float }* %sum, i32 0, i32 0
  %sum.real32 = load float, float* %sum.realp31, align 4
  %sum.imagp33 = getelementptr inbounds { float, float }, { float, float }* %sum, i32 0, i32 1
  %sum.imag34 = load float, float* %sum.imagp33, align 4
  %prod.realp35 = getelementptr inbounds { float, float }, { float, float }* %prod, i32 0, i32 0
  %prod.real36 = load float, float* %prod.realp35, align 4
  %prod.imagp37 = getelementptr inbounds { float, float }, { float, float }* %prod, i32 0, i32 1
  %prod.imag38 = load float, float* %prod.imagp37, align 4
  %coerce39.realp = getelementptr inbounds { float, float }, { float, float }* %coerce39, i32 0, i32 0
  %coerce39.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce39, i32 0, i32 1
  store float %sum.real32, float* %coerce39.realp, align 4
  store float %sum.imag34, float* %coerce39.imagp, align 4
  %13 = bitcast { float, float }* %coerce39 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 4
  %coerce40.realp = getelementptr inbounds { float, float }, { float, float }* %coerce40, i32 0, i32 0
  %coerce40.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce40, i32 0, i32 1
  store float %prod.real36, float* %coerce40.realp, align 4
  store float %prod.imag38, float* %coerce40.imagp, align 4
  %15 = bitcast { float, float }* %coerce40 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 4
  %call41 = call i32 @worker({ float, float }* %arraydecay30, <2 x float> %14, <2 x float> %16)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end44:                                         ; preds = %if.end
  %arraydecay45 = getelementptr inbounds [100 x { float, float }], [100 x { float, float }]* %ary, i64 0, i64 0
  %sum.realp46 = getelementptr inbounds { float, float }, { float, float }* %sum, i32 0, i32 0
  %sum.real47 = load float, float* %sum.realp46, align 4
  %sum.imagp48 = getelementptr inbounds { float, float }, { float, float }* %sum, i32 0, i32 1
  %sum.imag49 = load float, float* %sum.imagp48, align 4
  %prod.realp50 = getelementptr inbounds { float, float }, { float, float }* %prod, i32 0, i32 0
  %prod.real51 = load float, float* %prod.realp50, align 4
  %prod.imagp52 = getelementptr inbounds { float, float }, { float, float }* %prod, i32 0, i32 1
  %prod.imag53 = load float, float* %prod.imagp52, align 4
  %coerce54.realp = getelementptr inbounds { float, float }, { float, float }* %coerce54, i32 0, i32 0
  %coerce54.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce54, i32 0, i32 1
  store float %sum.real47, float* %coerce54.realp, align 4
  store float %sum.imag49, float* %coerce54.imagp, align 4
  %17 = bitcast { float, float }* %coerce54 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 4
  %coerce55.realp = getelementptr inbounds { float, float }, { float, float }* %coerce55, i32 0, i32 0
  %coerce55.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce55, i32 0, i32 1
  store float %prod.real51, float* %coerce55.realp, align 4
  store float %prod.imag53, float* %coerce55.imagp, align 4
  %19 = bitcast { float, float }* %coerce55 to <2 x float>*
  %20 = load <2 x float>, <2 x float>* %19, align 4
  %call56 = call i32 @gang({ float, float }* %arraydecay45, <2 x float> %18, <2 x float> %20)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end44
  store i32 1, i32* %retval, align 4
  br label %return

if.end59:                                         ; preds = %if.end44
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end59, %if.then58, %if.then43, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

declare dso_local <2 x float> @__mulsc3(float, float, float, float)

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vector({ float, float }* %ary, <2 x float> %sum.coerce, <2 x float> %prod.coerce) #0 {
entry:
  %retval = alloca i32, align 4
  %sum = alloca { float, float }, align 4
  %prod = alloca { float, float }, align 4
  %ary.addr = alloca { float, float }*, align 8
  %tsum = alloca { float, float }, align 4
  %tprod = alloca { float, float }, align 4
  %ix = alloca i32, align 4
  %coerce = alloca { float, float }, align 4
  %coerce16 = alloca { float, float }, align 4
  %coerce17 = alloca { float, float }, align 4
  %coerce23 = alloca { float, float }, align 4
  %coerce24 = alloca { float, float }, align 4
  %0 = bitcast { float, float }* %sum to <2 x float>*
  store <2 x float> %sum.coerce, <2 x float>* %0, align 4
  %1 = bitcast { float, float }* %prod to <2 x float>*
  store <2 x float> %prod.coerce, <2 x float>* %1, align 4
  store { float, float }* %ary, { float, float }** %ary.addr, align 8
  %tsum.realp = getelementptr inbounds { float, float }, { float, float }* %tsum, i32 0, i32 0
  %tsum.imagp = getelementptr inbounds { float, float }, { float, float }* %tsum, i32 0, i32 1
  store float 0.000000e+00, float* %tsum.realp, align 4
  store float 0.000000e+00, float* %tsum.imagp, align 4
  %tprod.realp = getelementptr inbounds { float, float }, { float, float }* %tprod, i32 0, i32 0
  %tprod.imagp = getelementptr inbounds { float, float }, { float, float }* %tprod, i32 0, i32 1
  store float 1.000000e+00, float* %tprod.realp, align 4
  store float 0.000000e+00, float* %tprod.imagp, align 4
  store i32 0, i32* %ix, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %ix, align 4
  %cmp = icmp slt i32 %2, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load { float, float }*, { float, float }** %ary.addr, align 8
  %4 = load i32, i32* %ix, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds { float, float }, { float, float }* %3, i64 %idxprom
  %arrayidx.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 0
  %arrayidx.real = load float, float* %arrayidx.realp, align 4
  %arrayidx.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 1
  %arrayidx.imag = load float, float* %arrayidx.imagp, align 4
  %tsum.realp1 = getelementptr inbounds { float, float }, { float, float }* %tsum, i32 0, i32 0
  %tsum.real = load float, float* %tsum.realp1, align 4
  %tsum.imagp2 = getelementptr inbounds { float, float }, { float, float }* %tsum, i32 0, i32 1
  %tsum.imag = load float, float* %tsum.imagp2, align 4
  %add.r = fadd float %tsum.real, %arrayidx.real
  %add.i = fadd float %tsum.imag, %arrayidx.imag
  %tsum.realp3 = getelementptr inbounds { float, float }, { float, float }* %tsum, i32 0, i32 0
  %tsum.imagp4 = getelementptr inbounds { float, float }, { float, float }* %tsum, i32 0, i32 1
  store float %add.r, float* %tsum.realp3, align 4
  store float %add.i, float* %tsum.imagp4, align 4
  %5 = load { float, float }*, { float, float }** %ary.addr, align 8
  %6 = load i32, i32* %ix, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds { float, float }, { float, float }* %5, i64 %idxprom5
  %arrayidx6.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx6, i32 0, i32 0
  %arrayidx6.real = load float, float* %arrayidx6.realp, align 4
  %arrayidx6.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx6, i32 0, i32 1
  %arrayidx6.imag = load float, float* %arrayidx6.imagp, align 4
  %tprod.realp7 = getelementptr inbounds { float, float }, { float, float }* %tprod, i32 0, i32 0
  %tprod.real = load float, float* %tprod.realp7, align 4
  %tprod.imagp8 = getelementptr inbounds { float, float }, { float, float }* %tprod, i32 0, i32 1
  %tprod.imag = load float, float* %tprod.imagp8, align 4
  %mul_ac = fmul float %tprod.real, %arrayidx6.real
  %mul_bd = fmul float %tprod.imag, %arrayidx6.imag
  %mul_ad = fmul float %tprod.real, %arrayidx6.imag
  %mul_bc = fmul float %tprod.imag, %arrayidx6.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !4

complex_mul_imag_nan:                             ; preds = %for.body
  %isnan_cmp9 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp9, label %complex_mul_libcall, label %complex_mul_cont, !prof !4

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call = call <2 x float> @__mulsc3(float %tprod.real, float %tprod.imag, float %arrayidx6.real, float %arrayidx6.imag) #1
  %7 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call, <2 x float>* %7, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float, float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float, float* %coerce.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %for.body
  %real_mul_phi = phi float [ %mul_r, %for.body ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %for.body ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce.imag, %complex_mul_libcall ]
  %tprod.realp10 = getelementptr inbounds { float, float }, { float, float }* %tprod, i32 0, i32 0
  %tprod.imagp11 = getelementptr inbounds { float, float }, { float, float }* %tprod, i32 0, i32 1
  store float %real_mul_phi, float* %tprod.realp10, align 4
  store float %imag_mul_phi, float* %tprod.imagp11, align 4
  br label %for.inc

for.inc:                                          ; preds = %complex_mul_cont
  %8 = load i32, i32* %ix, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %ix, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %sum.realp = getelementptr inbounds { float, float }, { float, float }* %sum, i32 0, i32 0
  %sum.real = load float, float* %sum.realp, align 4
  %sum.imagp = getelementptr inbounds { float, float }, { float, float }* %sum, i32 0, i32 1
  %sum.imag = load float, float* %sum.imagp, align 4
  %tsum.realp12 = getelementptr inbounds { float, float }, { float, float }* %tsum, i32 0, i32 0
  %tsum.real13 = load float, float* %tsum.realp12, align 4
  %tsum.imagp14 = getelementptr inbounds { float, float }, { float, float }* %tsum, i32 0, i32 1
  %tsum.imag15 = load float, float* %tsum.imagp14, align 4
  %coerce16.realp = getelementptr inbounds { float, float }, { float, float }* %coerce16, i32 0, i32 0
  %coerce16.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce16, i32 0, i32 1
  store float %sum.real, float* %coerce16.realp, align 4
  store float %sum.imag, float* %coerce16.imagp, align 4
  %9 = bitcast { float, float }* %coerce16 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 4
  %coerce17.realp = getelementptr inbounds { float, float }, { float, float }* %coerce17, i32 0, i32 0
  %coerce17.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce17, i32 0, i32 1
  store float %tsum.real13, float* %coerce17.realp, align 4
  store float %tsum.imag15, float* %coerce17.imagp, align 4
  %11 = bitcast { float, float }* %coerce17 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 4
  %call18 = call i32 @close_enough(<2 x float> %10, <2 x float> %12)
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.end
  %prod.realp = getelementptr inbounds { float, float }, { float, float }* %prod, i32 0, i32 0
  %prod.real = load float, float* %prod.realp, align 4
  %prod.imagp = getelementptr inbounds { float, float }, { float, float }* %prod, i32 0, i32 1
  %prod.imag = load float, float* %prod.imagp, align 4
  %tprod.realp19 = getelementptr inbounds { float, float }, { float, float }* %tprod, i32 0, i32 0
  %tprod.real20 = load float, float* %tprod.realp19, align 4
  %tprod.imagp21 = getelementptr inbounds { float, float }, { float, float }* %tprod, i32 0, i32 1
  %tprod.imag22 = load float, float* %tprod.imagp21, align 4
  %coerce23.realp = getelementptr inbounds { float, float }, { float, float }* %coerce23, i32 0, i32 0
  %coerce23.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce23, i32 0, i32 1
  store float %prod.real, float* %coerce23.realp, align 4
  store float %prod.imag, float* %coerce23.imagp, align 4
  %13 = bitcast { float, float }* %coerce23 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 4
  %coerce24.realp = getelementptr inbounds { float, float }, { float, float }* %coerce24, i32 0, i32 0
  %coerce24.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce24, i32 0, i32 1
  store float %tprod.real20, float* %coerce24.realp, align 4
  store float %tprod.imag22, float* %coerce24.imagp, align 4
  %15 = bitcast { float, float }* %coerce24 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 4
  %call25 = call i32 @close_enough(<2 x float> %14, <2 x float> %16)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then27, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @worker({ float, float }* %ary, <2 x float> %sum.coerce, <2 x float> %prod.coerce) #0 {
entry:
  %retval = alloca i32, align 4
  %sum = alloca { float, float }, align 4
  %prod = alloca { float, float }, align 4
  %ary.addr = alloca { float, float }*, align 8
  %tsum = alloca { float, float }, align 4
  %tprod = alloca { float, float }, align 4
  %ix = alloca i32, align 4
  %coerce = alloca { float, float }, align 4
  %coerce16 = alloca { float, float }, align 4
  %coerce17 = alloca { float, float }, align 4
  %coerce23 = alloca { float, float }, align 4
  %coerce24 = alloca { float, float }, align 4
  %0 = bitcast { float, float }* %sum to <2 x float>*
  store <2 x float> %sum.coerce, <2 x float>* %0, align 4
  %1 = bitcast { float, float }* %prod to <2 x float>*
  store <2 x float> %prod.coerce, <2 x float>* %1, align 4
  store { float, float }* %ary, { float, float }** %ary.addr, align 8
  %tsum.realp = getelementptr inbounds { float, float }, { float, float }* %tsum, i32 0, i32 0
  %tsum.imagp = getelementptr inbounds { float, float }, { float, float }* %tsum, i32 0, i32 1
  store float 0.000000e+00, float* %tsum.realp, align 4
  store float 0.000000e+00, float* %tsum.imagp, align 4
  %tprod.realp = getelementptr inbounds { float, float }, { float, float }* %tprod, i32 0, i32 0
  %tprod.imagp = getelementptr inbounds { float, float }, { float, float }* %tprod, i32 0, i32 1
  store float 1.000000e+00, float* %tprod.realp, align 4
  store float 0.000000e+00, float* %tprod.imagp, align 4
  store i32 0, i32* %ix, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %ix, align 4
  %cmp = icmp slt i32 %2, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load { float, float }*, { float, float }** %ary.addr, align 8
  %4 = load i32, i32* %ix, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds { float, float }, { float, float }* %3, i64 %idxprom
  %arrayidx.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 0
  %arrayidx.real = load float, float* %arrayidx.realp, align 4
  %arrayidx.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 1
  %arrayidx.imag = load float, float* %arrayidx.imagp, align 4
  %tsum.realp1 = getelementptr inbounds { float, float }, { float, float }* %tsum, i32 0, i32 0
  %tsum.real = load float, float* %tsum.realp1, align 4
  %tsum.imagp2 = getelementptr inbounds { float, float }, { float, float }* %tsum, i32 0, i32 1
  %tsum.imag = load float, float* %tsum.imagp2, align 4
  %add.r = fadd float %tsum.real, %arrayidx.real
  %add.i = fadd float %tsum.imag, %arrayidx.imag
  %tsum.realp3 = getelementptr inbounds { float, float }, { float, float }* %tsum, i32 0, i32 0
  %tsum.imagp4 = getelementptr inbounds { float, float }, { float, float }* %tsum, i32 0, i32 1
  store float %add.r, float* %tsum.realp3, align 4
  store float %add.i, float* %tsum.imagp4, align 4
  %5 = load { float, float }*, { float, float }** %ary.addr, align 8
  %6 = load i32, i32* %ix, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds { float, float }, { float, float }* %5, i64 %idxprom5
  %arrayidx6.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx6, i32 0, i32 0
  %arrayidx6.real = load float, float* %arrayidx6.realp, align 4
  %arrayidx6.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx6, i32 0, i32 1
  %arrayidx6.imag = load float, float* %arrayidx6.imagp, align 4
  %tprod.realp7 = getelementptr inbounds { float, float }, { float, float }* %tprod, i32 0, i32 0
  %tprod.real = load float, float* %tprod.realp7, align 4
  %tprod.imagp8 = getelementptr inbounds { float, float }, { float, float }* %tprod, i32 0, i32 1
  %tprod.imag = load float, float* %tprod.imagp8, align 4
  %mul_ac = fmul float %tprod.real, %arrayidx6.real
  %mul_bd = fmul float %tprod.imag, %arrayidx6.imag
  %mul_ad = fmul float %tprod.real, %arrayidx6.imag
  %mul_bc = fmul float %tprod.imag, %arrayidx6.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !4

complex_mul_imag_nan:                             ; preds = %for.body
  %isnan_cmp9 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp9, label %complex_mul_libcall, label %complex_mul_cont, !prof !4

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call = call <2 x float> @__mulsc3(float %tprod.real, float %tprod.imag, float %arrayidx6.real, float %arrayidx6.imag) #1
  %7 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call, <2 x float>* %7, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float, float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float, float* %coerce.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %for.body
  %real_mul_phi = phi float [ %mul_r, %for.body ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %for.body ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce.imag, %complex_mul_libcall ]
  %tprod.realp10 = getelementptr inbounds { float, float }, { float, float }* %tprod, i32 0, i32 0
  %tprod.imagp11 = getelementptr inbounds { float, float }, { float, float }* %tprod, i32 0, i32 1
  store float %real_mul_phi, float* %tprod.realp10, align 4
  store float %imag_mul_phi, float* %tprod.imagp11, align 4
  br label %for.inc

for.inc:                                          ; preds = %complex_mul_cont
  %8 = load i32, i32* %ix, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %ix, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %sum.realp = getelementptr inbounds { float, float }, { float, float }* %sum, i32 0, i32 0
  %sum.real = load float, float* %sum.realp, align 4
  %sum.imagp = getelementptr inbounds { float, float }, { float, float }* %sum, i32 0, i32 1
  %sum.imag = load float, float* %sum.imagp, align 4
  %tsum.realp12 = getelementptr inbounds { float, float }, { float, float }* %tsum, i32 0, i32 0
  %tsum.real13 = load float, float* %tsum.realp12, align 4
  %tsum.imagp14 = getelementptr inbounds { float, float }, { float, float }* %tsum, i32 0, i32 1
  %tsum.imag15 = load float, float* %tsum.imagp14, align 4
  %coerce16.realp = getelementptr inbounds { float, float }, { float, float }* %coerce16, i32 0, i32 0
  %coerce16.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce16, i32 0, i32 1
  store float %sum.real, float* %coerce16.realp, align 4
  store float %sum.imag, float* %coerce16.imagp, align 4
  %9 = bitcast { float, float }* %coerce16 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 4
  %coerce17.realp = getelementptr inbounds { float, float }, { float, float }* %coerce17, i32 0, i32 0
  %coerce17.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce17, i32 0, i32 1
  store float %tsum.real13, float* %coerce17.realp, align 4
  store float %tsum.imag15, float* %coerce17.imagp, align 4
  %11 = bitcast { float, float }* %coerce17 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 4
  %call18 = call i32 @close_enough(<2 x float> %10, <2 x float> %12)
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.end
  %prod.realp = getelementptr inbounds { float, float }, { float, float }* %prod, i32 0, i32 0
  %prod.real = load float, float* %prod.realp, align 4
  %prod.imagp = getelementptr inbounds { float, float }, { float, float }* %prod, i32 0, i32 1
  %prod.imag = load float, float* %prod.imagp, align 4
  %tprod.realp19 = getelementptr inbounds { float, float }, { float, float }* %tprod, i32 0, i32 0
  %tprod.real20 = load float, float* %tprod.realp19, align 4
  %tprod.imagp21 = getelementptr inbounds { float, float }, { float, float }* %tprod, i32 0, i32 1
  %tprod.imag22 = load float, float* %tprod.imagp21, align 4
  %coerce23.realp = getelementptr inbounds { float, float }, { float, float }* %coerce23, i32 0, i32 0
  %coerce23.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce23, i32 0, i32 1
  store float %prod.real, float* %coerce23.realp, align 4
  store float %prod.imag, float* %coerce23.imagp, align 4
  %13 = bitcast { float, float }* %coerce23 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 4
  %coerce24.realp = getelementptr inbounds { float, float }, { float, float }* %coerce24, i32 0, i32 0
  %coerce24.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce24, i32 0, i32 1
  store float %tprod.real20, float* %coerce24.realp, align 4
  store float %tprod.imag22, float* %coerce24.imagp, align 4
  %15 = bitcast { float, float }* %coerce24 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 4
  %call25 = call i32 @close_enough(<2 x float> %14, <2 x float> %16)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then27, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gang({ float, float }* %ary, <2 x float> %sum.coerce, <2 x float> %prod.coerce) #0 {
entry:
  %retval = alloca i32, align 4
  %sum = alloca { float, float }, align 4
  %prod = alloca { float, float }, align 4
  %ary.addr = alloca { float, float }*, align 8
  %tsum = alloca { float, float }, align 4
  %tprod = alloca { float, float }, align 4
  %ix = alloca i32, align 4
  %coerce = alloca { float, float }, align 4
  %coerce16 = alloca { float, float }, align 4
  %coerce17 = alloca { float, float }, align 4
  %coerce23 = alloca { float, float }, align 4
  %coerce24 = alloca { float, float }, align 4
  %0 = bitcast { float, float }* %sum to <2 x float>*
  store <2 x float> %sum.coerce, <2 x float>* %0, align 4
  %1 = bitcast { float, float }* %prod to <2 x float>*
  store <2 x float> %prod.coerce, <2 x float>* %1, align 4
  store { float, float }* %ary, { float, float }** %ary.addr, align 8
  %tsum.realp = getelementptr inbounds { float, float }, { float, float }* %tsum, i32 0, i32 0
  %tsum.imagp = getelementptr inbounds { float, float }, { float, float }* %tsum, i32 0, i32 1
  store float 0.000000e+00, float* %tsum.realp, align 4
  store float 0.000000e+00, float* %tsum.imagp, align 4
  %tprod.realp = getelementptr inbounds { float, float }, { float, float }* %tprod, i32 0, i32 0
  %tprod.imagp = getelementptr inbounds { float, float }, { float, float }* %tprod, i32 0, i32 1
  store float 1.000000e+00, float* %tprod.realp, align 4
  store float 0.000000e+00, float* %tprod.imagp, align 4
  store i32 0, i32* %ix, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %ix, align 4
  %cmp = icmp slt i32 %2, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load { float, float }*, { float, float }** %ary.addr, align 8
  %4 = load i32, i32* %ix, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds { float, float }, { float, float }* %3, i64 %idxprom
  %arrayidx.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 0
  %arrayidx.real = load float, float* %arrayidx.realp, align 4
  %arrayidx.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx, i32 0, i32 1
  %arrayidx.imag = load float, float* %arrayidx.imagp, align 4
  %tsum.realp1 = getelementptr inbounds { float, float }, { float, float }* %tsum, i32 0, i32 0
  %tsum.real = load float, float* %tsum.realp1, align 4
  %tsum.imagp2 = getelementptr inbounds { float, float }, { float, float }* %tsum, i32 0, i32 1
  %tsum.imag = load float, float* %tsum.imagp2, align 4
  %add.r = fadd float %tsum.real, %arrayidx.real
  %add.i = fadd float %tsum.imag, %arrayidx.imag
  %tsum.realp3 = getelementptr inbounds { float, float }, { float, float }* %tsum, i32 0, i32 0
  %tsum.imagp4 = getelementptr inbounds { float, float }, { float, float }* %tsum, i32 0, i32 1
  store float %add.r, float* %tsum.realp3, align 4
  store float %add.i, float* %tsum.imagp4, align 4
  %5 = load { float, float }*, { float, float }** %ary.addr, align 8
  %6 = load i32, i32* %ix, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds { float, float }, { float, float }* %5, i64 %idxprom5
  %arrayidx6.realp = getelementptr inbounds { float, float }, { float, float }* %arrayidx6, i32 0, i32 0
  %arrayidx6.real = load float, float* %arrayidx6.realp, align 4
  %arrayidx6.imagp = getelementptr inbounds { float, float }, { float, float }* %arrayidx6, i32 0, i32 1
  %arrayidx6.imag = load float, float* %arrayidx6.imagp, align 4
  %tprod.realp7 = getelementptr inbounds { float, float }, { float, float }* %tprod, i32 0, i32 0
  %tprod.real = load float, float* %tprod.realp7, align 4
  %tprod.imagp8 = getelementptr inbounds { float, float }, { float, float }* %tprod, i32 0, i32 1
  %tprod.imag = load float, float* %tprod.imagp8, align 4
  %mul_ac = fmul float %tprod.real, %arrayidx6.real
  %mul_bd = fmul float %tprod.imag, %arrayidx6.imag
  %mul_ad = fmul float %tprod.real, %arrayidx6.imag
  %mul_bc = fmul float %tprod.imag, %arrayidx6.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !4

complex_mul_imag_nan:                             ; preds = %for.body
  %isnan_cmp9 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp9, label %complex_mul_libcall, label %complex_mul_cont, !prof !4

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call = call <2 x float> @__mulsc3(float %tprod.real, float %tprod.imag, float %arrayidx6.real, float %arrayidx6.imag) #1
  %7 = bitcast { float, float }* %coerce to <2 x float>*
  store <2 x float> %call, <2 x float>* %7, align 4
  %coerce.realp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 0
  %coerce.real = load float, float* %coerce.realp, align 4
  %coerce.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce, i32 0, i32 1
  %coerce.imag = load float, float* %coerce.imagp, align 4
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %for.body
  %real_mul_phi = phi float [ %mul_r, %for.body ], [ %mul_r, %complex_mul_imag_nan ], [ %coerce.real, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %for.body ], [ %mul_i, %complex_mul_imag_nan ], [ %coerce.imag, %complex_mul_libcall ]
  %tprod.realp10 = getelementptr inbounds { float, float }, { float, float }* %tprod, i32 0, i32 0
  %tprod.imagp11 = getelementptr inbounds { float, float }, { float, float }* %tprod, i32 0, i32 1
  store float %real_mul_phi, float* %tprod.realp10, align 4
  store float %imag_mul_phi, float* %tprod.imagp11, align 4
  br label %for.inc

for.inc:                                          ; preds = %complex_mul_cont
  %8 = load i32, i32* %ix, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %ix, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %sum.realp = getelementptr inbounds { float, float }, { float, float }* %sum, i32 0, i32 0
  %sum.real = load float, float* %sum.realp, align 4
  %sum.imagp = getelementptr inbounds { float, float }, { float, float }* %sum, i32 0, i32 1
  %sum.imag = load float, float* %sum.imagp, align 4
  %tsum.realp12 = getelementptr inbounds { float, float }, { float, float }* %tsum, i32 0, i32 0
  %tsum.real13 = load float, float* %tsum.realp12, align 4
  %tsum.imagp14 = getelementptr inbounds { float, float }, { float, float }* %tsum, i32 0, i32 1
  %tsum.imag15 = load float, float* %tsum.imagp14, align 4
  %coerce16.realp = getelementptr inbounds { float, float }, { float, float }* %coerce16, i32 0, i32 0
  %coerce16.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce16, i32 0, i32 1
  store float %sum.real, float* %coerce16.realp, align 4
  store float %sum.imag, float* %coerce16.imagp, align 4
  %9 = bitcast { float, float }* %coerce16 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 4
  %coerce17.realp = getelementptr inbounds { float, float }, { float, float }* %coerce17, i32 0, i32 0
  %coerce17.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce17, i32 0, i32 1
  store float %tsum.real13, float* %coerce17.realp, align 4
  store float %tsum.imag15, float* %coerce17.imagp, align 4
  %11 = bitcast { float, float }* %coerce17 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 4
  %call18 = call i32 @close_enough(<2 x float> %10, <2 x float> %12)
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.end
  %prod.realp = getelementptr inbounds { float, float }, { float, float }* %prod, i32 0, i32 0
  %prod.real = load float, float* %prod.realp, align 4
  %prod.imagp = getelementptr inbounds { float, float }, { float, float }* %prod, i32 0, i32 1
  %prod.imag = load float, float* %prod.imagp, align 4
  %tprod.realp19 = getelementptr inbounds { float, float }, { float, float }* %tprod, i32 0, i32 0
  %tprod.real20 = load float, float* %tprod.realp19, align 4
  %tprod.imagp21 = getelementptr inbounds { float, float }, { float, float }* %tprod, i32 0, i32 1
  %tprod.imag22 = load float, float* %tprod.imagp21, align 4
  %coerce23.realp = getelementptr inbounds { float, float }, { float, float }* %coerce23, i32 0, i32 0
  %coerce23.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce23, i32 0, i32 1
  store float %prod.real, float* %coerce23.realp, align 4
  store float %prod.imag, float* %coerce23.imagp, align 4
  %13 = bitcast { float, float }* %coerce23 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 4
  %coerce24.realp = getelementptr inbounds { float, float }, { float, float }* %coerce24, i32 0, i32 0
  %coerce24.imagp = getelementptr inbounds { float, float }, { float, float }* %coerce24, i32 0, i32 1
  store float %tprod.real20, float* %coerce24.realp, align 4
  store float %tprod.imag22, float* %coerce24.imagp, align 4
  %15 = bitcast { float, float }* %coerce24 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 4
  %call25 = call i32 @close_enough(<2 x float> %14, <2 x float> %16)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then27, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = !{!"branch_weights", i32 1, i32 1048575}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
