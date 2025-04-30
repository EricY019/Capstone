; ModuleID = 'code/003-2944556_merge_intervals.c'
source_filename = "code/003-2944556_merge_intervals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Interval = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"[%d, %d] \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Interval* @merge(%struct.Interval* %intervals, i32 %intervalsSize, i32* %returnSize) #0 {
entry:
  %intervals.addr = alloca %struct.Interval*, align 8
  %intervalsSize.addr = alloca i32, align 4
  %returnSize.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %start = alloca i32, align 4
  %tmp = alloca i32, align 4
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %arr = alloca [10000 x i32], align 16
  %ret = alloca %struct.Interval*, align 8
  store %struct.Interval* %intervals, %struct.Interval** %intervals.addr, align 8
  store i32 %intervalsSize, i32* %intervalsSize.addr, align 4
  store i32* %returnSize, i32** %returnSize.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %start, align 4
  store i32 0, i32* %tmp, align 4
  store i32 9999, i32* %min, align 4
  store i32 0, i32* %max, align 4
  %0 = load i32, i32* %intervalsSize.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 8, %conv
  %call = call noalias align 16 i8* @malloc(i64 %mul) #4
  %1 = bitcast i8* %call to %struct.Interval*
  store %struct.Interval* %1, %struct.Interval** %ret, align 8
  %arraydecay = getelementptr inbounds [10000 x i32], [10000 x i32]* %arr, i64 0, i64 0
  %2 = bitcast i32* %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40000, i1 false)
  %3 = load i32*, i32** %returnSize.addr, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %intervalsSize.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.Interval*, %struct.Interval** %intervals.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.Interval, %struct.Interval* %6, i64 %idxprom
  %end = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx, i32 0, i32 1
  %8 = load i32, i32* %end, align 4
  %9 = load %struct.Interval*, %struct.Interval** %intervals.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %10 to i64
  %arrayidx3 = getelementptr inbounds %struct.Interval, %struct.Interval* %9, i64 %idxprom2
  %start4 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx3, i32 0, i32 0
  %11 = load i32, i32* %start4, align 4
  %sub = sub nsw i32 %8, %11
  store i32 %sub, i32* %tmp, align 4
  %12 = load %struct.Interval*, %struct.Interval** %intervals.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds %struct.Interval, %struct.Interval* %12, i64 %idxprom5
  %start7 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx6, i32 0, i32 0
  %14 = load i32, i32* %start7, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds [10000 x i32], [10000 x i32]* %arr, i64 0, i64 %idxprom8
  %15 = load i32, i32* %arrayidx9, align 4
  %cmp10 = icmp eq i32 %15, 0
  br i1 %cmp10, label %if.then, label %if.else25

if.then:                                          ; preds = %for.body
  %16 = load i32, i32* %tmp, align 4
  %cmp12 = icmp eq i32 %16, 0
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then
  %17 = load %struct.Interval*, %struct.Interval** %intervals.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds %struct.Interval, %struct.Interval* %17, i64 %idxprom15
  %start17 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx16, i32 0, i32 0
  %19 = load i32, i32* %start17, align 4
  %idxprom18 = sext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds [10000 x i32], [10000 x i32]* %arr, i64 0, i64 %idxprom18
  store i32 -1, i32* %arrayidx19, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %20 = load i32, i32* %tmp, align 4
  %21 = load %struct.Interval*, %struct.Interval** %intervals.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %22 to i64
  %arrayidx21 = getelementptr inbounds %struct.Interval, %struct.Interval* %21, i64 %idxprom20
  %start22 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx21, i32 0, i32 0
  %23 = load i32, i32* %start22, align 4
  %idxprom23 = sext i32 %23 to i64
  %arrayidx24 = getelementptr inbounds [10000 x i32], [10000 x i32]* %arr, i64 0, i64 %idxprom23
  store i32 %20, i32* %arrayidx24, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then14
  br label %if.end42

if.else25:                                        ; preds = %for.body
  %24 = load i32, i32* %tmp, align 4
  %cmp26 = icmp ne i32 %24, 0
  br i1 %cmp26, label %land.lhs.true, label %if.end41

