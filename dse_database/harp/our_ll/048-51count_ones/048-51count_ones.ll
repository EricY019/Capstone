; ModuleID = 'code/048-51count_ones.c'
source_filename = "code/048-51count_ones.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"number of 1's in bit representation of %d: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @count_ones(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %ones = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %ones, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %n.addr, align 4
  %and = and i32 %1, 1
  %cmp1 = icmp eq i32 %and, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %2 = load i32, i32* %ones, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %ones, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %3 = load i32, i32* %n.addr, align 4
  %shr = ashr i32 %3, 1
  store i32 %shr, i32* %n.addr, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %ones, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @count_ones_fast(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %ones = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %ones, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %n.addr, align 4
  %2 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %2, 1
  %and = and i32 %1, %sub
  store i32 %and, i32* %n.addr, align 4
  %3 = load i32, i32* %ones, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %ones, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %ones, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 55, i32* %i, align 4
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %i, align 4
  %call = call i32 @count_ones(i32 %1)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %0, i32 %call)
  store i32 57, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %i, align 4
  %call2 = call i32 @count_ones_fast(i32 %3)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %call2)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
