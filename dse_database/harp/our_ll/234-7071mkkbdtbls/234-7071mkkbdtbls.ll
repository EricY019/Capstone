; ModuleID = 'code/234-7071mkkbdtbls.c'
source_filename = "code/234-7071mkkbdtbls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Entry = type { i8, i8 }

@tbl1 = dso_local global [48 x %struct.Entry] [%struct.Entry { i8 27, i8 118 }, %struct.Entry { i8 49, i8 22 }, %struct.Entry { i8 50, i8 30 }, %struct.Entry { i8 51, i8 38 }, %struct.Entry { i8 52, i8 37 }, %struct.Entry { i8 53, i8 46 }, %struct.Entry { i8 54, i8 54 }, %struct.Entry { i8 55, i8 61 }, %struct.Entry { i8 56, i8 62 }, %struct.Entry { i8 57, i8 70 }, %struct.Entry { i8 48, i8 69 }, %struct.Entry { i8 94, i8 14 }, %struct.Entry { i8 8, i8 102 }, %struct.Entry { i8 9, i8 13 }, %struct.Entry { i8 113, i8 21 }, %struct.Entry { i8 119, i8 29 }, %struct.Entry { i8 101, i8 36 }, %struct.Entry { i8 114, i8 45 }, %struct.Entry { i8 116, i8 44 }, %struct.Entry { i8 122, i8 53 }, %struct.Entry { i8 117, i8 60 }, %struct.Entry { i8 105, i8 67 }, %struct.Entry { i8 111, i8 68 }, %struct.Entry { i8 112, i8 77 }, %struct.Entry { i8 13, i8 90 }, %struct.Entry { i8 32, i8 41 }, %struct.Entry { i8 97, i8 28 }, %struct.Entry { i8 115, i8 27 }, %struct.Entry { i8 100, i8 35 }, %struct.Entry { i8 102, i8 43 }, %struct.Entry { i8 103, i8 52 }, %struct.Entry { i8 104, i8 51 }, %struct.Entry { i8 106, i8 59 }, %struct.Entry { i8 107, i8 66 }, %struct.Entry { i8 108, i8 75 }, %struct.Entry { i8 121, i8 26 }, %struct.Entry { i8 120, i8 34 }, %struct.Entry { i8 99, i8 33 }, %struct.Entry { i8 118, i8 42 }, %struct.Entry { i8 98, i8 50 }, %struct.Entry { i8 110, i8 49 }, %struct.Entry { i8 109, i8 58 }, %struct.Entry { i8 44, i8 65 }, %struct.Entry { i8 46, i8 73 }, %struct.Entry { i8 45, i8 74 }, %struct.Entry { i8 43, i8 91 }, %struct.Entry { i8 35, i8 93 }, %struct.Entry { i8 60, i8 97 }], align 16
@tbl2 = dso_local global [48 x %struct.Entry] [%struct.Entry { i8 27, i8 118 }, %struct.Entry { i8 33, i8 22 }, %struct.Entry { i8 34, i8 30 }, %struct.Entry { i8 51, i8 38 }, %struct.Entry { i8 36, i8 37 }, %struct.Entry { i8 37, i8 46 }, %struct.Entry { i8 38, i8 54 }, %struct.Entry { i8 47, i8 61 }, %struct.Entry { i8 40, i8 62 }, %struct.Entry { i8 41, i8 70 }, %struct.Entry { i8 61, i8 69 }, %struct.Entry { i8 94, i8 14 }, %struct.Entry { i8 8, i8 102 }, %struct.Entry { i8 9, i8 13 }, %struct.Entry { i8 81, i8 21 }, %struct.Entry { i8 87, i8 29 }, %struct.Entry { i8 69, i8 36 }, %struct.Entry { i8 82, i8 45 }, %struct.Entry { i8 84, i8 44 }, %struct.Entry { i8 90, i8 53 }, %struct.Entry { i8 85, i8 60 }, %struct.Entry { i8 73, i8 67 }, %struct.Entry { i8 79, i8 68 }, %struct.Entry { i8 80, i8 77 }, %struct.Entry { i8 13, i8 90 }, %struct.Entry { i8 32, i8 41 }, %struct.Entry { i8 65, i8 28 }, %struct.Entry { i8 83, i8 27 }, %struct.Entry { i8 68, i8 35 }, %struct.Entry { i8 70, i8 43 }, %struct.Entry { i8 71, i8 52 }, %struct.Entry { i8 72, i8 51 }, %struct.Entry { i8 74, i8 59 }, %struct.Entry { i8 75, i8 66 }, %struct.Entry { i8 76, i8 75 }, %struct.Entry { i8 89, i8 26 }, %struct.Entry { i8 88, i8 34 }, %struct.Entry { i8 67, i8 33 }, %struct.Entry { i8 86, i8 42 }, %struct.Entry { i8 66, i8 50 }, %struct.Entry { i8 78, i8 49 }, %struct.Entry { i8 77, i8 58 }, %struct.Entry { i8 59, i8 65 }, %struct.Entry { i8 58, i8 73 }, %struct.Entry { i8 95, i8 74 }, %struct.Entry { i8 42, i8 91 }, %struct.Entry { i8 39, i8 93 }, %struct.Entry { i8 62, i8 97 }], align 16
@.str = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"; keyboard code tables\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"\09.export\09xltbl1\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"\09.export\09xltbl2\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"\09.code\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"\09.align\094\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"xltbl1:\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"\09.byte\09\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"0x%02X\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"xltbl2:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %codes = alloca [256 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %codes, i64 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc11, %for.end
  %3 = load i32, i32* %i, align 4
  %conv = sext i32 %3 to i64
  %cmp2 = icmp ult i64 %conv, 48
  br i1 %cmp2, label %for.body4, label %for.end13

