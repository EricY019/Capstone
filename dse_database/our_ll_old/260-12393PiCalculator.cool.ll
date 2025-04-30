; ModuleID = './code/260-12393PiCalculator.cool.c'
source_filename = "./code/260-12393PiCalculator.cool.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [7 x i8] c"%d ms\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%.8lf\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %clock_start = alloca i64, align 8
  %nrOfElements = alloca i32, align 4
  %start = alloca i32, align 4
  %acc = alloca double, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 100000000, ptr %nrOfElements, align 4
  store i32 0, ptr %start, align 4
  store double 0.000000e+00, ptr %acc, align 8
  %call = call i64 @"\01_clock"()
  store i64 %call, ptr %clock_start, align 8
  %0 = load i32, ptr %start, align 4
  store i32 %0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %nrOfElements, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %rem = srem i32 %3, 2
  %cmp1 = icmp eq i32 %rem, 0
  %4 = zext i1 %cmp1 to i64
  %cond = select i1 %cmp1, double 4.000000e+00, double -4.000000e+00
  %5 = load i32, ptr %i, align 4
  %mul = mul nsw i32 2, %5
  %add = add nsw i32 %mul, 1
  %conv = sitofp i32 %add to double
  %div = fdiv double %cond, %conv
  %6 = load double, ptr %acc, align 8
  %add2 = fadd double %6, %div
  store double %add2, ptr %acc, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call3 = call i64 @"\01_clock"()
  %8 = load i64, ptr %clock_start, align 8
  %sub = sub i64 %call3, %8
  %div4 = udiv i64 %sub, 1000
  %conv5 = trunc i64 %div4 to i32
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv5)
  %9 = load double, ptr %acc, align 8
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %9)
  ret i32 0
}

declare i64 @"\01_clock"() #1

declare i32 @printf(ptr noundef, ...) #1

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
