; ModuleID = 'code/091-4113mi-var-list-children-invalid-grandchild.c'
source_filename = "code/091-4113mi-var-list-children-invalid-grandchild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inner = type { i32 }
%struct.outer = type { %struct.inner* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %inner = alloca %struct.inner, align 4
  %outer = alloca %struct.outer, align 8
  %p_outer = alloca %struct.outer*, align 8
  store i32 0, i32* %retval, align 4
  %a = getelementptr inbounds %struct.inner, %struct.inner* %inner, i32 0, i32 0
  store i32 42, i32* %a, align 4
  %inner1 = getelementptr inbounds %struct.outer, %struct.outer* %outer, i32 0, i32 0
  store %struct.inner* %inner, %struct.inner** %inner1, align 8
  store %struct.outer* null, %struct.outer** %p_outer, align 8
  store %struct.outer* %outer, %struct.outer** %p_outer, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