for.body4:                                        ; preds = %for.cond1
  %4 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [48 x %struct.Entry], [48 x %struct.Entry]* @tbl1, i64 0, i64 %idxprom5
  %ascii = getelementptr inbounds %struct.Entry, %struct.Entry* %arrayidx6, i32 0, i32 0
  %5 = load i8, i8* %ascii, align 2
  %6 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [48 x %struct.Entry], [48 x %struct.Entry]* @tbl1, i64 0, i64 %idxprom7
  %key = getelementptr inbounds %struct.Entry, %struct.Entry* %arrayidx8, i32 0, i32 1
  %7 = load i8, i8* %key, align 1
  %idxprom9 = zext i8 %7 to i64
  %arrayidx10 = getelementptr inbounds [256 x i8], [256 x i8]* %codes, i64 0, i64 %idxprom9
  store i8 %5, i8* %arrayidx10, align 1
  br label %for.inc11

for.inc11:                                        ; preds = %for.body4
  %8 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %8, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond1, !llvm.loop !6

for.end13:                                        ; preds = %for.cond1
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc44, %for.end13
  %9 = load i32, i32* %i, align 4
  %cmp25 = icmp slt i32 %9, 32
  br i1 %cmp25, label %for.body27, label %for.end46

for.body27:                                       ; preds = %for.cond24
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %j, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc40, %for.body27
  %10 = load i32, i32* %j, align 4
  %cmp30 = icmp slt i32 %10, 8
  br i1 %cmp30, label %for.body32, label %for.end42

for.body32:                                       ; preds = %for.cond29
  %11 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %11, 8
  %12 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul, %12
  %idxprom33 = sext i32 %add to i64
  %arrayidx34 = getelementptr inbounds [256 x i8], [256 x i8]* %codes, i64 0, i64 %idxprom33
  %13 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %13 to i32
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %conv35)
  %14 = load i32, i32* %j, align 4
  %cmp37 = icmp slt i32 %14, 7
  br i1 %cmp37, label %if.then, label %if.end

if.then:                                          ; preds = %for.body32
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body32
  br label %for.inc40

for.inc40:                                        ; preds = %if.end
  %15 = load i32, i32* %j, align 4
  %inc41 = add nsw i32 %15, 1
  store i32 %inc41, i32* %j, align 4
  br label %for.cond29, !llvm.loop !7

for.end42:                                        ; preds = %for.cond29
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %for.inc44

for.inc44:                                        ; preds = %for.end42
  %16 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %16, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond24, !llvm.loop !8

