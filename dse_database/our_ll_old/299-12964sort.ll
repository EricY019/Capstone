; ModuleID = './code/299-12964sort.c'
source_filename = "./code/299-12964sort.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"heap under flow\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"new key is smaller\00", align 1
@__const.main.A1 = private unnamed_addr constant [6 x i32] [i32 5, i32 4, i32 3, i32 8, i32 10, i32 2], align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.main.A2 = private unnamed_addr constant [6 x i32] [i32 5, i32 4, i32 3, i32 8, i32 10, i32 2], align 4
@__const.main.A3 = private unnamed_addr constant [6 x i32] [i32 5, i32 4, i32 3, i32 8, i32 10, i32 2], align 4
@__const.main.A4 = private unnamed_addr constant [6 x i32] [i32 5, i32 4, i32 3, i32 8, i32 10, i32 2], align 4
@__const.main.A5 = private unnamed_addr constant [6 x i32] [i32 5, i32 4, i32 3, i32 8, i32 10, i32 2], align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @printArray(ptr noundef %A, i32 noundef %len) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %A, ptr %A.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %A.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @swap(ptr noundef %A, i32 noundef %i, i32 noundef %j) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %A, ptr %A.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  store i32 %j, ptr %j.addr, align 4
  %0 = load ptr, ptr %A.addr, align 8
  %1 = load i32, ptr %i.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %tmp, align 4
  %3 = load ptr, ptr %A.addr, align 8
  %4 = load i32, ptr %j.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %3, i64 %idxprom1
  %5 = load i32, ptr %arrayidx2, align 4
  %6 = load ptr, ptr %A.addr, align 8
  %7 = load i32, ptr %i.addr, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %6, i64 %idxprom3
  store i32 %5, ptr %arrayidx4, align 4
  %8 = load i32, ptr %tmp, align 4
  %9 = load ptr, ptr %A.addr, align 8
  %10 = load i32, ptr %j.addr, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %9, i64 %idxprom5
  store i32 %8, ptr %arrayidx6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @insertionSort(ptr noundef %A, i32 noundef %len) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %v = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %A, ptr %A.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %A.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  store i32 %4, ptr %v, align 4
  %5 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %5, 1
  store i32 %sub, ptr %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %6 = load i32, ptr %j, align 4
  %cmp1 = icmp sge i32 %6, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load ptr, ptr %A.addr, align 8
  %8 = load i32, ptr %j, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %7, i64 %idxprom2
  %9 = load i32, ptr %arrayidx3, align 4
  %10 = load i32, ptr %v, align 4
  %cmp4 = icmp sgt i32 %9, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load ptr, ptr %A.addr, align 8
  %13 = load i32, ptr %j, align 4
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %12, i64 %idxprom5
  %14 = load i32, ptr %arrayidx6, align 4
  %15 = load ptr, ptr %A.addr, align 8
  %16 = load i32, ptr %j, align 4
  %add = add nsw i32 %16, 1
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %15, i64 %idxprom7
  store i32 %14, ptr %arrayidx8, align 4
  %17 = load i32, ptr %j, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, ptr %j, align 4
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %land.end
  %18 = load i32, ptr %v, align 4
  %19 = load ptr, ptr %A.addr, align 8
  %20 = load i32, ptr %j, align 4
  %add9 = add nsw i32 %20, 1
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %19, i64 %idxprom10
  store i32 %18, ptr %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %21 = load i32, ptr %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %A.addr, align 8
  ret ptr %22
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @merge(ptr noundef %A, i32 noundef %p, i32 noundef %m, i32 noundef %q) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %p.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %q.addr = alloca i32, align 4
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %i = alloca i32, align 4
  %i6 = alloca i32, align 4
  %k1 = alloca i32, align 4
  %k2 = alloca i32, align 4
  %i20 = alloca i32, align 4
  store ptr %A, ptr %A.addr, align 8
  store i32 %p, ptr %p.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %q, ptr %q.addr, align 4
  %0 = load i32, ptr %m.addr, align 4
  %1 = load i32, ptr %p.addr, align 4
  %sub = sub nsw i32 %0, %1
  %add = add nsw i32 %sub, 1
  store i32 %add, ptr %len1, align 4
  %2 = load i32, ptr %q.addr, align 4
  %3 = load i32, ptr %m.addr, align 4
  %sub1 = sub nsw i32 %2, %3
  store i32 %sub1, ptr %len2, align 4
  %4 = load i32, ptr %len1, align 4
  %5 = zext i32 %4 to i64
  %6 = call ptr @llvm.stacksave.p0()
  store ptr %6, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %5, align 4
  store i64 %5, ptr %__vla_expr0, align 8
  %7 = load i32, ptr %len2, align 4
  %8 = zext i32 %7 to i64
  %vla2 = alloca i32, i64 %8, align 4
  store i64 %8, ptr %__vla_expr1, align 8
  %9 = load i32, ptr %p.addr, align 4
  store i32 %9, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %m.addr, align 4
  %cmp = icmp sle i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %A.addr, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i32, ptr %12, i64 %idxprom
  %14 = load i32, ptr %arrayidx, align 4
  %15 = load i32, ptr %i, align 4
  %16 = load i32, ptr %p.addr, align 4
  %sub3 = sub nsw i32 %15, %16
  %idxprom4 = sext i32 %sub3 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %vla, i64 %idxprom4
  store i32 %14, ptr %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %18 = load i32, ptr %m.addr, align 4
  %add7 = add nsw i32 %18, 1
  store i32 %add7, ptr %i6, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc17, %for.end
  %19 = load i32, ptr %i6, align 4
  %20 = load i32, ptr %q.addr, align 4
  %cmp9 = icmp sle i32 %19, %20
  br i1 %cmp9, label %for.body10, label %for.end19

