; ModuleID = './code/003-2944556_merge_intervals.c'
source_filename = "./code/003-2944556_merge_intervals.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.Interval = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"[%d, %d] \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @merge(ptr noundef %intervals, i32 noundef %intervalsSize, ptr noundef %returnSize) #0 {
entry:
  %intervals.addr = alloca ptr, align 8
  %intervalsSize.addr = alloca i32, align 4
  %returnSize.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %start = alloca i32, align 4
  %tmp = alloca i32, align 4
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %arr = alloca [10000 x i32], align 4
  %ret = alloca ptr, align 8
  store ptr %intervals, ptr %intervals.addr, align 8
  store i32 %intervalsSize, ptr %intervalsSize.addr, align 4
  store ptr %returnSize, ptr %returnSize.addr, align 8
  store i32 0, ptr %i, align 4
  store i32 0, ptr %start, align 4
  store i32 0, ptr %tmp, align 4
  store i32 9999, ptr %min, align 4
  store i32 0, ptr %max, align 4
  %0 = load i32, ptr %intervalsSize.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 8, %conv
  %call = call ptr @malloc(i64 noundef %mul) #4
  store ptr %call, ptr %ret, align 8
  %arraydecay = getelementptr inbounds [10000 x i32], ptr %arr, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 4 %arraydecay, i8 0, i64 40000, i1 false)
  %1 = load ptr, ptr %returnSize.addr, align 8
  store i32 0, ptr %1, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %intervalsSize.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %intervals.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.Interval, ptr %4, i64 %idxprom
  %end = getelementptr inbounds %struct.Interval, ptr %arrayidx, i32 0, i32 1
  %6 = load i32, ptr %end, align 4
  %7 = load ptr, ptr %intervals.addr, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds %struct.Interval, ptr %7, i64 %idxprom2
  %start4 = getelementptr inbounds %struct.Interval, ptr %arrayidx3, i32 0, i32 0
  %9 = load i32, ptr %start4, align 4
  %sub = sub nsw i32 %6, %9
  store i32 %sub, ptr %tmp, align 4
  %10 = load ptr, ptr %intervals.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds %struct.Interval, ptr %10, i64 %idxprom5
  %start7 = getelementptr inbounds %struct.Interval, ptr %arrayidx6, i32 0, i32 0
  %12 = load i32, ptr %start7, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds [10000 x i32], ptr %arr, i64 0, i64 %idxprom8
  %13 = load i32, ptr %arrayidx9, align 4
  %cmp10 = icmp eq i32 %13, 0
  br i1 %cmp10, label %if.then, label %if.else25

if.then:                                          ; preds = %for.body
  %14 = load i32, ptr %tmp, align 4
  %cmp12 = icmp eq i32 %14, 0
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then
  %15 = load ptr, ptr %intervals.addr, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds %struct.Interval, ptr %15, i64 %idxprom15
  %start17 = getelementptr inbounds %struct.Interval, ptr %arrayidx16, i32 0, i32 0
  %17 = load i32, ptr %start17, align 4
  %idxprom18 = sext i32 %17 to i64
  %arrayidx19 = getelementptr inbounds [10000 x i32], ptr %arr, i64 0, i64 %idxprom18
  store i32 -1, ptr %arrayidx19, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %18 = load i32, ptr %tmp, align 4
  %19 = load ptr, ptr %intervals.addr, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds %struct.Interval, ptr %19, i64 %idxprom20
  %start22 = getelementptr inbounds %struct.Interval, ptr %arrayidx21, i32 0, i32 0
  %21 = load i32, ptr %start22, align 4
  %idxprom23 = sext i32 %21 to i64
  %arrayidx24 = getelementptr inbounds [10000 x i32], ptr %arr, i64 0, i64 %idxprom23
  store i32 %18, ptr %arrayidx24, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then14
  br label %if.end42

if.else25:                                        ; preds = %for.body
  %22 = load i32, ptr %tmp, align 4
  %cmp26 = icmp ne i32 %22, 0
  br i1 %cmp26, label %land.lhs.true, label %if.end41

