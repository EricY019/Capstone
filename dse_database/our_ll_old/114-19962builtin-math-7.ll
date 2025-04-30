; ModuleID = './code/114-19962builtin-math-7.c'
source_filename = "./code/114-19962builtin-math-7.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@main.foo = internal constant { double, double } { double 6.000000e+00, double 8.000000e+00 }, align 8
@main.foo.1 = internal constant { double, double } { double 1.500000e+00, double 2.000000e+00 }, align 8
@main.foo.2 = internal constant { i32, i32 } { i32 6, i32 8 }, align 4
@main.foo.3 = internal constant { i32, i32 } { i32 1, i32 2 }, align 4
@main.foo.4 = internal constant { double, double } { double -1.400000e+01, double 2.300000e+01 }, align 8
@main.foo.5 = internal constant { double, double } { double 8.000000e-01, double -6.000000e-01 }, align 8
@main.foo.6 = internal constant { i32, i32 } { i32 -14, i32 23 }, align 4
@main.foo.7 = internal constant { i32, i32 } { i32 8, i32 -6 }, align 4
@main.foo.8 = internal constant { i32, i32 } { i32 2, i32 0 }, align 4
@main.foo.9 = internal constant { i32, i32 } { i32 2, i32 0 }, align 4
@main.foo.10 = internal constant { double, double } { double 0x7FF0000000000000, double 0.000000e+00 }, align 8
@main.foo.11 = internal constant { double, double } { double 0xFFF0000000000000, double 0x7FF8000000000000 }, align 8
@main.foo.12 = internal constant { double, double } { double 0x7FF0000000000000, double 0x7FF8000000000000 }, align 8
@main.foo.13 = internal constant { double, double } { double 0x7FF8000000000000, double 0x7FF0000000000000 }, align 8
@main.foo.14 = internal constant { double, double } { double 0.000000e+00, double -0.000000e+00 }, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %foo = alloca { double, double }, align 8
  %foo22 = alloca { double, double }, align 8
  %foo45 = alloca { i32, i32 }, align 4
  %foo67 = alloca { i32, i32 }, align 4
  %foo89 = alloca { double, double }, align 8
  %foo125 = alloca { double, double }, align 8
  %foo148 = alloca { i32, i32 }, align 4
  %foo176 = alloca { i32, i32 }, align 4
  %foo198 = alloca { i32, i32 }, align 4
  %foo220 = alloca { i32, i32 }, align 4
  %foo242 = alloca { double, double }, align 8
  %foo268 = alloca { double, double }, align 8
  store i32 0, ptr %retval, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.body1

do.body1:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.body1
  br label %do.body2

do.body2:                                         ; preds = %do.end
  br label %do.end3

do.end3:                                          ; preds = %do.body2
  br label %do.body4

do.body4:                                         ; preds = %do.end3
  %foo.realp = getelementptr inbounds { double, double }, ptr %foo, i32 0, i32 0
  %foo.imagp = getelementptr inbounds { double, double }, ptr %foo, i32 0, i32 1
  store volatile double 3.000000e+00, ptr %foo.realp, align 8
  store volatile double 4.000000e+00, ptr %foo.imagp, align 8
  %foo.realp5 = getelementptr inbounds { double, double }, ptr %foo, i32 0, i32 0
  %foo.real = load volatile double, ptr %foo.realp5, align 8
  %foo.imagp6 = getelementptr inbounds { double, double }, ptr %foo, i32 0, i32 1
  %foo.imag = load volatile double, ptr %foo.imagp6, align 8
  %mul_ac = fmul double %foo.real, 2.000000e+00
  %mul_bd = fmul double %foo.imag, 0.000000e+00
  %mul_ad = fmul double %foo.real, 0.000000e+00
  %mul_bc = fmul double %foo.imag, 2.000000e+00
  %mul_r = fsub double %mul_ac, %mul_bd
  %mul_i = fadd double %mul_ad, %mul_bc
  %isnan_cmp = fcmp uno double %mul_r, %mul_r
  br i1 %isnan_cmp, label %complex_mul_imag_nan, label %complex_mul_cont, !prof !5

complex_mul_imag_nan:                             ; preds = %do.body4
  %isnan_cmp7 = fcmp uno double %mul_i, %mul_i
  br i1 %isnan_cmp7, label %complex_mul_libcall, label %complex_mul_cont, !prof !5

complex_mul_libcall:                              ; preds = %complex_mul_imag_nan
  %call = call { double, double } @__muldc3(double noundef %foo.real, double noundef %foo.imag, double noundef 2.000000e+00, double noundef 0.000000e+00) #3
  %0 = extractvalue { double, double } %call, 0
  %1 = extractvalue { double, double } %call, 1
  br label %complex_mul_cont

