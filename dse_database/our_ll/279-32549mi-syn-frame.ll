; ModuleID = 'code/279-32549mi-syn-frame.c'
source_filename = "code/279-32549mi-syn-frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @foo()
  call void @have_a_very_merry_interrupt()
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @have_a_very_merry_interrupt() #0 {
entry:
  %call = call void (i32)* @signal(i32 14, void (i32)* @handler) #3
  %call1 = call i32 @alarm(i32 1) #3
  %call2 = call i32 @sleep(i32 2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bar() #0 {
entry:
  store i8 0, i8* null, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handler(i32 %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  store i32 %sig, i32* %sig.addr, align 4
  %0 = load i32, i32* %sig.addr, align 4
  call void @subroutine(i32 %0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @subroutine(i32 %in) #0 {
entry:
  %in.addr = alloca i32, align 4
  %count = alloca i32, align 4
  store i32 %in, i32* %in.addr, align 4
  %0 = load i32, i32* %in.addr, align 4
  store i32 %0, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %count, align 4
  %cmp = icmp slt i32 %1, 100
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %count, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %count, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32, void (i32)*) #1

; Function Attrs: nounwind
declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @sleep(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
