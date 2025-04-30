; ModuleID = 'code/079-16869bug-235681.c'
source_filename = "code/079-16869bug-235681.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_cond_t = type { %struct.anon }
%struct.anon = type { i32, i32, i64, i64, i64, i8*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_condattr_t = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@silent = dso_local global i32 0, align 4
@mutex = dso_local global %union.pthread_mutex_t zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"!rc\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"code/079-16869bug-235681.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@cond_var = dso_local global %union.pthread_cond_t zeroinitializer, align 8
@status = dso_local global i32 0, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"main(): sleeping...\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"main(): status=1\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"joining...\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"run_fn starting\0A\00", align 1
@__PRETTY_FUNCTION__.run_fn = private unnamed_addr constant [21 x i8] c"void *run_fn(void *)\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"run_fn(): status==0\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"run_fn(): woke up\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"run_fn(): status==1\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"run_fn done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %rc = alloca i32, align 4
  %other_thread = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* @silent, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call i32 @pthread_mutex_init(%union.pthread_mutex_t* @mutex, %union.pthread_mutexattr_t* null) #4
  store i32 %call, i32* %rc, align 4
  %1 = load i32, i32* %rc, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

2:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %call1 = call i32 @pthread_cond_init(%union.pthread_cond_t* @cond_var, %union.pthread_condattr_t* null) #4
  store i32 %call1, i32* %rc, align 4
  %3 = load i32, i32* %rc, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %cond.false4, label %cond.true3

cond.true3:                                       ; preds = %cond.end
  br label %cond.end5

cond.false4:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

4:                                                ; No predecessors!
  br label %cond.end5

cond.end5:                                        ; preds = %4, %cond.true3
  store i32 0, i32* @status, align 4
  %call6 = call i32 @pthread_create(i64* %other_thread, %union.pthread_attr_t* null, i8* (i8*)* @run_fn, i8* null) #4
  store i32 %call6, i32* %rc, align 4
  %5 = load i32, i32* %rc, align 4
  %tobool7 = icmp ne i32 %5, 0
  br i1 %tobool7, label %cond.false9, label %cond.true8

cond.true8:                                       ; preds = %cond.end5
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end5
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

6:                                                ; No predecessors!
  br label %cond.end10

cond.end10:                                       ; preds = %6, %cond.true8
  %7 = load i32, i32* @silent, align 4
  %tobool11 = icmp ne i32 %7, 0
  br i1 %tobool11, label %if.end14, label %if.then12

if.then12:                                        ; preds = %cond.end10
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %cond.end10
  %call15 = call i32 @sleep(i32 1)
  %call16 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutex) #4
  store i32 %call16, i32* %rc, align 4
  %9 = load i32, i32* %rc, align 4
  %tobool17 = icmp ne i32 %9, 0
  br i1 %tobool17, label %cond.false19, label %cond.true18

cond.true18:                                      ; preds = %if.end14
  br label %cond.end20

cond.false19:                                     ; preds = %if.end14
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

10:                                               ; No predecessors!
  br label %cond.end20

cond.end20:                                       ; preds = %10, %cond.true18
  %11 = load i32, i32* @silent, align 4
  %tobool21 = icmp ne i32 %11, 0
  br i1 %tobool21, label %if.end24, label %if.then22

if.then22:                                        ; preds = %cond.end20
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %cond.end20
  store i32 1, i32* @status, align 4
  %call25 = call i32 @pthread_cond_broadcast(%union.pthread_cond_t* @cond_var) #4
  store i32 %call25, i32* %rc, align 4
  %13 = load i32, i32* %rc, align 4
  %tobool26 = icmp ne i32 %13, 0
  br i1 %tobool26, label %cond.false28, label %cond.true27

cond.true27:                                      ; preds = %if.end24
  br label %cond.end29

cond.false28:                                     ; preds = %if.end24
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

14:                                               ; No predecessors!
  br label %cond.end29

cond.end29:                                       ; preds = %14, %cond.true27
  %call30 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutex) #4
  store i32 %call30, i32* %rc, align 4
  %15 = load i32, i32* %rc, align 4
  %tobool31 = icmp ne i32 %15, 0
  br i1 %tobool31, label %cond.false33, label %cond.true32

