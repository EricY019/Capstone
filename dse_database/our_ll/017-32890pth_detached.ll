; ModuleID = 'code/017-32890pth_detached.c'
source_filename = "code/017-32890pth_detached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.timespec = type { i64, i64 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%union.pthread_mutexattr_t = type { i32 }

@s_mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8
@.str = private unnamed_addr constant [54 x i8] c"pthread_attr_getdetachstate(&attr, &detachstate) == 0\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"code/017-32890pth_detached.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"detachstate == PTHREAD_CREATE_DETACHED\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"detachstate == PTHREAD_CREATE_JOINABLE\00", align 1
@__const.main.delay = private unnamed_addr constant %struct.timespec { i64 0, i64 1000000 }, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@s_finished_count = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %count1 = alloca i32, align 4
  %count2 = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  %detachstate = alloca i32, align 4
  %attr = alloca %union.pthread_attr_t, align 8
  %thread = alloca i64, align 8
  %thread51 = alloca i64, align 8
  %delay = alloca %struct.timespec, align 8
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
  %call = call i32 @atoi(i8* %2) #8
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
  %call4 = call i32 @atoi(i8* %5) #8
  br label %cond.end6

cond.false5:                                      ; preds = %cond.end
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.true2
  %cond7 = phi i32 [ %call4, %cond.true2 ], [ 100, %cond.false5 ]
  store i32 %cond7, i32* %count2, align 4
  %6 = load i32, i32* %count1, align 4
  %7 = load i32, i32* %count2, align 4
  %cmp8 = icmp sgt i32 %6, %7
  br i1 %cmp8, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.end6
  %8 = load i32, i32* %count1, align 4
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end6
  %9 = load i32, i32* %count2, align 4
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %cond.true9
  %cond12 = phi i32 [ %8, %cond.true9 ], [ %9, %cond.false10 ]
  %10 = zext i32 %cond12 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %saved_stack, align 8
  %vla = alloca i32, i64 %10, align 16
  store i64 %10, i64* %__vla_expr0, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end11
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %count1, align 4
  %cmp13 = icmp slt i32 %12, %13
  br i1 %cmp13, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %count2, align 4
  %cmp14 = icmp slt i32 %14, %15
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %16 = phi i1 [ true, %for.cond ], [ %cmp14, %lor.rhs ]
  br i1 %16, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %vla, i64 %idxprom
  store i32 %17, i32* %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %lor.end
  %call16 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* @s_mutex, %union.pthread_mutexattr_t* null) #9
  %call17 = call i32 @pthread_attr_init(%union.pthread_attr_t* %attr) #9
  %call18 = call i32 @pthread_attr_setdetachstate(%union.pthread_attr_t* %attr, i32 1) #9
  %call19 = call i32 @pthread_attr_getdetachstate(%union.pthread_attr_t* %attr, i32* %detachstate) #9
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %for.end
  br label %cond.end23

cond.false22:                                     ; preds = %for.end
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #10
  unreachable

20:                                               ; No predecessors!
  br label %cond.end23

cond.end23:                                       ; preds = %20, %cond.true21
  %21 = load i32, i32* %detachstate, align 4
  %cmp24 = icmp eq i32 %21, 1
  br i1 %cmp24, label %cond.true25, label %cond.false26

cond.true25:                                      ; preds = %cond.end23
  br label %cond.end27

cond.false26:                                     ; preds = %cond.end23
  call void @__assert_fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #10
  unreachable

22:                                               ; No predecessors!
  br label %cond.end27

cond.end27:                                       ; preds = %22, %cond.true25
  %call28 = call i32 @pthread_attr_setstacksize(%union.pthread_attr_t* %attr, i64 16384) #9
  store i32 0, i32* %i, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc35, %cond.end27
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %count1, align 4
  %cmp30 = icmp slt i32 %23, %24
  br i1 %cmp30, label %for.body31, label %for.end37

for.body31:                                       ; preds = %for.cond29
  %25 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %25 to i64
  %arrayidx33 = getelementptr inbounds i32, i32* %vla, i64 %idxprom32
  %26 = bitcast i32* %arrayidx33 to i8*
  %call34 = call i32 @pthread_create(i64* %thread, %union.pthread_attr_t* %attr, i8* (i8*)* @thread_func1, i8* %26) #9
  br label %for.inc35

for.inc35:                                        ; preds = %for.body31
  %27 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %27, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond29, !llvm.loop !6

