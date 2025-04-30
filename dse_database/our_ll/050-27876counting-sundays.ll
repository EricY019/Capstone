; ModuleID = 'code/050-27876counting-sundays.c'
source_filename = "code/050-27876counting-sundays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"jan\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"feb\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"mar\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"apr\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"may\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"jun\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"jul\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"aug\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"sep\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"oct\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"nov\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"dec\00", align 1
@months = dso_local global [12 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)], align 16
@month_days = dso_local global [12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@.str.12 = private unnamed_addr constant [4 x i8] c"sun\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"mon\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"tue\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"wed\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"thu\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"fri\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"sat\00", align 1
@days = dso_local global [7 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0)], align 16
@.str.19 = private unnamed_addr constant [15 x i8] c"%s, %s %d, %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"leap year: %s, %s %d, %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"total: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %month = alloca i32, align 4
  %date = alloca i32, align 4
  %year = alloca i32, align 4
  %day = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %month, align 4
  store i32 1, i32* %date, align 4
  store i32 1900, i32* %year, align 4
  store i32 1, i32* %day, align 4
  store i32 0, i32* %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end38, %entry
  %0 = load i32, i32* %year, align 4
  %cmp = icmp slt i32 %0, 2001
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %date, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %2 = load i32, i32* %day, align 4
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %3 = load i32, i32* %year, align 4
  %cmp4 = icmp sgt i32 %3, 1900
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true3
  %4 = load i32, i32* %n, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %n, align 4
  %5 = load i32, i32* %day, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [7 x i8*], [7 x i8*]* @days, i64 0, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %7 = load i32, i32* %month, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [12 x i8*], [12 x i8*]* @months, i64 0, i64 %idxprom5
  %8 = load i8*, i8** %arrayidx6, align 8
  %9 = load i32, i32* %date, align 4
  %10 = load i32, i32* %year, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* %6, i8* %8, i32 %9, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3, %land.lhs.true, %while.body
  %11 = load i32, i32* %day, align 4
  %inc7 = add nsw i32 %11, 1
  store i32 %inc7, i32* %day, align 4
  %12 = load i32, i32* %day, align 4
  %cmp8 = icmp sgt i32 %12, 6
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i32 0, i32* %day, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  %13 = load i32, i32* %date, align 4
  %inc11 = add nsw i32 %13, 1
  store i32 %inc11, i32* %date, align 4
  %14 = load i32, i32* %date, align 4
  %15 = load i32, i32* %month, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [12 x i32], [12 x i32]* @month_days, i64 0, i64 %idxprom12
  %16 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp sgt i32 %14, %16
  br i1 %cmp14, label %if.then15, label %if.end38

if.then15:                                        ; preds = %if.end10
  %17 = load i32, i32* %month, align 4
  %cmp16 = icmp eq i32 %17, 1
  br i1 %cmp16, label %land.lhs.true17, label %if.else

land.lhs.true17:                                  ; preds = %if.then15
  %18 = load i32, i32* %date, align 4
  %cmp18 = icmp eq i32 %18, 29
  br i1 %cmp18, label %land.lhs.true19, label %if.else

land.lhs.true19:                                  ; preds = %land.lhs.true17
  %19 = load i32, i32* %year, align 4
  %rem = srem i32 %19, 4
  %cmp20 = icmp eq i32 %rem, 0
  br i1 %cmp20, label %land.lhs.true21, label %if.else

land.lhs.true21:                                  ; preds = %land.lhs.true19
  %20 = load i32, i32* %year, align 4
  %rem22 = srem i32 %20, 100
  %cmp23 = icmp ne i32 %rem22, 0
  br i1 %cmp23, label %if.then26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true21
  %21 = load i32, i32* %year, align 4
  %rem24 = srem i32 %21, 400
  %cmp25 = icmp eq i32 %rem24, 0
  br i1 %cmp25, label %if.then26, label %if.else

if.then26:                                        ; preds = %lor.lhs.false, %land.lhs.true21
  %22 = load i32, i32* %day, align 4
  %idxprom27 = sext i32 %22 to i64
  %arrayidx28 = getelementptr inbounds [7 x i8*], [7 x i8*]* @days, i64 0, i64 %idxprom27
  %23 = load i8*, i8** %arrayidx28, align 8
  %24 = load i32, i32* %month, align 4
  %idxprom29 = sext i32 %24 to i64
  %arrayidx30 = getelementptr inbounds [12 x i8*], [12 x i8*]* @months, i64 0, i64 %idxprom29
  %25 = load i8*, i8** %arrayidx30, align 8
  %26 = load i32, i32* %date, align 4
  %27 = load i32, i32* %year, align 4
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i8* %23, i8* %25, i32 %26, i32 %27)
  br label %if.end37

if.else:                                          ; preds = %lor.lhs.false, %land.lhs.true19, %land.lhs.true17, %if.then15
  store i32 1, i32* %date, align 4
  %28 = load i32, i32* %month, align 4
  %inc32 = add nsw i32 %28, 1
  store i32 %inc32, i32* %month, align 4
  %29 = load i32, i32* %month, align 4
  %cmp33 = icmp sgt i32 %29, 11
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.else
  store i32 0, i32* %month, align 4
  %30 = load i32, i32* %year, align 4
  %inc35 = add nsw i32 %30, 1
  store i32 %inc35, i32* %year, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.else
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then26
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end10
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %31 = load i32, i32* %n, align 4
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32 %31)
  ret i32 0
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
