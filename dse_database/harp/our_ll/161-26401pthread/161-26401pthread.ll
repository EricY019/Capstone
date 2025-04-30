; ModuleID = 'code/161-26401pthread.c'
source_filename = "code/161-26401pthread.c"
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
@cntdwn = dso_local global i32 5, align 4
@.str = private unnamed_addr constant [12 x i8] c"thread: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"main: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @thread_a(i8* %dummy) #0 {
entry:
  %dummy.addr = alloca i8*, align 8
  store i8* %dummy, i8** %dummy.addr, align 8
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutex) #3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* @cntdwn, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i32 @pthread_cond_wait(%union.pthread_cond_t* @cond, %union.pthread_mutex_t* @mutex)
  %1 = load i32, i32* @cntdwn, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %1)
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %call3 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutex) #3
  %2 = load i8*, i8** %dummy.addr, align 8
  ret i8* %2
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

declare dso_local i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %tid = alloca i64, align 8
  %ret = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  %call = call i32 @pthread_create(i64* %tid, %union.pthread_attr_t* null, i8* (i8*)* @thread_a, i8* null) #3
  store i8* null, i8** %ret, align 8
  %call1 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutex) #3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* @cntdwn, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* @cntdwn, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* @cntdwn, align 4
  %2 = load i32, i32* @cntdwn, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %2)
  %call3 = call i32 @pthread_cond_broadcast(%union.pthread_cond_t* @cond) #3
  %call4 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutex) #3
  %call5 = call i32 @sleep(i32 1)
  %call6 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutex) #3
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %call7 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutex) #3
  %3 = load i64, i64* %tid, align 8
  %call8 = call i32 @pthread_join(i64 %3, i8** %ret)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_cond_broadcast(%union.pthread_cond_t*) #1

declare dso_local i32 @sleep(i32) #2

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
