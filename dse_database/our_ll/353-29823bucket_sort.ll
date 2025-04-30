; ModuleID = 'code/353-29823bucket_sort.c'
source_filename = "code/353-29823bucket_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { double, %struct.node* }

@.str = private unnamed_addr constant [19 x i8] c"the data is %f,%f\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"the insertion failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"\0Athe %dth bucket:\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%f, \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"the dValue is %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"the myBucket is empty\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"the myBucket is not empty\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %srcdata = alloca [10 x double], align 16
  %bArray = alloca [10 x %struct.node], align 16
  %pNext = alloca %struct.node*, align 8
  %idx = alloca i32, align 4
  %jdx = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store %struct.node* null, %struct.node** %pNext, align 8
  %call = call i64 @time(i64* null) #4
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #4
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %idx, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand() #4
  %conv3 = sitofp i32 %call2 to double
  %mul = fmul double %conv3, 1.000000e+00
  %div = fdiv double %mul, 0x41DFFFFFFFC00000
  %1 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x double], [10 x double]* %srcdata, i64 0, i64 %idxprom
  store double %div, double* %arrayidx, align 8
  %2 = load i32, i32* %idx, align 4
  %idxprom4 = sext i32 %2 to i64
  %arrayidx5 = getelementptr inbounds [10 x double], [10 x double]* %srcdata, i64 0, i64 %idxprom4
  %3 = load double, double* %arrayidx5, align 8
  %4 = load i32, i32* %idx, align 4
  %idxprom6 = sext i32 %4 to i64
  %arrayidx7 = getelementptr inbounds [10 x double], [10 x double]* %srcdata, i64 0, i64 %idxprom6
  %5 = load double, double* %arrayidx7, align 8
  %mul8 = fmul double %5, 1.000000e+01
  %conv9 = fptrunc double %mul8 to float
  %conv10 = fpext float %conv9 to double
  %6 = call double @llvm.floor.f64(double %conv10)
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), double %3, double %6)
  %7 = load i32, i32* %idx, align 4
  %idxprom12 = sext i32 %7 to i64
  %arrayidx13 = getelementptr inbounds [10 x %struct.node], [10 x %struct.node]* %bArray, i64 0, i64 %idxprom12
  %dValue = getelementptr inbounds %struct.node, %struct.node* %arrayidx13, i32 0, i32 0
  store double -1.000000e+00, double* %dValue, align 16
  %8 = load i32, i32* %idx, align 4
  %idxprom14 = sext i32 %8 to i64
  %arrayidx15 = getelementptr inbounds [10 x %struct.node], [10 x %struct.node]* %bArray, i64 0, i64 %idxprom14
  %pNext16 = getelementptr inbounds %struct.node, %struct.node* %arrayidx15, i32 0, i32 1
  store %struct.node* null, %struct.node** %pNext16, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %idx, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc38, %for.end
  %10 = load i32, i32* %idx, align 4
  %cmp18 = icmp slt i32 %10, 10
  br i1 %cmp18, label %for.body20, label %for.end40

