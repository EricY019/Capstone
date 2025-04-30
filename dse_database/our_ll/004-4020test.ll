; ModuleID = 'code/004-4020test.c'
source_filename = "code/004-4020test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._buffer_list = type { i8*, %struct._buffer_list* }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@bufs1 = dso_local global %struct._buffer_list* null, align 8
@buf_lock1 = dso_local global %union.pthread_mutex_t zeroinitializer, align 8
@perf_ctr1 = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @makeData1(i64 %s) #0 {
entry:
  %s.addr = alloca i64, align 8
  store i64 %s, i64* %s.addr, align 8
  %0 = load i64, i64* %s.addr, align 8
  %call = call noalias align 16 i8* @malloc(i64 %0) #3
  ret i8* %call
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._buffer_list* @makeList1(i32 %num) #0 {
entry:
  %num.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %result = alloca %struct._buffer_list*, align 8
  %next = alloca %struct._buffer_list*, align 8
  store i32 %num, i32* %num.addr, align 4
  store %struct._buffer_list* null, %struct._buffer_list** %result, align 8
  store %struct._buffer_list* null, %struct._buffer_list** %next, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %num.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %2 = bitcast i8* %call to %struct._buffer_list*
  store %struct._buffer_list* %2, %struct._buffer_list** %next, align 8
  %3 = load %struct._buffer_list*, %struct._buffer_list** %result, align 8
  %4 = load %struct._buffer_list*, %struct._buffer_list** %next, align 8
  %next1 = getelementptr inbounds %struct._buffer_list, %struct._buffer_list* %4, i32 0, i32 1
  store %struct._buffer_list* %3, %struct._buffer_list** %next1, align 8
  %5 = load %struct._buffer_list*, %struct._buffer_list** %next, align 8
  store %struct._buffer_list* %5, %struct._buffer_list** %result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %7 = load %struct._buffer_list*, %struct._buffer_list** %result, align 8
  ret %struct._buffer_list* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @produce1() #0 {
entry:
  %i = alloca i32, align 4
  %result = alloca i32*, align 8
  %call = call noalias align 16 i8* @malloc(i64 400) #3
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %result, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load i32*, i32** %result, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  store i32 %2, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %6 = load i32*, i32** %result, align 8
  ret i32* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @consume1(i32* %data) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8
  %0 = load i32*, i32** %data.addr, align 8
  %cmp = icmp ne i32* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %1, 100
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %data.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @thread_producer1(i8* %ignore) #0 {
entry:
  %ignore.addr = alloca i8*, align 8
  %px = alloca %struct._buffer_list*, align 8
  %t = alloca i32*, align 8
  store i8* %ignore, i8** %ignore.addr, align 8
  %0 = load %struct._buffer_list*, %struct._buffer_list** @bufs1, align 8
  store %struct._buffer_list* %0, %struct._buffer_list** %px, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct._buffer_list*, %struct._buffer_list** %px, align 8
  %cmp = icmp ne %struct._buffer_list* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @buf_lock1) #3
  %call1 = call i8* @makeData1(i64 8)
  %2 = load %struct._buffer_list*, %struct._buffer_list** %px, align 8
  %data = getelementptr inbounds %struct._buffer_list, %struct._buffer_list* %2, i32 0, i32 0
  store i8* %call1, i8** %data, align 8
  %3 = load i32, i32* @perf_ctr1, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @perf_ctr1, align 4
  %call2 = call i32* @produce1()
  store i32* %call2, i32** %t, align 8
  %4 = load i32*, i32** %t, align 8
  %5 = load %struct._buffer_list*, %struct._buffer_list** %px, align 8
  %data3 = getelementptr inbounds %struct._buffer_list, %struct._buffer_list* %5, i32 0, i32 0
  %6 = load i8*, i8** %data3, align 8
  %7 = bitcast i8* %6 to i32**
  store i32* %4, i32** %7, align 8
  %call4 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @buf_lock1) #3
  %8 = load %struct._buffer_list*, %struct._buffer_list** %px, align 8
  %next = getelementptr inbounds %struct._buffer_list, %struct._buffer_list* %8, i32 0, i32 1
  %9 = load %struct._buffer_list*, %struct._buffer_list** %next, align 8
  store %struct._buffer_list* %9, %struct._buffer_list** %px, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  ret i8* null
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @thread_consumer1(i8* %ignore) #0 {
entry:
  %ignore.addr = alloca i8*, align 8
  %cx = alloca %struct._buffer_list*, align 8
  store i8* %ignore, i8** %ignore.addr, align 8
  store i32 0, i32* @perf_ctr1, align 4
  %0 = load %struct._buffer_list*, %struct._buffer_list** @bufs1, align 8
  store %struct._buffer_list* %0, %struct._buffer_list** %cx, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct._buffer_list*, %struct._buffer_list** %cx, align 8
  %cmp = icmp ne %struct._buffer_list* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @buf_lock1) #3
  %2 = load %struct._buffer_list*, %struct._buffer_list** %cx, align 8
  %data = getelementptr inbounds %struct._buffer_list, %struct._buffer_list* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %cmp1 = icmp ne i8* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load %struct._buffer_list*, %struct._buffer_list** %cx, align 8
  %data2 = getelementptr inbounds %struct._buffer_list, %struct._buffer_list* %4, i32 0, i32 0
  %5 = load i8*, i8** %data2, align 8
  %6 = bitcast i8* %5 to i32**
  %7 = load i32*, i32** %6, align 8
  call void @consume1(i32* %7)
  %8 = load %struct._buffer_list*, %struct._buffer_list** %cx, align 8
  %data3 = getelementptr inbounds %struct._buffer_list, %struct._buffer_list* %8, i32 0, i32 0
  %9 = load i8*, i8** %data3, align 8
  call void @free(i8* %9) #3
  %10 = load %struct._buffer_list*, %struct._buffer_list** %cx, align 8
  %data4 = getelementptr inbounds %struct._buffer_list, %struct._buffer_list* %10, i32 0, i32 0
  store i8* null, i8** %data4, align 8
  %11 = load %struct._buffer_list*, %struct._buffer_list** %cx, align 8
  %next = getelementptr inbounds %struct._buffer_list, %struct._buffer_list* %11, i32 0, i32 1
  %12 = load %struct._buffer_list*, %struct._buffer_list** %next, align 8
  store %struct._buffer_list* %12, %struct._buffer_list** %cx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %call5 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @buf_lock1) #3
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  ret i8* null
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %thr0 = alloca i64, align 8
  %thr1 = alloca i64, align 8
  %thr2 = alloca i64, align 8
  %thr3 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 @pthread_mutex_init(%union.pthread_mutex_t* @buf_lock1, %union.pthread_mutexattr_t* null) #3
  %call1 = call %struct._buffer_list* @makeList1(i32 1000)
  store %struct._buffer_list* %call1, %struct._buffer_list** @bufs1, align 8
  %call2 = call i32 @pthread_create(i64* %thr0, %union.pthread_attr_t* null, i8* (i8*)* @thread_consumer1, i8* null) #3
  %call3 = call i32 @pthread_create(i64* %thr1, %union.pthread_attr_t* null, i8* (i8*)* @thread_producer1, i8* null) #3
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

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
!9 = distinct !{!9, !5}