complex_mul_cont:                                 ; preds = %complex_mul_libcall, %complex_mul_imag_nan, %do.body4
  %real_mul_phi = phi double [ %mul_r, %do.body4 ], [ %mul_r, %complex_mul_imag_nan ], [ %0, %complex_mul_libcall ]
  %imag_mul_phi = phi double [ %mul_i, %do.body4 ], [ %mul_i, %complex_mul_imag_nan ], [ %1, %complex_mul_libcall ]
  %foo.realp8 = getelementptr inbounds { double, double }, ptr %foo, i32 0, i32 0
  %foo.imagp9 = getelementptr inbounds { double, double }, ptr %foo, i32 0, i32 1
  store volatile double %real_mul_phi, ptr %foo.realp8, align 8
  store volatile double %imag_mul_phi, ptr %foo.imagp9, align 8
  %foo.realp10 = getelementptr inbounds { double, double }, ptr %foo, i32 0, i32 0
  %foo.real11 = load volatile double, ptr %foo.realp10, align 8
  %foo.imagp12 = getelementptr inbounds { double, double }, ptr %foo, i32 0, i32 1
  %foo.imag13 = load volatile double, ptr %foo.imagp12, align 8
  %cmp.r = fcmp une double %foo.real11, 6.000000e+00
  %cmp.i = fcmp une double %foo.imag13, 8.000000e+00
  %or.ri = or i1 %cmp.r, %cmp.i
  br i1 %or.ri, label %if.then, label %if.end

if.then:                                          ; preds = %complex_mul_cont
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %complex_mul_cont
  br label %do.end14

do.end14:                                         ; preds = %if.end
  br label %do.end15

do.end15:                                         ; preds = %do.end14
  br label %do.body16

do.body16:                                        ; preds = %do.end15
  br label %do.body17

do.body17:                                        ; preds = %do.body16
  br label %do.end18

do.end18:                                         ; preds = %do.body17
  br label %do.body19

do.body19:                                        ; preds = %do.end18
  br label %do.end20

do.end20:                                         ; preds = %do.body19
  br label %do.body21

do.body21:                                        ; preds = %do.end20
  %foo22.realp = getelementptr inbounds { double, double }, ptr %foo22, i32 0, i32 0
  %foo22.imagp = getelementptr inbounds { double, double }, ptr %foo22, i32 0, i32 1
  store volatile double 3.000000e+00, ptr %foo22.realp, align 8
  store volatile double 4.000000e+00, ptr %foo22.imagp, align 8
  %foo22.realp23 = getelementptr inbounds { double, double }, ptr %foo22, i32 0, i32 0
  %foo22.real = load volatile double, ptr %foo22.realp23, align 8
  %foo22.imagp24 = getelementptr inbounds { double, double }, ptr %foo22, i32 0, i32 1
  %foo22.imag = load volatile double, ptr %foo22.imagp24, align 8
  %call25 = call { double, double } @__divdc3(double noundef %foo22.real, double noundef %foo22.imag, double noundef 2.000000e+00, double noundef 0.000000e+00) #3
  %2 = extractvalue { double, double } %call25, 0
  %3 = extractvalue { double, double } %call25, 1
  %foo22.realp26 = getelementptr inbounds { double, double }, ptr %foo22, i32 0, i32 0
  %foo22.imagp27 = getelementptr inbounds { double, double }, ptr %foo22, i32 0, i32 1
  store volatile double %2, ptr %foo22.realp26, align 8
  store volatile double %3, ptr %foo22.imagp27, align 8
  %foo22.realp28 = getelementptr inbounds { double, double }, ptr %foo22, i32 0, i32 0
  %foo22.real29 = load volatile double, ptr %foo22.realp28, align 8
  %foo22.imagp30 = getelementptr inbounds { double, double }, ptr %foo22, i32 0, i32 1
  %foo22.imag31 = load volatile double, ptr %foo22.imagp30, align 8
  %cmp.r32 = fcmp une double %foo22.real29, 1.500000e+00
  %cmp.i33 = fcmp une double %foo22.imag31, 2.000000e+00
  %or.ri34 = or i1 %cmp.r32, %cmp.i33
  br i1 %or.ri34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %do.body21
  call void @abort() #4
  unreachable

if.end36:                                         ; preds = %do.body21
  br label %do.end37

do.end37:                                         ; preds = %if.end36
  br label %do.end38

do.end38:                                         ; preds = %do.end37
  br label %do.body39

do.body39:                                        ; preds = %do.end38
  br label %do.body40

do.body40:                                        ; preds = %do.body39
  br label %do.end41

do.end41:                                         ; preds = %do.body40
  br label %do.body42

do.body42:                                        ; preds = %do.end41
  br label %do.end43

do.end43:                                         ; preds = %do.body42
  br label %do.body44

