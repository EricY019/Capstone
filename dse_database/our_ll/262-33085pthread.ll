; ModuleID = 'code/262-33085pthread.c'
source_filename = "code/262-33085pthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@number = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"I am worker1\0A\00", align 1
@mutex_lock = dso_local global %union.pthread_mutex_t zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"The worker1's number is: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"I am worker2\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"The worker2's number is: %d\0A\00", align 1
@workerid = dso_local global [2 x i64] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @worker1() #0 {
entry:
  %i = alloca i32, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutex_lock) #4
  %1 = load i32, i32* @number, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @number, align 4
  %2 = load i32, i32* @number, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %2)
  %call3 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutex_lock) #4
  %call4 = call i32 @sleep(i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc5 = add nsw i32 %3, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  call void @pthread_exit(i8* null) #5
  unreachable
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #2

declare dso_local i32 @sleep(i32) #1

; Function Attrs: noreturn
declare dso_local void @pthread_exit(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @worker2() #0 {
entry:
  %i = alloca i32, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutex_lock) #4
  %1 = load i32, i32* @number, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @number, align 4
  %2 = load i32, i32* @number, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %2)
  %call3 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutex_lock) #4
  %call4 = call i32 @sleep(i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc5 = add nsw i32 %3, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  call void @pthread_exit(i8* null) #5
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @pthread_mutex_init(%union.pthread_mutex_t* @mutex_lock, %union.pthread_mutexattr_t* null) #4
  %call1 = call i32 @pthread_create(i64* getelementptr inbounds ([2 x i64], [2 x i64]* @workerid, i64 0, i64 0), %union.pthread_attr_t* null, i8* (i8*)* bitcast (i8* ()* @worker1 to i8* (i8*)*), i8* null) #4
  %call2 = call i32 @pthread_create(i64* getelementptr inbounds ([2 x i64], [2 x i64]* @workerid, i64 0, i64 1), %union.pthread_attr_t* null, i8* (i8*)* bitcast (i8* ()* @worker2 to i8* (i8*)*), i8* null) #4
  %0 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @workerid, i64 0, i64 0), align 16
  %call3 = call i32 @pthread_join(i64 %0, i8** null)
  %1 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @workerid, i64 0, i64 1), align 8
  %call4 = call i32 @pthread_join(i64 %1, i8** null)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

declare dso_local i32 @pthread_join(i64, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
