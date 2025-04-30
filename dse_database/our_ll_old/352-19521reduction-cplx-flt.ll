; ModuleID = './code/352-19521reduction-cplx-flt.c'
source_filename = "./code/352-19521reduction-cplx-flt.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @close_enough([2 x float] noundef %a.coerce, [2 x float] noundef %b.coerce) #0 {
entry:
  %a = alloca { float, float }, align 4
  %b = alloca { float, float }, align 4
  %diff = alloca { float, float }, align 4
  %mag2_a = alloca float, align 4
  %mag2_diff = alloca float, align 4
  store [2 x float] %a.coerce, ptr %a, align 4
  store [2 x float] %b.coerce, ptr %b, align 4
  %a.realp = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 0
  %a.real = load float, ptr %a.realp, align 4
  %a.imagp = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 1
  %a.imag = load float, ptr %a.imagp, align 4
  %b.realp = getelementptr inbounds { float, float }, ptr %b, i32 0, i32 0
  %b.real = load float, ptr %b.realp, align 4
  %b.imagp = getelementptr inbounds { float, float }, ptr %b, i32 0, i32 1
  %b.imag = load float, ptr %b.imagp, align 4
  %sub.r = fsub float %a.real, %b.real
  %sub.i = fsub float %a.imag, %b.imag
  %diff.realp = getelementptr inbounds { float, float }, ptr %diff, i32 0, i32 0
  %diff.imagp = getelementptr inbounds { float, float }, ptr %diff, i32 0, i32 1
  store float %sub.r, ptr %diff.realp, align 4
  store float %sub.i, ptr %diff.imagp, align 4
  %a.realp1 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 0
  %0 = load float, ptr %a.realp1, align 4
  %a.realp2 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 0
  %1 = load float, ptr %a.realp2, align 4
  %a.imagp3 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 1
  %2 = load float, ptr %a.imagp3, align 4
  %a.imagp4 = getelementptr inbounds { float, float }, ptr %a, i32 0, i32 1
  %3 = load float, ptr %a.imagp4, align 4
  %mul5 = fmul float %2, %3
  %4 = call float @llvm.fmuladd.f32(float %0, float %1, float %mul5)
  store float %4, ptr %mag2_a, align 4
  %diff.realp6 = getelementptr inbounds { float, float }, ptr %diff, i32 0, i32 0
  %5 = load float, ptr %diff.realp6, align 4
  %diff.realp7 = getelementptr inbounds { float, float }, ptr %diff, i32 0, i32 0
  %6 = load float, ptr %diff.realp7, align 4
  %diff.imagp8 = getelementptr inbounds { float, float }, ptr %diff, i32 0, i32 1
  %7 = load float, ptr %diff.imagp8, align 4
  %diff.imagp9 = getelementptr inbounds { float, float }, ptr %diff, i32 0, i32 1
  %8 = load float, ptr %diff.imagp9, align 4
  %mul10 = fmul float %7, %8
  %9 = call float @llvm.fmuladd.f32(float %5, float %6, float %mul10)
  store float %9, ptr %mag2_diff, align 4
  %10 = load float, ptr %mag2_diff, align 4
  %11 = load float, ptr %mag2_a, align 4
  %div = fdiv float %10, %11
  %cmp = fcmp olt float %div, 0x3D70000000000000
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ary = alloca [100 x { float, float }], align 4
  %sum = alloca { float, float }, align 4
  %prod = alloca { float, float }, align 4
  %ix = alloca i32, align 4
  %frac = alloca float, align 4
  %coerce = alloca { float, float }, align 4
  %coerce27 = alloca { float, float }, align 4
  %coerce38 = alloca { float, float }, align 4
  %coerce39 = alloca { float, float }, align 4
  %coerce53 = alloca { float, float }, align 4
  %coerce54 = alloca { float, float }, align 4
  store i32 0, ptr %retval, align 4
  %sum.realp = getelementptr inbounds { float, float }, ptr %sum, i32 0, i32 0
  %sum.imagp = getelementptr inbounds { float, float }, ptr %sum, i32 0, i32 1
  store float 0.000000e+00, ptr %sum.realp, align 4
  store float 0.000000e+00, ptr %sum.imagp, align 4
  %prod.realp = getelementptr inbounds { float, float }, ptr %prod, i32 0, i32 0
  %prod.imagp = getelementptr inbounds { float, float }, ptr %prod, i32 0, i32 1
  store float 1.000000e+00, ptr %prod.realp, align 4
  store float 0.000000e+00, ptr %prod.imagp, align 4
  store i32 0, ptr %ix, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %ix, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %ix, align 4
  %conv = sitofp i32 %1 to float
  %2 = call float @llvm.fmuladd.f32(float %conv, float 0x3F50000000000000, float 1.000000e+00)
  store float %2, ptr %frac, align 4
  %3 = load float, ptr %frac, align 4
  %conv1 = fpext float %3 to double
  %4 = load float, ptr %frac, align 4
  %conv2 = fpext float %4 to double
  %mul.rl = fmul double %conv2, 0.000000e+00
  %mul.ir = fmul double %conv2, 2.000000e+00
  %add.r = fadd double %conv1, %mul.rl
  %sub.r = fsub double %add.r, 0.000000e+00
  %sub.i = fsub double %mul.ir, 1.000000e+00
  %conv3 = fptrunc double %sub.r to float
  %conv4 = fptrunc double %sub.i to float
  %5 = load i32, ptr %ix, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [100 x { float, float }], ptr %ary, i64 0, i64 %idxprom
  %arrayidx.realp = getelementptr inbounds { float, float }, ptr %arrayidx, i32 0, i32 0
  %arrayidx.imagp = getelementptr inbounds { float, float }, ptr %arrayidx, i32 0, i32 1
  store float %conv3, ptr %arrayidx.realp, align 4
  store float %conv4, ptr %arrayidx.imagp, align 4
  %6 = load i32, ptr %ix, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [100 x { float, float }], ptr %ary, i64 0, i64 %idxprom5
  %arrayidx6.realp = getelementptr inbounds { float, float }, ptr %arrayidx6, i32 0, i32 0
  %arrayidx6.real = load float, ptr %arrayidx6.realp, align 4
  %arrayidx6.imagp = getelementptr inbounds { float, float }, ptr %arrayidx6, i32 0, i32 1
  %arrayidx6.imag = load float, ptr %arrayidx6.imagp, align 4
  %sum.realp7 = getelementptr inbounds { float, float }, ptr %sum, i32 0, i32 0
  %sum.real = load float, ptr %sum.realp7, align 4
  %sum.imagp8 = getelementptr inbounds { float, float }, ptr %sum, i32 0, i32 1
  %sum.imag = load float, ptr %sum.imagp8, align 4
  %add.r9 = fadd float %sum.real, %arrayidx6.real
  %add.i = fadd float %sum.imag, %arrayidx6.imag
  %sum.realp10 = getelementptr inbounds { float, float }, ptr %sum, i32 0, i32 0
  %sum.imagp11 = getelementptr inbounds { float, float }, ptr %sum, i32 0, i32 1
  store float %add.r9, ptr %sum.realp10, align 4
  store float %add.i, ptr %sum.imagp11, align 4
  %7 = load i32, ptr %ix, align 4
  %idxprom12 = sext i32 %7 to i64
  %arrayidx13 = getelementptr inbounds [100 x { float, float }], ptr %ary, i64 0, i64 %idxprom12
  %arrayidx13.realp = getelementptr inbounds { float, float }, ptr %arrayidx13, i32 0, i32 0
  %arrayidx13.real = load float, ptr %arrayidx13.realp, align 4
  %arrayidx13.imagp = getelementptr inbounds { float, float }, ptr %arrayidx13, i32 0, i32 1
  %arrayidx13.imag = load float, ptr %arrayidx13.imagp, align 4
  %prod.realp14 = getelementptr inbounds { float, float }, ptr %prod, i32 0, i32 0
  %prod.real = load float, ptr %prod.realp14, align 4
  %prod.imagp15 = getelementptr inbounds { float, float }, ptr %prod, i32 0, i32 1
  %prod.imag = load float, ptr %prod.imagp15, align 4
  %mul_ac = fmul float %prod.real, %arrayidx13.real
  %mul_bd = fmul float %prod.imag, %arrayidx13.imag
  %mul_ad = fmul float %prod.real, %arrayidx13.imag
  %mul_bc = fmul float %prod.imag, %arrayidx13.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !5

