; ModuleID = 'code/219-3474110.3.c'
source_filename = "code/219-3474110.3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RedType = type { i32, i32 }
%struct.SqList = type { [21 x %struct.RedType], i32 }

@.str = private unnamed_addr constant [9 x i8] c"(%d, %d)\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@__const.main.md = private unnamed_addr constant [8 x i32] [i32 49, i32 38, i32 65, i32 97, i32 76, i32 13, i32 27, i32 49], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"Before bubble sort:\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"\0AAfter bubble sort:\0A\00", align 1
@__const.main.d = private unnamed_addr constant [8 x %struct.RedType] [%struct.RedType { i32 49, i32 1 }, %struct.RedType { i32 38, i32 2 }, %struct.RedType { i32 65, i32 3 }, %struct.RedType { i32 97, i32 4 }, %struct.RedType { i32 76, i32 5 }, %struct.RedType { i32 13, i32 6 }, %struct.RedType { i32 27, i32 7 }, %struct.RedType { i32 49, i32 8 }], align 16
@.str.5 = private unnamed_addr constant [23 x i8] c"before quick a order:\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"after quick a order:\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"before quick b order:\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"after quick b order:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print(%struct.SqList* byval(%struct.SqList) align 8 %L) #0 {
entry:
  %i = alloca i32, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %length = getelementptr inbounds %struct.SqList, %struct.SqList* %L, i32 0, i32 1
  %1 = load i32, i32* %length, align 8
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %r = getelementptr inbounds %struct.SqList, %struct.SqList* %L, i32 0, i32 0
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [21 x %struct.RedType], [21 x %struct.RedType]* %r, i64 0, i64 %idxprom
  %key = getelementptr inbounds %struct.RedType, %struct.RedType* %arrayidx, i32 0, i32 0
  %3 = load i32, i32* %key, align 8
  %r1 = getelementptr inbounds %struct.SqList, %struct.SqList* %L, i32 0, i32 0
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [21 x %struct.RedType], [21 x %struct.RedType]* %r1, i64 0, i64 %idxprom2
  %otherinfo = getelementptr inbounds %struct.RedType, %struct.RedType* %arrayidx3, i32 0, i32 1
  %5 = load i32, i32* %otherinfo, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @partition(%struct.SqList* %L, i32 %low, i32 %high) #0 {
entry:
  %L.addr = alloca %struct.SqList*, align 8
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %t = alloca %struct.RedType, align 4
  %pivotkey = alloca i32, align 4
  store %struct.SqList* %L, %struct.SqList** %L.addr, align 8
  store i32 %low, i32* %low.addr, align 4
  store i32 %high, i32* %high.addr, align 4
  %0 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %r = getelementptr inbounds %struct.SqList, %struct.SqList* %0, i32 0, i32 0
  %1 = load i32, i32* %low.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [21 x %struct.RedType], [21 x %struct.RedType]* %r, i64 0, i64 %idxprom
  %key = getelementptr inbounds %struct.RedType, %struct.RedType* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %key, align 4
  store i32 %2, i32* %pivotkey, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end31, %entry
  %3 = load i32, i32* %low.addr, align 4
  %4 = load i32, i32* %high.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %while.body, label %while.end44

while.body:                                       ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body8, %while.body
  %5 = load i32, i32* %low.addr, align 4
  %6 = load i32, i32* %high.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond1
  %7 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %r3 = getelementptr inbounds %struct.SqList, %struct.SqList* %7, i32 0, i32 0
  %8 = load i32, i32* %high.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [21 x %struct.RedType], [21 x %struct.RedType]* %r3, i64 0, i64 %idxprom4
  %key6 = getelementptr inbounds %struct.RedType, %struct.RedType* %arrayidx5, i32 0, i32 0
  %9 = load i32, i32* %key6, align 4
  %10 = load i32, i32* %pivotkey, align 4
  %cmp7 = icmp sge i32 %9, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond1
  %11 = phi i1 [ false, %while.cond1 ], [ %cmp7, %land.rhs ]
  br i1 %11, label %while.body8, label %while.end

