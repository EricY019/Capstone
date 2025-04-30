; ModuleID = 'code/193-23996dos2mac.c'
source_filename = "code/193-23996dos2mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"DOS2MAC.TMP\00", align 1
@szTempFile = dso_local global i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), align 8
@stdin = external dso_local global %struct._IO_FILE*, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %fpIn = alloca %struct._IO_FILE*, align 8
  %fpOut = alloca %struct._IO_FILE*, align 8
  %nChar = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %fpIn, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %fpOut, align 8
  br label %if.end14

if.else:                                          ; preds = %entry
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fpIn, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fpIn, align 8
  %cmp1 = icmp eq %struct._IO_FILE* %5, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  %6 = load i32, i32* %argc.addr, align 4
  %cmp3 = icmp slt i32 %6, 3
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.end
  %7 = load i8*, i8** @szTempFile, align 8
  %call5 = call %struct._IO_FILE* @fopen(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %fpOut, align 8
  br label %if.end9

if.else6:                                         ; preds = %if.end
  %8 = load i8**, i8*** %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %8, i64 2
  %9 = load i8*, i8** %arrayidx7, align 8
  %call8 = call %struct._IO_FILE* @fopen(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %call8, %struct._IO_FILE** %fpOut, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else6, %if.then4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fpOut, align 8
  %cmp10 = icmp eq %struct._IO_FILE* %10, null
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fpIn, align 8
  %call12 = call i32 @fclose(%struct._IO_FILE* %11)
  store i32 1, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end9
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end20, %if.end14
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fpIn, align 8
  %call15 = call i32 @fgetc(%struct._IO_FILE* %12)
  store i32 %call15, i32* %nChar, align 4
  %cmp16 = icmp ne i32 %call15, -1
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i32, i32* %nChar, align 4
  %cmp17 = icmp ne i32 %13, 10
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %while.body
  %14 = load i32, i32* %nChar, align 4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fpOut, align 8
  %call19 = call i32 @fputc(i32 %14, %struct._IO_FILE* %15)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %while.body
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* %argc.addr, align 4
  %cmp21 = icmp sgt i32 %16, 1
  br i1 %cmp21, label %if.then22, label %if.end32

if.then22:                                        ; preds = %while.end
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fpIn, align 8
  %call23 = call i32 @fclose(%struct._IO_FILE* %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fpOut, align 8
  %call24 = call i32 @fclose(%struct._IO_FILE* %18)
  %19 = load i32, i32* %argc.addr, align 4
  %cmp25 = icmp slt i32 %19, 3
  br i1 %cmp25, label %if.then26, label %if.end31

if.then26:                                        ; preds = %if.then22
  %20 = load i8**, i8*** %argv.addr, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %20, i64 1
  %21 = load i8*, i8** %arrayidx27, align 8
  %call28 = call i32 @remove(i8* %21) #3
  %22 = load i8*, i8** @szTempFile, align 8
  %23 = load i8**, i8*** %argv.addr, align 8
  %arrayidx29 = getelementptr inbounds i8*, i8** %23, i64 1
  %24 = load i8*, i8** %arrayidx29, align 8
  %call30 = call i32 @rename(i8* %22, i8* %24) #3
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.then22
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %while.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.then11, %if.then2
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

declare dso_local i32 @fgetc(%struct._IO_FILE*) #1

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local i32 @remove(i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @rename(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
