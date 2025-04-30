; ModuleID = 'code/041-17240keywords.c'
source_filename = "code/041-17240keywords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %x, align 4
  %call = call i32 @thread(i32 0)
  %0 = load i32, i32* %x, align 4
  %add = add nsw i32 %0, %call
  store i32 %add, i32* %x, align 4
  %1 = load i32, i32* %x, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread(i32 %thread) #0 {
entry:
  %thread.addr = alloca i32, align 4
  store i32 %thread, i32* %thread.addr, align 4
  %0 = load i32, i32* %thread.addr, align 4
  %call = call i32 @task(i32 %0)
  %add = add nsw i32 %call, 1
  ret i32 %add
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task(i32 %task) #0 {
entry:
  %task.addr = alloca i32, align 4
  store i32 %task, i32* %task.addr, align 4
  %0 = load i32, i32* %task.addr, align 4
  %sub = sub nsw i32 %0, 1
  ret i32 %sub
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
