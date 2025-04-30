; ModuleID = 'code/356-22780burgers.c'
source_filename = "code/356-22780burgers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%g,%g,%g,%g\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
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
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %__vla_expr2 = alloca i64, align 8
  %__vla_expr3 = alloca i64, align 8
  %__vla_expr4 = alloca i64, align 8
  %__vla_expr5 = alloca i64, align 8
  %paso = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 41, i32* %nx, align 4
  store i32 120, i32* %nt, align 4
  store i32 1, i32* %c, align 4
  store i32 500, i32* %pasos, align 4
  %0 = load i32, i32* %nx, align 4
  %conv = sitofp i32 %0 to double
  %sub = fsub double %conv, 1.000000e+00
  %div = fdiv double 2.000000e+00, %sub
  store double %div, double* %dx, align 8
  store double 9.000000e-04, double* %sigma, align 8
  store double 1.000000e-02, double* %nu, align 8
  %1 = load double, double* %sigma, align 8
  %2 = load double, double* %dx, align 8
  %mul = fmul double %1, %2
  %3 = load double, double* %dx, align 8
  %mul1 = fmul double %mul, %3
  %4 = load double, double* %nu, align 8
  %div2 = fdiv double %mul1, %4
  store double %div2, double* %dt, align 8
  %5 = load i32, i32* %nx, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %saved_stack, align 8
  %vla = alloca double, i64 %6, align 16
  store i64 %6, i64* %__vla_expr0, align 8
  %8 = load i32, i32* %nx, align 4
  %9 = zext i32 %8 to i64
  %vla3 = alloca double, i64 %9, align 16
  store i64 %9, i64* %__vla_expr1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %nx, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %conv5 = sitofp i32 %12 to double
  %13 = load double, double* %dx, align 8
  %mul6 = fmul double %conv5, %13
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds double, double* %vla, i64 %idxprom
  store double %mul6, double* %arrayidx, align 8
  %15 = load i32, i32* %i, align 4
  %conv7 = sitofp i32 %15 to double
  %16 = load double, double* %dx, align 8
  %mul8 = fmul double %conv7, %16
  %17 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds double, double* %vla3, i64 %idxprom9
  store double %mul8, double* %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %add = add nsw i32 %18, 1
  store i32 %add, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %nx, align 4
  %20 = zext i32 %19 to i64
  %21 = load i32, i32* %nx, align 4
  %22 = zext i32 %21 to i64
  %23 = mul nuw i64 %20, %22
  %vla11 = alloca double, i64 %23, align 16
  store i64 %20, i64* %__vla_expr2, align 8
  store i64 %22, i64* %__vla_expr3, align 8
  %24 = load i32, i32* %nx, align 4
  %25 = zext i32 %24 to i64
  %26 = load i32, i32* %nx, align 4
  %27 = zext i32 %26 to i64
  %28 = mul nuw i64 %25, %27
  %vla12 = alloca double, i64 %28, align 16
  store i64 %25, i64* %__vla_expr4, align 8
  store i64 %27, i64* %__vla_expr5, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc54, %for.end
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %nx, align 4
  %cmp14 = icmp slt i32 %29, %30
  br i1 %cmp14, label %for.body16, label %for.end56

for.body16:                                       ; preds = %for.cond13
  store i32 0, i32* %j, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc51, %for.body16
  %31 = load i32, i32* %j, align 4
  %32 = load i32, i32* %nx, align 4
  %cmp18 = icmp slt i32 %31, %32
  br i1 %cmp18, label %for.body20, label %for.end53

for.body20:                                       ; preds = %for.cond17
  %33 = load i32, i32* %i, align 4
  %conv21 = sitofp i32 %33 to double
  %cmp22 = fcmp oge double %conv21, 5.000000e-01
  br i1 %cmp22, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body20
  %34 = load i32, i32* %i, align 4
  %conv24 = sitofp i32 %34 to double
  %35 = load double, double* %dx, align 8
  %cmp25 = fcmp ole double %conv24, %35
  br i1 %cmp25, label %land.lhs.true27, label %if.else

land.lhs.true27:                                  ; preds = %land.lhs.true
  %36 = load i32, i32* %j, align 4
  %conv28 = sitofp i32 %36 to double
  %cmp29 = fcmp oge double %conv28, 5.000000e-01
  br i1 %cmp29, label %land.lhs.true31, label %if.else

