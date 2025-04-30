; ModuleID = 'code/359-2210420000717-4.c'
source_filename = "code/359-2210420000717-4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, [4 x %struct.slot] }
%struct.slot = type { [6 x i32] }

@s = dso_local global %struct.anon zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x() #0 {
entry:
  %toggle = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 0, i32* %toggle, align 4
  %0 = load i32, i32* %toggle, align 4
  %tobool = icmp ne i32 %0, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %idxprom = sext i32 %lnot.ext to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* getelementptr inbounds (%struct.anon, %struct.anon* @s, i32 0, i32 1, i64 0, i32 0), i64 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %r, align 4
  %2 = load i32, i32* %r, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
