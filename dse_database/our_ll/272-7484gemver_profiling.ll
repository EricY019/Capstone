; ModuleID = 'code/272-7484gemver_profiling.c'
source_filename = "code/272-7484gemver_profiling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@u1 = dso_local global [5000 x double] zeroinitializer, align 16
@u2 = dso_local global [5000 x double] zeroinitializer, align 16
@v1 = dso_local global [5000 x double] zeroinitializer, align 16
@v2 = dso_local global [5000 x double] zeroinitializer, align 16
@y = dso_local global [5000 x double] zeroinitializer, align 16
@z = dso_local global [5000 x double] zeroinitializer, align 16
@x = dso_local global [5000 x double] zeroinitializer, align 16
@w = dso_local global [5000 x double] zeroinitializer, align 16
@A = dso_local global [5000 x [5000 x double]] zeroinitializer, align 16
@B = dso_local global [5000 x [5000 x double]] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_array() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc44, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 5000
  br i1 %cmp, label %for.body, label %for.end46

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %conv = sitofp i32 %1 to double
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [5000 x double], [5000 x double]* @u1, i64 0, i64 %idxprom
  store double %conv, double* %arrayidx, align 8
  %3 = load i32, i32* %i, align 4
  %add = add nsw i32 %3, 1
  %div = sdiv i32 %add, 5000
  %conv1 = sitofp i32 %div to double
  %div2 = fdiv double %conv1, 2.000000e+00
  %4 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [5000 x double], [5000 x double]* @u2, i64 0, i64 %idxprom3
  store double %div2, double* %arrayidx4, align 8
  %5 = load i32, i32* %i, align 4
  %add5 = add nsw i32 %5, 1
  %div6 = sdiv i32 %add5, 5000
  %conv7 = sitofp i32 %div6 to double
  %div8 = fdiv double %conv7, 4.000000e+00
  %6 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %6 to i64
  %arrayidx10 = getelementptr inbounds [5000 x double], [5000 x double]* @v1, i64 0, i64 %idxprom9
  store double %div8, double* %arrayidx10, align 8
  %7 = load i32, i32* %i, align 4
  %add11 = add nsw i32 %7, 1
  %div12 = sdiv i32 %add11, 5000
  %conv13 = sitofp i32 %div12 to double
  %div14 = fdiv double %conv13, 6.000000e+00
  %8 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %8 to i64
  %arrayidx16 = getelementptr inbounds [5000 x double], [5000 x double]* @v2, i64 0, i64 %idxprom15
  store double %div14, double* %arrayidx16, align 8
  %9 = load i32, i32* %i, align 4
  %add17 = add nsw i32 %9, 1
  %div18 = sdiv i32 %add17, 5000
  %conv19 = sitofp i32 %div18 to double
  %div20 = fdiv double %conv19, 8.000000e+00
  %10 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %10 to i64
  %arrayidx22 = getelementptr inbounds [5000 x double], [5000 x double]* @y, i64 0, i64 %idxprom21
  store double %div20, double* %arrayidx22, align 8
  %11 = load i32, i32* %i, align 4
  %add23 = add nsw i32 %11, 1
  %div24 = sdiv i32 %add23, 5000
  %conv25 = sitofp i32 %div24 to double
  %div26 = fdiv double %conv25, 9.000000e+00
  %12 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %12 to i64
  %arrayidx28 = getelementptr inbounds [5000 x double], [5000 x double]* @z, i64 0, i64 %idxprom27
  store double %div26, double* %arrayidx28, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %13 to i64
  %arrayidx30 = getelementptr inbounds [5000 x double], [5000 x double]* @x, i64 0, i64 %idxprom29
  store double 0.000000e+00, double* %arrayidx30, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %14 to i64
  %arrayidx32 = getelementptr inbounds [5000 x double], [5000 x double]* @w, i64 0, i64 %idxprom31
  store double 0.000000e+00, double* %arrayidx32, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc, %for.body
  %15 = load i32, i32* %j, align 4
  %cmp34 = icmp slt i32 %15, 5000
  br i1 %cmp34, label %for.body36, label %for.end

for.body36:                                       ; preds = %for.cond33
  %16 = load i32, i32* %i, align 4
  %conv37 = sitofp i32 %16 to double
  %17 = load i32, i32* %j, align 4
  %conv38 = sitofp i32 %17 to double
  %mul = fmul double %conv37, %conv38
  %div39 = fdiv double %mul, 5.000000e+03
  %18 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %18 to i64
  %arrayidx41 = getelementptr inbounds [5000 x [5000 x double]], [5000 x [5000 x double]]* @A, i64 0, i64 %idxprom40
  %19 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %19 to i64
  %arrayidx43 = getelementptr inbounds [5000 x double], [5000 x double]* %arrayidx41, i64 0, i64 %idxprom42
  store double %div39, double* %arrayidx43, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body36
  %20 = load i32, i32* %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond33, !llvm.loop !4

for.end:                                          ; preds = %for.cond33
  br label %for.inc44

for.inc44:                                        ; preds = %for.end
  %21 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %21, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end46:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @init_array()
  %0 = load double, double* getelementptr inbounds ([5000 x double], [5000 x double]* @w, i64 0, i64 0), align 16
  %conv = fptosi double %0 to i32
  ret i32 %conv
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
