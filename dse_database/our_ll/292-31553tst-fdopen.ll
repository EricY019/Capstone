; ModuleID = 'code/292-31553tst-fdopen.c'
source_filename = "code/292-31553tst-fdopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"test failed: fp != NULL\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"foobar and baz\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"test failed: fd != -1\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"test failed: lseek (fd, 5, SEEK_SET) == 5\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"test failed: getc (fp) == 'r'\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"test failed: getc (fp) == ' '\0A\00", align 1
@buffer = dso_local global [256 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %name = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %retval1 = alloca i32, align 4
  %fd = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  store i32 0, i32* %retval1, align 4
  %call = call i8* @tmpnam(i8* null) #3
  store i8* %call, i8** %name, align 8
  %0 = load i8*, i8** %name, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %fp, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp = icmp ne %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct._IO_FILE* %2)
  store i32 1, i32* %retval1, align 4
  br label %the_end

if.end:                                           ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call5 = call i32 @fclose(%struct._IO_FILE* %4)
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  %5 = load i8*, i8** %name, align 8
  %call6 = call i32 (i8*, i32, ...) @open(i8* %5, i32 0)
  store i32 %call6, i32* %fd, align 4
  %6 = load i32, i32* %fd, align 4
  %cmp7 = icmp ne i32 %6, -1
  br i1 %cmp7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call9 = call i32 @fputs(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* %7)
  store i32 1, i32* %retval1, align 4
  br label %the_end

if.end10:                                         ; preds = %if.end
  %8 = load i32, i32* %fd, align 4
  %call11 = call i64 @lseek(i32 %8, i64 5, i32 0) #3
  %cmp12 = icmp eq i64 %call11, 5
  br i1 %cmp12, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end10
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call14 = call i32 @fputs(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* %9)
  store i32 1, i32* %retval1, align 4
  br label %the_end

if.end15:                                         ; preds = %if.end10
  %10 = load i32, i32* %fd, align 4
  %call16 = call %struct._IO_FILE* @fdopen(i32 %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #3
  store %struct._IO_FILE* %call16, %struct._IO_FILE** %fp, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp17 = icmp ne %struct._IO_FILE* %11, null
  br i1 %cmp17, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end15
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call19 = call i32 @fputs(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct._IO_FILE* %12)
  store i32 1, i32* %retval1, align 4
  br label %the_end

if.end20:                                         ; preds = %if.end15
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call21 = call i32 @_IO_getc(%struct._IO_FILE* %13)
  %cmp22 = icmp eq i32 %call21, 114
  br i1 %cmp22, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end20
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call24 = call i32 @fputs(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), %struct._IO_FILE* %14)
  store i32 1, i32* %retval1, align 4
  br label %the_end

if.end25:                                         ; preds = %if.end20
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call26 = call i32 @_IO_getc(%struct._IO_FILE* %15)
  %cmp27 = icmp eq i32 %call26, 32
  br i1 %cmp27, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end25
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call29 = call i32 @fputs(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), %struct._IO_FILE* %16)
  store i32 1, i32* %retval1, align 4
  br label %the_end

if.end30:                                         ; preds = %if.end25
  br label %the_end

the_end:                                          ; preds = %if.end30, %if.then28, %if.then23, %if.then18, %if.then13, %if.then8, %if.then
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp31 = icmp ne %struct._IO_FILE* %17, null
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %the_end
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call33 = call i32 @fclose(%struct._IO_FILE* %18)
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %the_end
  %19 = load i8*, i8** %name, align 8
  %call35 = call i32 @unlink(i8* %19) #3
  %20 = load i32, i32* %retval1, align 4
  ret i32 %20
}

; Function Attrs: nounwind
declare dso_local i8* @tmpnam(i8*) #1

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

declare dso_local i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind
declare dso_local i64 @lseek(i32, i64, i32) #1

; Function Attrs: nounwind
declare dso_local %struct._IO_FILE* @fdopen(i32, i8*) #1

declare dso_local i32 @_IO_getc(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i32 @unlink(i8*) #1

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
