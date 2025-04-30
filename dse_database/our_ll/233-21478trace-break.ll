; ModuleID = 'code/233-21478trace-break.c'
source_filename = "code/233-21478trace-break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.compiler.used = appending global [1 x i8*] [i8* bitcast (void ()* @func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @func() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @marker()
  call void @end()
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @marker() #0 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, i32* %a, align 4
  %0 = load i32, i32* %a, align 4
  store i32 %0, i32* %b, align 4
  call void asm sideeffect "    .global set_point\0Aset_point:\0A    call func\0A", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !4
  call void asm sideeffect "    .global after_set_point\0Aafter_set_point:\0A    call func\0A", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end() #0 {
entry:
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = !{i64 1282, i64 2147500773, i64 1404}
!5 = !{i64 1458, i64 2147500825, i64 1592}