for.body20:                                       ; preds = %for.cond17
  %11 = load i32, i32* %idx, align 4
  %idxprom21 = sext i32 %11 to i64
  %arrayidx22 = getelementptr inbounds [10 x double], [10 x double]* %srcdata, i64 0, i64 %idxprom21
  %12 = load double, double* %arrayidx22, align 8
  %mul23 = fmul double %12, 1.000000e+01
  %conv24 = fptrunc double %mul23 to float
  %conv25 = fpext float %conv24 to double
  %13 = call double @llvm.floor.f64(double %conv25)
  %conv26 = fptosi double %13 to i32
  store i32 %conv26, i32* %jdx, align 4
  %14 = load i32, i32* %jdx, align 4
  %idxprom27 = sext i32 %14 to i64
  %arrayidx28 = getelementptr inbounds [10 x %struct.node], [10 x %struct.node]* %bArray, i64 0, i64 %idxprom27
  %pNext29 = getelementptr inbounds %struct.node, %struct.node* %arrayidx28, i32 0, i32 1
  %15 = load i32, i32* %idx, align 4
  %idxprom30 = sext i32 %15 to i64
  %arrayidx31 = getelementptr inbounds [10 x double], [10 x double]* %srcdata, i64 0, i64 %idxprom30
  %16 = load double, double* %arrayidx31, align 8
  call void @insert_sort(%struct.node** %pNext29, double %16)
  %17 = load i32, i32* %jdx, align 4
  %idxprom32 = sext i32 %17 to i64
  %arrayidx33 = getelementptr inbounds [10 x %struct.node], [10 x %struct.node]* %bArray, i64 0, i64 %idxprom32
  %pNext34 = getelementptr inbounds %struct.node, %struct.node* %arrayidx33, i32 0, i32 1
  %18 = load %struct.node*, %struct.node** %pNext34, align 8
  %cmp35 = icmp eq %struct.node* %18, null
  br i1 %cmp35, label %if.then, label %if.end

if.then:                                          ; preds = %for.body20
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body20
  br label %for.inc38

for.inc38:                                        ; preds = %if.end
  %19 = load i32, i32* %idx, align 4
  %inc39 = add nsw i32 %19, 1
  store i32 %inc39, i32* %idx, align 4
  br label %for.cond17, !llvm.loop !6

for.end40:                                        ; preds = %for.cond17
  store i32 0, i32* %idx, align 4
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc55, %for.end40
  %20 = load i32, i32* %idx, align 4
  %cmp42 = icmp slt i32 %20, 10
  br i1 %cmp42, label %for.body44, label %for.end57

for.body44:                                       ; preds = %for.cond41
  %21 = load i32, i32* %idx, align 4
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %22 = load i32, i32* %idx, align 4
  %idxprom46 = sext i32 %22 to i64
  %arrayidx47 = getelementptr inbounds [10 x %struct.node], [10 x %struct.node]* %bArray, i64 0, i64 %idxprom46
  %pNext48 = getelementptr inbounds %struct.node, %struct.node* %arrayidx47, i32 0, i32 1
  %23 = load %struct.node*, %struct.node** %pNext48, align 8
  store %struct.node* %23, %struct.node** %pNext, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body44
  %24 = load %struct.node*, %struct.node** %pNext, align 8
  %cmp49 = icmp ne %struct.node* %24, null
  br i1 %cmp49, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load %struct.node*, %struct.node** %pNext, align 8
  %dValue51 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 0
  %26 = load double, double* %dValue51, align 8
  %call52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), double %26)
  %27 = load %struct.node*, %struct.node** %pNext, align 8
  %pNext53 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 1
  %28 = load %struct.node*, %struct.node** %pNext53, align 8
  store %struct.node* %28, %struct.node** %pNext, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %call54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %for.inc55

for.inc55:                                        ; preds = %while.end
  %29 = load i32, i32* %idx, align 4
  %inc56 = add nsw i32 %29, 1
  store i32 %inc56, i32* %idx, align 4
  br label %for.cond41, !llvm.loop !8

