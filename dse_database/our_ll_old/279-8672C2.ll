; ModuleID = './code/279-8672C2.c'
source_filename = "./code/279-8672C2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.CMemoryTrade = type { i64, i64, i32, i32, i64, i64, i8 }
%struct.timespec = type { i64, i64 }

@trades = global [22200000 x %struct.CMemoryTrade] zeroinitializer, align 8
@.str = private unnamed_addr constant [21 x i8] c"%d - duration %d ms\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"buyCost = %ld sellCost = %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @initTrades() #0 {
entry:
  %i = alloca i64, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8
  %cmp = icmp slt i64 %0, 22200000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %i, align 8
  %2 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds [22200000 x %struct.CMemoryTrade], ptr @trades, i64 0, i64 %2
  %TradeId = getelementptr inbounds %struct.CMemoryTrade, ptr %arrayidx, i32 0, i32 0
  store i64 %1, ptr %TradeId, align 8
  %3 = load i64, ptr %i, align 8
  %arrayidx1 = getelementptr inbounds [22200000 x %struct.CMemoryTrade], ptr @trades, i64 0, i64 %3
  %ClientId = getelementptr inbounds %struct.CMemoryTrade, ptr %arrayidx1, i32 0, i32 1
  store i64 1, ptr %ClientId, align 8
  %4 = load i64, ptr %i, align 8
  %arrayidx2 = getelementptr inbounds [22200000 x %struct.CMemoryTrade], ptr @trades, i64 0, i64 %4
  %VenueCode = getelementptr inbounds %struct.CMemoryTrade, ptr %arrayidx2, i32 0, i32 2
  store i32 123, ptr %VenueCode, align 8
  %5 = load i64, ptr %i, align 8
  %arrayidx3 = getelementptr inbounds [22200000 x %struct.CMemoryTrade], ptr @trades, i64 0, i64 %5
  %InstrumentCode = getelementptr inbounds %struct.CMemoryTrade, ptr %arrayidx3, i32 0, i32 3
  store i32 321, ptr %InstrumentCode, align 4
  %6 = load i64, ptr %i, align 8
  %7 = load i64, ptr %i, align 8
  %arrayidx4 = getelementptr inbounds [22200000 x %struct.CMemoryTrade], ptr @trades, i64 0, i64 %7
  %Price = getelementptr inbounds %struct.CMemoryTrade, ptr %arrayidx4, i32 0, i32 4
  store i64 %6, ptr %Price, align 8
  %8 = load i64, ptr %i, align 8
  %9 = load i64, ptr %i, align 8
  %arrayidx5 = getelementptr inbounds [22200000 x %struct.CMemoryTrade], ptr @trades, i64 0, i64 %9
  %Quantity = getelementptr inbounds %struct.CMemoryTrade, ptr %arrayidx5, i32 0, i32 5
  store i64 %8, ptr %Quantity, align 8
  %10 = load i64, ptr %i, align 8
  %and = and i64 %10, 1
  %cmp6 = icmp eq i64 %and, 0
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %11 = load i64, ptr %i, align 8
  %arrayidx7 = getelementptr inbounds [22200000 x %struct.CMemoryTrade], ptr @trades, i64 0, i64 %11
  %Side = getelementptr inbounds %struct.CMemoryTrade, ptr %arrayidx7, i32 0, i32 6
  store i8 66, ptr %Side, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %12 = load i64, ptr %i, align 8
  %arrayidx8 = getelementptr inbounds [22200000 x %struct.CMemoryTrade], ptr @trades, i64 0, i64 %12
  %Side9 = getelementptr inbounds %struct.CMemoryTrade, ptr %arrayidx8, i32 0, i32 6
  store i8 83, ptr %Side9, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i64, ptr %i, align 8
  %inc = add nsw i64 %13, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define double @getTime() #0 {
