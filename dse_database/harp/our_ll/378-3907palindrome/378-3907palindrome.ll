; ModuleID = 'code/378-3907palindrome.c'
source_filename = "code/378-3907palindrome.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isPalindrome(i32 %num) #0 {
entry:
  %num.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %isPalindrome = alloca i32, align 4
  %i = alloca i32, align 4
  %out = alloca [512 x i8], align 16
  store i32 %num, i32* %num.addr, align 4
  store i32 0, i32* %len, align 4
  store i32 1, i32* %isPalindrome, align 4
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %out, i64 0, i64 0
  %0 = load i32, i32* %num.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %0) #4
  %arraydecay1 = getelementptr inbounds [512 x i8], [512 x i8]* %out, i64 0, i64 0
  %call2 = call i64 @strlen(i8* %arraydecay1) #5
  %conv = trunc i64 %call2 to i32
  store i32 %conv, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* %out, i64 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv4 = sext i8 %4 to i32
  %5 = load i32, i32* %len, align 4
  %6 = load i32, i32* %i, align 4
  %add = add nsw i32 %6, 1
  %sub = sub nsw i32 %5, %add
  %idxprom5 = sext i32 %sub to i64
  %arrayidx6 = getelementptr inbounds [512 x i8], [512 x i8]* %out, i64 0, i64 %idxprom5
  %7 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp ne i32 %conv4, %conv7
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %isPalindrome, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %if.then, %for.cond
  %9 = load i32, i32* %isPalindrome, align 4
  ret i32 %9
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %num1 = alloca i32, align 4
  %num2 = alloca i32, align 4
  %largest = alloca i32, align 4
  %current = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 999, i32* %num1, align 4
  store i32 0, i32* %largest, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, i32* %num1, align 4
  %cmp = icmp sge i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %num1, align 4
  store i32 %1, i32* %num2, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %num2, align 4
  %cmp2 = icmp sge i32 %2, 100
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, i32* %num1, align 4
  %4 = load i32, i32* %num2, align 4
  %mul = mul nsw i32 %3, %4
  store i32 %mul, i32* %current, align 4
  %5 = load i32, i32* %current, align 4
  %call = call i32 @isPalindrome(i32 %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end6

if.then:                                          ; preds = %for.body3
  %6 = load i32, i32* %current, align 4
  %7 = load i32, i32* %largest, align 4
  %cmp4 = icmp sgt i32 %6, %7
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %8 = load i32, i32* %current, align 4
  store i32 %8, i32* %largest, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %9 = load i32, i32* %num2, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %num2, align 4
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %10 = load i32, i32* %num1, align 4
  %dec8 = add nsw i32 %10, -1
  store i32 %dec8, i32* %num1, align 4
  br label %for.cond, !llvm.loop !7

for.end9:                                         ; preds = %for.cond
  %11 = load i32, i32* %largest, align 4
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

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
