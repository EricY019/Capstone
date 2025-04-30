; ModuleID = 'code/231-19156big5.c'
source_filename = "code/231-19156big5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"big5-table.html\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [261 x i8] c"<html lang=zh-tw>\0A <head>\0A  <meta http-equiv=\22Content-Type\22 content=\22text/html;charset=big5\22>\0A  <title>Big5</title>\0A  <style>.unused { background: #ccc; } table { float: left; }</style>\0A </head>\0A <body>\0A  <table><caption>ASCII/CNS-Roman</caption>\0A   <tr><th>  \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"<th>%X\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"\0A   <tr><th>%02X\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"<td%s>%c\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c" class=unused\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"\0A  </table>\0A\00", align 1
@.str.9 = private unnamed_addr constant [67 x i8] c"  <table><caption>Multibyte: Big5 (Lead %X)</caption>\0A   <tr><th> \00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"<td class=unused>&nbsp;\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"<td>%c%c\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"\0A </body>\0A</html>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pl = alloca i32, align 4
  %b5 = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %retval, align 4
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %b5, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %b5, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %b5, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([261 x i8], [261 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %b5, align 8
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

for.cond3:                                        ; preds = %for.inc13, %for.end
  %6 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %6, 128
  br i1 %cmp4, label %for.body5, label %for.end15

for.body5:                                        ; preds = %for.cond3
  %7 = load i32, i32* %i, align 4
  %and = and i32 %7, 15
  %cmp6 = icmp eq i32 0, %and
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %for.body5
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %b5, align 8
  %9 = load i32, i32* %i, align 4
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %9)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %for.body5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %b5, align 8
  %11 = load i32, i32* %i, align 4
  %cmp10 = icmp eq i32 127, %11
  %12 = zext i1 %cmp10 to i64
  %cond = select i1 %cmp10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %13 = load i32, i32* %i, align 4
  %conv = trunc i32 %13 to i8
  %conv11 = sext i8 %conv to i32
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %cond, i32 %conv11)
  br label %for.inc13

for.inc13:                                        ; preds = %if.end9
  %14 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %14, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond3, !llvm.loop !6

for.end15:                                        ; preds = %for.cond3
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %b5, align 8
  %call16 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), %struct._IO_FILE* %15)
  store i32 161, i32* %i, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc67, %for.end15
  %16 = load i32, i32* %i, align 4
  %cmp18 = icmp sle i32 %16, 254
  br i1 %cmp18, label %for.body20, label %for.end69

for.body20:                                       ; preds = %for.cond17
  %17 = load i32, i32* %i, align 4
  %cmp21 = icmp eq i32 160, %17
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.body20
  store i32 224, i32* %i, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %for.body20
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %b5, align 8
  %19 = load i32, i32* %i, align 4
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.9, i64 0, i64 0), i32 %19)
  store i32 0, i32* %j, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc31, %if.end24
  %20 = load i32, i32* %j, align 4
  %cmp27 = icmp slt i32 %20, 16
  br i1 %cmp27, label %for.body29, label %for.end33

for.body29:                                       ; preds = %for.cond26
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %b5, align 8
  %22 = load i32, i32* %j, align 4
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  br label %for.inc31

for.inc31:                                        ; preds = %for.body29
  %23 = load i32, i32* %j, align 4
  %inc32 = add nsw i32 %23, 1
  store i32 %inc32, i32* %j, align 4
  br label %for.cond26, !llvm.loop !7

for.end33:                                        ; preds = %for.cond26
  store i32 64, i32* %j, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc63, %for.end33
  %24 = load i32, i32* %j, align 4
  %cmp35 = icmp slt i32 %24, 256
  br i1 %cmp35, label %for.body37, label %for.end65

for.body37:                                       ; preds = %for.cond34
  %25 = load i32, i32* %j, align 4
  %cmp38 = icmp eq i32 128, %25
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %for.body37
  store i32 160, i32* %j, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %for.body37
  %26 = load i32, i32* %j, align 4
  %and42 = and i32 %26, 15
  %cmp43 = icmp eq i32 0, %and42
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.end41
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %b5, align 8
  %28 = load i32, i32* %j, align 4
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %28)
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end41
  %29 = load i32, i32* %j, align 4
  %cmp48 = icmp eq i32 127, %29
  br i1 %cmp48, label %if.then55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end47
  %30 = load i32, i32* %j, align 4
  %cmp50 = icmp eq i32 160, %30
  br i1 %cmp50, label %if.then55, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false
  %31 = load i32, i32* %j, align 4
  %cmp53 = icmp sgt i32 %31, 254
  br i1 %cmp53, label %if.then55, label %if.else

if.then55:                                        ; preds = %lor.lhs.false52, %lor.lhs.false, %if.end47
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %b5, align 8
  %call56 = call i32 @fputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), %struct._IO_FILE* %32)
  br label %if.end62

if.else:                                          ; preds = %lor.lhs.false52
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %b5, align 8
  %34 = load i32, i32* %i, align 4
  %conv57 = trunc i32 %34 to i8
  %conv58 = sext i8 %conv57 to i32
  %35 = load i32, i32* %j, align 4
  %conv59 = trunc i32 %35 to i8
  %conv60 = sext i8 %conv59 to i32
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %conv58, i32 %conv60)
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then55
  br label %for.inc63

for.inc63:                                        ; preds = %if.end62
  %36 = load i32, i32* %j, align 4
  %inc64 = add nsw i32 %36, 1
  store i32 %inc64, i32* %j, align 4
  br label %for.cond34, !llvm.loop !8

for.end65:                                        ; preds = %for.cond34
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %b5, align 8
  %call66 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), %struct._IO_FILE* %37)
  br label %for.inc67

for.inc67:                                        ; preds = %for.end65
  %38 = load i32, i32* %i, align 4
  %inc68 = add nsw i32 %38, 1
  store i32 %inc68, i32* %i, align 4
  br label %for.cond17, !llvm.loop !9

for.end69:                                        ; preds = %for.cond17
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %b5, align 8
  %call70 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), %struct._IO_FILE* %39)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %b5, align 8
  %call71 = call i32 @fclose(%struct._IO_FILE* %40)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end69, %if.then
  %41 = load i32, i32* %retval, align 4
  ret i32 %41
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