land.lhs.true:                                    ; preds = %if.else25
  %23 = load i32, ptr %tmp, align 4
  %24 = load ptr, ptr %intervals.addr, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %25 to i64
  %arrayidx29 = getelementptr inbounds %struct.Interval, ptr %24, i64 %idxprom28
  %start30 = getelementptr inbounds %struct.Interval, ptr %arrayidx29, i32 0, i32 0
  %26 = load i32, ptr %start30, align 4
  %idxprom31 = sext i32 %26 to i64
  %arrayidx32 = getelementptr inbounds [10000 x i32], ptr %arr, i64 0, i64 %idxprom31
  %27 = load i32, ptr %arrayidx32, align 4
  %cmp33 = icmp sgt i32 %23, %27
  br i1 %cmp33, label %if.then35, label %if.end41

if.then35:                                        ; preds = %land.lhs.true
  %28 = load i32, ptr %tmp, align 4
  %29 = load ptr, ptr %intervals.addr, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom36 = sext i32 %30 to i64
  %arrayidx37 = getelementptr inbounds %struct.Interval, ptr %29, i64 %idxprom36
  %start38 = getelementptr inbounds %struct.Interval, ptr %arrayidx37, i32 0, i32 0
  %31 = load i32, ptr %start38, align 4
  %idxprom39 = sext i32 %31 to i64
  %arrayidx40 = getelementptr inbounds [10000 x i32], ptr %arr, i64 0, i64 %idxprom39
  store i32 %28, ptr %arrayidx40, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then35, %land.lhs.true, %if.else25
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end
  %32 = load ptr, ptr %intervals.addr, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom43 = sext i32 %33 to i64
  %arrayidx44 = getelementptr inbounds %struct.Interval, ptr %32, i64 %idxprom43
  %start45 = getelementptr inbounds %struct.Interval, ptr %arrayidx44, i32 0, i32 0
  %34 = load i32, ptr %start45, align 4
  %35 = load i32, ptr %min, align 4
  %cmp46 = icmp slt i32 %34, %35
  br i1 %cmp46, label %if.then48, label %if.end52

if.then48:                                        ; preds = %if.end42
  %36 = load ptr, ptr %intervals.addr, align 8
  %37 = load i32, ptr %i, align 4
  %idxprom49 = sext i32 %37 to i64
  %arrayidx50 = getelementptr inbounds %struct.Interval, ptr %36, i64 %idxprom49
  %start51 = getelementptr inbounds %struct.Interval, ptr %arrayidx50, i32 0, i32 0
  %38 = load i32, ptr %start51, align 4
  store i32 %38, ptr %min, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end42
  %39 = load ptr, ptr %intervals.addr, align 8
  %40 = load i32, ptr %i, align 4
  %idxprom53 = sext i32 %40 to i64
  %arrayidx54 = getelementptr inbounds %struct.Interval, ptr %39, i64 %idxprom53
  %end55 = getelementptr inbounds %struct.Interval, ptr %arrayidx54, i32 0, i32 1
  %41 = load i32, ptr %end55, align 4
  %42 = load i32, ptr %max, align 4
  %cmp56 = icmp sgt i32 %41, %42
  br i1 %cmp56, label %if.then58, label %if.end62

if.then58:                                        ; preds = %if.end52
  %43 = load ptr, ptr %intervals.addr, align 8
  %44 = load i32, ptr %i, align 4
  %idxprom59 = sext i32 %44 to i64
  %arrayidx60 = getelementptr inbounds %struct.Interval, ptr %43, i64 %idxprom59
  %end61 = getelementptr inbounds %struct.Interval, ptr %arrayidx60, i32 0, i32 1
  %45 = load i32, ptr %end61, align 4
  store i32 %45, ptr %max, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %if.end52
  br label %for.inc

for.inc:                                          ; preds = %if.end62
  %46 = load i32, ptr %i, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %47 = load i32, ptr %min, align 4
  store i32 %47, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end122, %if.then72, %for.end
  %48 = load i32, ptr %i, align 4
  %49 = load i32, ptr %max, align 4
  %cmp63 = icmp sle i32 %48, %49
  br i1 %cmp63, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %50 = load i32, ptr %start, align 4
  %cmp65 = icmp eq i32 %50, 0
  br i1 %cmp65, label %if.then67, label %if.else95

