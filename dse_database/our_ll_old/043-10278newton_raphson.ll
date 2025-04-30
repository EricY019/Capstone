; ModuleID = './code/043-10278newton_raphson.c'
source_filename = "./code/043-10278newton_raphson.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [13 x i8] c"root at %lf\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define double @f(double noundef %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, ptr %x.addr, align 8
  %0 = load double, ptr %x.addr, align 8
  %1 = load double, ptr %x.addr, align 8
  %2 = load double, ptr %x.addr, align 8
  %mul1 = fmul double 7.000000e+00, %2
  %neg = fneg double %mul1
  %3 = call double @llvm.fmuladd.f64(double %0, double %1, double %neg)
  %add = fadd double %3, 1.200000e+01
  ret double %add
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define double @df(double noundef %x) #0 {
entry:
  %x.addr = alloca double, align 8
  store double %x, ptr %x.addr, align 8
  %0 = load double, ptr %x.addr, align 8
  %1 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %0, double -7.000000e+00)
  ret double %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define double @newton_raphson(double noundef %x0) #0 {
entry:
  %x0.addr = alloca double, align 8
  %last = alloca double, align 8
  %current = alloca double, align 8
  store double %x0, ptr %x0.addr, align 8
  %0 = load double, ptr %x0.addr, align 8
  %1 = load double, ptr %x0.addr, align 8
  %call = call double @f(double noundef %1)
  %2 = load double, ptr %x0.addr, align 8
  %call1 = call double @df(double noundef %2)
  %div = fdiv double %call, %call1
  %sub = fsub double %0, %div
  store double %sub, ptr %current, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %3 = load double, ptr %current, align 8
  store double %3, ptr %last, align 8
  %4 = load double, ptr %current, align 8
  %call2 = call double @f(double noundef %4)
  %5 = load double, ptr %current, align 8
  %call3 = call double @df(double noundef %5)
  %div4 = fdiv double %call2, %call3
  %6 = load double, ptr %current, align 8
  %sub5 = fsub double %6, %div4
  store double %sub5, ptr %current, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load double, ptr %last, align 8
  %8 = load double, ptr %current, align 8
  %sub6 = fsub double %7, %8
  %9 = call double @llvm.fabs.f64(double %sub6)
  %cmp = fcmp ogt double %9, 1.000000e-05
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !5

do.end:                                           ; preds = %do.cond
  %10 = load double, ptr %current, align 8
  ret double %10
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call double @newton_raphson(double noundef 1.000000e+01)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %call)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
