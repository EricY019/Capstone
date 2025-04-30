; ModuleID = 'code/371-31358masked.c'
source_filename = "code/371-31358masked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"input.txt\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@fin = dso_local global %struct._IO_FILE* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"output.txt\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@fout = dso_local global %struct._IO_FILE* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %str = alloca [1000000 x i8], align 16
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** @fin, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** @fout, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @fin, align 8
  %call2 = call i32 @fgetc(%struct._IO_FILE* %0)
  store i32 %call2, i32* %c, align 4
  %cmp = icmp ne i32 %call2, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %c, align 4
  %conv = trunc i32 %1 to i8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1000000 x i8], [1000000 x i8]* %str, i64 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc40, %while.end
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body, label %for.end42

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [1000000 x i8], [1000000 x i8]* %str, i64 0, i64 %idxprom5
  %7 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv7, 77
  br i1 %cmp8, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %8 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [1000000 x i8], [1000000 x i8]* %str, i64 0, i64 %idxprom10
  %9 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %9 to i32
  %cmp13 = icmp eq i32 %conv12, 109
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 0, i32* %n, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc, %if.then
  %10 = load i32, i32* %k, align 4
  %cmp16 = icmp sle i32 %10, 5
  br i1 %cmp16, label %for.body18, label %for.end

for.body18:                                       ; preds = %for.cond15
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* %k, align 4
  %add = add nsw i32 %11, %12
  %idxprom19 = sext i32 %add to i64
  %arrayidx20 = getelementptr inbounds [1000000 x i8], [1000000 x i8]* %str, i64 0, i64 %idxprom19
  %13 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %13 to i32
  %cmp22 = icmp slt i32 %conv21, 91
  br i1 %cmp22, label %if.then24, label %if.end

if.then24:                                        ; preds = %for.body18
  %14 = load i32, i32* %k, align 4
  %sub = sub nsw i32 5, %14
  %shl = shl i32 1, %sub
  %15 = load i32, i32* %n, align 4
  %add25 = add nsw i32 %15, %shl
  store i32 %add25, i32* %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then24, %for.body18
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %k, align 4
  %inc26 = add nsw i32 %16, 1
  store i32 %inc26, i32* %k, align 4
  br label %for.cond15, !llvm.loop !6

for.end:                                          ; preds = %for.cond15
  %17 = load i32, i32* %n, align 4
  %18 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %18 to i64
  %arrayidx28 = getelementptr inbounds [1000000 x i8], [1000000 x i8]* %str, i64 0, i64 %idxprom27
  %19 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %19 to i32
  %cmp30 = icmp eq i32 %conv29, 77
  %20 = zext i1 %cmp30 to i64
  %cond = select i1 %cmp30, i32 64, i32 96
  %add32 = add nsw i32 %17, %cond
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @fout, align 8
  %call33 = call i32 @fputc(i32 %add32, %struct._IO_FILE* %21)
  %22 = load i32, i32* %j, align 4
  %add34 = add nsw i32 %22, 5
  store i32 %add34, i32* %j, align 4
  br label %if.end39

if.else:                                          ; preds = %lor.lhs.false
  %23 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %23 to i64
  %arrayidx36 = getelementptr inbounds [1000000 x i8], [1000000 x i8]* %str, i64 0, i64 %idxprom35
  %24 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %24 to i32
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @fout, align 8
  %call38 = call i32 @fputc(i32 %conv37, %struct._IO_FILE* %25)
  br label %if.end39

if.end39:                                         ; preds = %if.else, %for.end
  br label %for.inc40

for.inc40:                                        ; preds = %if.end39
  %26 = load i32, i32* %j, align 4
  %inc41 = add nsw i32 %26, 1
  store i32 %inc41, i32* %j, align 4
  br label %for.cond, !llvm.loop !7

for.end42:                                        ; preds = %for.cond
  ret i32 0
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @fgetc(%struct._IO_FILE*) #1

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) #1

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