if.then67:                                        ; preds = %while.body
  %51 = load i32, ptr %i, align 4
  %idxprom68 = sext i32 %51 to i64
  %arrayidx69 = getelementptr inbounds [10000 x i32], ptr %arr, i64 0, i64 %idxprom68
  %52 = load i32, ptr %arrayidx69, align 4
  %cmp70 = icmp eq i32 %52, 0
  br i1 %cmp70, label %if.then72, label %if.else74

if.then72:                                        ; preds = %if.then67
  %53 = load i32, ptr %i, align 4
  %inc73 = add nsw i32 %53, 1
  store i32 %inc73, ptr %i, align 4
  br label %while.cond, !llvm.loop !7

if.else74:                                        ; preds = %if.then67
  %54 = load i32, ptr %i, align 4
  %idxprom75 = sext i32 %54 to i64
  %arrayidx76 = getelementptr inbounds [10000 x i32], ptr %arr, i64 0, i64 %idxprom75
  %55 = load i32, ptr %arrayidx76, align 4
  %cmp77 = icmp eq i32 %55, -1
  br i1 %cmp77, label %if.then79, label %if.else87

if.then79:                                        ; preds = %if.else74
  %56 = load i32, ptr %i, align 4
  %57 = load ptr, ptr %ret, align 8
  %58 = load ptr, ptr %returnSize.addr, align 8
  %59 = load i32, ptr %58, align 4
  %idxprom80 = sext i32 %59 to i64
  %arrayidx81 = getelementptr inbounds %struct.Interval, ptr %57, i64 %idxprom80
  %start82 = getelementptr inbounds %struct.Interval, ptr %arrayidx81, i32 0, i32 0
  store i32 %56, ptr %start82, align 4
  %60 = load i32, ptr %i, align 4
  %61 = load ptr, ptr %ret, align 8
  %62 = load ptr, ptr %returnSize.addr, align 8
  %63 = load i32, ptr %62, align 4
  %inc83 = add nsw i32 %63, 1
  store i32 %inc83, ptr %62, align 4
  %idxprom84 = sext i32 %63 to i64
  %arrayidx85 = getelementptr inbounds %struct.Interval, ptr %61, i64 %idxprom84
  %end86 = getelementptr inbounds %struct.Interval, ptr %arrayidx85, i32 0, i32 1
  store i32 %60, ptr %end86, align 4
  br label %if.end93

if.else87:                                        ; preds = %if.else74
  %64 = load i32, ptr %i, align 4
  %idxprom88 = sext i32 %64 to i64
  %arrayidx89 = getelementptr inbounds [10000 x i32], ptr %arr, i64 0, i64 %idxprom88
  %65 = load i32, ptr %arrayidx89, align 4
  store i32 %65, ptr %tmp, align 4
  %66 = load i32, ptr %i, align 4
  %67 = load ptr, ptr %ret, align 8
  %68 = load ptr, ptr %returnSize.addr, align 8
  %69 = load i32, ptr %68, align 4
  %idxprom90 = sext i32 %69 to i64
  %arrayidx91 = getelementptr inbounds %struct.Interval, ptr %67, i64 %idxprom90
  %start92 = getelementptr inbounds %struct.Interval, ptr %arrayidx91, i32 0, i32 0
  store i32 %66, ptr %start92, align 4
  store i32 1, ptr %start, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.else87, %if.then79
  br label %if.end94

if.end94:                                         ; preds = %if.end93
  br label %if.end122

if.else95:                                        ; preds = %while.body
  %70 = load i32, ptr %i, align 4
  %idxprom96 = sext i32 %70 to i64
  %arrayidx97 = getelementptr inbounds [10000 x i32], ptr %arr, i64 0, i64 %idxprom96
  %71 = load i32, ptr %arrayidx97, align 4
  %cmp98 = icmp sgt i32 %71, 0
  br i1 %cmp98, label %if.then100, label %if.else111

if.then100:                                       ; preds = %if.else95
  %72 = load i32, ptr %i, align 4
  %idxprom101 = sext i32 %72 to i64
  %arrayidx102 = getelementptr inbounds [10000 x i32], ptr %arr, i64 0, i64 %idxprom101
  %73 = load i32, ptr %arrayidx102, align 4
  %74 = load i32, ptr %tmp, align 4
  %sub103 = sub nsw i32 %74, 1
  %cmp104 = icmp sgt i32 %73, %sub103
  br i1 %cmp104, label %if.then106, label %if.else109