complex_mul_imag_nan:                             ; preds = %for.body
  %isnan_cmp16 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp16, label %complex_mul_libcall, label %complex_mul_cont, !prof !5

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call = call { float, float } @__mulsc3(float noundef %prod.real, float noundef %prod.imag, float noundef %arrayidx13.real, float noundef %arrayidx13.imag) #2
  %8 = extractvalue { float, float } %call, 0
  %9 = extractvalue { float, float } %call, 1
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %for.body
  %real_mul_phi = phi float [ %mul_r, %for.body ], [ %mul_r, %complex_mul_imag_nan ], [ %8, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %for.body ], [ %mul_i, %complex_mul_imag_nan ], [ %9, %complex_mul_libcall ]
  %prod.realp17 = getelementptr inbounds { float, float }, ptr %prod, i32 0, i32 0
  %prod.imagp18 = getelementptr inbounds { float, float }, ptr %prod, i32 0, i32 1
  store float %real_mul_phi, ptr %prod.realp17, align 4
  store float %imag_mul_phi, ptr %prod.imagp18, align 4
  br label %for.inc

for.inc:                                          ; preds = %complex_mul_cont
  %10 = load i32, ptr %ix, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %ix, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [100 x { float, float }], ptr %ary, i64 0, i64 0
  %sum.realp19 = getelementptr inbounds { float, float }, ptr %sum, i32 0, i32 0
  %sum.real20 = load float, ptr %sum.realp19, align 4
  %sum.imagp21 = getelementptr inbounds { float, float }, ptr %sum, i32 0, i32 1
  %sum.imag22 = load float, ptr %sum.imagp21, align 4
  %prod.realp23 = getelementptr inbounds { float, float }, ptr %prod, i32 0, i32 0
  %prod.real24 = load float, ptr %prod.realp23, align 4
  %prod.imagp25 = getelementptr inbounds { float, float }, ptr %prod, i32 0, i32 1
  %prod.imag26 = load float, ptr %prod.imagp25, align 4
  %coerce.realp = getelementptr inbounds { float, float }, ptr %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { float, float }, ptr %coerce, i32 0, i32 1
  store float %sum.real20, ptr %coerce.realp, align 4
  store float %sum.imag22, ptr %coerce.imagp, align 4
  %11 = load [2 x float], ptr %coerce, align 4
  %coerce27.realp = getelementptr inbounds { float, float }, ptr %coerce27, i32 0, i32 0
  %coerce27.imagp = getelementptr inbounds { float, float }, ptr %coerce27, i32 0, i32 1
  store float %prod.real24, ptr %coerce27.realp, align 4
  store float %prod.imag26, ptr %coerce27.imagp, align 4
  %12 = load [2 x float], ptr %coerce27, align 4
  %call28 = call i32 @vector(ptr noundef %arraydecay, [2 x float] noundef %11, [2 x float] noundef %12)
  %tobool = icmp ne i32 %call28, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.end
  %arraydecay29 = getelementptr inbounds [100 x { float, float }], ptr %ary, i64 0, i64 0
  %sum.realp30 = getelementptr inbounds { float, float }, ptr %sum, i32 0, i32 0
  %sum.real31 = load float, ptr %sum.realp30, align 4
  %sum.imagp32 = getelementptr inbounds { float, float }, ptr %sum, i32 0, i32 1
  %sum.imag33 = load float, ptr %sum.imagp32, align 4
  %prod.realp34 = getelementptr inbounds { float, float }, ptr %prod, i32 0, i32 0
  %prod.real35 = load float, ptr %prod.realp34, align 4
  %prod.imagp36 = getelementptr inbounds { float, float }, ptr %prod, i32 0, i32 1
  %prod.imag37 = load float, ptr %prod.imagp36, align 4
  %coerce38.realp = getelementptr inbounds { float, float }, ptr %coerce38, i32 0, i32 0
  %coerce38.imagp = getelementptr inbounds { float, float }, ptr %coerce38, i32 0, i32 1
  store float %sum.real31, ptr %coerce38.realp, align 4
  store float %sum.imag33, ptr %coerce38.imagp, align 4
  %13 = load [2 x float], ptr %coerce38, align 4
  %coerce39.realp = getelementptr inbounds { float, float }, ptr %coerce39, i32 0, i32 0
  %coerce39.imagp = getelementptr inbounds { float, float }, ptr %coerce39, i32 0, i32 1
  store float %prod.real35, ptr %coerce39.realp, align 4
  store float %prod.imag37, ptr %coerce39.imagp, align 4
  %14 = load [2 x float], ptr %coerce39, align 4
  %call40 = call i32 @worker(ptr noundef %arraydecay29, [2 x float] noundef %13, [2 x float] noundef %14)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end43:                                         ; preds = %if.end
  %arraydecay44 = getelementptr inbounds [100 x { float, float }], ptr %ary, i64 0, i64 0
  %sum.realp45 = getelementptr inbounds { float, float }, ptr %sum, i32 0, i32 0
  %sum.real46 = load float, ptr %sum.realp45, align 4
  %sum.imagp47 = getelementptr inbounds { float, float }, ptr %sum, i32 0, i32 1
  %sum.imag48 = load float, ptr %sum.imagp47, align 4
  %prod.realp49 = getelementptr inbounds { float, float }, ptr %prod, i32 0, i32 0
  %prod.real50 = load float, ptr %prod.realp49, align 4
  %prod.imagp51 = getelementptr inbounds { float, float }, ptr %prod, i32 0, i32 1
  %prod.imag52 = load float, ptr %prod.imagp51, align 4
  %coerce53.realp = getelementptr inbounds { float, float }, ptr %coerce53, i32 0, i32 0
  %coerce53.imagp = getelementptr inbounds { float, float }, ptr %coerce53, i32 0, i32 1
  store float %sum.real46, ptr %coerce53.realp, align 4
  store float %sum.imag48, ptr %coerce53.imagp, align 4
  %15 = load [2 x float], ptr %coerce53, align 4
  %coerce54.realp = getelementptr inbounds { float, float }, ptr %coerce54, i32 0, i32 0
  %coerce54.imagp = getelementptr inbounds { float, float }, ptr %coerce54, i32 0, i32 1
  store float %prod.real50, ptr %coerce54.realp, align 4
  store float %prod.imag52, ptr %coerce54.imagp, align 4
  %16 = load [2 x float], ptr %coerce54, align 4
  %call55 = call i32 @gang(ptr noundef %arraydecay44, [2 x float] noundef %15, [2 x float] noundef %16)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end43
  store i32 1, ptr %retval, align 4
  br label %return

