; ModuleID = 'code/124-24511bounded_notify.c'
source_filename = "code/124-24511bounded_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_cond_t = type { %struct.anon }
%struct.anon = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@duration = dso_local global i32 20, align 4
@length = dso_local global i32 0, align 4
@mutex = dso_local global %union.pthread_mutex_t zeroinitializer, align 8
@.str = private unnamed_addr constant [25 x i8] c"Producer %s buffer full\0A\00", align 1
@cond = dso_local global %union.pthread_cond_t zeroinitializer, align 8
@buffer = dso_local global [10 x i32] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [23 x i8] c"Producer %s length %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Consumer %s buffer empty\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Consumer %s value %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Consumer %s buffer no longer full\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @producer(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %str = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  store i8* %0, i8** %str, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @duration, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutex) #3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %3 = load i32, i32* @length, align 4
  %cmp1 = icmp eq i32 %3, 10
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %str, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %4)
  %call3 = call i32 @pthread_cond_wait(%union.pthread_cond_t* @cond, %union.pthread_mutex_t* @mutex)
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* @length, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @buffer, i64 0, i64 %idxprom
  store i32 %5, i32* %arrayidx, align 4
  %7 = load i32, i32* @length, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* @length, align 4
  %8 = load i8*, i8** %str, align 8
  %9 = load i32, i32* @length, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %8, i32 %9)
  %call5 = call i32 @pthread_cond_signal(%union.pthread_cond_t* @cond) #3
  %call6 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutex) #3
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %10 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %10, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i8* null
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_cond_signal(%union.pthread_cond_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @consumer(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %str = alloca i8*, align 8
  %i = alloca i32, align 4
  %temp = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  store i8* %0, i8** %str, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @duration, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutex) #3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %3 = load i32, i32* @length, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %str, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %4)
  %call3 = call i32 @pthread_cond_wait(%union.pthread_cond_t* @cond, %union.pthread_mutex_t* @mutex)
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* @length, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* @length, align 4
  %6 = load i32, i32* @length, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @buffer, i64 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  store i32 %7, i32* %temp, align 4
  %8 = load i8*, i8** %str, align 8
  %9 = load i32, i32* %temp, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %8, i32 %9)
  %10 = load i32, i32* @length, align 4
  %add = add nsw i32 %10, 1
  %cmp5 = icmp eq i32 %add, 10
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %11 = load i8*, i8** %str, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %11)
  %call7 = call i32 @pthread_cond_signal(%union.pthread_cond_t* @cond) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %call8 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutex) #3
  %call9 = call i32 @usleep(i32 3)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret i8* null
}

declare dso_local i32 @usleep(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %producer_thread = alloca i64, align 8
  %producer_thread2 = alloca i64, align 8
  %consumer_thread = alloca i64, align 8
  %consumer_thread2 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 @pthread_mutex_init(%union.pthread_mutex_t* @mutex, %union.pthread_mutexattr_t* null) #3
  %call1 = call i32 @pthread_create(i64* %producer_thread, %union.pthread_attr_t* null, i8* (i8*)* @producer, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #3
  %call2 = call i32 @pthread_create(i64* %producer_thread2, %union.pthread_attr_t* null, i8* (i8*)* @producer, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #3
  %call3 = call i32 @pthread_create(i64* %consumer_thread, %union.pthread_attr_t* null, i8* (i8*)* @consumer, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #3
  %call4 = call i32 @pthread_create(i64* %consumer_thread2, %union.pthread_attr_t* null, i8* (i8*)* @consumer, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #3
  %0 = load i64, i64* %producer_thread, align 8
  %call5 = call i32 @pthread_join(i64 %0, i8** null)
  %1 = load i64, i64* %producer_thread2, align 8
  %call6 = call i32 @pthread_join(i64 %1, i8** null)
  %2 = load i64, i64* %consumer_thread, align 8
  %call7 = call i32 @pthread_join(i64 %2, i8** null)
  %3 = load i64, i64* %consumer_thread2, align 8
  %call8 = call i32 @pthread_join(i64 %3, i8** null)
  %call9 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* @mutex) #3
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

declare dso_local i32 @pthread_join(i64, i8**) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #1

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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
