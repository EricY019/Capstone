; ModuleID = './code/219-3474110.3.c'
source_filename = "./code/219-3474110.3.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.RedType = type { i32, i32 }
%struct.SqList = type { [21 x %struct.RedType], i32 }

@.str = private unnamed_addr constant [9 x i8] c"(%d, %d)\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@__const.main.md = private unnamed_addr constant [8 x i32] [i32 49, i32 38, i32 65, i32 97, i32 76, i32 13, i32 27, i32 49], align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Before bubble sort:\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"\0AAfter bubble sort:\0A\00", align 1
@__const.main.d = private unnamed_addr constant [8 x %struct.RedType] [%struct.RedType { i32 49, i32 1 }, %struct.RedType { i32 38, i32 2 }, %struct.RedType { i32 65, i32 3 }, %struct.RedType { i32 97, i32 4 }, %struct.RedType { i32 76, i32 5 }, %struct.RedType { i32 13, i32 6 }, %struct.RedType { i32 27, i32 7 }, %struct.RedType { i32 49, i32 8 }], align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"before quick a order:\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"after quick a order:\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"before quick b order:\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"after quick b order:\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print(ptr noundef %L) #0 {
entry:
  %L.indirect_addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %L, ptr %L.indirect_addr, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %length = getelementptr inbounds %struct.SqList, ptr %L, i32 0, i32 1
  %1 = load i32, ptr %length, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %r = getelementptr inbounds %struct.SqList, ptr %L, i32 0, i32 0
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [21 x %struct.RedType], ptr %r, i64 0, i64 %idxprom
  %key = getelementptr inbounds %struct.RedType, ptr %arrayidx, i32 0, i32 0
  %3 = load i32, ptr %key, align 4
  %r1 = getelementptr inbounds %struct.SqList, ptr %L, i32 0, i32 0
  %4 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [21 x %struct.RedType], ptr %r1, i64 0, i64 %idxprom2
  %otherinfo = getelementptr inbounds %struct.RedType, ptr %arrayidx3, i32 0, i32 1
  %5 = load i32, ptr %otherinfo, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %3, i32 noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @partition(ptr noundef %L, i32 noundef %low, i32 noundef %high) #0 {
entry:
  %L.addr = alloca ptr, align 8
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %t = alloca %struct.RedType, align 4
  %pivotkey = alloca i32, align 4
  store ptr %L, ptr %L.addr, align 8
  store i32 %low, ptr %low.addr, align 4
  store i32 %high, ptr %high.addr, align 4
  %0 = load ptr, ptr %L.addr, align 8
  %r = getelementptr inbounds %struct.SqList, ptr %0, i32 0, i32 0
  %1 = load i32, ptr %low.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [21 x %struct.RedType], ptr %r, i64 0, i64 %idxprom
  %key = getelementptr inbounds %struct.RedType, ptr %arrayidx, i32 0, i32 0
  %2 = load i32, ptr %key, align 4
  store i32 %2, ptr %pivotkey, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end31, %entry
  %3 = load i32, ptr %low.addr, align 4
  %4 = load i32, ptr %high.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %while.body, label %while.end44

while.body:                                       ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body8, %while.body
  %5 = load i32, ptr %low.addr, align 4
  %6 = load i32, ptr %high.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond1
  %7 = load ptr, ptr %L.addr, align 8
  %r3 = getelementptr inbounds %struct.SqList, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %high.addr, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [21 x %struct.RedType], ptr %r3, i64 0, i64 %idxprom4
  %key6 = getelementptr inbounds %struct.RedType, ptr %arrayidx5, i32 0, i32 0
  %9 = load i32, ptr %key6, align 4
  %10 = load i32, ptr %pivotkey, align 4
  %cmp7 = icmp sge i32 %9, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond1
  %11 = phi i1 [ false, %while.cond1 ], [ %cmp7, %land.rhs ]
  br i1 %11, label %while.body8, label %while.end