land.lhs.true:                                    ; preds = %if.else25
  %25 = load i32, i32* %tmp, align 4
  %26 = load %struct.Interval*, %struct.Interval** %intervals.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %27 to i64
  %arrayidx29 = getelementptr inbounds %struct.Interval, %struct.Interval* %26, i64 %idxprom28
  %start30 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx29, i32 0, i32 0
  %28 = load i32, i32* %start30, align 4
  %idxprom31 = sext i32 %28 to i64
  %arrayidx32 = getelementptr inbounds [10000 x i32], [10000 x i32]* %arr, i64 0, i64 %idxprom31
  %29 = load i32, i32* %arrayidx32, align 4
  %cmp33 = icmp sgt i32 %25, %29
  br i1 %cmp33, label %if.then35, label %if.end41

if.then35:                                        ; preds = %land.lhs.true
  %30 = load i32, i32* %tmp, align 4
  %31 = load %struct.Interval*, %struct.Interval** %intervals.addr, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %32 to i64
  %arrayidx37 = getelementptr inbounds %struct.Interval, %struct.Interval* %31, i64 %idxprom36
  %start38 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx37, i32 0, i32 0
  %33 = load i32, i32* %start38, align 4
  %idxprom39 = sext i32 %33 to i64
  %arrayidx40 = getelementptr inbounds [10000 x i32], [10000 x i32]* %arr, i64 0, i64 %idxprom39
  store i32 %30, i32* %arrayidx40, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then35, %land.lhs.true, %if.else25
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end
  %34 = load %struct.Interval*, %struct.Interval** %intervals.addr, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %35 to i64
  %arrayidx44 = getelementptr inbounds %struct.Interval, %struct.Interval* %34, i64 %idxprom43
  %start45 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx44, i32 0, i32 0
  %36 = load i32, i32* %start45, align 4
  %37 = load i32, i32* %min, align 4
  %cmp46 = icmp slt i32 %36, %37
  br i1 %cmp46, label %if.then48, label %if.end52

if.then48:                                        ; preds = %if.end42
  %38 = load %struct.Interval*, %struct.Interval** %intervals.addr, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %39 to i64
  %arrayidx50 = getelementptr inbounds %struct.Interval, %struct.Interval* %38, i64 %idxprom49
  %start51 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx50, i32 0, i32 0
  %40 = load i32, i32* %start51, align 4
  store i32 %40, i32* %min, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end42
  %41 = load %struct.Interval*, %struct.Interval** %intervals.addr, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %42 to i64
  %arrayidx54 = getelementptr inbounds %struct.Interval, %struct.Interval* %41, i64 %idxprom53
  %end55 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx54, i32 0, i32 1
  %43 = load i32, i32* %end55, align 4
  %44 = load i32, i32* %max, align 4
  %cmp56 = icmp sgt i32 %43, %44
  br i1 %cmp56, label %if.then58, label %if.end62

if.then58:                                        ; preds = %if.end52
  %45 = load %struct.Interval*, %struct.Interval** %intervals.addr, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %46 to i64
  %arrayidx60 = getelementptr inbounds %struct.Interval, %struct.Interval* %45, i64 %idxprom59
  %end61 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx60, i32 0, i32 1
  %47 = load i32, i32* %end61, align 4
  store i32 %47, i32* %max, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %if.end52
  br label %for.inc

for.inc:                                          ; preds = %if.end62
  %48 = load i32, i32* %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %49 = load i32, i32* %min, align 4
  store i32 %49, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end122, %if.then72, %for.end
  %50 = load i32, i32* %i, align 4
  %51 = load i32, i32* %max, align 4
  %cmp63 = icmp sle i32 %50, %51
  br i1 %cmp63, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %52 = load i32, i32* %start, align 4
  %cmp65 = icmp eq i32 %52, 0
  br i1 %cmp65, label %if.then67, label %if.else95

