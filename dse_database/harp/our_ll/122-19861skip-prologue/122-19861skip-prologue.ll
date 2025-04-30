; ModuleID = 'code/122-19861skip-prologue.c'
source_filename = "code/122-19861skip-prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.foo = type { [32 x i32] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %f = alloca %struct.foo, align 8
  store i32 0, i32* %retval, align 4
  %call = call i32 @f1()
  %call1 = call double @f2(i32 0, i64 0, double 1.000000e-01, %struct.foo* byval(%struct.foo) align 8 %f)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f1() #0 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal double @f2(i32 %a, i64 %b, double %c, %struct.foo* byval(%struct.foo) align 8 %f) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i64, align 8
  %c.addr = alloca double, align 8
  store i32 %a, i32* %a.addr, align 4
  store i64 %b, i64* %b.addr, align 8
  store double %c, double* %c.addr, align 8
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i64, i64* %b.addr, align 8
  %conv = trunc i64 %1 to i32
  %add = add nsw i32 %0, %conv
  %conv1 = sitofp i32 %add to double
  %2 = load double, double* %c.addr, align 8
  %add2 = fadd double %conv1, %2
  %conv3 = fptosi double %add2 to i32
  %a4 = getelementptr inbounds %struct.foo, %struct.foo* %f, i32 0, i32 0
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* %a4, i64 0, i64 0
  store i32 %conv3, i32* %arrayidx, align 8
  %3 = load double, double* %c.addr, align 8
  %add5 = fadd double %3, 2.000000e-01
  ret double %add5
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