while.body8:                                      ; preds = %land.end
  %12 = load i32, i32* %high.addr, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %high.addr, align 4
  br label %while.cond1, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %13 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %r9 = getelementptr inbounds %struct.SqList, %struct.SqList* %13, i32 0, i32 0
  %14 = load i32, i32* %low.addr, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [21 x %struct.RedType], [21 x %struct.RedType]* %r9, i64 0, i64 %idxprom10
  %15 = bitcast %struct.RedType* %t to i8*
  %16 = bitcast %struct.RedType* %arrayidx11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 8, i1 false)
  %17 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %r12 = getelementptr inbounds %struct.SqList, %struct.SqList* %17, i32 0, i32 0
  %18 = load i32, i32* %low.addr, align 4
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds [21 x %struct.RedType], [21 x %struct.RedType]* %r12, i64 0, i64 %idxprom13
  %19 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %r15 = getelementptr inbounds %struct.SqList, %struct.SqList* %19, i32 0, i32 0
  %20 = load i32, i32* %high.addr, align 4
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds [21 x %struct.RedType], [21 x %struct.RedType]* %r15, i64 0, i64 %idxprom16
  %21 = bitcast %struct.RedType* %arrayidx14 to i8*
  %22 = bitcast %struct.RedType* %arrayidx17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 8, i1 false)
  %23 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %r18 = getelementptr inbounds %struct.SqList, %struct.SqList* %23, i32 0, i32 0
  %24 = load i32, i32* %high.addr, align 4
  %idxprom19 = sext i32 %24 to i64
  %arrayidx20 = getelementptr inbounds [21 x %struct.RedType], [21 x %struct.RedType]* %r18, i64 0, i64 %idxprom19
  %25 = bitcast %struct.RedType* %arrayidx20 to i8*
  %26 = bitcast %struct.RedType* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 8, i1 false)
  br label %while.cond21

while.cond21:                                     ; preds = %while.body30, %while.end
  %27 = load i32, i32* %low.addr, align 4
  %28 = load i32, i32* %high.addr, align 4
  %cmp22 = icmp slt i32 %27, %28
  br i1 %cmp22, label %land.rhs23, label %land.end29

land.rhs23:                                       ; preds = %while.cond21
  %29 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %r24 = getelementptr inbounds %struct.SqList, %struct.SqList* %29, i32 0, i32 0
  %30 = load i32, i32* %low.addr, align 4
  %idxprom25 = sext i32 %30 to i64
  %arrayidx26 = getelementptr inbounds [21 x %struct.RedType], [21 x %struct.RedType]* %r24, i64 0, i64 %idxprom25
  %key27 = getelementptr inbounds %struct.RedType, %struct.RedType* %arrayidx26, i32 0, i32 0
  %31 = load i32, i32* %key27, align 4
  %32 = load i32, i32* %pivotkey, align 4
  %cmp28 = icmp sle i32 %31, %32
  br label %land.end29

land.end29:                                       ; preds = %land.rhs23, %while.cond21
  %33 = phi i1 [ false, %while.cond21 ], [ %cmp28, %land.rhs23 ]
  br i1 %33, label %while.body30, label %while.end31

while.body30:                                     ; preds = %land.end29
  %34 = load i32, i32* %low.addr, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %low.addr, align 4
  br label %while.cond21, !llvm.loop !7

