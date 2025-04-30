; ModuleID = 'code/119-1530producer_consumer.c'
source_filename = "code/119-1530producer_consumer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_cond_t = type { %struct.anon }
%struct.anon = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@mutex = dso_local global %union.pthread_mutex_t zeroinitializer, align 8
@prod_cond = dso_local global %union.pthread_cond_t zeroinitializer, align 8
@cons_cond = dso_local global %union.pthread_cond_t zeroinitializer, align 8
@buffer = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Producer: buffer = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Consumer %d: buffer = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @producer(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutex) #4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %1 = load i32, i32* @buffer, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i32 @pthread_cond_wait(%union.pthread_cond_t* @prod_cond, %union.pthread_mutex_t* @mutex)
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %2 = load i32, i32* @buffer, align 4
  %add = add nsw i32 %2, 5
  store i32 %add, i32* @buffer, align 4
  %3 = load i32, i32* @buffer, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %3)
  %call4 = call i32 @pthread_cond_broadcast(%union.pthread_cond_t* @cons_cond) #4
  %call5 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutex) #4
  %call6 = call i32 @usleep(i32 500000)
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  call void @pthread_exit(i8* null) #5
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

declare dso_local i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_cond_broadcast(%union.pthread_cond_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

declare dso_local i32 @usleep(i32) #2

; Function Attrs: noreturn
declare dso_local void @pthread_exit(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @consumer(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %id = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %id, align 4
  %3 = load i8*, i8** %arg.addr, align 8
  call void @free(i8* %3) #4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutex) #4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %5 = load i32, i32* @buffer, align 4
  %cmp1 = icmp sle i32 %5, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i32 @pthread_cond_wait(%union.pthread_cond_t* @cons_cond, %union.pthread_mutex_t* @mutex)
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* @buffer, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* @buffer, align 4
  %7 = load i32, i32* %id, align 4
  %8 = load i32, i32* @buffer, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %7, i32 %8)
  %call4 = call i32 @pthread_cond_broadcast(%union.pthread_cond_t* @prod_cond) #4
  %call5 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutex) #4
  %call6 = call i32 @usleep(i32 500000)
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  call void @pthread_exit(i8* null) #5
  unreachable
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %thr_prod = alloca i64, align 8
  %thr_cons = alloca [5 x i64], align 16
  %i = alloca i32, align 4
  %id = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* @buffer, align 4
  %call = call i32 @pthread_create(i64* %thr_prod, %union.pthread_attr_t* null, i8* (i8*)* @producer, i8* null) #4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call noalias align 16 i8* @malloc(i64 4) #4
  %1 = bitcast i8* %call1 to i32*
  store i32* %1, i32** %id, align 8
  %2 = load i32, i32* %i, align 4
  %3 = load i32*, i32** %id, align 8
  store i32 %2, i32* %3, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [5 x i64], [5 x i64]* %thr_cons, i64 0, i64 %idxprom
  %5 = load i32*, i32** %id, align 8
  %6 = bitcast i32* %5 to i8*
  %call2 = call i32 @pthread_create(i64* %arrayidx, %union.pthread_attr_t* null, i8* (i8*)* @consumer, i8* %6) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @pthread_exit(i8* null) #5
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

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
!9 = distinct !{!9, !5}
