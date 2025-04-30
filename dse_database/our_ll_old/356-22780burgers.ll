; ModuleID = './code/356-22780burgers.c'
source_filename = "./code/356-22780burgers.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [12 x i8] c"%g,%g,%g,%g\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %nx = alloca i32, align 4
  %nt = alloca i32, align 4
  %c = alloca i32, align 4
  %pasos = alloca i32, align 4
  %dx = alloca double, align 8
  %sigma = alloca double, align 8
  %nu = alloca double, align 8
  %dt = alloca double, align 8
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %__vla_expr2 = alloca i64, align 8
  %__vla_expr3 = alloca i64, align 8
  %__vla_expr4 = alloca i64, align 8
  %__vla_expr5 = alloca i64, align 8
  %paso = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 41, ptr %nx, align 4
  store i32 120, ptr %nt, align 4
  store i32 1, ptr %c, align 4
  store i32 500, ptr %pasos, align 4
  %0 = load i32, ptr %nx, align 4
  %conv = sitofp i32 %0 to double
  %sub = fsub double %conv, 1.000000e+00
  %div = fdiv double 2.000000e+00, %sub
  store double %div, ptr %dx, align 8
  store double 9.000000e-04, ptr %sigma, align 8
  store double 1.000000e-02, ptr %nu, align 8
  %1 = load double, ptr %sigma, align 8
  %2 = load double, ptr %dx, align 8
  %mul = fmul double %1, %2
  %3 = load double, ptr %dx, align 8
  %mul1 = fmul double %mul, %3
  %4 = load double, ptr %nu, align 8
  %div2 = fdiv double %mul1, %4
  store double %div2, ptr %dt, align 8
  %5 = load i32, ptr %nx, align 4
  %6 = zext i32 %5 to i64
  %7 = call ptr @llvm.stacksave.p0()
  store ptr %7, ptr %saved_stack, align 8
  %vla = alloca double, i64 %6, align 8
  store i64 %6, ptr %__vla_expr0, align 8
  %8 = load i32, ptr %nx, align 4
  %9 = zext i32 %8 to i64
  %vla3 = alloca double, i64 %9, align 8
  store i64 %9, ptr %__vla_expr1, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %nx, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, ptr %i, align 4
  %conv5 = sitofp i32 %12 to double
  %13 = load double, ptr %dx, align 8
  %mul6 = fmul double %conv5, %13
  %14 = load i32, ptr %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds double, ptr %vla, i64 %idxprom
  store double %mul6, ptr %arrayidx, align 8
  %15 = load i32, ptr %i, align 4
  %conv7 = sitofp i32 %15 to double
  %16 = load double, ptr %dx, align 8
  %mul8 = fmul double %conv7, %16
  %17 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds double, ptr %vla3, i64 %idxprom9
  store double %mul8, ptr %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %i, align 4
  %add = add nsw i32 %18, 1
  store i32 %add, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %19 = load i32, ptr %nx, align 4
  %20 = zext i32 %19 to i64
  %21 = load i32, ptr %nx, align 4
  %22 = zext i32 %21 to i64
  %23 = mul nuw i64 %20, %22
  %vla11 = alloca double, i64 %23, align 8
  store i64 %20, ptr %__vla_expr2, align 8
  store i64 %22, ptr %__vla_expr3, align 8
  %24 = load i32, ptr %nx, align 4
  %25 = zext i32 %24 to i64
  %26 = load i32, ptr %nx, align 4
  %27 = zext i32 %26 to i64
  %28 = mul nuw i64 %25, %27
  %vla12 = alloca double, i64 %28, align 8
  store i64 %25, ptr %__vla_expr4, align 8
  store i64 %27, ptr %__vla_expr5, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc54, %for.end
  %29 = load i32, ptr %i, align 4
  %30 = load i32, ptr %nx, align 4
  %cmp14 = icmp slt i32 %29, %30
  br i1 %cmp14, label %for.body16, label %for.end56