for.body10:                                       ; preds = %for.cond8
  %21 = load ptr, ptr %A.addr, align 8
  %22 = load i32, ptr %i6, align 4
  %idxprom11 = sext i32 %22 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %21, i64 %idxprom11
  %23 = load i32, ptr %arrayidx12, align 4
  %24 = load i32, ptr %i6, align 4
  %25 = load i32, ptr %m.addr, align 4
  %sub13 = sub nsw i32 %24, %25
  %sub14 = sub nsw i32 %sub13, 1
  %idxprom15 = sext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %vla2, i64 %idxprom15
  store i32 %23, ptr %arrayidx16, align 4
  br label %for.inc17

for.inc17:                                        ; preds = %for.body10
  %26 = load i32, ptr %i6, align 4
  %inc18 = add nsw i32 %26, 1
  store i32 %inc18, ptr %i6, align 4
  br label %for.cond8, !llvm.loop !10

for.end19:                                        ; preds = %for.cond8
  store i32 0, ptr %k1, align 4
  store i32 0, ptr %k2, align 4
  %27 = load i32, ptr %p.addr, align 4
  store i32 %27, ptr %i20, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc57, %for.end19
  %28 = load i32, ptr %i20, align 4
  %29 = load i32, ptr %q.addr, align 4
  %cmp22 = icmp sle i32 %28, %29
  br i1 %cmp22, label %for.body23, label %for.end59

for.body23:                                       ; preds = %for.cond21
  %30 = load i32, ptr %k1, align 4
  %31 = load i32, ptr %len1, align 4
  %cmp24 = icmp sge i32 %30, %31
  br i1 %cmp24, label %if.then, label %if.else

if.then:                                          ; preds = %for.body23
  %32 = load i32, ptr %k2, align 4
  %inc25 = add nsw i32 %32, 1
  store i32 %inc25, ptr %k2, align 4
  %idxprom26 = sext i32 %32 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %vla2, i64 %idxprom26
  %33 = load i32, ptr %arrayidx27, align 4
  %34 = load ptr, ptr %A.addr, align 8
  %35 = load i32, ptr %i20, align 4
  %idxprom28 = sext i32 %35 to i64
  %arrayidx29 = getelementptr inbounds i32, ptr %34, i64 %idxprom28
  store i32 %33, ptr %arrayidx29, align 4
  br label %if.end56

