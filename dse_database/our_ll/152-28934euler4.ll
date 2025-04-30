; ModuleID = 'code/152-28934euler4.c'
source_filename = "code/152-28934euler4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [77 x i8] c"Calculating the largest palindrome of the product of two 3-digit numbers...\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"[+] Largest palindrome: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %i = alloca i32, align 4
  %bigpal = alloca i32, align 4
  %reverse = alloca i32, align 4
  %palcount = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %reverse, align 4
  store i32 0, i32* %palcount, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  store i32 100, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %0 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  store i32 100, i32* %y, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %y, align 4
  %cmp2 = icmp slt i32 %1, 1000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %x, align 4
  %3 = load i32, i32* %y, align 4
  %mul = mul nsw i32 %2, %3
  store i32 %mul, i32* %z, align 4
  %4 = load i32, i32* %z, align 4
  store i32 %4, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body3
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp ne i32 %5, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %reverse, align 4
  %mul5 = mul nsw i32 %6, 10
  store i32 %mul5, i32* %reverse, align 4
  %7 = load i32, i32* %reverse, align 4
  %8 = load i32, i32* %i, align 4
  %rem = srem i32 %8, 10
  %add = add nsw i32 %7, %rem
  store i32 %add, i32* %reverse, align 4
  %9 = load i32, i32* %i, align 4
  %div = sdiv i32 %9, 10
  store i32 %div, i32* %i, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %10 = load i32, i32* %reverse, align 4
  %11 = load i32, i32* %z, align 4
  %cmp6 = icmp eq i32 %10, %11
  br i1 %cmp6, label %if.then, label %if.end9

if.then:                                          ; preds = %while.end
  %12 = load i32, i32* %z, align 4
  %13 = load i32, i32* %bigpal, align 4
  %cmp7 = icmp sgt i32 %12, %13
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  %14 = load i32, i32* %z, align 4
  store i32 %14, i32* %bigpal, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then
  %15 = load i32, i32* %palcount, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %palcount, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %while.end
  store i32 0, i32* %reverse, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %16 = load i32, i32* %y, align 4
  %inc10 = add nsw i32 %16, 1
  store i32 %inc10, i32* %y, align 4
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %17 = load i32, i32* %x, align 4
  %inc12 = add nsw i32 %17, 1
  store i32 %inc12, i32* %x, align 4
  br label %for.cond, !llvm.loop !7

for.end13:                                        ; preds = %for.cond
  %18 = load i32, i32* %bigpal, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %18)
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
!7 = distinct !{!7, !5}