if.then67:                                        ; preds = %while.body
  %53 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %53 to i64
  %arrayidx69 = getelementptr inbounds [10000 x i32], [10000 x i32]* %arr, i64 0, i64 %idxprom68
  %54 = load i32, i32* %arrayidx69, align 4
  %cmp70 = icmp eq i32 %54, 0
  br i1 %cmp70, label %if.then72, label %if.else74

if.then72:                                        ; preds = %if.then67
  %55 = load i32, i32* %i, align 4
  %inc73 = add nsw i32 %55, 1
  store i32 %inc73, i32* %i, align 4
  br label %while.cond, !llvm.loop !6

if.else74:                                        ; preds = %if.then67
  %56 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %56 to i64
  %arrayidx76 = getelementptr inbounds [10000 x i32], [10000 x i32]* %arr, i64 0, i64 %idxprom75
  %57 = load i32, i32* %arrayidx76, align 4
  %cmp77 = icmp eq i32 %57, -1
  br i1 %cmp77, label %if.then79, label %if.else87

if.then79:                                        ; preds = %if.else74
  %58 = load i32, i32* %i, align 4
  %59 = load %struct.Interval*, %struct.Interval** %ret, align 8
  %60 = load i32*, i32** %returnSize.addr, align 8
  %61 = load i32, i32* %60, align 4
  %idxprom80 = sext i32 %61 to i64
  %arrayidx81 = getelementptr inbounds %struct.Interval, %struct.Interval* %59, i64 %idxprom80
  %start82 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx81, i32 0, i32 0
  store i32 %58, i32* %start82, align 4
  %62 = load i32, i32* %i, align 4
  %63 = load %struct.Interval*, %struct.Interval** %ret, align 8
  %64 = load i32*, i32** %returnSize.addr, align 8
  %65 = load i32, i32* %64, align 4
  %inc83 = add nsw i32 %65, 1
  store i32 %inc83, i32* %64, align 4
  %idxprom84 = sext i32 %65 to i64
  %arrayidx85 = getelementptr inbounds %struct.Interval, %struct.Interval* %63, i64 %idxprom84
  %end86 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx85, i32 0, i32 1
  store i32 %62, i32* %end86, align 4
  br label %if.end93

if.else87:                                        ; preds = %if.else74
  %66 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %66 to i64
  %arrayidx89 = getelementptr inbounds [10000 x i32], [10000 x i32]* %arr, i64 0, i64 %idxprom88
  %67 = load i32, i32* %arrayidx89, align 4
  store i32 %67, i32* %tmp, align 4
  %68 = load i32, i32* %i, align 4
  %69 = load %struct.Interval*, %struct.Interval** %ret, align 8
  %70 = load i32*, i32** %returnSize.addr, align 8
  %71 = load i32, i32* %70, align 4
  %idxprom90 = sext i32 %71 to i64
  %arrayidx91 = getelementptr inbounds %struct.Interval, %struct.Interval* %69, i64 %idxprom90
  %start92 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx91, i32 0, i32 0
  store i32 %68, i32* %start92, align 4
  store i32 1, i32* %start, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.else87, %if.then79
  br label %if.end94

if.end94:                                         ; preds = %if.end93
  br label %if.end122

if.else95:                                        ; preds = %while.body
  %72 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %72 to i64
  %arrayidx97 = getelementptr inbounds [10000 x i32], [10000 x i32]* %arr, i64 0, i64 %idxprom96
  %73 = load i32, i32* %arrayidx97, align 4
  %cmp98 = icmp sgt i32 %73, 0
  br i1 %cmp98, label %if.then100, label %if.else111

if.then100:                                       ; preds = %if.else95
  %74 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %74 to i64
  %arrayidx102 = getelementptr inbounds [10000 x i32], [10000 x i32]* %arr, i64 0, i64 %idxprom101
  %75 = load i32, i32* %arrayidx102, align 4
  %76 = load i32, i32* %tmp, align 4
  %sub103 = sub nsw i32 %76, 1
  %cmp104 = icmp sgt i32 %75, %sub103
  br i1 %cmp104, label %if.then106, label %if.else109

