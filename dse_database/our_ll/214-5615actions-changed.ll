; ModuleID = 'code/214-5615actions-changed.c'
source_filename = "code/214-5615actions-changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @end(i32 %i) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @subr2(i32 %parm) #0 {
entry:
  %parm.addr = alloca i32, align 4
  %keeping = alloca i32, align 4
  %busy = alloca i32, align 4
  store i32 %parm, i32* %parm.addr, align 4
  %0 = load i32, i32* %parm.addr, align 4
  %1 = load i32, i32* %parm.addr, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, i32* %keeping, align 4
  %2 = load i32, i32* %keeping, align 4
  %3 = load i32, i32* %keeping, align 4
  %mul = mul nsw i32 %2, %3
  store i32 %mul, i32* %busy, align 4
  %4 = load i32, i32* %busy, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @subr(i32 %parm) #0 {
entry:
  %parm.addr = alloca i32, align 4
  %keeping = alloca i32, align 4
  %busy = alloca i32, align 4
  store i32 %parm, i32* %parm.addr, align 4
  %0 = load i32, i32* %parm.addr, align 4
  %1 = load i32, i32* %parm.addr, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, i32* %keeping, align 4
  %2 = load i32, i32* %keeping, align 4
  %3 = load i32, i32* %keeping, align 4
  %mul = mul nsw i32 %2, %3
  store i32 %mul, i32* %busy, align 4
  %4 = load i32, i32* %busy, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @subr(i32 1)
  %call1 = call i32 @end(i32 1)
  %call2 = call i32 @subr(i32 2)
  %call3 = call i32 @end(i32 2)
  %call4 = call i32 @subr(i32 3)
  %call5 = call i32 @end(i32 3)
  %call6 = call i32 @subr(i32 4)
  %call7 = call i32 @end(i32 4)
  %call8 = call i32 @subr(i32 5)
  %call9 = call i32 @subr2(i32 5)
  %call10 = call i32 @end(i32 5)
  %call11 = call i32 @subr(i32 6)
  %call12 = call i32 @subr2(i32 6)
  %call13 = call i32 @end(i32 6)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