if.else:                                          ; preds = %for.body23
  %36 = load i32, ptr %k2, align 4
  %37 = load i32, ptr %len2, align 4
  %cmp30 = icmp sge i32 %36, %37
  br i1 %cmp30, label %if.then31, label %if.else37

if.then31:                                        ; preds = %if.else
  %38 = load i32, ptr %k1, align 4
  %inc32 = add nsw i32 %38, 1
  store i32 %inc32, ptr %k1, align 4
  %idxprom33 = sext i32 %38 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %vla, i64 %idxprom33
  %39 = load i32, ptr %arrayidx34, align 4
  %40 = load ptr, ptr %A.addr, align 8
  %41 = load i32, ptr %i20, align 4
  %idxprom35 = sext i32 %41 to i64
  %arrayidx36 = getelementptr inbounds i32, ptr %40, i64 %idxprom35
  store i32 %39, ptr %arrayidx36, align 4
  br label %if.end55

if.else37:                                        ; preds = %if.else
  %42 = load i32, ptr %k1, align 4
  %idxprom38 = sext i32 %42 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %vla, i64 %idxprom38
  %43 = load i32, ptr %arrayidx39, align 4
  %44 = load i32, ptr %k2, align 4
  %idxprom40 = sext i32 %44 to i64
  %arrayidx41 = getelementptr inbounds i32, ptr %vla2, i64 %idxprom40
  %45 = load i32, ptr %arrayidx41, align 4
  %cmp42 = icmp sle i32 %43, %45
  br i1 %cmp42, label %if.then43, label %if.else49

if.then43:                                        ; preds = %if.else37
  %46 = load i32, ptr %k1, align 4
  %inc44 = add nsw i32 %46, 1
  store i32 %inc44, ptr %k1, align 4
  %idxprom45 = sext i32 %46 to i64
  %arrayidx46 = getelementptr inbounds i32, ptr %vla, i64 %idxprom45
  %47 = load i32, ptr %arrayidx46, align 4
  %48 = load ptr, ptr %A.addr, align 8
  %49 = load i32, ptr %i20, align 4
  %idxprom47 = sext i32 %49 to i64
  %arrayidx48 = getelementptr inbounds i32, ptr %48, i64 %idxprom47
  store i32 %47, ptr %arrayidx48, align 4
  br label %if.end

if.else49:                                        ; preds = %if.else37
  %50 = load i32, ptr %k2, align 4
  %inc50 = add nsw i32 %50, 1
  store i32 %inc50, ptr %k2, align 4
  %idxprom51 = sext i32 %50 to i64
  %arrayidx52 = getelementptr inbounds i32, ptr %vla2, i64 %idxprom51
  %51 = load i32, ptr %arrayidx52, align 4
  %52 = load ptr, ptr %A.addr, align 8
  %53 = load i32, ptr %i20, align 4
  %idxprom53 = sext i32 %53 to i64
  %arrayidx54 = getelementptr inbounds i32, ptr %52, i64 %idxprom53
  store i32 %51, ptr %arrayidx54, align 4
  br label %if.end

if.end:                                           ; preds = %if.else49, %if.then43
  br label %if.end55

if.end55:                                         ; preds = %if.end, %if.then31
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then
  br label %for.inc57

for.inc57:                                        ; preds = %if.end56
  %54 = load i32, ptr %i20, align 4
  %inc58 = add nsw i32 %54, 1
  store i32 %inc58, ptr %i20, align 4
  br label %for.cond21, !llvm.loop !11

for.end59:                                        ; preds = %for.cond21
  %55 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %55)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @mergeSort(ptr noundef %A, i32 noundef %p, i32 noundef %q) #0 {
