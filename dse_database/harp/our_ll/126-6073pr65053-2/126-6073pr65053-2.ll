; ModuleID = 'code/126-6073pr65053-2.c'
source_filename = "code/126-6073pr65053-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global i32 0, align 4
@i = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %u = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = load i32, i32* @x, align 4
  call void asm sideeffect "", "=*imr,0,~{dirflag},~{fpsr},~{flags}"(i32* @x, i32 %0) #2, !srcloc !4
  %1 = load i32, i32* @x, align 4
  store i32 %1, i32* %n, align 4
  store i32 32, i32* %u, align 4
  %2 = load i32, i32* %n, align 4
  %cmp = icmp uge i32 %2, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %n, align 4
  %cmp1 = icmp ne i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load i32, i32* %n, align 4
  %add = add i32 %4, 32
  store i32 %add, i32* %u, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end3
  %5 = load i32, i32* %u, align 4
  %cmp4 = icmp ne i32 %5, 32
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %u, align 4
  call void asm sideeffect "", "imr,~{dirflag},~{fpsr},~{flags}"(i32 %6) #2, !srcloc !5
  store i32 32, i32* %u, align 4
  store i32 1, i32* @i, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* @i, align 4
  %tobool = icmp ne i32 %7, 0
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
!4 = !{i64 110}
!5 = !{i64 276}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
