; ModuleID = 'code/229-21322euler4.c'
source_filename = "code/229-21322euler4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@largestPalindrome = dso_local global i32 0, align 4
@testNumber = dso_local global i32 0, align 4
@strEnd = dso_local global i32 5, align 4
@strStart = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"this is maybe the largest? %d\00", align 1
@str = dso_local global [1333 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"palindrome: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 99, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 999
  br i1 %cmp, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  store i32 99, i32* %a, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %a, align 4
  %cmp2 = icmp slt i32 %1, 999
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %a, align 4
  %3 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %2, %3
  store i32 %mul, i32* @testNumber, align 4
  %4 = load i32, i32* @testNumber, align 4
  call void @checkForPalindrome(i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %5 = load i32, i32* %a, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %a, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  br label %for.inc4

for.inc4:                                         ; preds = %for.end
  %6 = load i32, i32* %i, align 4
  %inc5 = add nsw i32 %6, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end6:                                         ; preds = %for.cond
  %7 = load i32, i32* @largestPalindrome, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %7)
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @checkForPalindrome(i32 %number) #0 {
entry:
  %number.addr = alloca i32, align 4
  store i32 %number, i32* %number.addr, align 4
  %0 = load i32, i32* %number.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1333 x i8], [1333 x i8]* @str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %0) #3
  %1 = load i32, i32* @strStart, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1333 x i8], [1333 x i8]* @str, i64 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %3 = load i32, i32* @strEnd, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [1333 x i8], [1333 x i8]* @str, i64 0, i64 %idxprom1
  %4 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, %conv3
  br i1 %cmp, label %if.then, label %if.end31

if.then:                                          ; preds = %entry
  %5 = load i32, i32* @strStart, align 4
  %add = add nsw i32 %5, 1
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds [1333 x i8], [1333 x i8]* @str, i64 0, i64 %idxprom5
  %6 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %6 to i32
  %7 = load i32, i32* @strEnd, align 4
  %sub = sub nsw i32 %7, 1
  %idxprom8 = sext i32 %sub to i64
  %arrayidx9 = getelementptr inbounds [1333 x i8], [1333 x i8]* @str, i64 0, i64 %idxprom8
  %8 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %8 to i32
  %cmp11 = icmp eq i32 %conv7, %conv10
  br i1 %cmp11, label %if.then13, label %if.end30

if.then13:                                        ; preds = %if.then
  %9 = load i32, i32* @strStart, align 4
  %add14 = add nsw i32 %9, 2
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds [1333 x i8], [1333 x i8]* @str, i64 0, i64 %idxprom15
  %10 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %10 to i32
  %11 = load i32, i32* @strEnd, align 4
  %sub18 = sub nsw i32 %11, 2
  %idxprom19 = sext i32 %sub18 to i64
  %arrayidx20 = getelementptr inbounds [1333 x i8], [1333 x i8]* @str, i64 0, i64 %idxprom19
  %12 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %12 to i32
  %cmp22 = icmp eq i32 %conv17, %conv21
  br i1 %cmp22, label %if.then24, label %if.end29

if.then24:                                        ; preds = %if.then13
  %13 = load i32, i32* %number.addr, align 4
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %14 = load i32, i32* %number.addr, align 4
  %15 = load i32, i32* @largestPalindrome, align 4
  %cmp26 = icmp sgt i32 %14, %15
  br i1 %cmp26, label %if.then28, label %if.end

if.then28:                                        ; preds = %if.then24
  %16 = load i32, i32* %number.addr, align 4
  store i32 %16, i32* @largestPalindrome, align 4
  br label %if.end

if.end:                                           ; preds = %if.then28, %if.then24
  br label %if.end29

if.end29:                                         ; preds = %if.end, %if.then13
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %entry
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
