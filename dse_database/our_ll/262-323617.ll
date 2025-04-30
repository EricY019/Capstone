; ModuleID = 'code/262-323617.c'
source_filename = "code/262-323617.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%.4f \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_array_5(double* %array) #0 {
entry:
  %array.addr = alloca double*, align 8
  %i = alloca i32, align 4
  store double* %array, double** %array.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load double*, double** %array.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds double, double* %1, i64 %idx.ext
  %3 = load double, double* %add.ptr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cleandata(double* %p) #0 {
entry:
  %p.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store double* %p, double** %p.addr, align 8
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load double*, double** %p.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds double, double* %1, i64 %idx.ext
  %3 = load double, double* %add.ptr, align 8
  %cmp1 = fcmp oge double %3, 1.000000e-03
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load double*, double** %p.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idx.ext2 = sext i32 %5 to i64
  %add.ptr3 = getelementptr inbounds double, double* %4, i64 %idx.ext2
  %6 = load double, double* %add.ptr3, align 8
  %7 = load double*, double** %p.addr, align 8
  %8 = load i32, i32* %j, align 4
  %idx.ext4 = sext i32 %8 to i64
  %add.ptr5 = getelementptr inbounds double, double* %7, i64 %idx.ext4
  store double %6, double* %add.ptr5, align 8
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc6 = add nsw i32 %10, 1
  store i32 %inc6, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc12, %for.end
  %11 = load i32, i32* %j, align 4
  %cmp8 = icmp slt i32 %11, 5
  br i1 %cmp8, label %for.body9, label %for.end14

for.body9:                                        ; preds = %for.cond7
  %12 = load double*, double** %p.addr, align 8
  %13 = load i32, i32* %j, align 4
  %idx.ext10 = sext i32 %13 to i64
  %add.ptr11 = getelementptr inbounds double, double* %12, i64 %idx.ext10
  store double 0.000000e+00, double* %add.ptr11, align 8
  br label %for.inc12

for.inc12:                                        ; preds = %for.body9
  %14 = load i32, i32* %j, align 4
  %inc13 = add nsw i32 %14, 1
  store i32 %inc13, i32* %j, align 4
  br label %for.cond7, !llvm.loop !7

for.end14:                                        ; preds = %for.cond7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %data = alloca [5 x double], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [5 x double]* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false)
  %1 = bitcast i8* %0 to [5 x double]*
  %2 = getelementptr inbounds [5 x double], [5 x double]* %1, i32 0, i32 0
  store double 8.900000e-01, double* %2, align 16
  %3 = getelementptr inbounds [5 x double], [5 x double]* %1, i32 0, i32 1
  store double 7.800000e-01, double* %3, align 8
  %4 = getelementptr inbounds [5 x double], [5 x double]* %1, i32 0, i32 2
  store double 9.000000e-04, double* %4, align 16
  %5 = getelementptr inbounds [5 x double], [5 x double]* %1, i32 0, i32 3
  store double 6.700000e-01, double* %5, align 8
  %6 = getelementptr inbounds [5 x double], [5 x double]* %1, i32 0, i32 4
  store double 5.600000e-01, double* %6, align 16
  %arraydecay = getelementptr inbounds [5 x double], [5 x double]* %data, i64 0, i64 0
  call void @print_array_5(double* %arraydecay)
  %arraydecay1 = getelementptr inbounds [5 x double], [5 x double]* %data, i64 0, i64 0
  call void @cleandata(double* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [5 x double], [5 x double]* %data, i64 0, i64 0
  call void @print_array_5(double* %arraydecay2)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }

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
