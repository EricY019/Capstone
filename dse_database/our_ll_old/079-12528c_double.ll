; ModuleID = './code/079-12528c_double.c'
source_filename = "./code/079-12528c_double.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@gd = global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [13 x i8] c"average: %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ld = alloca double, align 8
  %sum = alloca double, align 8
  %i = alloca i32, align 4
  %start_clock = alloca i64, align 8
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store double 0.000000e+00, ptr %sum, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 40
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  %call = call i64 @"\01_clock"()
  store i64 %call, ptr %start_clock, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 10000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %call4 = call double @calcPifloat()
  store double %call4, ptr %ld, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %2 = load i32, ptr %j, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  %call5 = call i64 @"\01_clock"()
  %3 = load i64, ptr %start_clock, align 8
  %sub = sub i64 %call5, %3
  %conv = uitofp i64 %sub to double
  %div = fdiv double %conv, 1.000000e+06
  %4 = load double, ptr %sum, align 8
  %add = fadd double %4, %div
  store double %add, ptr %sum, align 8
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %5 = load i32, ptr %i, align 4
  %inc7 = add nsw i32 %5, 1
  store i32 %inc7, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end8:                                         ; preds = %for.cond
  %6 = load double, ptr %ld, align 8
  store double %6, ptr @gd, align 8
  %7 = load double, ptr %sum, align 8
  %div9 = fdiv double %7, 4.000000e+01
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %div9)
  ret i32 0
}

declare i64 @"\01_clock"() #1

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define double @calcPifloat() #0 {
entry:
  %lasts = alloca double, align 8
  %t = alloca double, align 8
  %s = alloca double, align 8
  %n = alloca double, align 8
  %na = alloca double, align 8
  %d = alloca double, align 8
  %da = alloca double, align 8
  store double 0.000000e+00, ptr %lasts, align 8
  store double 3.000000e+00, ptr %t, align 8
  store double 3.000000e+00, ptr %s, align 8
  store double 1.000000e+00, ptr %n, align 8
  store double 0.000000e+00, ptr %na, align 8
  store double 0.000000e+00, ptr %d, align 8
  store double 2.400000e+01, ptr %da, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load double, ptr %s, align 8
  %1 = load double, ptr %lasts, align 8
  %cmp = fcmp une double %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load double, ptr %s, align 8
  store double %2, ptr %lasts, align 8
  %3 = load double, ptr %na, align 8
  %4 = load double, ptr %n, align 8
  %add = fadd double %4, %3
  store double %add, ptr %n, align 8
  %5 = load double, ptr %na, align 8
  %add1 = fadd double %5, 8.000000e+00
  store double %add1, ptr %na, align 8
  %6 = load double, ptr %da, align 8
  %7 = load double, ptr %d, align 8
  %add2 = fadd double %7, %6
  store double %add2, ptr %d, align 8
  %8 = load double, ptr %da, align 8
  %add3 = fadd double %8, 3.200000e+01
  store double %add3, ptr %da, align 8
  %9 = load double, ptr %t, align 8
  %10 = load double, ptr %n, align 8
  %mul = fmul double %9, %10
  %11 = load double, ptr %d, align 8
  %div = fdiv double %mul, %11
  store double %div, ptr %t, align 8
  %12 = load double, ptr %t, align 8
  store double %12, ptr %s, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %13 = load double, ptr %s, align 8
  ret double %13
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
