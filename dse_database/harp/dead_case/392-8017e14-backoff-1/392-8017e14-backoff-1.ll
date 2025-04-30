; ModuleID = 'code/392-8017e14-backoff-1.c'
source_filename = "code/392-8017e14-backoff-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_attr_t = type { i64, [48 x i8] }

@mutex = dso_local global [3 x %union.pthread_mutex_t] zeroinitializer, align 16
@.str = private unnamed_addr constant [34 x i8] c"forward locker backing off at %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c" forward locker got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"lock forward got all locks, %d backoffs\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"backward locker backing off at %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c" backward locker got %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lock_forward(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %iterate = alloca i32, align 4
  %backoffs = alloca i32, align 4
  %status = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i32 0, i32* %iterate, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %0 = load i32, i32* %iterate, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %backoffs, align 4
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* getelementptr inbounds ([3 x %union.pthread_mutex_t], [3 x %union.pthread_mutex_t]* @mutex, i64 0, i64 0)) #4
  store i32 %call, i32* %status, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc16, %for.body
  %1 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %1, 3
  br i1 %cmp2, label %for.body3, label %for.end18

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x %union.pthread_mutex_t], [3 x %union.pthread_mutex_t]* @mutex, i64 0, i64 %idxprom
  %call4 = call i32 @pthread_mutex_trylock(%union.pthread_mutex_t* %arrayidx) #4
  store i32 %call4, i32* %status, align 4
  %3 = load i32, i32* %status, align 4
  %cmp5 = icmp eq i32 %3, 16
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  %4 = load i32, i32* %backoffs, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %backoffs, align 4
  %5 = load i32, i32* %i, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %5)
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4
  %cmp8 = icmp sge i32 %6, 0
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %7 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [3 x %union.pthread_mutex_t], [3 x %union.pthread_mutex_t]* @mutex, i64 0, i64 %idxprom10
  %call12 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %arrayidx11) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %8 = load i32, i32* %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond7, !llvm.loop !4

for.end:                                          ; preds = %for.cond7
  br label %if.end

if.else:                                          ; preds = %for.body3
  %9 = load i32, i32* %i, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %call14 = call i32 @rand() #4
  %rem = srem i32 %call14, 10
  %call15 = call i32 @usleep(i32 %rem)
  br label %for.inc16

for.inc16:                                        ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %10, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond1, !llvm.loop !6

for.end18:                                        ; preds = %for.cond1
  %11 = load i32, i32* %backoffs, align 4
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %11)
  %call20 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* getelementptr inbounds ([3 x %union.pthread_mutex_t], [3 x %union.pthread_mutex_t]* @mutex, i64 0, i64 2)) #4
  %call21 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* getelementptr inbounds ([3 x %union.pthread_mutex_t], [3 x %union.pthread_mutex_t]* @mutex, i64 0, i64 1)) #4
  %call22 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* getelementptr inbounds ([3 x %union.pthread_mutex_t], [3 x %union.pthread_mutex_t]* @mutex, i64 0, i64 0)) #4
  %call23 = call i32 @sleep(i32 1)
  br label %for.inc24

for.inc24:                                        ; preds = %for.end18
  %12 = load i32, i32* %iterate, align 4
  %inc25 = add nsw i32 %12, 1
  store i32 %inc25, i32* %iterate, align 4
  br label %for.cond, !llvm.loop !7

for.end26:                                        ; preds = %for.cond
  ret i8* null
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_trylock(%union.pthread_mutex_t*) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

declare dso_local i32 @usleep(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

declare dso_local i32 @sleep(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lock_backward(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %iterate = alloca i32, align 4
  %backoffs = alloca i32, align 4
  %status = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i32 0, i32* %iterate, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %0 = load i32, i32* %iterate, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %backoffs, align 4
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* getelementptr inbounds ([3 x %union.pthread_mutex_t], [3 x %union.pthread_mutex_t]* @mutex, i64 0, i64 2)) #4
  store i32 %call, i32* %status, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc17, %for.body
  %1 = load i32, i32* %i, align 4
  %cmp2 = icmp sge i32 %1, 0
  br i1 %cmp2, label %for.body3, label %for.end18

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [3 x %union.pthread_mutex_t], [3 x %union.pthread_mutex_t]* @mutex, i64 0, i64 %idxprom
  %call4 = call i32 @pthread_mutex_trylock(%union.pthread_mutex_t* %arrayidx) #4
  store i32 %call4, i32* %status, align 4
  %3 = load i32, i32* %status, align 4
  %cmp5 = icmp eq i32 %3, 16
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  %4 = load i32, i32* %backoffs, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %backoffs, align 4
  %5 = load i32, i32* %i, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %5)
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4
  %cmp8 = icmp slt i32 %6, 3
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %7 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [3 x %union.pthread_mutex_t], [3 x %union.pthread_mutex_t]* @mutex, i64 0, i64 %idxprom10
  %call12 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* %arrayidx11) #4
  store i32 %call12, i32* %status, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %8 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %8, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond7, !llvm.loop !8

for.end:                                          ; preds = %for.cond7
  br label %if.end

if.else:                                          ; preds = %for.body3
  %9 = load i32, i32* %i, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %call15 = call i32 @rand() #4
  %rem = srem i32 %call15, 10
  %call16 = call i32 @usleep(i32 %rem)
  br label %for.inc17

for.inc17:                                        ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond1, !llvm.loop !9

for.end18:                                        ; preds = %for.cond1
  %11 = load i32, i32* %backoffs, align 4
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %11)
  %call20 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* getelementptr inbounds ([3 x %union.pthread_mutex_t], [3 x %union.pthread_mutex_t]* @mutex, i64 0, i64 2)) #4
  %call21 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* getelementptr inbounds ([3 x %union.pthread_mutex_t], [3 x %union.pthread_mutex_t]* @mutex, i64 0, i64 1)) #4
  %call22 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* getelementptr inbounds ([3 x %union.pthread_mutex_t], [3 x %union.pthread_mutex_t]* @mutex, i64 0, i64 0)) #4
  %call23 = call i32 @sleep(i32 1)
  br label %for.inc24

for.inc24:                                        ; preds = %for.end18
  %12 = load i32, i32* %iterate, align 4
  %inc25 = add nsw i32 %12, 1
  store i32 %inc25, i32* %iterate, align 4
  br label %for.cond, !llvm.loop !10

for.end26:                                        ; preds = %for.cond
  ret i8* null
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %forward = alloca i64, align 8
  %backward = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 @pthread_create(i64* %forward, %union.pthread_attr_t* null, i8* (i8*)* @lock_forward, i8* null) #4
  %call1 = call i32 @pthread_create(i64* %backward, %union.pthread_attr_t* null, i8* (i8*)* @lock_backward, i8* null) #4
  call void @pthread_exit(i8* null) #5
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: noreturn
declare dso_local void @pthread_exit(i8*) #3

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
!10 = distinct !{!10, !5}