for.body16:                                       ; preds = %for.cond13
  store i32 0, ptr %j, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc51, %for.body16
  %31 = load i32, ptr %j, align 4
  %32 = load i32, ptr %nx, align 4
  %cmp18 = icmp slt i32 %31, %32
  br i1 %cmp18, label %for.body20, label %for.end53

for.body20:                                       ; preds = %for.cond17
  %33 = load i32, ptr %i, align 4
  %conv21 = sitofp i32 %33 to double
  %cmp22 = fcmp oge double %conv21, 5.000000e-01
  br i1 %cmp22, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body20
  %34 = load i32, ptr %i, align 4
  %conv24 = sitofp i32 %34 to double
  %35 = load double, ptr %dx, align 8
  %cmp25 = fcmp ole double %conv24, %35
  br i1 %cmp25, label %land.lhs.true27, label %if.else

land.lhs.true27:                                  ; preds = %land.lhs.true
  %36 = load i32, ptr %j, align 4
  %conv28 = sitofp i32 %36 to double
  %cmp29 = fcmp oge double %conv28, 5.000000e-01
  br i1 %cmp29, label %land.lhs.true31, label %if.else

land.lhs.true31:                                  ; preds = %land.lhs.true27
  %37 = load i32, ptr %j, align 4
  %conv32 = sitofp i32 %37 to double
  %38 = load double, ptr %dx, align 8
  %cmp33 = fcmp ole double %conv32, %38
  br i1 %cmp33, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true31
  %39 = load i32, ptr %i, align 4
  %idxprom35 = sext i32 %39 to i64
  %40 = mul nsw i64 %idxprom35, %22
  %arrayidx36 = getelementptr inbounds double, ptr %vla11, i64 %40
  %41 = load i32, ptr %j, align 4
  %idxprom37 = sext i32 %41 to i64
  %arrayidx38 = getelementptr inbounds double, ptr %arrayidx36, i64 %idxprom37
  store double 2.000000e+00, ptr %arrayidx38, align 8
  %42 = load i32, ptr %i, align 4
  %idxprom39 = sext i32 %42 to i64
  %43 = mul nsw i64 %idxprom39, %27
  %arrayidx40 = getelementptr inbounds double, ptr %vla12, i64 %43
  %44 = load i32, ptr %j, align 4
  %idxprom41 = sext i32 %44 to i64
  %arrayidx42 = getelementptr inbounds double, ptr %arrayidx40, i64 %idxprom41
  store double 2.000000e+00, ptr %arrayidx42, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true31, %land.lhs.true27, %land.lhs.true, %for.body20
  %45 = load i32, ptr %i, align 4
  %idxprom43 = sext i32 %45 to i64
  %46 = mul nsw i64 %idxprom43, %22
  %arrayidx44 = getelementptr inbounds double, ptr %vla11, i64 %46
  %47 = load i32, ptr %j, align 4
  %idxprom45 = sext i32 %47 to i64
  %arrayidx46 = getelementptr inbounds double, ptr %arrayidx44, i64 %idxprom45
  store double 1.000000e+00, ptr %arrayidx46, align 8
  %48 = load i32, ptr %i, align 4
  %idxprom47 = sext i32 %48 to i64
  %49 = mul nsw i64 %idxprom47, %27
  %arrayidx48 = getelementptr inbounds double, ptr %vla12, i64 %49
  %50 = load i32, ptr %j, align 4
  %idxprom49 = sext i32 %50 to i64
  %arrayidx50 = getelementptr inbounds double, ptr %arrayidx48, i64 %idxprom49
  store double 1.000000e+00, ptr %arrayidx50, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc51

for.inc51:                                        ; preds = %if.end
  %51 = load i32, ptr %j, align 4
  %add52 = add nsw i32 %51, 1
  store i32 %add52, ptr %j, align 4
  br label %for.cond17, !llvm.loop !7

for.end53:                                        ; preds = %for.cond17
  br label %for.inc54

for.inc54:                                        ; preds = %for.end53
  %52 = load i32, ptr %i, align 4
  %add55 = add nsw i32 %52, 1
  store i32 %add55, ptr %i, align 4
  br label %for.cond13, !llvm.loop !8

