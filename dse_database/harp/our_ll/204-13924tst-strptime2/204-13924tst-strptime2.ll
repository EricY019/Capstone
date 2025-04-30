; ModuleID = 'code/204-13924tst-strptime2.c'
source_filename = "code/204-13924tst-strptime2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@tests = internal constant [13 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i64 36000 }, %struct.anon { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i64 -36000 }, %struct.anon { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i64 36000 }, %struct.anon { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i64 -36000 }, %struct.anon { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i64 37800 }, %struct.anon { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i64 -37800 }, %struct.anon { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i64 1800 }, %struct.anon { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i64 -1800 }, %struct.anon { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), i64 9223372036854775807 }, %struct.anon { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i64 9223372036854775807 }, %struct.anon { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i64 9223372036854775807 }, %struct.anon { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i64 9223372036854775807 }, %struct.anon { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i64 9223372036854775807 }], align 16
@.str = private unnamed_addr constant [6 x i8] c"%s %z\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"round %d: strptime unexpectedly failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"round %d: tm_gmtoff is %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"all OK\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"1113472456 +1000\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"1113472456 -1000\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"1113472456 +10\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"1113472456 -10\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"1113472456 +1030\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"1113472456 -1030\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"1113472456 +0030\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"1113472456 -0030\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"1113472456 -1330\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"1113472456 +1330\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"1113472456 -1060\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"1113472456 +1060\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"1113472456  1030\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  %tm = alloca %struct.tm, align 8
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %result, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @tests, i64 0, i64 %idxprom
  %fmt = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %2 = load i8*, i8** %fmt, align 16
  %call = call i32 (i8*, i8*, %struct.tm*, ...) bitcast (i32 (...)* @strptime to i32 (i8*, i8*, %struct.tm*, ...)*)(i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.tm* %tm)
  %conv2 = sext i32 %call to i64
  %3 = inttoptr i64 %conv2 to i8*
  %cmp3 = icmp eq i8* %3, null
  br i1 %cmp3, label %if.then, label %if.end11

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @tests, i64 0, i64 %idxprom5
  %gmtoff = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx6, i32 0, i32 1
  %5 = load i64, i64* %gmtoff, align 8
  %cmp7 = icmp ne i64 %5, 9223372036854775807
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %6 = load i32, i32* %i, align 4
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  store i32 1, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  br label %for.inc

if.end11:                                         ; preds = %for.body
  %tm_gmtoff = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 9
  %7 = load i64, i64* %tm_gmtoff, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @tests, i64 0, i64 %idxprom12
  %gmtoff14 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx13, i32 0, i32 1
  %9 = load i64, i64* %gmtoff14, align 8
  %cmp15 = icmp ne i64 %7, %9
  br i1 %cmp15, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end11
  %10 = load i32, i32* %i, align 4
  %tm_gmtoff18 = getelementptr inbounds %struct.tm, %struct.tm* %tm, i32 0, i32 9
  %11 = load i64, i64* %tm_gmtoff18, align 8
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %10, i64 %11)
  store i32 1, i32* %result, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end11
  br label %for.inc

for.inc:                                          ; preds = %if.end20, %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %result, align 4
  %cmp21 = icmp eq i32 %13, 0
  br i1 %cmp21, label %if.then23, label %if.end25

if.then23:                                        ; preds = %for.end
  %call24 = call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %for.end
  ret i32 0
}

declare dso_local i32 @strptime(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @puts(i8*) #1

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