while.end31:                                      ; preds = %land.end29
  %35 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %r32 = getelementptr inbounds %struct.SqList, %struct.SqList* %35, i32 0, i32 0
  %36 = load i32, i32* %low.addr, align 4
  %idxprom33 = sext i32 %36 to i64
  %arrayidx34 = getelementptr inbounds [21 x %struct.RedType], [21 x %struct.RedType]* %r32, i64 0, i64 %idxprom33
  %37 = bitcast %struct.RedType* %t to i8*
  %38 = bitcast %struct.RedType* %arrayidx34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 8, i1 false)
  %39 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %r35 = getelementptr inbounds %struct.SqList, %struct.SqList* %39, i32 0, i32 0
  %40 = load i32, i32* %low.addr, align 4
  %idxprom36 = sext i32 %40 to i64
  %arrayidx37 = getelementptr inbounds [21 x %struct.RedType], [21 x %struct.RedType]* %r35, i64 0, i64 %idxprom36
  %41 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %r38 = getelementptr inbounds %struct.SqList, %struct.SqList* %41, i32 0, i32 0
  %42 = load i32, i32* %high.addr, align 4
  %idxprom39 = sext i32 %42 to i64
  %arrayidx40 = getelementptr inbounds [21 x %struct.RedType], [21 x %struct.RedType]* %r38, i64 0, i64 %idxprom39
  %43 = bitcast %struct.RedType* %arrayidx37 to i8*
  %44 = bitcast %struct.RedType* %arrayidx40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 8, i1 false)
  %45 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %r41 = getelementptr inbounds %struct.SqList, %struct.SqList* %45, i32 0, i32 0
  %46 = load i32, i32* %high.addr, align 4
  %idxprom42 = sext i32 %46 to i64
  %arrayidx43 = getelementptr inbounds [21 x %struct.RedType], [21 x %struct.RedType]* %r41, i64 0, i64 %idxprom42
  %47 = bitcast %struct.RedType* %arrayidx43 to i8*
  %48 = bitcast %struct.RedType* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 8, i1 false)
  br label %while.cond, !llvm.loop !8

while.end44:                                      ; preds = %while.cond
  %49 = load i32, i32* %low.addr, align 4
  ret i32 %49
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @partition_a(%struct.SqList* %L, i32 %low, i32 %high) #0 {
entry:
  %L.addr = alloca %struct.SqList*, align 8
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %pivotkey = alloca i32, align 4
  store %struct.SqList* %L, %struct.SqList** %L.addr, align 8
  store i32 %low, i32* %low.addr, align 4
  store i32 %high, i32* %high.addr, align 4
  %0 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %r = getelementptr inbounds %struct.SqList, %struct.SqList* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [21 x %struct.RedType], [21 x %struct.RedType]* %r, i64 0, i64 0
  %1 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %r1 = getelementptr inbounds %struct.SqList, %struct.SqList* %1, i32 0, i32 0
  %2 = load i32, i32* %low.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [21 x %struct.RedType], [21 x %struct.RedType]* %r1, i64 0, i64 %idxprom
  %3 = bitcast %struct.RedType* %arrayidx to i8*
  %4 = bitcast %struct.RedType* %arrayidx2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 %4, i64 8, i1 false)
  %5 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %r3 = getelementptr inbounds %struct.SqList, %struct.SqList* %5, i32 0, i32 0
  %6 = load i32, i32* %low.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [21 x %struct.RedType], [21 x %struct.RedType]* %r3, i64 0, i64 %idxprom4
  %key = getelementptr inbounds %struct.RedType, %struct.RedType* %arrayidx5, i32 0, i32 0
  %7 = load i32, i32* %key, align 4
  store i32 %7, i32* %pivotkey, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end30, %entry
  %8 = load i32, i32* %low.addr, align 4
  %9 = load i32, i32* %high.addr, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %while.body, label %while.end37

while.body:                                       ; preds = %while.cond
  br label %while.cond6

while.cond6:                                      ; preds = %while.body13, %while.body
  %10 = load i32, i32* %low.addr, align 4
  %11 = load i32, i32* %high.addr, align 4
  %cmp7 = icmp slt i32 %10, %11
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond6
  %12 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %r8 = getelementptr inbounds %struct.SqList, %struct.SqList* %12, i32 0, i32 0
  %13 = load i32, i32* %high.addr, align 4
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds [21 x %struct.RedType], [21 x %struct.RedType]* %r8, i64 0, i64 %idxprom9
  %key11 = getelementptr inbounds %struct.RedType, %struct.RedType* %arrayidx10, i32 0, i32 0
  %14 = load i32, i32* %key11, align 4
  %15 = load i32, i32* %pivotkey, align 4
  %cmp12 = icmp sge i32 %14, %15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond6
  %16 = phi i1 [ false, %while.cond6 ], [ %cmp12, %land.rhs ]
  br i1 %16, label %while.body13, label %while.end

