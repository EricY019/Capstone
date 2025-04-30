; ModuleID = './code/093-11974bilinear-interpolation.c'
source_filename = "./code/093-11974bilinear-interpolation.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [26 x i8] c"[%.2f,%.2f,%.2f,%.2f] %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define double @lerp(double noundef %t, double noundef %a, double noundef %b) #0 {
entry:
  %t.addr = alloca double, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %t, ptr %t.addr, align 8
  store double %a, ptr %a.addr, align 8
  store double %b, ptr %b.addr, align 8
  %0 = load double, ptr %a.addr, align 8
  %1 = load double, ptr %b.addr, align 8
  %2 = load double, ptr %a.addr, align 8
  %sub = fsub double %1, %2
  %3 = load double, ptr %t.addr, align 8
  %4 = call double @llvm.fmuladd.f64(double %sub, double %3, double %0)
  ret double %4
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define double @blerp(double noundef %c00, double noundef %c10, double noundef %c01, double noundef %c11, double noundef %tx, double noundef %ty) #0 {
entry:
  %c00.addr = alloca double, align 8
  %c10.addr = alloca double, align 8
  %c01.addr = alloca double, align 8
  %c11.addr = alloca double, align 8
  %tx.addr = alloca double, align 8
  %ty.addr = alloca double, align 8
  store double %c00, ptr %c00.addr, align 8
  store double %c10, ptr %c10.addr, align 8
  store double %c01, ptr %c01.addr, align 8
  store double %c11, ptr %c11.addr, align 8
  store double %tx, ptr %tx.addr, align 8
  store double %ty, ptr %ty.addr, align 8
  %0 = load double, ptr %c00.addr, align 8
  %1 = load double, ptr %c10.addr, align 8
  %2 = load double, ptr %tx.addr, align 8
  %call = call double @lerp(double noundef %0, double noundef %1, double noundef %2)
  %3 = load double, ptr %c01.addr, align 8
  %4 = load double, ptr %c11.addr, align 8
  %5 = load double, ptr %tx.addr, align 8
  %call1 = call double @lerp(double noundef %3, double noundef %4, double noundef %5)
  %6 = load double, ptr %ty.addr, align 8
  %call2 = call double @lerp(double noundef %call, double noundef %call1, double noundef %6)
  ret double %call2
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca double, align 8
  %j = alloca double, align 8
  %k = alloca double, align 8
  %l = alloca double, align 8
  %s = alloca double, align 8
  %tx = alloca double, align 8
  %ty = alloca double, align 8
  store i32 0, ptr %retval, align 4
  store double 5.000000e-02, ptr %s, align 8
  store double 1.000000e+00, ptr %ty, align 8
  store double 1.000000e+00, ptr %tx, align 8
  store double 0.000000e+00, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load double, ptr %i, align 8
  %cmp = fcmp ole double %0, 1.000000e+00
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, ptr %j, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.body
  %1 = load double, ptr %j, align 8
  %cmp2 = fcmp ole double %1, 1.000000e+00
  br i1 %cmp2, label %for.body3, label %for.end16

for.body3:                                        ; preds = %for.cond1
  store double 0.000000e+00, ptr %k, align 8
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc11, %for.body3
  %2 = load double, ptr %k, align 8
  %cmp5 = fcmp ole double %2, 1.000000e+00
  br i1 %cmp5, label %for.body6, label %for.end13

for.body6:                                        ; preds = %for.cond4
  store double 0.000000e+00, ptr %l, align 8
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %3 = load double, ptr %l, align 8
  %cmp8 = fcmp ole double %3, 1.000000e+00
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %4 = load double, ptr %i, align 8
  %5 = load double, ptr %j, align 8
  %6 = load double, ptr %k, align 8
  %7 = load double, ptr %l, align 8
  %8 = load double, ptr %i, align 8
  %9 = load double, ptr %j, align 8
  %10 = load double, ptr %k, align 8
  %11 = load double, ptr %l, align 8
  %12 = load double, ptr %tx, align 8
  %13 = load double, ptr %ty, align 8
  %call = call double @blerp(double noundef %8, double noundef %9, double noundef %10, double noundef %11, double noundef %12, double noundef %13)
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %14 = load double, ptr %s, align 8
  %15 = load double, ptr %l, align 8
  %add = fadd double %15, %14
  store double %add, ptr %l, align 8
  br label %for.cond7, !llvm.loop !5

for.end:                                          ; preds = %for.cond7
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %16 = load double, ptr %s, align 8
  %17 = load double, ptr %k, align 8
  %add12 = fadd double %17, %16
  store double %add12, ptr %k, align 8
  br label %for.cond4, !llvm.loop !7

for.end13:                                        ; preds = %for.cond4
  br label %for.inc14

for.inc14:                                        ; preds = %for.end13
  %18 = load double, ptr %s, align 8
  %19 = load double, ptr %j, align 8
  %add15 = fadd double %19, %18
  store double %add15, ptr %j, align 8
  br label %for.cond1, !llvm.loop !8

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %20 = load double, ptr %s, align 8
  %21 = load double, ptr %i, align 8
  %add18 = fadd double %21, %20
  store double %add18, ptr %i, align 8
  br label %for.cond, !llvm.loop !9

for.end19:                                        ; preds = %for.cond
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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