for.end56:                                        ; preds = %for.cond13
  store i32 0, ptr %paso, align 4
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc273, %for.end56
  %53 = load i32, ptr %paso, align 4
  %54 = load i32, ptr %pasos, align 4
  %cmp58 = icmp slt i32 %53, %54
  br i1 %cmp58, label %for.body60, label %for.end275

for.body60:                                       ; preds = %for.cond57
  store i32 0, ptr %i, align 4
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc270, %for.body60
  %55 = load i32, ptr %i, align 4
  %56 = load i32, ptr %nx, align 4
  %cmp62 = icmp slt i32 %55, %56
  br i1 %cmp62, label %for.body64, label %for.end272

for.body64:                                       ; preds = %for.cond61
  store i32 0, ptr %j, align 4
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc267, %for.body64
  %57 = load i32, ptr %j, align 4
  %58 = load i32, ptr %nx, align 4
  %cmp66 = icmp slt i32 %57, %58
  br i1 %cmp66, label %for.body68, label %for.end269

for.body68:                                       ; preds = %for.cond65
  %59 = load i32, ptr %i, align 4
  %cmp69 = icmp eq i32 %59, 0
  br i1 %cmp69, label %if.then81, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body68
  %60 = load i32, ptr %i, align 4
  %61 = load i32, ptr %nx, align 4
  %sub71 = sub nsw i32 %61, 1
  %cmp72 = icmp eq i32 %60, %sub71
  br i1 %cmp72, label %if.then81, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %lor.lhs.false
  %62 = load i32, ptr %j, align 4
  %cmp75 = icmp eq i32 %62, 0
  br i1 %cmp75, label %if.then81, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %lor.lhs.false74
  %63 = load i32, ptr %j, align 4
  %64 = load i32, ptr %nx, align 4
  %sub78 = sub nsw i32 %64, 1
  %cmp79 = icmp eq i32 %63, %sub78
  br i1 %cmp79, label %if.then81, label %if.else90

if.then81:                                        ; preds = %lor.lhs.false77, %lor.lhs.false74, %lor.lhs.false, %for.body68
  %65 = load i32, ptr %i, align 4
  %idxprom82 = sext i32 %65 to i64
  %66 = mul nsw i64 %idxprom82, %22
  %arrayidx83 = getelementptr inbounds double, ptr %vla11, i64 %66
  %67 = load i32, ptr %j, align 4
  %idxprom84 = sext i32 %67 to i64
  %arrayidx85 = getelementptr inbounds double, ptr %arrayidx83, i64 %idxprom84
  store double 1.000000e+00, ptr %arrayidx85, align 8
  %68 = load i32, ptr %i, align 4
  %idxprom86 = sext i32 %68 to i64
  %69 = mul nsw i64 %idxprom86, %27
  %arrayidx87 = getelementptr inbounds double, ptr %vla12, i64 %69
  %70 = load i32, ptr %j, align 4
  %idxprom88 = sext i32 %70 to i64
  %arrayidx89 = getelementptr inbounds double, ptr %arrayidx87, i64 %idxprom88
  store double 1.000000e+00, ptr %arrayidx89, align 8
  br label %if.end254

