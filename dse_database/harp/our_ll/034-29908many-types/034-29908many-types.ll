; ModuleID = 'code/034-29908many-types.c'
source_filename = "code/034-29908many-types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ggg = type { i64 }
%struct.c = type { i8, i8, i16, float, double, i64, i64 }

@one = internal global i32 0, align 4
@two = internal global i32 2, align 4
@foo = dso_local global %struct.ggg zeroinitializer, align 8
@boo = dso_local global %struct.c zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @foo1(i32 %foo1param) #0 {
entry:
  %foo1param.addr = alloca i32, align 4
  store i32 %foo1param, i32* %foo1param.addr, align 4
  %0 = load i32, i32* %foo1param.addr, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 (i32)* @foo2() #0 {
entry:
  ret i32 (i32)* @foo1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 (i32)* ()* @foo3() #0 {
entry:
  ret i32 (i32)* ()* @foo2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 (i32)* ()* ()* @foo4() #0 {
entry:
  ret i32 (i32)* ()* ()* @foo3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 (i32)* ()* ()* ()* @foo5() #0 {
entry:
  ret i32 (i32)* ()* ()* ()* @foo4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elip(i32 %a, ...) #0 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = load i32, i32* @one, align 4
  %1 = load i32, i32* @two, align 4
  %call = call i32 (i32)* ()* ()* ()* @foo5()
  %call1 = call i32 (i32)* ()* ()* %call()
  %call2 = call i32 (i32)* ()* %call1()
  %call3 = call i32 (i32)* %call2()
  %call4 = call i32 %call3(i32 90)
  %call5 = call i32 @putchar(i32 %call4)
  %call6 = call i32 @putchar(i32 97)
  ret i32 0
}

declare dso_local i32 @putchar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
