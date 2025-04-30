; ModuleID = 'code/033-15392fizzbuz.c'
source_filename = "code/033-15392fizzbuz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"FizzBuzz\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Fizz\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Buzz\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %fizz = alloca i32, align 4
  %buzz = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %rem = srem i32 %1, 3
  %tobool = icmp ne i32 %rem, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %fizz, align 4
  %2 = load i32, i32* %i, align 4
  %rem1 = srem i32 %2, 5
  %tobool2 = icmp ne i32 %rem1, 0
  %lnot3 = xor i1 %tobool2, true
  %lnot.ext4 = zext i1 %lnot3 to i32
  store i32 %lnot.ext4, i32* %buzz, align 4
  %3 = load i32, i32* %fizz, align 4
  %tobool5 = icmp ne i32 %3, 0
  br i1 %tobool5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %4 = load i32, i32* %buzz, align 4
  %tobool6 = icmp ne i32 %4, 0
  br i1 %tobool6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 @puts(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %if.end17

if.else:                                          ; preds = %land.lhs.true, %for.body
  %5 = load i32, i32* %fizz, align 4
  %tobool7 = icmp ne i32 %5, 0
  br i1 %tobool7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else
  %call9 = call i32 @puts(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end16

if.else10:                                        ; preds = %if.else
  %6 = load i32, i32* %buzz, align 4
  %tobool11 = icmp ne i32 %6, 0
  br i1 %tobool11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else10
  %call13 = call i32 @puts(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end

if.else14:                                        ; preds = %if.else10
  %7 = load i32, i32* %i, align 4
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.else14, %if.then12
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then8
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare dso_local i32 @puts(i8*) #1

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