entry:
  %retval = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %p.addr = alloca i32, align 4
  %q.addr = alloca i32, align 4
  %m = alloca i32, align 4
  store ptr %A, ptr %A.addr, align 8
  store i32 %p, ptr %p.addr, align 4
  store i32 %q, ptr %q.addr, align 4
  %0 = load i32, ptr %p.addr, align 4
  %1 = load i32, ptr %q.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %A.addr, align 8
  store ptr %2, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %p.addr, align 4
  %conv = sitofp i32 %3 to double
  %4 = load i32, ptr %q.addr, align 4
  %5 = load i32, ptr %p.addr, align 4
  %sub = sub nsw i32 %4, %5
  %div = sdiv i32 %sub, 2
  %conv1 = sitofp i32 %div to double
  %6 = call double @llvm.floor.f64(double %conv1)
  %add = fadd double %conv, %6
  %conv2 = fptosi double %add to i32
  store i32 %conv2, ptr %m, align 4
  %7 = load ptr, ptr %A.addr, align 8
  %8 = load i32, ptr %p.addr, align 4
  %9 = load i32, ptr %m, align 4
  %call = call ptr @mergeSort(ptr noundef %7, i32 noundef %8, i32 noundef %9)
  %10 = load ptr, ptr %A.addr, align 8
  %11 = load i32, ptr %m, align 4
  %add3 = add nsw i32 %11, 1
  %12 = load i32, ptr %q.addr, align 4
  %call4 = call ptr @mergeSort(ptr noundef %10, i32 noundef %add3, i32 noundef %12)
  %13 = load ptr, ptr %A.addr, align 8
  %14 = load i32, ptr %p.addr, align 4
  %15 = load i32, ptr %m, align 4
  %16 = load i32, ptr %q.addr, align 4
  call void @merge(ptr noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16)
  %17 = load ptr, ptr %A.addr, align 8
  store ptr %17, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %18 = load ptr, ptr %retval, align 8
  ret ptr %18
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @parent(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %div = sdiv i32 %0, 2
  %conv = sitofp i32 %div to double
  %1 = call double @llvm.ceil.f64(double %conv)
  %sub = fsub double %1, 1.000000e+00
  %conv1 = fptosi double %sub to i32
  ret i32 %conv1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @left(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %mul = mul nsw i32 %0, 2
  %add = add nsw i32 %mul, 1
  ret i32 %add
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @right(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 %mul, 2
  ret i32 %add
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @maxHeapify(ptr noundef %A, i32 noundef %heapSize, i32 noundef %i) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %heapSize.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %largest = alloca i32, align 4
  store ptr %A, ptr %A.addr, align 8
  store i32 %heapSize, ptr %heapSize.addr, align 4
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %call = call i32 @left(i32 noundef %0)
  store i32 %call, ptr %l, align 4
  %1 = load i32, ptr %i.addr, align 4
  %call1 = call i32 @right(i32 noundef %1)
  store i32 %call1, ptr %r, align 4
  %2 = load i32, ptr %i.addr, align 4
  store i32 %2, ptr %largest, align 4
  %3 = load i32, ptr %l, align 4
  %4 = load i32, ptr %heapSize.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %A.addr, align 8
  %6 = load i32, ptr %l, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4
  %8 = load ptr, ptr %A.addr, align 8
  %9 = load i32, ptr %largest, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %8, i64 %idxprom2
  %10 = load i32, ptr %arrayidx3, align 4
  %cmp4 = icmp sgt i32 %7, %10
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load i32, ptr %l, align 4
  store i32 %11, ptr %largest, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load i32, ptr %r, align 4
  %13 = load i32, ptr %heapSize.addr, align 4
  %cmp5 = icmp slt i32 %12, %13
  br i1 %cmp5, label %land.lhs.true6, label %if.end13

land.lhs.true6:                                   ; preds = %if.end
  %14 = load ptr, ptr %A.addr, align 8
  %15 = load i32, ptr %r, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %14, i64 %idxprom7
  %16 = load i32, ptr %arrayidx8, align 4
  %17 = load ptr, ptr %A.addr, align 8
  %18 = load i32, ptr %largest, align 4
  %idxprom9 = sext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %17, i64 %idxprom9
  %19 = load i32, ptr %arrayidx10, align 4
  %cmp11 = icmp sgt i32 %16, %19
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %land.lhs.true6
  %20 = load i32, ptr %r, align 4
  store i32 %20, ptr %largest, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %land.lhs.true6, %if.end
  %21 = load i32, ptr %largest, align 4
  %22 = load i32, ptr %i.addr, align 4
  %cmp14 = icmp ne i32 %21, %22
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  %23 = load ptr, ptr %A.addr, align 8
  %24 = load i32, ptr %i.addr, align 4
  %25 = load i32, ptr %largest, align 4
  call void @swap(ptr noundef %23, i32 noundef %24, i32 noundef %25)
  %26 = load ptr, ptr %A.addr, align 8
  %27 = load i32, ptr %heapSize.addr, align 4
  %28 = load i32, ptr %largest, align 4
  call void @maxHeapify(ptr noundef %26, i32 noundef %27, i32 noundef %28)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @buildMaxHeap(ptr noundef %A, i32 noundef %len) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %m = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %A, ptr %A.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %0 = load i32, ptr %len.addr, align 4
  %div = sdiv i32 %0, 2
  %conv = sitofp i32 %div to double
  %1 = call double @llvm.floor.f64(double %conv)
  %sub = fsub double %1, 1.000000e+00
  %conv1 = fptosi double %sub to i32
  store i32 %conv1, ptr %m, align 4
  %2 = load i32, ptr %m, align 4
  store i32 %2, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %A.addr, align 8
  %5 = load i32, ptr %len.addr, align 4
  %6 = load i32, ptr %i, align 4
  call void @maxHeapify(ptr noundef %4, i32 noundef %5, i32 noundef %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @heapSort(ptr noundef %A, i32 noundef %len) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %A, ptr %A.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %0 = load ptr, ptr %A.addr, align 8
  %1 = load i32, ptr %len.addr, align 4
  call void @buildMaxHeap(ptr noundef %0, i32 noundef %1)
  %2 = load i32, ptr %len.addr, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %cmp = icmp sge i32 %3, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %A.addr, align 8
  %5 = load i32, ptr %i, align 4
  call void @swap(ptr noundef %4, i32 noundef 0, i32 noundef %5)
  %6 = load ptr, ptr %A.addr, align 8
  %7 = load i32, ptr %i, align 4
  call void @maxHeapify(ptr noundef %6, i32 noundef %7, i32 noundef 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %A.addr, align 8
  ret ptr %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @heap_maximum(ptr noundef %A) #0 {
entry:
  %A.addr = alloca ptr, align 8
  store ptr %A, ptr %A.addr, align 8
  %0 = load ptr, ptr %A.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @heap_extract_max(ptr noundef %A, i32 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %A.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %max = alloca i32, align 4
  store ptr %A, ptr %A.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %0 = load i32, ptr %len.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %A.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 0
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %max, align 4
  %3 = load ptr, ptr %A.addr, align 8
  %4 = load i32, ptr %len.addr, align 4
  %sub = sub nsw i32 %4, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx1 = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %5 = load i32, ptr %arrayidx1, align 4
  %6 = load ptr, ptr %A.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %6, i64 0
  store i32 %5, ptr %arrayidx2, align 4
  %7 = load i32, ptr %len.addr, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, ptr %len.addr, align 4
  %8 = load ptr, ptr %A.addr, align 8
  %9 = load i32, ptr %len.addr, align 4
  call void @maxHeapify(ptr noundef %8, i32 noundef %9, i32 noundef 0)
  %10 = load i32, ptr %max, align 4
  store i32 %10, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @heap_increase_key(ptr noundef %A, i32 noundef %i, i32 noundef %key) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %key.addr = alloca i32, align 4
  store ptr %A, ptr %A.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  store i32 %key, ptr %key.addr, align 4
  %0 = load i32, ptr %key.addr, align 4
  %1 = load ptr, ptr %A.addr, align 8
  %2 = load i32, ptr %i.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %while.end

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %key.addr, align 4
  %5 = load ptr, ptr %A.addr, align 8
  %6 = load i32, ptr %i.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %5, i64 %idxprom1
  store i32 %4, ptr %arrayidx2, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %7 = load i32, ptr %i.addr, align 4
  %cmp3 = icmp sgt i32 %7, 1
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load ptr, ptr %A.addr, align 8
  %9 = load i32, ptr %i.addr, align 4
  %call4 = call i32 @parent(i32 noundef %9)
  %10 = load ptr, ptr %A.addr, align 8
  %11 = load i32, ptr %i.addr, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %10, i64 %idxprom5
  %12 = load i32, ptr %arrayidx6, align 4
  %cmp7 = icmp slt i32 %call4, %12
  %conv = zext i1 %cmp7 to i32
  %idxprom8 = sext i32 %conv to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %8, i64 %idxprom8
  %13 = load i32, ptr %arrayidx9, align 4
  %tobool = icmp ne i32 %13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load ptr, ptr %A.addr, align 8
  %16 = load i32, ptr %i.addr, align 4
  %call10 = call i32 @parent(i32 noundef %16)
  %17 = load i32, ptr %i.addr, align 4
  call void @swap(ptr noundef %15, i32 noundef %call10, i32 noundef %17)
  %18 = load i32, ptr %i.addr, align 4
  %call11 = call i32 @parent(i32 noundef %18)
  store i32 %call11, ptr %i.addr, align 4
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %if.then, %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @max_heap_insert(ptr noundef %A, i32 noundef %len, i32 noundef %key) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %key.addr = alloca i32, align 4
  store ptr %A, ptr %A.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 %key, ptr %key.addr, align 4
  %0 = load i32, ptr %len.addr, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %len.addr, align 4
  %1 = load ptr, ptr %A.addr, align 8
  %2 = load i32, ptr %len.addr, align 4
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  store i32 -65535, ptr %arrayidx, align 4
  %3 = load ptr, ptr %A.addr, align 8
  %4 = load i32, ptr %len.addr, align 4
  %sub1 = sub nsw i32 %4, 1
  %5 = load i32, ptr %key.addr, align 4
  call void @heap_increase_key(ptr noundef %3, i32 noundef %sub1, i32 noundef %5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @quickSort(ptr noundef %A, i32 noundef %p, i32 noundef %r) #0 {
entry:
  %retval = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %p.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %key = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %q = alloca i32, align 4
  store ptr %A, ptr %A.addr, align 8
  store i32 %p, ptr %p.addr, align 4
  store i32 %r, ptr %r.addr, align 4
  %0 = load i32, ptr %p.addr, align 4
  %1 = load i32, ptr %r.addr, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %A.addr, align 8
  store ptr %2, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %A.addr, align 8
  %4 = load i32, ptr %r.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  store i32 %5, ptr %key, align 4
  %6 = load i32, ptr %p.addr, align 4
  %sub = sub nsw i32 %6, 1
  store i32 %sub, ptr %j, align 4
  %7 = load i32, ptr %p.addr, align 4
  store i32 %7, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %r.addr, align 4
  %sub1 = sub nsw i32 %9, 1
  %cmp2 = icmp sle i32 %8, %sub1
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %A.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %10, i64 %idxprom3
  %12 = load i32, ptr %arrayidx4, align 4
  %13 = load i32, ptr %key, align 4
  %cmp5 = icmp sle i32 %12, %13
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  %14 = load i32, ptr %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %j, align 4
  %15 = load ptr, ptr %A.addr, align 8
  %16 = load i32, ptr %i, align 4
  %17 = load i32, ptr %j, align 4
  call void @swap(ptr noundef %15, i32 noundef %16, i32 noundef %17)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %18 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %18, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %A.addr, align 8
  %20 = load i32, ptr %j, align 4
  %add = add nsw i32 %20, 1
  %21 = load i32, ptr %r.addr, align 4
  call void @swap(ptr noundef %19, i32 noundef %add, i32 noundef %21)
  %22 = load i32, ptr %j, align 4
  %add9 = add nsw i32 %22, 1
  store i32 %add9, ptr %q, align 4
  %23 = load ptr, ptr %A.addr, align 8
  %24 = load i32, ptr %p.addr, align 4
  %25 = load i32, ptr %q, align 4
  %sub10 = sub nsw i32 %25, 1
  %call = call ptr @quickSort(ptr noundef %23, i32 noundef %24, i32 noundef %sub10)
  %26 = load ptr, ptr %A.addr, align 8
  %27 = load i32, ptr %q, align 4
  %add11 = add nsw i32 %27, 1
  %28 = load i32, ptr %r.addr, align 4
  %call12 = call ptr @quickSort(ptr noundef %26, i32 noundef %add11, i32 noundef %28)
  %29 = load ptr, ptr %A.addr, align 8
  store ptr %29, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %30 = load ptr, ptr %retval, align 8
  ret ptr %30
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @countingSort(ptr noundef %A, ptr noundef %B, i32 noundef %len, i32 noundef %k) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i16 = alloca i32, align 4
  %i30 = alloca i32, align 4
  store ptr %A, ptr %A.addr, align 8
  store ptr %B, ptr %B.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 %k, ptr %k.addr, align 4
  %0 = load i32, ptr %k.addr, align 4
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  store ptr %2, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 4
  store i64 %1, ptr %__vla_expr0, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %k.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i1, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc13, %for.end
  %7 = load i32, ptr %i1, align 4
  %8 = load i32, ptr %len.addr, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %for.body4, label %for.end15

for.body4:                                        ; preds = %for.cond2
  %9 = load ptr, ptr %A.addr, align 8
  %10 = load i32, ptr %i1, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %9, i64 %idxprom5
  %11 = load i32, ptr %arrayidx6, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %vla, i64 %idxprom7
  %12 = load i32, ptr %arrayidx8, align 4
  %add = add nsw i32 %12, 1
  %13 = load ptr, ptr %A.addr, align 8
  %14 = load i32, ptr %i1, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %13, i64 %idxprom9
  %15 = load i32, ptr %arrayidx10, align 4
  %idxprom11 = sext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %vla, i64 %idxprom11
  store i32 %add, ptr %arrayidx12, align 4
  br label %for.inc13

for.inc13:                                        ; preds = %for.body4
  %16 = load i32, ptr %i1, align 4
  %inc14 = add nsw i32 %16, 1
  store i32 %inc14, ptr %i1, align 4
  br label %for.cond2, !llvm.loop !17

for.end15:                                        ; preds = %for.cond2
  store i32 1, ptr %i16, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc27, %for.end15
  %17 = load i32, ptr %i16, align 4
  %18 = load i32, ptr %k.addr, align 4
  %cmp18 = icmp slt i32 %17, %18
  br i1 %cmp18, label %for.body19, label %for.end29

for.body19:                                       ; preds = %for.cond17
  %19 = load i32, ptr %i16, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %vla, i64 %idxprom20
  %20 = load i32, ptr %arrayidx21, align 4
  %21 = load i32, ptr %i16, align 4
  %sub = sub nsw i32 %21, 1
  %idxprom22 = sext i32 %sub to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %vla, i64 %idxprom22
  %22 = load i32, ptr %arrayidx23, align 4
  %add24 = add nsw i32 %20, %22
  %23 = load i32, ptr %i16, align 4
  %idxprom25 = sext i32 %23 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %vla, i64 %idxprom25
  store i32 %add24, ptr %arrayidx26, align 4
  br label %for.inc27

for.inc27:                                        ; preds = %for.body19
  %24 = load i32, ptr %i16, align 4
  %inc28 = add nsw i32 %24, 1
  store i32 %inc28, ptr %i16, align 4
  br label %for.cond17, !llvm.loop !18

for.end29:                                        ; preds = %for.cond17
  %25 = load i32, ptr %len.addr, align 4
  %sub31 = sub nsw i32 %25, 1
  store i32 %sub31, ptr %i30, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc53, %for.end29
  %26 = load i32, ptr %i30, align 4
  %cmp33 = icmp sge i32 %26, 0
  br i1 %cmp33, label %for.body34, label %for.end54

for.body34:                                       ; preds = %for.cond32
  %27 = load ptr, ptr %A.addr, align 8
  %28 = load i32, ptr %i30, align 4
  %idxprom35 = sext i32 %28 to i64
  %arrayidx36 = getelementptr inbounds i32, ptr %27, i64 %idxprom35
  %29 = load i32, ptr %arrayidx36, align 4
  %30 = load ptr, ptr %B.addr, align 8
  %31 = load ptr, ptr %A.addr, align 8
  %32 = load i32, ptr %i30, align 4
  %idxprom37 = sext i32 %32 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %31, i64 %idxprom37
  %33 = load i32, ptr %arrayidx38, align 4
  %idxprom39 = sext i32 %33 to i64
  %arrayidx40 = getelementptr inbounds i32, ptr %vla, i64 %idxprom39
  %34 = load i32, ptr %arrayidx40, align 4
  %sub41 = sub nsw i32 %34, 1
  %idxprom42 = sext i32 %sub41 to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %30, i64 %idxprom42
  store i32 %29, ptr %arrayidx43, align 4
  %35 = load ptr, ptr %A.addr, align 8
  %36 = load i32, ptr %i30, align 4
  %idxprom44 = sext i32 %36 to i64
  %arrayidx45 = getelementptr inbounds i32, ptr %35, i64 %idxprom44
  %37 = load i32, ptr %arrayidx45, align 4
  %idxprom46 = sext i32 %37 to i64
  %arrayidx47 = getelementptr inbounds i32, ptr %vla, i64 %idxprom46
  %38 = load i32, ptr %arrayidx47, align 4
  %sub48 = sub nsw i32 %38, 1
  %39 = load ptr, ptr %A.addr, align 8
  %40 = load i32, ptr %i30, align 4
  %idxprom49 = sext i32 %40 to i64
  %arrayidx50 = getelementptr inbounds i32, ptr %39, i64 %idxprom49
  %41 = load i32, ptr %arrayidx50, align 4
  %idxprom51 = sext i32 %41 to i64
  %arrayidx52 = getelementptr inbounds i32, ptr %vla, i64 %idxprom51
  store i32 %sub48, ptr %arrayidx52, align 4
  br label %for.inc53

for.inc53:                                        ; preds = %for.body34
  %42 = load i32, ptr %i30, align 4
  %dec = add nsw i32 %42, -1
  store i32 %dec, ptr %i30, align 4
  br label %for.cond32, !llvm.loop !19

for.end54:                                        ; preds = %for.cond32
  %43 = load ptr, ptr %B.addr, align 8
  %44 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %44)
  ret ptr %43
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %A1 = alloca [6 x i32], align 4
  %A2 = alloca [6 x i32], align 4
  %A3 = alloca [6 x i32], align 4
  %A4 = alloca [6 x i32], align 4
  %A5 = alloca [6 x i32], align 4
  %B = alloca [6 x i32], align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %A1, ptr align 4 @__const.main.A1, i64 24, i1 false)
  %arraydecay = getelementptr inbounds [6 x i32], ptr %A1, i64 0, i64 0
  %call = call ptr @insertionSort(ptr noundef %arraydecay, i32 noundef 6)
  call void @printArray(ptr noundef %call, i32 noundef 6)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %A2, ptr align 4 @__const.main.A2, i64 24, i1 false)
  %arraydecay2 = getelementptr inbounds [6 x i32], ptr %A2, i64 0, i64 0
  %call3 = call ptr @mergeSort(ptr noundef %arraydecay2, i32 noundef 0, i32 noundef 5)
  call void @printArray(ptr noundef %call3, i32 noundef 6)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %A3, ptr align 4 @__const.main.A3, i64 24, i1 false)
  %arraydecay5 = getelementptr inbounds [6 x i32], ptr %A3, i64 0, i64 0
  %call6 = call ptr @heapSort(ptr noundef %arraydecay5, i32 noundef 6)
  call void @printArray(ptr noundef %call6, i32 noundef 6)
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %A4, ptr align 4 @__const.main.A4, i64 24, i1 false)
  %arraydecay8 = getelementptr inbounds [6 x i32], ptr %A4, i64 0, i64 0
  %call9 = call ptr @quickSort(ptr noundef %arraydecay8, i32 noundef 0, i32 noundef 5)
  call void @printArray(ptr noundef %call9, i32 noundef 6)
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %A5, ptr align 4 @__const.main.A5, i64 24, i1 false)
  %arraydecay11 = getelementptr inbounds [6 x i32], ptr %A5, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [6 x i32], ptr %B, i64 0, i64 0
  %call13 = call ptr @countingSort(ptr noundef %arraydecay11, ptr noundef %arraydecay12, i32 noundef 6, i32 noundef 11)
  call void @printArray(ptr noundef %call13, i32 noundef 6)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