while.body8:                                      ; preds = %land.end
  %12 = load i32, ptr %high.addr, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, ptr %high.addr, align 4
  br label %while.cond1, !llvm.loop !7

while.end:                                        ; preds = %land.end
  %13 = load ptr, ptr %L.addr, align 8
  %r9 = getelementptr inbounds %struct.SqList, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %low.addr, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [21 x %struct.RedType], ptr %r9, i64 0, i64 %idxprom10
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %t, ptr align 4 %arrayidx11, i64 8, i1 false)
  %15 = load ptr, ptr %L.addr, align 8
  %r12 = getelementptr inbounds %struct.SqList, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %low.addr, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [21 x %struct.RedType], ptr %r12, i64 0, i64 %idxprom13
  %17 = load ptr, ptr %L.addr, align 8
  %r15 = getelementptr inbounds %struct.SqList, ptr %17, i32 0, i32 0
  %18 = load i32, ptr %high.addr, align 4
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds [21 x %struct.RedType], ptr %r15, i64 0, i64 %idxprom16
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx14, ptr align 4 %arrayidx17, i64 8, i1 false)
  %19 = load ptr, ptr %L.addr, align 8
  %r18 = getelementptr inbounds %struct.SqList, ptr %19, i32 0, i32 0
  %20 = load i32, ptr %high.addr, align 4
  %idxprom19 = sext i32 %20 to i64
  %arrayidx20 = getelementptr inbounds [21 x %struct.RedType], ptr %r18, i64 0, i64 %idxprom19
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx20, ptr align 4 %t, i64 8, i1 false)
  br label %while.cond21

while.cond21:                                     ; preds = %while.body30, %while.end
  %21 = load i32, ptr %low.addr, align 4
  %22 = load i32, ptr %high.addr, align 4
  %cmp22 = icmp slt i32 %21, %22
  br i1 %cmp22, label %land.rhs23, label %land.end29

land.rhs23:                                       ; preds = %while.cond21
  %23 = load ptr, ptr %L.addr, align 8
  %r24 = getelementptr inbounds %struct.SqList, ptr %23, i32 0, i32 0
  %24 = load i32, ptr %low.addr, align 4
  %idxprom25 = sext i32 %24 to i64
  %arrayidx26 = getelementptr inbounds [21 x %struct.RedType], ptr %r24, i64 0, i64 %idxprom25
  %key27 = getelementptr inbounds %struct.RedType, ptr %arrayidx26, i32 0, i32 0
  %25 = load i32, ptr %key27, align 4
  %26 = load i32, ptr %pivotkey, align 4
  %cmp28 = icmp sle i32 %25, %26
  br label %land.end29

land.end29:                                       ; preds = %land.rhs23, %while.cond21
  %27 = phi i1 [ false, %while.cond21 ], [ %cmp28, %land.rhs23 ]
  br i1 %27, label %while.body30, label %while.end31

while.body30:                                     ; preds = %land.end29
  %28 = load i32, ptr %low.addr, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %low.addr, align 4
  br label %while.cond21, !llvm.loop !8

while.end31:                                      ; preds = %land.end29
  %29 = load ptr, ptr %L.addr, align 8
  %r32 = getelementptr inbounds %struct.SqList, ptr %29, i32 0, i32 0
  %30 = load i32, ptr %low.addr, align 4
  %idxprom33 = sext i32 %30 to i64
  %arrayidx34 = getelementptr inbounds [21 x %struct.RedType], ptr %r32, i64 0, i64 %idxprom33
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %t, ptr align 4 %arrayidx34, i64 8, i1 false)
  %31 = load ptr, ptr %L.addr, align 8
  %r35 = getelementptr inbounds %struct.SqList, ptr %31, i32 0, i32 0
  %32 = load i32, ptr %low.addr, align 4
  %idxprom36 = sext i32 %32 to i64
  %arrayidx37 = getelementptr inbounds [21 x %struct.RedType], ptr %r35, i64 0, i64 %idxprom36
  %33 = load ptr, ptr %L.addr, align 8
  %r38 = getelementptr inbounds %struct.SqList, ptr %33, i32 0, i32 0
  %34 = load i32, ptr %high.addr, align 4
  %idxprom39 = sext i32 %34 to i64
  %arrayidx40 = getelementptr inbounds [21 x %struct.RedType], ptr %r38, i64 0, i64 %idxprom39
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx37, ptr align 4 %arrayidx40, i64 8, i1 false)
  %35 = load ptr, ptr %L.addr, align 8
  %r41 = getelementptr inbounds %struct.SqList, ptr %35, i32 0, i32 0
  %36 = load i32, ptr %high.addr, align 4
  %idxprom42 = sext i32 %36 to i64
  %arrayidx43 = getelementptr inbounds [21 x %struct.RedType], ptr %r41, i64 0, i64 %idxprom42
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx43, ptr align 4 %t, i64 8, i1 false)
  br label %while.cond, !llvm.loop !9

