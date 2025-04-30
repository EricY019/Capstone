; ModuleID = 'code/039-4014fp_race.c'
source_filename = "code/039-4014fp_race.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [4 x i8] c"dmp\00", align 1
@s_debug = internal global i32 0, align 4
@s_use_mutex = internal global i32 0, align 4
@s_do_printf = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"code/039-4014fp_race.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@s_mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"&s_d1 = %p; &s_d2 = %p; &s_d3 = %p\0A\00", align 1
@s_d1 = internal global double 0.000000e+00, align 8
@s_d2 = internal global double 0.000000e+00, align 8
@s_d3 = internal global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"s_d2 = %g (should be 2)\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"s_d3 = %g (should be 5)\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"s_d1 = %g (should be 1)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %optchar = alloca i32, align 4
  %threadid = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @getopt(i32 %0, i8** %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #4
  store i32 %call, i32* %optchar, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %optchar, align 4
  switch i32 %2, label %sw.default [
    i32 100, label %sw.bb
    i32 109, label %sw.bb1
    i32 112, label %sw.bb2
  ]

sw.bb:                                            ; preds = %while.body
  store i32 1, i32* @s_debug, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %while.body
  store i32 1, i32* @s_use_mutex, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.body
  store i32 1, i32* @s_do_printf, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %sw.bb
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %call3 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* @s_mutex, %union.pthread_mutexattr_t* null) #4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @setlinebuf(%struct._IO_FILE* %3) #4
  %4 = load i32, i32* @s_debug, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), double* @s_d1, double* @s_d2, double* @s_d3)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  store double 1.000000e+00, double* @s_d1, align 8
  store double 3.000000e+00, double* @s_d3, align 8
  %call5 = call i32 @pthread_create(i64* %threadid, %union.pthread_attr_t* null, i8* (i8*)* @thread_func, i8* null) #4
  %call6 = call i32 @sleep(i32 1)
  %5 = load i32, i32* @s_use_mutex, align 4
  %tobool7 = icmp ne i32 %5, 0
  br i1 %tobool7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %call9 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @s_mutex) #4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  %6 = load double, double* @s_d3, align 8
  %inc = fadd double %6, 1.000000e+00
  store double %inc, double* @s_d3, align 8
  %7 = load i32, i32* @s_use_mutex, align 4
  %tobool11 = icmp ne i32 %7, 0
  br i1 %tobool11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %call13 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @s_mutex) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10
  %8 = load i64, i64* %threadid, align 8
  %call15 = call i32 @pthread_join(i64 %8, i8** null)
  %9 = load i32, i32* @s_do_printf, align 4
  %tobool16 = icmp ne i32 %9, 0
  br i1 %tobool16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  %10 = load double, double* @s_d2, align 8
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), double %10)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14
  %11 = load i32, i32* @s_do_printf, align 4
  %tobool20 = icmp ne i32 %11, 0
  br i1 %tobool20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end19
  %12 = load double, double* @s_d3, align 8
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), double %12)
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19
  %call24 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* @s_mutex) #4
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @getopt(i32, i8**, i8*) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #1

; Function Attrs: nounwind
declare dso_local void @setlinebuf(%struct._IO_FILE*) #1

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @thread_func(i8* %thread_arg) #0 {
entry:
  %thread_arg.addr = alloca i8*, align 8
  store i8* %thread_arg, i8** %thread_arg.addr, align 8
  %0 = load i32, i32* @s_do_printf, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load double, double* @s_d1, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), double %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store double 2.000000e+00, double* @s_d2, align 8
  %2 = load i32, i32* @s_use_mutex, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @s_mutex) #4
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %3 = load double, double* @s_d3, align 8
  %inc = fadd double %3, 1.000000e+00
  store double %inc, double* @s_d3, align 8
  %4 = load i32, i32* @s_use_mutex, align 4
  %tobool5 = icmp ne i32 %4, 0
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %call7 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @s_mutex) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4
  ret i8* null
}

declare dso_local i32 @sleep(i32) #3

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

declare dso_local i32 @pthread_join(i64, i8**) #3

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #1

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
