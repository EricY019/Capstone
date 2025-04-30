; ModuleID = 'code/371-15176array2d.c'
source_filename = "code/371-15176array2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"(%d,%d)=%lf\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"(%d)=%lf\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print2(i32 %m, i32 %n, double* noalias %A) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store double* %A, double** %A.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %1 = zext i32 %0 to i64
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %m.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %j, align 4
  %8 = load double*, double** %A.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = mul nsw i64 %idxprom, %1
  %arrayidx = getelementptr inbounds double, double* %8, i64 %10
  %11 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds double, double* %arrayidx, i64 %idxprom4
  %12 = load double, double* %arrayidx5, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7, double %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %14, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end8:                                         ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print1(i32 %m, i32 %n, double* %A) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca double*, align 8
  %i = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store double* %A, double** %A.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %m.addr, align 4
  %2 = load i32, i32* %n.addr, align 4
  %mul = mul nsw i32 %1, %2
  %cmp = icmp slt i32 %0, %mul
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %4 = load double*, double** %A.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %3, double %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %A = alloca double*, align 8
  %i = alloca i32, align 4
  %B = alloca double*, align 8
  %i19 = alloca i32, align 4
  %j = alloca i32, align 4
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
  %call = call i32 @atoi(i8* %2) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 10, %cond.false ]
  store i32 %cond, i32* %m, align 4
  %3 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp sgt i32 %3, 2
  br i1 %cmp1, label %cond.true2, label %cond.false5

cond.true2:                                       ; preds = %cond.end
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i32 @atoi(i8* %5) #4
  br label %cond.end6

cond.false5:                                      ; preds = %cond.end
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.true2
  %cond7 = phi i32 [ %call4, %cond.true2 ], [ 5, %cond.false5 ]
  store i32 %cond7, i32* %n, align 4
  %6 = load i32, i32* %m, align 4
  %7 = load i32, i32* %n, align 4
  %mul = mul nsw i32 %6, %7
  %conv = sext i32 %mul to i64
  %mul8 = mul i64 %conv, 8
  %call9 = call noalias align 16 i8* @malloc(i64 %mul8) #5
  %8 = bitcast i8* %call9 to double*
  store double* %8, double** %A, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end6
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %m, align 4
  %11 = load i32, i32* %n, align 4
  %mul10 = mul nsw i32 %10, %11
  %cmp11 = icmp slt i32 %9, %mul10
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %conv13 = sitofp i32 %12 to double
  %13 = load double*, double** %A, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds double, double* %13, i64 %idxprom
  store double %conv13, double* %arrayidx14, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %n, align 4
  %17 = zext i32 %16 to i64
  %18 = load i32, i32* %n, align 4
  %19 = zext i32 %18 to i64
  %20 = load i32, i32* %m, align 4
  %21 = load i32, i32* %n, align 4
  %mul15 = mul nsw i32 %20, %21
  %conv16 = sext i32 %mul15 to i64
  %mul17 = mul i64 %conv16, 8
  %call18 = call noalias align 16 i8* @malloc(i64 %mul17) #5
  %22 = bitcast i8* %call18 to double*
  store double* %22, double** %B, align 8
  store i32 0, i32* %i19, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc37, %for.end
  %23 = load i32, i32* %i19, align 4
  %24 = load i32, i32* %m, align 4
  %cmp21 = icmp slt i32 %23, %24
  br i1 %cmp21, label %for.body23, label %for.end39

for.body23:                                       ; preds = %for.cond20
  store i32 0, i32* %j, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc34, %for.body23
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %n, align 4
  %cmp25 = icmp slt i32 %25, %26
  br i1 %cmp25, label %for.body27, label %for.end36

for.body27:                                       ; preds = %for.cond24
  %27 = load i32, i32* %i19, align 4
  %28 = load i32, i32* %n, align 4
  %mul28 = mul nsw i32 %27, %28
  %29 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul28, %29
  %conv29 = sitofp i32 %add to double
  %30 = load double*, double** %B, align 8
  %31 = load i32, i32* %i19, align 4
  %idxprom30 = sext i32 %31 to i64
  %32 = mul nsw i64 %idxprom30, %17
  %arrayidx31 = getelementptr inbounds double, double* %30, i64 %32
  %33 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %33 to i64
  %arrayidx33 = getelementptr inbounds double, double* %arrayidx31, i64 %idxprom32
  store double %conv29, double* %arrayidx33, align 8
  br label %for.inc34

for.inc34:                                        ; preds = %for.body27
  %34 = load i32, i32* %j, align 4
  %inc35 = add nsw i32 %34, 1
  store i32 %inc35, i32* %j, align 4
  br label %for.cond24, !llvm.loop !9

for.end36:                                        ; preds = %for.cond24
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %35 = load i32, i32* %i19, align 4
  %inc38 = add nsw i32 %35, 1
  store i32 %inc38, i32* %i19, align 4
  br label %for.cond20, !llvm.loop !10

for.end39:                                        ; preds = %for.cond20
  %36 = load i32, i32* %m, align 4
  %37 = load i32, i32* %n, align 4
  %38 = load double*, double** %A, align 8
  call void @print1(i32 %36, i32 %37, double* %38)
  %39 = load i32, i32* %m, align 4
  %40 = load i32, i32* %n, align 4
  %41 = load i32, i32* %n, align 4
  %42 = zext i32 %41 to i64
  %43 = load double*, double** %A, align 8
  call void @print2(i32 %39, i32 %40, double* %43)
  %44 = load i32, i32* %m, align 4
  %45 = load i32, i32* %n, align 4
  %46 = load double*, double** %B, align 8
  call void @print1(i32 %44, i32 %45, double* %46)
  %47 = load i32, i32* %m, align 4
  %48 = load i32, i32* %n, align 4
  %49 = load double*, double** %B, align 8
  call void @print2(i32 %47, i32 %48, double* %49)
  %50 = load double*, double** %B, align 8
  %51 = bitcast double* %50 to i8*
  call void @free(i8* %51) #5
  %52 = load double*, double** %A, align 8
  %53 = bitcast double* %52 to i8*
  call void @free(i8* %53) #5
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #3

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

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
