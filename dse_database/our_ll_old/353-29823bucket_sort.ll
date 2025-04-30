; ModuleID = './code/353-29823bucket_sort.c'
source_filename = "./code/353-29823bucket_sort.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.node = type { double, ptr }

@.str = private unnamed_addr constant [19 x i8] c"the data is %f,%f\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"the insertion failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"\0Athe %dth bucket:\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%f, \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"the dValue is %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"the myBucket is empty\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"the myBucket is not empty\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %srcdata = alloca [10 x double], align 8
  %bArray = alloca [10 x %struct.node], align 8
  %pNext = alloca ptr, align 8
  %idx = alloca i32, align 4
  %jdx = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store ptr null, ptr %pNext, align 8
  %call = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv)
  store i32 0, ptr %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %idx, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand()
  %conv3 = sitofp i32 %call2 to double
  %mul = fmul double %conv3, 1.000000e+00
  %div = fdiv double %mul, 0x41DFFFFFFFC00000
  %1 = load i32, ptr %idx, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x double], ptr %srcdata, i64 0, i64 %idxprom
  store double %div, ptr %arrayidx, align 8
  %2 = load i32, ptr %idx, align 4
  %idxprom4 = sext i32 %2 to i64
  %arrayidx5 = getelementptr inbounds [10 x double], ptr %srcdata, i64 0, i64 %idxprom4
  %3 = load double, ptr %arrayidx5, align 8
  %4 = load i32, ptr %idx, align 4
  %idxprom6 = sext i32 %4 to i64
  %arrayidx7 = getelementptr inbounds [10 x double], ptr %srcdata, i64 0, i64 %idxprom6
  %5 = load double, ptr %arrayidx7, align 8
  %mul8 = fmul double %5, 1.000000e+01
  %conv9 = fptrunc double %mul8 to float
  %conv10 = fpext float %conv9 to double
  %6 = call double @llvm.floor.f64(double %conv10)
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %3, double noundef %6)
  %7 = load i32, ptr %idx, align 4
  %idxprom12 = sext i32 %7 to i64
  %arrayidx13 = getelementptr inbounds [10 x %struct.node], ptr %bArray, i64 0, i64 %idxprom12
  %dValue = getelementptr inbounds %struct.node, ptr %arrayidx13, i32 0, i32 0
  store double -1.000000e+00, ptr %dValue, align 8
  %8 = load i32, ptr %idx, align 4
  %idxprom14 = sext i32 %8 to i64
  %arrayidx15 = getelementptr inbounds [10 x %struct.node], ptr %bArray, i64 0, i64 %idxprom14
  %pNext16 = getelementptr inbounds %struct.node, ptr %arrayidx15, i32 0, i32 1
  store ptr null, ptr %pNext16, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %idx, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %idx, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %idx, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc38, %for.end
  %10 = load i32, ptr %idx, align 4
  %cmp18 = icmp slt i32 %10, 10
  br i1 %cmp18, label %for.body20, label %for.end40

for.body20:                                       ; preds = %for.cond17
  %11 = load i32, ptr %idx, align 4
  %idxprom21 = sext i32 %11 to i64
  %arrayidx22 = getelementptr inbounds [10 x double], ptr %srcdata, i64 0, i64 %idxprom21
  %12 = load double, ptr %arrayidx22, align 8
  %mul23 = fmul double %12, 1.000000e+01
  %conv24 = fptrunc double %mul23 to float
  %conv25 = fpext float %conv24 to double
  %13 = call double @llvm.floor.f64(double %conv25)
  %conv26 = fptosi double %13 to i32
  store i32 %conv26, ptr %jdx, align 4
  %14 = load i32, ptr %jdx, align 4
  %idxprom27 = sext i32 %14 to i64
  %arrayidx28 = getelementptr inbounds [10 x %struct.node], ptr %bArray, i64 0, i64 %idxprom27
  %pNext29 = getelementptr inbounds %struct.node, ptr %arrayidx28, i32 0, i32 1
  %15 = load i32, ptr %idx, align 4
  %idxprom30 = sext i32 %15 to i64
  %arrayidx31 = getelementptr inbounds [10 x double], ptr %srcdata, i64 0, i64 %idxprom30
  %16 = load double, ptr %arrayidx31, align 8
  call void @insert_sort(ptr noundef %pNext29, double noundef %16)
  %17 = load i32, ptr %jdx, align 4
  %idxprom32 = sext i32 %17 to i64
  %arrayidx33 = getelementptr inbounds [10 x %struct.node], ptr %bArray, i64 0, i64 %idxprom32
  %pNext34 = getelementptr inbounds %struct.node, ptr %arrayidx33, i32 0, i32 1
  %18 = load ptr, ptr %pNext34, align 8
  %cmp35 = icmp eq ptr %18, null
  br i1 %cmp35, label %if.then, label %if.end

if.then:                                          ; preds = %for.body20
  %call37 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body20
  br label %for.inc38

for.inc38:                                        ; preds = %if.end
  %19 = load i32, ptr %idx, align 4
  %inc39 = add nsw i32 %19, 1
  store i32 %inc39, ptr %idx, align 4
  br label %for.cond17, !llvm.loop !7

for.end40:                                        ; preds = %for.cond17
  store i32 0, ptr %idx, align 4
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc55, %for.end40
  %20 = load i32, ptr %idx, align 4
  %cmp42 = icmp slt i32 %20, 10
  br i1 %cmp42, label %for.body44, label %for.end57

