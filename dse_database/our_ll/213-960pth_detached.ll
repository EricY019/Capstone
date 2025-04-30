; ModuleID = 'code/213-960pth_detached.c'
source_filename = "code/213-960pth_detached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_cond_t = type { %struct.anon }
%struct.anon = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_condattr_t = type { i32 }

@s_mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8
@s_cond = internal global %union.pthread_cond_t zeroinitializer, align 8
@.str = private unnamed_addr constant [54 x i8] c"pthread_attr_getdetachstate(&attr, &detachstate) == 0\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"code/213-960pth_detached.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"detachstate == PTHREAD_CREATE_DETACHED\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"detachstate == PTHREAD_CREATE_JOINABLE\00", align 1
@s_finished_count = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %count1 = alloca i32, align 4
  %count2 = alloca i32, align 4
  %i = alloca i32, align 4
  %detachstate = alloca i32, align 4
  %attr = alloca %union.pthread_attr_t, align 8
  %thread = alloca i64, align 8
  %thread37 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 100, %cond.false ]
  store i32 %cond, i32* %count1, align 4
  %3 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp sgt i32 %3, 2
  br i1 %cmp1, label %cond.true2, label %cond.false5

cond.true2:                                       ; preds = %cond.end
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i32 @atoi(i8* %5) #6
  br label %cond.end6

cond.false5:                                      ; preds = %cond.end
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.true2
  %cond7 = phi i32 [ %call4, %cond.true2 ], [ 100, %cond.false5 ]
  store i32 %cond7, i32* %count2, align 4
  %call8 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* @s_mutex, %union.pthread_mutexattr_t* null) #7
  %call9 = call i32 @pthread_cond_init(%union.pthread_cond_t* @s_cond, %union.pthread_condattr_t* null) #7
  %call10 = call i32 @pthread_attr_init(%union.pthread_attr_t* %attr) #7
  %call11 = call i32 @pthread_attr_setdetachstate(%union.pthread_attr_t* %attr, i32 1) #7
  %call12 = call i32 @pthread_attr_getdetachstate(%union.pthread_attr_t* %attr, i32* %detachstate) #7
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %cond.true14, label %cond.false15

cond.true14:                                      ; preds = %cond.end6
  br label %cond.end16

cond.false15:                                     ; preds = %cond.end6
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

6:                                                ; No predecessors!
  br label %cond.end16

cond.end16:                                       ; preds = %6, %cond.true14
  %7 = load i32, i32* %detachstate, align 4
  %cmp17 = icmp eq i32 %7, 1
  br i1 %cmp17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %cond.end16
  br label %cond.end20

cond.false19:                                     ; preds = %cond.end16
  call void @__assert_fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

8:                                                ; No predecessors!
  br label %cond.end20

cond.end20:                                       ; preds = %8, %cond.true18
  %call21 = call i32 @pthread_attr_setstacksize(%union.pthread_attr_t* %attr, i64 20480) #7
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end20
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %count1, align 4
  %cmp22 = icmp slt i32 %9, %10
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call23 = call i32 @pthread_create(i64* %thread, %union.pthread_attr_t* %attr, i8* (i8*)* @thread_func1, i8* null) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call24 = call i32 @pthread_attr_setdetachstate(%union.pthread_attr_t* %attr, i32 0) #7
  %call25 = call i32 @pthread_attr_getdetachstate(%union.pthread_attr_t* %attr, i32* %detachstate) #7
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %cond.true27, label %cond.false28

cond.true27:                                      ; preds = %for.end
  br label %cond.end29

cond.false28:                                     ; preds = %for.end
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

12:                                               ; No predecessors!
  br label %cond.end29

cond.end29:                                       ; preds = %12, %cond.true27
  %13 = load i32, i32* %detachstate, align 4
  %cmp30 = icmp eq i32 %13, 0
  br i1 %cmp30, label %cond.true31, label %cond.false32

cond.true31:                                      ; preds = %cond.end29
  br label %cond.end33

cond.false32:                                     ; preds = %cond.end29
  call void @__assert_fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

14:                                               ; No predecessors!
  br label %cond.end33

cond.end33:                                       ; preds = %14, %cond.true31
  store i32 0, i32* %i, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc39, %cond.end33
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %count2, align 4
  %cmp35 = icmp slt i32 %15, %16
  br i1 %cmp35, label %for.body36, label %for.end41

for.body36:                                       ; preds = %for.cond34
  %call38 = call i32 @pthread_create(i64* %thread37, %union.pthread_attr_t* %attr, i8* (i8*)* @thread_func2, i8* null) #7
  br label %for.inc39

for.inc39:                                        ; preds = %for.body36
  %17 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %17, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond34, !llvm.loop !6

for.end41:                                        ; preds = %for.cond34
  %call42 = call i32 @pthread_attr_destroy(%union.pthread_attr_t* %attr) #7
  %call43 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @s_mutex) #7
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end41
  %18 = load i32, i32* @s_finished_count, align 4
  %19 = load i32, i32* %count1, align 4
  %20 = load i32, i32* %count2, align 4
  %add = add nsw i32 %19, %20
  %cmp44 = icmp slt i32 %18, %add
  br i1 %cmp44, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call45 = call i32 @pthread_cond_wait(%union.pthread_cond_t* @s_cond, %union.pthread_mutex_t* @s_mutex)
  %cmp46 = icmp eq i32 %call45, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %21 = phi i1 [ false, %while.cond ], [ %cmp46, %land.rhs ]
  br i1 %21, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %land.end
  %call47 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @s_mutex) #7
  %call48 = call i32 @pthread_cond_destroy(%union.pthread_cond_t* @s_cond) #7
  %call49 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* @s_mutex) #7
  %call50 = call i32 @sleep(i32 1)
  %call51 = call i64 @write(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_cond_init(%union.pthread_cond_t*, %union.pthread_condattr_t*) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_attr_init(%union.pthread_attr_t*) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_attr_setdetachstate(%union.pthread_attr_t*, i32) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_attr_getdetachstate(%union.pthread_attr_t*, i32*) #2

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind
declare dso_local i32 @pthread_attr_setstacksize(%union.pthread_attr_t*, i64) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @thread_func1(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %call = call i64 @write(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1)
  call void @increment_finished_count()
  ret i8* null
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @thread_func2(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %call = call i64 @pthread_self() #9
  %call1 = call i32 @pthread_detach(i64 %call) #7
  %call2 = call i64 @write(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1)
  call void @increment_finished_count()
  ret i8* null
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_attr_destroy(%union.pthread_attr_t*) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #2

declare dso_local i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*) #4

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_cond_destroy(%union.pthread_cond_t*) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #2

declare dso_local i32 @sleep(i32) #4

declare dso_local i64 @write(i32, i8*, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @increment_finished_count() #0 {
entry:
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @s_mutex) #7
  %0 = load i32, i32* @s_finished_count, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @s_finished_count, align 4
  %call1 = call i32 @pthread_cond_signal(%union.pthread_cond_t* @s_cond) #7
  %call2 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @s_mutex) #7
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_cond_signal(%union.pthread_cond_t*) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_detach(i64) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i64 @pthread_self() #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone willreturn }

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
