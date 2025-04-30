; ModuleID = 'code/191-33601amd64-entry-value-inline.c'
source_filename = "code/191-33601amd64-entry-value-inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fn3(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %call = call i32 @fn2(i32 %0, i32 %1)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fn2(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %y.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4
  call void @fn1(i32 %1)
  %2 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 -2, %2
  store i32 %add, i32* %y.addr, align 4
  %3 = load i32, i32* %y.addr, align 4
  %4 = load i32, i32* %y.addr, align 4
  %mul = mul nsw i32 %3, %4
  %5 = load i32, i32* %y.addr, align 4
  %mul1 = mul nsw i32 %mul, %5
  %6 = load i32, i32* %y.addr, align 4
  %add2 = add nsw i32 %mul1, %6
  store i32 %add2, i32* %y.addr, align 4
  %7 = load i32, i32* %x.addr, align 4
  %8 = load i32, i32* %y.addr, align 4
  %add3 = add nsw i32 %7, %8
  call void @fn1(i32 %add3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %x.addr, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @fn3(i32 6, i32 25)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fn1(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load volatile i32, i32* @v, align 4
  %inc = add nsw i32 %0, 1
  store volatile i32 %inc, i32* @v, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