if.then106:                                       ; preds = %if.then100
  %75 = load i32, ptr %i, align 4
  %idxprom107 = sext i32 %75 to i64
  %arrayidx108 = getelementptr inbounds [10000 x i32], ptr %arr, i64 0, i64 %idxprom107
  %76 = load i32, ptr %arrayidx108, align 4
  store i32 %76, ptr %tmp, align 4
  br label %if.end110

if.else109:                                       ; preds = %if.then100
  %77 = load i32, ptr %tmp, align 4
  %dec = add nsw i32 %77, -1
  store i32 %dec, ptr %tmp, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.else109, %if.then106
  br label %if.end121

if.else111:                                       ; preds = %if.else95
  %78 = load i32, ptr %tmp, align 4
  %dec112 = add nsw i32 %78, -1
  store i32 %dec112, ptr %tmp, align 4
  %79 = load i32, ptr %tmp, align 4
  %cmp113 = icmp eq i32 %79, 0
  br i1 %cmp113, label %if.then115, label %if.end120

if.then115:                                       ; preds = %if.else111
  %80 = load i32, ptr %i, align 4
  %81 = load ptr, ptr %ret, align 8
  %82 = load ptr, ptr %returnSize.addr, align 8
  %83 = load i32, ptr %82, align 4
  %inc116 = add nsw i32 %83, 1
  store i32 %inc116, ptr %82, align 4
  %idxprom117 = sext i32 %83 to i64
  %arrayidx118 = getelementptr inbounds %struct.Interval, ptr %81, i64 %idxprom117
  %end119 = getelementptr inbounds %struct.Interval, ptr %arrayidx118, i32 0, i32 1
  store i32 %80, ptr %end119, align 4
  store i32 0, ptr %start, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then115, %if.else111
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %if.end110
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.end94
  %84 = load i32, ptr %i, align 4
  %inc123 = add nsw i32 %84, 1
  store i32 %inc123, ptr %i, align 4
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %85 = load ptr, ptr %ret, align 8
  ret ptr %85
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %intervals1 = alloca [4 x %struct.Interval], align 4
  %intervals2 = alloca [2 x %struct.Interval], align 4
  %ret = alloca ptr, align 8
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  %i31 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %size, align 4
  %arrayidx = getelementptr inbounds [4 x %struct.Interval], ptr %intervals1, i64 0, i64 0
  %start = getelementptr inbounds %struct.Interval, ptr %arrayidx, i32 0, i32 0
  store i32 1, ptr %start, align 4
  %arrayidx1 = getelementptr inbounds [4 x %struct.Interval], ptr %intervals1, i64 0, i64 0
  %end = getelementptr inbounds %struct.Interval, ptr %arrayidx1, i32 0, i32 1
  store i32 3, ptr %end, align 4
  %arrayidx2 = getelementptr inbounds [4 x %struct.Interval], ptr %intervals1, i64 0, i64 1
  %start3 = getelementptr inbounds %struct.Interval, ptr %arrayidx2, i32 0, i32 0
  store i32 2, ptr %start3, align 4
  %arrayidx4 = getelementptr inbounds [4 x %struct.Interval], ptr %intervals1, i64 0, i64 1
  %end5 = getelementptr inbounds %struct.Interval, ptr %arrayidx4, i32 0, i32 1
  store i32 6, ptr %end5, align 4
  %arrayidx6 = getelementptr inbounds [4 x %struct.Interval], ptr %intervals1, i64 0, i64 2
  %start7 = getelementptr inbounds %struct.Interval, ptr %arrayidx6, i32 0, i32 0
  store i32 8, ptr %start7, align 4
  %arrayidx8 = getelementptr inbounds [4 x %struct.Interval], ptr %intervals1, i64 0, i64 2
  %end9 = getelementptr inbounds %struct.Interval, ptr %arrayidx8, i32 0, i32 1
  store i32 10, ptr %end9, align 4
  %arrayidx10 = getelementptr inbounds [4 x %struct.Interval], ptr %intervals1, i64 0, i64 3
  %start11 = getelementptr inbounds %struct.Interval, ptr %arrayidx10, i32 0, i32 0
  store i32 15, ptr %start11, align 4
  %arrayidx12 = getelementptr inbounds [4 x %struct.Interval], ptr %intervals1, i64 0, i64 3
  %end13 = getelementptr inbounds %struct.Interval, ptr %arrayidx12, i32 0, i32 1
  store i32 18, ptr %end13, align 4
  %arrayidx14 = getelementptr inbounds [2 x %struct.Interval], ptr %intervals2, i64 0, i64 0
  %start15 = getelementptr inbounds %struct.Interval, ptr %arrayidx14, i32 0, i32 0
  store i32 1, ptr %start15, align 4
  %arrayidx16 = getelementptr inbounds [2 x %struct.Interval], ptr %intervals2, i64 0, i64 0
  %end17 = getelementptr inbounds %struct.Interval, ptr %arrayidx16, i32 0, i32 1
  store i32 4, ptr %end17, align 4
  %arrayidx18 = getelementptr inbounds [2 x %struct.Interval], ptr %intervals2, i64 0, i64 1
  %start19 = getelementptr inbounds %struct.Interval, ptr %arrayidx18, i32 0, i32 0
  store i32 2, ptr %start19, align 4
  %arrayidx20 = getelementptr inbounds [2 x %struct.Interval], ptr %intervals2, i64 0, i64 1
  %end21 = getelementptr inbounds %struct.Interval, ptr %arrayidx20, i32 0, i32 1
  store i32 5, ptr %end21, align 4
  %arraydecay = getelementptr inbounds [4 x %struct.Interval], ptr %intervals1, i64 0, i64 0
  %call = call ptr @merge(ptr noundef %arraydecay, i32 noundef 4, ptr noundef %size)
  store ptr %call, ptr %ret, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %ret, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx22 = getelementptr inbounds %struct.Interval, ptr %2, i64 %idxprom
  %start23 = getelementptr inbounds %struct.Interval, ptr %arrayidx22, i32 0, i32 0
  %4 = load i32, ptr %start23, align 4
  %5 = load ptr, ptr %ret, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %6 to i64
  %arrayidx25 = getelementptr inbounds %struct.Interval, ptr %5, i64 %idxprom24
  %end26 = getelementptr inbounds %struct.Interval, ptr %arrayidx25, i32 0, i32 1
  %7 = load i32, ptr %end26, align 4
  %call27 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4, i32 noundef %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %9 = load ptr, ptr %ret, align 8
  call void @free(ptr noundef %9)
  %arraydecay29 = getelementptr inbounds [2 x %struct.Interval], ptr %intervals2, i64 0, i64 0
  %call30 = call ptr @merge(ptr noundef %arraydecay29, i32 noundef 2, ptr noundef %size)
  store ptr %call30, ptr %ret, align 8
  store i32 0, ptr %i31, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc42, %for.end
  %10 = load i32, ptr %i31, align 4
  %11 = load i32, ptr %size, align 4
  %cmp33 = icmp slt i32 %10, %11
  br i1 %cmp33, label %for.body34, label %for.end44