for.end57:                                        ; preds = %for.cond41
  %30 = load i32, i32* %retval, align 4
  ret i32 %30
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_sort(%struct.node** %pBucket, double %dValue) #0 {
entry:
  %pBucket.addr = alloca %struct.node**, align 8
  %dValue.addr = alloca double, align 8
  %pNext = alloca %struct.node*, align 8
  %pNext2 = alloca %struct.node*, align 8
  %myBucket = alloca %struct.node*, align 8
  store %struct.node** %pBucket, %struct.node*** %pBucket.addr, align 8
  store double %dValue, double* %dValue.addr, align 8
  store %struct.node* null, %struct.node** %pNext, align 8
  store %struct.node* null, %struct.node** %pNext2, align 8
  %0 = load %struct.node**, %struct.node*** %pBucket.addr, align 8
  %1 = load %struct.node*, %struct.node** %0, align 8
  store %struct.node* %1, %struct.node** %myBucket, align 8
  %2 = load double, double* %dValue.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), double %2)
  %3 = load %struct.node*, %struct.node** %myBucket, align 8
  %cmp = icmp eq %struct.node* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %call2 = call noalias align 16 i8* @malloc(i64 16) #4
  %4 = bitcast i8* %call2 to %struct.node*
  store %struct.node* %4, %struct.node** %myBucket, align 8
  %5 = load double, double* %dValue.addr, align 8
  %6 = load %struct.node*, %struct.node** %myBucket, align 8
  %dValue3 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 0
  store double %5, double* %dValue3, align 8
  %7 = load %struct.node*, %struct.node** %myBucket, align 8
  %pNext4 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 1
  store %struct.node* null, %struct.node** %pNext4, align 8
  %8 = load %struct.node*, %struct.node** %myBucket, align 8
  %9 = load %struct.node**, %struct.node*** %pBucket.addr, align 8
  store %struct.node* %8, %struct.node** %9, align 8
  br label %if.end22

if.else:                                          ; preds = %entry
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %10 = load %struct.node*, %struct.node** %myBucket, align 8
  store %struct.node* %10, %struct.node** %pNext, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else
  %11 = load %struct.node*, %struct.node** %pNext, align 8
  %cmp6 = icmp ne %struct.node* %11, null
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct.node*, %struct.node** %pNext, align 8
  %dValue7 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 0
  %13 = load double, double* %dValue7, align 8
  %14 = load double, double* %dValue.addr, align 8
  %cmp8 = fcmp ole double %13, %14
  br i1 %cmp8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %while.body
  %15 = load %struct.node*, %struct.node** %pNext, align 8
  store %struct.node* %15, %struct.node** %myBucket, align 8
  %16 = load %struct.node*, %struct.node** %pNext, align 8
  %pNext10 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 1
  %17 = load %struct.node*, %struct.node** %pNext10, align 8
  store %struct.node* %17, %struct.node** %pNext, align 8
  br label %if.end

if.else11:                                        ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %if.then9
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %if.else11, %while.cond
  %call12 = call noalias align 16 i8* @malloc(i64 16) #4
  %18 = bitcast i8* %call12 to %struct.node*
  store %struct.node* %18, %struct.node** %pNext2, align 8
  %19 = load double, double* %dValue.addr, align 8
  %20 = load %struct.node*, %struct.node** %pNext2, align 8
  %dValue13 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 0
  store double %19, double* %dValue13, align 8
  %21 = load %struct.node*, %struct.node** %pNext2, align 8
  %pNext14 = getelementptr inbounds %struct.node, %struct.node* %21, i32 0, i32 1
  store %struct.node* null, %struct.node** %pNext14, align 8
  %22 = load %struct.node*, %struct.node** %pNext, align 8
  %23 = load %struct.node*, %struct.node** %myBucket, align 8
  %cmp15 = icmp eq %struct.node* %22, %23
  br i1 %cmp15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %while.end
  %24 = load %struct.node*, %struct.node** %myBucket, align 8
  %25 = load %struct.node*, %struct.node** %pNext2, align 8
  %pNext17 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 1
  store %struct.node* %24, %struct.node** %pNext17, align 8
  %26 = load %struct.node*, %struct.node** %pNext2, align 8
  %27 = load %struct.node**, %struct.node*** %pBucket.addr, align 8
  store %struct.node* %26, %struct.node** %27, align 8
  br label %if.end21

if.else18:                                        ; preds = %while.end
  %28 = load %struct.node*, %struct.node** %pNext2, align 8
  %29 = load %struct.node*, %struct.node** %myBucket, align 8
  %pNext19 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 1
  store %struct.node* %28, %struct.node** %pNext19, align 8
  %30 = load %struct.node*, %struct.node** %pNext, align 8
  %31 = load %struct.node*, %struct.node** %pNext2, align 8
  %pNext20 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 1
  store %struct.node* %30, %struct.node** %pNext20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.then16
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