if.end58:                                         ; preds = %if.end43
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end58, %if.then57, %if.then42, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

declare { float, float } @__mulsc3(float, float, float, float)

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @vector(ptr noundef %ary, [2 x float] noundef %sum.coerce, [2 x float] noundef %prod.coerce) #0 {
entry:
  %retval = alloca i32, align 4
  %sum = alloca { float, float }, align 4
  %prod = alloca { float, float }, align 4
  %ary.addr = alloca ptr, align 8
  %tsum = alloca { float, float }, align 4
  %tprod = alloca { float, float }, align 4
  %ix = alloca i32, align 4
  %coerce = alloca { float, float }, align 4
  %coerce16 = alloca { float, float }, align 4
  %coerce22 = alloca { float, float }, align 4
  %coerce23 = alloca { float, float }, align 4
  store [2 x float] %sum.coerce, ptr %sum, align 4
  store [2 x float] %prod.coerce, ptr %prod, align 4
  store ptr %ary, ptr %ary.addr, align 8
  %tsum.realp = getelementptr inbounds { float, float }, ptr %tsum, i32 0, i32 0
  %tsum.imagp = getelementptr inbounds { float, float }, ptr %tsum, i32 0, i32 1
  store float 0.000000e+00, ptr %tsum.realp, align 4
  store float 0.000000e+00, ptr %tsum.imagp, align 4
  %tprod.realp = getelementptr inbounds { float, float }, ptr %tprod, i32 0, i32 0
  %tprod.imagp = getelementptr inbounds { float, float }, ptr %tprod, i32 0, i32 1
  store float 1.000000e+00, ptr %tprod.realp, align 4
  store float 0.000000e+00, ptr %tprod.imagp, align 4
  store i32 0, ptr %ix, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %ix, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %ary.addr, align 8
  %2 = load i32, ptr %ix, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds { float, float }, ptr %1, i64 %idxprom
  %arrayidx.realp = getelementptr inbounds { float, float }, ptr %arrayidx, i32 0, i32 0
  %arrayidx.real = load float, ptr %arrayidx.realp, align 4
  %arrayidx.imagp = getelementptr inbounds { float, float }, ptr %arrayidx, i32 0, i32 1
  %arrayidx.imag = load float, ptr %arrayidx.imagp, align 4
  %tsum.realp1 = getelementptr inbounds { float, float }, ptr %tsum, i32 0, i32 0
  %tsum.real = load float, ptr %tsum.realp1, align 4
  %tsum.imagp2 = getelementptr inbounds { float, float }, ptr %tsum, i32 0, i32 1
  %tsum.imag = load float, ptr %tsum.imagp2, align 4
  %add.r = fadd float %tsum.real, %arrayidx.real
  %add.i = fadd float %tsum.imag, %arrayidx.imag
  %tsum.realp3 = getelementptr inbounds { float, float }, ptr %tsum, i32 0, i32 0
  %tsum.imagp4 = getelementptr inbounds { float, float }, ptr %tsum, i32 0, i32 1
  store float %add.r, ptr %tsum.realp3, align 4
  store float %add.i, ptr %tsum.imagp4, align 4
  %3 = load ptr, ptr %ary.addr, align 8
  %4 = load i32, ptr %ix, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds { float, float }, ptr %3, i64 %idxprom5
  %arrayidx6.realp = getelementptr inbounds { float, float }, ptr %arrayidx6, i32 0, i32 0
  %arrayidx6.real = load float, ptr %arrayidx6.realp, align 4
  %arrayidx6.imagp = getelementptr inbounds { float, float }, ptr %arrayidx6, i32 0, i32 1
  %arrayidx6.imag = load float, ptr %arrayidx6.imagp, align 4
  %tprod.realp7 = getelementptr inbounds { float, float }, ptr %tprod, i32 0, i32 0
  %tprod.real = load float, ptr %tprod.realp7, align 4
  %tprod.imagp8 = getelementptr inbounds { float, float }, ptr %tprod, i32 0, i32 1
  %tprod.imag = load float, ptr %tprod.imagp8, align 4
  %mul_ac = fmul float %tprod.real, %arrayidx6.real
  %mul_bd = fmul float %tprod.imag, %arrayidx6.imag
  %mul_ad = fmul float %tprod.real, %arrayidx6.imag
  %mul_bc = fmul float %tprod.imag, %arrayidx6.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !5

