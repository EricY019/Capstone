; ModuleID = 'code/118-21689step-line.c'
source_filename = "code/118-21689step-line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 @f1(i32 4)
  store i32 %call, i32* %i, align 4
  %0 = load i32, i32* %i, align 4
  %call1 = call i32 @f1(i32 %0)
  store i32 %call1, i32* %i, align 4
  %1 = load i32, i32* %i, align 4
  call void @dummy(i32 0, i32 %1)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f1(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  call void @dummy(i32 1, i32 %0)
  %1 = load i32, i32* %i.addr, align 4
  %call = call i32 @f2(i32 %1)
  store i32 %call, i32* %i.addr, align 4
  %2 = load i32, i32* %i.addr, align 4
  call void @dummy(i32 2, i32 %2)
  %3 = load i32, i32* %i.addr, align 4
  %call1 = call i32 @f2(i32 %3)
  store i32 %call1, i32* %i.addr, align 4
  %4 = load i32, i32* %i.addr, align 4
  call void @dummy(i32 3, i32 %4)
  %5 = load i32, i32* %i.addr, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dummy(i32 %num, i32 %i) #0 {
entry:
  %num.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 %i, i32* %i.addr, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  call void @dummy(i32 4, i32 %0)
  %1 = load i32, i32* %i.addr, align 4
  store i32 %1, i32* %j, align 4
  %2 = load i32, i32* %i.addr, align 4
  call void @dummy(i32 5, i32 %2)
  %3 = load i32, i32* %j, align 4
  call void @dummy(i32 6, i32 %3)
  %4 = load i32, i32* %j, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, i32* %j, align 4
  %5 = load i32, i32* %i.addr, align 4
  call void @dummy(i32 7, i32 %5)
  %6 = load i32, i32* %j, align 4
  call void @dummy(i32 8, i32 %6)
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %i.addr, align 4
  %sub = sub nsw i32 %7, %8
  store i32 %sub, i32* %j, align 4
  %9 = load i32, i32* %i.addr, align 4
  call void @dummy(i32 9, i32 %9)
  %10 = load i32, i32* %j, align 4
  call void @dummy(i32 10, i32 %10)
  %11 = load i32, i32* %i.addr, align 4
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
