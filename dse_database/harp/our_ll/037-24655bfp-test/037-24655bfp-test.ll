; ModuleID = 'code/037-24655bfp-test.c'
source_filename = "code/037-24655bfp-test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b32 = dso_local global float 0.000000e+00, align 4
@b64 = dso_local global double 0.000000e+00, align 8
@b128 = dso_local global x86_fp80 0xK00000000000000000000, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store float 1.500000e+00, float* @b32, align 4
  store double 2.250000e+00, double* @b64, align 8
  store x86_fp80 0xK4000D800000000000000, x86_fp80* @b128, align 16
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
