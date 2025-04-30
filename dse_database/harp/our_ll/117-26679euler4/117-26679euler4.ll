; ModuleID = 'code/117-26679euler4.c'
source_filename = "code/117-26679euler4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"answer: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 999, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 999, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp sgt i32 %1, 100
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %2, %3
  %call = call i32 @palindrome(i32 %mul)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %j, align 4
  %mul4 = mul nsw i32 %4, %5
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %mul4)
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %j, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %7 = load i32, i32* %i, align 4
  %dec7 = add nsw i32 %7, -1
  store i32 %dec7, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end8:                                         ; preds = %for.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end8, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @palindrome(i32 %number) #0 {
entry:
  %retval = alloca i32, align 4
  %number.addr = alloca i32, align 4
  store i32 %number, i32* %number.addr, align 4
  %0 = load i32, i32* %number.addr, align 4
  %rem = srem i32 %0, 10
  %1 = load i32, i32* %number.addr, align 4
  %div = sdiv i32 %1, 100000
  %cmp = icmp eq i32 %rem, %div
  br i1 %cmp, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %number.addr, align 4
  %rem1 = srem i32 %2, 100
  %div2 = sdiv i32 %rem1, 10
  %3 = load i32, i32* %number.addr, align 4
  %div3 = sdiv i32 %3, 10000
  %rem4 = srem i32 %div3, 10
  %cmp5 = icmp eq i32 %div2, %rem4
  br i1 %cmp5, label %if.then6, label %if.end13

if.then6:                                         ; preds = %if.then
  %4 = load i32, i32* %number.addr, align 4
  %rem7 = srem i32 %4, 1000
  %div8 = sdiv i32 %rem7, 100
  %5 = load i32, i32* %number.addr, align 4
  %div9 = sdiv i32 %5, 1000
  %rem10 = srem i32 %div9, 100
  %cmp11 = icmp eq i32 %div8, %rem10
  br i1 %cmp11, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.then6
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then6
  br label %if.end13

if.end13:                                         ; preds = %if.end, %if.then
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then12
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
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