do.body44:                                        ; preds = %do.end43
  %foo45.realp = getelementptr inbounds { i32, i32 }, ptr %foo45, i32 0, i32 0
  %foo45.imagp = getelementptr inbounds { i32, i32 }, ptr %foo45, i32 0, i32 1
  store volatile i32 3, ptr %foo45.realp, align 4
  store volatile i32 4, ptr %foo45.imagp, align 4
  %foo45.realp46 = getelementptr inbounds { i32, i32 }, ptr %foo45, i32 0, i32 0
  %foo45.real = load volatile i32, ptr %foo45.realp46, align 4
  %foo45.imagp47 = getelementptr inbounds { i32, i32 }, ptr %foo45, i32 0, i32 1
  %foo45.imag = load volatile i32, ptr %foo45.imagp47, align 4
  %mul.rl = mul i32 %foo45.real, 2
  %mul.rr = mul i32 %foo45.imag, 0
  %mul.r = sub i32 %mul.rl, %mul.rr
  %mul.il = mul i32 %foo45.imag, 2
  %mul.ir = mul i32 %foo45.real, 0
  %mul.i = add i32 %mul.il, %mul.ir
  %foo45.realp48 = getelementptr inbounds { i32, i32 }, ptr %foo45, i32 0, i32 0
  %foo45.imagp49 = getelementptr inbounds { i32, i32 }, ptr %foo45, i32 0, i32 1
  store volatile i32 %mul.r, ptr %foo45.realp48, align 4
  store volatile i32 %mul.i, ptr %foo45.imagp49, align 4
  %foo45.realp50 = getelementptr inbounds { i32, i32 }, ptr %foo45, i32 0, i32 0
  %foo45.real51 = load volatile i32, ptr %foo45.realp50, align 4
  %foo45.imagp52 = getelementptr inbounds { i32, i32 }, ptr %foo45, i32 0, i32 1
  %foo45.imag53 = load volatile i32, ptr %foo45.imagp52, align 4
  %cmp.r54 = icmp ne i32 %foo45.real51, 6
  %cmp.i55 = icmp ne i32 %foo45.imag53, 8
  %or.ri56 = or i1 %cmp.r54, %cmp.i55
  br i1 %or.ri56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %do.body44
  call void @abort() #4
  unreachable

if.end58:                                         ; preds = %do.body44
  br label %do.end59

do.end59:                                         ; preds = %if.end58
  br label %do.end60

do.end60:                                         ; preds = %do.end59
  br label %do.body61

do.body61:                                        ; preds = %do.end60
  br label %do.body62

do.body62:                                        ; preds = %do.body61
  br label %do.end63

do.end63:                                         ; preds = %do.body62
  br label %do.body64

do.body64:                                        ; preds = %do.end63
  br label %do.end65

do.end65:                                         ; preds = %do.body64
  br label %do.body66

do.body66:                                        ; preds = %do.end65
  %foo67.realp = getelementptr inbounds { i32, i32 }, ptr %foo67, i32 0, i32 0
  %foo67.imagp = getelementptr inbounds { i32, i32 }, ptr %foo67, i32 0, i32 1
  store volatile i32 3, ptr %foo67.realp, align 4
  store volatile i32 4, ptr %foo67.imagp, align 4
  %foo67.realp68 = getelementptr inbounds { i32, i32 }, ptr %foo67, i32 0, i32 0
  %foo67.real = load volatile i32, ptr %foo67.realp68, align 4
  %foo67.imagp69 = getelementptr inbounds { i32, i32 }, ptr %foo67, i32 0, i32 1
  %foo67.imag = load volatile i32, ptr %foo67.imagp69, align 4
  %4 = mul i32 %foo67.real, 2
  %5 = mul i32 %foo67.imag, 0
  %6 = add i32 %4, %5
  %7 = mul i32 %foo67.imag, 2
  %8 = mul i32 %foo67.real, 0
  %9 = sub i32 %7, %8
  %10 = sdiv i32 %6, 4
  %11 = sdiv i32 %9, 4
  %foo67.realp70 = getelementptr inbounds { i32, i32 }, ptr %foo67, i32 0, i32 0
  %foo67.imagp71 = getelementptr inbounds { i32, i32 }, ptr %foo67, i32 0, i32 1
  store volatile i32 %10, ptr %foo67.realp70, align 4
  store volatile i32 %11, ptr %foo67.imagp71, align 4
  %foo67.realp72 = getelementptr inbounds { i32, i32 }, ptr %foo67, i32 0, i32 0
  %foo67.real73 = load volatile i32, ptr %foo67.realp72, align 4
  %foo67.imagp74 = getelementptr inbounds { i32, i32 }, ptr %foo67, i32 0, i32 1
  %foo67.imag75 = load volatile i32, ptr %foo67.imagp74, align 4
  %cmp.r76 = icmp ne i32 %foo67.real73, 1
  %cmp.i77 = icmp ne i32 %foo67.imag75, 2
  %or.ri78 = or i1 %cmp.r76, %cmp.i77
  br i1 %or.ri78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %do.body66
  call void @abort() #4
  unreachable

if.end80:                                         ; preds = %do.body66
  br label %do.end81

do.end81:                                         ; preds = %if.end80
  br label %do.end82

do.end82:                                         ; preds = %do.end81
  br label %do.body83

do.body83:                                        ; preds = %do.end82
  br label %do.body84

do.body84:                                        ; preds = %do.body83
  br label %do.end85

do.end85:                                         ; preds = %do.body84
  br label %do.body86

do.body86:                                        ; preds = %do.end85
  br label %do.end87

do.end87:                                         ; preds = %do.body86
  br label %do.body88

