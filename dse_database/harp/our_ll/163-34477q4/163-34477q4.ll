; ModuleID = 'code/163-34477q4.c'
source_filename = "code/163-34477q4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"Largest 3 digit Palindrome is %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %call = call i32 @PalindromeThreeDigitProduct()
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %call)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isPalindrome(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %startindex = alloca i32, align 4
  %endindex = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  store i32 0, i32* %startindex, align 4
  %1 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %endindex, align 4
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i32, i32* %startindex, align 4
  %4 = load i32, i32* %endindex, align 4
  %call1 = call i32 @isPalindromeHelper(i8* %2, i32 %3, i32 %4)
  ret i32 %call1
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isPalindromeHelper(i8* %str, i32 %startindex, i32 %endindex) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %startindex.addr = alloca i32, align 4
  %endindex.addr = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %startindex, i32* %startindex.addr, align 4
  store i32 %endindex, i32* %endindex.addr, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i32, i32* %startindex.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %3 = load i8*, i8** %str.addr, align 8
  %4 = load i32, i32* %endindex.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 %idxprom1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %5 to i32
  %cmp = icmp ne i32 %conv, %conv3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %if.end9

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %startindex.addr, align 4
  %7 = load i32, i32* %endindex.addr, align 4
  %cmp5 = icmp sge i32 %6, %7
  br i1 %cmp5, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  store i32 1, i32* %retval, align 4
  br label %if.end9

if.else8:                                         ; preds = %if.else
  %8 = load i8*, i8** %str.addr, align 8
  %9 = load i32, i32* %startindex.addr, align 4
  %add = add nsw i32 %9, 1
  %10 = load i32, i32* %endindex.addr, align 4
  %sub = sub nsw i32 %10, 1
  %call = call i32 @isPalindromeHelper(i8* %8, i32 %add, i32 %sub)
  br label %if.end

if.end:                                           ; preds = %if.else8
  br label %if.end9

if.end9:                                          ; preds = %if.then, %if.then7, %if.end
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PalindromeThreeDigitProduct() #0 {
entry:
  %startingPt = alloca i32, align 4
  %palindrome = alloca i64, align 8
  %tempstr = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 999, i32* %startingPt, align 4
  store i64 0, i64* %palindrome, align 8
  %0 = load i32, i32* %startingPt, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %1, 100
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %startingPt, align 4
  store i32 %2, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %cmp2 = icmp sge i32 %3, 100
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %tempstr, i64 0, i64 0
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %4, %5
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %mul) #5
  %arraydecay4 = getelementptr inbounds [100 x i8], [100 x i8]* %tempstr, i64 0, i64 0
  %call5 = call i32 @isPalindrome(i8* %arraydecay4)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end12

if.then:                                          ; preds = %for.body3
  %6 = load i64, i64* %palindrome, align 8
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %j, align 4
  %mul6 = mul nsw i32 %7, %8
  %conv = sext i32 %mul6 to i64
  %cmp7 = icmp slt i64 %6, %conv
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %j, align 4
  %mul10 = mul nsw i32 %9, %10
  %conv11 = sext i32 %mul10 to i64
  store i64 %conv11, i64* %palindrome, align 8
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  br label %if.end12

if.end12:                                         ; preds = %if.end, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %11 = load i32, i32* %j, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %12 = load i32, i32* %i, align 4
  %dec14 = add nsw i32 %12, -1
  store i32 %dec14, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end15:                                        ; preds = %for.cond
  %13 = load i64, i64* %palindrome, align 8
  %conv16 = trunc i64 %13 to i32
  ret i32 %conv16
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