while.end44:                                      ; preds = %while.cond
  %37 = load i32, ptr %low.addr, align 4
  ret i32 %37
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @partition_a(ptr noundef %L, i32 noundef %low, i32 noundef %high) #0 {
entry:
  %L.addr = alloca ptr, align 8
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %pivotkey = alloca i32, align 4
  store ptr %L, ptr %L.addr, align 8
  store i32 %low, ptr %low.addr, align 4
  store i32 %high, ptr %high.addr, align 4
  %0 = load ptr, ptr %L.addr, align 8
  %r = getelementptr inbounds %struct.SqList, ptr %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [21 x %struct.RedType], ptr %r, i64 0, i64 0
  %1 = load ptr, ptr %L.addr, align 8
  %r1 = getelementptr inbounds %struct.SqList, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %low.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [21 x %struct.RedType], ptr %r1, i64 0, i64 %idxprom
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx, ptr align 4 %arrayidx2, i64 8, i1 false)
  %3 = load ptr, ptr %L.addr, align 8
  %r3 = getelementptr inbounds %struct.SqList, ptr %3, i32 0, i32 0
  %4 = load i32, ptr %low.addr, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [21 x %struct.RedType], ptr %r3, i64 0, i64 %idxprom4
  %key = getelementptr inbounds %struct.RedType, ptr %arrayidx5, i32 0, i32 0
  %5 = load i32, ptr %key, align 4
  store i32 %5, ptr %pivotkey, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end30, %entry
  %6 = load i32, ptr %low.addr, align 4
  %7 = load i32, ptr %high.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %while.body, label %while.end37

while.body:                                       ; preds = %while.cond
  br label %while.cond6

while.cond6:                                      ; preds = %while.body13, %while.body
  %8 = load i32, ptr %low.addr, align 4
  %9 = load i32, ptr %high.addr, align 4
  %cmp7 = icmp slt i32 %8, %9
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond6
  %10 = load ptr, ptr %L.addr, align 8
  %r8 = getelementptr inbounds %struct.SqList, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %high.addr, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [21 x %struct.RedType], ptr %r8, i64 0, i64 %idxprom9
  %key11 = getelementptr inbounds %struct.RedType, ptr %arrayidx10, i32 0, i32 0
  %12 = load i32, ptr %key11, align 4
  %13 = load i32, ptr %pivotkey, align 4
  %cmp12 = icmp sge i32 %12, %13
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond6
  %14 = phi i1 [ false, %while.cond6 ], [ %cmp12, %land.rhs ]
  br i1 %14, label %while.body13, label %while.end

while.body13:                                     ; preds = %land.end
  %15 = load i32, ptr %high.addr, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %high.addr, align 4
  br label %while.cond6, !llvm.loop !10