cond.true32:                                      ; preds = %cond.end29
  br label %cond.end34

cond.false33:                                     ; preds = %cond.end29
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

16:                                               ; No predecessors!
  br label %cond.end34

cond.end34:                                       ; preds = %16, %cond.true32
  %17 = load i32, i32* @silent, align 4
  %tobool35 = icmp ne i32 %17, 0
  br i1 %tobool35, label %if.end38, label %if.then36

if.then36:                                        ; preds = %cond.end34
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %cond.end34
  %19 = load i64, i64* %other_thread, align 8
  %call39 = call i32 @pthread_join(i64 %19, i8** null)
  store i32 %call39, i32* %rc, align 4
  %20 = load i32, i32* %rc, align 4
  %tobool40 = icmp ne i32 %20, 0
  br i1 %tobool40, label %cond.false42, label %cond.true41

cond.true41:                                      ; preds = %if.end38
  br label %cond.end43

cond.false42:                                     ; preds = %if.end38
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 89, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

21:                                               ; No predecessors!
  br label %cond.end43

cond.end43:                                       ; preds = %21, %cond.true41
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_cond_init(%union.pthread_cond_t*, %union.pthread_condattr_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @run_fn(i8* %v) #0 {
entry:
  %v.addr = alloca i8*, align 8
  %rc = alloca i32, align 4
  store i8* %v, i8** %v.addr, align 8
  %0 = load i32, i32* @silent, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mutex) #4
  store i32 %call1, i32* %rc, align 4
  %2 = load i32, i32* %rc, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__PRETTY_FUNCTION__.run_fn, i64 0, i64 0)) #5
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %cond.end
  %4 = load i32, i32* @status, align 4
  %tobool3 = icmp ne i32 %4, 0
  %lnot = xor i1 %tobool3, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* @silent, align 4
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %while.body
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %while.body
  %call8 = call i32 @pthread_cond_wait(%union.pthread_cond_t* @cond_var, %union.pthread_mutex_t* @mutex)
  store i32 %call8, i32* %rc, align 4
  %7 = load i32, i32* %rc, align 4
  %tobool9 = icmp ne i32 %7, 0
  br i1 %tobool9, label %cond.false11, label %cond.true10

cond.true10:                                      ; preds = %if.end7
  br label %cond.end12

cond.false11:                                     ; preds = %if.end7
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__PRETTY_FUNCTION__.run_fn, i64 0, i64 0)) #5
  unreachable

8:                                                ; No predecessors!
  br label %cond.end12

cond.end12:                                       ; preds = %8, %cond.true10
  %9 = load i32, i32* @silent, align 4
  %tobool13 = icmp ne i32 %9, 0
  br i1 %tobool13, label %if.end16, label %if.then14

if.then14:                                        ; preds = %cond.end12
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %cond.end12
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* @silent, align 4
  %tobool17 = icmp ne i32 %11, 0
  br i1 %tobool17, label %if.end20, label %if.then18

if.then18:                                        ; preds = %while.end
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %while.end
  %call21 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mutex) #4
  store i32 %call21, i32* %rc, align 4
  %13 = load i32, i32* %rc, align 4
  %tobool22 = icmp ne i32 %13, 0
  br i1 %tobool22, label %cond.false24, label %cond.true23

cond.true23:                                      ; preds = %if.end20
  br label %cond.end25

cond.false24:                                     ; preds = %if.end20
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__PRETTY_FUNCTION__.run_fn, i64 0, i64 0)) #5
  unreachable

14:                                               ; No predecessors!
  br label %cond.end25

cond.end25:                                       ; preds = %14, %cond.true23
  %15 = load i32, i32* @silent, align 4
  %tobool26 = icmp ne i32 %15, 0
  br i1 %tobool26, label %if.end29, label %if.then27

if.then27:                                        ; preds = %cond.end25
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %cond.end25
  ret i8* null
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare dso_local i32 @sleep(i32) #3

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_cond_broadcast(%union.pthread_cond_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

declare dso_local i32 @pthread_join(i64, i8**) #3

declare dso_local i32 @pthread_cond_wait(%union.pthread_cond_t*, %union.pthread_mutex_t*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