complex_mul_imag_nan:                             ; preds = %for.body
  %isnan_cmp9 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp9, label %complex_mul_libcall, label %complex_mul_cont, !prof !5

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call = call { float, float } @__mulsc3(float noundef %tprod.real, float noundef %tprod.imag, float noundef %arrayidx6.real, float noundef %arrayidx6.imag) #2
  %5 = extractvalue { float, float } %call, 0
  %6 = extractvalue { float, float } %call, 1
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %for.body
  %real_mul_phi = phi float [ %mul_r, %for.body ], [ %mul_r, %complex_mul_imag_nan ], [ %5, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %for.body ], [ %mul_i, %complex_mul_imag_nan ], [ %6, %complex_mul_libcall ]
  %tprod.realp10 = getelementptr inbounds { float, float }, ptr %tprod, i32 0, i32 0
  %tprod.imagp11 = getelementptr inbounds { float, float }, ptr %tprod, i32 0, i32 1
  store float %real_mul_phi, ptr %tprod.realp10, align 4
  store float %imag_mul_phi, ptr %tprod.imagp11, align 4
  br label %for.inc

for.inc:                                          ; preds = %complex_mul_cont
  %7 = load i32, ptr %ix, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %ix, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %sum.realp = getelementptr inbounds { float, float }, ptr %sum, i32 0, i32 0
  %sum.real = load float, ptr %sum.realp, align 4
  %sum.imagp = getelementptr inbounds { float, float }, ptr %sum, i32 0, i32 1
  %sum.imag = load float, ptr %sum.imagp, align 4
  %tsum.realp12 = getelementptr inbounds { float, float }, ptr %tsum, i32 0, i32 0
  %tsum.real13 = load float, ptr %tsum.realp12, align 4
  %tsum.imagp14 = getelementptr inbounds { float, float }, ptr %tsum, i32 0, i32 1
  %tsum.imag15 = load float, ptr %tsum.imagp14, align 4
  %coerce.realp = getelementptr inbounds { float, float }, ptr %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { float, float }, ptr %coerce, i32 0, i32 1
  store float %sum.real, ptr %coerce.realp, align 4
  store float %sum.imag, ptr %coerce.imagp, align 4
  %8 = load [2 x float], ptr %coerce, align 4
  %coerce16.realp = getelementptr inbounds { float, float }, ptr %coerce16, i32 0, i32 0
  %coerce16.imagp = getelementptr inbounds { float, float }, ptr %coerce16, i32 0, i32 1
  store float %tsum.real13, ptr %coerce16.realp, align 4
  store float %tsum.imag15, ptr %coerce16.imagp, align 4
  %9 = load [2 x float], ptr %coerce16, align 4
  %call17 = call i32 @close_enough([2 x float] noundef %8, [2 x float] noundef %9)
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.end
  %prod.realp = getelementptr inbounds { float, float }, ptr %prod, i32 0, i32 0
  %prod.real = load float, ptr %prod.realp, align 4
  %prod.imagp = getelementptr inbounds { float, float }, ptr %prod, i32 0, i32 1
  %prod.imag = load float, ptr %prod.imagp, align 4
  %tprod.realp18 = getelementptr inbounds { float, float }, ptr %tprod, i32 0, i32 0
  %tprod.real19 = load float, ptr %tprod.realp18, align 4
  %tprod.imagp20 = getelementptr inbounds { float, float }, ptr %tprod, i32 0, i32 1
  %tprod.imag21 = load float, ptr %tprod.imagp20, align 4
  %coerce22.realp = getelementptr inbounds { float, float }, ptr %coerce22, i32 0, i32 0
  %coerce22.imagp = getelementptr inbounds { float, float }, ptr %coerce22, i32 0, i32 1
  store float %prod.real, ptr %coerce22.realp, align 4
  store float %prod.imag, ptr %coerce22.imagp, align 4
  %10 = load [2 x float], ptr %coerce22, align 4
  %coerce23.realp = getelementptr inbounds { float, float }, ptr %coerce23, i32 0, i32 0
  %coerce23.imagp = getelementptr inbounds { float, float }, ptr %coerce23, i32 0, i32 1
  store float %tprod.real19, ptr %coerce23.realp, align 4
  store float %tprod.imag21, ptr %coerce23.imagp, align 4
  %11 = load [2 x float], ptr %coerce23, align 4
  %call24 = call i32 @close_enough([2 x float] noundef %10, [2 x float] noundef %11)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end27, %if.then26, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @worker(ptr noundef %ary, [2 x float] noundef %sum.coerce, [2 x float] noundef %prod.coerce) #0 {
