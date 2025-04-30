; ModuleID = './code/191-18588random.c'
source_filename = "./code/191-18588random.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [37 x i8] c"mean(x) = %12.10f  var(x) = %12.10f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %seed = alloca i32, align 4
  %sum_0 = alloca double, align 8
  %sum_1 = alloca double, align 8
  %mean = alloca double, align 8
  %var = alloca double, align 8
  %x = alloca double, align 8
  store i32 0, ptr %retval, align 4
  %call = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %seed, align 4
  %0 = load i32, ptr %seed, align 4
  call void @srand(i32 noundef %0)
  store i32 1, ptr %i, align 4
  store double 0.000000e+00, ptr %sum_0, align 8
  store double 0.000000e+00, ptr %sum_1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %1, 10000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand()
  %conv3 = sitofp i32 %call2 to double
  %div = fdiv double %conv3, 0x41DFFFFFFFC00000
  store double %div, ptr %x, align 8
  %2 = load double, ptr %x, align 8
  %3 = load double, ptr %sum_0, align 8
  %add = fadd double %3, %2
  store double %add, ptr %sum_0, align 8
  %4 = load double, ptr %x, align 8
  %sub = fsub double %4, 5.000000e-01
  %5 = load double, ptr %x, align 8
  %sub4 = fsub double %5, 5.000000e-01
  %6 = load double, ptr %sum_1, align 8
  %7 = call double @llvm.fmuladd.f64(double %sub, double %sub4, double %6)
  store double %7, ptr %sum_1, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %9 = load double, ptr %sum_0, align 8
  %div5 = fdiv double %9, 1.000000e+07
  store double %div5, ptr %mean, align 8
  %10 = load double, ptr %sum_1, align 8
  %div6 = fdiv double %10, 1.000000e+07
  store double %div6, ptr %var, align 8
  %11 = load double, ptr %mean, align 8
  %12 = load double, ptr %var, align 8
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %11, double noundef %12)
  ret i32 0
}

declare i64 @time(ptr noundef) #1

declare void @srand(i32 noundef) #1

declare i32 @rand() #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

declare i32 @printf(ptr noundef, ...) #1

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