do.body88:                                        ; preds = %do.end87
  %foo89.realp = getelementptr inbounds { double, double }, ptr %foo89, i32 0, i32 0
  %foo89.imagp = getelementptr inbounds { double, double }, ptr %foo89, i32 0, i32 1
  store volatile double 3.000000e+00, ptr %foo89.realp, align 8
  store volatile double 4.000000e+00, ptr %foo89.imagp, align 8
  %foo89.realp90 = getelementptr inbounds { double, double }, ptr %foo89, i32 0, i32 0
  %foo89.real = load volatile double, ptr %foo89.realp90, align 8
  %foo89.imagp91 = getelementptr inbounds { double, double }, ptr %foo89, i32 0, i32 1
  %foo89.imag = load volatile double, ptr %foo89.imagp91, align 8
  %mul_ac92 = fmul double %foo89.real, 2.000000e+00
  %mul_bd93 = fmul double %foo89.imag, 5.000000e+00
  %mul_ad94 = fmul double %foo89.real, 5.000000e+00
  %mul_bc95 = fmul double %foo89.imag, 2.000000e+00
  %mul_r96 = fsub double %mul_ac92, %mul_bd93
  %mul_i97 = fadd double %mul_ad94, %mul_bc95
  %isnan_cmp98 = fcmp uno double %mul_r96, %mul_r96
  br i1 %isnan_cmp98, label %complex_mul_imag_nan99, label %complex_mul_cont103, !prof !5

complex_mul_imag_nan99:                           ; preds = %do.body88
  %isnan_cmp100 = fcmp uno double %mul_i97, %mul_i97
  br i1 %isnan_cmp100, label %complex_mul_libcall101, label %complex_mul_cont103, !prof !5

complex_mul_libcall101:                           ; preds = %complex_mul_imag_nan99
  %call102 = call { double, double } @__muldc3(double noundef %foo89.real, double noundef %foo89.imag, double noundef 2.000000e+00, double noundef 5.000000e+00) #3
  %12 = extractvalue { double, double } %call102, 0
  %13 = extractvalue { double, double } %call102, 1
  br label %complex_mul_cont103

complex_mul_cont103:                              ; preds = %complex_mul_libcall101, %complex_mul_imag_nan99, %do.body88
  %real_mul_phi104 = phi double [ %mul_r96, %do.body88 ], [ %mul_r96, %complex_mul_imag_nan99 ], [ %12, %complex_mul_libcall101 ]
  %imag_mul_phi105 = phi double [ %mul_i97, %do.body88 ], [ %mul_i97, %complex_mul_imag_nan99 ], [ %13, %complex_mul_libcall101 ]
  %foo89.realp106 = getelementptr inbounds { double, double }, ptr %foo89, i32 0, i32 0
  %foo89.imagp107 = getelementptr inbounds { double, double }, ptr %foo89, i32 0, i32 1
  store volatile double %real_mul_phi104, ptr %foo89.realp106, align 8
  store volatile double %imag_mul_phi105, ptr %foo89.imagp107, align 8
  %foo89.realp108 = getelementptr inbounds { double, double }, ptr %foo89, i32 0, i32 0
  %foo89.real109 = load volatile double, ptr %foo89.realp108, align 8
  %foo89.imagp110 = getelementptr inbounds { double, double }, ptr %foo89, i32 0, i32 1
  %foo89.imag111 = load volatile double, ptr %foo89.imagp110, align 8
  %cmp.r112 = fcmp une double %foo89.real109, -1.400000e+01
  %cmp.i113 = fcmp une double %foo89.imag111, 2.300000e+01
  %or.ri114 = or i1 %cmp.r112, %cmp.i113
  br i1 %or.ri114, label %if.then115, label %if.end116

if.then115:                                       ; preds = %complex_mul_cont103
  call void @abort() #4
  unreachable

if.end116:                                        ; preds = %complex_mul_cont103
  br label %do.end117

do.end117:                                        ; preds = %if.end116
  br label %do.end118

do.end118:                                        ; preds = %do.end117
  br label %do.body119

do.body119:                                       ; preds = %do.end118
  br label %do.body120

do.body120:                                       ; preds = %do.body119
  br label %do.end121

do.end121:                                        ; preds = %do.body120
  br label %do.body122

do.body122:                                       ; preds = %do.end121
  br label %do.end123

do.end123:                                        ; preds = %do.body122
  br label %do.body124

