; ModuleID = 'code/365-17559sec_multmatrixseq.c'
source_filename = "code/365-17559sec_multmatrixseq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%.0lf \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"m != ((void*)0)\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"code/365-17559sec_multmatrixseq.c\00", align 1
@__PRETTY_FUNCTION__.new_matrix = private unnamed_addr constant [29 x i8] c"double *new_matrix(int, int)\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Matrix1:\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Matrix2:\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Matrix3:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_matrix(i32 %size1, i32 %size2, double* %matrix) #0 {
entry:
  %size1.addr = alloca i32, align 4
  %size2.addr = alloca i32, align 4
  %matrix.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %size1, i32* %size1.addr, align 4
  store i32 %size2, i32* %size2.addr, align 4
  store double* %matrix, double** %matrix.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size1.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %size2.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load double*, double** %matrix.addr, align 8
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %size2.addr, align 4
  %mul = mul nsw i32 %5, %6
  %7 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul, %7
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  %8 = load double, double* %arrayidx, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), double %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %10 = load i32, i32* %i, align 4
  %inc6 = add nsw i32 %10, 1
  store i32 %inc6, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end7:                                         ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @multiply(i32 %size1, i32 %size2, i32 %size3, double* %matrix1, double* %matrix2, double* %result) #0 {
entry:
  %size1.addr = alloca i32, align 4
  %size2.addr = alloca i32, align 4
  %size3.addr = alloca i32, align 4
  %matrix1.addr = alloca double*, align 8
  %matrix2.addr = alloca double*, align 8
  %result.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %sum = alloca double, align 8
  store i32 %size1, i32* %size1.addr, align 4
  store i32 %size2, i32* %size2.addr, align 4
  store i32 %size3, i32* %size3.addr, align 4
  store double* %matrix1, double** %matrix1.addr, align 8
  store double* %matrix2, double** %matrix2.addr, align 8
  store double* %result, double** %result.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* %size3.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc17, %for.body
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %size1.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end19

for.body3:                                        ; preds = %for.cond1
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %size2.addr, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load double*, double** %matrix1.addr, align 8
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %size2.addr, align 4
  %mul = mul nsw i32 %7, %8
  %9 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul, %9
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds double, double* %6, i64 %idxprom
  %10 = load double, double* %arrayidx, align 8
  %11 = load double*, double** %matrix2.addr, align 8
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %size3.addr, align 4
  %mul7 = mul nsw i32 %12, %13
  %14 = load i32, i32* %k, align 4
  %add8 = add nsw i32 %mul7, %14
  %idxprom9 = sext i32 %add8 to i64
  %arrayidx10 = getelementptr inbounds double, double* %11, i64 %idxprom9
  %15 = load double, double* %arrayidx10, align 8
  %mul11 = fmul double %10, %15
  %16 = load double, double* %sum, align 8
  %add12 = fadd double %16, %mul11
  store double %add12, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %17 = load i32, i32* %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond4, !llvm.loop !7

for.end:                                          ; preds = %for.cond4
  %18 = load double, double* %sum, align 8
  %19 = load double*, double** %result.addr, align 8
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %size3.addr, align 4
  %mul13 = mul nsw i32 %20, %21
  %22 = load i32, i32* %k, align 4
  %add14 = add nsw i32 %mul13, %22
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds double, double* %19, i64 %idxprom15
  store double %18, double* %arrayidx16, align 8
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %23 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %23, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond1, !llvm.loop !8

for.end19:                                        ; preds = %for.cond1
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %24 = load i32, i32* %k, align 4
  %inc21 = add nsw i32 %24, 1
  store i32 %inc21, i32* %k, align 4
  br label %for.cond, !llvm.loop !9

for.end22:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double* @new_matrix(i32 %size1, i32 %size2) #0 {
entry:
  %size1.addr = alloca i32, align 4
  %size2.addr = alloca i32, align 4
  %m = alloca double*, align 8
  store i32 %size1, i32* %size1.addr, align 4
  store i32 %size2, i32* %size2.addr, align 4
  %0 = load i32, i32* %size1.addr, align 4
  %1 = load i32, i32* %size2.addr, align 4
  %mul = mul nsw i32 %0, %1
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 8
  %call = call noalias align 16 i8* @malloc(i64 %mul1) #4
  %2 = bitcast i8* %call to double*
  store double* %2, double** %m, align 8
  %3 = load double*, double** %m, align 8
  %cmp = icmp ne double* %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.new_matrix, i64 0, i64 0)) #5
  unreachable

4:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load double*, double** %m, align 8
  ret double* %5
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_matrix(double* %matrix) #0 {
entry:
  %matrix.addr = alloca double*, align 8
  store double* %matrix, double** %matrix.addr, align 8
  %0 = load double*, double** %matrix.addr, align 8
  %cmp = icmp ne double* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load double*, double** %matrix.addr, align 8
  %2 = bitcast double* %1 to i8*
  call void @free(i8* %2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %matrix1 = alloca double*, align 8
  %matrix2 = alloca double*, align 8
  %result = alloca double*, align 8
  %SIZE1 = alloca i32, align 4
  %SIZE2 = alloca i32, align 4
  %SIZE3 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 3, i32* %SIZE1, align 4
  store i32 2, i32* %SIZE2, align 4
  store i32 3, i32* %SIZE3, align 4
  %call = call double* @new_matrix(i32 3, i32 2)
  store double* %call, double** %matrix1, align 8
  %call1 = call double* @new_matrix(i32 2, i32 3)
  store double* %call1, double** %matrix2, align 8
  %call2 = call double* @new_matrix(i32 3, i32 3)
  store double* %call2, double** %result, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp4 = icmp slt i32 %1, 2
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %2 = load i32, i32* %i, align 4
  %conv = sitofp i32 %2 to double
  %3 = load double*, double** %matrix1, align 8
  %4 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %4, 2
  %5 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul, %5
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  store double %conv, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %6 = load i32, i32* %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !10

for.end:                                          ; preds = %for.cond3
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %7 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %7, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond, !llvm.loop !11

for.end8:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc25, %for.end8
  %8 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %8, 2
  br i1 %cmp10, label %for.body12, label %for.end27

for.body12:                                       ; preds = %for.cond9
  store i32 0, i32* %j, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc22, %for.body12
  %9 = load i32, i32* %j, align 4
  %cmp14 = icmp slt i32 %9, 3
  br i1 %cmp14, label %for.body16, label %for.end24

for.body16:                                       ; preds = %for.cond13
  %10 = load i32, i32* %j, align 4
  %conv17 = sitofp i32 %10 to double
  %11 = load double*, double** %matrix2, align 8
  %12 = load i32, i32* %i, align 4
  %mul18 = mul nsw i32 %12, 3
  %13 = load i32, i32* %j, align 4
  %add19 = add nsw i32 %mul18, %13
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds double, double* %11, i64 %idxprom20
  store double %conv17, double* %arrayidx21, align 8
  br label %for.inc22

for.inc22:                                        ; preds = %for.body16
  %14 = load i32, i32* %j, align 4
  %inc23 = add nsw i32 %14, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond13, !llvm.loop !12

for.end24:                                        ; preds = %for.cond13
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %15 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %15, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond9, !llvm.loop !13

for.end27:                                        ; preds = %for.cond9
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %16 = load double*, double** %matrix1, align 8
  call void @print_matrix(i32 3, i32 2, double* %16)
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %17 = load double*, double** %matrix2, align 8
  call void @print_matrix(i32 2, i32 3, double* %17)
  %18 = load double*, double** %matrix1, align 8
  %19 = load double*, double** %matrix2, align 8
  %20 = load double*, double** %result, align 8
  call void @multiply(i32 3, i32 2, i32 3, double* %18, double* %19, double* %20)
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %21 = load double*, double** %result, align 8
  call void @print_matrix(i32 3, i32 3, double* %21)
  %22 = load double*, double** %matrix1, align 8
  call void @free_matrix(double* %22)
  %23 = load double*, double** %matrix2, align 8
  call void @free_matrix(double* %23)
  %24 = load double*, double** %result, align 8
  call void @free_matrix(double* %24)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
