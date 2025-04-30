; ModuleID = 'code/126-13497problem14.c'
source_filename = "code/126-13497problem14.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @collatz(i64 %n, i32 %length) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i64, align 8
  %length.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = load i64, i64* %n.addr, align 8
  %cmp = icmp eq i64 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %length.addr, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %length.addr, align 4
  store i32 %inc, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %n.addr, align 8
  %rem = srem i64 %2, 2
  %cmp1 = icmp eq i64 %rem, 0
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  %3 = load i64, i64* %n.addr, align 8
  %div = sdiv i64 %3, 2
  %4 = load i32, i32* %length.addr, align 4
  %inc3 = add nsw i32 %4, 1
  store i32 %inc3, i32* %length.addr, align 4
  %call = call i32 @collatz(i64 %div, i32 %inc3)
  store i32 %call, i32* %retval, align 4
  br label %return

if.else4:                                         ; preds = %if.else
  %5 = load i64, i64* %n.addr, align 8
  %mul = mul nsw i64 3, %5
  %add = add nsw i64 %mul, 1
  %6 = load i32, i32* %length.addr, align 4
  %inc5 = add nsw i32 %6, 1
  store i32 %inc5, i32* %length.addr, align 4
  %call6 = call i32 @collatz(i64 %add, i32 %inc5)
  store i32 %call6, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else4, %if.then2, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %resultnum = alloca i64, align 8
  %current = alloca i32, align 4
  %longest = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i64 0, i64* %resultnum, align 8
  store i32 0, i32* %longest, align 4
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp slt i64 %0, 1000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %i, align 8
  %call = call i32 @collatz(i64 %1, i32 0)
  store i32 %call, i32* %current, align 4
  %2 = load i32, i32* %current, align 4
  %3 = load i32, i32* %longest, align 4
  %cmp1 = icmp sgt i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %current, align 4
  store i32 %4, i32* %longest, align 4
  %5 = load i64, i64* %i, align 8
  store i64 %5, i64* %resultnum, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i64, i64* %i, align 8
  %inc = add nsw i64 %6, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %7 = load i64, i64* %resultnum, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %7)
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