if.else90:                                        ; preds = %lor.lhs.false77
  %71 = load i32, ptr %i, align 4
  %idxprom91 = sext i32 %71 to i64
  %72 = mul nsw i64 %idxprom91, %22
  %arrayidx92 = getelementptr inbounds double, ptr %vla11, i64 %72
  %73 = load i32, ptr %j, align 4
  %idxprom93 = sext i32 %73 to i64
  %arrayidx94 = getelementptr inbounds double, ptr %arrayidx92, i64 %idxprom93
  %74 = load double, ptr %arrayidx94, align 8
  %75 = load double, ptr %dt, align 8
  %76 = load double, ptr %dx, align 8
  %div95 = fdiv double %75, %76
  %77 = load i32, ptr %i, align 4
  %idxprom96 = sext i32 %77 to i64
  %78 = mul nsw i64 %idxprom96, %22
  %arrayidx97 = getelementptr inbounds double, ptr %vla11, i64 %78
  %79 = load i32, ptr %j, align 4
  %idxprom98 = sext i32 %79 to i64
  %arrayidx99 = getelementptr inbounds double, ptr %arrayidx97, i64 %idxprom98
  %80 = load double, ptr %arrayidx99, align 8
  %mul100 = fmul double %div95, %80
  %81 = load i32, ptr %i, align 4
  %idxprom101 = sext i32 %81 to i64
  %82 = mul nsw i64 %idxprom101, %22
  %arrayidx102 = getelementptr inbounds double, ptr %vla11, i64 %82
  %83 = load i32, ptr %j, align 4
  %idxprom103 = sext i32 %83 to i64
  %arrayidx104 = getelementptr inbounds double, ptr %arrayidx102, i64 %idxprom103
  %84 = load double, ptr %arrayidx104, align 8
  %85 = load i32, ptr %i, align 4
  %idxprom105 = sext i32 %85 to i64
  %86 = mul nsw i64 %idxprom105, %22
  %arrayidx106 = getelementptr inbounds double, ptr %vla11, i64 %86
  %87 = load i32, ptr %j, align 4
  %sub107 = sub nsw i32 %87, 1
  %idxprom108 = sext i32 %sub107 to i64
  %arrayidx109 = getelementptr inbounds double, ptr %arrayidx106, i64 %idxprom108
  %88 = load double, ptr %arrayidx109, align 8
  %sub110 = fsub double %84, %88
  %neg = fneg double %mul100
  %89 = call double @llvm.fmuladd.f64(double %neg, double %sub110, double %74)
  %90 = load double, ptr %dt, align 8
  %91 = load double, ptr %dx, align 8
  %div112 = fdiv double %90, %91
  %92 = load i32, ptr %i, align 4
  %idxprom113 = sext i32 %92 to i64
  %93 = mul nsw i64 %idxprom113, %22
  %arrayidx114 = getelementptr inbounds double, ptr %vla11, i64 %93
  %94 = load i32, ptr %j, align 4
  %idxprom115 = sext i32 %94 to i64
  %arrayidx116 = getelementptr inbounds double, ptr %arrayidx114, i64 %idxprom115
  %95 = load double, ptr %arrayidx116, align 8
  %mul117 = fmul double %div112, %95
  %96 = load i32, ptr %i, align 4
  %idxprom118 = sext i32 %96 to i64
  %97 = mul nsw i64 %idxprom118, %22
  %arrayidx119 = getelementptr inbounds double, ptr %vla11, i64 %97
  %98 = load i32, ptr %j, align 4
  %idxprom120 = sext i32 %98 to i64
  %arrayidx121 = getelementptr inbounds double, ptr %arrayidx119, i64 %idxprom120
  %99 = load double, ptr %arrayidx121, align 8
  %100 = load i32, ptr %i, align 4
  %sub122 = sub nsw i32 %100, 1
  %idxprom123 = sext i32 %sub122 to i64
  %101 = mul nsw i64 %idxprom123, %22
  %arrayidx124 = getelementptr inbounds double, ptr %vla11, i64 %101
  %102 = load i32, ptr %j, align 4
  %idxprom125 = sext i32 %102 to i64
  %arrayidx126 = getelementptr inbounds double, ptr %arrayidx124, i64 %idxprom125
  %103 = load double, ptr %arrayidx126, align 8
  %sub127 = fsub double %99, %103
  %neg129 = fneg double %mul117
  %104 = call double @llvm.fmuladd.f64(double %neg129, double %sub127, double %89)
  %105 = load double, ptr %nu, align 8
  %106 = load double, ptr %dt, align 8
  %mul130 = fmul double %105, %106
  %107 = load double, ptr %dx, align 8
  %108 = call double @llvm.pow.f64(double %107, double 2.000000e+00)
  %div131 = fdiv double %mul130, %108
  %109 = load i32, ptr %i, align 4
  %idxprom132 = sext i32 %109 to i64
  %110 = mul nsw i64 %idxprom132, %22
  %arrayidx133 = getelementptr inbounds double, ptr %vla11, i64 %110
  %111 = load i32, ptr %j, align 4
  %add134 = add nsw i32 %111, 1
  %idxprom135 = sext i32 %add134 to i64
  %arrayidx136 = getelementptr inbounds double, ptr %arrayidx133, i64 %idxprom135
  %112 = load double, ptr %arrayidx136, align 8
  %113 = load i32, ptr %i, align 4
  %idxprom137 = sext i32 %113 to i64
  %114 = mul nsw i64 %idxprom137, %22
  %arrayidx138 = getelementptr inbounds double, ptr %vla11, i64 %114
  %115 = load i32, ptr %j, align 4
  %idxprom139 = sext i32 %115 to i64
  %arrayidx140 = getelementptr inbounds double, ptr %arrayidx138, i64 %idxprom139
  %116 = load double, ptr %arrayidx140, align 8
  %117 = call double @llvm.fmuladd.f64(double -2.000000e+00, double %116, double %112)
  %118 = load i32, ptr %i, align 4
  %idxprom142 = sext i32 %118 to i64
  %119 = mul nsw i64 %idxprom142, %22
  %arrayidx143 = getelementptr inbounds double, ptr %vla11, i64 %119
  %120 = load i32, ptr %j, align 4
  %sub144 = sub nsw i32 %120, 1
  %idxprom145 = sext i32 %sub144 to i64
  %arrayidx146 = getelementptr inbounds double, ptr %arrayidx143, i64 %idxprom145
  %121 = load double, ptr %arrayidx146, align 8
  %add147 = fadd double %117, %121
  %122 = call double @llvm.fmuladd.f64(double %div131, double %add147, double %104)
  %123 = load double, ptr %nu, align 8
  %124 = load double, ptr %dt, align 8
  %mul149 = fmul double %123, %124
  %125 = load double, ptr %dx, align 8
  %126 = call double @llvm.pow.f64(double %125, double 2.000000e+00)
  %div150 = fdiv double %mul149, %126
  %127 = load i32, ptr %i, align 4
  %add151 = add nsw i32 %127, 1
  %idxprom152 = sext i32 %add151 to i64
  %128 = mul nsw i64 %idxprom152, %22
  %arrayidx153 = getelementptr inbounds double, ptr %vla11, i64 %128
  %129 = load i32, ptr %j, align 4
  %idxprom154 = sext i32 %129 to i64
  %arrayidx155 = getelementptr inbounds double, ptr %arrayidx153, i64 %idxprom154
  %130 = load double, ptr %arrayidx155, align 8
  %131 = load i32, ptr %i, align 4
  %idxprom156 = sext i32 %131 to i64
  %132 = mul nsw i64 %idxprom156, %22
  %arrayidx157 = getelementptr inbounds double, ptr %vla11, i64 %132
  %133 = load i32, ptr %j, align 4
  %idxprom158 = sext i32 %133 to i64
  %arrayidx159 = getelementptr inbounds double, ptr %arrayidx157, i64 %idxprom158
  %134 = load double, ptr %arrayidx159, align 8
  %135 = call double @llvm.fmuladd.f64(double -2.000000e+00, double %134, double %130)
  %136 = load i32, ptr %i, align 4
  %sub161 = sub nsw i32 %136, 1
  %idxprom162 = sext i32 %sub161 to i64
  %137 = mul nsw i64 %idxprom162, %22
  %arrayidx163 = getelementptr inbounds double, ptr %vla11, i64 %137
  %138 = load i32, ptr %j, align 4
  %idxprom164 = sext i32 %138 to i64
  %arrayidx165 = getelementptr inbounds double, ptr %arrayidx163, i64 %idxprom164
  %139 = load double, ptr %arrayidx165, align 8
  %add166 = fadd double %135, %139
  %140 = call double @llvm.fmuladd.f64(double %div150, double %add166, double %122)
  %141 = load i32, ptr %i, align 4
  %idxprom168 = sext i32 %141 to i64
  %142 = mul nsw i64 %idxprom168, %22
  %arrayidx169 = getelementptr inbounds double, ptr %vla11, i64 %142
  %143 = load i32, ptr %j, align 4
  %idxprom170 = sext i32 %143 to i64
  %arrayidx171 = getelementptr inbounds double, ptr %arrayidx169, i64 %idxprom170
  store double %140, ptr %arrayidx171, align 8
  %144 = load i32, ptr %i, align 4
  %idxprom172 = sext i32 %144 to i64
  %145 = mul nsw i64 %idxprom172, %27
  %arrayidx173 = getelementptr inbounds double, ptr %vla12, i64 %145
  %146 = load i32, ptr %j, align 4
  %idxprom174 = sext i32 %146 to i64
  %arrayidx175 = getelementptr inbounds double, ptr %arrayidx173, i64 %idxprom174
  %147 = load double, ptr %arrayidx175, align 8
  %148 = load double, ptr %dt, align 8
  %149 = load double, ptr %dx, align 8
  %div176 = fdiv double %148, %149
  %150 = load i32, ptr %i, align 4
  %idxprom177 = sext i32 %150 to i64
  %151 = mul nsw i64 %idxprom177, %27
  %arrayidx178 = getelementptr inbounds double, ptr %vla12, i64 %151
  %152 = load i32, ptr %j, align 4
  %idxprom179 = sext i32 %152 to i64
  %arrayidx180 = getelementptr inbounds double, ptr %arrayidx178, i64 %idxprom179
  %153 = load double, ptr %arrayidx180, align 8
  %mul181 = fmul double %div176, %153
  %154 = load i32, ptr %i, align 4
  %idxprom182 = sext i32 %154 to i64
  %155 = mul nsw i64 %idxprom182, %27
  %arrayidx183 = getelementptr inbounds double, ptr %vla12, i64 %155
  %156 = load i32, ptr %j, align 4
  %idxprom184 = sext i32 %156 to i64
  %arrayidx185 = getelementptr inbounds double, ptr %arrayidx183, i64 %idxprom184
  %157 = load double, ptr %arrayidx185, align 8
  %158 = load i32, ptr %i, align 4
  %idxprom186 = sext i32 %158 to i64
  %159 = mul nsw i64 %idxprom186, %27
  %arrayidx187 = getelementptr inbounds double, ptr %vla12, i64 %159
  %160 = load i32, ptr %j, align 4
  %sub188 = sub nsw i32 %160, 1
  %idxprom189 = sext i32 %sub188 to i64
  %arrayidx190 = getelementptr inbounds double, ptr %arrayidx187, i64 %idxprom189
  %161 = load double, ptr %arrayidx190, align 8
  %sub191 = fsub double %157, %161
  %neg193 = fneg double %mul181
  %162 = call double @llvm.fmuladd.f64(double %neg193, double %sub191, double %147)
  %163 = load double, ptr %dt, align 8
  %164 = load double, ptr %dx, align 8
  %div194 = fdiv double %163, %164
  %165 = load i32, ptr %i, align 4
  %idxprom195 = sext i32 %165 to i64
  %166 = mul nsw i64 %idxprom195, %27
  %arrayidx196 = getelementptr inbounds double, ptr %vla12, i64 %166
  %167 = load i32, ptr %j, align 4
  %idxprom197 = sext i32 %167 to i64
  %arrayidx198 = getelementptr inbounds double, ptr %arrayidx196, i64 %idxprom197
  %168 = load double, ptr %arrayidx198, align 8
  %mul199 = fmul double %div194, %168
  %169 = load i32, ptr %i, align 4
  %idxprom200 = sext i32 %169 to i64
  %170 = mul nsw i64 %idxprom200, %27
  %arrayidx201 = getelementptr inbounds double, ptr %vla12, i64 %170
  %171 = load i32, ptr %j, align 4
  %idxprom202 = sext i32 %171 to i64
  %arrayidx203 = getelementptr inbounds double, ptr %arrayidx201, i64 %idxprom202
  %172 = load double, ptr %arrayidx203, align 8
  %173 = load i32, ptr %i, align 4
  %sub204 = sub nsw i32 %173, 1
  %idxprom205 = sext i32 %sub204 to i64
  %174 = mul nsw i64 %idxprom205, %27
  %arrayidx206 = getelementptr inbounds double, ptr %vla12, i64 %174
  %175 = load i32, ptr %j, align 4
  %idxprom207 = sext i32 %175 to i64
  %arrayidx208 = getelementptr inbounds double, ptr %arrayidx206, i64 %idxprom207
  %176 = load double, ptr %arrayidx208, align 8
  %sub209 = fsub double %172, %176
  %neg211 = fneg double %mul199
  %177 = call double @llvm.fmuladd.f64(double %neg211, double %sub209, double %162)
  %178 = load double, ptr %nu, align 8
  %179 = load double, ptr %dt, align 8
  %mul212 = fmul double %178, %179
  %180 = load double, ptr %dx, align 8
  %181 = call double @llvm.pow.f64(double %180, double 2.000000e+00)
  %div213 = fdiv double %mul212, %181
  %182 = load i32, ptr %i, align 4
  %idxprom214 = sext i32 %182 to i64
  %183 = mul nsw i64 %idxprom214, %27
  %arrayidx215 = getelementptr inbounds double, ptr %vla12, i64 %183
  %184 = load i32, ptr %j, align 4
  %add216 = add nsw i32 %184, 1
  %idxprom217 = sext i32 %add216 to i64
  %arrayidx218 = getelementptr inbounds double, ptr %arrayidx215, i64 %idxprom217
  %185 = load double, ptr %arrayidx218, align 8
  %186 = load i32, ptr %i, align 4
  %idxprom219 = sext i32 %186 to i64
  %187 = mul nsw i64 %idxprom219, %27
  %arrayidx220 = getelementptr inbounds double, ptr %vla12, i64 %187
  %188 = load i32, ptr %j, align 4
  %idxprom221 = sext i32 %188 to i64
  %arrayidx222 = getelementptr inbounds double, ptr %arrayidx220, i64 %idxprom221
  %189 = load double, ptr %arrayidx222, align 8
  %190 = call double @llvm.fmuladd.f64(double -2.000000e+00, double %189, double %185)
  %191 = load i32, ptr %i, align 4
  %idxprom224 = sext i32 %191 to i64
  %192 = mul nsw i64 %idxprom224, %27
  %arrayidx225 = getelementptr inbounds double, ptr %vla12, i64 %192
  %193 = load i32, ptr %j, align 4
  %sub226 = sub nsw i32 %193, 1
  %idxprom227 = sext i32 %sub226 to i64
  %arrayidx228 = getelementptr inbounds double, ptr %arrayidx225, i64 %idxprom227
  %194 = load double, ptr %arrayidx228, align 8
  %add229 = fadd double %190, %194
  %195 = call double @llvm.fmuladd.f64(double %div213, double %add229, double %177)
  %196 = load double, ptr %nu, align 8
  %197 = load double, ptr %dt, align 8
  %mul231 = fmul double %196, %197
  %198 = load double, ptr %dx, align 8
  %199 = call double @llvm.pow.f64(double %198, double 2.000000e+00)
  %div232 = fdiv double %mul231, %199
  %200 = load i32, ptr %i, align 4
  %add233 = add nsw i32 %200, 1
  %idxprom234 = sext i32 %add233 to i64
  %201 = mul nsw i64 %idxprom234, %27
  %arrayidx235 = getelementptr inbounds double, ptr %vla12, i64 %201
  %202 = load i32, ptr %j, align 4
  %idxprom236 = sext i32 %202 to i64
  %arrayidx237 = getelementptr inbounds double, ptr %arrayidx235, i64 %idxprom236
  %203 = load double, ptr %arrayidx237, align 8
  %204 = load i32, ptr %i, align 4
  %idxprom238 = sext i32 %204 to i64
  %205 = mul nsw i64 %idxprom238, %27
  %arrayidx239 = getelementptr inbounds double, ptr %vla12, i64 %205
  %206 = load i32, ptr %j, align 4
  %idxprom240 = sext i32 %206 to i64
  %arrayidx241 = getelementptr inbounds double, ptr %arrayidx239, i64 %idxprom240
  %207 = load double, ptr %arrayidx241, align 8
  %208 = call double @llvm.fmuladd.f64(double -2.000000e+00, double %207, double %203)
  %209 = load i32, ptr %i, align 4
  %sub243 = sub nsw i32 %209, 1
  %idxprom244 = sext i32 %sub243 to i64
  %210 = mul nsw i64 %idxprom244, %27
  %arrayidx245 = getelementptr inbounds double, ptr %vla12, i64 %210
  %211 = load i32, ptr %j, align 4
  %idxprom246 = sext i32 %211 to i64
  %arrayidx247 = getelementptr inbounds double, ptr %arrayidx245, i64 %idxprom246
  %212 = load double, ptr %arrayidx247, align 8
  %add248 = fadd double %208, %212
  %213 = call double @llvm.fmuladd.f64(double %div232, double %add248, double %195)
  %214 = load i32, ptr %i, align 4
  %idxprom250 = sext i32 %214 to i64
  %215 = mul nsw i64 %idxprom250, %27
  %arrayidx251 = getelementptr inbounds double, ptr %vla12, i64 %215
  %216 = load i32, ptr %j, align 4
  %idxprom252 = sext i32 %216 to i64
  %arrayidx253 = getelementptr inbounds double, ptr %arrayidx251, i64 %idxprom252
  store double %213, ptr %arrayidx253, align 8
  br label %if.end254