do.body124:                                       ; preds = %do.end123
  %foo125.realp = getelementptr inbounds { double, double }, ptr %foo125, i32 0, i32 0
  %foo125.imagp = getelementptr inbounds { double, double }, ptr %foo125, i32 0, i32 1
  store volatile double 3.000000e+00, ptr %foo125.realp, align 8
  store volatile double 4.000000e+00, ptr %foo125.imagp, align 8
  %foo125.realp126 = getelementptr inbounds { double, double }, ptr %foo125, i32 0, i32 0
  %foo125.real = load volatile double, ptr %foo125.realp126, align 8
  %foo125.imagp127 = getelementptr inbounds { double, double }, ptr %foo125, i32 0, i32 1
  %foo125.imag = load volatile double, ptr %foo125.imagp127, align 8
  %call128 = call { double, double } @__divdc3(double noundef %foo125.real, double noundef %foo125.imag, double noundef 0.000000e+00, double noundef 5.000000e+00) #3
  %14 = extractvalue { double, double } %call128, 0
  %15 = extractvalue { double, double } %call128, 1
  %foo125.realp129 = getelementptr inbounds { double, double }, ptr %foo125, i32 0, i32 0
  %foo125.imagp130 = getelementptr inbounds { double, double }, ptr %foo125, i32 0, i32 1
  store volatile double %14, ptr %foo125.realp129, align 8
  store volatile double %15, ptr %foo125.imagp130, align 8
  %foo125.realp131 = getelementptr inbounds { double, double }, ptr %foo125, i32 0, i32 0
  %foo125.real132 = load volatile double, ptr %foo125.realp131, align 8
  %foo125.imagp133 = getelementptr inbounds { double, double }, ptr %foo125, i32 0, i32 1
  %foo125.imag134 = load volatile double, ptr %foo125.imagp133, align 8
  %cmp.r135 = fcmp une double %foo125.real132, 8.000000e-01
  %cmp.i136 = fcmp une double %foo125.imag134, -6.000000e-01
  %or.ri137 = or i1 %cmp.r135, %cmp.i136
  br i1 %or.ri137, label %if.then138, label %if.end139

if.then138:                                       ; preds = %do.body124
  call void @abort() #4
  unreachable

if.end139:                                        ; preds = %do.body124
  br label %do.end140

do.end140:                                        ; preds = %if.end139
  br label %do.end141

do.end141:                                        ; preds = %do.end140
  br label %do.body142

do.body142:                                       ; preds = %do.end141
  br label %do.body143

do.body143:                                       ; preds = %do.body142
  br label %do.end144

do.end144:                                        ; preds = %do.body143
  br label %do.body145

do.body145:                                       ; preds = %do.end144
  br label %do.end146

do.end146:                                        ; preds = %do.body145
  br label %do.body147

do.body147:                                       ; preds = %do.end146
  %foo148.realp = getelementptr inbounds { i32, i32 }, ptr %foo148, i32 0, i32 0
  %foo148.imagp = getelementptr inbounds { i32, i32 }, ptr %foo148, i32 0, i32 1
  store volatile i32 3, ptr %foo148.realp, align 4
  store volatile i32 4, ptr %foo148.imagp, align 4
  %foo148.realp149 = getelementptr inbounds { i32, i32 }, ptr %foo148, i32 0, i32 0
  %foo148.real = load volatile i32, ptr %foo148.realp149, align 4
  %foo148.imagp150 = getelementptr inbounds { i32, i32 }, ptr %foo148, i32 0, i32 1
  %foo148.imag = load volatile i32, ptr %foo148.imagp150, align 4
  %mul.rl151 = mul i32 %foo148.real, 2
  %mul.rr152 = mul i32 %foo148.imag, 5
  %mul.r153 = sub i32 %mul.rl151, %mul.rr152
  %mul.il154 = mul i32 %foo148.imag, 2
  %mul.ir155 = mul i32 %foo148.real, 5
  %mul.i156 = add i32 %mul.il154, %mul.ir155
  %foo148.realp157 = getelementptr inbounds { i32, i32 }, ptr %foo148, i32 0, i32 0
  %foo148.imagp158 = getelementptr inbounds { i32, i32 }, ptr %foo148, i32 0, i32 1
  store volatile i32 %mul.r153, ptr %foo148.realp157, align 4
  store volatile i32 %mul.i156, ptr %foo148.imagp158, align 4
  %foo148.realp159 = getelementptr inbounds { i32, i32 }, ptr %foo148, i32 0, i32 0
  %foo148.real160 = load volatile i32, ptr %foo148.realp159, align 4
  %foo148.imagp161 = getelementptr inbounds { i32, i32 }, ptr %foo148, i32 0, i32 1
  %foo148.imag162 = load volatile i32, ptr %foo148.imagp161, align 4
  %cmp.r163 = icmp ne i32 %foo148.real160, -14
  %cmp.i164 = icmp ne i32 %foo148.imag162, 23
  %or.ri165 = or i1 %cmp.r163, %cmp.i164
  br i1 %or.ri165, label %if.then166, label %if.end167

if.then166:                                       ; preds = %do.body147
  call void @abort() #4
  unreachable

if.end167:                                        ; preds = %do.body147
  br label %do.end168

do.end168:                                        ; preds = %if.end167
  br label %do.end169

do.end169:                                        ; preds = %do.end168
  br label %do.body170

do.body170:                                       ; preds = %do.end169
  br label %do.body171

do.body171:                                       ; preds = %do.body170
  br label %do.end172

do.end172:                                        ; preds = %do.body171
  br label %do.body173

do.body173:                                       ; preds = %do.end172
  br label %do.end174

do.end174:                                        ; preds = %do.body173
  br label %do.body175

