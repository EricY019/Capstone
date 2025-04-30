; ModuleID = 'code/150-34447mutex_solution.c'
source_filename = "code/150-34447mutex_solution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@lock = dso_local global %union.pthread_mutex_t zeroinitializer, align 8
@counter = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"\0A Job %d started\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"\0A Job %d finished\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"\0A mutex init failed\0A\00", align 1
@tid = dso_local global [2 x i64] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [27 x i8] c"\0Acan't create thread :[%s]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @doSomeThing(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @lock) #3
  store i64 0, i64* %i, align 8
  %0 = load i32, i32* @counter, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* @counter, align 4
  %1 = load i32, i32* @counter, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %1)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %2, 268435455
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i64, i64* %i, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* @counter, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %4)
  %call3 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @lock) #3
  ret i8* null
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  %call = call i32 @pthread_mutex_init(%union.pthread_mutex_t* @lock, %union.pthread_mutexattr_t* null) #3
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end8, %if.end
  %0 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %0, 2
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* @tid, i64 0, i64 %idxprom
  %call3 = call i32 @pthread_create(i64* %arrayidx, %union.pthread_attr_t* null, i8* (i8*)* @doSomeThing, i8* null) #3
  store i32 %call3, i32* %err, align 4
  %2 = load i32, i32* %err, align 4
  %cmp4 = icmp ne i32 %2, 0
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %while.body
  %3 = load i32, i32* %err, align 4
  %call6 = call i8* @strerror(i32 %3) #3
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %call6)
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %while.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %5 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @tid, i64 0, i64 0), align 16
  %call9 = call i32 @pthread_join(i64 %5, i8** null)
  %6 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @tid, i64 0, i64 1), align 8
  %call10 = call i32 @pthread_join(i64 %6, i8** null)
  %call11 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* @lock) #3
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32) #1

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
