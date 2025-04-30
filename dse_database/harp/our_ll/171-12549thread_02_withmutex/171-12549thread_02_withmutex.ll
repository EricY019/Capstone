; ModuleID = 'code/171-12549thread_02_withmutex.c'
source_filename = "code/171-12549thread_02_withmutex.c"
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
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"\0A End of the thread A\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"\0A End of the thread C\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"\0A Thread B is waiting for thread C\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"\0A End of the thread B\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c" Creation of the thread A\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c" Creation of the thread B\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"The main thread is waiting for A and B to finish\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @display(i32 %n, i8 signext %letter) #0 {
entry:
  %n.addr = alloca i32, align 4
  %letter.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i8 %letter, i8* %letter.addr, align 1
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutex) #4
  store i32 1, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %2, 100000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  %4 = load i8, i8* %letter.addr, align 1
  %conv = sext i8 %4 to i32
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %conv)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call5 = call i32 @fflush(%struct._IO_FILE* %5)
  %call6 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutex) #4
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %6 = load i32, i32* %j, align 4
  %inc8 = add nsw i32 %6, 1
  store i32 %inc8, i32* %j, align 4
  br label %for.cond, !llvm.loop !6

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @threadA(i8* %unused) #0 {
entry:
  %unused.addr = alloca i8*, align 8
  store i8* %unused, i8** %unused.addr, align 8
  call void @display(i32 100, i8 signext 65)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %0)
  call void @pthread_exit(i8* null) #5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @pthread_exit(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @threadC(i8* %unused) #0 {
entry:
  %unused.addr = alloca i8*, align 8
  store i8* %unused, i8** %unused.addr, align 8
  call void @display(i32 150, i8 signext 67)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %0)
  call void @pthread_exit(i8* null) #5
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @threadB(i8* %unused) #0 {
entry:
  %unused.addr = alloca i8*, align 8
  %thC = alloca i64, align 8
  store i8* %unused, i8** %unused.addr, align 8
  %call = call i32 @pthread_create(i64* %thC, %union.pthread_attr_t* null, i8* (i8*)* @threadC, i8* null) #4
  call void @display(i32 100, i8 signext 66)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %0 = load i64, i64* %thC, align 8
  %call2 = call i32 @pthread_join(i64 %0, i8** null)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call4 = call i32 @fflush(%struct._IO_FILE* %1)
  call void @pthread_exit(i8* null) #5
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

declare dso_local i32 @pthread_join(i64, i8**) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %thA = alloca i64, align 8
  %thB = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  %call = call i32 @pthread_mutex_init(%union.pthread_mutex_t* @mutex, %union.pthread_mutexattr_t* null) #4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %call2 = call i32 @pthread_create(i64* %thA, %union.pthread_attr_t* null, i8* (i8*)* @threadA, i8* null) #4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %call4 = call i32 @pthread_create(i64* %thB, %union.pthread_attr_t* null, i8* (i8*)* @threadB, i8* null) #4
  %call5 = call i32 @sleep(i32 1)
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0))
  %0 = load i64, i64* %thA, align 8
  %call7 = call i32 @pthread_join(i64 %0, i8** null)
  %1 = load i64, i64* %thB, align 8
  %call8 = call i32 @pthread_join(i64 %1, i8** null)
  call void @pthread_exit(i8* null) #5
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #1

declare dso_local i32 @sleep(i32) #2

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
