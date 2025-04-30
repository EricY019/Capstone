; ModuleID = 'code/059-8609data-loc.c'
source_filename = "code/059-8609data-loc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fat_pointer = type { i32*, i32* }

@table_1_data = dso_local global [3 x i32] [i32 1, i32 2, i32 3], align 4
@table_1_bounds = dso_local global [2 x i32] [i32 1, i32 3], align 4
@table_1 = dso_local global %struct.fat_pointer { i32* getelementptr inbounds ([3 x i32], [3 x i32]* @table_1_data, i32 0, i32 0), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @table_1_bounds, i32 0, i32 0) }, align 8
@table_2_data = dso_local global [5 x i32] [i32 5, i32 8, i32 13, i32 21, i32 34], align 16
@table_2_bounds = dso_local global [2 x i32] [i32 2, i32 6], align 4
@table_2 = dso_local global %struct.fat_pointer { i32* getelementptr inbounds ([5 x i32], [5 x i32]* @table_2_data, i32 0, i32 0), i32* getelementptr inbounds ([2 x i32], [2 x i32]* @table_2_bounds, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = load i32*, i32** getelementptr inbounds (%struct.fat_pointer, %struct.fat_pointer* @table_1, i32 0, i32 1), align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 1
  store i32 2, i32* %arrayidx, align 4
  %1 = load i32*, i32** getelementptr inbounds (%struct.fat_pointer, %struct.fat_pointer* @table_2, i32 0, i32 1), align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %1, i64 1
  store i32 3, i32* %arrayidx1, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
