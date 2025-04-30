; ModuleID = 'code/093-11974bilinear-interpolation.c'
source_filename = "code/093-11974bilinear-interpolation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"[%.2f,%.2f,%.2f,%.2f] %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @lerp(double %t, double %a, double %b) #0 {
entry:
  %t.addr = alloca double, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %t, double* %t.addr, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %a.addr, align 8
  %1 = load double, double* %b.addr, align 8
  %2 = load double, double* %a.addr, align 8
  %sub = fsub double %1, %2
  %3 = load double, double* %t.addr, align 8
  %mul = fmul double %sub, %3
  %add = fadd double %0, %mul
  ret double %add
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @blerp(double %c00, double %c10, double %c01, double %c11, double %tx, double %ty) #0 {
entry:
  %c00.addr = alloca double, align 8
  %c10.addr = alloca double, align 8
  %c01.addr = alloca double, align 8
  %c11.addr = alloca double, align 8
  %tx.addr = alloca double, align 8
  %ty.addr = alloca double, align 8
  store double %c00, double* %c00.addr, align 8
  store double %c10, double* %c10.addr, align 8
  store double %c01, double* %c01.addr, align 8
  store double %c11, double* %c11.addr, align 8
  store double %tx, double* %tx.addr, align 8
  store double %ty, double* %ty.addr, align 8
  %0 = load double, double* %c00.addr, align 8
  %1 = load double, double* %c10.addr, align 8
  %2 = load double, double* %tx.addr, align 8
  %call = call double @lerp(double %0, double %1, double %2)
  %3 = load double, double* %c01.addr, align 8
  %4 = load double, double* %c11.addr, align 8
  %5 = load double, double* %tx.addr, align 8
  %call1 = call double @lerp(double %3, double %4, double %5)
  %6 = load double, double* %ty.addr, align 8
  %call2 = call double @lerp(double %call, double %call1, double %6)
  ret double %call2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca double, align 8
  %j = alloca double, align 8
  %k = alloca double, align 8
  %l = alloca double, align 8
  %s = alloca double, align 8
  %tx = alloca double, align 8
  %ty = alloca double, align 8
  store i32 0, i32* %retval, align 4
  store double 5.000000e-02, double* %s, align 8
  store double 1.000000e+00, double* %ty, align 8
  store double 1.000000e+00, double* %tx, align 8
  store double 0.000000e+00, double* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load double, double* %i, align 8
  %cmp = fcmp ole double %0, 1.000000e+00
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %j, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.body
  %1 = load double, double* %j, align 8
  %cmp2 = fcmp ole double %1, 1.000000e+00
  br i1 %cmp2, label %for.body3, label %for.end16

for.body3:                                        ; preds = %for.cond1
  store double 0.000000e+00, double* %k, align 8
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc11, %for.body3
  %2 = load double, double* %k, align 8
  %cmp5 = fcmp ole double %2, 1.000000e+00
  br i1 %cmp5, label %for.body6, label %for.end13

for.body6:                                        ; preds = %for.cond4
  store double 0.000000e+00, double* %l, align 8
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %3 = load double, double* %l, align 8
  %cmp8 = fcmp ole double %3, 1.000000e+00
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %4 = load double, double* %i, align 8
  %5 = load double, double* %j, align 8
  %6 = load double, double* %k, align 8
  %7 = load double, double* %l, align 8
  %8 = load double, double* %i, align 8
  %9 = load double, double* %j, align 8
  %10 = load double, double* %k, align 8
  %11 = load double, double* %l, align 8
  %12 = load double, double* %tx, align 8
  %13 = load double, double* %ty, align 8
  %call = call double @blerp(double %8, double %9, double %10, double %11, double %12, double %13)
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), double %4, double %5, double %6, double %7, double %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %14 = load double, double* %s, align 8
  %15 = load double, double* %l, align 8
  %add = fadd double %15, %14
  store double %add, double* %l, align 8
  br label %for.cond7, !llvm.loop !4

for.end:                                          ; preds = %for.cond7
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %16 = load double, double* %s, align 8
  %17 = load double, double* %k, align 8
  %add12 = fadd double %17, %16
  store double %add12, double* %k, align 8
  br label %for.cond4, !llvm.loop !6

for.end13:                                        ; preds = %for.cond4
  br label %for.inc14

for.inc14:                                        ; preds = %for.end13
  %18 = load double, double* %s, align 8
  %19 = load double, double* %j, align 8
  %add15 = fadd double %19, %18
  store double %add15, double* %j, align 8
  br label %for.cond1, !llvm.loop !7

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %20 = load double, double* %s, align 8
  %21 = load double, double* %i, align 8
  %add18 = fadd double %21, %20
  store double %add18, double* %i, align 8
  br label %for.cond, !llvm.loop !8

for.end19:                                        ; preds = %for.cond
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
