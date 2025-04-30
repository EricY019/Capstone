; ModuleID = 'code/188-4550sss-bp-on-user-bp-2.c'
source_filename = "code/188-4550sss-bp-on-user-bp-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @test()
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test() #0 {
entry:
  br label %label

label:                                            ; preds = %entry
  call void asm sideeffect "  nop", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !4
  br label %label2

label2:                                           ; preds = %label
  call void asm sideeffect "  nop", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !5
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
!4 = !{i64 796}
!5 = !{i64 819}