land.lhs.true31:                                  ; preds = %land.lhs.true27
  %37 = load i32, i32* %j, align 4
  %conv32 = sitofp i32 %37 to double
  %38 = load double, double* %dx, align 8
  %cmp33 = fcmp ole double %conv32, %38
  br i1 %cmp33, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true31
  %39 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %39 to i64
  %40 = mul nsw i64 %idxprom35, %22
  %arrayidx36 = getelementptr inbounds double, double* %vla11, i64 %40
  %41 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %41 to i64
  %arrayidx38 = getelementptr inbounds double, double* %arrayidx36, i64 %idxprom37
  store double 2.000000e+00, double* %arrayidx38, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %42 to i64
  %43 = mul nsw i64 %idxprom39, %27
  %arrayidx40 = getelementptr inbounds double, double* %vla12, i64 %43
  %44 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %44 to i64
  %arrayidx42 = getelementptr inbounds double, double* %arrayidx40, i64 %idxprom41
  store double 2.000000e+00, double* %arrayidx42, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true31, %land.lhs.true27, %land.lhs.true, %for.body20
  %45 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %45 to i64
  %46 = mul nsw i64 %idxprom43, %22
  %arrayidx44 = getelementptr inbounds double, double* %vla11, i64 %46
  %47 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %47 to i64
  %arrayidx46 = getelementptr inbounds double, double* %arrayidx44, i64 %idxprom45
  store double 1.000000e+00, double* %arrayidx46, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %48 to i64
  %49 = mul nsw i64 %idxprom47, %27
  %arrayidx48 = getelementptr inbounds double, double* %vla12, i64 %49
  %50 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %50 to i64
  %arrayidx50 = getelementptr inbounds double, double* %arrayidx48, i64 %idxprom49
  store double 1.000000e+00, double* %arrayidx50, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc51

for.inc51:                                        ; preds = %if.end
  %51 = load i32, i32* %j, align 4
  %add52 = add nsw i32 %51, 1
  store i32 %add52, i32* %j, align 4
  br label %for.cond17, !llvm.loop !6

for.end53:                                        ; preds = %for.cond17
  br label %for.inc54

for.inc54:                                        ; preds = %for.end53
  %52 = load i32, i32* %i, align 4
  %add55 = add nsw i32 %52, 1
  store i32 %add55, i32* %i, align 4
  br label %for.cond13, !llvm.loop !7

for.end56:                                        ; preds = %for.cond13
  store i32 0, i32* %paso, align 4
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc286, %for.end56
  %53 = load i32, i32* %paso, align 4
  %54 = load i32, i32* %pasos, align 4
  %cmp58 = icmp slt i32 %53, %54
  br i1 %cmp58, label %for.body60, label %for.end288

for.body60:                                       ; preds = %for.cond57
  store i32 0, i32* %i, align 4
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc283, %for.body60
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %nx, align 4
  %cmp62 = icmp slt i32 %55, %56
  br i1 %cmp62, label %for.body64, label %for.end285

for.body64:                                       ; preds = %for.cond61
  store i32 0, i32* %j, align 4
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc280, %for.body64
  %57 = load i32, i32* %j, align 4
  %58 = load i32, i32* %nx, align 4
  %cmp66 = icmp slt i32 %57, %58
  br i1 %cmp66, label %for.body68, label %for.end282

for.body68:                                       ; preds = %for.cond65
  %59 = load i32, i32* %i, align 4
  %cmp69 = icmp eq i32 %59, 0
  br i1 %cmp69, label %if.then81, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body68
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* %nx, align 4
  %sub71 = sub nsw i32 %61, 1
  %cmp72 = icmp eq i32 %60, %sub71
  br i1 %cmp72, label %if.then81, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %lor.lhs.false
  %62 = load i32, i32* %j, align 4
  %cmp75 = icmp eq i32 %62, 0
  br i1 %cmp75, label %if.then81, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %lor.lhs.false74
  %63 = load i32, i32* %j, align 4
  %64 = load i32, i32* %nx, align 4
  %sub78 = sub nsw i32 %64, 1
  %cmp79 = icmp eq i32 %63, %sub78
  br i1 %cmp79, label %if.then81, label %if.else90