if.end254:                                        ; preds = %if.else90, %if.then81
  %217 = load i32, ptr %i, align 4
  %idxprom255 = sext i32 %217 to i64
  %arrayidx256 = getelementptr inbounds double, ptr %vla, i64 %idxprom255
  %218 = load double, ptr %arrayidx256, align 8
  %219 = load i32, ptr %j, align 4
  %idxprom257 = sext i32 %219 to i64
  %arrayidx258 = getelementptr inbounds double, ptr %vla3, i64 %idxprom257
  %220 = load double, ptr %arrayidx258, align 8
  %221 = load i32, ptr %i, align 4
  %idxprom259 = sext i32 %221 to i64
  %222 = mul nsw i64 %idxprom259, %22
  %arrayidx260 = getelementptr inbounds double, ptr %vla11, i64 %222
  %223 = load i32, ptr %j, align 4
  %idxprom261 = sext i32 %223 to i64
  %arrayidx262 = getelementptr inbounds double, ptr %arrayidx260, i64 %idxprom261
  %224 = load double, ptr %arrayidx262, align 8
  %225 = load i32, ptr %i, align 4
  %idxprom263 = sext i32 %225 to i64
  %226 = mul nsw i64 %idxprom263, %27
  %arrayidx264 = getelementptr inbounds double, ptr %vla12, i64 %226
  %227 = load i32, ptr %j, align 4
  %idxprom265 = sext i32 %227 to i64
  %arrayidx266 = getelementptr inbounds double, ptr %arrayidx264, i64 %idxprom265
  %228 = load double, ptr %arrayidx266, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %218, double noundef %220, double noundef %224, double noundef %228)
  br label %for.inc267

for.inc267:                                       ; preds = %if.end254
  %229 = load i32, ptr %j, align 4
  %add268 = add nsw i32 %229, 1
  store i32 %add268, ptr %j, align 4
  br label %for.cond65, !llvm.loop !9

for.end269:                                       ; preds = %for.cond65
  br label %for.inc270

for.inc270:                                       ; preds = %for.end269
  %230 = load i32, ptr %i, align 4
  %add271 = add nsw i32 %230, 1
  store i32 %add271, ptr %i, align 4
  br label %for.cond61, !llvm.loop !10

for.end272:                                       ; preds = %for.cond61
  br label %for.inc273

for.inc273:                                       ; preds = %for.end272
  %231 = load i32, ptr %paso, align 4
  %add274 = add nsw i32 %231, 1
  store i32 %add274, ptr %paso, align 4
  br label %for.cond57, !llvm.loop !11

for.end275:                                       ; preds = %for.cond57
  store i32 0, ptr %retval, align 4
  %232 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %232)
  %233 = load i32, ptr %retval, align 4
  ret i32 %233
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #2

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
