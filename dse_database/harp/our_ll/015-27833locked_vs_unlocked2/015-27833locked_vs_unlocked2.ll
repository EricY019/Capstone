; ModuleID = 'code/015-27833locked_vs_unlocked2.c'
source_filename = "code/015-27833locked_vs_unlocked2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@x = dso_local global i32 0, align 4
@mx1a = dso_local global %union.pthread_mutex_t zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"!r\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"code/015-27833locked_vs_unlocked2.c\00", align 1
@__PRETTY_FUNCTION__.child_fn1 = private unnamed_addr constant [24 x i8] c"void *child_fn1(void *)\00", align 1
@mx1b = dso_local global %union.pthread_mutex_t zeroinitializer, align 8
@mx2a = dso_local global %union.pthread_mutex_t zeroinitializer, align 8
@__PRETTY_FUNCTION__.child_fn2 = private unnamed_addr constant [24 x i8] c"void *child_fn2(void *)\00", align 1
@mx2b = dso_local global %union.pthread_mutex_t zeroinitializer, align 8
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @child_fn1(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %r = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mx1a) #4
  store i32 %call, i32* %r, align 4
  %0 = load i32, i32* %r, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.child_fn1, i64 0, i64 0)) #5
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %call1 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mx1b) #4
  store i32 %call1, i32* %r, align 4
  %2 = load i32, i32* %r, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %cond.false4, label %cond.true3

cond.true3:                                       ; preds = %cond.end
  br label %cond.end5

cond.false4:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.child_fn1, i64 0, i64 0)) #5
  unreachable

3:                                                ; No predecessors!
  br label %cond.end5

cond.end5:                                        ; preds = %3, %cond.true3
  store i32 1, i32* @x, align 4
  %call6 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mx1b) #4
  store i32 %call6, i32* %r, align 4
  %4 = load i32, i32* %r, align 4
  %tobool7 = icmp ne i32 %4, 0
  br i1 %tobool7, label %cond.false9, label %cond.true8

cond.true8:                                       ; preds = %cond.end5
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end5
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.child_fn1, i64 0, i64 0)) #5
  unreachable

5:                                                ; No predecessors!
  br label %cond.end10

cond.end10:                                       ; preds = %5, %cond.true8
  %call11 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mx1a) #4
  store i32 %call11, i32* %r, align 4
  %6 = load i32, i32* %r, align 4
  %tobool12 = icmp ne i32 %6, 0
  br i1 %tobool12, label %cond.false14, label %cond.true13

cond.true13:                                      ; preds = %cond.end10
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end10
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.child_fn1, i64 0, i64 0)) #5
  unreachable

7:                                                ; No predecessors!
  br label %cond.end15

cond.end15:                                       ; preds = %7, %cond.true13
  %call16 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* @mx1a) #4
  store i32 %call16, i32* %r, align 4
  %8 = load i32, i32* %r, align 4
  %tobool17 = icmp ne i32 %8, 0
  br i1 %tobool17, label %cond.false19, label %cond.true18

cond.true18:                                      ; preds = %cond.end15
  br label %cond.end20

cond.false19:                                     ; preds = %cond.end15
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.child_fn1, i64 0, i64 0)) #5
  unreachable

9:                                                ; No predecessors!
  br label %cond.end20

cond.end20:                                       ; preds = %9, %cond.true18
  %call21 = call i32 @sleep(i32 1)
  ret i8* null
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_destroy(%union.pthread_mutex_t*) #1

declare dso_local i32 @sleep(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @child_fn2(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %r = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %call = call i32 @sleep(i32 1)
  %call1 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mx2a) #4
  store i32 %call1, i32* %r, align 4
  %0 = load i32, i32* %r, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.child_fn2, i64 0, i64 0)) #5
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %call2 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mx2b) #4
  store i32 %call2, i32* %r, align 4
  %2 = load i32, i32* %r, align 4
  %tobool3 = icmp ne i32 %2, 0
  br i1 %tobool3, label %cond.false5, label %cond.true4

cond.true4:                                       ; preds = %cond.end
  br label %cond.end6

cond.false5:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.child_fn2, i64 0, i64 0)) #5
  unreachable

3:                                                ; No predecessors!
  br label %cond.end6

cond.end6:                                        ; preds = %3, %cond.true4
  store i32 1, i32* @x, align 4
  %call7 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mx2b) #4
  store i32 %call7, i32* %r, align 4
  %4 = load i32, i32* %r, align 4
  %tobool8 = icmp ne i32 %4, 0
  br i1 %tobool8, label %cond.false10, label %cond.true9

cond.true9:                                       ; preds = %cond.end6
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end6
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.child_fn2, i64 0, i64 0)) #5
  unreachable

5:                                                ; No predecessors!
  br label %cond.end11

cond.end11:                                       ; preds = %5, %cond.true9
  %call12 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mx2a) #4
  store i32 %call12, i32* %r, align 4
  %6 = load i32, i32* %r, align 4
  %tobool13 = icmp ne i32 %6, 0
  br i1 %tobool13, label %cond.false15, label %cond.true14

cond.true14:                                      ; preds = %cond.end11
  br label %cond.end16

cond.false15:                                     ; preds = %cond.end11
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.child_fn2, i64 0, i64 0)) #5
  unreachable

7:                                                ; No predecessors!
  br label %cond.end16

