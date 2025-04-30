; ModuleID = 'code/204-173128-Operators-other-plus-calls-types.c'
source_filename = "code/204-173128-Operators-other-plus-calls-types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i32, [42 x i32] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @initval(%struct.test* byval(%struct.test) align 8 %t) #0 {
entry:
  %value = getelementptr inbounds %struct.test, %struct.test* %t, i32 0, i32 0
  %0 = load i32, i32* %value, align 8
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @retval(%struct.test* %t_ptr) #0 {
entry:
  %t_ptr.addr = alloca %struct.test*, align 8
  store %struct.test* %t_ptr, %struct.test** %t_ptr.addr, align 8
  %0 = load %struct.test*, %struct.test** %t_ptr.addr, align 8
  %value = getelementptr inbounds %struct.test, %struct.test* %0, i32 0, i32 0
  %1 = load i32, i32* %value, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %t = alloca %struct.test, align 4
  %t_ptr = alloca %struct.test*, align 8
  store i32 0, i32* %retval, align 4
  store %struct.test* %t, %struct.test** %t_ptr, align 8
  %value = getelementptr inbounds %struct.test, %struct.test* %t, i32 0, i32 0
  store i32 0, i32* %value, align 4
  %0 = load %struct.test*, %struct.test** %t_ptr, align 8
  %array = getelementptr inbounds %struct.test, %struct.test* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [42 x i32], [42 x i32]* %array, i64 0, i64 0
  store i32 89, i32* %arrayidx, align 4
  %call = call i32 @retval(%struct.test* %t)
  %1 = load %struct.test*, %struct.test** %t_ptr, align 8
  %array1 = getelementptr inbounds %struct.test, %struct.test* %1, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [42 x i32], [42 x i32]* %array1, i64 0, i64 1
  store i32 %call, i32* %arrayidx2, align 4
  %2 = load %struct.test*, %struct.test** %t_ptr, align 8
  %call3 = call i32 @retval(%struct.test* %2)
  ret i32 %call3
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
