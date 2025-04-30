; ModuleID = 'code/282-34128locked_vs_unlocked3.c'
source_filename = "code/282-34128locked_vs_unlocked3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.pthread_mutexattr_t = type { i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@x = dso_local global i32 0, align 4
@mx = dso_local global %union.pthread_mutex_t zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"!r\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"code/282-34128locked_vs_unlocked3.c\00", align 1
@__PRETTY_FUNCTION__.child_fn1 = private unnamed_addr constant [24 x i8] c"void *child_fn1(void *)\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @child_fn1(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %r = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  %call = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mx) #4
  store i32 %call, i32* %r, align 4
  %0 = load i32, i32* %r, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.child_fn1, i64 0, i64 0)) #5
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %call1 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @mx) #4
  store i32 %call1, i32* %r, align 4
  %2 = load i32, i32* %r, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %cond.false4, label %cond.true3

cond.true3:                                       ; preds = %cond.end
  br label %cond.end5

cond.false4:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.child_fn1, i64 0, i64 0)) #5
  unreachable

3:                                                ; No predecessors!
  br label %cond.end5

cond.end5:                                        ; preds = %3, %cond.true3
  store i32 1, i32* @x, align 4
  %call6 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mx) #4
  store i32 %call6, i32* %r, align 4
  %4 = load i32, i32* %r, align 4
  %tobool7 = icmp ne i32 %4, 0
  br i1 %tobool7, label %cond.false9, label %cond.true8

cond.true8:                                       ; preds = %cond.end5
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end5
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.child_fn1, i64 0, i64 0)) #5
  unreachable

5:                                                ; No predecessors!
  br label %cond.end10

cond.end10:                                       ; preds = %5, %cond.true8
  %call11 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @mx) #4
  store i32 %call11, i32* %r, align 4
  %6 = load i32, i32* %r, align 4
  %tobool12 = icmp ne i32 %6, 0
  br i1 %tobool12, label %cond.false14, label %cond.true13

cond.true13:                                      ; preds = %cond.end10
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end10
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.child_fn1, i64 0, i64 0)) #5
  unreachable

7:                                                ; No predecessors!
  br label %cond.end15

cond.end15:                                       ; preds = %7, %cond.true13
  %call16 = call i32 @sleep(i32 1)
  ret i8* null
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

declare dso_local i32 @sleep(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @child_fn2(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %call = call i32 @sleep(i32 1)
  store i32 1, i32* @x, align 4
  ret i8* null
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %r = alloca i32, align 4
  %child1 = alloca i64, align 8
  %child2 = alloca i64, align 8
  %attr = alloca %union.pthread_mutexattr_t, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 @pthread_mutexattr_init(%union.pthread_mutexattr_t* %attr) #4
  store i32 %call, i32* %r, align 4
  %0 = load i32, i32* %r, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %call1 = call i32 @pthread_mutexattr_settype(%union.pthread_mutexattr_t* %attr, i32 1) #4
  store i32 %call1, i32* %r, align 4
  %2 = load i32, i32* %r, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %cond.false4, label %cond.true3

cond.true3:                                       ; preds = %cond.end
  br label %cond.end5

cond.false4:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

3:                                                ; No predecessors!
  br label %cond.end5

cond.end5:                                        ; preds = %3, %cond.true3
  %call6 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* @mx, %union.pthread_mutexattr_t* %attr) #4
  store i32 %call6, i32* %r, align 4
  %4 = load i32, i32* %r, align 4
  %tobool7 = icmp ne i32 %4, 0
  br i1 %tobool7, label %cond.false9, label %cond.true8

cond.true8:                                       ; preds = %cond.end5
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end5
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

5:                                                ; No predecessors!
  br label %cond.end10

cond.end10:                                       ; preds = %5, %cond.true8
  %call11 = call i32 @pthread_create(i64* %child2, %union.pthread_attr_t* null, i8* (i8*)* @child_fn2, i8* null) #4
  store i32 %call11, i32* %r, align 4
  %6 = load i32, i32* %r, align 4
  %tobool12 = icmp ne i32 %6, 0
  br i1 %tobool12, label %cond.false14, label %cond.true13

cond.true13:                                      ; preds = %cond.end10
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end10
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

7:                                                ; No predecessors!
  br label %cond.end15

cond.end15:                                       ; preds = %7, %cond.true13
  %call16 = call i32 @pthread_create(i64* %child1, %union.pthread_attr_t* null, i8* (i8*)* @child_fn1, i8* null) #4
  store i32 %call16, i32* %r, align 4
  %8 = load i32, i32* %r, align 4
  %tobool17 = icmp ne i32 %8, 0
  br i1 %tobool17, label %cond.false19, label %cond.true18

cond.true18:                                      ; preds = %cond.end15
  br label %cond.end20

cond.false19:                                     ; preds = %cond.end15
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

9:                                                ; No predecessors!
  br label %cond.end20

cond.end20:                                       ; preds = %9, %cond.true18
  %10 = load i64, i64* %child1, align 8
  %call21 = call i32 @pthread_join(i64 %10, i8** null)
  store i32 %call21, i32* %r, align 4
  %11 = load i32, i32* %r, align 4
  %tobool22 = icmp ne i32 %11, 0
  br i1 %tobool22, label %cond.false24, label %cond.true23

cond.true23:                                      ; preds = %cond.end20
  br label %cond.end25

cond.false24:                                     ; preds = %cond.end20
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

12:                                               ; No predecessors!
  br label %cond.end25

cond.end25:                                       ; preds = %12, %cond.true23
  %13 = load i64, i64* %child2, align 8
  %call26 = call i32 @pthread_join(i64 %13, i8** null)
  store i32 %call26, i32* %r, align 4
  %14 = load i32, i32* %r, align 4
  %tobool27 = icmp ne i32 %14, 0
  br i1 %tobool27, label %cond.false29, label %cond.true28

cond.true28:                                      ; preds = %cond.end25
  br label %cond.end30

cond.false29:                                     ; preds = %cond.end25
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

15:                                               ; No predecessors!
  br label %cond.end30

cond.end30:                                       ; preds = %15, %cond.true28
  %call31 = call i32 @pthread_mutex_destroy(%union.pthread_mutex_t* @mx) #4
  store i32 %call31, i32* %r, align 4
  %16 = load i32, i32* %r, align 4
  %tobool32 = icmp ne i32 %16, 0
  br i1 %tobool32, label %cond.false34, label %cond.true33

cond.true33:                                      ; preds = %cond.end30
  br label %cond.end35

cond.false34:                                     ; preds = %cond.end30
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

17:                                               ; No predecessors!
  br label %cond.end35

cond.end35:                                       ; preds = %17, %cond.true33
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutexattr_init(%union.pthread_mutexattr_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutexattr_settype(%union.pthread_mutexattr_t*, i32) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

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
