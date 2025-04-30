; ModuleID = 'code/047-8651problem_two.c'
source_filename = "code/047-8651problem_two.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"fibonacci(i) is: %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"The sum of the even fibonacci numbers below 4000000 is: %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i64, align 8
  %sum = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i64 0, i64* %sum, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %call = call i64 @fibonacci(i64 %0)
  %cmp = icmp slt i64 %call, 4000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %i, align 8
  %call1 = call i64 @fibonacci(i64 %1)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %call1)
  %2 = load i64, i64* %i, align 8
  %call3 = call i64 @fibonacci(i64 %2)
  %rem = srem i64 %call3, 2
  %cmp4 = icmp eq i64 %rem, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i64, i64* %i, align 8
  %call5 = call i64 @fibonacci(i64 %3)
  %4 = load i64, i64* %sum, align 8
  %add = add nsw i64 %4, %call5
  store i64 %add, i64* %sum, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i64, i64* %i, align 8
  %inc = add nsw i64 %5, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %6 = load i64, i64* %sum, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %6)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fibonacci(i64 %n) #0 {
entry:
  %retval = alloca i64, align 8
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %n.addr, align 8
  %cmp1 = icmp eq i64 %1, 1
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i64 1, i64* %retval, align 8
  br label %return

if.else3:                                         ; preds = %if.else
  %2 = load i64, i64* %n.addr, align 8
  %sub = sub nsw i64 %2, 1
  %call = call i64 @fibonacci(i64 %sub)
  %3 = load i64, i64* %n.addr, align 8
  %sub4 = sub nsw i64 %3, 2
  %call5 = call i64 @fibonacci(i64 %sub4)
  %add = add nsw i64 %call, %call5
  store i64 %add, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.else3, %if.then2, %if.then
  %4 = load i64, i64* %retval, align 8
  ret i64 %4
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