while.end:                                        ; preds = %land.end
  %16 = load ptr, ptr %L.addr, align 8
  %r14 = getelementptr inbounds %struct.SqList, ptr %16, i32 0, i32 0
  %17 = load i32, ptr %low.addr, align 4
  %idxprom15 = sext i32 %17 to i64
  %arrayidx16 = getelementptr inbounds [21 x %struct.RedType], ptr %r14, i64 0, i64 %idxprom15
  %18 = load ptr, ptr %L.addr, align 8
  %r17 = getelementptr inbounds %struct.SqList, ptr %18, i32 0, i32 0
  %19 = load i32, ptr %high.addr, align 4
  %idxprom18 = sext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds [21 x %struct.RedType], ptr %r17, i64 0, i64 %idxprom18
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx16, ptr align 4 %arrayidx19, i64 8, i1 false)
  br label %while.cond20

while.cond20:                                     ; preds = %while.body29, %while.end
  %20 = load i32, ptr %low.addr, align 4
  %21 = load i32, ptr %high.addr, align 4
  %cmp21 = icmp slt i32 %20, %21
  br i1 %cmp21, label %land.rhs22, label %land.end28

land.rhs22:                                       ; preds = %while.cond20
  %22 = load ptr, ptr %L.addr, align 8
  %r23 = getelementptr inbounds %struct.SqList, ptr %22, i32 0, i32 0
  %23 = load i32, ptr %low.addr, align 4
  %idxprom24 = sext i32 %23 to i64
  %arrayidx25 = getelementptr inbounds [21 x %struct.RedType], ptr %r23, i64 0, i64 %idxprom24
  %key26 = getelementptr inbounds %struct.RedType, ptr %arrayidx25, i32 0, i32 0
  %24 = load i32, ptr %key26, align 4
  %25 = load i32, ptr %pivotkey, align 4
  %cmp27 = icmp sle i32 %24, %25
  br label %land.end28

land.end28:                                       ; preds = %land.rhs22, %while.cond20
  %26 = phi i1 [ false, %while.cond20 ], [ %cmp27, %land.rhs22 ]
  br i1 %26, label %while.body29, label %while.end30

while.body29:                                     ; preds = %land.end28
  %27 = load i32, ptr %low.addr, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %low.addr, align 4
  br label %while.cond20, !llvm.loop !11

while.end30:                                      ; preds = %land.end28
  %28 = load ptr, ptr %L.addr, align 8
  %r31 = getelementptr inbounds %struct.SqList, ptr %28, i32 0, i32 0
  %29 = load i32, ptr %high.addr, align 4
  %idxprom32 = sext i32 %29 to i64
  %arrayidx33 = getelementptr inbounds [21 x %struct.RedType], ptr %r31, i64 0, i64 %idxprom32
  %30 = load ptr, ptr %L.addr, align 8
  %r34 = getelementptr inbounds %struct.SqList, ptr %30, i32 0, i32 0
  %31 = load i32, ptr %low.addr, align 4
  %idxprom35 = sext i32 %31 to i64
  %arrayidx36 = getelementptr inbounds [21 x %struct.RedType], ptr %r34, i64 0, i64 %idxprom35
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx33, ptr align 4 %arrayidx36, i64 8, i1 false)
  br label %while.cond, !llvm.loop !12

while.end37:                                      ; preds = %while.cond
  %32 = load ptr, ptr %L.addr, align 8
  %r38 = getelementptr inbounds %struct.SqList, ptr %32, i32 0, i32 0
  %33 = load i32, ptr %low.addr, align 4
  %idxprom39 = sext i32 %33 to i64
  %arrayidx40 = getelementptr inbounds [21 x %struct.RedType], ptr %r38, i64 0, i64 %idxprom39
  %34 = load ptr, ptr %L.addr, align 8
  %r41 = getelementptr inbounds %struct.SqList, ptr %34, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [21 x %struct.RedType], ptr %r41, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx40, ptr align 4 %arrayidx42, i64 8, i1 false)
  %35 = load i32, ptr %low.addr, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @bubble_sort(ptr noundef %a, i32 noundef %n) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i32, align 4
  %change = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, ptr %i, align 4
  store i32 1, ptr %change, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, ptr %change, align 4
  %tobool = icmp ne i32 %2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ]
  br i1 %3, label %for.body, label %for.end18