if.then81:                                        ; preds = %lor.lhs.false77, %lor.lhs.false74, %lor.lhs.false, %for.body68
  %65 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %65 to i64
  %66 = mul nsw i64 %idxprom82, %22
  %arrayidx83 = getelementptr inbounds double, double* %vla11, i64 %66
  %67 = load i32, i32* %j, align 4
  %idxprom84 = sext i32 %67 to i64
  %arrayidx85 = getelementptr inbounds double, double* %arrayidx83, i64 %idxprom84
  store double 1.000000e+00, double* %arrayidx85, align 8
  %68 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %68 to i64
  %69 = mul nsw i64 %idxprom86, %27
  %arrayidx87 = getelementptr inbounds double, double* %vla12, i64 %69
  %70 = load i32, i32* %j, align 4
  %idxprom88 = sext i32 %70 to i64
  %arrayidx89 = getelementptr inbounds double, double* %arrayidx87, i64 %idxprom88
  store double 1.000000e+00, double* %arrayidx89, align 8
  br label %if.end266

if.else90:                                        ; preds = %lor.lhs.false77
  %71 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %71 to i64
  %72 = mul nsw i64 %idxprom91, %22
  %arrayidx92 = getelementptr inbounds double, double* %vla11, i64 %72
  %73 = load i32, i32* %j, align 4
  %idxprom93 = sext i32 %73 to i64
  %arrayidx94 = getelementptr inbounds double, double* %arrayidx92, i64 %idxprom93
  %74 = load double, double* %arrayidx94, align 8
  %75 = load double, double* %dt, align 8
  %76 = load double, double* %dx, align 8
  %div95 = fdiv double %75, %76
  %77 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %77 to i64
  %78 = mul nsw i64 %idxprom96, %22
  %arrayidx97 = getelementptr inbounds double, double* %vla11, i64 %78
  %79 = load i32, i32* %j, align 4
  %idxprom98 = sext i32 %79 to i64
  %arrayidx99 = getelementptr inbounds double, double* %arrayidx97, i64 %idxprom98
  %80 = load double, double* %arrayidx99, align 8
  %mul100 = fmul double %div95, %80
  %81 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %81 to i64
  %82 = mul nsw i64 %idxprom101, %22
  %arrayidx102 = getelementptr inbounds double, double* %vla11, i64 %82
  %83 = load i32, i32* %j, align 4
  %idxprom103 = sext i32 %83 to i64
  %arrayidx104 = getelementptr inbounds double, double* %arrayidx102, i64 %idxprom103
  %84 = load double, double* %arrayidx104, align 8
  %85 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %85 to i64
  %86 = mul nsw i64 %idxprom105, %22
  %arrayidx106 = getelementptr inbounds double, double* %vla11, i64 %86
  %87 = load i32, i32* %j, align 4
  %sub107 = sub nsw i32 %87, 1
  %idxprom108 = sext i32 %sub107 to i64
  %arrayidx109 = getelementptr inbounds double, double* %arrayidx106, i64 %idxprom108
  %88 = load double, double* %arrayidx109, align 8
  %sub110 = fsub double %84, %88
  %mul111 = fmul double %mul100, %sub110
  %sub112 = fsub double %74, %mul111
  %89 = load double, double* %dt, align 8
  %90 = load double, double* %dx, align 8
  %div113 = fdiv double %89, %90
  %91 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %91 to i64
  %92 = mul nsw i64 %idxprom114, %22
  %arrayidx115 = getelementptr inbounds double, double* %vla11, i64 %92
  %93 = load i32, i32* %j, align 4
  %idxprom116 = sext i32 %93 to i64
  %arrayidx117 = getelementptr inbounds double, double* %arrayidx115, i64 %idxprom116
  %94 = load double, double* %arrayidx117, align 8
  %mul118 = fmul double %div113, %94
  %95 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %95 to i64
  %96 = mul nsw i64 %idxprom119, %22
  %arrayidx120 = getelementptr inbounds double, double* %vla11, i64 %96
  %97 = load i32, i32* %j, align 4
  %idxprom121 = sext i32 %97 to i64
  %arrayidx122 = getelementptr inbounds double, double* %arrayidx120, i64 %idxprom121
  %98 = load double, double* %arrayidx122, align 8
  %99 = load i32, i32* %i, align 4
  %sub123 = sub nsw i32 %99, 1
  %idxprom124 = sext i32 %sub123 to i64
  %100 = mul nsw i64 %idxprom124, %22
  %arrayidx125 = getelementptr inbounds double, double* %vla11, i64 %100
  %101 = load i32, i32* %j, align 4
  %idxprom126 = sext i32 %101 to i64
  %arrayidx127 = getelementptr inbounds double, double* %arrayidx125, i64 %idxprom126
  %102 = load double, double* %arrayidx127, align 8
  %sub128 = fsub double %98, %102
  %mul129 = fmul double %mul118, %sub128
  %sub130 = fsub double %sub112, %mul129
  %103 = load double, double* %nu, align 8
  %104 = load double, double* %dt, align 8
  %mul131 = fmul double %103, %104
  %105 = load double, double* %dx, align 8
  %call = call double @pow(double %105, double 2.000000e+00) #4
  %div132 = fdiv double %mul131, %call
  %106 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %106 to i64
  %107 = mul nsw i64 %idxprom133, %22
  %arrayidx134 = getelementptr inbounds double, double* %vla11, i64 %107
  %108 = load i32, i32* %j, align 4
  %add135 = add nsw i32 %108, 1
  %idxprom136 = sext i32 %add135 to i64
  %arrayidx137 = getelementptr inbounds double, double* %arrayidx134, i64 %idxprom136
  %109 = load double, double* %arrayidx137, align 8
  %110 = load i32, i32* %i, align 4
  %idxprom138 = sext i32 %110 to i64
  %111 = mul nsw i64 %idxprom138, %22
  %arrayidx139 = getelementptr inbounds double, double* %vla11, i64 %111
  %112 = load i32, i32* %j, align 4
  %idxprom140 = sext i32 %112 to i64
  %arrayidx141 = getelementptr inbounds double, double* %arrayidx139, i64 %idxprom140
  %113 = load double, double* %arrayidx141, align 8
  %mul142 = fmul double 2.000000e+00, %113
  %sub143 = fsub double %109, %mul142
  %114 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %114 to i64
  %115 = mul nsw i64 %idxprom144, %22
  %arrayidx145 = getelementptr inbounds double, double* %vla11, i64 %115
  %116 = load i32, i32* %j, align 4
  %sub146 = sub nsw i32 %116, 1
  %idxprom147 = sext i32 %sub146 to i64
  %arrayidx148 = getelementptr inbounds double, double* %arrayidx145, i64 %idxprom147
  %117 = load double, double* %arrayidx148, align 8
  %add149 = fadd double %sub143, %117
  %mul150 = fmul double %div132, %add149
  %add151 = fadd double %sub130, %mul150
  %118 = load double, double* %nu, align 8
  %119 = load double, double* %dt, align 8
  %mul152 = fmul double %118, %119
  %120 = load double, double* %dx, align 8
  %call153 = call double @pow(double %120, double 2.000000e+00) #4
  %div154 = fdiv double %mul152, %call153
  %121 = load i32, i32* %i, align 4
  %add155 = add nsw i32 %121, 1
  %idxprom156 = sext i32 %add155 to i64
  %122 = mul nsw i64 %idxprom156, %22
  %arrayidx157 = getelementptr inbounds double, double* %vla11, i64 %122
  %123 = load i32, i32* %j, align 4
  %idxprom158 = sext i32 %123 to i64
  %arrayidx159 = getelementptr inbounds double, double* %arrayidx157, i64 %idxprom158
  %124 = load double, double* %arrayidx159, align 8
  %125 = load i32, i32* %i, align 4
  %idxprom160 = sext i32 %125 to i64
  %126 = mul nsw i64 %idxprom160, %22
  %arrayidx161 = getelementptr inbounds double, double* %vla11, i64 %126
  %127 = load i32, i32* %j, align 4
  %idxprom162 = sext i32 %127 to i64
  %arrayidx163 = getelementptr inbounds double, double* %arrayidx161, i64 %idxprom162
  %128 = load double, double* %arrayidx163, align 8
  %mul164 = fmul double 2.000000e+00, %128
  %sub165 = fsub double %124, %mul164
  %129 = load i32, i32* %i, align 4
  %sub166 = sub nsw i32 %129, 1
  %idxprom167 = sext i32 %sub166 to i64
  %130 = mul nsw i64 %idxprom167, %22
  %arrayidx168 = getelementptr inbounds double, double* %vla11, i64 %130
  %131 = load i32, i32* %j, align 4
  %idxprom169 = sext i32 %131 to i64
  %arrayidx170 = getelementptr inbounds double, double* %arrayidx168, i64 %idxprom169
  %132 = load double, double* %arrayidx170, align 8
  %add171 = fadd double %sub165, %132
  %mul172 = fmul double %div154, %add171
  %add173 = fadd double %add151, %mul172
  %133 = load i32, i32* %i, align 4
  %idxprom174 = sext i32 %133 to i64
  %134 = mul nsw i64 %idxprom174, %22
  %arrayidx175 = getelementptr inbounds double, double* %vla11, i64 %134
  %135 = load i32, i32* %j, align 4
  %idxprom176 = sext i32 %135 to i64
  %arrayidx177 = getelementptr inbounds double, double* %arrayidx175, i64 %idxprom176
  store double %add173, double* %arrayidx177, align 8
  %136 = load i32, i32* %i, align 4
  %idxprom178 = sext i32 %136 to i64
  %137 = mul nsw i64 %idxprom178, %27
  %arrayidx179 = getelementptr inbounds double, double* %vla12, i64 %137
  %138 = load i32, i32* %j, align 4
  %idxprom180 = sext i32 %138 to i64
  %arrayidx181 = getelementptr inbounds double, double* %arrayidx179, i64 %idxprom180
  %139 = load double, double* %arrayidx181, align 8
  %140 = load double, double* %dt, align 8
  %141 = load double, double* %dx, align 8
  %div182 = fdiv double %140, %141
  %142 = load i32, i32* %i, align 4
  %idxprom183 = sext i32 %142 to i64
  %143 = mul nsw i64 %idxprom183, %27
  %arrayidx184 = getelementptr inbounds double, double* %vla12, i64 %143
  %144 = load i32, i32* %j, align 4
  %idxprom185 = sext i32 %144 to i64
  %arrayidx186 = getelementptr inbounds double, double* %arrayidx184, i64 %idxprom185
  %145 = load double, double* %arrayidx186, align 8
  %mul187 = fmul double %div182, %145
  %146 = load i32, i32* %i, align 4
  %idxprom188 = sext i32 %146 to i64
  %147 = mul nsw i64 %idxprom188, %27
  %arrayidx189 = getelementptr inbounds double, double* %vla12, i64 %147
  %148 = load i32, i32* %j, align 4
  %idxprom190 = sext i32 %148 to i64
  %arrayidx191 = getelementptr inbounds double, double* %arrayidx189, i64 %idxprom190
  %149 = load double, double* %arrayidx191, align 8
  %150 = load i32, i32* %i, align 4
  %idxprom192 = sext i32 %150 to i64
  %151 = mul nsw i64 %idxprom192, %27
  %arrayidx193 = getelementptr inbounds double, double* %vla12, i64 %151
  %152 = load i32, i32* %j, align 4
  %sub194 = sub nsw i32 %152, 1
  %idxprom195 = sext i32 %sub194 to i64
  %arrayidx196 = getelementptr inbounds double, double* %arrayidx193, i64 %idxprom195
  %153 = load double, double* %arrayidx196, align 8
  %sub197 = fsub double %149, %153
  %mul198 = fmul double %mul187, %sub197
  %sub199 = fsub double %139, %mul198
  %154 = load double, double* %dt, align 8
  %155 = load double, double* %dx, align 8
  %div200 = fdiv double %154, %155
  %156 = load i32, i32* %i, align 4
  %idxprom201 = sext i32 %156 to i64
  %157 = mul nsw i64 %idxprom201, %27
  %arrayidx202 = getelementptr inbounds double, double* %vla12, i64 %157
  %158 = load i32, i32* %j, align 4
  %idxprom203 = sext i32 %158 to i64
  %arrayidx204 = getelementptr inbounds double, double* %arrayidx202, i64 %idxprom203
  %159 = load double, double* %arrayidx204, align 8
  %mul205 = fmul double %div200, %159
  %160 = load i32, i32* %i, align 4
  %idxprom206 = sext i32 %160 to i64
  %161 = mul nsw i64 %idxprom206, %27
  %arrayidx207 = getelementptr inbounds double, double* %vla12, i64 %161
  %162 = load i32, i32* %j, align 4
  %idxprom208 = sext i32 %162 to i64
  %arrayidx209 = getelementptr inbounds double, double* %arrayidx207, i64 %idxprom208
  %163 = load double, double* %arrayidx209, align 8
  %164 = load i32, i32* %i, align 4
  %sub210 = sub nsw i32 %164, 1
  %idxprom211 = sext i32 %sub210 to i64
  %165 = mul nsw i64 %idxprom211, %27
  %arrayidx212 = getelementptr inbounds double, double* %vla12, i64 %165
  %166 = load i32, i32* %j, align 4
  %idxprom213 = sext i32 %166 to i64
  %arrayidx214 = getelementptr inbounds double, double* %arrayidx212, i64 %idxprom213
  %167 = load double, double* %arrayidx214, align 8
  %sub215 = fsub double %163, %167
  %mul216 = fmul double %mul205, %sub215
  %sub217 = fsub double %sub199, %mul216
  %168 = load double, double* %nu, align 8
  %169 = load double, double* %dt, align 8
  %mul218 = fmul double %168, %169
  %170 = load double, double* %dx, align 8
  %call219 = call double @pow(double %170, double 2.000000e+00) #4
  %div220 = fdiv double %mul218, %call219
  %171 = load i32, i32* %i, align 4
  %idxprom221 = sext i32 %171 to i64
  %172 = mul nsw i64 %idxprom221, %27
  %arrayidx222 = getelementptr inbounds double, double* %vla12, i64 %172
  %173 = load i32, i32* %j, align 4
  %add223 = add nsw i32 %173, 1
  %idxprom224 = sext i32 %add223 to i64
  %arrayidx225 = getelementptr inbounds double, double* %arrayidx222, i64 %idxprom224
  %174 = load double, double* %arrayidx225, align 8
  %175 = load i32, i32* %i, align 4
  %idxprom226 = sext i32 %175 to i64
  %176 = mul nsw i64 %idxprom226, %27
  %arrayidx227 = getelementptr inbounds double, double* %vla12, i64 %176
  %177 = load i32, i32* %j, align 4
  %idxprom228 = sext i32 %177 to i64
  %arrayidx229 = getelementptr inbounds double, double* %arrayidx227, i64 %idxprom228
  %178 = load double, double* %arrayidx229, align 8
  %mul230 = fmul double 2.000000e+00, %178
  %sub231 = fsub double %174, %mul230
  %179 = load i32, i32* %i, align 4
  %idxprom232 = sext i32 %179 to i64
  %180 = mul nsw i64 %idxprom232, %27
  %arrayidx233 = getelementptr inbounds double, double* %vla12, i64 %180
  %181 = load i32, i32* %j, align 4
  %sub234 = sub nsw i32 %181, 1
  %idxprom235 = sext i32 %sub234 to i64
  %arrayidx236 = getelementptr inbounds double, double* %arrayidx233, i64 %idxprom235
  %182 = load double, double* %arrayidx236, align 8
  %add237 = fadd double %sub231, %182
  %mul238 = fmul double %div220, %add237
  %add239 = fadd double %sub217, %mul238
  %183 = load double, double* %nu, align 8
  %184 = load double, double* %dt, align 8
  %mul240 = fmul double %183, %184
  %185 = load double, double* %dx, align 8
  %call241 = call double @pow(double %185, double 2.000000e+00) #4
  %div242 = fdiv double %mul240, %call241
  %186 = load i32, i32* %i, align 4
  %add243 = add nsw i32 %186, 1
  %idxprom244 = sext i32 %add243 to i64
  %187 = mul nsw i64 %idxprom244, %27
  %arrayidx245 = getelementptr inbounds double, double* %vla12, i64 %187
  %188 = load i32, i32* %j, align 4
  %idxprom246 = sext i32 %188 to i64
  %arrayidx247 = getelementptr inbounds double, double* %arrayidx245, i64 %idxprom246
  %189 = load double, double* %arrayidx247, align 8
  %190 = load i32, i32* %i, align 4
  %idxprom248 = sext i32 %190 to i64
  %191 = mul nsw i64 %idxprom248, %27
  %arrayidx249 = getelementptr inbounds double, double* %vla12, i64 %191
  %192 = load i32, i32* %j, align 4
  %idxprom250 = sext i32 %192 to i64
  %arrayidx251 = getelementptr inbounds double, double* %arrayidx249, i64 %idxprom250
  %193 = load double, double* %arrayidx251, align 8
  %mul252 = fmul double 2.000000e+00, %193
  %sub253 = fsub double %189, %mul252
  %194 = load i32, i32* %i, align 4
  %sub254 = sub nsw i32 %194, 1
  %idxprom255 = sext i32 %sub254 to i64
  %195 = mul nsw i64 %idxprom255, %27
  %arrayidx256 = getelementptr inbounds double, double* %vla12, i64 %195
  %196 = load i32, i32* %j, align 4
  %idxprom257 = sext i32 %196 to i64
  %arrayidx258 = getelementptr inbounds double, double* %arrayidx256, i64 %idxprom257
  %197 = load double, double* %arrayidx258, align 8
  %add259 = fadd double %sub253, %197
  %mul260 = fmul double %div242, %add259
  %add261 = fadd double %add239, %mul260
  %198 = load i32, i32* %i, align 4
  %idxprom262 = sext i32 %198 to i64
  %199 = mul nsw i64 %idxprom262, %27
  %arrayidx263 = getelementptr inbounds double, double* %vla12, i64 %199
  %200 = load i32, i32* %j, align 4
  %idxprom264 = sext i32 %200 to i64
  %arrayidx265 = getelementptr inbounds double, double* %arrayidx263, i64 %idxprom264
  store double %add261, double* %arrayidx265, align 8
  br label %if.end266

