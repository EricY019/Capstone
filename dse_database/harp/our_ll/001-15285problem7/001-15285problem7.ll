; ModuleID = 'code/001-15285problem7.c'
source_filename = "code/001-15285problem7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"10 001th prime: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %arv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %arv.addr = alloca i8**, align 8
  %primes = alloca [10001 x i32], align 16
  %primeCount = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %arv, i8*** %arv.addr, align 8
  store i32 1, i32* %primeCount, align 4
  store i32 3, i32* %i, align 4
  %arrayidx = getelementptr inbounds [10001 x i32], [10001 x i32]* %primes, i64 0, i64 0
  store i32 2, i32* %arrayidx, align 16
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %primeCount, align 4
  %cmp = icmp sle i32 %0, 10001
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %i, align 4
  %arraydecay = getelementptr inbounds [10001 x i32], [10001 x i32]* %primes, i64 0, i64 0
  %2 = load i32, i32* %primeCount, align 4
  %call = call i32 @isPrime(i32 %1, i32* %arraydecay, i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %primeCount, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %primeCount, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx1 = getelementptr inbounds [10001 x i32], [10001 x i32]* %primes, i64 0, i64 %idxprom
  store i32 %3, i32* %arrayidx1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %5 = load i32, i32* %i, align 4
  %add = add nsw i32 %5, 2
  store i32 %add, i32* %i, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %arrayidx2 = getelementptr inbounds [10001 x i32], [10001 x i32]* %primes, i64 0, i64 10000
  %6 = load i32, i32* %arrayidx2, align 16
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %6)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isPrime(i32 %num, i32* %primes, i32 %primeCount) #0 {
entry:
  %retval = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %primes.addr = alloca i32*, align 8
  %primeCount.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32* %primes, i32** %primes.addr, align 8
  store i32 %primeCount, i32* %primeCount.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %primeCount.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %num.addr, align 4
  %3 = load i32*, i32** %primes.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %rem = srem i32 %2, %5
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
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
