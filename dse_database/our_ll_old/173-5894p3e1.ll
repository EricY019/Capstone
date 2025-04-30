; ModuleID = './code/173-5894p3e1.c'
source_filename = "./code/173-5894p3e1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [33 x i8] c"%2d %+.8le %+.8le %+.8le %+.8le\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  %x3 = alloca double, align 8
  %z = alloca double, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store double 1.000000e+00, ptr %x1, align 8
  %0 = call double @llvm.sqrt.f64(double 3.000000e+00)
  %sub = fsub double 1.000000e+00, %0
  store double %sub, ptr %x2, align 8
  store double 0.000000e+00, ptr %x3, align 8
  %1 = call double @llvm.sqrt.f64(double 3.000000e+00)
  %sub1 = fsub double 1.000000e+00, %1
  store double %sub1, ptr %z, align 8
  store i32 0, ptr %i, align 4
  store i32 3, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %2, 50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load double, ptr %x1, align 8
  %4 = load double, ptr %x2, align 8
  %add = fadd double %3, %4
  %mul = fmul double 2.000000e+00, %add
  store double %mul, ptr %x3, align 8
  %5 = call double @llvm.sqrt.f64(double 3.000000e+00)
  %sub2 = fsub double 1.000000e+00, %5
  %6 = load double, ptr %z, align 8
  %mul3 = fmul double %6, %sub2
  store double %mul3, ptr %z, align 8
  %7 = load i32, ptr %i, align 4
  %8 = load double, ptr %z, align 8
  %9 = load double, ptr %x3, align 8
  %10 = load double, ptr %x3, align 8
  %11 = load double, ptr %z, align 8
  %sub4 = fsub double %10, %11
  %12 = call double @llvm.fabs.f64(double %sub4)
  %13 = load double, ptr %x3, align 8
  %14 = load double, ptr %z, align 8
  %sub5 = fsub double %13, %14
  %15 = load double, ptr %x3, align 8
  %div = fdiv double %sub5, %15
  %16 = call double @llvm.fabs.f64(double %div)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %7, double noundef %8, double noundef %9, double noundef %12, double noundef %16)
  %17 = load double, ptr %x2, align 8
  store double %17, ptr %x1, align 8
  %18 = load double, ptr %x3, align 8
  store double %18, ptr %x2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, ptr %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

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