entry:
  %retval = alloca i32, align 4
  %sum = alloca { float, float }, align 4
  %prod = alloca { float, float }, align 4
  %ary.addr = alloca ptr, align 8
  %tsum = alloca { float, float }, align 4
  %tprod = alloca { float, float }, align 4
  %ix = alloca i32, align 4
  %coerce = alloca { float, float }, align 4
  %coerce16 = alloca { float, float }, align 4
  %coerce22 = alloca { float, float }, align 4
  %coerce23 = alloca { float, float }, align 4
  store [2 x float] %sum.coerce, ptr %sum, align 4
  store [2 x float] %prod.coerce, ptr %prod, align 4
  store ptr %ary, ptr %ary.addr, align 8
  %tsum.realp = getelementptr inbounds { float, float }, ptr %tsum, i32 0, i32 0
  %tsum.imagp = getelementptr inbounds { float, float }, ptr %tsum, i32 0, i32 1
  store float 0.000000e+00, ptr %tsum.realp, align 4
  store float 0.000000e+00, ptr %tsum.imagp, align 4
  %tprod.realp = getelementptr inbounds { float, float }, ptr %tprod, i32 0, i32 0
  %tprod.imagp = getelementptr inbounds { float, float }, ptr %tprod, i32 0, i32 1
  store float 1.000000e+00, ptr %tprod.realp, align 4
  store float 0.000000e+00, ptr %tprod.imagp, align 4
  store i32 0, ptr %ix, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %ix, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %ary.addr, align 8
  %2 = load i32, ptr %ix, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds { float, float }, ptr %1, i64 %idxprom
  %arrayidx.realp = getelementptr inbounds { float, float }, ptr %arrayidx, i32 0, i32 0
  %arrayidx.real = load float, ptr %arrayidx.realp, align 4
  %arrayidx.imagp = getelementptr inbounds { float, float }, ptr %arrayidx, i32 0, i32 1
  %arrayidx.imag = load float, ptr %arrayidx.imagp, align 4
  %tsum.realp1 = getelementptr inbounds { float, float }, ptr %tsum, i32 0, i32 0
  %tsum.real = load float, ptr %tsum.realp1, align 4
  %tsum.imagp2 = getelementptr inbounds { float, float }, ptr %tsum, i32 0, i32 1
  %tsum.imag = load float, ptr %tsum.imagp2, align 4
  %add.r = fadd float %tsum.real, %arrayidx.real
  %add.i = fadd float %tsum.imag, %arrayidx.imag
  %tsum.realp3 = getelementptr inbounds { float, float }, ptr %tsum, i32 0, i32 0
  %tsum.imagp4 = getelementptr inbounds { float, float }, ptr %tsum, i32 0, i32 1
  store float %add.r, ptr %tsum.realp3, align 4
  store float %add.i, ptr %tsum.imagp4, align 4
  %3 = load ptr, ptr %ary.addr, align 8
  %4 = load i32, ptr %ix, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds { float, float }, ptr %3, i64 %idxprom5
  %arrayidx6.realp = getelementptr inbounds { float, float }, ptr %arrayidx6, i32 0, i32 0
  %arrayidx6.real = load float, ptr %arrayidx6.realp, align 4
  %arrayidx6.imagp = getelementptr inbounds { float, float }, ptr %arrayidx6, i32 0, i32 1
  %arrayidx6.imag = load float, ptr %arrayidx6.imagp, align 4
  %tprod.realp7 = getelementptr inbounds { float, float }, ptr %tprod, i32 0, i32 0
  %tprod.real = load float, ptr %tprod.realp7, align 4
  %tprod.imagp8 = getelementptr inbounds { float, float }, ptr %tprod, i32 0, i32 1
  %tprod.imag = load float, ptr %tprod.imagp8, align 4
  %mul_ac = fmul float %tprod.real, %arrayidx6.real
  %mul_bd = fmul float %tprod.imag, %arrayidx6.imag
  %mul_ad = fmul float %tprod.real, %arrayidx6.imag
  %mul_bc = fmul float %tprod.imag, %arrayidx6.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !5

