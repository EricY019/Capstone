; ModuleID = 'code/331-11637locking.c'
source_filename = "code/331-11637locking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@count = dso_local global i32 0, align 4
@mutex = dso_local global %union.pthread_mutex_t zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"%s says %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Thread 1\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Thread 2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @runner(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %str = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i32 0, i32* %i, align 4
  %0 = load i8*, i8** %arg.addr, align 8
  store i8* %0, i8** %str, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutex) #3
  %2 = load i32, i32* @count, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @count, align 4
  %3 = load i8*, i8** %str, align 8
  %4 = load i32, i32* @count, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %3, i32 %4)
  %call2 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutex) #3
  %call3 = call i32 @usleep(i32 1)
  %5 = load i32, i32* %i, align 4
  %inc4 = add nsw i32 %5, 1
  store i32 %inc4, i32* %i, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  ret i8* null
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

declare dso_local i32 @usleep(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %pth = alloca i64, align 8
  %pth2 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 @pthread_mutex_init(%union.pthread_mutex_t* @mutex, %union.pthread_mutexattr_t* null) #3
  %call1 = call i32 @pthread_create(i64* %pth, %union.pthread_attr_t* null, i8* (i8*)* @runner, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)) #3
  %call2 = call i32 @pthread_create(i64* %pth2, %union.pthread_attr_t* null, i8* (i8*)* @runner, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #3
  %0 = load i64, i64* %pth, align 8
  %call3 = call i32 @pthread_join(i64 %0, i8** null)
  %1 = load i64, i64* %pth2, align 8
  %call4 = call i32 @pthread_join(i64 %1, i8** null)
  %call5 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* @mutex) #3
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
