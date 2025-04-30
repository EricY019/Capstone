; ModuleID = 'code/294-28438amicable_numbers.c'
source_filename = "code/294-28438amicable_numbers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"Amicable Numbers below 10000 are:- \0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %m = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %sum1 = alloca i32, align 4
  %sum2 = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %0 = load i32, i32* %m, align 4
  %cmp = icmp sle i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %m, align 4
  store i32 %1, i32* %x, align 4
  store i32 0, i32* %sum1, align 4
  store i32 0, i32* %sum2, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %x, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, i32* %x, align 4
  %5 = load i32, i32* %i, align 4
  %rem = srem i32 %4, %5
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %sum1, align 4
  %add = add nsw i32 %7, %6
  store i32 %add, i32* %sum1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  %9 = load i32, i32* %sum1, align 4
  store i32 %9, i32* %y, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc13, %for.end
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %y, align 4
  %cmp6 = icmp slt i32 %10, %11
  br i1 %cmp6, label %for.body7, label %for.end15

for.body7:                                        ; preds = %for.cond5
  %12 = load i32, i32* %y, align 4
  %13 = load i32, i32* %j, align 4
  %rem8 = srem i32 %12, %13
  %cmp9 = icmp eq i32 %rem8, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %for.body7
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %sum2, align 4
  %add11 = add nsw i32 %15, %14
  store i32 %add11, i32* %sum2, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.body7
  br label %for.inc13

for.inc13:                                        ; preds = %if.end12
  %16 = load i32, i32* %j, align 4
  %inc14 = add nsw i32 %16, 1
  store i32 %inc14, i32* %j, align 4
  br label %for.cond5, !llvm.loop !6

for.end15:                                        ; preds = %for.cond5
  %17 = load i32, i32* %sum2, align 4
  %18 = load i32, i32* %x, align 4
  %cmp16 = icmp eq i32 %17, %18
  br i1 %cmp16, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %for.end15
  %19 = load i32, i32* %x, align 4
  %20 = load i32, i32* %y, align 4
  %cmp17 = icmp ne i32 %19, %20
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %land.lhs.true
  %21 = load i32, i32* %x, align 4
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %land.lhs.true, %for.end15
  br label %for.inc21

for.inc21:                                        ; preds = %if.end20
  %22 = load i32, i32* %m, align 4
  %inc22 = add nsw i32 %22, 1
  store i32 %inc22, i32* %m, align 4
  br label %for.cond, !llvm.loop !7

for.end23:                                        ; preds = %for.cond
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