while.body13:                                     ; preds = %land.end
  %17 = load i32, i32* %high.addr, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %high.addr, align 4
  br label %while.cond6, !llvm.loop !9

while.end:                                        ; preds = %land.end
  %18 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %r14 = getelementptr inbounds %struct.SqList, %struct.SqList* %18, i32 0, i32 0
  %19 = load i32, i32* %low.addr, align 4
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds [21 x %struct.RedType], [21 x %struct.RedType]* %r14, i64 0, i64 %idxprom15
  %20 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %r17 = getelementptr inbounds %struct.SqList, %struct.SqList* %20, i32 0, i32 0
  %21 = load i32, i32* %high.addr, align 4
  %idxprom18 = sext i32 %21 to i64
  %arrayidx19 = getelementptr inbounds [21 x %struct.RedType], [21 x %struct.RedType]* %r17, i64 0, i64 %idxprom18
  %22 = bitcast %struct.RedType* %arrayidx16 to i8*
  %23 = bitcast %struct.RedType* %arrayidx19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 8, i1 false)
  br label %while.cond20

while.cond20:                                     ; preds = %while.body29, %while.end
  %24 = load i32, i32* %low.addr, align 4
  %25 = load i32, i32* %high.addr, align 4
  %cmp21 = icmp slt i32 %24, %25
  br i1 %cmp21, label %land.rhs22, label %land.end28

land.rhs22:                                       ; preds = %while.cond20
  %26 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %r23 = getelementptr inbounds %struct.SqList, %struct.SqList* %26, i32 0, i32 0
  %27 = load i32, i32* %low.addr, align 4
  %idxprom24 = sext i32 %27 to i64
  %arrayidx25 = getelementptr inbounds [21 x %struct.RedType], [21 x %struct.RedType]* %r23, i64 0, i64 %idxprom24
  %key26 = getelementptr inbounds %struct.RedType, %struct.RedType* %arrayidx25, i32 0, i32 0
  %28 = load i32, i32* %key26, align 4
  %29 = load i32, i32* %pivotkey, align 4
  %cmp27 = icmp sle i32 %28, %29
  br label %land.end28

land.end28:                                       ; preds = %land.rhs22, %while.cond20
  %30 = phi i1 [ false, %while.cond20 ], [ %cmp27, %land.rhs22 ]
  br i1 %30, label %while.body29, label %while.end30

while.body29:                                     ; preds = %land.end28
  %31 = load i32, i32* %low.addr, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %low.addr, align 4
  br label %while.cond20, !llvm.loop !10

while.end30:                                      ; preds = %land.end28
  %32 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %r31 = getelementptr inbounds %struct.SqList, %struct.SqList* %32, i32 0, i32 0
  %33 = load i32, i32* %high.addr, align 4
  %idxprom32 = sext i32 %33 to i64
  %arrayidx33 = getelementptr inbounds [21 x %struct.RedType], [21 x %struct.RedType]* %r31, i64 0, i64 %idxprom32
  %34 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %r34 = getelementptr inbounds %struct.SqList, %struct.SqList* %34, i32 0, i32 0
  %35 = load i32, i32* %low.addr, align 4
  %idxprom35 = sext i32 %35 to i64
  %arrayidx36 = getelementptr inbounds [21 x %struct.RedType], [21 x %struct.RedType]* %r34, i64 0, i64 %idxprom35
  %36 = bitcast %struct.RedType* %arrayidx33 to i8*
  %37 = bitcast %struct.RedType* %arrayidx36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 8, i1 false)
  br label %while.cond, !llvm.loop !11