complex_mul_imag_nan:                             ; preds = %for.body
  %isnan_cmp9 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp9, label %complex_mul_libcall, label %complex_mul_cont, !prof !5

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call = call { float, float } @__mulsc3(float noundef %tprod.real, float noundef %tprod.imag, float noundef %arrayidx6.real, float noundef %arrayidx6.imag) #2
  %5 = extractvalue { float, float } %call, 0
  %6 = extractvalue { float, float } %call, 1
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %for.body
  %real_mul_phi = phi float [ %mul_r, %for.body ], [ %mul_r, %complex_mul_imag_nan ], [ %5, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %for.body ], [ %mul_i, %complex_mul_imag_nan ], [ %6, %complex_mul_libcall ]
  %tprod.realp10 = getelementptr inbounds { float, float }, ptr %tprod, i32 0, i32 0
  %tprod.imagp11 = getelementptr inbounds { float, float }, ptr %tprod, i32 0, i32 1
  store float %real_mul_phi, ptr %tprod.realp10, align 4
  store float %imag_mul_phi, ptr %tprod.imagp11, align 4
  br label %for.inc

for.inc:                                          ; preds = %complex_mul_cont
  %7 = load i32, ptr %ix, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %ix, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %sum.realp = getelementptr inbounds { float, float }, ptr %sum, i32 0, i32 0
  %sum.real = load float, ptr %sum.realp, align 4
  %sum.imagp = getelementptr inbounds { float, float }, ptr %sum, i32 0, i32 1
  %sum.imag = load float, ptr %sum.imagp, align 4
  %tsum.realp12 = getelementptr inbounds { float, float }, ptr %tsum, i32 0, i32 0
  %tsum.real13 = load float, ptr %tsum.realp12, align 4
  %tsum.imagp14 = getelementptr inbounds { float, float }, ptr %tsum, i32 0, i32 1
  %tsum.imag15 = load float, ptr %tsum.imagp14, align 4
  %coerce.realp = getelementptr inbounds { float, float }, ptr %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { float, float }, ptr %coerce, i32 0, i32 1
  store float %sum.real, ptr %coerce.realp, align 4
  store float %sum.imag, ptr %coerce.imagp, align 4
  %8 = load [2 x float], ptr %coerce, align 4
  %coerce16.realp = getelementptr inbounds { float, float }, ptr %coerce16, i32 0, i32 0
  %coerce16.imagp = getelementptr inbounds { float, float }, ptr %coerce16, i32 0, i32 1
  store float %tsum.real13, ptr %coerce16.realp, align 4
  store float %tsum.imag15, ptr %coerce16.imagp, align 4
  %9 = load [2 x float], ptr %coerce16, align 4
  %call17 = call i32 @close_enough([2 x float] noundef %8, [2 x float] noundef %9)
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.end
  %prod.realp = getelementptr inbounds { float, float }, ptr %prod, i32 0, i32 0
  %prod.real = load float, ptr %prod.realp, align 4
  %prod.imagp = getelementptr inbounds { float, float }, ptr %prod, i32 0, i32 1
  %prod.imag = load float, ptr %prod.imagp, align 4
  %tprod.realp18 = getelementptr inbounds { float, float }, ptr %tprod, i32 0, i32 0
  %tprod.real19 = load float, ptr %tprod.realp18, align 4
  %tprod.imagp20 = getelementptr inbounds { float, float }, ptr %tprod, i32 0, i32 1
  %tprod.imag21 = load float, ptr %tprod.imagp20, align 4
  %coerce22.realp = getelementptr inbounds { float, float }, ptr %coerce22, i32 0, i32 0
  %coerce22.imagp = getelementptr inbounds { float, float }, ptr %coerce22, i32 0, i32 1
  store float %prod.real, ptr %coerce22.realp, align 4
  store float %prod.imag, ptr %coerce22.imagp, align 4
  %10 = load [2 x float], ptr %coerce22, align 4
  %coerce23.realp = getelementptr inbounds { float, float }, ptr %coerce23, i32 0, i32 0
  %coerce23.imagp = getelementptr inbounds { float, float }, ptr %coerce23, i32 0, i32 1
  store float %tprod.real19, ptr %coerce23.realp, align 4
  store float %tprod.imag21, ptr %coerce23.imagp, align 4
  %11 = load [2 x float], ptr %coerce23, align 4
  %call24 = call i32 @close_enough([2 x float] noundef %10, [2 x float] noundef %11)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end27, %if.then26, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @gang(ptr noundef %ary, [2 x float] noundef %sum.coerce, [2 x float] noundef %prod.coerce) #0 {
