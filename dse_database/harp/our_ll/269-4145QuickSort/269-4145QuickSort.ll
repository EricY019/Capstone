; ModuleID = 'code/269-4145QuickSort.c'
source_filename = "code/269-4145QuickSort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.array = private unnamed_addr constant [10 x double] [double 1.000000e+00, double 5.000000e+00, double 7.000000e+00, double 2.000000e+00, double 9.000000e+00, double 3.000000e+00, double 6.000000e+00, double 8.000000e+00, double 0.000000e+00, double 4.000000e+00], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(double* %array, i32 %i, i32 %j) #0 {
entry:
  %array.addr = alloca double*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %tmp = alloca double, align 8
  store double* %array, double** %array.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load double*, double** %array.addr, align 8
  %1 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds double, double* %0, i64 %idxprom
  %2 = load double, double* %arrayidx, align 8
  store double %2, double* %tmp, align 8
  %3 = load double*, double** %array.addr, align 8
  %4 = load i32, i32* %j.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds double, double* %3, i64 %idxprom1
  %5 = load double, double* %arrayidx2, align 8
  %6 = load double*, double** %array.addr, align 8
  %7 = load i32, i32* %i.addr, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds double, double* %6, i64 %idxprom3
  store double %5, double* %arrayidx4, align 8
  %8 = load double, double* %tmp, align 8
  %9 = load double*, double** %array.addr, align 8
  %10 = load i32, i32* %j.addr, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds double, double* %9, i64 %idxprom5
  store double %8, double* %arrayidx6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @partitioning(double* %array, i32 %left, i32 %right) #0 {
entry:
  %array.addr = alloca double*, align 8
  %left.addr = alloca i32, align 4
  %right.addr = alloca i32, align 4
  %positionOfPivot = alloca i32, align 4
  %j = alloca i32, align 4
  store double* %array, double** %array.addr, align 8
  store i32 %left, i32* %left.addr, align 4
  store i32 %right, i32* %right.addr, align 4
  %0 = load i32, i32* %left.addr, align 4
  store i32 %0, i32* %positionOfPivot, align 4
  %1 = load i32, i32* %left.addr, align 4
  %add = add nsw i32 %1, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %right.addr, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load double*, double** %array.addr, align 8
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %7 = load double*, double** %array.addr, align 8
  %8 = load i32, i32* %left.addr, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds double, double* %7, i64 %idxprom1
  %9 = load double, double* %arrayidx2, align 8
  %cmp3 = fcmp olt double %6, %9
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %positionOfPivot, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %positionOfPivot, align 4
  %11 = load double*, double** %array.addr, align 8
  %12 = load i32, i32* %positionOfPivot, align 4
  %13 = load i32, i32* %j, align 4
  call void @swap(double* %11, i32 %12, i32 %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %j, align 4
  %inc4 = add nsw i32 %14, 1
  store i32 %inc4, i32* %j, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %15 = load double*, double** %array.addr, align 8
  %16 = load i32, i32* %positionOfPivot, align 4
  %17 = load i32, i32* %left.addr, align 4
  call void @swap(double* %15, i32 %16, i32 %17)
  %18 = load i32, i32* %positionOfPivot, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quick_sort(double* %array, i32 %left, i32 %right) #0 {
entry:
  %array.addr = alloca double*, align 8
  %left.addr = alloca i32, align 4
  %right.addr = alloca i32, align 4
  %positionOfPivot = alloca i32, align 4
  store double* %array, double** %array.addr, align 8
  store i32 %left, i32* %left.addr, align 4
  store i32 %right, i32* %right.addr, align 4
  %0 = load i32, i32* %left.addr, align 4
  %1 = load i32, i32* %right.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load double*, double** %array.addr, align 8
  %3 = load i32, i32* %left.addr, align 4
  %4 = load i32, i32* %right.addr, align 4
  %call = call i32 @partitioning(double* %2, i32 %3, i32 %4)
  store i32 %call, i32* %positionOfPivot, align 4
  %5 = load double*, double** %array.addr, align 8
  %6 = load i32, i32* %left.addr, align 4
  %7 = load i32, i32* %positionOfPivot, align 4
  %sub = sub nsw i32 %7, 1
  call void @quick_sort(double* %5, i32 %6, i32 %sub)
  %8 = load double*, double** %array.addr, align 8
  %9 = load i32, i32* %positionOfPivot, align 4
  %add = add nsw i32 %9, 1
  %10 = load i32, i32* %right.addr, align 4
  call void @quick_sort(double* %8, i32 %add, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %array = alloca [10 x double], align 16
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  %0 = bitcast [10 x double]* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([10 x double]* @__const.main.array to i8*), i64 80, i1 false)
  %arraydecay = getelementptr inbounds [10 x double], [10 x double]* %array, i64 0, i64 0
  call void @quick_sort(double* %arraydecay, i32 0, i32 9)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x double], [10 x double]* %array, i64 0, i64 %idxprom
  %3 = load double, double* %arrayidx, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