while.end37:                                      ; preds = %while.cond
  %38 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %r38 = getelementptr inbounds %struct.SqList, %struct.SqList* %38, i32 0, i32 0
  %39 = load i32, i32* %low.addr, align 4
  %idxprom39 = sext i32 %39 to i64
  %arrayidx40 = getelementptr inbounds [21 x %struct.RedType], [21 x %struct.RedType]* %r38, i64 0, i64 %idxprom39
  %40 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %r41 = getelementptr inbounds %struct.SqList, %struct.SqList* %40, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [21 x %struct.RedType], [21 x %struct.RedType]* %r41, i64 0, i64 0
  %41 = bitcast %struct.RedType* %arrayidx40 to i8*
  %42 = bitcast %struct.RedType* %arrayidx42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 8, i1 false)
  %43 = load i32, i32* %low.addr, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bubble_sort(i32* %a, i32 %n) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i32, align 4
  %change = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  store i32 1, i32* %change, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, i32* %change, align 4
  %tobool = icmp ne i32 %2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ]
  br i1 %3, label %for.body, label %for.end18

for.body:                                         ; preds = %land.end
  store i32 0, i32* %change, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i32*, i32** %a.addr, align 8
  %7 = load i32, i32* %j, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %9 = load i32*, i32** %a.addr, align 8
  %10 = load i32, i32* %j, align 4
  %add = add nsw i32 %10, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %9, i64 %idxprom4
  %11 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp sgt i32 %8, %11
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %12 = load i32*, i32** %a.addr, align 8
  %13 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %12, i64 %idxprom7
  %14 = load i32, i32* %arrayidx8, align 4
  store i32 %14, i32* %t, align 4
  %15 = load i32*, i32** %a.addr, align 8
  %16 = load i32, i32* %j, align 4
  %add9 = add nsw i32 %16, 1
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %15, i64 %idxprom10
  %17 = load i32, i32* %arrayidx11, align 4
  %18 = load i32*, i32** %a.addr, align 8
  %19 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %19 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %18, i64 %idxprom12
  store i32 %17, i32* %arrayidx13, align 4
  %20 = load i32, i32* %t, align 4
  %21 = load i32*, i32** %a.addr, align 8
  %22 = load i32, i32* %j, align 4
  %add14 = add nsw i32 %22, 1
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %21, i64 %idxprom15
  store i32 %20, i32* %arrayidx16, align 4
  store i32 1, i32* %change, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !12

for.end:                                          ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %24 = load i32, i32* %i, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !13