for.body34:                                       ; preds = %for.cond32
  %12 = load ptr, ptr %ret, align 8
  %13 = load i32, ptr %i31, align 4
  %idxprom35 = sext i32 %13 to i64
  %arrayidx36 = getelementptr inbounds %struct.Interval, ptr %12, i64 %idxprom35
  %start37 = getelementptr inbounds %struct.Interval, ptr %arrayidx36, i32 0, i32 0
  %14 = load i32, ptr %start37, align 4
  %15 = load ptr, ptr %ret, align 8
  %16 = load i32, ptr %i31, align 4
  %idxprom38 = sext i32 %16 to i64
  %arrayidx39 = getelementptr inbounds %struct.Interval, ptr %15, i64 %idxprom38
  %end40 = getelementptr inbounds %struct.Interval, ptr %arrayidx39, i32 0, i32 1
  %17 = load i32, ptr %end40, align 4
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %14, i32 noundef %17)
  br label %for.inc42

for.inc42:                                        ; preds = %for.body34
  %18 = load i32, ptr %i31, align 4
  %inc43 = add nsw i32 %18, 1
  store i32 %inc43, ptr %i31, align 4
  br label %for.cond32, !llvm.loop !9

for.end44:                                        ; preds = %for.cond32
  %call45 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %19 = load ptr, ptr %ret, align 8
  call void @free(ptr noundef %19)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #3

declare void @free(ptr noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
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
