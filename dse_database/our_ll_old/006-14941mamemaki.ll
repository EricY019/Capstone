; ModuleID = './code/006-14941mamemaki.c'
source_filename = "./code/006-14941mamemaki.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [20 x i8] c"Calculated PI = %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"\E9\AC\BC\E3\82\92\E8\BF\BD\E3\81\84\E6\89\95\E3\81\86\E3\81\93\E3\81\A8\E3\81\8C\E3\81\A7\E3\81\8D\E3\81\BE\E3\81\97\E3\81\9F\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"\E9\AC\BC\E3\82\92\E8\BF\BD\E3\81\84\E6\89\95\E3\81\86\E3\81\93\E3\81\A8\E3\81\8C\E3\81\A7\E3\81\8D\E3\81\BE\E3\81\9B\E3\82\93\E3\81\A7\E3\81\97\E3\81\9F...\0A\00", align 1
@seed128 = internal global [4 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %n_hit = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %pi = alloca double, align 8
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %n_hit, align 4
  %call = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call to i32
  call void @xor128_seed(i32 noundef %conv)
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8
  %cmp = icmp ult i64 %0, 100000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @xor128()
  %conv3 = uitofp i32 %call2 to double
  %div = fdiv double %conv3, 0x41F0000000000000
  store double %div, ptr %x, align 8
  %call4 = call i32 @xor128()
  %conv5 = uitofp i32 %call4 to double
  %div6 = fdiv double %conv5, 0x41F0000000000000
  store double %div6, ptr %y, align 8
  %1 = load double, ptr %x, align 8
  %2 = load double, ptr %x, align 8
  %3 = load double, ptr %y, align 8
  %4 = load double, ptr %y, align 8
  %mul7 = fmul double %3, %4
  %5 = call double @llvm.fmuladd.f64(double %1, double %2, double %mul7)
  %cmp8 = fcmp olt double %5, 1.000000e+00
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, ptr %n_hit, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %n_hit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i64, ptr %i, align 8
  %inc10 = add i64 %7, 1
  store i64 %inc10, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %n_hit, align 4
  %conv11 = uitofp i32 %8 to double
  %mul = fmul double %conv11, 4.000000e+00
  %div12 = fdiv double %mul, 1.000000e+08
  store double %div12, ptr %pi, align 8
  %9 = load double, ptr %pi, align 8
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %9)
  %10 = load double, ptr %pi, align 8
  %sub = fsub double %10, 0x400921FB54442D18
  %11 = call double @llvm.fabs.f64(double %sub)
  %cmp14 = fcmp olt double %11, 2.500000e-04
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %for.end
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end19

if.else:                                          ; preds = %for.end
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then16
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @xor128_seed(i32 noundef %s) #0 {
entry:
  %s.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %s, ptr %s.addr, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp ule i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %s.addr, align 4
  %2 = load i32, ptr %s.addr, align 4
  %shr = lshr i32 %2, 30
  %xor = xor i32 %1, %shr
  %mul = mul i32 1812433253, %xor
  %3 = load i32, ptr %i, align 4
  %add = add i32 %mul, %3
  store i32 %add, ptr %s.addr, align 4
  %4 = load i32, ptr %i, align 4
  %sub = sub i32 %4, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr @seed128, i64 0, i64 %idxprom
  store i32 %add, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

declare i64 @time(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @xor128() #0 {
entry:
  %t = alloca i32, align 4
  %0 = load i32, ptr @seed128, align 4
  %1 = load i32, ptr @seed128, align 4
  %shl = shl i32 %1, 11
  %xor = xor i32 %0, %shl
  store i32 %xor, ptr %t, align 4
  %2 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @seed128, i64 0, i64 1), align 4
  store i32 %2, ptr @seed128, align 4
  %3 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @seed128, i64 0, i64 2), align 4
  store i32 %3, ptr getelementptr inbounds ([4 x i32], ptr @seed128, i64 0, i64 1), align 4
  %4 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @seed128, i64 0, i64 3), align 4
  store i32 %4, ptr getelementptr inbounds ([4 x i32], ptr @seed128, i64 0, i64 2), align 4
  %5 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @seed128, i64 0, i64 3), align 4
  %6 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @seed128, i64 0, i64 3), align 4
  %shr = lshr i32 %6, 19
  %xor1 = xor i32 %5, %shr
  %7 = load i32, ptr %t, align 4
  %8 = load i32, ptr %t, align 4
  %shr2 = lshr i32 %8, 8
  %xor3 = xor i32 %7, %shr2
  %xor4 = xor i32 %xor1, %xor3
  store i32 %xor4, ptr getelementptr inbounds ([4 x i32], ptr @seed128, i64 0, i64 3), align 4
  ret i32 %xor4
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

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
