; ModuleID = 'code/195-2756vrp90.c'
source_filename = "code/195-2756vrp90.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @foo(i32 %n, i32 %r) #0 {
entry:
  %n.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  %1 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp ult i32 %1, 10
  br i1 %cmp1, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.then
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !5
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then2
  %2 = load i32, i32* %n.addr, align 4
  %dec = add i32 %2, -1
  store i32 %dec, i32* %n.addr, align 4
  %3 = load i32, i32* %r.addr, align 4
  %mul = mul nsw i32 %3, 2
  store i32 %mul, i32* %r.addr, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp3 = icmp uge i32 %4, 9
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %do.body
  call void @link_error()
  br label %if.end

if.end:                                           ; preds = %if.then4, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %5 = load i32, i32* %n.addr, align 4
  %cmp5 = icmp ugt i32 %5, 0
  br i1 %cmp5, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %entry
  %6 = load i32, i32* %r.addr, align 4
  %7 = load i32, i32* %n.addr, align 4
  %add = add i32 %6, %7
  ret i32 %add
}

declare dso_local void @link_error() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @foo(i32 7, i32 2)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = !{i64 269}
!5 = !{i64 303}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