for.body:                                         ; preds = %land.end
  store i32 0, ptr %change, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %j, align 4
  %5 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load ptr, ptr %a.addr, align 8
  %7 = load i32, ptr %j, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, ptr %6, i64 %idxprom
  %8 = load i32, ptr %arrayidx, align 4
  %9 = load ptr, ptr %a.addr, align 8
  %10 = load i32, ptr %j, align 4
  %add = add nsw i32 %10, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %9, i64 %idxprom4
  %11 = load i32, ptr %arrayidx5, align 4
  %cmp6 = icmp sgt i32 %8, %11
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %12 = load ptr, ptr %a.addr, align 8
  %13 = load i32, ptr %j, align 4
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %12, i64 %idxprom7
  %14 = load i32, ptr %arrayidx8, align 4
  store i32 %14, ptr %t, align 4
  %15 = load ptr, ptr %a.addr, align 8
  %16 = load i32, ptr %j, align 4
  %add9 = add nsw i32 %16, 1
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %15, i64 %idxprom10
  %17 = load i32, ptr %arrayidx11, align 4
  %18 = load ptr, ptr %a.addr, align 8
  %19 = load i32, ptr %j, align 4
  %idxprom12 = sext i32 %19 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %18, i64 %idxprom12
  store i32 %17, ptr %arrayidx13, align 4
  %20 = load i32, ptr %t, align 4
  %21 = load ptr, ptr %a.addr, align 8
  %22 = load i32, ptr %j, align 4
  %add14 = add nsw i32 %22, 1
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %21, i64 %idxprom15
  store i32 %20, ptr %arrayidx16, align 4
  store i32 1, ptr %change, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, ptr %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !13

for.end:                                          ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %24 = load i32, ptr %i, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !14

for.end18:                                        ; preds = %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @q_sort(ptr noundef %L, i32 noundef %low, i32 noundef %high, i32 noundef %show) #0 {
entry:
  %L.addr = alloca ptr, align 8
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %show.addr = alloca i32, align 4
  %pivot_loc = alloca i32, align 4
  store ptr %L, ptr %L.addr, align 8
  store i32 %low, ptr %low.addr, align 4
  store i32 %high, ptr %high.addr, align 4
  store i32 %show, ptr %show.addr, align 4
  %0 = load i32, ptr %low.addr, align 4
  %1 = load i32, ptr %high.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %show.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %3 = load ptr, ptr %L.addr, align 8
  %4 = load i32, ptr %low.addr, align 4
  %5 = load i32, ptr %high.addr, align 4
  %call = call i32 @partition(ptr noundef %3, i32 noundef %4, i32 noundef %5)
  store i32 %call, ptr %pivot_loc, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load ptr, ptr %L.addr, align 8
  %7 = load i32, ptr %low.addr, align 4
  %8 = load i32, ptr %high.addr, align 4
  %call2 = call i32 @partition_a(ptr noundef %6, i32 noundef %7, i32 noundef %8)
  store i32 %call2, ptr %pivot_loc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  %9 = load ptr, ptr %L.addr, align 8
  %10 = load i32, ptr %low.addr, align 4
  %11 = load i32, ptr %pivot_loc, align 4
  %sub = sub nsw i32 %11, 1
  %12 = load i32, ptr %show.addr, align 4
  call void @q_sort(ptr noundef %9, i32 noundef %10, i32 noundef %sub, i32 noundef %12)
  %13 = load ptr, ptr %L.addr, align 8
  %14 = load i32, ptr %pivot_loc, align 4
  %add = add nsw i32 %14, 1
  %15 = load i32, ptr %high.addr, align 4
  %16 = load i32, ptr %show.addr, align 4
  call void @q_sort(ptr noundef %13, i32 noundef %add, i32 noundef %15, i32 noundef %16)
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @quick_sort(ptr noundef %L, i32 noundef %show) #0 {
entry:
  %L.addr = alloca ptr, align 8
  %show.addr = alloca i32, align 4
  store ptr %L, ptr %L.addr, align 8
  store i32 %show, ptr %show.addr, align 4
  %0 = load ptr, ptr %L.addr, align 8
  %1 = load ptr, ptr %L.addr, align 8
  %length = getelementptr inbounds %struct.SqList, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %length, align 4
  %3 = load i32, ptr %show.addr, align 4
  call void @q_sort(ptr noundef %0, i32 noundef 1, i32 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %md = alloca [8 x i32], align 4
  %i = alloca i32, align 4
  %d = alloca [8 x %struct.RedType], align 4
  %s = alloca %struct.SqList, align 4
  %m = alloca %struct.SqList, align 4
  %byval-temp = alloca %struct.SqList, align 4
  %byval-temp25 = alloca %struct.SqList, align 4
  %byval-temp27 = alloca %struct.SqList, align 4
  %byval-temp29 = alloca %struct.SqList, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %md, ptr align 4 @__const.main.md, i64 32, i1 false)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], ptr %md, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [8 x i32], ptr %md, i64 0, i64 0
  call void @bubble_sort(ptr noundef %arraydecay, i32 noundef 8)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc9, %for.end
  %4 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %4, 8
  br i1 %cmp4, label %for.body5, label %for.end11

