; ModuleID = 'code/298-11779pr81633.c'
source_filename = "code/298-11779pr81633.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@expected = internal global [4 x [4 x double]] [[4 x double] [double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00], [4 x double] zeroinitializer, [4 x double] zeroinitializer, [4 x double] zeroinitializer], align 16
@identity = internal global [4 x [4 x double]] [[4 x double] [double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00], [4 x double] [double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00], [4 x double] [double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00], [4 x double] [double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00]], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %A = alloca [4 x [4 x double]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [4 x [4 x double]]* %A to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 128, i1 false)
  %arraydecay = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %A, i64 0, i64 0
  call void @kernel([4 x double]* %arraydecay)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %2, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %A, i64 0, i64 %idxprom
  %4 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx, i64 0, i64 %idxprom4
  %5 = load double, double* %arrayidx5, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @expected, i64 0, i64 %idxprom6
  %7 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx7, i64 0, i64 %idxprom8
  %8 = load double, double* %arrayidx9, align 8
  %cmp10 = fcmp une double %5, %8
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %10 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %10, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end13:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernel([4 x double]* %A) #0 {
entry:
  %A.addr = alloca [4 x double]*, align 8
  %tmp = alloca [4 x [4 x double]], align 16
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %j16 = alloca i32, align 4
  %k20 = alloca i32, align 4
  store [4 x double]* %A, [4 x double]** %A.addr, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %k, align 4
  %cmp2 = icmp slt i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @identity, i64 0, i64 %idxprom
  %arrayidx4 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx, i64 0, i64 0
  %3 = load double, double* %arrayidx4, align 16
  %4 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* @identity, i64 0, i64 %idxprom5
  %5 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx6, i64 0, i64 %idxprom7
  %6 = load double, double* %arrayidx8, align 8
  %mul = fmul double %3, %6
  %7 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %tmp, i64 0, i64 %idxprom9
  %8 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx10, i64 0, i64 %idxprom11
  store double %mul, double* %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %9 = load i32, i32* %k, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond1, !llvm.loop !7

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %10 = load i32, i32* %j, align 4
  %inc14 = add nsw i32 %10, 1
  store i32 %inc14, i32* %j, align 4
  br label %for.cond, !llvm.loop !8

for.end15:                                        ; preds = %for.cond
  store i32 0, i32* %j16, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc35, %for.end15
  %11 = load i32, i32* %j16, align 4
  %cmp18 = icmp slt i32 %11, 4
  br i1 %cmp18, label %for.body19, label %for.end37

for.body19:                                       ; preds = %for.cond17
  store i32 0, i32* %k20, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc32, %for.body19
  %12 = load i32, i32* %k20, align 4
  %cmp22 = icmp slt i32 %12, 4
  br i1 %cmp22, label %for.body23, label %for.end34

for.body23:                                       ; preds = %for.cond21
  %13 = load i32, i32* %j16, align 4
  %idxprom24 = sext i32 %13 to i64
  %arrayidx25 = getelementptr inbounds [4 x [4 x double]], [4 x [4 x double]]* %tmp, i64 0, i64 %idxprom24
  %14 = load i32, i32* %k20, align 4
  %idxprom26 = sext i32 %14 to i64
  %arrayidx27 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx25, i64 0, i64 %idxprom26
  %15 = load double, double* %arrayidx27, align 8
  %16 = load [4 x double]*, [4 x double]** %A.addr, align 8
  %17 = load i32, i32* %j16, align 4
  %idxprom28 = sext i32 %17 to i64
  %arrayidx29 = getelementptr inbounds [4 x double], [4 x double]* %16, i64 %idxprom28
  %18 = load i32, i32* %k20, align 4
  %idxprom30 = sext i32 %18 to i64
  %arrayidx31 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx29, i64 0, i64 %idxprom30
  store double %15, double* %arrayidx31, align 8
  br label %for.inc32

for.inc32:                                        ; preds = %for.body23
  %19 = load i32, i32* %k20, align 4
  %inc33 = add nsw i32 %19, 1
  store i32 %inc33, i32* %k20, align 4
  br label %for.cond21, !llvm.loop !9

for.end34:                                        ; preds = %for.cond21
  br label %for.inc35

for.inc35:                                        ; preds = %for.end34
  %20 = load i32, i32* %j16, align 4
  %inc36 = add nsw i32 %20, 1
  store i32 %inc36, i32* %j16, align 4
  br label %for.cond17, !llvm.loop !10

for.end37:                                        ; preds = %for.cond17
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
