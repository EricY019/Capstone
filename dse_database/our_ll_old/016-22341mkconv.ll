; ModuleID = './code/016-22341mkconv.c'
source_filename = "./code/016-22341mkconv.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@int_to_float_table = global [236 x double] [double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.580000e+02, double 1.580000e+02, double 1.556000e+02, double 1.533000e+02, double 1.513000e+02, double 1.490000e+02, double 1.466000e+02, double 1.443000e+02, double 1.425000e+02, double 1.403000e+02, double 1.382000e+02, double 1.364000e+02, double 1.340000e+02, double 1.335000e+02, double 1.317000e+02, double 1.304000e+02, double 1.288000e+02, double 1.273000e+02, double 1.257000e+02, double 1.245000e+02, double 1.230000e+02, double 1.214000e+02, double 1.198000e+02, double 1.185000e+02, double 1.173000e+02, double 1.162000e+02, double 1.151000e+02, double 1.141000e+02, double 1.130000e+02, double 1.119000e+02, double 1.110000e+02, double 1.101000e+02, double 1.090000e+02, double 1.081000e+02, double 1.070000e+02, double 1.059000e+02, double 1.049000e+02, double 1.040000e+02, double 1.031000e+02, double 1.020000e+02, double 1.012000e+02, double 1.002000e+02, double 0x4058D33333333333, double 9.820000e+01, double 0x4058533333333333, double 9.640000e+01, double 9.550000e+01, double 0x4057A66666666666, double 9.400000e+01, double 9.320000e+01, double 0x4057133333333333, double 9.170000e+01, double 0x4056B33333333333, double 9.010000e+01, double 8.920000e+01, double 8.850000e+01, double 8.770000e+01, double 8.700000e+01, double 0x4055933333333333, double 8.560000e+01, double 8.470000e+01, double 8.420000e+01, double 0x4054D33333333333, double 8.270000e+01, double 8.220000e+01, double 8.160000e+01, double 8.090000e+01, double 8.020000e+01, double 7.970000e+01, double 7.900000e+01, double 7.840000e+01, double 7.770000e+01, double 7.710000e+01, double 7.660000e+01, double 7.610000e+01, double 7.540000e+01, double 7.460000e+01, double 7.410000e+01, double 7.350000e+01, double 7.300000e+01, double 7.230000e+01, double 7.160000e+01, double 7.120000e+01, double 7.060000e+01, double 7.000000e+01, double 6.920000e+01, double 6.870000e+01, double 6.820000e+01, double 6.780000e+01, double 6.710000e+01, double 6.640000e+01, double 6.600000e+01, double 6.530000e+01, double 6.470000e+01, double 6.440000e+01, double 6.360000e+01, double 6.310000e+01, double 6.250000e+01, double 6.200000e+01, double 6.130000e+01, double 6.080000e+01, double 6.020000e+01, double 5.970000e+01, double 5.910000e+01, double 5.860000e+01, double 5.810000e+01, double 5.750000e+01, double 5.700000e+01, double 5.640000e+01, double 5.570000e+01, double 5.530000e+01, double 5.470000e+01, double 5.420000e+01, double 5.360000e+01, double 5.300000e+01, double 5.250000e+01, double 5.190000e+01, double 5.140000e+01, double 5.100000e+01, double 5.050000e+01, double 4.980000e+01, double 4.920000e+01, double 4.870000e+01, double 4.820000e+01, double 4.780000e+01, double 4.710000e+01, double 4.650000e+01, double 4.600000e+01, double 4.550000e+01, double 4.510000e+01, double 4.440000e+01, double 4.380000e+01, double 4.330000e+01, double 4.280000e+01, double 4.200000e+01, double 4.170000e+01, double 4.110000e+01, double 4.060000e+01, double 4.020000e+01, double 3.970000e+01, double 3.900000e+01, double 3.840000e+01, double 3.790000e+01, double 3.750000e+01, double 3.700000e+01, double 3.630000e+01, double 3.580000e+01, double 3.540000e+01, double 3.480000e+01, double 3.430000e+01, double 3.360000e+01, double 3.320000e+01, double 3.270000e+01, double 3.200000e+01, double 3.150000e+01, double 3.080000e+01, double 3.010000e+01, double 2.950000e+01, double 2.880000e+01, double 2.810000e+01, double 2.740000e+01, double 2.660000e+01, double 2.590000e+01, double 2.520000e+01, double 2.460000e+01, double 2.400000e+01, double 2.320000e+01, double 2.270000e+01, double 2.200000e+01, double 2.120000e+01, double 2.050000e+01, double 1.990000e+01, double 1.890000e+01, double 1.820000e+01, double 1.780000e+01, double 1.670000e+01, double 1.620000e+01, double 1.550000e+01, double 1.480000e+01, double 1.420000e+01, double 1.320000e+01, double 1.260000e+01, double 1.190000e+01, double 1.120000e+01, double 1.060000e+01, double 9.000000e+00, double 8.100000e+00, double 7.000000e+00, double 6.100000e+00, double 5.200000e+00, double 4.300000e+00, double 3.300000e+00, double 2.400000e+00, double 1.300000e+00, double 2.000000e-01, double 0.000000e+00], align 8
@.str = private unnamed_addr constant [26 x i8] c"#include \22conversion.h\22\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"const unsigned char analog_to_digital[] =\0A{\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"  [%d] = %d%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %value = alloca double, align 8
  %minerr = alloca double, align 8
  %best = alloca i32, align 4
  %j = alloca i32, align 4
  %err = alloca double, align 8
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 1500
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %conv = sitofp i32 %1 to double
  %div = fdiv double %conv, 1.000000e+01
  store double %div, ptr %value, align 8
  %2 = load double, ptr getelementptr inbounds ([236 x double], ptr @int_to_float_table, i64 0, i64 40), align 8
  %3 = load double, ptr %value, align 8
  %sub = fsub double %2, %3
  %4 = call double @llvm.fabs.f64(double %sub)
  store double %4, ptr %minerr, align 8
  store i32 40, ptr %best, align 4
  store i32 41, ptr %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %j, align 4
  %cmp3 = icmp slt i32 %5, 236
  br i1 %cmp3, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %6 = load i32, ptr %j, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [236 x double], ptr @int_to_float_table, i64 0, i64 %idxprom
  %7 = load double, ptr %arrayidx, align 8
  %8 = load double, ptr %value, align 8
  %sub6 = fsub double %7, %8
  %9 = call double @llvm.fabs.f64(double %sub6)
  store double %9, ptr %err, align 8
  %10 = load double, ptr %err, align 8
  %11 = load double, ptr %minerr, align 8
  %cmp7 = fcmp olt double %10, %11
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  %12 = load double, ptr %err, align 8
  store double %12, ptr %minerr, align 8
  %13 = load i32, ptr %j, align 4
  store i32 %13, ptr %best, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond2, !llvm.loop !5

for.end:                                          ; preds = %for.cond2
  %15 = load i32, ptr %i, align 4
  %16 = load i32, ptr %best, align 4
  %17 = load i32, ptr %i, align 4
  %cmp9 = icmp slt i32 %17, 1500
  %18 = zext i1 %cmp9 to i64
  %cond = select i1 %cmp9, ptr @.str.3, ptr @.str.4
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %15, i32 noundef %16, ptr noundef %cond)
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %19 = load i32, ptr %i, align 4
  %inc13 = add nsw i32 %19, 1
  store i32 %inc13, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end14:                                        ; preds = %for.cond
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

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