entry:
  %retval = alloca i32, align 4
  %sum = alloca { float, float }, align 4
  %prod = alloca { float, float }, align 4
  %ary.addr = alloca ptr, align 8
  %tsum = alloca { float, float }, align 4
  %tprod = alloca { float, float }, align 4
  %ix = alloca i32, align 4
  %coerce = alloca { float, float }, align 4
  %coerce16 = alloca { float, float }, align 4
  %coerce22 = alloca { float, float }, align 4
  %coerce23 = alloca { float, float }, align 4
  store [2 x float] %sum.coerce, ptr %sum, align 4
  store [2 x float] %prod.coerce, ptr %prod, align 4
  store ptr %ary, ptr %ary.addr, align 8
  %tsum.realp = getelementptr inbounds { float, float }, ptr %tsum, i32 0, i32 0
  %tsum.imagp = getelementptr inbounds { float, float }, ptr %tsum, i32 0, i32 1
  store float 0.000000e+00, ptr %tsum.realp, align 4
  store float 0.000000e+00, ptr %tsum.imagp, align 4
  %tprod.realp = getelementptr inbounds { float, float }, ptr %tprod, i32 0, i32 0
  %tprod.imagp = getelementptr inbounds { float, float }, ptr %tprod, i32 0, i32 1
  store float 1.000000e+00, ptr %tprod.realp, align 4
  store float 0.000000e+00, ptr %tprod.imagp, align 4
  store i32 0, ptr %ix, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %ix, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %ary.addr, align 8
  %2 = load i32, ptr %ix, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds { float, float }, ptr %1, i64 %idxprom
  %arrayidx.realp = getelementptr inbounds { float, float }, ptr %arrayidx, i32 0, i32 0
  %arrayidx.real = load float, ptr %arrayidx.realp, align 4
  %arrayidx.imagp = getelementptr inbounds { float, float }, ptr %arrayidx, i32 0, i32 1
  %arrayidx.imag = load float, ptr %arrayidx.imagp, align 4
  %tsum.realp1 = getelementptr inbounds { float, float }, ptr %tsum, i32 0, i32 0
  %tsum.real = load float, ptr %tsum.realp1, align 4
  %tsum.imagp2 = getelementptr inbounds { float, float }, ptr %tsum, i32 0, i32 1
  %tsum.imag = load float, ptr %tsum.imagp2, align 4
  %add.r = fadd float %tsum.real, %arrayidx.real
  %add.i = fadd float %tsum.imag, %arrayidx.imag
  %tsum.realp3 = getelementptr inbounds { float, float }, ptr %tsum, i32 0, i32 0
  %tsum.imagp4 = getelementptr inbounds { float, float }, ptr %tsum, i32 0, i32 1
  store float %add.r, ptr %tsum.realp3, align 4
  store float %add.i, ptr %tsum.imagp4, align 4
  %3 = load ptr, ptr %ary.addr, align 8
  %4 = load i32, ptr %ix, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds { float, float }, ptr %3, i64 %idxprom5
  %arrayidx6.realp = getelementptr inbounds { float, float }, ptr %arrayidx6, i32 0, i32 0
  %arrayidx6.real = load float, ptr %arrayidx6.realp, align 4
  %arrayidx6.imagp = getelementptr inbounds { float, float }, ptr %arrayidx6, i32 0, i32 1
  %arrayidx6.imag = load float, ptr %arrayidx6.imagp, align 4
  %tprod.realp7 = getelementptr inbounds { float, float }, ptr %tprod, i32 0, i32 0
  %tprod.real = load float, ptr %tprod.realp7, align 4
  %tprod.imagp8 = getelementptr inbounds { float, float }, ptr %tprod, i32 0, i32 1
  %tprod.imag = load float, ptr %tprod.imagp8, align 4
  %mul_ac = fmul float %tprod.real, %arrayidx6.real
  %mul_bd = fmul float %tprod.imag, %arrayidx6.imag
  %mul_ad = fmul float %tprod.real, %arrayidx6.imag
  %mul_bc = fmul float %tprod.imag, %arrayidx6.real
  %mul_r = fsub float %mul_ac, %mul_bd
  %mul_i = fadd float %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno float %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !5

