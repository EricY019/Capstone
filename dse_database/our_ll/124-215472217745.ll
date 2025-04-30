; ModuleID = 'code/124-215472217745.c'
source_filename = "code/124-215472217745.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\0A%d \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %count = alloca i32, align 4
  %currentNumber = alloca i32, align 4
  %digitsOfNumber = alloca [4 x i8], align 1
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %count, align 4
  store i32 100, i32* %currentNumber, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %currentNumber, align 4
  %cmp = icmp sle i32 %0, 999
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %digitsOfNumber, i64 0, i64 0
  %1 = load i32, i32* %currentNumber, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %1) #3
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %digitsOfNumber, i64 0, i64 0
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %arrayidx1 = getelementptr inbounds [4 x i8], [4 x i8]* %digitsOfNumber, i64 0, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv, %conv2
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx5 = getelementptr inbounds [4 x i8], [4 x i8]* %digitsOfNumber, i64 0, i64 1
  %4 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %4 to i32
  %arrayidx7 = getelementptr inbounds [4 x i8], [4 x i8]* %digitsOfNumber, i64 0, i64 2
  %5 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %5 to i32
  %cmp9 = icmp eq i32 %conv6, %conv8
  br i1 %cmp9, label %if.then, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %arrayidx12 = getelementptr inbounds [4 x i8], [4 x i8]* %digitsOfNumber, i64 0, i64 0
  %6 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %6 to i32
  %arrayidx14 = getelementptr inbounds [4 x i8], [4 x i8]* %digitsOfNumber, i64 0, i64 2
  %7 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %7 to i32
  %cmp16 = icmp eq i32 %conv13, %conv15
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false11, %lor.lhs.false, %for.body
  %8 = load i32, i32* %currentNumber, align 4
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %9 = load i32, i32* %count, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false11
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %currentNumber, align 4
  %inc19 = add nsw i32 %10, 1
  store i32 %inc19, i32* %currentNumber, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %count, align 4
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %11)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
