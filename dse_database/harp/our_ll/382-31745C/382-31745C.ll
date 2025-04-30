; ModuleID = 'code/382-31745C.c'
source_filename = "code/382-31745C.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CMemoryTrade = type { i64, i64, i32, i32, i64, i64, i8 }
%struct.timespec = type { i64, i64 }

@trades = dso_local global [22200000 x %struct.CMemoryTrade] zeroinitializer, align 16
@.str = private unnamed_addr constant [21 x i8] c"%d - duration %d ms\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"buyCost = %ld sellCost = %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initTrades() #0 {
entry:
  %i = alloca i64, align 8
  %trade = alloca %struct.CMemoryTrade*, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp slt i64 %0, 22200000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [22200000 x %struct.CMemoryTrade], [22200000 x %struct.CMemoryTrade]* @trades, i64 0, i64 %1
  store %struct.CMemoryTrade* %arrayidx, %struct.CMemoryTrade** %trade, align 8
  %2 = load i64, i64* %i, align 8
  %3 = load %struct.CMemoryTrade*, %struct.CMemoryTrade** %trade, align 8
  %TradeId = getelementptr inbounds %struct.CMemoryTrade, %struct.CMemoryTrade* %3, i32 0, i32 0
  store i64 %2, i64* %TradeId, align 8
  %4 = load %struct.CMemoryTrade*, %struct.CMemoryTrade** %trade, align 8
  %ClientId = getelementptr inbounds %struct.CMemoryTrade, %struct.CMemoryTrade* %4, i32 0, i32 1
  store i64 1, i64* %ClientId, align 8
  %5 = load %struct.CMemoryTrade*, %struct.CMemoryTrade** %trade, align 8
  %VenueCode = getelementptr inbounds %struct.CMemoryTrade, %struct.CMemoryTrade* %5, i32 0, i32 2
  store i32 123, i32* %VenueCode, align 8
  %6 = load %struct.CMemoryTrade*, %struct.CMemoryTrade** %trade, align 8
  %InstrumentCode = getelementptr inbounds %struct.CMemoryTrade, %struct.CMemoryTrade* %6, i32 0, i32 3
  store i32 321, i32* %InstrumentCode, align 4
  %7 = load i64, i64* %i, align 8
  %8 = load %struct.CMemoryTrade*, %struct.CMemoryTrade** %trade, align 8
  %Price = getelementptr inbounds %struct.CMemoryTrade, %struct.CMemoryTrade* %8, i32 0, i32 4
  store i64 %7, i64* %Price, align 8
  %9 = load i64, i64* %i, align 8
  %10 = load %struct.CMemoryTrade*, %struct.CMemoryTrade** %trade, align 8
  %Quantity = getelementptr inbounds %struct.CMemoryTrade, %struct.CMemoryTrade* %10, i32 0, i32 5
  store i64 %9, i64* %Quantity, align 8
  %11 = load i64, i64* %i, align 8
  %and = and i64 %11, 1
  %cmp1 = icmp eq i64 %and, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %12 = load %struct.CMemoryTrade*, %struct.CMemoryTrade** %trade, align 8
  %Side = getelementptr inbounds %struct.CMemoryTrade, %struct.CMemoryTrade* %12, i32 0, i32 6
  store i8 66, i8* %Side, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %13 = load %struct.CMemoryTrade*, %struct.CMemoryTrade** %trade, align 8
  %Side2 = getelementptr inbounds %struct.CMemoryTrade, %struct.CMemoryTrade* %13, i32 0, i32 6
  store i8 83, i8* %Side2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i64, i64* %i, align 8
  %inc = add nsw i64 %14, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @getTime() #0 {