if.then106:                                       ; preds = %if.then100
  %77 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %77 to i64
  %arrayidx108 = getelementptr inbounds [10000 x i32], [10000 x i32]* %arr, i64 0, i64 %idxprom107
  %78 = load i32, i32* %arrayidx108, align 4
  store i32 %78, i32* %tmp, align 4
  br label %if.end110

if.else109:                                       ; preds = %if.then100
  %79 = load i32, i32* %tmp, align 4
  %dec = add nsw i32 %79, -1
  store i32 %dec, i32* %tmp, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.else109, %if.then106
  br label %if.end121

if.else111:                                       ; preds = %if.else95
  %80 = load i32, i32* %tmp, align 4
  %dec112 = add nsw i32 %80, -1
  store i32 %dec112, i32* %tmp, align 4
  %81 = load i32, i32* %tmp, align 4
  %cmp113 = icmp eq i32 %81, 0
  br i1 %cmp113, label %if.then115, label %if.end120

if.then115:                                       ; preds = %if.else111
  %82 = load i32, i32* %i, align 4
  %83 = load %struct.Interval*, %struct.Interval** %ret, align 8
  %84 = load i32*, i32** %returnSize.addr, align 8
  %85 = load i32, i32* %84, align 4
  %inc116 = add nsw i32 %85, 1
  store i32 %inc116, i32* %84, align 4
  %idxprom117 = sext i32 %85 to i64
  %arrayidx118 = getelementptr inbounds %struct.Interval, %struct.Interval* %83, i64 %idxprom117
  %end119 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx118, i32 0, i32 1
  store i32 %82, i32* %end119, align 4
  store i32 0, i32* %start, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.then115, %if.else111
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %if.end110
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %if.end94
  %86 = load i32, i32* %i, align 4
  %inc123 = add nsw i32 %86, 1
  store i32 %inc123, i32* %i, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %87 = load %struct.Interval*, %struct.Interval** %ret, align 8
  ret %struct.Interval* %87
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %intervals1 = alloca [4 x %struct.Interval], align 16
  %intervals2 = alloca [2 x %struct.Interval], align 16
  %ret = alloca %struct.Interval*, align 8
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  %i31 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %size, align 4
  %arrayidx = getelementptr inbounds [4 x %struct.Interval], [4 x %struct.Interval]* %intervals1, i64 0, i64 0
  %start = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx, i32 0, i32 0
  store i32 1, i32* %start, align 16
  %arrayidx1 = getelementptr inbounds [4 x %struct.Interval], [4 x %struct.Interval]* %intervals1, i64 0, i64 0
  %end = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx1, i32 0, i32 1
  store i32 3, i32* %end, align 4
  %arrayidx2 = getelementptr inbounds [4 x %struct.Interval], [4 x %struct.Interval]* %intervals1, i64 0, i64 1
  %start3 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx2, i32 0, i32 0
  store i32 2, i32* %start3, align 8
  %arrayidx4 = getelementptr inbounds [4 x %struct.Interval], [4 x %struct.Interval]* %intervals1, i64 0, i64 1
  %end5 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx4, i32 0, i32 1
  store i32 6, i32* %end5, align 4
  %arrayidx6 = getelementptr inbounds [4 x %struct.Interval], [4 x %struct.Interval]* %intervals1, i64 0, i64 2
  %start7 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx6, i32 0, i32 0
  store i32 8, i32* %start7, align 16
  %arrayidx8 = getelementptr inbounds [4 x %struct.Interval], [4 x %struct.Interval]* %intervals1, i64 0, i64 2
  %end9 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx8, i32 0, i32 1
  store i32 10, i32* %end9, align 4
  %arrayidx10 = getelementptr inbounds [4 x %struct.Interval], [4 x %struct.Interval]* %intervals1, i64 0, i64 3
  %start11 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx10, i32 0, i32 0
  store i32 15, i32* %start11, align 8
  %arrayidx12 = getelementptr inbounds [4 x %struct.Interval], [4 x %struct.Interval]* %intervals1, i64 0, i64 3
  %end13 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx12, i32 0, i32 1
  store i32 18, i32* %end13, align 4
  %arrayidx14 = getelementptr inbounds [2 x %struct.Interval], [2 x %struct.Interval]* %intervals2, i64 0, i64 0
  %start15 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx14, i32 0, i32 0
  store i32 1, i32* %start15, align 16
  %arrayidx16 = getelementptr inbounds [2 x %struct.Interval], [2 x %struct.Interval]* %intervals2, i64 0, i64 0
  %end17 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx16, i32 0, i32 1
  store i32 4, i32* %end17, align 4
  %arrayidx18 = getelementptr inbounds [2 x %struct.Interval], [2 x %struct.Interval]* %intervals2, i64 0, i64 1
  %start19 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx18, i32 0, i32 0
  store i32 2, i32* %start19, align 8
  %arrayidx20 = getelementptr inbounds [2 x %struct.Interval], [2 x %struct.Interval]* %intervals2, i64 0, i64 1
  %end21 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx20, i32 0, i32 1
  store i32 5, i32* %end21, align 4
  %arraydecay = getelementptr inbounds [4 x %struct.Interval], [4 x %struct.Interval]* %intervals1, i64 0, i64 0
  %call = call %struct.Interval* @merge(%struct.Interval* %arraydecay, i32 4, i32* %size)
  store %struct.Interval* %call, %struct.Interval** %ret, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.Interval*, %struct.Interval** %ret, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx22 = getelementptr inbounds %struct.Interval, %struct.Interval* %2, i64 %idxprom
  %start23 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx22, i32 0, i32 0
  %4 = load i32, i32* %start23, align 4
  %5 = load %struct.Interval*, %struct.Interval** %ret, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %6 to i64
  %arrayidx25 = getelementptr inbounds %struct.Interval, %struct.Interval* %5, i64 %idxprom24
  %end26 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx25, i32 0, i32 1
  %7 = load i32, i32* %end26, align 4
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %9 = load %struct.Interval*, %struct.Interval** %ret, align 8
  %10 = bitcast %struct.Interval* %9 to i8*
  call void @free(i8* %10) #4
  %arraydecay29 = getelementptr inbounds [2 x %struct.Interval], [2 x %struct.Interval]* %intervals2, i64 0, i64 0
  %call30 = call %struct.Interval* @merge(%struct.Interval* %arraydecay29, i32 2, i32* %size)
  store %struct.Interval* %call30, %struct.Interval** %ret, align 8
  store i32 0, i32* %i31, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc42, %for.end
  %11 = load i32, i32* %i31, align 4
  %12 = load i32, i32* %size, align 4
  %cmp33 = icmp slt i32 %11, %12
  br i1 %cmp33, label %for.body34, label %for.end44

