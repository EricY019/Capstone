; ModuleID = 'code/067-12159clock_get_test.c'
source_filename = "code/067-12159clock_get_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"Current definition for %s is \22%s\22.\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"CLOCK_REALTIME\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"CLOCK_MONOTONIC\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"CLOCK_PROCESS_CPUTIME_ID\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"CLOCK_THREAD_CPUTIME_ID\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"%30s: %lld.%09lu\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"clock_getres on realtime clock failed\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Realtime clock resolution\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"clock_getres on monotonic clock failed\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Monotonic clock resolution\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"clock_gettime on realtime clock failed\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"Realtime clock value\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"clock_gettime on monotonic clock failed\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Monotonic clock value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ShowCurrentDefinitions() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body1

do.body1:                                         ; preds = %do.end
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %do.end3

do.end3:                                          ; preds = %do.body1
  br label %do.body4

do.body4:                                         ; preds = %do.end3
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %do.end6

do.end6:                                          ; preds = %do.body4
  br label %do.body7

do.body7:                                         ; preds = %do.end6
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %do.end9

do.end9:                                          ; preds = %do.body7
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TimeTest(i32 (i32, %struct.timespec*)* %func, i32 %clk_id, i8* %error_string, i8* %success_name) #0 {
entry:
  %retval = alloca i32, align 4
  %func.addr = alloca i32 (i32, %struct.timespec*)*, align 8
  %clk_id.addr = alloca i32, align 4
  %error_string.addr = alloca i8*, align 8
  %success_name.addr = alloca i8*, align 8
  %ts = alloca %struct.timespec, align 8
  store i32 (i32, %struct.timespec*)* %func, i32 (i32, %struct.timespec*)** %func.addr, align 8
  store i32 %clk_id, i32* %clk_id.addr, align 4
  store i8* %error_string, i8** %error_string.addr, align 8
  store i8* %success_name, i8** %success_name.addr, align 8
  %0 = load i32 (i32, %struct.timespec*)*, i32 (i32, %struct.timespec*)** %func.addr, align 8
  %1 = load i32, i32* %clk_id.addr, align 4
  %call = call i32 %0(i32 %1, %struct.timespec* %ts)
  %cmp = icmp ne i32 0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** %error_string.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %3)
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %success_name.addr, align 8
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %ts, i32 0, i32 0
  %5 = load i64, i64* %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %ts, i32 0, i32 1
  %6 = load i64, i64* %tv_nsec, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* %4, i64 %5, i64 %6)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %errs = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %errs, align 4
  call void @ShowCurrentDefinitions()
  %call = call i32 @TimeTest(i32 (i32, %struct.timespec*)* @clock_getres, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  %0 = load i32, i32* %errs, align 4
  %add = add nsw i32 %0, %call
  store i32 %add, i32* %errs, align 4
  %call1 = call i32 @TimeTest(i32 (i32, %struct.timespec*)* @clock_getres, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  %1 = load i32, i32* %errs, align 4
  %add2 = add nsw i32 %1, %call1
  store i32 %add2, i32* %errs, align 4
  %call3 = call i32 @TimeTest(i32 (i32, %struct.timespec*)* @clock_gettime, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  %2 = load i32, i32* %errs, align 4
  %add4 = add nsw i32 %2, %call3
  store i32 %add4, i32* %errs, align 4
  %call5 = call i32 @TimeTest(i32 (i32, %struct.timespec*)* @clock_gettime, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  %3 = load i32, i32* %errs, align 4
  %add6 = add nsw i32 %3, %call5
  store i32 %add6, i32* %errs, align 4
  %4 = load i32, i32* %errs, align 4
  ret i32 %4
}

; Function Attrs: nounwind
declare dso_local i32 @clock_getres(i32, %struct.timespec*) #2

; Function Attrs: nounwind
declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