do.body175:                                       ; preds = %do.end174
  %foo176.realp = getelementptr inbounds { i32, i32 }, ptr %foo176, i32 0, i32 0
  %foo176.imagp = getelementptr inbounds { i32, i32 }, ptr %foo176, i32 0, i32 1
  store volatile i32 30, ptr %foo176.realp, align 4
  store volatile i32 40, ptr %foo176.imagp, align 4
  %foo176.realp177 = getelementptr inbounds { i32, i32 }, ptr %foo176, i32 0, i32 0
  %foo176.real = load volatile i32, ptr %foo176.realp177, align 4
  %foo176.imagp178 = getelementptr inbounds { i32, i32 }, ptr %foo176, i32 0, i32 1
  %foo176.imag = load volatile i32, ptr %foo176.imagp178, align 4
  %16 = mul i32 %foo176.real, 0
  %17 = mul i32 %foo176.imag, 5
  %18 = add i32 %16, %17
  %19 = mul i32 %foo176.imag, 0
  %20 = mul i32 %foo176.real, 5
  %21 = sub i32 %19, %20
  %22 = sdiv i32 %18, 25
  %23 = sdiv i32 %21, 25
  %foo176.realp179 = getelementptr inbounds { i32, i32 }, ptr %foo176, i32 0, i32 0
  %foo176.imagp180 = getelementptr inbounds { i32, i32 }, ptr %foo176, i32 0, i32 1
  store volatile i32 %22, ptr %foo176.realp179, align 4
  store volatile i32 %23, ptr %foo176.imagp180, align 4
  %foo176.realp181 = getelementptr inbounds { i32, i32 }, ptr %foo176, i32 0, i32 0
  %foo176.real182 = load volatile i32, ptr %foo176.realp181, align 4
  %foo176.imagp183 = getelementptr inbounds { i32, i32 }, ptr %foo176, i32 0, i32 1
  %foo176.imag184 = load volatile i32, ptr %foo176.imagp183, align 4
  %cmp.r185 = icmp ne i32 %foo176.real182, 8
  %cmp.i186 = icmp ne i32 %foo176.imag184, -6
  %or.ri187 = or i1 %cmp.r185, %cmp.i186
  br i1 %or.ri187, label %if.then188, label %if.end189

if.then188:                                       ; preds = %do.body175
  call void @abort() #4
  unreachable

if.end189:                                        ; preds = %do.body175
  br label %do.end190

do.end190:                                        ; preds = %if.end189
  br label %do.end191

do.end191:                                        ; preds = %do.end190
  br label %do.body192

do.body192:                                       ; preds = %do.end191
  br label %do.body193

do.body193:                                       ; preds = %do.body192
  br label %do.end194

do.end194:                                        ; preds = %do.body193
  br label %do.body195

do.body195:                                       ; preds = %do.end194
  br label %do.end196

do.end196:                                        ; preds = %do.body195
  br label %do.body197

do.body197:                                       ; preds = %do.end196
  %foo198.realp = getelementptr inbounds { i32, i32 }, ptr %foo198, i32 0, i32 0
  %foo198.imagp = getelementptr inbounds { i32, i32 }, ptr %foo198, i32 0, i32 1
  store volatile i32 14, ptr %foo198.realp, align 4
  store volatile i32 6, ptr %foo198.imagp, align 4
  %foo198.realp199 = getelementptr inbounds { i32, i32 }, ptr %foo198, i32 0, i32 0
  %foo198.real = load volatile i32, ptr %foo198.realp199, align 4
  %foo198.imagp200 = getelementptr inbounds { i32, i32 }, ptr %foo198, i32 0, i32 1
  %foo198.imag = load volatile i32, ptr %foo198.imagp200, align 4
  %24 = mul i32 %foo198.real, 7
  %25 = mul i32 %foo198.imag, 3
  %26 = add i32 %24, %25
  %27 = mul i32 %foo198.imag, 7
  %28 = mul i32 %foo198.real, 3
  %29 = sub i32 %27, %28
  %30 = sdiv i32 %26, 58
  %31 = sdiv i32 %29, 58
  %foo198.realp201 = getelementptr inbounds { i32, i32 }, ptr %foo198, i32 0, i32 0
  %foo198.imagp202 = getelementptr inbounds { i32, i32 }, ptr %foo198, i32 0, i32 1
  store volatile i32 %30, ptr %foo198.realp201, align 4
  store volatile i32 %31, ptr %foo198.imagp202, align 4
  %foo198.realp203 = getelementptr inbounds { i32, i32 }, ptr %foo198, i32 0, i32 0
  %foo198.real204 = load volatile i32, ptr %foo198.realp203, align 4
  %foo198.imagp205 = getelementptr inbounds { i32, i32 }, ptr %foo198, i32 0, i32 1
  %foo198.imag206 = load volatile i32, ptr %foo198.imagp205, align 4
  %cmp.r207 = icmp ne i32 %foo198.real204, 2
  %cmp.i208 = icmp ne i32 %foo198.imag206, 0
  %or.ri209 = or i1 %cmp.r207, %cmp.i208
  br i1 %or.ri209, label %if.then210, label %if.end211

if.then210:                                       ; preds = %do.body197
  call void @abort() #4
  unreachable

if.end211:                                        ; preds = %do.body197
  br label %do.end212

do.end212:                                        ; preds = %if.end211
  br label %do.end213

do.end213:                                        ; preds = %do.end212
  br label %do.body214

do.body214:                                       ; preds = %do.end213
  br label %do.body215

do.body215:                                       ; preds = %do.body214
  br label %do.end216

