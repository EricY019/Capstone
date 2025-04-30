; ModuleID = './code/187-13269exercise16.c'
source_filename = "./code/187-13269exercise16.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [28 x i8] c"          Daphne   Deirdre\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Year%2d : $%-8.2f $%-8.2f\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Deirdre's investment beyond Daphne's investment takes %d years!\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"Daphne will have $%.2f, and Deirdre will have $%.2f since then!\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %money = alloca double, align 8
  %daphne = alloca double, align 8
  %deirdre = alloca double, align 8
  %years = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %years, align 4
  store double 1.000000e+02, ptr %money, align 8
  %0 = load double, ptr %money, align 8
  store double %0, ptr %daphne, align 8
  %1 = load double, ptr %money, align 8
  store double %1, ptr %deirdre, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load double, ptr %deirdre, align 8
  %3 = load double, ptr %daphne, align 8
  %cmp = fcmp ole double %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load double, ptr %money, align 8
  %5 = load double, ptr %daphne, align 8
  %6 = call double @llvm.fmuladd.f64(double %4, double 1.000000e-01, double %5)
  store double %6, ptr %daphne, align 8
  %7 = load double, ptr %deirdre, align 8
  %mul = fmul double %7, 1.050000e+00
  store double %mul, ptr %deirdre, align 8
  %8 = load i32, ptr %years, align 4
  %9 = load double, ptr %daphne, align 8
  %10 = load double, ptr %deirdre, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %8, double noundef %9, double noundef %10)
  %11 = load i32, ptr %years, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %years, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %12 = load i32, ptr %years, align 4
  %sub = sub nsw i32 %12, 1
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %sub)
  %13 = load double, ptr %daphne, align 8
  %14 = load double, ptr %deirdre, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %13, double noundef %14)
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

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
