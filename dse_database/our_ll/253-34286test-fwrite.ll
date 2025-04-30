; ModuleID = 'code/253-34286test-fwrite.c'
source_filename = "code/253-34286test-fwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"tmpfile\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"line\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"fputs\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"fwrite\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"getline\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Lines differ.  Test FAILED!\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"fread\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Buffers differ.  Test FAILED!\00", align 1
@.str.8 = private unnamed_addr constant [214 x i8] c"GDB is free software and you are welcome to distribute copies of it\0A under certain conditions; type \22show copying\22 to see the conditions.\0AThere is absolutely no warranty for GDB; type \22show warranty\22 for details.\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Test succeeded.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %obuf = alloca [99999 x i8], align 16
  %ibuf = alloca [99999 x i8], align 16
  %line = alloca i8*, align 8
  %linesz = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call %struct._IO_FILE* @tmpfile()
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct._IO_FILE* %1)
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [99999 x i8], [99999 x i8]* %obuf, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay, i8 122, i64 99999, i1 false)
  %arraydecay4 = getelementptr inbounds [99999 x i8], [99999 x i8]* %ibuf, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay4, i8 121, i64 99999, i1 false)
  %arraydecay5 = getelementptr inbounds [99999 x i8], [99999 x i8]* %obuf, i64 0, i64 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call6 = call i64 @fwrite(i8* %arraydecay5, i64 99999, i64 1, %struct._IO_FILE* %2)
  %cmp7 = icmp ne i64 %call6, 1
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end3
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end3
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  call void @rewind(%struct._IO_FILE* %3)
  store i8* null, i8** %line, align 8
  store i64 0, i64* %linesz, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call10 = call i64 @getline(i8** %line, i64* %linesz, %struct._IO_FILE* %4)
  %cmp11 = icmp ne i64 %call10, 5
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end9
  %5 = load i8*, i8** %line, align 8
  %call14 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #4
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  %call17 = call i32 @puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end13
  %arraydecay19 = getelementptr inbounds [99999 x i8], [99999 x i8]* %ibuf, i64 0, i64 0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call20 = call i64 @fread(i8* %arraydecay19, i64 99999, i64 1, %struct._IO_FILE* %6)
  %cmp21 = icmp ne i64 %call20, 1
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end18
  %arraydecay24 = getelementptr inbounds [99999 x i8], [99999 x i8]* %ibuf, i64 0, i64 0
  %arraydecay25 = getelementptr inbounds [99999 x i8], [99999 x i8]* %obuf, i64 0, i64 0
  %call26 = call i32 @memcmp(i8* %arraydecay24, i8* %arraydecay25, i64 99999) #4
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end23
  %call29 = call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end23
  %call31 = call i32 (i8**, i8*, ...) bitcast (i32 (...)* @asprintf to i32 (i8**, i8*, ...)*)(i8** %line, i8* getelementptr inbounds ([214 x i8], [214 x i8]* @.str.8, i64 0, i64 0))
  %call32 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end30, %if.then28, %if.then22, %if.then16, %if.then12, %if.then8, %if.then2, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

declare dso_local %struct._IO_FILE* @tmpfile() #1

declare dso_local void @perror(i8*) #1

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare dso_local void @rewind(%struct._IO_FILE*) #1

declare dso_local i64 @getline(i8**, i64*, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #3

declare dso_local i32 @puts(i8*) #1

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8*, i8*, i64) #3

declare dso_local i32 @asprintf(...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
