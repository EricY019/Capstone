; ModuleID = './code/269-4145QuickSort.c'
source_filename = "./code/269-4145QuickSort.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.array = private unnamed_addr constant [10 x double] [double 1.000000e+00, double 5.000000e+00, double 7.000000e+00, double 2.000000e+00, double 9.000000e+00, double 3.000000e+00, double 6.000000e+00, double 8.000000e+00, double 0.000000e+00, double 4.000000e+00], align 8
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @swap(ptr noundef %array, i32 noundef %i, i32 noundef %j) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %tmp = alloca double, align 8
  store ptr %array, ptr %array.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  store i32 %j, ptr %j.addr, align 4
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load i32, ptr %i.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds double, ptr %0, i64 %idxprom
  %2 = load double, ptr %arrayidx, align 8
  store double %2, ptr %tmp, align 8
  %3 = load ptr, ptr %array.addr, align 8
  %4 = load i32, ptr %j.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds double, ptr %3, i64 %idxprom1
  %5 = load double, ptr %arrayidx2, align 8
  %6 = load ptr, ptr %array.addr, align 8
  %7 = load i32, ptr %i.addr, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds double, ptr %6, i64 %idxprom3
  store double %5, ptr %arrayidx4, align 8
  %8 = load double, ptr %tmp, align 8
  %9 = load ptr, ptr %array.addr, align 8
  %10 = load i32, ptr %j.addr, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds double, ptr %9, i64 %idxprom5
  store double %8, ptr %arrayidx6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @partitioning(ptr noundef %array, i32 noundef %left, i32 noundef %right) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %left.addr = alloca i32, align 4
  %right.addr = alloca i32, align 4
  %positionOfPivot = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  store i32 %left, ptr %left.addr, align 4
  store i32 %right, ptr %right.addr, align 4
  %0 = load i32, ptr %left.addr, align 4
  store i32 %0, ptr %positionOfPivot, align 4
  %1 = load i32, ptr %left.addr, align 4
  %add = add nsw i32 %1, 1
  store i32 %add, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %right.addr, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %array.addr, align 8
  %5 = load i32, ptr %j, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds double, ptr %4, i64 %idxprom
  %6 = load double, ptr %arrayidx, align 8
  %7 = load ptr, ptr %array.addr, align 8
  %8 = load i32, ptr %left.addr, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds double, ptr %7, i64 %idxprom1
  %9 = load double, ptr %arrayidx2, align 8
  %cmp3 = fcmp olt double %6, %9
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i32, ptr %positionOfPivot, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %positionOfPivot, align 4
  %11 = load ptr, ptr %array.addr, align 8
  %12 = load i32, ptr %positionOfPivot, align 4
  %13 = load i32, ptr %j, align 4
  call void @swap(ptr noundef %11, i32 noundef %12, i32 noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %j, align 4
  %inc4 = add nsw i32 %14, 1
  store i32 %inc4, ptr %j, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %array.addr, align 8
  %16 = load i32, ptr %positionOfPivot, align 4
  %17 = load i32, ptr %left.addr, align 4
  call void @swap(ptr noundef %15, i32 noundef %16, i32 noundef %17)
  %18 = load i32, ptr %positionOfPivot, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @quick_sort(ptr noundef %array, i32 noundef %left, i32 noundef %right) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %left.addr = alloca i32, align 4
  %right.addr = alloca i32, align 4
  %positionOfPivot = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  store i32 %left, ptr %left.addr, align 4
  store i32 %right, ptr %right.addr, align 4
  %0 = load i32, ptr %left.addr, align 4
  %1 = load i32, ptr %right.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %array.addr, align 8
  %3 = load i32, ptr %left.addr, align 4
  %4 = load i32, ptr %right.addr, align 4
  %call = call i32 @partitioning(ptr noundef %2, i32 noundef %3, i32 noundef %4)
  store i32 %call, ptr %positionOfPivot, align 4
  %5 = load ptr, ptr %array.addr, align 8
  %6 = load i32, ptr %left.addr, align 4
  %7 = load i32, ptr %positionOfPivot, align 4
  %sub = sub nsw i32 %7, 1
  call void @quick_sort(ptr noundef %5, i32 noundef %6, i32 noundef %sub)
  %8 = load ptr, ptr %array.addr, align 8
  %9 = load i32, ptr %positionOfPivot, align 4
  %add = add nsw i32 %9, 1
  %10 = load i32, ptr %right.addr, align 4
  call void @quick_sort(ptr noundef %8, i32 noundef %add, i32 noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %array = alloca [10 x double], align 8
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %array, ptr align 8 @__const.main.array, i64 80, i1 false)
  %arraydecay = getelementptr inbounds [10 x double], ptr %array, i64 0, i64 0
  call void @quick_sort(ptr noundef %arraydecay, i32 noundef 0, i32 noundef 9)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x double], ptr %array, i64 0, i64 %idxprom
  %2 = load double, ptr %arrayidx, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
