; ModuleID = 'code/190-4874ex6.c'
source_filename = "code/190-4874ex6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timespec = type { i64, i64 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [30 x i8] c"status = %d, count = %lu: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"count = %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %count = alloca i64, align 8
  %ts = alloca %struct.timespec, align 8
  %thread = alloca i64, align 8
  %status = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %ts, i32 0, i32 0
  store i64 0, i64* %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %ts, i32 0, i32 1
  store i64 10000, i64* %tv_nsec, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @setvbuf(%struct._IO_FILE* %0, i8* null, i32 2, i64 0) #4
  store i64 0, i64* %count, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %count, align 8
  %cmp = icmp ult i64 %1, 2000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 @pthread_create(i64* %thread, %union.pthread_attr_t* null, i8* (i8*)* @test_thread, i8* null) #4
  store i32 %call1, i32* %status, align 4
  %2 = load i32, i32* %status, align 4
  %cmp2 = icmp ne i32 %2, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %status, align 4
  %4 = load i64, i64* %count, align 8
  %call3 = call i32* @__errno_location() #5
  %5 = load i32, i32* %call3, align 4
  %call4 = call i8* @strerror(i32 %5) #4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %3, i64 %4, i8* %call4)
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %for.body
  %6 = load i64, i64* %count, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.else
  %7 = load i64, i64* %thread, align 8
  %call7 = call i32 @pthread_join(i64 %7, i8** null)
  %call8 = call i32 @nanosleep(%struct.timespec* %ts, %struct.timespec* null)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i64, i64* %count, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %count, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind
declare dso_local i32 @setvbuf(%struct._IO_FILE*, i8*, i32, i64) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_thread(i8* %v_param) #0 {
entry:
  %v_param.addr = alloca i8*, align 8
  store i8* %v_param, i8** %v_param.addr, align 8
  ret i8* null
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #3

declare dso_local i32 @pthread_join(i64, i8**) #2

declare dso_local i32 @nanosleep(%struct.timespec*, %struct.timespec*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