do.end216:                                        ; preds = %do.body215
  br label %do.body217

do.body217:                                       ; preds = %do.end216
  br label %do.end218

do.end218:                                        ; preds = %do.body217
  br label %do.body219

do.body219:                                       ; preds = %do.end218
  %foo220.realp = getelementptr inbounds { i32, i32 }, ptr %foo220, i32 0, i32 0
  %foo220.imagp = getelementptr inbounds { i32, i32 }, ptr %foo220, i32 0, i32 1
  store volatile i32 8, ptr %foo220.realp, align 4
  store volatile i32 24, ptr %foo220.imagp, align 4
  %foo220.realp221 = getelementptr inbounds { i32, i32 }, ptr %foo220, i32 0, i32 0
  %foo220.real = load volatile i32, ptr %foo220.realp221, align 4
  %foo220.imagp222 = getelementptr inbounds { i32, i32 }, ptr %foo220, i32 0, i32 1
  %foo220.imag = load volatile i32, ptr %foo220.imagp222, align 4
  %32 = mul i32 %foo220.real, 4
  %33 = mul i32 %foo220.imag, 12
  %34 = add i32 %32, %33
  %35 = mul i32 %foo220.imag, 4
  %36 = mul i32 %foo220.real, 12
  %37 = sub i32 %35, %36
  %38 = sdiv i32 %34, 160
  %39 = sdiv i32 %37, 160
  %foo220.realp223 = getelementptr inbounds { i32, i32 }, ptr %foo220, i32 0, i32 0
  %foo220.imagp224 = getelementptr inbounds { i32, i32 }, ptr %foo220, i32 0, i32 1
  store volatile i32 %38, ptr %foo220.realp223, align 4
  store volatile i32 %39, ptr %foo220.imagp224, align 4
  %foo220.realp225 = getelementptr inbounds { i32, i32 }, ptr %foo220, i32 0, i32 0
  %foo220.real226 = load volatile i32, ptr %foo220.realp225, align 4
  %foo220.imagp227 = getelementptr inbounds { i32, i32 }, ptr %foo220, i32 0, i32 1
  %foo220.imag228 = load volatile i32, ptr %foo220.imagp227, align 4
  %cmp.r229 = icmp ne i32 %foo220.real226, 2
  %cmp.i230 = icmp ne i32 %foo220.imag228, 0
  %or.ri231 = or i1 %cmp.r229, %cmp.i230
  br i1 %or.ri231, label %if.then232, label %if.end233

if.then232:                                       ; preds = %do.body219
  call void @abort() #4
  unreachable

if.end233:                                        ; preds = %do.body219
  br label %do.end234

do.end234:                                        ; preds = %if.end233
  br label %do.end235

do.end235:                                        ; preds = %do.end234
  br label %do.body236

do.body236:                                       ; preds = %do.end235
  br label %do.body237

do.body237:                                       ; preds = %do.body236
  call void @abort() #4
  unreachable

do.end238:                                        ; No predecessors!
  br label %do.body239

do.body239:                                       ; preds = %do.end238
  call void @link_error(i32 noundef 81)
  br label %do.end240

do.end240:                                        ; preds = %do.body239
  br label %do.body241

do.body241:                                       ; preds = %do.end240
  %foo242.realp = getelementptr inbounds { double, double }, ptr %foo242, i32 0, i32 0
  %foo242.imagp = getelementptr inbounds { double, double }, ptr %foo242, i32 0, i32 1
  store volatile double 0x7FDFFFFFFFFFFFFF, ptr %foo242.realp, align 8
  store volatile double 0x7FDFFFFFFFFFFFFF, ptr %foo242.imagp, align 8
  %foo242.realp243 = getelementptr inbounds { double, double }, ptr %foo242, i32 0, i32 0
  %foo242.real = load volatile double, ptr %foo242.realp243, align 8
  %foo242.imagp244 = getelementptr inbounds { double, double }, ptr %foo242, i32 0, i32 1
  %foo242.imag = load volatile double, ptr %foo242.imagp244, align 8
  %call245 = call { double, double } @__divdc3(double noundef %foo242.real, double noundef %foo242.imag, double noundef 0x7FCFFFFFFFFFFFFF, double noundef 0x7FCFFFFFFFFFFFFF) #3
  %40 = extractvalue { double, double } %call245, 0
  %41 = extractvalue { double, double } %call245, 1
  %foo242.realp246 = getelementptr inbounds { double, double }, ptr %foo242, i32 0, i32 0
  %foo242.imagp247 = getelementptr inbounds { double, double }, ptr %foo242, i32 0, i32 1
  store volatile double %40, ptr %foo242.realp246, align 8
  store volatile double %41, ptr %foo242.imagp247, align 8
  %foo242.realp248 = getelementptr inbounds { double, double }, ptr %foo242, i32 0, i32 0
  %foo242.real249 = load volatile double, ptr %foo242.realp248, align 8
  %foo242.imagp250 = getelementptr inbounds { double, double }, ptr %foo242, i32 0, i32 1
  %foo242.imag251 = load volatile double, ptr %foo242.imagp250, align 8
  %cmp.r252 = fcmp une double %foo242.real249, 2.000000e+00
  %cmp.i253 = fcmp une double %foo242.imag251, 0.000000e+00
  %or.ri254 = or i1 %cmp.r252, %cmp.i253
  br i1 %or.ri254, label %if.then255, label %if.end256

