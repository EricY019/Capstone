; ModuleID = 'code/200-26625QuadraticPrimes.c'
source_filename = "code/200-26625QuadraticPrimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"maxA:%d maxB:%d maxN:%d product:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isPrime(i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %f = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %1, 2
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp slt i32 %2, 2
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i32 0, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  store i32 3, i32* %f, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %if.end6
  %3 = load i32, i32* %f, align 4
  %4 = load i32, i32* %f, align 4
  %mul = mul nsw i32 %3, %4
  %5 = load i32, i32* %n.addr, align 4
  %cmp7 = icmp sle i32 %mul, %5
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, i32* %n.addr, align 4
  %7 = load i32, i32* %f, align 4
  %rem8 = srem i32 %6, %7
  %cmp9 = icmp eq i32 %rem8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %while.body
  store i32 0, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %while.body
  %8 = load i32, i32* %f, align 4
  %add = add nsw i32 %8, 2
  store i32 %add, i32* %f, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then10, %if.then5, %if.then2, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %maxN = alloca i32, align 4
  %maxA = alloca i32, align 4
  %maxB = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %maxN, align 4
  store i32 0, i32* %maxA, align 4
  store i32 0, i32* %maxB, align 4
  store i32 -999, i32* %a, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i32, i32* %a, align 4
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 -999, i32* %b, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc9, %for.body
  %1 = load i32, i32* %b, align 4
  %cmp2 = icmp slt i32 %1, 1000
  br i1 %cmp2, label %for.body3, label %for.end11

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %n, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, i32* %n, align 4
  %3 = load i32, i32* %n, align 4
  %mul = mul nsw i32 %2, %3
  %4 = load i32, i32* %a, align 4
  %5 = load i32, i32* %n, align 4
  %mul5 = mul nsw i32 %4, %5
  %add = add nsw i32 %mul, %mul5
  %6 = load i32, i32* %b, align 4
  %add6 = add nsw i32 %add, %6
  %call = call i32 @isPrime(i32 %add6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond4
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %7 = load i32, i32* %n, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond4, !llvm.loop !6

for.end:                                          ; preds = %for.cond4
  %8 = load i32, i32* %n, align 4
  %9 = load i32, i32* %maxN, align 4
  %cmp8 = icmp sgt i32 %8, %9
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %10 = load i32, i32* %n, align 4
  store i32 %10, i32* %maxN, align 4
  %11 = load i32, i32* %a, align 4
  store i32 %11, i32* %maxA, align 4
  %12 = load i32, i32* %b, align 4
  store i32 %12, i32* %maxB, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  br label %for.inc9

for.inc9:                                         ; preds = %if.end
  %13 = load i32, i32* %b, align 4
  %inc10 = add nsw i32 %13, 1
  store i32 %inc10, i32* %b, align 4
  br label %for.cond1, !llvm.loop !7

for.end11:                                        ; preds = %for.cond1
  br label %for.inc12

for.inc12:                                        ; preds = %for.end11
  %14 = load i32, i32* %a, align 4
  %inc13 = add nsw i32 %14, 1
  store i32 %inc13, i32* %a, align 4
  br label %for.cond, !llvm.loop !8

for.end14:                                        ; preds = %for.cond
  %15 = load i32, i32* %maxA, align 4
  %16 = load i32, i32* %maxB, align 4
  %17 = load i32, i32* %maxN, align 4
  %18 = load i32, i32* %maxA, align 4
  %19 = load i32, i32* %maxB, align 4
  %mul15 = mul nsw i32 %18, %19
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17, i32 %mul15)
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
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
!8 = distinct !{!8, !5}
