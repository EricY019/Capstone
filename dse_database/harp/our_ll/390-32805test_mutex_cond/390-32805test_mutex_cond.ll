; ModuleID = 'code/390-32805test_mutex_cond.c'
source_filename = "code/390-32805test_mutex_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_cond_t = type { %struct.anon }
%struct.anon = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@mutex = dso_local global %union.pthread_mutex_t zeroinitializer, align 8
@cond = dso_local global %union.pthread_cond_t zeroinitializer, align 8
@count = dso_local global i32 1, align 4
@.str = private unnamed_addr constant [23 x i8] c"This is threadfun1 %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"This is threadfun2 %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fun1(i8* %arg) #0 {
entry:
  %retval = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutex) #3
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* @count, align 4
  %cmp = icmp sle i32 %0, 10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* @count, align 4
  %rem = srem i32 %1, 2
  %cmp1 = icmp eq i32 %rem, 1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %2 = load i32, i32* @count, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %2)
  %3 = load i32, i32* @count, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @count, align 4
  %call3 = call i32 @pthread_cond_signal(%union.pthread_cond_t* @cond) #3
  br label %if.end

if.else:                                          ; preds = %while.body
  %call4 = call i32 @pthread_cond_wait(%union.pthread_cond_t* @cond, %union.pthread_mutex_t* @mutex)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call5 = call i32 @sleep(i32 1)
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %call6 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutex) #3
  %4 = load i8*, i8** %retval, align 8
  ret i8* %4
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_cond_signal(%union.pthread_cond_t*) #1

declare dso_local i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*) #2

declare dso_local i32 @sleep(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fun2(i8* %arg) #0 {
entry:
  %retval = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutex) #3
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* @count, align 4
  %cmp = icmp sle i32 %0, 10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* @count, align 4
  %rem = srem i32 %1, 2
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %2 = load i32, i32* @count, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %2)
  %3 = load i32, i32* @count, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @count, align 4
  %call3 = call i32 @pthread_cond_signal(%union.pthread_cond_t* @cond) #3
  br label %if.end

if.else:                                          ; preds = %while.body
  %call4 = call i32 @pthread_cond_wait(%union.pthread_cond_t* @cond, %union.pthread_mutex_t* @mutex)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %call5 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutex) #3
  %4 = load i8*, i8** %retval, align 8
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %tid = alloca [2 x i64], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %tid, i64 0, i64 0
  %call = call i32 @pthread_create(i64* %arrayidx, %union.pthread_attr_t* null, i8* (i8*)* @fun1, i8* null) #3
  %arrayidx1 = getelementptr inbounds [2 x i64], [2 x i64]* %tid, i64 0, i64 1
  %call2 = call i32 @pthread_create(i64* %arrayidx1, %union.pthread_attr_t* null, i8* (i8*)* @fun2, i8* null) #3
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx3 = getelementptr inbounds [2 x i64], [2 x i64]* %tid, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx3, align 8
  %call4 = call i32 @pthread_join(i64 %2, i8** null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

declare dso_local i32 @pthread_join(i64, i8**) #2

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
