; ModuleID = 'code/079-31705condvar-broadcast.c'
source_filename = "code/079-31705condvar-broadcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_cond_t = type { %struct.anon }
%struct.anon = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_condattr_t = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@avail = dso_local global i32 0, align 4
@consumed = dso_local global i32 0, align 4
@mutex = dso_local global %union.pthread_mutex_t zeroinitializer, align 8
@.str = private unnamed_addr constant [36 x i8] c"PRODUCED: thread %d pid: %d val %d\0A\00", align 1
@cond = dso_local global %union.pthread_cond_t zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"CONSUMED: thread %d pid %d val %d consumed %d\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"condvar_broadcast: SUCCEEDED\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"condvar_broadcast: FAILED, consumed %d, avail %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pause_thread(i32 %pause_count) #0 {
entry:
  %pause_count.addr = alloca i32, align 4
  %total = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %pause_count, i32* %pause_count.addr, align 4
  store i32 0, i32* %total, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %pause_count.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %total, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %total, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc1 = add nsw i32 %3, 1
  store i32 %inc1, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %total, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @produce(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %id = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %id, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @pause_thread(i32 5000000)
  %call1 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutex) #3
  %4 = load i32, i32* @avail, align 4
  %add = add nsw i32 %4, 5
  store i32 %add, i32* @avail, align 4
  %5 = load i32, i32* %id, align 4
  %call2 = call i32 @getpid() #3
  %6 = load i32, i32* @avail, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %call2, i32 %6)
  %call4 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutex) #3
  %call5 = call i32 @pthread_cond_broadcast(%union.pthread_cond_t* @cond) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i8* null
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @getpid() #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_cond_broadcast(%union.pthread_cond_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @consume(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %id = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %id, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @pause_thread(i32 1000)
  %call1 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutex) #3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %4 = load i32, i32* @avail, align 4
  %cmp2 = icmp sle i32 %4, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call i32 @pthread_cond_wait(%union.pthread_cond_t* @cond, %union.pthread_mutex_t* @mutex)
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* @avail, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* @avail, align 4
  %6 = load i32, i32* @consumed, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @consumed, align 4
  %7 = load i32, i32* %id, align 4
  %call4 = call i32 @getpid() #3
  %8 = load i32, i32* @avail, align 4
  %9 = load i32, i32* @consumed, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %7, i32 %call4, i32 %8, i32 %9)
  %call6 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutex) #3
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %10 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %10, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret i8* null
}

declare dso_local i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %producers = alloca [1 x i64], align 8
  %producer_ids = alloca [1 x i32], align 4
  %i = alloca i32, align 4
  %consumers = alloca [5 x i64], align 16
  %consumer_ids = alloca [5 x i32], align 16
  %i7 = alloca i32, align 4
  %i21 = alloca i32, align 4
  %i31 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @pthread_mutex_init(%union.pthread_mutex_t* @mutex, %union.pthread_mutexattr_t* null) #3
  %call1 = call i32 @pthread_cond_init(%union.pthread_cond_t* @cond, %union.pthread_condattr_t* null) #3
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1 x i32], [1 x i32]* %producer_ids, i64 0, i64 %idxprom
  store i32 %1, i32* %arrayidx, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [1 x i64], [1 x i64]* %producers, i64 0, i64 %idxprom2
  %4 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [1 x i32], [1 x i32]* %producer_ids, i64 0, i64 %idxprom4
  %5 = bitcast i32* %arrayidx5 to i8*
  %call6 = call i32 @pthread_create(i64* %arrayidx3, %union.pthread_attr_t* null, i8* (i8*)* @produce, i8* %5) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i7, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc18, %for.end
  %7 = load i32, i32* %i7, align 4
  %cmp9 = icmp slt i32 %7, 5
  br i1 %cmp9, label %for.body10, label %for.end20

for.body10:                                       ; preds = %for.cond8
  %8 = load i32, i32* %i7, align 4
  %add = add nsw i32 %8, 1
  %9 = load i32, i32* %i7, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [5 x i32], [5 x i32]* %consumer_ids, i64 0, i64 %idxprom11
  store i32 %add, i32* %arrayidx12, align 4
  %10 = load i32, i32* %i7, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [5 x i64], [5 x i64]* %consumers, i64 0, i64 %idxprom13
  %11 = load i32, i32* %i7, align 4
  %idxprom15 = sext i32 %11 to i64
  %arrayidx16 = getelementptr inbounds [5 x i32], [5 x i32]* %consumer_ids, i64 0, i64 %idxprom15
  %12 = bitcast i32* %arrayidx16 to i8*
  %call17 = call i32 @pthread_create(i64* %arrayidx14, %union.pthread_attr_t* null, i8* (i8*)* @consume, i8* %12) #3
  br label %for.inc18

for.inc18:                                        ; preds = %for.body10
  %13 = load i32, i32* %i7, align 4
  %inc19 = add nsw i32 %13, 1
  store i32 %inc19, i32* %i7, align 4
  br label %for.cond8, !llvm.loop !10

for.end20:                                        ; preds = %for.cond8
  store i32 0, i32* %i21, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc28, %for.end20
  %14 = load i32, i32* %i21, align 4
  %cmp23 = icmp slt i32 %14, 1
  br i1 %cmp23, label %for.body24, label %for.end30

for.body24:                                       ; preds = %for.cond22
  %15 = load i32, i32* %i21, align 4
  %idxprom25 = sext i32 %15 to i64
  %arrayidx26 = getelementptr inbounds [1 x i64], [1 x i64]* %producers, i64 0, i64 %idxprom25
  %16 = load i64, i64* %arrayidx26, align 8
  %call27 = call i32 @pthread_join(i64 %16, i8** null)
  br label %for.inc28

for.inc28:                                        ; preds = %for.body24
  %17 = load i32, i32* %i21, align 4
  %inc29 = add nsw i32 %17, 1
  store i32 %inc29, i32* %i21, align 4
  br label %for.cond22, !llvm.loop !11

for.end30:                                        ; preds = %for.cond22
  store i32 0, i32* %i31, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc38, %for.end30
  %18 = load i32, i32* %i31, align 4
  %cmp33 = icmp slt i32 %18, 5
  br i1 %cmp33, label %for.body34, label %for.end40

for.body34:                                       ; preds = %for.cond32
  %19 = load i32, i32* %i31, align 4
  %idxprom35 = sext i32 %19 to i64
  %arrayidx36 = getelementptr inbounds [5 x i64], [5 x i64]* %consumers, i64 0, i64 %idxprom35
  %20 = load i64, i64* %arrayidx36, align 8
  %call37 = call i32 @pthread_join(i64 %20, i8** null)
  br label %for.inc38

for.inc38:                                        ; preds = %for.body34
  %21 = load i32, i32* %i31, align 4
  %inc39 = add nsw i32 %21, 1
  store i32 %inc39, i32* %i31, align 4
  br label %for.cond32, !llvm.loop !12

for.end40:                                        ; preds = %for.cond32
  %22 = load i32, i32* @consumed, align 4
  %cmp41 = icmp eq i32 %22, 250
  br i1 %cmp41, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.end40
  %23 = load i32, i32* @avail, align 4
  %cmp42 = icmp eq i32 %23, 0
  br i1 %cmp42, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.end40
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = load i32, i32* @consumed, align 4
  %27 = load i32, i32* @avail, align 4
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %26, i32 %27)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_cond_init(%union.pthread_cond_t*, %union.pthread_condattr_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

declare dso_local i32 @pthread_join(i64, i8**) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

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
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
