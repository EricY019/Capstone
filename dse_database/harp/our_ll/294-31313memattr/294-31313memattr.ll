; ModuleID = 'code/294-31313memattr.c'
source_filename = "code/294-31313memattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mem1 = dso_local global <{ i32, i32, i32, i32, i32, [59 x i32] }> <{ i32 111, i32 222, i32 333, i32 444, i32 555, [59 x i32] zeroinitializer }>, align 16
@mem2 = dso_local global [64 x i32] zeroinitializer, align 16
@mem3 = dso_local global [64 x i32] zeroinitializer, align 16
@mem4 = dso_local global [64 x i32] zeroinitializer, align 16
@mem5 = dso_local global [64 x i32] zeroinitializer, align 16

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
