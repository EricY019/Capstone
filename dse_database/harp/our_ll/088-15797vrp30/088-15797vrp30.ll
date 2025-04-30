; ModuleID = 'code/088-15797vrp30.c'
source_filename = "code/088-15797vrp30.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tst2(i32 %x, i32 %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp sgt i32 %0, 5555
  br i1 %cmp, label %land.lhs.true, label %if.else12

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %y.addr, align 4
  %cmp1 = icmp slt i32 %1, 6666
  br i1 %cmp1, label %if.then, label %if.else12

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %x.addr, align 4
  %cmp2 = icmp sgt i32 %2, 5555
  br i1 %cmp2, label %if.then3, label %if.else6

if.then3:                                         ; preds = %if.then
  %3 = load i32, i32* %y.addr, align 4
  %cmp4 = icmp slt i32 %3, 6666
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then3
  store i32 1111, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then3
  %call = call i32 @link_error(i32 2222)
  store i32 %call, i32* %retval, align 4
  br label %return

if.else6:                                         ; preds = %if.then
  %4 = load i32, i32* %y.addr, align 4
  %cmp7 = icmp slt i32 %4, 6666
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else6
  %call9 = call i32 @link_error(i32 3333)
  store i32 %call9, i32* %retval, align 4
  br label %return

if.else10:                                        ; preds = %if.else6
  %call11 = call i32 @link_error(i32 4444)
  store i32 %call11, i32* %retval, align 4
  br label %return

if.else12:                                        ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else12, %if.else10, %if.then8, %if.else, %if.then5
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

declare dso_local i32 @link_error(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
