; ModuleID = 'code/329-14322ex05_41.c'
source_filename = "code/329-14322ex05_41.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEBUG = dso_local global i32 1, align 4
@start = dso_local global i32 1, align 4
@.str = private unnamed_addr constant [13 x i8] c"%2d! = %1d\0A\0A\00", align 1
@factorial.calls = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"=== First call to function ===\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Call #%d: Number = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Call #%d: Recursive call parameter = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 1, i32* @start, align 4
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %conv = sext i32 %2 to i64
  %call = call i64 @factorial(i64 %conv)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %1, i64 %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @factorial(i64 %number) #0 {
entry:
  %retval = alloca i64, align 8
  %number.addr = alloca i64, align 8
  %rcParam = alloca i32, align 4
  store i64 %number, i64* %number.addr, align 8
  %0 = load i32, i32* @start, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @factorial.calls, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* @start, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @factorial.calls, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @factorial.calls, align 4
  %2 = load i32, i32* @DEBUG, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load i32, i32* @factorial.calls, align 4
  %4 = load i64, i64* %number.addr, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %3, i64 %4)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %5 = load i64, i64* %number.addr, align 8
  %cmp = icmp sle i64 %5, 1
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end4
  store i64 1, i64* %retval, align 8
  br label %return

if.else:                                          ; preds = %if.end4
  %6 = load i64, i64* %number.addr, align 8
  %7 = load i64, i64* %number.addr, align 8
  %sub = sub nsw i64 %7, 1
  %call6 = call i64 @factorial(i64 %sub)
  %mul = mul nsw i64 %6, %call6
  %conv = trunc i64 %mul to i32
  store i32 %conv, i32* %rcParam, align 4
  %8 = load i32, i32* @DEBUG, align 4
  %tobool7 = icmp ne i32 %8, 0
  br i1 %tobool7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.else
  %9 = load i32, i32* @factorial.calls, align 4
  %10 = load i32, i32* %rcParam, align 4
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %9, i32 %10)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.else
  %11 = load i32, i32* %rcParam, align 4
  %conv11 = sext i32 %11 to i64
  store i64 %conv11, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end10, %if.then5
  %12 = load i64, i64* %retval, align 8
  ret i64 %12
}

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
