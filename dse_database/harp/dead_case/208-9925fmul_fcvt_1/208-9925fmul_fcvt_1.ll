; ModuleID = 'code/208-9925fmul_fcvt_1.c'
source_filename = "code/208-9925fmul_fcvt_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sffoo4(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %mul = fmul float %0, 4.000000e+00
  %conv = fptosi float %mul to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usffoo4(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %mul = fmul float %0, 4.000000e+00
  %conv = fptoui float %mul to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lsffoo4(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %mul = fmul float %0, 4.000000e+00
  %conv = fptosi float %mul to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ulsffoo4(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %mul = fmul float %0, 4.000000e+00
  %conv = fptoui float %mul to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dffoo4(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %mul = fmul double %0, 4.000000e+00
  %conv = fptosi double %mul to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @udffoo4(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %mul = fmul double %0, 4.000000e+00
  %conv = fptoui double %mul to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdffoo4(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %mul = fmul double %0, 4.000000e+00
  %conv = fptosi double %mul to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usdffoo4(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %mul = fmul double %0, 4.000000e+00
  %conv = fptoui double %mul to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sffoo8(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %mul = fmul float %0, 8.000000e+00
  %conv = fptosi float %mul to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usffoo8(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %mul = fmul float %0, 8.000000e+00
  %conv = fptoui float %mul to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lsffoo8(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %mul = fmul float %0, 8.000000e+00
  %conv = fptosi float %mul to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ulsffoo8(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %mul = fmul float %0, 8.000000e+00
  %conv = fptoui float %mul to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dffoo8(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %mul = fmul double %0, 8.000000e+00
  %conv = fptosi double %mul to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @udffoo8(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %mul = fmul double %0, 8.000000e+00
  %conv = fptoui double %mul to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdffoo8(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %mul = fmul double %0, 8.000000e+00
  %conv = fptosi double %mul to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usdffoo8(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %mul = fmul double %0, 8.000000e+00
  %conv = fptoui double %mul to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sffoo16(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %mul = fmul float %0, 1.600000e+01
  %conv = fptosi float %mul to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usffoo16(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %mul = fmul float %0, 1.600000e+01
  %conv = fptoui float %mul to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lsffoo16(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %mul = fmul float %0, 1.600000e+01
  %conv = fptosi float %mul to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ulsffoo16(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %mul = fmul float %0, 1.600000e+01
  %conv = fptoui float %mul to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dffoo16(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %mul = fmul double %0, 1.600000e+01
  %conv = fptosi double %mul to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @udffoo16(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %mul = fmul double %0, 1.600000e+01
  %conv = fptoui double %mul to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdffoo16(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %mul = fmul double %0, 1.600000e+01
  %conv = fptosi double %mul to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usdffoo16(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %mul = fmul double %0, 1.600000e+01
  %conv = fptoui double %mul to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sffoo32(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %mul = fmul float %0, 3.200000e+01
  %conv = fptosi float %mul to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usffoo32(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %mul = fmul float %0, 3.200000e+01
  %conv = fptoui float %mul to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lsffoo32(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %mul = fmul float %0, 3.200000e+01
  %conv = fptosi float %mul to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ulsffoo32(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = load float, float* %x.addr, align 4
  %mul = fmul float %0, 3.200000e+01
  %conv = fptoui float %mul to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dffoo32(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %mul = fmul double %0, 3.200000e+01
  %conv = fptosi double %mul to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @udffoo32(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %mul = fmul double %0, 3.200000e+01
  %conv = fptoui double %mul to i64
  ret i64 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdffoo32(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %mul = fmul double %0, 3.200000e+01
  %conv = fptosi double %mul to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usdffoo32(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %mul = fmul double %0, 3.200000e+01
  %conv = fptoui double %mul to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca float, align 4
  store i32 0, i32* %retval, align 4
  store float 0xBF50624DE0000000, float* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load float, float* %i, align 4
  %conv = fpext float %0 to double
  %cmp = fcmp olt double %conv, 3.200000e+01
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %1 = load float, float* %i, align 4
  %call = call i32 @sffoo4(float %1)
  %2 = load float, float* %i, align 4
  %mul = fmul float %2, 4.000000e+00
  %conv2 = fptosi float %mul to i32
  %cmp3 = icmp ne i32 %call, %conv2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %do.body
  %3 = load float, float* %i, align 4
  %call5 = call i32 @usffoo4(float %3)
  %4 = load float, float* %i, align 4
  %mul6 = fmul float %4, 4.000000e+00
  %conv7 = fptoui float %mul6 to i32
  %cmp8 = icmp ne i32 %call5, %conv7
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  call void @abort() #2
  unreachable

if.end11:                                         ; preds = %if.end
  %5 = load float, float* %i, align 4
  %call12 = call i64 @lsffoo4(float %5)
  %6 = load float, float* %i, align 4
  %mul13 = fmul float %6, 4.000000e+00
  %conv14 = fptosi float %mul13 to i64
  %cmp15 = icmp ne i64 %call12, %conv14
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end11
  call void @abort() #2
  unreachable

if.end18:                                         ; preds = %if.end11
  %7 = load float, float* %i, align 4
  %call19 = call i64 @ulsffoo4(float %7)
  %8 = load float, float* %i, align 4
  %mul20 = fmul float %8, 4.000000e+00
  %conv21 = fptoui float %mul20 to i64
  %cmp22 = icmp ne i64 %call19, %conv21
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end18
  call void @abort() #2
  unreachable

if.end25:                                         ; preds = %if.end18
  br label %do.end

do.end:                                           ; preds = %if.end25
  br label %do.body26

do.body26:                                        ; preds = %do.end
  %9 = load float, float* %i, align 4
  %call27 = call i32 @sffoo8(float %9)
  %10 = load float, float* %i, align 4
  %mul28 = fmul float %10, 8.000000e+00
  %conv29 = fptosi float %mul28 to i32
  %cmp30 = icmp ne i32 %call27, %conv29
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %do.body26
  call void @abort() #2
  unreachable

if.end33:                                         ; preds = %do.body26
  %11 = load float, float* %i, align 4
  %call34 = call i32 @usffoo8(float %11)
  %12 = load float, float* %i, align 4
  %mul35 = fmul float %12, 8.000000e+00
  %conv36 = fptoui float %mul35 to i32
  %cmp37 = icmp ne i32 %call34, %conv36
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end33
  call void @abort() #2
  unreachable

if.end40:                                         ; preds = %if.end33
  %13 = load float, float* %i, align 4
  %call41 = call i64 @lsffoo8(float %13)
  %14 = load float, float* %i, align 4
  %mul42 = fmul float %14, 8.000000e+00
  %conv43 = fptosi float %mul42 to i64
  %cmp44 = icmp ne i64 %call41, %conv43
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end40
  call void @abort() #2
  unreachable

if.end47:                                         ; preds = %if.end40
  %15 = load float, float* %i, align 4
  %call48 = call i64 @ulsffoo8(float %15)
  %16 = load float, float* %i, align 4
  %mul49 = fmul float %16, 8.000000e+00
  %conv50 = fptoui float %mul49 to i64
  %cmp51 = icmp ne i64 %call48, %conv50
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end47
  call void @abort() #2
  unreachable

if.end54:                                         ; preds = %if.end47
  br label %do.end55

do.end55:                                         ; preds = %if.end54
  br label %do.body56

do.body56:                                        ; preds = %do.end55
  %17 = load float, float* %i, align 4
  %call57 = call i32 @sffoo16(float %17)
  %18 = load float, float* %i, align 4
  %mul58 = fmul float %18, 1.600000e+01
  %conv59 = fptosi float %mul58 to i32
  %cmp60 = icmp ne i32 %call57, %conv59
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %do.body56
  call void @abort() #2
  unreachable

if.end63:                                         ; preds = %do.body56
  %19 = load float, float* %i, align 4
  %call64 = call i32 @usffoo16(float %19)
  %20 = load float, float* %i, align 4
  %mul65 = fmul float %20, 1.600000e+01
  %conv66 = fptoui float %mul65 to i32
  %cmp67 = icmp ne i32 %call64, %conv66
  br i1 %cmp67, label %if.then69, label %if.end70

if.then69:                                        ; preds = %if.end63
  call void @abort() #2
  unreachable

if.end70:                                         ; preds = %if.end63
  %21 = load float, float* %i, align 4
  %call71 = call i64 @lsffoo16(float %21)
  %22 = load float, float* %i, align 4
  %mul72 = fmul float %22, 1.600000e+01
  %conv73 = fptosi float %mul72 to i64
  %cmp74 = icmp ne i64 %call71, %conv73
  br i1 %cmp74, label %if.then76, label %if.end77

if.then76:                                        ; preds = %if.end70
  call void @abort() #2
  unreachable

if.end77:                                         ; preds = %if.end70
  %23 = load float, float* %i, align 4
  %call78 = call i64 @ulsffoo16(float %23)
  %24 = load float, float* %i, align 4
  %mul79 = fmul float %24, 1.600000e+01
  %conv80 = fptoui float %mul79 to i64
  %cmp81 = icmp ne i64 %call78, %conv80
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end77
  call void @abort() #2
  unreachable

if.end84:                                         ; preds = %if.end77
  br label %do.end85

do.end85:                                         ; preds = %if.end84
  br label %do.body86

do.body86:                                        ; preds = %do.end85
  %25 = load float, float* %i, align 4
  %call87 = call i32 @sffoo32(float %25)
  %26 = load float, float* %i, align 4
  %mul88 = fmul float %26, 3.200000e+01
  %conv89 = fptosi float %mul88 to i32
  %cmp90 = icmp ne i32 %call87, %conv89
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %do.body86
  call void @abort() #2
  unreachable

if.end93:                                         ; preds = %do.body86
  %27 = load float, float* %i, align 4
  %call94 = call i32 @usffoo32(float %27)
  %28 = load float, float* %i, align 4
  %mul95 = fmul float %28, 3.200000e+01
  %conv96 = fptoui float %mul95 to i32
  %cmp97 = icmp ne i32 %call94, %conv96
  br i1 %cmp97, label %if.then99, label %if.end100

if.then99:                                        ; preds = %if.end93
  call void @abort() #2
  unreachable

if.end100:                                        ; preds = %if.end93
  %29 = load float, float* %i, align 4
  %call101 = call i64 @lsffoo32(float %29)
  %30 = load float, float* %i, align 4
  %mul102 = fmul float %30, 3.200000e+01
  %conv103 = fptosi float %mul102 to i64
  %cmp104 = icmp ne i64 %call101, %conv103
  br i1 %cmp104, label %if.then106, label %if.end107

if.then106:                                       ; preds = %if.end100
  call void @abort() #2
  unreachable

if.end107:                                        ; preds = %if.end100
  %31 = load float, float* %i, align 4
  %call108 = call i64 @ulsffoo32(float %31)
  %32 = load float, float* %i, align 4
  %mul109 = fmul float %32, 3.200000e+01
  %conv110 = fptoui float %mul109 to i64
  %cmp111 = icmp ne i64 %call108, %conv110
  br i1 %cmp111, label %if.then113, label %if.end114

if.then113:                                       ; preds = %if.end107
  call void @abort() #2
  unreachable

if.end114:                                        ; preds = %if.end107
  br label %do.end115

do.end115:                                        ; preds = %if.end114
  br label %do.body116

do.body116:                                       ; preds = %do.end115
  %33 = load float, float* %i, align 4
  %conv117 = fpext float %33 to double
  %call118 = call i64 @dffoo4(double %conv117)
  %34 = load float, float* %i, align 4
  %mul119 = fmul float %34, 4.000000e+00
  %conv120 = fptosi float %mul119 to i64
  %cmp121 = icmp ne i64 %call118, %conv120
  br i1 %cmp121, label %if.then123, label %if.end124

if.then123:                                       ; preds = %do.body116
  call void @abort() #2
  unreachable

if.end124:                                        ; preds = %do.body116
  %35 = load float, float* %i, align 4
  %conv125 = fpext float %35 to double
  %call126 = call i64 @udffoo4(double %conv125)
  %36 = load float, float* %i, align 4
  %mul127 = fmul float %36, 4.000000e+00
  %conv128 = fptoui float %mul127 to i64
  %cmp129 = icmp ne i64 %call126, %conv128
  br i1 %cmp129, label %if.then131, label %if.end132

if.then131:                                       ; preds = %if.end124
  call void @abort() #2
  unreachable

if.end132:                                        ; preds = %if.end124
  %37 = load float, float* %i, align 4
  %conv133 = fpext float %37 to double
  %call134 = call i32 @sdffoo4(double %conv133)
  %38 = load float, float* %i, align 4
  %mul135 = fmul float %38, 4.000000e+00
  %conv136 = fptosi float %mul135 to i32
  %cmp137 = icmp ne i32 %call134, %conv136
  br i1 %cmp137, label %if.then139, label %if.end140

if.then139:                                       ; preds = %if.end132
  call void @abort() #2
  unreachable

if.end140:                                        ; preds = %if.end132
  %39 = load float, float* %i, align 4
  %conv141 = fpext float %39 to double
  %call142 = call i32 @usdffoo4(double %conv141)
  %40 = load float, float* %i, align 4
  %mul143 = fmul float %40, 4.000000e+00
  %conv144 = fptoui float %mul143 to i32
  %cmp145 = icmp ne i32 %call142, %conv144
  br i1 %cmp145, label %if.then147, label %if.end148

if.then147:                                       ; preds = %if.end140
  call void @abort() #2
  unreachable

if.end148:                                        ; preds = %if.end140
  br label %do.end149

do.end149:                                        ; preds = %if.end148
  br label %do.body150

do.body150:                                       ; preds = %do.end149
  %41 = load float, float* %i, align 4
  %conv151 = fpext float %41 to double
  %call152 = call i64 @dffoo8(double %conv151)
  %42 = load float, float* %i, align 4
  %mul153 = fmul float %42, 8.000000e+00
  %conv154 = fptosi float %mul153 to i64
  %cmp155 = icmp ne i64 %call152, %conv154
  br i1 %cmp155, label %if.then157, label %if.end158

if.then157:                                       ; preds = %do.body150
  call void @abort() #2
  unreachable

if.end158:                                        ; preds = %do.body150
  %43 = load float, float* %i, align 4
  %conv159 = fpext float %43 to double
  %call160 = call i64 @udffoo8(double %conv159)
  %44 = load float, float* %i, align 4
  %mul161 = fmul float %44, 8.000000e+00
  %conv162 = fptoui float %mul161 to i64
  %cmp163 = icmp ne i64 %call160, %conv162
  br i1 %cmp163, label %if.then165, label %if.end166

if.then165:                                       ; preds = %if.end158
  call void @abort() #2
  unreachable

if.end166:                                        ; preds = %if.end158
  %45 = load float, float* %i, align 4
  %conv167 = fpext float %45 to double
  %call168 = call i32 @sdffoo8(double %conv167)
  %46 = load float, float* %i, align 4
  %mul169 = fmul float %46, 8.000000e+00
  %conv170 = fptosi float %mul169 to i32
  %cmp171 = icmp ne i32 %call168, %conv170
  br i1 %cmp171, label %if.then173, label %if.end174

if.then173:                                       ; preds = %if.end166
  call void @abort() #2
  unreachable

if.end174:                                        ; preds = %if.end166
  %47 = load float, float* %i, align 4
  %conv175 = fpext float %47 to double
  %call176 = call i32 @usdffoo8(double %conv175)
  %48 = load float, float* %i, align 4
  %mul177 = fmul float %48, 8.000000e+00
  %conv178 = fptoui float %mul177 to i32
  %cmp179 = icmp ne i32 %call176, %conv178
  br i1 %cmp179, label %if.then181, label %if.end182

if.then181:                                       ; preds = %if.end174
  call void @abort() #2
  unreachable

if.end182:                                        ; preds = %if.end174
  br label %do.end183

do.end183:                                        ; preds = %if.end182
  br label %do.body184

do.body184:                                       ; preds = %do.end183
  %49 = load float, float* %i, align 4
  %conv185 = fpext float %49 to double
  %call186 = call i64 @dffoo16(double %conv185)
  %50 = load float, float* %i, align 4
  %mul187 = fmul float %50, 1.600000e+01
  %conv188 = fptosi float %mul187 to i64
  %cmp189 = icmp ne i64 %call186, %conv188
  br i1 %cmp189, label %if.then191, label %if.end192

if.then191:                                       ; preds = %do.body184
  call void @abort() #2
  unreachable

if.end192:                                        ; preds = %do.body184
  %51 = load float, float* %i, align 4
  %conv193 = fpext float %51 to double
  %call194 = call i64 @udffoo16(double %conv193)
  %52 = load float, float* %i, align 4
  %mul195 = fmul float %52, 1.600000e+01
  %conv196 = fptoui float %mul195 to i64
  %cmp197 = icmp ne i64 %call194, %conv196
  br i1 %cmp197, label %if.then199, label %if.end200

if.then199:                                       ; preds = %if.end192
  call void @abort() #2
  unreachable

if.end200:                                        ; preds = %if.end192
  %53 = load float, float* %i, align 4
  %conv201 = fpext float %53 to double
  %call202 = call i32 @sdffoo16(double %conv201)
  %54 = load float, float* %i, align 4
  %mul203 = fmul float %54, 1.600000e+01
  %conv204 = fptosi float %mul203 to i32
  %cmp205 = icmp ne i32 %call202, %conv204
  br i1 %cmp205, label %if.then207, label %if.end208

if.then207:                                       ; preds = %if.end200
  call void @abort() #2
  unreachable

if.end208:                                        ; preds = %if.end200
  %55 = load float, float* %i, align 4
  %conv209 = fpext float %55 to double
  %call210 = call i32 @usdffoo16(double %conv209)
  %56 = load float, float* %i, align 4
  %mul211 = fmul float %56, 1.600000e+01
  %conv212 = fptoui float %mul211 to i32
  %cmp213 = icmp ne i32 %call210, %conv212
  br i1 %cmp213, label %if.then215, label %if.end216

if.then215:                                       ; preds = %if.end208
  call void @abort() #2
  unreachable

if.end216:                                        ; preds = %if.end208
  br label %do.end217

do.end217:                                        ; preds = %if.end216
  br label %do.body218

do.body218:                                       ; preds = %do.end217
  %57 = load float, float* %i, align 4
  %conv219 = fpext float %57 to double
  %call220 = call i64 @dffoo32(double %conv219)
  %58 = load float, float* %i, align 4
  %mul221 = fmul float %58, 3.200000e+01
  %conv222 = fptosi float %mul221 to i64
  %cmp223 = icmp ne i64 %call220, %conv222
  br i1 %cmp223, label %if.then225, label %if.end226

if.then225:                                       ; preds = %do.body218
  call void @abort() #2
  unreachable

if.end226:                                        ; preds = %do.body218
  %59 = load float, float* %i, align 4
  %conv227 = fpext float %59 to double
  %call228 = call i64 @udffoo32(double %conv227)
  %60 = load float, float* %i, align 4
  %mul229 = fmul float %60, 3.200000e+01
  %conv230 = fptoui float %mul229 to i64
  %cmp231 = icmp ne i64 %call228, %conv230
  br i1 %cmp231, label %if.then233, label %if.end234

if.then233:                                       ; preds = %if.end226
  call void @abort() #2
  unreachable

if.end234:                                        ; preds = %if.end226
  %61 = load float, float* %i, align 4
  %conv235 = fpext float %61 to double
  %call236 = call i32 @sdffoo32(double %conv235)
  %62 = load float, float* %i, align 4
  %mul237 = fmul float %62, 3.200000e+01
  %conv238 = fptosi float %mul237 to i32
  %cmp239 = icmp ne i32 %call236, %conv238
  br i1 %cmp239, label %if.then241, label %if.end242

if.then241:                                       ; preds = %if.end234
  call void @abort() #2
  unreachable

if.end242:                                        ; preds = %if.end234
  %63 = load float, float* %i, align 4
  %conv243 = fpext float %63 to double
  %call244 = call i32 @usdffoo32(double %conv243)
  %64 = load float, float* %i, align 4
  %mul245 = fmul float %64, 3.200000e+01
  %conv246 = fptoui float %mul245 to i32
  %cmp247 = icmp ne i32 %call244, %conv246
  br i1 %cmp247, label %if.then249, label %if.end250

if.then249:                                       ; preds = %if.end242
  call void @abort() #2
  unreachable

if.end250:                                        ; preds = %if.end242
  br label %do.end251

do.end251:                                        ; preds = %if.end250
  br label %for.inc

for.inc:                                          ; preds = %do.end251
  %65 = load float, float* %i, align 4
  %add = fadd float %65, 1.000000e+00
  store float %add, float* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
