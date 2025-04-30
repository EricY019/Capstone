; ModuleID = 'code/296-27161dw2-bad-mips-linkage-name.c'
source_filename = "code/296-27161dw2-bad-mips-linkage-name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void asm sideeffect "main_label: .globl main_label", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !4
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f(i8* %x) #0 {
entry:
  %x.addr = alloca i8*, align 8
  store i8* %x, i8** %x.addr, align 8
  call void asm sideeffect "f_label: .globl f_label", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !5
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g(i8* %x) #0 {
entry:
  %x.addr = alloca i8*, align 8
  store i8* %x, i8** %x.addr, align 8
  call void asm sideeffect "g_label: .globl g_label", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !6
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = !{i64 810}
!5 = !{i64 961}
!6 = !{i64 1106}
