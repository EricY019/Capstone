; ModuleID = 'code/051-31560success_006.c'
source_filename = "code/051-31560success_006.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A_t = type { [64 x i8], %struct.B_t }
%struct.B_t = type { i32, i32 }

@a0 = dso_local global %struct.A_t { [64 x i8] c"FOO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.B_t { i32 4, i32 5 } }, align 4
@a1 = dso_local global %struct.A_t { [64 x i8] c"FOO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.B_t { i32 4, i32 5 } }, align 4
@a2 = dso_local global %struct.A_t { [64 x i8] c"FOOFAA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.B_t { i32 4, i32 5 } }, align 4
@a3 = dso_local global { <{ i8, i8, i8, i8, [60 x i8] }>, %struct.B_t } { <{ i8, i8, i8, i8, [60 x i8] }> <{ i8 70, i8 79, i8 79, i8 65, [60 x i8] zeroinitializer }>, %struct.B_t zeroinitializer }, align 4
@.str = private unnamed_addr constant [4 x i8] c"FOO\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"strcmp(a0.name, \22FOO\22) ==0\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"code/051-31560success_006.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"strcmp(a1.name, \22FOO\22) ==0\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"FOOFAA\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"strcmp(a2.name, \22FOOFAA\22) ==0\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"FOOA\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"strcmp(a3.name, \22FOOA\22) ==0\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"a0.m.z0 == 4\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"a1.m.z0 == 4\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"a2.m.z0 == 4\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"a3.m.z0 == 0\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"a0.m.z1 == 5\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"a1.m.z1 == 5\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"a2.m.z1 == 5\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"a3.m.z1 == 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @strcmp(i8* getelementptr inbounds (%struct.A_t, %struct.A_t* @a0, i32 0, i32 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #3
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

0:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %0, %cond.true
  %call1 = call i32 @strcmp(i8* getelementptr inbounds (%struct.A_t, %struct.A_t* @a1, i32 0, i32 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #3
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %cond.end
  br label %cond.end5

cond.false4:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

1:                                                ; No predecessors!
  br label %cond.end5

cond.end5:                                        ; preds = %1, %cond.true3
  %call6 = call i32 @strcmp(i8* getelementptr inbounds (%struct.A_t, %struct.A_t* @a2, i32 0, i32 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #3
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.end5
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end5
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

2:                                                ; No predecessors!
  br label %cond.end10

cond.end10:                                       ; preds = %2, %cond.true8
  %call11 = call i32 @strcmp(i8* getelementptr inbounds (%struct.A_t, %struct.A_t* bitcast ({ <{ i8, i8, i8, i8, [60 x i8] }>, %struct.B_t }* @a3 to %struct.A_t*), i32 0, i32 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #3
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %cond.true13, label %cond.false14

cond.true13:                                      ; preds = %cond.end10
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end10
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

3:                                                ; No predecessors!
  br label %cond.end15

cond.end15:                                       ; preds = %3, %cond.true13
  %4 = load i32, i32* getelementptr inbounds (%struct.A_t, %struct.A_t* @a0, i32 0, i32 1, i32 0), align 4
  %cmp16 = icmp eq i32 %4, 4
  br i1 %cmp16, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %cond.end15
  br label %cond.end19

cond.false18:                                     ; preds = %cond.end15
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

5:                                                ; No predecessors!
  br label %cond.end19

cond.end19:                                       ; preds = %5, %cond.true17
  %6 = load i32, i32* getelementptr inbounds (%struct.A_t, %struct.A_t* @a1, i32 0, i32 1, i32 0), align 4
  %cmp20 = icmp eq i32 %6, 4
  br i1 %cmp20, label %cond.true21, label %cond.false22

cond.true21:                                      ; preds = %cond.end19
  br label %cond.end23

cond.false22:                                     ; preds = %cond.end19
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

7:                                                ; No predecessors!
  br label %cond.end23

cond.end23:                                       ; preds = %7, %cond.true21
  %8 = load i32, i32* getelementptr inbounds (%struct.A_t, %struct.A_t* @a2, i32 0, i32 1, i32 0), align 4
  %cmp24 = icmp eq i32 %8, 4
  br i1 %cmp24, label %cond.true25, label %cond.false26

cond.true25:                                      ; preds = %cond.end23
  br label %cond.end27

cond.false26:                                     ; preds = %cond.end23
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

9:                                                ; No predecessors!
  br label %cond.end27

cond.end27:                                       ; preds = %9, %cond.true25
  %10 = load i32, i32* getelementptr inbounds (%struct.A_t, %struct.A_t* bitcast ({ <{ i8, i8, i8, i8, [60 x i8] }>, %struct.B_t }* @a3 to %struct.A_t*), i32 0, i32 1, i32 0), align 4
  %cmp28 = icmp eq i32 %10, 0
  br i1 %cmp28, label %cond.true29, label %cond.false30

cond.true29:                                      ; preds = %cond.end27
  br label %cond.end31

cond.false30:                                     ; preds = %cond.end27
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

11:                                               ; No predecessors!
  br label %cond.end31

cond.end31:                                       ; preds = %11, %cond.true29
  %12 = load i32, i32* getelementptr inbounds (%struct.A_t, %struct.A_t* @a0, i32 0, i32 1, i32 1), align 4
  %cmp32 = icmp eq i32 %12, 5
  br i1 %cmp32, label %cond.true33, label %cond.false34

cond.true33:                                      ; preds = %cond.end31
  br label %cond.end35

cond.false34:                                     ; preds = %cond.end31
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

13:                                               ; No predecessors!
  br label %cond.end35

cond.end35:                                       ; preds = %13, %cond.true33
  %14 = load i32, i32* getelementptr inbounds (%struct.A_t, %struct.A_t* @a1, i32 0, i32 1, i32 1), align 4
  %cmp36 = icmp eq i32 %14, 5
  br i1 %cmp36, label %cond.true37, label %cond.false38

cond.true37:                                      ; preds = %cond.end35
  br label %cond.end39

cond.false38:                                     ; preds = %cond.end35
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

15:                                               ; No predecessors!
  br label %cond.end39

cond.end39:                                       ; preds = %15, %cond.true37
  %16 = load i32, i32* getelementptr inbounds (%struct.A_t, %struct.A_t* @a2, i32 0, i32 1, i32 1), align 4
  %cmp40 = icmp eq i32 %16, 5
  br i1 %cmp40, label %cond.true41, label %cond.false42

cond.true41:                                      ; preds = %cond.end39
  br label %cond.end43

cond.false42:                                     ; preds = %cond.end39
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

17:                                               ; No predecessors!
  br label %cond.end43

cond.end43:                                       ; preds = %17, %cond.true41
  %18 = load i32, i32* getelementptr inbounds (%struct.A_t, %struct.A_t* bitcast ({ <{ i8, i8, i8, i8, [60 x i8] }>, %struct.B_t }* @a3 to %struct.A_t*), i32 0, i32 1, i32 1), align 4
  %cmp44 = icmp eq i32 %18, 0
  br i1 %cmp44, label %cond.true45, label %cond.false46

cond.true45:                                      ; preds = %cond.end43
  br label %cond.end47

cond.false46:                                     ; preds = %cond.end43
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

19:                                               ; No predecessors!
  br label %cond.end47

cond.end47:                                       ; preds = %19, %cond.true45
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