for.end46:                                        ; preds = %for.cond24
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc54, %for.end46
  %17 = load i32, i32* %i, align 4
  %cmp49 = icmp slt i32 %17, 256
  br i1 %cmp49, label %for.body51, label %for.end56

for.body51:                                       ; preds = %for.cond48
  %18 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %18 to i64
  %arrayidx53 = getelementptr inbounds [256 x i8], [256 x i8]* %codes, i64 0, i64 %idxprom52
  store i8 0, i8* %arrayidx53, align 1
  br label %for.inc54

for.inc54:                                        ; preds = %for.body51
  %19 = load i32, i32* %i, align 4
  %inc55 = add nsw i32 %19, 1
  store i32 %inc55, i32* %i, align 4
  br label %for.cond48, !llvm.loop !9

for.end56:                                        ; preds = %for.cond48
  store i32 0, i32* %i, align 4
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc70, %for.end56
  %20 = load i32, i32* %i, align 4
  %conv58 = sext i32 %20 to i64
  %cmp59 = icmp ult i64 %conv58, 48
  br i1 %cmp59, label %for.body61, label %for.end72

for.body61:                                       ; preds = %for.cond57
  %21 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %21 to i64
  %arrayidx63 = getelementptr inbounds [48 x %struct.Entry], [48 x %struct.Entry]* @tbl2, i64 0, i64 %idxprom62
  %ascii64 = getelementptr inbounds %struct.Entry, %struct.Entry* %arrayidx63, i32 0, i32 0
  %22 = load i8, i8* %ascii64, align 2
  %23 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %23 to i64
  %arrayidx66 = getelementptr inbounds [48 x %struct.Entry], [48 x %struct.Entry]* @tbl2, i64 0, i64 %idxprom65
  %key67 = getelementptr inbounds %struct.Entry, %struct.Entry* %arrayidx66, i32 0, i32 1
  %24 = load i8, i8* %key67, align 1
  %idxprom68 = zext i8 %24 to i64
  %arrayidx69 = getelementptr inbounds [256 x i8], [256 x i8]* %codes, i64 0, i64 %idxprom68
  store i8 %22, i8* %arrayidx69, align 1
  br label %for.inc70

for.inc70:                                        ; preds = %for.body61
  %25 = load i32, i32* %i, align 4
  %inc71 = add nsw i32 %25, 1
  store i32 %inc71, i32* %i, align 4
  br label %for.cond57, !llvm.loop !10

for.end72:                                        ; preds = %for.cond57
  %call73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc98, %for.end72
  %26 = load i32, i32* %i, align 4
  %cmp75 = icmp slt i32 %26, 32
  br i1 %cmp75, label %for.body77, label %for.end100

for.body77:                                       ; preds = %for.cond74
  %call78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %j, align 4
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc94, %for.body77
  %27 = load i32, i32* %j, align 4
  %cmp80 = icmp slt i32 %27, 8
  br i1 %cmp80, label %for.body82, label %for.end96

for.body82:                                       ; preds = %for.cond79
  %28 = load i32, i32* %i, align 4
  %mul83 = mul nsw i32 %28, 8
  %29 = load i32, i32* %j, align 4
  %add84 = add nsw i32 %mul83, %29
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds [256 x i8], [256 x i8]* %codes, i64 0, i64 %idxprom85
  %30 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %30 to i32
  %call88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %conv87)
  %31 = load i32, i32* %j, align 4
  %cmp89 = icmp slt i32 %31, 7
  br i1 %cmp89, label %if.then91, label %if.end93

if.then91:                                        ; preds = %for.body82
  %call92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %for.body82
  br label %for.inc94

for.inc94:                                        ; preds = %if.end93
  %32 = load i32, i32* %j, align 4
  %inc95 = add nsw i32 %32, 1
  store i32 %inc95, i32* %j, align 4
  br label %for.cond79, !llvm.loop !11

for.end96:                                        ; preds = %for.cond79
  %call97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %for.inc98

for.inc98:                                        ; preds = %for.end96
  %33 = load i32, i32* %i, align 4
  %inc99 = add nsw i32 %33, 1
  store i32 %inc99, i32* %i, align 4
  br label %for.cond74, !llvm.loop !12

for.end100:                                       ; preds = %for.cond74
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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
