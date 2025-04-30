; ModuleID = './code/278-16145zad4.c'
source_filename = "./code/278-16145zad4.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [8 x i8] c"Float:\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%i. %f >> %e\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Double:\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Long double:\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"%i. %Lf >> %Le\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca float, align 4
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  %l = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store float 1.000000e+00, ptr %x, align 4
  store double 1.000000e+00, ptr %x1, align 8
  store double 1.000000e+00, ptr %x2, align 8
  store i32 1, ptr %l, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load float, ptr %x, align 4
  %conv = fpext float %0 to double
  %add = fadd double 1.000000e+00, %conv
  %cmp = fcmp ogt double %add, 1.000000e+00
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load float, ptr %x, align 4
  %conv2 = fpext float %1 to double
  %div = fdiv double %conv2, 2.000000e+00
  %conv3 = fptrunc double %div to float
  store float %conv3, ptr %x, align 4
  %2 = load i32, ptr %l, align 4
  %3 = load float, ptr %x, align 4
  %conv4 = fpext float %3 to double
  %4 = load float, ptr %x, align 4
  %conv5 = fpext float %4 to double
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %2, double noundef %conv4, double noundef %conv5)
  %5 = load i32, ptr %l, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %l, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %l, align 4
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %while.cond8

while.cond8:                                      ; preds = %while.body12, %while.end
  %6 = load double, ptr %x1, align 8
  %add9 = fadd double 1.000000e+00, %6
  %cmp10 = fcmp ogt double %add9, 1.000000e+00
  br i1 %cmp10, label %while.body12, label %while.end16

while.body12:                                     ; preds = %while.cond8
  %7 = load double, ptr %x1, align 8
  %div13 = fdiv double %7, 2.000000e+00
  store double %div13, ptr %x1, align 8
  %8 = load i32, ptr %l, align 4
  %9 = load double, ptr %x1, align 8
  %10 = load double, ptr %x1, align 8
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %8, double noundef %9, double noundef %10)
  %11 = load i32, ptr %l, align 4
  %inc15 = add nsw i32 %11, 1
  store i32 %inc15, ptr %l, align 4
  br label %while.cond8, !llvm.loop !7

while.end16:                                      ; preds = %while.cond8
  store i32 1, ptr %l, align 4
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %while.cond18

while.cond18:                                     ; preds = %while.body22, %while.end16
  %12 = load double, ptr %x2, align 8
  %add19 = fadd double 1.000000e+00, %12
  %cmp20 = fcmp ogt double %add19, 1.000000e+00
  br i1 %cmp20, label %while.body22, label %while.end26

while.body22:                                     ; preds = %while.cond18
  %13 = load double, ptr %x2, align 8
  %div23 = fdiv double %13, 2.000000e+00
  store double %div23, ptr %x2, align 8
  %14 = load i32, ptr %l, align 4
  %15 = load double, ptr %x2, align 8
  %16 = load double, ptr %x2, align 8
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %14, double noundef %15, double noundef %16)
  %17 = load i32, ptr %l, align 4
  %inc25 = add nsw i32 %17, 1
  store i32 %inc25, ptr %l, align 4
  br label %while.cond18, !llvm.loop !8

while.end26:                                      ; preds = %while.cond18
  ret i32 0
}

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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
