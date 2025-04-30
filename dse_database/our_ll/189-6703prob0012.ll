; ModuleID = 'code/189-6703prob0012.c'
source_filename = "code/189-6703prob0012.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"\0ALargest is %llu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %flag = alloca i64, align 8
  %n = alloca i64, align 8
  %div = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i64 0, i64* %flag, align 8
  store i64 0, i64* %n, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %flag, align 8
  %tobool = icmp ne i64 %0, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %i, align 8
  %cmp = icmp eq i64 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i64 1, i64* %n, align 8
  br label %if.end3

if.else:                                          ; preds = %for.body
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %n, align 8
  %add = add i64 %3, %2
  store i64 %add, i64* %n, align 8
  %4 = load i64, i64* %n, align 8
  %call = call i64 @divisors(i64 %4)
  store i64 %call, i64* %div, align 8
  %5 = load i64, i64* %div, align 8
  %cmp1 = icmp ugt i64 %5, 500
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  store i64 1, i64* %flag, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end3
  %6 = load i64, i64* %i, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %7 = load i64, i64* %n, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %7)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @divisors(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %primes = alloca [10000 x i32], align 16
  %i = alloca i64, align 8
  %div = alloca i16, align 2
  store i64 %n, i64* %n.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 10000
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %n.addr, align 8
  %cmp1 = icmp ule i64 %1, %2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %4 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [10000 x i32], [10000 x i32]* %primes, i64 0, i64 %4
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  store i16 1, i16* %div, align 2
  store i64 2, i64* %i, align 8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc15, %for.end
  %6 = load i64, i64* %i, align 8
  %cmp3 = icmp ult i64 %6, 10000
  br i1 %cmp3, label %land.rhs4, label %land.end6

land.rhs4:                                        ; preds = %for.cond2
  %7 = load i64, i64* %i, align 8
  %8 = load i64, i64* %n.addr, align 8
  %cmp5 = icmp ule i64 %7, %8
  br label %land.end6

land.end6:                                        ; preds = %land.rhs4, %for.cond2
  %9 = phi i1 [ false, %for.cond2 ], [ %cmp5, %land.rhs4 ]
  br i1 %9, label %for.body7, label %for.end17

for.body7:                                        ; preds = %land.end6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body7
  %10 = load i64, i64* %n.addr, align 8
  %11 = load i64, i64* %i, align 8
  %rem = urem i64 %10, %11
  %tobool = icmp ne i64 %rem, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i64, i64* %i, align 8
  %13 = load i64, i64* %n.addr, align 8
  %div8 = udiv i64 %13, %12
  store i64 %div8, i64* %n.addr, align 8
  %14 = load i64, i64* %i, align 8
  %arrayidx9 = getelementptr inbounds [10000 x i32], [10000 x i32]* %primes, i64 0, i64 %14
  %15 = load i32, i32* %arrayidx9, align 4
  %inc10 = add i32 %15, 1
  store i32 %inc10, i32* %arrayidx9, align 4
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %16 = load i64, i64* %i, align 8
  %arrayidx11 = getelementptr inbounds [10000 x i32], [10000 x i32]* %primes, i64 0, i64 %16
  %17 = load i32, i32* %arrayidx11, align 4
  %tobool12 = icmp ne i32 %17, 0
  br i1 %tobool12, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %18 = load i64, i64* %i, align 8
  %arrayidx13 = getelementptr inbounds [10000 x i32], [10000 x i32]* %primes, i64 0, i64 %18
  %19 = load i32, i32* %arrayidx13, align 4
  %add = add i32 %19, 1
  %20 = load i16, i16* %div, align 2
  %conv = zext i16 %20 to i32
  %mul = mul i32 %conv, %add
  %conv14 = trunc i32 %mul to i16
  store i16 %conv14, i16* %div, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  br label %for.inc15

for.inc15:                                        ; preds = %if.end
  %21 = load i64, i64* %i, align 8
  %inc16 = add i64 %21, 1
  store i64 %inc16, i64* %i, align 8
  br label %for.cond2, !llvm.loop !8

for.end17:                                        ; preds = %land.end6
  %22 = load i16, i16* %div, align 2
  %conv18 = zext i16 %22 to i64
  ret i64 %conv18
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