for.body44:                                       ; preds = %for.cond41
  %21 = load i32, ptr %idx, align 4
  %call45 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %21)
  %22 = load i32, ptr %idx, align 4
  %idxprom46 = sext i32 %22 to i64
  %arrayidx47 = getelementptr inbounds [10 x %struct.node], ptr %bArray, i64 0, i64 %idxprom46
  %pNext48 = getelementptr inbounds %struct.node, ptr %arrayidx47, i32 0, i32 1
  %23 = load ptr, ptr %pNext48, align 8
  store ptr %23, ptr %pNext, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body44
  %24 = load ptr, ptr %pNext, align 8
  %cmp49 = icmp ne ptr %24, null
  br i1 %cmp49, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load ptr, ptr %pNext, align 8
  %dValue51 = getelementptr inbounds %struct.node, ptr %25, i32 0, i32 0
  %26 = load double, ptr %dValue51, align 8
  %call52 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %26)
  %27 = load ptr, ptr %pNext, align 8
  %pNext53 = getelementptr inbounds %struct.node, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %pNext53, align 8
  store ptr %28, ptr %pNext, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %call54 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %for.inc55

for.inc55:                                        ; preds = %while.end
  %29 = load i32, ptr %idx, align 4
  %inc56 = add nsw i32 %29, 1
  store i32 %inc56, ptr %idx, align 4
  br label %for.cond41, !llvm.loop !9

for.end57:                                        ; preds = %for.cond41
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

declare void @srand(i32 noundef) #1

declare i64 @time(ptr noundef) #1

declare i32 @rand() #1

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @insert_sort(ptr noundef %pBucket, double noundef %dValue) #0 {
entry:
  %pBucket.addr = alloca ptr, align 8
  %dValue.addr = alloca double, align 8
  %pNext = alloca ptr, align 8
  %pNext2 = alloca ptr, align 8
  %myBucket = alloca ptr, align 8
  store ptr %pBucket, ptr %pBucket.addr, align 8
  store double %dValue, ptr %dValue.addr, align 8
  store ptr null, ptr %pNext, align 8
  store ptr null, ptr %pNext2, align 8
  %0 = load ptr, ptr %pBucket.addr, align 8
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %myBucket, align 8
  %2 = load double, ptr %dValue.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %2)
  %3 = load ptr, ptr %myBucket, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %call2 = call ptr @malloc(i64 noundef 16) #4
  store ptr %call2, ptr %myBucket, align 8
  %4 = load double, ptr %dValue.addr, align 8
  %5 = load ptr, ptr %myBucket, align 8
  %dValue3 = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 0
  store double %4, ptr %dValue3, align 8
  %6 = load ptr, ptr %myBucket, align 8
  %pNext4 = getelementptr inbounds %struct.node, ptr %6, i32 0, i32 1
  store ptr null, ptr %pNext4, align 8
  %7 = load ptr, ptr %myBucket, align 8
  %8 = load ptr, ptr %pBucket.addr, align 8
  store ptr %7, ptr %8, align 8
  br label %if.end22

if.else:                                          ; preds = %entry
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %9 = load ptr, ptr %myBucket, align 8
  store ptr %9, ptr %pNext, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else
  %10 = load ptr, ptr %pNext, align 8
  %cmp6 = icmp ne ptr %10, null
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %pNext, align 8
  %dValue7 = getelementptr inbounds %struct.node, ptr %11, i32 0, i32 0
  %12 = load double, ptr %dValue7, align 8
  %13 = load double, ptr %dValue.addr, align 8
  %cmp8 = fcmp ole double %12, %13
  br i1 %cmp8, label %if.then9, label %if.else11

if.then9:                                         ; preds = %while.body
  %14 = load ptr, ptr %pNext, align 8
  store ptr %14, ptr %myBucket, align 8
  %15 = load ptr, ptr %pNext, align 8
  %pNext10 = getelementptr inbounds %struct.node, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %pNext10, align 8
  store ptr %16, ptr %pNext, align 8
  br label %if.end

if.else11:                                        ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %if.then9
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %if.else11, %while.cond
  %call12 = call ptr @malloc(i64 noundef 16) #4
  store ptr %call12, ptr %pNext2, align 8
  %17 = load double, ptr %dValue.addr, align 8
  %18 = load ptr, ptr %pNext2, align 8
  %dValue13 = getelementptr inbounds %struct.node, ptr %18, i32 0, i32 0
  store double %17, ptr %dValue13, align 8
  %19 = load ptr, ptr %pNext2, align 8
  %pNext14 = getelementptr inbounds %struct.node, ptr %19, i32 0, i32 1
  store ptr null, ptr %pNext14, align 8
  %20 = load ptr, ptr %pNext, align 8
  %21 = load ptr, ptr %myBucket, align 8
  %cmp15 = icmp eq ptr %20, %21
  br i1 %cmp15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %while.end
  %22 = load ptr, ptr %myBucket, align 8
  %23 = load ptr, ptr %pNext2, align 8
  %pNext17 = getelementptr inbounds %struct.node, ptr %23, i32 0, i32 1
  store ptr %22, ptr %pNext17, align 8
  %24 = load ptr, ptr %pNext2, align 8
  %25 = load ptr, ptr %pBucket.addr, align 8
  store ptr %24, ptr %25, align 8
  br label %if.end21

if.else18:                                        ; preds = %while.end
  %26 = load ptr, ptr %pNext2, align 8
  %27 = load ptr, ptr %myBucket, align 8
  %pNext19 = getelementptr inbounds %struct.node, ptr %27, i32 0, i32 1
  store ptr %26, ptr %pNext19, align 8
  %28 = load ptr, ptr %pNext, align 8
  %29 = load ptr, ptr %pNext2, align 8
  %pNext20 = getelementptr inbounds %struct.node, ptr %29, i32 0, i32 1
  store ptr %28, ptr %pNext20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.then16
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