if.end266:                                        ; preds = %if.else90, %if.then81
  %201 = load i32, i32* %i, align 4
  %idxprom267 = sext i32 %201 to i64
  %arrayidx268 = getelementptr inbounds double, double* %vla, i64 %idxprom267
  %202 = load double, double* %arrayidx268, align 8
  %203 = load i32, i32* %j, align 4
  %idxprom269 = sext i32 %203 to i64
  %arrayidx270 = getelementptr inbounds double, double* %vla3, i64 %idxprom269
  %204 = load double, double* %arrayidx270, align 8
  %205 = load i32, i32* %i, align 4
  %idxprom271 = sext i32 %205 to i64
  %206 = mul nsw i64 %idxprom271, %22
  %arrayidx272 = getelementptr inbounds double, double* %vla11, i64 %206
  %207 = load i32, i32* %j, align 4
  %idxprom273 = sext i32 %207 to i64
  %arrayidx274 = getelementptr inbounds double, double* %arrayidx272, i64 %idxprom273
  %208 = load double, double* %arrayidx274, align 8
  %209 = load i32, i32* %i, align 4
  %idxprom275 = sext i32 %209 to i64
  %210 = mul nsw i64 %idxprom275, %27
  %arrayidx276 = getelementptr inbounds double, double* %vla12, i64 %210
  %211 = load i32, i32* %j, align 4
  %idxprom277 = sext i32 %211 to i64
  %arrayidx278 = getelementptr inbounds double, double* %arrayidx276, i64 %idxprom277
  %212 = load double, double* %arrayidx278, align 8
  %call279 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), double %202, double %204, double %208, double %212)
  br label %for.inc280

for.inc280:                                       ; preds = %if.end266
  %213 = load i32, i32* %j, align 4
  %add281 = add nsw i32 %213, 1
  store i32 %add281, i32* %j, align 4
  br label %for.cond65, !llvm.loop !8

for.end282:                                       ; preds = %for.cond65
  br label %for.inc283

for.inc283:                                       ; preds = %for.end282
  %214 = load i32, i32* %i, align 4
  %add284 = add nsw i32 %214, 1
  store i32 %add284, i32* %i, align 4
  br label %for.cond61, !llvm.loop !9

for.end285:                                       ; preds = %for.cond61
  br label %for.inc286

for.inc286:                                       ; preds = %for.end285
  %215 = load i32, i32* %paso, align 4
  %add287 = add nsw i32 %215, 1
  store i32 %add287, i32* %paso, align 4
  br label %for.cond57, !llvm.loop !10

for.end288:                                       ; preds = %for.cond57
  store i32 0, i32* %retval, align 4
  %216 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %216)
  %217 = load i32, i32* %retval, align 4
  ret i32 %217
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