entry:
  %spec = alloca %struct.timespec, align 8
  %s = alloca double, align 8
  %ms = alloca double, align 8
  %call = call i32 @clock_gettime(i32 noundef 12, ptr noundef %spec)
  %tv_sec = getelementptr inbounds %struct.timespec, ptr %spec, i32 0, i32 0
  %0 = load i64, ptr %tv_sec, align 8
  %conv = sitofp i64 %0 to double
  store double %conv, ptr %s, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec, ptr %spec, i32 0, i32 1
  %1 = load i64, ptr %tv_nsec, align 8
  %conv1 = sitofp i64 %1 to double
  store double %conv1, ptr %ms, align 8
  %2 = load double, ptr %s, align 8
  %3 = load double, ptr %ms, align 8
  %div = fdiv double %3, 1.000000e+06
  %4 = call double @llvm.fmuladd.f64(double %2, double 1.000000e+03, double %div)
  ret double %4
}

declare i32 @clock_gettime(i32 noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @perfRun(i32 noundef %runNum) #0 {
entry:
  %runNum.addr = alloca i32, align 4
  %startT = alloca double, align 8
  %buyCost = alloca i64, align 8
  %sellCost = alloca i64, align 8
  %i = alloca i64, align 8
  %endT = alloca double, align 8
  %duration = alloca double, align 8
  store i32 %runNum, ptr %runNum.addr, align 4
  %call = call double @getTime()
  store double %call, ptr %startT, align 8
  call void @initTrades()
  store i64 0, ptr %buyCost, align 8
  store i64 0, ptr %sellCost, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8
  %cmp = icmp slt i64 %0, 22200000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds [22200000 x %struct.CMemoryTrade], ptr @trades, i64 0, i64 %1
  %Side = getelementptr inbounds %struct.CMemoryTrade, ptr %arrayidx, i32 0, i32 6
  %2 = load i8, ptr %Side, align 8
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 66
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = load i64, ptr %i, align 8
  %arrayidx3 = getelementptr inbounds [22200000 x %struct.CMemoryTrade], ptr @trades, i64 0, i64 %3
  %Price = getelementptr inbounds %struct.CMemoryTrade, ptr %arrayidx3, i32 0, i32 4
  %4 = load i64, ptr %Price, align 8
  %5 = load i64, ptr %i, align 8
  %arrayidx4 = getelementptr inbounds [22200000 x %struct.CMemoryTrade], ptr @trades, i64 0, i64 %5
  %Quantity = getelementptr inbounds %struct.CMemoryTrade, ptr %arrayidx4, i32 0, i32 5
  %6 = load i64, ptr %Quantity, align 8
  %mul = mul nsw i64 %4, %6
  %7 = load i64, ptr %buyCost, align 8
  %add = add nsw i64 %7, %mul
  store i64 %add, ptr %buyCost, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %8 = load i64, ptr %i, align 8
  %arrayidx5 = getelementptr inbounds [22200000 x %struct.CMemoryTrade], ptr @trades, i64 0, i64 %8
  %Price6 = getelementptr inbounds %struct.CMemoryTrade, ptr %arrayidx5, i32 0, i32 4
  %9 = load i64, ptr %Price6, align 8
  %10 = load i64, ptr %i, align 8
  %arrayidx7 = getelementptr inbounds [22200000 x %struct.CMemoryTrade], ptr @trades, i64 0, i64 %10
  %Quantity8 = getelementptr inbounds %struct.CMemoryTrade, ptr %arrayidx7, i32 0, i32 5
  %11 = load i64, ptr %Quantity8, align 8
  %mul9 = mul nsw i64 %9, %11
  %12 = load i64, ptr %sellCost, align 8
  %add10 = add nsw i64 %12, %mul9
  store i64 %add10, ptr %sellCost, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i64, ptr %i, align 8
  %inc = add nsw i64 %13, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %call11 = call double @getTime()
  store double %call11, ptr %endT, align 8
  %14 = load double, ptr %endT, align 8
  %15 = load double, ptr %startT, align 8
  %sub = fsub double %14, %15
  store double %sub, ptr %duration, align 8
  %16 = load i32, ptr %runNum.addr, align 4
  %17 = load double, ptr %duration, align 8
  %conv12 = fptosi double %17 to i32
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %16, i32 noundef %conv12)
  %18 = load i64, ptr %buyCost, align 8
  %19 = load i64, ptr %sellCost, align 8
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %18, i64 noundef %19)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  call void @perfRun(i32 noundef %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