if.then255:                                       ; preds = %do.body241
  call void @abort() #4
  unreachable

if.end256:                                        ; preds = %do.body241
  br label %do.end257

do.end257:                                        ; preds = %if.end256
  br label %do.end258

do.end258:                                        ; preds = %do.end257
  br label %do.body259

do.body259:                                       ; preds = %do.end258
  call void @link_error(i32 noundef 88)
  br label %do.end260

do.end260:                                        ; preds = %do.body259
  br label %do.body261

do.body261:                                       ; preds = %do.end260
  br label %do.end262

do.end262:                                        ; preds = %do.body261
  br label %do.body263

do.body263:                                       ; preds = %do.end262
  br label %do.end264

do.end264:                                        ; preds = %do.body263
  br label %do.body265

do.body265:                                       ; preds = %do.end264
  br label %do.end266

do.end266:                                        ; preds = %do.body265
  br label %do.body267

do.body267:                                       ; preds = %do.end266
  %foo268.realp = getelementptr inbounds { double, double }, ptr %foo268, i32 0, i32 0
  %foo268.imagp = getelementptr inbounds { double, double }, ptr %foo268, i32 0, i32 1
  store volatile double 1.000000e+00, ptr %foo268.realp, align 8
  store volatile double 0.000000e+00, ptr %foo268.imagp, align 8
  br i1 true, label %complex_mul_imag_nan269, label %complex_mul_cont272, !prof !5

complex_mul_imag_nan269:                          ; preds = %do.body267
  br i1 false, label %complex_mul_libcall270, label %complex_mul_cont272, !prof !5

complex_mul_libcall270:                           ; preds = %complex_mul_imag_nan269
  %call271 = call { double, double } @__muldc3(double noundef 0x7FF0000000000000, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00) #3
  %42 = extractvalue { double, double } %call271, 0
  %43 = extractvalue { double, double } %call271, 1
  br label %complex_mul_cont272

complex_mul_cont272:                              ; preds = %complex_mul_libcall270, %complex_mul_imag_nan269, %do.body267
  %real_mul_phi273 = phi double [ 0x7FF8000000000000, %do.body267 ], [ 0x7FF8000000000000, %complex_mul_imag_nan269 ], [ %42, %complex_mul_libcall270 ]
  %imag_mul_phi274 = phi double [ 0x7FF0000000000000, %do.body267 ], [ 0x7FF0000000000000, %complex_mul_imag_nan269 ], [ %43, %complex_mul_libcall270 ]
  %foo268.realp275 = getelementptr inbounds { double, double }, ptr %foo268, i32 0, i32 0
  %foo268.real = load volatile double, ptr %foo268.realp275, align 8
  %foo268.imagp276 = getelementptr inbounds { double, double }, ptr %foo268, i32 0, i32 1
  %foo268.imag = load volatile double, ptr %foo268.imagp276, align 8
  %call277 = call { double, double } @__divdc3(double noundef %foo268.real, double noundef %foo268.imag, double noundef %real_mul_phi273, double noundef %imag_mul_phi274) #3
  %44 = extractvalue { double, double } %call277, 0
  %45 = extractvalue { double, double } %call277, 1
  %foo268.realp278 = getelementptr inbounds { double, double }, ptr %foo268, i32 0, i32 0
  %foo268.imagp279 = getelementptr inbounds { double, double }, ptr %foo268, i32 0, i32 1
  store volatile double %44, ptr %foo268.realp278, align 8
  store volatile double %45, ptr %foo268.imagp279, align 8
  %foo268.realp280 = getelementptr inbounds { double, double }, ptr %foo268, i32 0, i32 0
  %foo268.real281 = load volatile double, ptr %foo268.realp280, align 8
  %foo268.imagp282 = getelementptr inbounds { double, double }, ptr %foo268, i32 0, i32 1
  %foo268.imag283 = load volatile double, ptr %foo268.imagp282, align 8
  %cmp.r284 = fcmp une double %foo268.real281, 0.000000e+00
  %cmp.i285 = fcmp une double %foo268.imag283, 0.000000e+00
  %or.ri286 = or i1 %cmp.r284, %cmp.i285
  br i1 %or.ri286, label %if.then287, label %if.end288

if.then287:                                       ; preds = %complex_mul_cont272
  call void @abort() #4
  unreachable

if.end288:                                        ; preds = %complex_mul_cont272
  br label %do.end289

do.end289:                                        ; preds = %if.end288
  br label %do.body290

do.body290:                                       ; preds = %do.end289
  br label %do.end291

do.end291:                                        ; preds = %do.body290
  ret i32 0
}

declare { double, double } @__muldc3(double, double, double, double)

; Function Attrs: noreturn nounwind
declare void @abort() #1

declare { double, double } @__divdc3(double, double, double, double)

declare void @link_error(i32 noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = !{!"branch_weights", i32 1, i32 1048575}