for.body5:                                        ; preds = %for.cond3
  %5 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [8 x i32], ptr %md, i64 0, i64 %idxprom6
  %6 = load i32, ptr %arrayidx7, align 4
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %6)
  br label %for.inc9

for.inc9:                                         ; preds = %for.body5
  %7 = load i32, ptr %i, align 4
  %inc10 = add nsw i32 %7, 1
  store i32 %inc10, ptr %i, align 4
  br label %for.cond3, !llvm.loop !16

for.end11:                                        ; preds = %for.cond3
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %d, ptr align 4 @__const.main.d, i64 64, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc20, %for.end11
  %8 = load i32, ptr %i, align 4
  %cmp14 = icmp slt i32 %8, 8
  br i1 %cmp14, label %for.body15, label %for.end22

for.body15:                                       ; preds = %for.cond13
  %r = getelementptr inbounds %struct.SqList, ptr %s, i32 0, i32 0
  %9 = load i32, ptr %i, align 4
  %add = add nsw i32 %9, 1
  %idxprom16 = sext i32 %add to i64
  %arrayidx17 = getelementptr inbounds [21 x %struct.RedType], ptr %r, i64 0, i64 %idxprom16
  %10 = load i32, ptr %i, align 4
  %idxprom18 = sext i32 %10 to i64
  %arrayidx19 = getelementptr inbounds [8 x %struct.RedType], ptr %d, i64 0, i64 %idxprom18
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx17, ptr align 4 %arrayidx19, i64 8, i1 false)
  br label %for.inc20

for.inc20:                                        ; preds = %for.body15
  %11 = load i32, ptr %i, align 4
  %inc21 = add nsw i32 %11, 1
  store i32 %inc21, ptr %i, align 4
  br label %for.cond13, !llvm.loop !17

for.end22:                                        ; preds = %for.cond13
  %length = getelementptr inbounds %struct.SqList, ptr %s, i32 0, i32 1
  store i32 8, ptr %length, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %m, ptr align 4 %s, i64 172, i1 false)
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %byval-temp, ptr align 4 %s, i64 172, i1 false)
  call void @print(ptr noundef %byval-temp)
  call void @quick_sort(ptr noundef %s, i32 noundef 1)
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %byval-temp25, ptr align 4 %s, i64 172, i1 false)
  call void @print(ptr noundef %byval-temp25)
  %call26 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %byval-temp27, ptr align 4 %m, i64 172, i1 false)
  call void @print(ptr noundef %byval-temp27)
  call void @quick_sort(ptr noundef %m, i32 noundef 0)
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %byval-temp29, ptr align 4 %m, i64 172, i1 false)
  call void @print(ptr noundef %byval-temp29)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
