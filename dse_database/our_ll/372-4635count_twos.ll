; ModuleID = 'code/372-4635count_twos.c'
source_filename = "code/372-4635count_twos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"No twos test failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"With twos test failed!\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Large numbers test failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%d tests failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @count_twos_brute(i32 %num) #0 {
entry:
  %num.addr = alloca i32, align 4
  %current = alloca i32, align 4
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 0, i32* %result, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %num.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  store i32 %2, i32* %current, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %3 = load i32, i32* %current, align 4
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %current, align 4
  %rem = srem i32 %4, 10
  %cmp2 = icmp eq i32 %rem, 2
  %conv = zext i1 %cmp2 to i32
  %5 = load i32, i32* %result, align 4
  %add = add nsw i32 %5, %conv
  store i32 %add, i32* %result, align 4
  %6 = load i32, i32* %current, align 4
  %div = sdiv i32 %6, 10
  store i32 %div, i32* %current, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %result, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @power(i32 %base, i32 %exp) #0 {
entry:
  %base.addr = alloca i32, align 4
  %exp.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %base, i32* %base.addr, align 4
  store i32 %exp, i32* %exp.addr, align 4
  store i32 1, i32* %result, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %exp.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %base.addr, align 4
  %3 = load i32, i32* %result, align 4
  %mul = mul nsw i32 %3, %2
  store i32 %mul, i32* %result, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %result, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @count_twos(i32 %num) #0 {
entry:
  %num.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %pos = alloca i32, align 4
  %temp = alloca i32, align 4
  %digit = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 0, i32* %result, align 4
  store i32 0, i32* %pos, align 4
  %0 = load i32, i32* %num.addr, align 4
  store i32 %0, i32* %temp, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end18, %entry
  %1 = load i32, i32* %temp, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %temp, align 4
  %rem = srem i32 %2, 10
  store i32 %rem, i32* %digit, align 4
  %3 = load i32, i32* %num.addr, align 4
  %4 = load i32, i32* %pos, align 4
  %add = add nsw i32 %4, 1
  %call = call i32 @power(i32 10, i32 %add)
  %div = sdiv i32 %3, %call
  store i32 %div, i32* %left, align 4
  %5 = load i32, i32* %num.addr, align 4
  %6 = load i32, i32* %pos, align 4
  %call1 = call i32 @power(i32 10, i32 %6)
  %rem2 = srem i32 %5, %call1
  store i32 %rem2, i32* %right, align 4
  %7 = load i32, i32* %digit, align 4
  %cmp3 = icmp slt i32 %7, 2
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %8 = load i32, i32* %left, align 4
  %9 = load i32, i32* %pos, align 4
  %call4 = call i32 @power(i32 10, i32 %9)
  %mul = mul nsw i32 %8, %call4
  %10 = load i32, i32* %result, align 4
  %add5 = add nsw i32 %10, %mul
  store i32 %add5, i32* %result, align 4
  br label %if.end18

if.else:                                          ; preds = %while.body
  %11 = load i32, i32* %digit, align 4
  %cmp6 = icmp sgt i32 %11, 2
  br i1 %cmp6, label %if.then7, label %if.else12

if.then7:                                         ; preds = %if.else
  %12 = load i32, i32* %left, align 4
  %add8 = add nsw i32 %12, 1
  %13 = load i32, i32* %pos, align 4
  %call9 = call i32 @power(i32 10, i32 %13)
  %mul10 = mul nsw i32 %add8, %call9
  %14 = load i32, i32* %result, align 4
  %add11 = add nsw i32 %14, %mul10
  store i32 %add11, i32* %result, align 4
  br label %if.end

if.else12:                                        ; preds = %if.else
  %15 = load i32, i32* %left, align 4
  %16 = load i32, i32* %pos, align 4
  %call13 = call i32 @power(i32 10, i32 %16)
  %mul14 = mul nsw i32 %15, %call13
  %17 = load i32, i32* %right, align 4
  %add15 = add nsw i32 %mul14, %17
  %add16 = add nsw i32 %add15, 1
  %18 = load i32, i32* %result, align 4
  %add17 = add nsw i32 %18, %add16
  store i32 %add17, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.else12, %if.then7
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  %19 = load i32, i32* %temp, align 4
  %div19 = sdiv i32 %19, 10
  store i32 %div19, i32* %temp, align 4
  %20 = load i32, i32* %pos, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %pos, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %21 = load i32, i32* %result, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_no_twos() #0 {
entry:
  %call = call i32 @count_twos_brute(i32 0)
  %cmp = icmp eq i32 0, %call
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @count_twos(i32 0)
  %cmp2 = icmp eq i32 0, %call1
  br i1 %cmp2, label %land.lhs.true3, label %land.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = call i32 @count_twos_brute(i32 1)
  %cmp5 = icmp eq i32 0, %call4
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true3
  %call6 = call i32 @count_twos(i32 1)
  %cmp7 = icmp eq i32 0, %call6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true3, %land.lhs.true, %entry
  %0 = phi i1 [ false, %land.lhs.true3 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp7, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_with_twos() #0 {
entry:
  %call = call i32 @count_twos_brute(i32 11)
  %cmp = icmp eq i32 1, %call
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @count_twos(i32 11)
  %cmp2 = icmp eq i32 1, %call1
  br i1 %cmp2, label %land.lhs.true3, label %land.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = call i32 @count_twos_brute(i32 19)
  %cmp5 = icmp eq i32 2, %call4
  br i1 %cmp5, label %land.lhs.true6, label %land.end

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %call7 = call i32 @count_twos(i32 19)
  %cmp8 = icmp eq i32 2, %call7
  br i1 %cmp8, label %land.lhs.true9, label %land.end

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %call10 = call i32 @count_twos_brute(i32 22)
  %cmp11 = icmp eq i32 6, %call10
  br i1 %cmp11, label %land.lhs.true12, label %land.end

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %call13 = call i32 @count_twos(i32 22)
  %cmp14 = icmp eq i32 6, %call13
  br i1 %cmp14, label %land.lhs.true15, label %land.end

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %call16 = call i32 @count_twos_brute(i32 342)
  %cmp17 = icmp eq i32 175, %call16
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true15
  %call18 = call i32 @count_twos(i32 342)
  %cmp19 = icmp eq i32 175, %call18
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true15, %land.lhs.true12, %land.lhs.true9, %land.lhs.true6, %land.lhs.true3, %land.lhs.true, %entry
  %0 = phi i1 [ false, %land.lhs.true15 ], [ false, %land.lhs.true12 ], [ false, %land.lhs.true9 ], [ false, %land.lhs.true6 ], [ false, %land.lhs.true3 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp19, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_large_numbers() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %call = call i32 @count_twos_brute(i32 %1)
  %2 = load i32, i32* %i, align 4
  %call1 = call i32 @count_twos(i32 %2)
  %cmp2 = icmp ne i32 %call, %call1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %counter = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %counter, align 4
  %call = call i32 @test_no_twos()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %0 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %counter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @test_with_twos()
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %1 = load i32, i32* %counter, align 4
  %inc6 = add nsw i32 %1, 1
  store i32 %inc6, i32* %counter, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %call8 = call i32 @test_large_numbers()
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end7
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %2 = load i32, i32* %counter, align 4
  %inc12 = add nsw i32 %2, 1
  store i32 %inc12, i32* %counter, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7
  %3 = load i32, i32* %counter, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %3)
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
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