for.end18:                                        ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @q_sort(%struct.SqList* %L, i32 %low, i32 %high, i32 %show) #0 {
entry:
  %L.addr = alloca %struct.SqList*, align 8
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %show.addr = alloca i32, align 4
  %pivot_loc = alloca i32, align 4
  store %struct.SqList* %L, %struct.SqList** %L.addr, align 8
  store i32 %low, i32* %low.addr, align 4
  store i32 %high, i32* %high.addr, align 4
  store i32 %show, i32* %show.addr, align 4
  %0 = load i32, i32* %low.addr, align 4
  %1 = load i32, i32* %high.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %show.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %3 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %4 = load i32, i32* %low.addr, align 4
  %5 = load i32, i32* %high.addr, align 4
  %call = call i32 @partition(%struct.SqList* %3, i32 %4, i32 %5)
  store i32 %call, i32* %pivot_loc, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %7 = load i32, i32* %low.addr, align 4
  %8 = load i32, i32* %high.addr, align 4
  %call2 = call i32 @partition_a(%struct.SqList* %6, i32 %7, i32 %8)
  store i32 %call2, i32* %pivot_loc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  %9 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %10 = load i32, i32* %low.addr, align 4
  %11 = load i32, i32* %pivot_loc, align 4
  %sub = sub nsw i32 %11, 1
  %12 = load i32, i32* %show.addr, align 4
  call void @q_sort(%struct.SqList* %9, i32 %10, i32 %sub, i32 %12)
  %13 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %14 = load i32, i32* %pivot_loc, align 4
  %add = add nsw i32 %14, 1
  %15 = load i32, i32* %high.addr, align 4
  %16 = load i32, i32* %show.addr, align 4
  call void @q_sort(%struct.SqList* %13, i32 %add, i32 %15, i32 %16)
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quick_sort(%struct.SqList* %L, i32 %show) #0 {
entry:
  %L.addr = alloca %struct.SqList*, align 8
  %show.addr = alloca i32, align 4
  store %struct.SqList* %L, %struct.SqList** %L.addr, align 8
  store i32 %show, i32* %show.addr, align 4
  %0 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %1 = load %struct.SqList*, %struct.SqList** %L.addr, align 8
  %length = getelementptr inbounds %struct.SqList, %struct.SqList* %1, i32 0, i32 1
  %2 = load i32, i32* %length, align 4
  %3 = load i32, i32* %show.addr, align 4
  call void @q_sort(%struct.SqList* %0, i32 1, i32 %2, i32 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %md = alloca [8 x i32], align 16
  %i = alloca i32, align 4
  %d = alloca [8 x %struct.RedType], align 16
  %s = alloca %struct.SqList, align 8
  %m = alloca %struct.SqList, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast [8 x i32]* %md to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([8 x i32]* @__const.main.md to i8*), i64 32, i1 false)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %md, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %md, i64 0, i64 0
  call void @bubble_sort(i32* %arraydecay, i32 8)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc9, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %5, 8
  br i1 %cmp4, label %for.body5, label %for.end11

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [8 x i32], [8 x i32]* %md, i64 0, i64 %idxprom6
  %7 = load i32, i32* %arrayidx7, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %7)
  br label %for.inc9

for.inc9:                                         ; preds = %for.body5
  %8 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %8, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond3, !llvm.loop !15

for.end11:                                        ; preds = %for.cond3
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %9 = bitcast [8 x %struct.RedType]* %d to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([8 x %struct.RedType]* @__const.main.d to i8*), i64 64, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc20, %for.end11
  %10 = load i32, i32* %i, align 4
  %cmp14 = icmp slt i32 %10, 8
  br i1 %cmp14, label %for.body15, label %for.end22

for.body15:                                       ; preds = %for.cond13
  %r = getelementptr inbounds %struct.SqList, %struct.SqList* %s, i32 0, i32 0
  %11 = load i32, i32* %i, align 4
  %add = add nsw i32 %11, 1
  %idxprom16 = sext i32 %add to i64
  %arrayidx17 = getelementptr inbounds [21 x %struct.RedType], [21 x %struct.RedType]* %r, i64 0, i64 %idxprom16
  %12 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %12 to i64
  %arrayidx19 = getelementptr inbounds [8 x %struct.RedType], [8 x %struct.RedType]* %d, i64 0, i64 %idxprom18
  %13 = bitcast %struct.RedType* %arrayidx17 to i8*
  %14 = bitcast %struct.RedType* %arrayidx19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 8 %14, i64 8, i1 false)
  br label %for.inc20

for.inc20:                                        ; preds = %for.body15
  %15 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %15, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond13, !llvm.loop !16

for.end22:                                        ; preds = %for.cond13
  %length = getelementptr inbounds %struct.SqList, %struct.SqList* %s, i32 0, i32 1
  store i32 8, i32* %length, align 4
  %16 = bitcast %struct.SqList* %m to i8*
  %17 = bitcast %struct.SqList* %s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 172, i1 false)
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  call void @print(%struct.SqList* byval(%struct.SqList) align 8 %s)
  call void @quick_sort(%struct.SqList* %s, i32 1)
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  call void @print(%struct.SqList* byval(%struct.SqList) align 8 %s)
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  call void @print(%struct.SqList* byval(%struct.SqList) align 8 %m)
  call void @quick_sort(%struct.SqList* %m, i32 0)
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  call void @print(%struct.SqList* byval(%struct.SqList) align 8 %m)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

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
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
