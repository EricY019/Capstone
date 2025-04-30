; ModuleID = 'code/132-19319HowMuch.c'
source_filename = "code/132-19319HowMuch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"[M: %d B: %d C: %d]\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"[[M: 37 B: 5 C: 4][M: 100 B: 14 C: 11]]\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"strcmp(howMuch (1,100),\22[[M: 37 B: 5 C: 4][M: 100 B: 14 C: 11]]\22) == 0\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"code/132-19319HowMuch.c\00", align 1
@__PRETTY_FUNCTION__.tests = private unnamed_addr constant [13 x i8] c"void tests()\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"strcmp (howMuch (2950, 2950), \22[]\22) == 0\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"[[M: 20008 B: 2858 C: 2223][M: 20071 B: 2867 C: 2230]]\00", align 1
@.str.11 = private unnamed_addr constant [94 x i8] c"strcmp(howMuch (20000, 20100), \22[[M: 20008 B: 2858 C: 2223][M: 20071 B: 2867 C: 2230]]\22) == 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i32* %a, i32* %b) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %temp = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %temp, align 4
  %2 = load i32*, i32** %b.addr, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load i32*, i32** %a.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* %temp, align 4
  %6 = load i32*, i32** %b.addr, align 8
  store i32 %5, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @howMuch(i32 %m, i32 %n) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %results = alloca i8*, align 8
  %c = alloca double, align 8
  %b = alloca double, align 8
  %i = alloca i32, align 4
  %intpart = alloca double, align 8
  %temp = alloca i8*, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %m.addr, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @swap(i32* %m.addr, i32* %n.addr)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call noalias align 16 i8* @malloc(i64 1000) #5
  store i8* %call, i8** %results, align 8
  %2 = load i8*, i8** %results, align 8
  %call1 = call i8* @strcat(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #5
  store double 0.000000e+00, double* %c, align 8
  store double 0.000000e+00, double* %b, align 8
  %3 = load i32, i32* %m.addr, align 4
  store i32 %3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp sle i32 %4, %5
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %6, 1
  %conv = sitofp i32 %sub to double
  %div = fdiv double %conv, 9.000000e+00
  store double %div, double* %c, align 8
  %7 = load i32, i32* %i, align 4
  %sub3 = sub nsw i32 %7, 2
  %conv4 = sitofp i32 %sub3 to double
  %div5 = fdiv double %conv4, 7.000000e+00
  store double %div5, double* %b, align 8
  %8 = load double, double* %c, align 8
  %cmp6 = fcmp olt double %8, 0.000000e+00
  br i1 %cmp6, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %9 = load double, double* %b, align 8
  %cmp8 = fcmp olt double %9, 0.000000e+00
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end11:                                         ; preds = %lor.lhs.false
  %10 = load double, double* %c, align 8
  %call12 = call double @modf(double %10, double* %intpart) #5
  %cmp13 = fcmp oeq double %call12, 0.000000e+00
  br i1 %cmp13, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.end11
  %11 = load double, double* %b, align 8
  %call15 = call double @modf(double %11, double* %intpart) #5
  %cmp16 = fcmp oeq double %call15, 0.000000e+00
  br i1 %cmp16, label %if.then18, label %if.end25

if.then18:                                        ; preds = %land.lhs.true
  %call19 = call noalias align 16 i8* @malloc(i64 35) #5
  store i8* %call19, i8** %temp, align 8
  %12 = load i8*, i8** %temp, align 8
  %13 = load i32, i32* %i, align 4
  %14 = load double, double* %b, align 8
  %conv20 = fptosi double %14 to i32
  %15 = load double, double* %c, align 8
  %conv21 = fptosi double %15 to i32
  %call22 = call i32 (i8*, i8*, ...) @sprintf(i8* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 %conv20, i32 %conv21) #5
  %16 = load i8*, i8** %results, align 8
  %17 = load i8*, i8** %temp, align 8
  %call23 = call i8* @strcat(i8* %16, i8* %17) #5
  %18 = load i8*, i8** %temp, align 8
  %call24 = call i8* @strcpy(i8* %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then18, %land.lhs.true, %if.end11
  br label %for.inc

for.inc:                                          ; preds = %if.end25, %if.then10
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %20 = load i8*, i8** %results, align 8
  %call26 = call i8* @strcat(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #5
  %21 = load i8*, i8** %results, align 8
  ret i8* %21
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local double @modf(double, double*) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tests() #0 {
entry:
  %call = call i8* @howMuch(i32 1, i32 100)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %call)
  %call2 = call i8* @howMuch(i32 1, i32 100)
  %call3 = call i32 @strcmp(i8* %call2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0)) #6
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__PRETTY_FUNCTION__.tests, i64 0, i64 0)) #7
  unreachable

0:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %0, %cond.true
  %call4 = call i8* @howMuch(i32 2950, i32 2950)
  %call5 = call i32 @strcmp(i8* %call4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)) #6
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %cond.true7, label %cond.false8

cond.true7:                                       ; preds = %cond.end
  br label %cond.end9

cond.false8:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__PRETTY_FUNCTION__.tests, i64 0, i64 0)) #7
  unreachable

1:                                                ; No predecessors!
  br label %cond.end9

cond.end9:                                        ; preds = %1, %cond.true7
  %call10 = call i8* @howMuch(i32 20000, i32 20100)
  %call11 = call i32 @strcmp(i8* %call10, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0)) #6
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %cond.true13, label %cond.false14

cond.true13:                                      ; preds = %cond.end9
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end9
  call void @__assert_fail(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__PRETTY_FUNCTION__.tests, i64 0, i64 0)) #7
  unreachable

2:                                                ; No predecessors!
  br label %cond.end15

cond.end15:                                       ; preds = %2, %cond.true13
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #3

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @tests()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
