; ModuleID = 'code/278-12978pth_cvsimple.c'
source_filename = "code/278-12978pth_cvsimple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_cond_t = type { %struct.anon }
%struct.anon = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@condvar_was_hit = dso_local global i32 0, align 4
@count = dso_local global i32 0, align 4
@thread_ids = dso_local global [3 x i32] [i32 0, i32 1, i32 2], align 4
@count_lock = dso_local global %union.pthread_mutex_t zeroinitializer, align 8
@count_hit_threshold = dso_local global %union.pthread_cond_t zeroinitializer, align 8
@.str = private unnamed_addr constant [44 x i8] c"inc_counter(): count = %d, unlocking mutex\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"hit threshold!\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"condvar was hit!\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"condvar was multi-hit...\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"condvar was missed...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @inc_count(i8* %null) #0 {
entry:
  %null.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %null, i8** %null.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @count_lock) #3
  %1 = load i32, i32* @count, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @count, align 4
  %2 = load i32, i32* @count, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %2)
  %3 = load i32, i32* @count, align 4
  %cmp2 = icmp eq i32 %3, 12
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %call4 = call i32 @pthread_cond_signal(%union.pthread_cond_t* @count_hit_threshold) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %call5 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @count_lock) #3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc6 = add nsw i32 %4, 1
  store i32 %inc6, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret i8* null
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_cond_signal(%union.pthread_cond_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @watch_count(i8* %null) #0 {
entry:
  %null.addr = alloca i8*, align 8
  store i8* %null, i8** %null.addr, align 8
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @count_lock) #3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* @count, align 4
  %cmp = icmp slt i32 %0, 12
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i32 @pthread_cond_wait(%union.pthread_cond_t* @count_hit_threshold, %union.pthread_mutex_t* @count_lock)
  store i32 1, i32* @condvar_was_hit, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %call2 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @count_lock) #3
  ret i8* null
}

declare dso_local i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %threads = alloca [3 x i64], align 16
  store i32 0, i32* %retval, align 4
  %arrayidx = getelementptr inbounds [3 x i64], [3 x i64]* %threads, i64 0, i64 0
  %call = call i32 @pthread_create(i64* %arrayidx, %union.pthread_attr_t* null, i8* (i8*)* @watch_count, i8* null) #3
  %call1 = call i32 @sleep(i32 1)
  %arrayidx2 = getelementptr inbounds [3 x i64], [3 x i64]* %threads, i64 0, i64 1
  %call3 = call i32 @pthread_create(i64* %arrayidx2, %union.pthread_attr_t* null, i8* (i8*)* @inc_count, i8* null) #3
  %arrayidx4 = getelementptr inbounds [3 x i64], [3 x i64]* %threads, i64 0, i64 2
  %call5 = call i32 @pthread_create(i64* %arrayidx4, %union.pthread_attr_t* null, i8* (i8*)* @inc_count, i8* null) #3
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx6 = getelementptr inbounds [3 x i64], [3 x i64]* %threads, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx6, align 8
  %call7 = call i32 @pthread_join(i64 %2, i8** null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* @condvar_was_hit, align 4
  %cmp8 = icmp eq i32 %4, 1
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end15

if.else:                                          ; preds = %for.end
  %5 = load i32, i32* @condvar_was_hit, align 4
  %cmp10 = icmp sgt i32 %5, 1
  br i1 %cmp10, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end

if.else13:                                        ; preds = %if.else
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then11
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

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
!7 = distinct !{!7, !5}
