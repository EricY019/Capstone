; ModuleID = 'code/006-14941mamemaki.c'
source_filename = "code/006-14941mamemaki.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"Calculated PI = %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"\E9\AC\BC\E3\82\92\E8\BF\BD\E3\81\84\E6\89\95\E3\81\86\E3\81\93\E3\81\A8\E3\81\8C\E3\81\A7\E3\81\8D\E3\81\BE\E3\81\97\E3\81\9F\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"\E9\AC\BC\E3\82\92\E8\BF\BD\E3\81\84\E6\89\95\E3\81\86\E3\81\93\E3\81\A8\E3\81\8C\E3\81\A7\E3\81\8D\E3\81\BE\E3\81\9B\E3\82\93\E3\81\A7\E3\81\97\E3\81\9F...\0A\00", align 1
@seed128 = internal global [4 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %n_hit = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %pi = alloca double, align 8
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %n_hit, align 4
  %call = call i64 @time(i64* null) #4
  %conv = trunc i64 %call to i32
  call void @xor128_seed(i32 %conv)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 100000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @xor128()
  %conv3 = uitofp i32 %call2 to double
  %div = fdiv double %conv3, 0x41F0000000000000
  store double %div, double* %x, align 8
  %call4 = call i32 @xor128()
  %conv5 = uitofp i32 %call4 to double
  %div6 = fdiv double %conv5, 0x41F0000000000000
  store double %div6, double* %y, align 8
  %1 = load double, double* %x, align 8
  %2 = load double, double* %x, align 8
  %mul = fmul double %1, %2
  %3 = load double, double* %y, align 8
  %4 = load double, double* %y, align 8
  %mul7 = fmul double %3, %4
  %add = fadd double %mul, %mul7
  %cmp8 = fcmp olt double %add, 1.000000e+00
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %n_hit, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %n_hit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i64, i64* %i, align 8
  %inc10 = add i64 %6, 1
  store i64 %inc10, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %n_hit, align 4
  %conv11 = uitofp i32 %7 to double
  %mul12 = fmul double %conv11, 4.000000e+00
  %div13 = fdiv double %mul12, 1.000000e+08
  store double %div13, double* %pi, align 8
  %8 = load double, double* %pi, align 8
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), double %8)
  %9 = load double, double* %pi, align 8
  %sub = fsub double %9, 0x400921FB54442D18
  %10 = call double @llvm.fabs.f64(double %sub)
  %cmp15 = fcmp olt double %10, 2.500000e-04
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %for.end
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end20

if.else:                                          ; preds = %for.end
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then17
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xor128_seed(i32 %s) #0 {
entry:
  %s.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %s, i32* %s.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ule i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %s.addr, align 4
  %2 = load i32, i32* %s.addr, align 4
  %shr = lshr i32 %2, 30
  %xor = xor i32 %1, %shr
  %mul = mul i32 1812433253, %xor
  %3 = load i32, i32* %i, align 4
  %add = add i32 %mul, %3
  store i32 %add, i32* %s.addr, align 4
  %4 = load i32, i32* %i, align 4
  %sub = sub i32 %4, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @seed128, i64 0, i64 %idxprom
  store i32 %add, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xor128() #0 {
entry:
  %t = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @seed128, i64 0, i64 0), align 16
  %1 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @seed128, i64 0, i64 0), align 16
  %shl = shl i32 %1, 11
  %xor = xor i32 %0, %shl
  store i32 %xor, i32* %t, align 4
  %2 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @seed128, i64 0, i64 1), align 4
  store i32 %2, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @seed128, i64 0, i64 0), align 16
  %3 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @seed128, i64 0, i64 2), align 8
  store i32 %3, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @seed128, i64 0, i64 1), align 4
  %4 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @seed128, i64 0, i64 3), align 4
  store i32 %4, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @seed128, i64 0, i64 2), align 8
  %5 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @seed128, i64 0, i64 3), align 4
  %6 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @seed128, i64 0, i64 3), align 4
  %shr = lshr i32 %6, 19
  %xor1 = xor i32 %5, %shr
  %7 = load i32, i32* %t, align 4
  %8 = load i32, i32* %t, align 4
  %shr2 = lshr i32 %8, 8
  %xor3 = xor i32 %7, %shr2
  %xor4 = xor i32 %xor1, %xor3
  store i32 %xor4, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @seed128, i64 0, i64 3), align 4
  ret i32 %xor4
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
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
