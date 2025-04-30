; ModuleID = 'code/092-33390mutex.c'
source_filename = "code/092-33390mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%union.pthread_mutexattr_t = type { i32 }

@mutex = dso_local global %union.pthread_mutex_t zeroinitializer, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [28 x i8] c"Unable to initialize mutex\0A\00", align 1
@thd_var = dso_local global [10 x i32] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [26 x i8] c"\0A\0AMain Thread Finished.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Unable to acquire lock\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"\0AMutex acquired by Thread %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"1.txt\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"\0AText 1 written by Thread %d\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"\0AText 2 written by Thread %d\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"\0AText 3 written by Thread %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Unable to release mutex\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Mutex released by Thread %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %tid = alloca [10 x i64], align 16
  %attr = alloca %union.pthread_attr_t, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @pthread_mutex_init(%union.pthread_mutex_t* @mutex, %union.pthread_mutexattr_t* null) #4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i32 @pthread_attr_init(%union.pthread_attr_t* %attr) #4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %1, 10
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @thd_var, i64 0, i64 %idxprom
  store i32 %2, i32* %arrayidx, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [10 x i64], [10 x i64]* %tid, i64 0, i64 %idxprom4
  %5 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* @thd_var, i64 0, i64 %idxprom6
  %6 = bitcast i32* %arrayidx7 to i8*
  %call8 = call i32 @pthread_create(i64* %arrayidx5, %union.pthread_attr_t* %attr, i8* (i8*)* @runner, i8* %6) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc15, %for.end
  %8 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %8, 10
  br i1 %cmp10, label %for.body11, label %for.end17

for.body11:                                       ; preds = %for.cond9
  %9 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [10 x i64], [10 x i64]* %tid, i64 0, i64 %idxprom12
  %10 = load i64, i64* %arrayidx13, align 8
  %call14 = call i32 @pthread_join(i64 %10, i8** null)
  br label %for.inc15

for.inc15:                                        ; preds = %for.body11
  %11 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %11, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond9, !llvm.loop !6

for.end17:                                        ; preds = %for.cond9
  %call18 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* @mutex) #4
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %return

return:                                           ; preds = %for.end17, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_attr_init(%union.pthread_attr_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @runner(i8* %param) #0 {
entry:
  %param.addr = alloca i8*, align 8
  %p = alloca i32*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  store i8* %param, i8** %param.addr, align 8
  %0 = load i8*, i8** %param.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %p, align 8
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutex) #4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  call void @_exit(i32 2) #5
  unreachable

if.end:                                           ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %4 = load i32*, i32** %p, align 8
  %5 = load i32, i32* %4, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %5)
  %call3 = call i32 @sleep(i32 1)
  %call4 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store %struct._IO_FILE* %call4, %struct._IO_FILE** %f, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %7 = load i32*, i32** %p, align 8
  %8 = load i32, i32* %7, align 4
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %10 = load i32*, i32** %p, align 8
  %11 = load i32, i32* %10, align 4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %13 = load i32*, i32** %p, align 8
  %14 = load i32, i32* %13, align 4
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call8 = call i32 @fclose(%struct._IO_FILE* %15)
  %call9 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutex) #4
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  call void @_exit(i32 3) #5
  unreachable

if.end13:                                         ; preds = %if.end
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %18 = load i32*, i32** %p, align 8
  %19 = load i32, i32* %18, align 4
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %19)
  %call15 = call i32 @sleep(i32 1)
  call void @pthread_exit(i8* null) #5
  unreachable
}

declare dso_local i32 @pthread_join(i64, i8**) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

; Function Attrs: noreturn
declare dso_local void @_exit(i32) #3

declare dso_local i32 @sleep(i32) #2

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: noreturn
declare dso_local void @pthread_exit(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
