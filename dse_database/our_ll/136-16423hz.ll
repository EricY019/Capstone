; ModuleID = 'code/136-16423hz.c'
source_filename = "code/136-16423hz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"hz-gb2312.html\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [296 x i8] c"<html lang=zh-cn>\0A <head>\0A  <meta http-equiv=\22Content-Type\22 content=\22text/html;charset=hz-gb-2312\22>\0A  <title>HZ</title>\0A  <style>.unused { background: #ccc; } .special { background: #eee; } table { float: left; }</style>\0A </head>\0A <body>\0A  <table><caption>ASCII/CNS-Roman</caption>\0A   <tr><th>  \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"<th>%X\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"\0A   <tr><th>%02X\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"<td class=special>~~\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"<td%s>%c\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c" class=unused\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"\0A  </table>\0A\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"  <table><caption>Multibyte: HZ (Lead %X)</caption>\0A   <tr><th> \00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"<td class=unused>&nbsp;\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"<td>~{%c%c~}\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"\0A </body>\0A</html>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pl = alloca i32, align 4
  %gbk = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %retval, align 4
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %gbk, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %gbk, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %gbk, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([296 x i8], [296 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %gbk, align 8
  %4 = load i32, i32* %i, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 32, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc17, %for.end
  %6 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %6, 128
  br i1 %cmp4, label %for.body5, label %for.end19

for.body5:                                        ; preds = %for.cond3
  %7 = load i32, i32* %i, align 4
  %and = and i32 %7, 15
  %cmp6 = icmp eq i32 0, %and
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %for.body5
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %gbk, align 8
  %9 = load i32, i32* %i, align 4
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %9)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %for.body5
  %10 = load i32, i32* %i, align 4
  %cmp10 = icmp eq i32 126, %10
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end9
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %gbk, align 8
  %call12 = call i32 @fputs(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), %struct._IO_FILE* %11)
  br label %if.end16

if.else:                                          ; preds = %if.end9
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %gbk, align 8
  %13 = load i32, i32* %i, align 4
  %cmp13 = icmp eq i32 127, %13
  %14 = zext i1 %cmp13 to i64
  %cond = select i1 %cmp13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %15 = load i32, i32* %i, align 4
  %conv = trunc i32 %15 to i8
  %conv14 = sext i8 %conv to i32
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %cond, i32 %conv14)
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11
  br label %for.inc17

for.inc17:                                        ; preds = %if.end16
  %16 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %16, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond3, !llvm.loop !6

for.end19:                                        ; preds = %for.cond3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %gbk, align 8
  %call20 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), %struct._IO_FILE* %17)
  store i32 33, i32* %i, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc61, %for.end19
  %18 = load i32, i32* %i, align 4
  %cmp22 = icmp slt i32 %18, 126
  br i1 %cmp22, label %for.body24, label %for.end63

for.body24:                                       ; preds = %for.cond21
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %gbk, align 8
  %20 = load i32, i32* %i, align 4
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.10, i64 0, i64 0), i32 %20)
  store i32 0, i32* %j, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc31, %for.body24
  %21 = load i32, i32* %j, align 4
  %cmp27 = icmp slt i32 %21, 16
  br i1 %cmp27, label %for.body29, label %for.end33

for.body29:                                       ; preds = %for.cond26
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %gbk, align 8
  %23 = load i32, i32* %j, align 4
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  br label %for.inc31

for.inc31:                                        ; preds = %for.body29
  %24 = load i32, i32* %j, align 4
  %inc32 = add nsw i32 %24, 1
  store i32 %inc32, i32* %j, align 4
  br label %for.cond26, !llvm.loop !7

for.end33:                                        ; preds = %for.cond26
  store i32 32, i32* %j, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc57, %for.end33
  %25 = load i32, i32* %j, align 4
  %cmp35 = icmp slt i32 %25, 128
  br i1 %cmp35, label %for.body37, label %for.end59

for.body37:                                       ; preds = %for.cond34
  %26 = load i32, i32* %j, align 4
  %and38 = and i32 %26, 15
  %cmp39 = icmp eq i32 0, %and38
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %for.body37
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %gbk, align 8
  %28 = load i32, i32* %j, align 4
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %28)
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %for.body37
  %29 = load i32, i32* %j, align 4
  %cmp44 = icmp eq i32 32, %29
  br i1 %cmp44, label %if.then48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end43
  %30 = load i32, i32* %j, align 4
  %cmp46 = icmp sgt i32 %30, 126
  br i1 %cmp46, label %if.then48, label %if.else50

if.then48:                                        ; preds = %lor.lhs.false, %if.end43
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %gbk, align 8
  %call49 = call i32 @fputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), %struct._IO_FILE* %31)
  br label %if.end56

if.else50:                                        ; preds = %lor.lhs.false
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %gbk, align 8
  %33 = load i32, i32* %i, align 4
  %conv51 = trunc i32 %33 to i8
  %conv52 = sext i8 %conv51 to i32
  %34 = load i32, i32* %j, align 4
  %conv53 = trunc i32 %34 to i8
  %conv54 = sext i8 %conv53 to i32
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %conv52, i32 %conv54)
  br label %if.end56

if.end56:                                         ; preds = %if.else50, %if.then48
  br label %for.inc57

for.inc57:                                        ; preds = %if.end56
  %35 = load i32, i32* %j, align 4
  %inc58 = add nsw i32 %35, 1
  store i32 %inc58, i32* %j, align 4
  br label %for.cond34, !llvm.loop !8

for.end59:                                        ; preds = %for.cond34
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %gbk, align 8
  %call60 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), %struct._IO_FILE* %36)
  br label %for.inc61

for.inc61:                                        ; preds = %for.end59
  %37 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %37, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond21, !llvm.loop !9

for.end63:                                        ; preds = %for.cond21
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %gbk, align 8
  %call64 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), %struct._IO_FILE* %38)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %gbk, align 8
  %call65 = call i32 @fclose(%struct._IO_FILE* %39)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end63, %if.then
  %40 = load i32, i32* %retval, align 4
  ret i32 %40
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

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