for.body34:                                       ; preds = %for.cond32
  %13 = load %struct.Interval*, %struct.Interval** %ret, align 8
  %14 = load i32, i32* %i31, align 4
  %idxprom35 = sext i32 %14 to i64
  %arrayidx36 = getelementptr inbounds %struct.Interval, %struct.Interval* %13, i64 %idxprom35
  %start37 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx36, i32 0, i32 0
  %15 = load i32, i32* %start37, align 4
  %16 = load %struct.Interval*, %struct.Interval** %ret, align 8
  %17 = load i32, i32* %i31, align 4
  %idxprom38 = sext i32 %17 to i64
  %arrayidx39 = getelementptr inbounds %struct.Interval, %struct.Interval* %16, i64 %idxprom38
  %end40 = getelementptr inbounds %struct.Interval, %struct.Interval* %arrayidx39, i32 0, i32 1
  %18 = load i32, i32* %end40, align 4
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  br label %for.inc42

for.inc42:                                        ; preds = %for.body34
  %19 = load i32, i32* %i31, align 4
  %inc43 = add nsw i32 %19, 1
  store i32 %inc43, i32* %i31, align 4
  br label %for.cond32, !llvm.loop !8

for.end44:                                        ; preds = %for.cond32
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.Interval*, %struct.Interval** %ret, align 8
  %21 = bitcast %struct.Interval* %20 to i8*
  call void @free(i8* %21) #4
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
