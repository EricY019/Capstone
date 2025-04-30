; ModuleID = 'code/226-14547power_digit_sum.c'
source_filename = "code/226-14547power_digit_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"5 == power_digit_sum(5)\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"code/226-14547power_digit_sum.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"26 == power_digit_sum(15)\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"115 == power_digit_sum(100)\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"679 == power_digit_sum(500)\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"1366 == power_digit_sum(1000)\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"2035 == power_digit_sum(1500)\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"2704 == power_digit_sum(2000)\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"3871 == power_digit_sum(3000)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @array_sum(i32* %arr, i32 %length) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  %length.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %length.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %sum, align 4
  %3 = load i32*, i32** %arr.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %2, %5
  store i32 %add, i32* %sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %sum, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @power_digit_sum(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %max_required_space = alloca i64, align 8
  %power = alloca i32*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %conv = sitofp i32 %0 to double
  %mul = fmul double 3.500000e-01, %conv
  %1 = call double @llvm.ceil.f64(double %mul)
  %conv1 = fptoui double %1 to i64
  store i64 %conv1, i64* %max_required_space, align 8
  %2 = load i64, i64* %max_required_space, align 8
  %call = call noalias align 16 i8* @calloc(i64 %2, i64 4) #4
  %3 = bitcast i8* %call to i32*
  store i32* %3, i32** %power, align 8
  %4 = load i32*, i32** %power, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 0
  store i32 1, i32* %arrayidx, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end31

for.body:                                         ; preds = %for.cond
  %7 = load i32*, i32** %power, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 0
  %8 = load i32, i32* %arrayidx3, align 4
  %mul4 = mul nsw i32 2, %8
  %9 = load i32*, i32** %power, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 %mul4, i32* %arrayidx5, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %10 = load i32, i32* %k, align 4
  %conv7 = sext i32 %10 to i64
  %11 = load i64, i64* %max_required_space, align 8
  %cmp8 = icmp ult i64 %conv7, %11
  br i1 %cmp8, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond6
  %12 = load i32*, i32** %power, align 8
  %13 = load i32, i32* %k, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %12, i64 %idxprom
  %14 = load i32, i32* %arrayidx11, align 4
  %mul12 = mul nsw i32 2, %14
  %15 = load i32*, i32** %power, align 8
  %16 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %16, 1
  %idxprom13 = sext i32 %sub to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %15, i64 %idxprom13
  %17 = load i32, i32* %arrayidx14, align 4
  %div = sdiv i32 %17, 10
  %add = add nsw i32 %mul12, %div
  %18 = load i32*, i32** %power, align 8
  %19 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %18, i64 %idxprom15
  store i32 %add, i32* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %20 = load i32, i32* %k, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond6, !llvm.loop !6

for.end:                                          ; preds = %for.cond6
  store i32 0, i32* %j, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc26, %for.end
  %21 = load i32, i32* %j, align 4
  %conv18 = sext i32 %21 to i64
  %22 = load i64, i64* %max_required_space, align 8
  %cmp19 = icmp ult i64 %conv18, %22
  br i1 %cmp19, label %for.body21, label %for.end28

for.body21:                                       ; preds = %for.cond17
  %23 = load i32*, i32** %power, align 8
  %24 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %24 to i64
  %arrayidx23 = getelementptr inbounds i32, i32* %23, i64 %idxprom22
  %25 = load i32, i32* %arrayidx23, align 4
  %rem = srem i32 %25, 10
  %26 = load i32*, i32** %power, align 8
  %27 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %27 to i64
  %arrayidx25 = getelementptr inbounds i32, i32* %26, i64 %idxprom24
  store i32 %rem, i32* %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.body21
  %28 = load i32, i32* %j, align 4
  %inc27 = add nsw i32 %28, 1
  store i32 %inc27, i32* %j, align 4
  br label %for.cond17, !llvm.loop !7

for.end28:                                        ; preds = %for.cond17
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %29 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %29, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end31:                                        ; preds = %for.cond
  %30 = load i32*, i32** %power, align 8
  %31 = load i64, i64* %max_required_space, align 8
  %conv32 = trunc i64 %31 to i32
  %call33 = call i32 @array_sum(i32* %30, i32 %conv32)
  ret i32 %call33
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #1

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @calloc(i64, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @power_digit_sum(i32 5)
  %cmp = icmp eq i32 5, %call
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

0:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %0, %cond.true
  %call1 = call i32 @power_digit_sum(i32 15)
  %cmp2 = icmp eq i32 26, %call1
  br i1 %cmp2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %cond.end
  br label %cond.end5

cond.false4:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

1:                                                ; No predecessors!
  br label %cond.end5

cond.end5:                                        ; preds = %1, %cond.true3
  %call6 = call i32 @power_digit_sum(i32 100)
  %cmp7 = icmp eq i32 115, %call6
  br i1 %cmp7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.end5
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end5
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

2:                                                ; No predecessors!
  br label %cond.end10

cond.end10:                                       ; preds = %2, %cond.true8
  %call11 = call i32 @power_digit_sum(i32 500)
  %cmp12 = icmp eq i32 679, %call11
  br i1 %cmp12, label %cond.true13, label %cond.false14

cond.true13:                                      ; preds = %cond.end10
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end10
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

3:                                                ; No predecessors!
  br label %cond.end15

cond.end15:                                       ; preds = %3, %cond.true13
  %call16 = call i32 @power_digit_sum(i32 1000)
  %cmp17 = icmp eq i32 1366, %call16
  br i1 %cmp17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %cond.end15
  br label %cond.end20

cond.false19:                                     ; preds = %cond.end15
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

4:                                                ; No predecessors!
  br label %cond.end20

cond.end20:                                       ; preds = %4, %cond.true18
  %call21 = call i32 @power_digit_sum(i32 1500)
  %cmp22 = icmp eq i32 2035, %call21
  br i1 %cmp22, label %cond.true23, label %cond.false24

cond.true23:                                      ; preds = %cond.end20
  br label %cond.end25

cond.false24:                                     ; preds = %cond.end20
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

5:                                                ; No predecessors!
  br label %cond.end25

cond.end25:                                       ; preds = %5, %cond.true23
  %call26 = call i32 @power_digit_sum(i32 2000)
  %cmp27 = icmp eq i32 2704, %call26
  br i1 %cmp27, label %cond.true28, label %cond.false29

cond.true28:                                      ; preds = %cond.end25
  br label %cond.end30

cond.false29:                                     ; preds = %cond.end25
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

6:                                                ; No predecessors!
  br label %cond.end30

cond.end30:                                       ; preds = %6, %cond.true28
  %call31 = call i32 @power_digit_sum(i32 3000)
  %cmp32 = icmp eq i32 3871, %call31
  br i1 %cmp32, label %cond.true33, label %cond.false34

cond.true33:                                      ; preds = %cond.end30
  br label %cond.end35

cond.false34:                                     ; preds = %cond.end30
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

7:                                                ; No predecessors!
  br label %cond.end35

cond.end35:                                       ; preds = %7, %cond.true33
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
