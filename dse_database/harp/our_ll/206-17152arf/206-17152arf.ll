; ModuleID = 'code/206-17152arf.c'
source_filename = "code/206-17152arf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"the origin dip ary: \0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"the mult dip ary: \0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ary[%d]=%8.3f \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %dip = alloca [5 x double], align 16
  %0 = bitcast [5 x double]* %dip to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false)
  %1 = bitcast i8* %0 to [5 x double]*
  %2 = getelementptr inbounds [5 x double], [5 x double]* %1, i32 0, i32 0
  store double 5.000000e+00, double* %2, align 16
  %3 = getelementptr inbounds [5 x double], [5 x double]* %1, i32 0, i32 1
  store double 1.020000e+01, double* %3, align 8
  %4 = getelementptr inbounds [5 x double], [5 x double]* %1, i32 0, i32 2
  store double 3.000000e+00, double* %4, align 16
  %5 = getelementptr inbounds [5 x double], [5 x double]* %1, i32 0, i32 3
  store double 4.000000e+00, double* %5, align 8
  %6 = getelementptr inbounds [5 x double], [5 x double]* %1, i32 0, i32 4
  store double 1.000000e+02, double* %6, align 16
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %arraydecay = getelementptr inbounds [5 x double], [5 x double]* %dip, i64 0, i64 0
  call void @show_array(double* %arraydecay, i32 5)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %arraydecay2 = getelementptr inbounds [5 x double], [5 x double]* %dip, i64 0, i64 0
  call void @mult_array(double* %arraydecay2, double 2.000000e+00, i32 5)
  %arraydecay3 = getelementptr inbounds [5 x double], [5 x double]* %dip, i64 0, i64 0
  call void @show_array(double* %arraydecay3, i32 5)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_array(double* %ary, i32 %len) #0 {
entry:
  %ary.addr = alloca double*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store double* %ary, double** %ary.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load double*, double** %ary.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %2, double %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mult_array(double* %ary, double %mult, i32 %len) #0 {
entry:
  %ary.addr = alloca double*, align 8
  %mult.addr = alloca double, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store double* %ary, double** %ary.addr, align 8
  store double %mult, double* %mult.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double, double* %mult.addr, align 8
  %3 = load double*, double** %ary.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8
  %mul = fmul double %5, %2
  store double %mul, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
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