entry:
  %spec = alloca %struct.timespec, align 8
  %s = alloca double, align 8
  %ms = alloca double, align 8
  %call = call i32 @clock_gettime(i32 2, %struct.timespec* %spec) #3
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %spec, i32 0, i32 0
  %0 = load i64, i64* %tv_sec, align 8
  %conv = sitofp i64 %0 to double
  store double %conv, double* %s, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %spec, i32 0, i32 1
  %1 = load i64, i64* %tv_nsec, align 8
  %conv1 = sitofp i64 %1 to double
  store double %conv1, double* %ms, align 8
  %2 = load double, double* %s, align 8
  %mul = fmul double %2, 1.000000e+03
  %3 = load double, double* %ms, align 8
  %div = fdiv double %3, 1.000000e+06
  %add = fadd double %mul, %div
  ret double %add
}

; Function Attrs: nounwind
declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perfRun(i32 %runNum) #0 {
entry:
  %runNum.addr = alloca i32, align 4
  %startT = alloca double, align 8
  %buyCost = alloca i64, align 8
  %sellCost = alloca i64, align 8
  %i = alloca i64, align 8
  %trade = alloca %struct.CMemoryTrade*, align 8
  %endT = alloca double, align 8
  %duration = alloca double, align 8
  store i32 %runNum, i32* %runNum.addr, align 4
  %call = call double @getTime()
  store double %call, double* %startT, align 8
  call void @initTrades()
  store i64 0, i64* %buyCost, align 8
  store i64 0, i64* %sellCost, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp slt i64 %0, 22200000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [22200000 x %struct.CMemoryTrade], [22200000 x %struct.CMemoryTrade]* @trades, i64 0, i64 %1
  store %struct.CMemoryTrade* %arrayidx, %struct.CMemoryTrade** %trade, align 8
  %2 = load %struct.CMemoryTrade*, %struct.CMemoryTrade** %trade, align 8
  %Side = getelementptr inbounds %struct.CMemoryTrade, %struct.CMemoryTrade* %2, i32 0, i32 6
  %3 = load i8, i8* %Side, align 8
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 66
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load %struct.CMemoryTrade*, %struct.CMemoryTrade** %trade, align 8
  %Price = getelementptr inbounds %struct.CMemoryTrade, %struct.CMemoryTrade* %4, i32 0, i32 4
  %5 = load i64, i64* %Price, align 8
  %6 = load %struct.CMemoryTrade*, %struct.CMemoryTrade** %trade, align 8
  %Quantity = getelementptr inbounds %struct.CMemoryTrade, %struct.CMemoryTrade* %6, i32 0, i32 5
  %7 = load i64, i64* %Quantity, align 8
  %mul = mul nsw i64 %5, %7
  %8 = load i64, i64* %buyCost, align 8
  %add = add nsw i64 %8, %mul
  store i64 %add, i64* %buyCost, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %9 = load %struct.CMemoryTrade*, %struct.CMemoryTrade** %trade, align 8
  %Price3 = getelementptr inbounds %struct.CMemoryTrade, %struct.CMemoryTrade* %9, i32 0, i32 4
  %10 = load i64, i64* %Price3, align 8
  %11 = load %struct.CMemoryTrade*, %struct.CMemoryTrade** %trade, align 8
  %Quantity4 = getelementptr inbounds %struct.CMemoryTrade, %struct.CMemoryTrade* %11, i32 0, i32 5
  %12 = load i64, i64* %Quantity4, align 8
  %mul5 = mul nsw i64 %10, %12
  %13 = load i64, i64* %sellCost, align 8
  %add6 = add nsw i64 %13, %mul5
  store i64 %add6, i64* %sellCost, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i64, i64* %i, align 8
  %inc = add nsw i64 %14, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %call7 = call double @getTime()
  store double %call7, double* %endT, align 8
  %15 = load double, double* %endT, align 8
  %16 = load double, double* %startT, align 8
  %sub = fsub double %15, %16
  store double %sub, double* %duration, align 8
  %17 = load i32, i32* %runNum.addr, align 4
  %18 = load double, double* %duration, align 8
  %conv8 = fptosi double %18 to i32
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %conv8)
  %19 = load i64, i64* %buyCost, align 8
  %20 = load i64, i64* %sellCost, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %19, i64 %20)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  call void @perfRun(i32 %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
