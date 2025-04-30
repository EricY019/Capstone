; ModuleID = 'code/145-19110producer_consumer.c'
source_filename = "code/145-19110producer_consumer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_cond_t = type { %struct.anon }
%struct.anon = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_condattr_t = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@buffer = dso_local global i32 0, align 4
@the_mutex = dso_local global %union.pthread_mutex_t zeroinitializer, align 8
@cond_p = dso_local global %union.pthread_cond_t zeroinitializer, align 8
@cond_c = dso_local global %union.pthread_cond_t zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @producer(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 100000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @the_mutex) #4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %1 = load i32, i32* @buffer, align 4
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i32 @pthread_cond_wait(%union.pthread_cond_t* @cond_p, %union.pthread_mutex_t* @the_mutex)
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %2 = load i32, i32* %i, align 4
  store i32 %2, i32* @buffer, align 4
  %call3 = call i32 @pthread_cond_signal(%union.pthread_cond_t* @cond_c) #4
  %call4 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @the_mutex) #4
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  call void @pthread_exit(i8* null) #5
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

declare dso_local i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_cond_signal(%union.pthread_cond_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: noreturn
declare dso_local void @pthread_exit(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @consumer(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 100000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @the_mutex) #4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %1 = load i32, i32* @buffer, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i32 @pthread_cond_wait(%union.pthread_cond_t* @cond_c, %union.pthread_mutex_t* @the_mutex)
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  store i32 0, i32* @buffer, align 4
  %call3 = call i32 @pthread_cond_signal(%union.pthread_cond_t* @cond_p) #4
  %call4 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @the_mutex) #4
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  call void @pthread_exit(i8* null) #5
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %pro_thread = alloca i64, align 8
  %con_thread = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  %call = call i32 @pthread_mutex_init(%union.pthread_mutex_t* @the_mutex, %union.pthread_mutexattr_t* null) #4
  %call1 = call i32 @pthread_cond_init(%union.pthread_cond_t* @cond_c, %union.pthread_condattr_t* null) #4
  %call2 = call i32 @pthread_cond_init(%union.pthread_cond_t* @cond_p, %union.pthread_condattr_t* null) #4
  %call3 = call i32 @pthread_create(i64* %con_thread, %union.pthread_attr_t* null, i8* (i8*)* @consumer, i8* null) #4
  %call4 = call i32 @pthread_create(i64* %pro_thread, %union.pthread_attr_t* null, i8* (i8*)* @producer, i8* null) #4
  %0 = load i64, i64* %pro_thread, align 8
  %call5 = call i32 @pthread_join(i64 %0, i8** null)
  %1 = load i64, i64* %con_thread, align 8
  %call6 = call i32 @pthread_join(i64 %1, i8** null)
  %call7 = call i32 @pthread_cond_destroy(%union.pthread_cond_t* @cond_c) #4
  %call8 = call i32 @pthread_cond_destroy(%union.pthread_cond_t* @cond_p) #4
  %call9 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* @the_mutex) #4
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_cond_init(%union.pthread_cond_t*, %union.pthread_condattr_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

declare dso_local i32 @pthread_join(i64, i8**) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_cond_destroy(%union.pthread_cond_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #1

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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
