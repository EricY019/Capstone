; ModuleID = 'code/239-30806pr65053-1.c'
source_filename = "code/239-30806pr65053-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @foo() #0 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %u = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 -1, i32* %u, align 4
  %0 = load i32, i32* %u, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %call = call i32 @foo()
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %cmp1 = icmp ugt i32 %1, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %2 = load i32, i32* %n, align 4
  %sub = sub i32 %2, 1
  store i32 %sub, i32* %u, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end3
  %3 = load i32, i32* %u, align 4
  %cmp4 = icmp ne i32 %3, -1
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %u, align 4
  call void asm "", "=*imr,0,~{dirflag},~{fpsr},~{flags}"(i32* %u, i32 %4) #2, !srcloc !4
  store i32 -1, i32* %u, align 4
  store i32 1, i32* @i, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* @i, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then5, label %if.end6

if.then5:                                         ; preds = %while.end
  call void @abort() #3
  unreachable

if.end6:                                          ; preds = %while.end
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = !{i64 301}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
