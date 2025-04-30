; ModuleID = 'code/334-86946.c'
source_filename = "code/334-86946.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.source = private unnamed_addr constant [2 x [5 x double]] [[5 x double] [double 1.100000e+00, double 2.200000e+00, double 3.300000e+00, double 4.400000e+00, double 5.500000e+00], [5 x double] [double 6.600000e+00, double 7.700000e+00, double 8.800000e+00, double 9.900000e+00, double 1.100000e+00]], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %source = alloca [2 x [5 x double]], align 16
  %target1 = alloca [2 x [5 x double]], align 16
  %target2 = alloca [2 x [5 x double]], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [2 x [5 x double]]* %source to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([2 x [5 x double]]* @__const.main.source to i8*), i64 80, i1 false)
  %arrayidx = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %source, i64 0, i64 0
  %arraydecay = getelementptr inbounds [5 x double], [5 x double]* %arrayidx, i64 0, i64 0
  %arrayidx1 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %target1, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [5 x double], [5 x double]* %arrayidx1, i64 0, i64 0
  call void @copy_arr(double* %arraydecay, double* %arraydecay2, i32 5)
  %arrayidx3 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %source, i64 0, i64 1
  %arraydecay4 = getelementptr inbounds [5 x double], [5 x double]* %arrayidx3, i64 0, i64 0
  %arrayidx5 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %target1, i64 0, i64 1
  %arraydecay6 = getelementptr inbounds [5 x double], [5 x double]* %arrayidx5, i64 0, i64 0
  call void @copy_arr(double* %arraydecay4, double* %arraydecay6, i32 5)
  %arraydecay7 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %source, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [5 x double], [5 x double]* %arraydecay7, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %target2, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [5 x double], [5 x double]* %arraydecay9, i64 0, i64 0
  call void @copy_ptr(double* %arraydecay8, double* %arraydecay10, i32 5)
  %arraydecay11 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %source, i64 0, i64 0
  %add.ptr = getelementptr inbounds [5 x double], [5 x double]* %arraydecay11, i64 1
  %arraydecay12 = getelementptr inbounds [5 x double], [5 x double]* %add.ptr, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %target2, i64 0, i64 0
  %add.ptr14 = getelementptr inbounds [5 x double], [5 x double]* %arraydecay13, i64 1
  %arraydecay15 = getelementptr inbounds [5 x double], [5 x double]* %add.ptr14, i64 0, i64 0
  call void @copy_ptr(double* %arraydecay12, double* %arraydecay15, i32 5)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_arr(double* %source, double* %target, i32 %n) #0 {
entry:
  %source.addr = alloca double*, align 8
  %target.addr = alloca double*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store double* %source, double** %source.addr, align 8
  store double* %target, double** %target.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double*, double** %source.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds double, double* %2, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8
  %5 = load double*, double** %target.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds double, double* %5, i64 %idxprom1
  store double %4, double* %arrayidx2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_ptr(double* %source, double* %target, i32 %n) #0 {
entry:
  %source.addr = alloca double*, align 8
  %target.addr = alloca double*, align 8
  %n.addr = alloca i32, align 4
  store double* %source, double** %source.addr, align 8
  store double* %target, double** %target.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %n.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load double*, double** %source.addr, align 8
  %incdec.ptr = getelementptr inbounds double, double* %1, i32 1
  store double* %incdec.ptr, double** %source.addr, align 8
  %2 = load double, double* %1, align 8
  %3 = load double*, double** %target.addr, align 8
  %incdec.ptr1 = getelementptr inbounds double, double* %3, i32 1
  store double* %incdec.ptr1, double** %target.addr, align 8
  store double %2, double* %3, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
