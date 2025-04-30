; ModuleID = 'code/182-1593430.c'
source_filename = "code/182-1593430.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  %nn = alloca i32, align 4
  %s = alloca i32, align 4
  %ss = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %ss, align 4
  store i32 10, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %0, 354294
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %s, align 4
  %1 = load i32, i32* %n, align 4
  store i32 %1, i32* %nn, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %2 = load i32, i32* %nn, align 4
  %cmp1 = icmp ne i32 %2, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %nn, align 4
  %rem = srem i32 %3, 10
  %4 = load i32, i32* %nn, align 4
  %rem2 = srem i32 %4, 10
  %mul = mul nsw i32 %rem, %rem2
  %5 = load i32, i32* %nn, align 4
  %rem3 = srem i32 %5, 10
  %mul4 = mul nsw i32 %mul, %rem3
  %6 = load i32, i32* %nn, align 4
  %rem5 = srem i32 %6, 10
  %mul6 = mul nsw i32 %mul4, %rem5
  %7 = load i32, i32* %nn, align 4
  %rem7 = srem i32 %7, 10
  %mul8 = mul nsw i32 %mul6, %rem7
  %8 = load i32, i32* %s, align 4
  %add = add nsw i32 %8, %mul8
  store i32 %add, i32* %s, align 4
  %9 = load i32, i32* %nn, align 4
  %div = sdiv i32 %9, 10
  store i32 %div, i32* %nn, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %10 = load i32, i32* %n, align 4
  %11 = load i32, i32* %s, align 4
  %cmp9 = icmp eq i32 %10, %11
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %12 = load i32, i32* %n, align 4
  %13 = load i32, i32* %ss, align 4
  %add10 = add nsw i32 %13, %12
  store i32 %add10, i32* %ss, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %n, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %ss, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %15)
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