for.end37:                                        ; preds = %for.cond29
  %call38 = call i32 @pthread_attr_setdetachstate(%union.pthread_attr_t* %attr, i32 0) #9
  %call39 = call i32 @pthread_attr_getdetachstate(%union.pthread_attr_t* %attr, i32* %detachstate) #9
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %cond.true41, label %cond.false42

cond.true41:                                      ; preds = %for.end37
  br label %cond.end43

cond.false42:                                     ; preds = %for.end37
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #10
  unreachable

28:                                               ; No predecessors!
  br label %cond.end43

cond.end43:                                       ; preds = %28, %cond.true41
  %29 = load i32, i32* %detachstate, align 4
  %cmp44 = icmp eq i32 %29, 0
  br i1 %cmp44, label %cond.true45, label %cond.false46

cond.true45:                                      ; preds = %cond.end43
  br label %cond.end47

cond.false46:                                     ; preds = %cond.end43
  call void @__assert_fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #10
  unreachable

30:                                               ; No predecessors!
  br label %cond.end47

cond.end47:                                       ; preds = %30, %cond.true45
  store i32 0, i32* %i, align 4
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc55, %cond.end47
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %count2, align 4
  %cmp49 = icmp slt i32 %31, %32
  br i1 %cmp49, label %for.body50, label %for.end57

for.body50:                                       ; preds = %for.cond48
  %33 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %33 to i64
  %arrayidx53 = getelementptr inbounds i32, i32* %vla, i64 %idxprom52
  %34 = bitcast i32* %arrayidx53 to i8*
  %call54 = call i32 @pthread_create(i64* %thread51, %union.pthread_attr_t* %attr, i8* (i8*)* @thread_func2, i8* %34) #9
  br label %for.inc55

for.inc55:                                        ; preds = %for.body50
  %35 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %35, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond48, !llvm.loop !7

for.end57:                                        ; preds = %for.cond48
  %call58 = call i32 @pthread_attr_destroy(%union.pthread_attr_t* %attr) #9
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end57
  %call59 = call i32 @get_finished_count()
  %36 = load i32, i32* %count1, align 4
  %37 = load i32, i32* %count2, align 4
  %add = add nsw i32 %36, %37
  %cmp60 = icmp slt i32 %call59, %add
  br i1 %cmp60, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %38 = bitcast %struct.timespec* %delay to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 bitcast (%struct.timespec* @__const.main.delay to i8*), i64 16, i1 false)
  %call61 = call i32 @nanosleep(%struct.timespec* %delay, %struct.timespec* null)
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %call62 = call i64 @write(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %call63 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* @s_mutex) #9
  %call64 = call i32 @sleep(i32 1)
  store i32 0, i32* %retval, align 4
  %39 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %39)
  %40 = load i32, i32* %retval, align 4
  ret i32 %40
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #1

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #3

; Function Attrs: nounwind
declare dso_local i32 @pthread_attr_init(%union.pthread_attr_t*) #3

; Function Attrs: nounwind
declare dso_local i32 @pthread_attr_setdetachstate(%union.pthread_attr_t*, i32) #3

; Function Attrs: nounwind
declare dso_local i32 @pthread_attr_getdetachstate(%union.pthread_attr_t*, i32*) #3

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @pthread_attr_setstacksize(%union.pthread_attr_t*, i64) #3

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #3

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
  %call = call i64 @pthread_self() #11
  %call1 = call i32 @pthread_detach(i64 %call) #9
  %call2 = call i64 @write(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1)
  call void @increment_finished_count()
  ret i8* null
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_attr_destroy(%union.pthread_attr_t*) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local i32 @nanosleep(%struct.timespec*, %struct.timespec*) #6

declare dso_local i64 @write(i32, i8*, i64) #6

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #3

declare dso_local i32 @sleep(i32) #6

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @increment_finished_count() #0 {
entry:
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @s_mutex) #9
  %0 = load i32, i32* @s_finished_count, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @s_finished_count, align 4
  %call1 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @s_mutex) #9
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #3

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #3

; Function Attrs: nounwind
declare dso_local i32 @pthread_detach(i64) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local i64 @pthread_self() #7

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_finished_count() #0 {
entry:
  %result = alloca i32, align 4
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @s_mutex) #9
  %0 = load i32, i32* @s_finished_count, align 4
  store i32 %0, i32* %result, align 4
  %call1 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @s_mutex) #9
  %1 = load i32, i32* %result, align 4
  ret i32 %1
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readnone willreturn }

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