complex_mul_imag_nan:                             ; preds = %for.body
  %isnan_cmp9 = fcmp uno float %mul_i, %mul_i
  br i1 %isnan_cmp9, label %complex_mul_libcall, label %complex_mul_cont, !prof !5

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call = call { float, float } @__mulsc3(float noundef %tprod.real, float noundef %tprod.imag, float noundef %arrayidx6.real, float noundef %arrayidx6.imag) #2
  %5 = extractvalue { float, float } %call, 0
  %6 = extractvalue { float, float } %call, 1
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %for.body
  %real_mul_phi = phi float [ %mul_r, %for.body ], [ %mul_r, %complex_mul_imag_nan ], [ %5, %complex_mul_libcall ]
  %imag_mul_phi = phi float [ %mul_i, %for.body ], [ %mul_i, %complex_mul_imag_nan ], [ %6, %complex_mul_libcall ]
  %tprod.realp10 = getelementptr inbounds { float, float }, ptr %tprod, i32 0, i32 0
  %tprod.imagp11 = getelementptr inbounds { float, float }, ptr %tprod, i32 0, i32 1
  store float %real_mul_phi, ptr %tprod.realp10, align 4
  store float %imag_mul_phi, ptr %tprod.imagp11, align 4
  br label %for.inc

for.inc:                                          ; preds = %complex_mul_cont
  %7 = load i32, ptr %ix, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %ix, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %sum.realp = getelementptr inbounds { float, float }, ptr %sum, i32 0, i32 0
  %sum.real = load float, ptr %sum.realp, align 4
  %sum.imagp = getelementptr inbounds { float, float }, ptr %sum, i32 0, i32 1
  %sum.imag = load float, ptr %sum.imagp, align 4
  %tsum.realp12 = getelementptr inbounds { float, float }, ptr %tsum, i32 0, i32 0
  %tsum.real13 = load float, ptr %tsum.realp12, align 4
  %tsum.imagp14 = getelementptr inbounds { float, float }, ptr %tsum, i32 0, i32 1
  %tsum.imag15 = load float, ptr %tsum.imagp14, align 4
  %coerce.realp = getelementptr inbounds { float, float }, ptr %coerce, i32 0, i32 0
  %coerce.imagp = getelementptr inbounds { float, float }, ptr %coerce, i32 0, i32 1
  store float %sum.real, ptr %coerce.realp, align 4
  store float %sum.imag, ptr %coerce.imagp, align 4
  %8 = load [2 x float], ptr %coerce, align 4
  %coerce16.realp = getelementptr inbounds { float, float }, ptr %coerce16, i32 0, i32 0
  %coerce16.imagp = getelementptr inbounds { float, float }, ptr %coerce16, i32 0, i32 1
  store float %tsum.real13, ptr %coerce16.realp, align 4
  store float %tsum.imag15, ptr %coerce16.imagp, align 4
  %9 = load [2 x float], ptr %coerce16, align 4
  %call17 = call i32 @close_enough([2 x float] noundef %8, [2 x float] noundef %9)
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.end
  %prod.realp = getelementptr inbounds { float, float }, ptr %prod, i32 0, i32 0
  %prod.real = load float, ptr %prod.realp, align 4
  %prod.imagp = getelementptr inbounds { float, float }, ptr %prod, i32 0, i32 1
  %prod.imag = load float, ptr %prod.imagp, align 4
  %tprod.realp18 = getelementptr inbounds { float, float }, ptr %tprod, i32 0, i32 0
  %tprod.real19 = load float, ptr %tprod.realp18, align 4
  %tprod.imagp20 = getelementptr inbounds { float, float }, ptr %tprod, i32 0, i32 1
  %tprod.imag21 = load float, ptr %tprod.imagp20, align 4
  %coerce22.realp = getelementptr inbounds { float, float }, ptr %coerce22, i32 0, i32 0
  %coerce22.imagp = getelementptr inbounds { float, float }, ptr %coerce22, i32 0, i32 1
  store float %prod.real, ptr %coerce22.realp, align 4
  store float %prod.imag, ptr %coerce22.imagp, align 4
  %10 = load [2 x float], ptr %coerce22, align 4
  %coerce23.realp = getelementptr inbounds { float, float }, ptr %coerce23, i32 0, i32 0
  %coerce23.imagp = getelementptr inbounds { float, float }, ptr %coerce23, i32 0, i32 1
  store float %tprod.real19, ptr %coerce23.realp, align 4
  store float %tprod.imag21, ptr %coerce23.imagp, align 4
  %11 = load [2 x float], ptr %coerce23, align 4
  %call24 = call i32 @close_enough([2 x float] noundef %10, [2 x float] noundef %11)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end27, %if.then26, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!10 = distinct !{!10, !7}
