; ModuleID = 'code/335-22216structs3.c'
source_filename = "code/335-22216structs3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Two = type { %struct.One, i32, i32 }
%struct.One = type { i32 }

@two = dso_local global %struct.Two { %struct.One { i32 1 }, i32 2, i32 3 }, align 4
@onep = dso_local global %struct.One* getelementptr inbounds (%struct.Two, %struct.Two* @two, i32 0, i32 0), align 8
@twop = dso_local global %struct.Two* @two, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = load %struct.Two*, %struct.Two** @twop, align 8
  %y = getelementptr inbounds %struct.Two, %struct.Two* %0, i32 0, i32 2
  %1 = load i32, i32* %y, align 4
  %2 = load %struct.One*, %struct.One** @onep, align 8
  %x = getelementptr inbounds %struct.One, %struct.One* %2, i32 0, i32 0
  store i32 %1, i32* %x, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
