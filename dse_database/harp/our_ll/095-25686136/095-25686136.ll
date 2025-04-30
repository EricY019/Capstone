; ModuleID = 'code/095-25686136.c'
source_filename = "code/095-25686136.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"The %d'th ugly number is %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %check = alloca i8*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %count = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call noalias align 16 i8* @malloc(i64 1073741824) #3
  store i8* %call, i8** %check, align 8
  store i64 1, i64* %i, align 8
  %0 = load i8*, i8** %check, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 1
  store i8 1, i8* %arrayidx, align 1
  store i32 1, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end19, %entry
  %1 = load i32, i32* %count, align 4
  %cmp = icmp slt i32 %1, 1500
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %i, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %i, align 8
  %3 = load i64, i64* %i, align 8
  %rem = urem i64 %3, 2
  %tobool = icmp ne i64 %rem, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %4 = load i8*, i8** %check, align 8
  %5 = load i64, i64* %i, align 8
  %div = udiv i64 %5, 2
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 %div
  %6 = load i8, i8* %arrayidx1, align 1
  %7 = load i8*, i8** %check, align 8
  %8 = load i64, i64* %i, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 %8
  store i8 %6, i8* %arrayidx2, align 1
  br label %if.end19

if.else:                                          ; preds = %while.body
  %9 = load i64, i64* %i, align 8
  %rem3 = urem i64 %9, 3
  %tobool4 = icmp ne i64 %rem3, 0
  br i1 %tobool4, label %if.else9, label %if.then5

if.then5:                                         ; preds = %if.else
  %10 = load i8*, i8** %check, align 8
  %11 = load i64, i64* %i, align 8
  %div6 = udiv i64 %11, 3
  %arrayidx7 = getelementptr inbounds i8, i8* %10, i64 %div6
  %12 = load i8, i8* %arrayidx7, align 1
  %13 = load i8*, i8** %check, align 8
  %14 = load i64, i64* %i, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8 %12, i8* %arrayidx8, align 1
  br label %if.end18

if.else9:                                         ; preds = %if.else
  %15 = load i64, i64* %i, align 8
  %rem10 = urem i64 %15, 5
  %tobool11 = icmp ne i64 %rem10, 0
  br i1 %tobool11, label %if.else16, label %if.then12

if.then12:                                        ; preds = %if.else9
  %16 = load i8*, i8** %check, align 8
  %17 = load i64, i64* %i, align 8
  %div13 = udiv i64 %17, 5
  %arrayidx14 = getelementptr inbounds i8, i8* %16, i64 %div13
  %18 = load i8, i8* %arrayidx14, align 1
  %19 = load i8*, i8** %check, align 8
  %20 = load i64, i64* %i, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8 %18, i8* %arrayidx15, align 1
  br label %if.end

if.else16:                                        ; preds = %if.else9
  %21 = load i8*, i8** %check, align 8
  %22 = load i64, i64* %i, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8 0, i8* %arrayidx17, align 1
  br label %if.end

if.end:                                           ; preds = %if.else16, %if.then12
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then5
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then
  %23 = load i8*, i8** %check, align 8
  %24 = load i64, i64* %i, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %23, i64 %24
  %25 = load i8, i8* %arrayidx20, align 1
  %conv = sext i8 %25 to i32
  %26 = load i32, i32* %count, align 4
  %add = add nsw i32 %26, %conv
  store i32 %add, i32* %count, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %27 = load i64, i64* %i, align 8
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 1500, i64 %27)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

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