cond.end16:                                       ; preds = %7, %cond.true14
  ret i8* null
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %child1 = alloca i64, align 8
  %child2 = alloca i64, align 8
  %r = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 @pthread_mutex_init(%union.pthread_mutex_t* @mx1a, %union.pthread_mutexattr_t* null) #4
  store i32 %call, i32* %r, align 4
  %0 = load i32, i32* %r, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %call1 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* @mx1b, %union.pthread_mutexattr_t* null) #4
  store i32 %call1, i32* %r, align 4
  %2 = load i32, i32* %r, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %cond.false4, label %cond.true3

cond.true3:                                       ; preds = %cond.end
  br label %cond.end5

cond.false4:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

3:                                                ; No predecessors!
  br label %cond.end5

cond.end5:                                        ; preds = %3, %cond.true3
  %call6 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* @mx2a, %union.pthread_mutexattr_t* null) #4
  store i32 %call6, i32* %r, align 4
  %4 = load i32, i32* %r, align 4
  %tobool7 = icmp ne i32 %4, 0
  br i1 %tobool7, label %cond.false9, label %cond.true8

cond.true8:                                       ; preds = %cond.end5
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end5
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

5:                                                ; No predecessors!
  br label %cond.end10

cond.end10:                                       ; preds = %5, %cond.true8
  %call11 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* @mx2b, %union.pthread_mutexattr_t* null) #4
  store i32 %call11, i32* %r, align 4
  %6 = load i32, i32* %r, align 4
  %tobool12 = icmp ne i32 %6, 0
  br i1 %tobool12, label %cond.false14, label %cond.true13

cond.true13:                                      ; preds = %cond.end10
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end10
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

7:                                                ; No predecessors!
  br label %cond.end15

cond.end15:                                       ; preds = %7, %cond.true13
  %call16 = call i32 @pthread_create(i64* %child2, %union.pthread_attr_t* null, i8* (i8*)* @child_fn2, i8* null) #4
  store i32 %call16, i32* %r, align 4
  %8 = load i32, i32* %r, align 4
  %tobool17 = icmp ne i32 %8, 0
  br i1 %tobool17, label %cond.false19, label %cond.true18

cond.true18:                                      ; preds = %cond.end15
  br label %cond.end20

cond.false19:                                     ; preds = %cond.end15
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

9:                                                ; No predecessors!
  br label %cond.end20

cond.end20:                                       ; preds = %9, %cond.true18
  %call21 = call i32 @pthread_create(i64* %child1, %union.pthread_attr_t* null, i8* (i8*)* @child_fn1, i8* null) #4
  store i32 %call21, i32* %r, align 4
  %10 = load i32, i32* %r, align 4
  %tobool22 = icmp ne i32 %10, 0
  br i1 %tobool22, label %cond.false24, label %cond.true23

cond.true23:                                      ; preds = %cond.end20
  br label %cond.end25

cond.false24:                                     ; preds = %cond.end20
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

11:                                               ; No predecessors!
  br label %cond.end25

cond.end25:                                       ; preds = %11, %cond.true23
  %12 = load i64, i64* %child1, align 8
  %call26 = call i32 @pthread_join(i64 %12, i8** null)
  store i32 %call26, i32* %r, align 4
  %13 = load i32, i32* %r, align 4
  %tobool27 = icmp ne i32 %13, 0
  br i1 %tobool27, label %cond.false29, label %cond.true28

cond.true28:                                      ; preds = %cond.end25
  br label %cond.end30

cond.false29:                                     ; preds = %cond.end25
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

14:                                               ; No predecessors!
  br label %cond.end30

cond.end30:                                       ; preds = %14, %cond.true28
  %15 = load i64, i64* %child2, align 8
  %call31 = call i32 @pthread_join(i64 %15, i8** null)
  store i32 %call31, i32* %r, align 4
  %16 = load i32, i32* %r, align 4
  %tobool32 = icmp ne i32 %16, 0
  br i1 %tobool32, label %cond.false34, label %cond.true33

cond.true33:                                      ; preds = %cond.end30
  br label %cond.end35

cond.false34:                                     ; preds = %cond.end30
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

17:                                               ; No predecessors!
  br label %cond.end35

cond.end35:                                       ; preds = %17, %cond.true33
  %call36 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* @mx1b) #4
  store i32 %call36, i32* %r, align 4
  %18 = load i32, i32* %r, align 4
  %tobool37 = icmp ne i32 %18, 0
  br i1 %tobool37, label %cond.false39, label %cond.true38

cond.true38:                                      ; preds = %cond.end35
  br label %cond.end40

cond.false39:                                     ; preds = %cond.end35
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

19:                                               ; No predecessors!
  br label %cond.end40

cond.end40:                                       ; preds = %19, %cond.true38
  %call41 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* @mx2a) #4
  store i32 %call41, i32* %r, align 4
  %20 = load i32, i32* %r, align 4
  %tobool42 = icmp ne i32 %20, 0
  br i1 %tobool42, label %cond.false44, label %cond.true43

cond.true43:                                      ; preds = %cond.end40
  br label %cond.end45

cond.false44:                                     ; preds = %cond.end40
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

21:                                               ; No predecessors!
  br label %cond.end45

cond.end45:                                       ; preds = %21, %cond.true43
  %call46 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* @mx2b) #4
  store i32 %call46, i32* %r, align 4
  %22 = load i32, i32* %r, align 4
  %tobool47 = icmp ne i32 %22, 0
  br i1 %tobool47, label %cond.false49, label %cond.true48

cond.true48:                                      ; preds = %cond.end45
  br label %cond.end50

cond.false49:                                     ; preds = %cond.end45
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

23:                                               ; No predecessors!
  br label %cond.end50

cond.end50:                                       ; preds = %23, %cond.true48
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

declare dso_local i32 @pthread_join(i64, i8**) #3

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
