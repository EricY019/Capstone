; ModuleID = 'code/117-4062thread_test.c'
source_filename = "code/117-4062thread_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_cond_t = type { %struct.anon }
%struct.anon = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@mymutex1 = dso_local global %union.pthread_mutex_t zeroinitializer, align 8
@mymutex2 = dso_local global %union.pthread_mutex_t zeroinitializer, align 8
@mycond = dso_local global %union.pthread_cond_t zeroinitializer, align 8
@a = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"AAAAAAAAAAAAAAA begin mythread1.  %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"AAAAAAAAAAAAAA wait in mythread1.....\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"AAAAAAAAAAAAA end mythread1.  %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"begin mythread2.  %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"wait in mythread2.\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"end mythread2.  %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"begin main thread.  %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [80 x i8] c"\0A==============try to wake up mythread1 and mythread2 in main thread. a=%d  %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"error\0A\00", align 1
@.str.9 = private unnamed_addr constant [83 x i8] c"\0A===============try to wake up mythread1 and mythread2 in main thread.  a=%d   %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"end main thread.  %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mythread1(i8* %param) #0 {
entry:
  %param.addr = alloca i8*, align 8
  store i8* %param, i8** %param.addr, align 8
  %call = call i64 @pthread_self() #4
  %conv = trunc i64 %call to i32
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %conv)
  %call2 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mymutex1) #5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* @a, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %call5 = call i32 @pthread_cond_wait(%union.pthread_cond_t* @mycond, %union.pthread_mutex_t* @mymutex1)
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %call6 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mymutex1) #5
  %call7 = call i64 @pthread_self() #4
  %conv8 = trunc i64 %call7 to i32
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %conv8)
  ret i8* null
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i64 @pthread_self() #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #3

declare dso_local i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mythread2(i8* %param) #0 {
entry:
  %param.addr = alloca i8*, align 8
  store i8* %param, i8** %param.addr, align 8
  %call = call i64 @pthread_self() #4
  %conv = trunc i64 %call to i32
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %conv)
  %call2 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mymutex1) #5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* @a, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %call5 = call i32 @pthread_cond_wait(%union.pthread_cond_t* @mycond, %union.pthread_mutex_t* @mymutex1)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %call6 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mymutex1) #5
  %call7 = call i64 @pthread_self() #4
  %conv8 = trunc i64 %call7 to i32
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %conv8)
  ret i8* null
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %tid1 = alloca i64, align 8
  %tid2 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  %call = call i64 @pthread_self() #4
  %conv = trunc i64 %call to i32
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %conv)
  %call2 = call i32 @pthread_create(i64* %tid1, %union.pthread_attr_t* null, i8* (i8*)* @mythread1, i8* null) #5
  %call3 = call i32 @pthread_create(i64* %tid2, %union.pthread_attr_t* null, i8* (i8*)* @mythread2, i8* null) #5
  %call4 = call i32 @sleep(i32 2)
  store i32 2, i32* @a, align 4
  %call5 = call i64 @pthread_self() #4
  %conv6 = trunc i64 %call5 to i32
  %0 = load i32, i32* @a, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.7, i64 0, i64 0), i32 %conv6, i32 %0)
  %call8 = call i32 @pthread_cond_broadcast(%union.pthread_cond_t* @mycond) #5
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call10 = call i32 @sleep(i32 5)
  store i32 1, i32* @a, align 4
  %call11 = call i64 @pthread_self() #4
  %conv12 = trunc i64 %call11 to i32
  %1 = load i32, i32* @a, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %conv12, i32 %1)
  %call14 = call i32 @pthread_cond_broadcast(%union.pthread_cond_t* @mycond) #5
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end
  %2 = load i64, i64* %tid1, align 8
  %call19 = call i32 @pthread_join(i64 %2, i8** null)
  %3 = load i64, i64* %tid2, align 8
  %call20 = call i32 @pthread_join(i64 %3, i8** null)
  %call21 = call i64 @pthread_self() #4
  %conv22 = trunc i64 %call21 to i32
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 %conv22)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.then16, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #3

declare dso_local i32 @sleep(i32) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_cond_broadcast(%union.pthread_cond_t*) #3

declare dso_local i32 @pthread_join(i64, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
