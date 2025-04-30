; ModuleID = 'code/204-16513pr81571.c'
source_filename = "code/204-16513pr81571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @fn1(i32 %p1, i32 %p2) #0 {
entry:
  %p1.addr = alloca i32, align 4
  %p2.addr = alloca i32, align 4
  store i32 %p1, i32* %p1.addr, align 4
  store i32 %p2, i32* %p2.addr, align 4
  %0 = load i32, i32* %p1.addr, align 4
  %conv = trunc i32 %0 to i16
  ret i16 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fn2(i32 %p1) #0 {
entry:
  %retval = alloca i32, align 4
  %p1.addr = alloca i32, align 4
  store i32 %p1, i32* %p1.addr, align 4
  %0 = load i32, i32* %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* @c, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* @a, align 4
  %call = call signext i16 @fn1(i32 1, i32 %1)
  %conv = sext i16 %call to i32
  %2 = load i32, i32* @d, align 4
  %3 = load i32, i32* @b, align 4
  %or = or i32 %3, %2
  store i32 %or, i32* @b, align 4
  %call1 = call i32 @fn2(i32 %or)
  %or2 = or i32 %conv, %call1
  %4 = load i32, i32* @a, align 4
  %or3 = or i32 %4, %or2
  store i32 %or3, i32* @a, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* @c, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @c, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
