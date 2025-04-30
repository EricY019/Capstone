; ModuleID = 'code/389-20762solution.c'
source_filename = "code/389-20762solution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@even_odd_digits.odd_digits = internal global [100001 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"Naive: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Lookup table: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @even_odd_digits() #0 {
entry:
  %res = alloca i32, align 4
  %i = alloca i64, align 8
  %mult = alloca i64, align 8
  store i32 0, i32* %res, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 100001
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %1 = load i64, i64* %i, align 8
  %cmp1 = icmp ult i64 %1, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %2 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %2, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %3 = load i64, i64* %i, align 8
  %and = and i64 %3, 1
  %conv = trunc i64 %and to i32
  %4 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [100001 x i32], [100001 x i32]* @even_odd_digits.odd_digits, i64 0, i64 %4
  store i32 %conv, i32* %arrayidx, align 4
  %5 = load i64, i64* %i, align 8
  %arrayidx2 = getelementptr inbounds [100001 x i32], [100001 x i32]* @even_odd_digits.odd_digits, i64 0, i64 %5
  %6 = load i32, i32* %arrayidx2, align 4
  %tobool = icmp ne i32 %6, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %7 = load i32, i32* %res, align 4
  %add = add i32 %7, %lnot.ext
  store i32 %add, i32* %res, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i64, i64* %i, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %land.end
  store i64 10, i64* %mult, align 8
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc28, %for.end
  %9 = load i64, i64* %mult, align 8
  %cmp4 = icmp ult i64 %9, 100001
  br i1 %cmp4, label %for.body6, label %for.end30

for.body6:                                        ; preds = %for.cond3
  %10 = load i64, i64* %mult, align 8
  store i64 %10, i64* %i, align 8
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc25, %for.body6
  %11 = load i64, i64* %i, align 8
  %cmp8 = icmp ult i64 %11, 100001
  br i1 %cmp8, label %land.rhs10, label %land.end13

land.rhs10:                                       ; preds = %for.cond7
  %12 = load i64, i64* %i, align 8
  %13 = load i64, i64* %mult, align 8
  %mul = mul i64 %13, 10
  %cmp11 = icmp ult i64 %12, %mul
  br label %land.end13

land.end13:                                       ; preds = %land.rhs10, %for.cond7
  %14 = phi i1 [ false, %for.cond7 ], [ %cmp11, %land.rhs10 ]
  br i1 %14, label %for.body14, label %for.end27

for.body14:                                       ; preds = %land.end13
  %15 = load i64, i64* %i, align 8
  %16 = load i64, i64* %mult, align 8
  %rem = urem i64 %15, %16
  %arrayidx15 = getelementptr inbounds [100001 x i32], [100001 x i32]* @even_odd_digits.odd_digits, i64 0, i64 %rem
  %17 = load i32, i32* %arrayidx15, align 4
  %18 = load i64, i64* %i, align 8
  %19 = load i64, i64* %mult, align 8
  %div = udiv i64 %18, %19
  %arrayidx16 = getelementptr inbounds [100001 x i32], [100001 x i32]* @even_odd_digits.odd_digits, i64 0, i64 %div
  %20 = load i32, i32* %arrayidx16, align 4
  %add17 = add i32 %17, %20
  %21 = load i64, i64* %i, align 8
  %arrayidx18 = getelementptr inbounds [100001 x i32], [100001 x i32]* @even_odd_digits.odd_digits, i64 0, i64 %21
  store i32 %add17, i32* %arrayidx18, align 4
  %22 = load i64, i64* %i, align 8
  %arrayidx19 = getelementptr inbounds [100001 x i32], [100001 x i32]* @even_odd_digits.odd_digits, i64 0, i64 %22
  %23 = load i32, i32* %arrayidx19, align 4
  %and20 = and i32 %23, 1
  %tobool21 = icmp ne i32 %and20, 0
  %lnot22 = xor i1 %tobool21, true
  %lnot.ext23 = zext i1 %lnot22 to i32
  %24 = load i32, i32* %res, align 4
  %add24 = add i32 %24, %lnot.ext23
  store i32 %add24, i32* %res, align 4
  br label %for.inc25

for.inc25:                                        ; preds = %for.body14
  %25 = load i64, i64* %i, align 8
  %inc26 = add i64 %25, 1
  store i64 %inc26, i64* %i, align 8
  br label %for.cond7, !llvm.loop !6

for.end27:                                        ; preds = %land.end13
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %26 = load i64, i64* %mult, align 8
  %mul29 = mul i64 %26, 10
  store i64 %mul29, i64* %mult, align 8
  br label %for.cond3, !llvm.loop !7

for.end30:                                        ; preds = %for.cond3
  %27 = load i32, i32* %res, align 4
  %sub = sub i32 %27, 1
  ret i32 %sub
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @even_odd_digits_naive() #0 {
entry:
  %res = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %odd_digits = alloca i32, align 4
  store i32 0, i32* %res, align 4
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 100001
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %i, align 8
  store i64 %1, i64* %j, align 8
  store i32 0, i32* %odd_digits, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %2 = load i64, i64* %j, align 8
  %cmp1 = icmp ne i64 %2, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, i64* %j, align 8
  %rem = urem i64 %3, 10
  %and = and i64 %rem, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load i32, i32* %odd_digits, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %odd_digits, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %5 = load i64, i64* %j, align 8
  %div = udiv i64 %5, 10
  store i64 %div, i64* %j, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %odd_digits, align 4
  %and2 = and i32 %6, 1
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %while.end
  %7 = load i32, i32* %res, align 4
  %inc5 = add i32 %7, 1
  store i32 %inc5, i32* %res, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %8 = load i64, i64* %i, align 8
  %inc7 = add i64 %8, 1
  store i64 %inc7, i64* %i, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %res, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @even_odd_digits_naive()
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %call)
  %call2 = call i32 @even_odd_digits()
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %call2)
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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
