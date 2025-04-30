; ModuleID = 'code/299-12964sort.c'
source_filename = "code/299-12964sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"heap under flow\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"new key is smaller\00", align 1
@__const.main.A1 = private unnamed_addr constant [6 x i32] [i32 5, i32 4, i32 3, i32 8, i32 10, i32 2], align 16
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.main.A2 = private unnamed_addr constant [6 x i32] [i32 5, i32 4, i32 3, i32 8, i32 10, i32 2], align 16
@__const.main.A3 = private unnamed_addr constant [6 x i32] [i32 5, i32 4, i32 3, i32 8, i32 10, i32 2], align 16
@__const.main.A4 = private unnamed_addr constant [6 x i32] [i32 5, i32 4, i32 3, i32 8, i32 10, i32 2], align 16
@__const.main.A5 = private unnamed_addr constant [6 x i32] [i32 5, i32 4, i32 3, i32 8, i32 10, i32 2], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printArray(i32* %A, i32 %len) #0 {
entry:
  %A.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %A, i32** %A.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %A.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i32* %A, i32 %i, i32 %j) #0 {
entry:
  %A.addr = alloca i32*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32* %A, i32** %A.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load i32*, i32** %A.addr, align 8
  %1 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %tmp, align 4
  %3 = load i32*, i32** %A.addr, align 8
  %4 = load i32, i32* %j.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %3, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32*, i32** %A.addr, align 8
  %7 = load i32, i32* %i.addr, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %6, i64 %idxprom3
  store i32 %5, i32* %arrayidx4, align 4
  %8 = load i32, i32* %tmp, align 4
  %9 = load i32*, i32** %A.addr, align 8
  %10 = load i32, i32* %j.addr, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %idxprom5
  store i32 %8, i32* %arrayidx6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @insertionSort(i32* %A, i32 %len) #0 {
entry:
  %A.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %v = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %A, i32** %A.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %A.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %v, align 4
  %5 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %5, 1
  store i32 %sub, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %6 = load i32, i32* %j, align 4
  %cmp1 = icmp sge i32 %6, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load i32*, i32** %A.addr, align 8
  %8 = load i32, i32* %j, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 %idxprom2
  %9 = load i32, i32* %arrayidx3, align 4
  %10 = load i32, i32* %v, align 4
  %cmp4 = icmp sgt i32 %9, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %12 = load i32*, i32** %A.addr, align 8
  %13 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %12, i64 %idxprom5
  %14 = load i32, i32* %arrayidx6, align 4
  %15 = load i32*, i32** %A.addr, align 8
  %16 = load i32, i32* %j, align 4
  %add = add nsw i32 %16, 1
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %15, i64 %idxprom7
  store i32 %14, i32* %arrayidx8, align 4
  %17 = load i32, i32* %j, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %j, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %18 = load i32, i32* %v, align 4
  %19 = load i32*, i32** %A.addr, align 8
  %20 = load i32, i32* %j, align 4
  %add9 = add nsw i32 %20, 1
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %19, i64 %idxprom10
  store i32 %18, i32* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %22 = load i32*, i32** %A.addr, align 8
  ret i32* %22
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @merge(i32* %A, i32 %p, i32 %m, i32 %q) #0 {
entry:
  %A.addr = alloca i32*, align 8
  %p.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %q.addr = alloca i32, align 4
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %i = alloca i32, align 4
  %i6 = alloca i32, align 4
  %k1 = alloca i32, align 4
  %k2 = alloca i32, align 4
  %i20 = alloca i32, align 4
  store i32* %A, i32** %A.addr, align 8
  store i32 %p, i32* %p.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %q, i32* %q.addr, align 4
  %0 = load i32, i32* %m.addr, align 4
  %1 = load i32, i32* %p.addr, align 4
  %sub = sub nsw i32 %0, %1
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %len1, align 4
  %2 = load i32, i32* %q.addr, align 4
  %3 = load i32, i32* %m.addr, align 4
  %sub1 = sub nsw i32 %2, %3
  store i32 %sub1, i32* %len2, align 4
  %4 = load i32, i32* %len1, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %saved_stack, align 8
  %vla = alloca i32, i64 %5, align 16
  store i64 %5, i64* %__vla_expr0, align 8
  %7 = load i32, i32* %len2, align 4
  %8 = zext i32 %7 to i64
  %vla2 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %__vla_expr1, align 8
  %9 = load i32, i32* %p.addr, align 4
  store i32 %9, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %m.addr, align 4
  %cmp = icmp sle i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32*, i32** %A.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 %idxprom
  %14 = load i32, i32* %arrayidx, align 4
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %p.addr, align 4
  %sub3 = sub nsw i32 %15, %16
  %idxprom4 = sext i32 %sub3 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %vla, i64 %idxprom4
  store i32 %14, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %m.addr, align 4
  %add7 = add nsw i32 %18, 1
  store i32 %add7, i32* %i6, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc17, %for.end
  %19 = load i32, i32* %i6, align 4
  %20 = load i32, i32* %q.addr, align 4
  %cmp9 = icmp sle i32 %19, %20
  br i1 %cmp9, label %for.body10, label %for.end19

for.body10:                                       ; preds = %for.cond8
  %21 = load i32*, i32** %A.addr, align 8
  %22 = load i32, i32* %i6, align 4
  %idxprom11 = sext i32 %22 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %21, i64 %idxprom11
  %23 = load i32, i32* %arrayidx12, align 4
  %24 = load i32, i32* %i6, align 4
  %25 = load i32, i32* %m.addr, align 4
  %sub13 = sub nsw i32 %24, %25
  %sub14 = sub nsw i32 %sub13, 1
  %idxprom15 = sext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom15
  store i32 %23, i32* %arrayidx16, align 4
  br label %for.inc17

for.inc17:                                        ; preds = %for.body10
  %26 = load i32, i32* %i6, align 4
  %inc18 = add nsw i32 %26, 1
  store i32 %inc18, i32* %i6, align 4
  br label %for.cond8, !llvm.loop !9

for.end19:                                        ; preds = %for.cond8
  store i32 0, i32* %k1, align 4
  store i32 0, i32* %k2, align 4
  %27 = load i32, i32* %p.addr, align 4
  store i32 %27, i32* %i20, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc57, %for.end19
  %28 = load i32, i32* %i20, align 4
  %29 = load i32, i32* %q.addr, align 4
  %cmp22 = icmp sle i32 %28, %29
  br i1 %cmp22, label %for.body23, label %for.end59

for.body23:                                       ; preds = %for.cond21
  %30 = load i32, i32* %k1, align 4
  %31 = load i32, i32* %len1, align 4
  %cmp24 = icmp sge i32 %30, %31
  br i1 %cmp24, label %if.then, label %if.else

if.then:                                          ; preds = %for.body23
  %32 = load i32, i32* %k2, align 4
  %inc25 = add nsw i32 %32, 1
  store i32 %inc25, i32* %k2, align 4
  %idxprom26 = sext i32 %32 to i64
  %arrayidx27 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom26
  %33 = load i32, i32* %arrayidx27, align 4
  %34 = load i32*, i32** %A.addr, align 8
  %35 = load i32, i32* %i20, align 4
  %idxprom28 = sext i32 %35 to i64
  %arrayidx29 = getelementptr inbounds i32, i32* %34, i64 %idxprom28
  store i32 %33, i32* %arrayidx29, align 4
  br label %if.end56

if.else:                                          ; preds = %for.body23
  %36 = load i32, i32* %k2, align 4
  %37 = load i32, i32* %len2, align 4
  %cmp30 = icmp sge i32 %36, %37
  br i1 %cmp30, label %if.then31, label %if.else37

if.then31:                                        ; preds = %if.else
  %38 = load i32, i32* %k1, align 4
  %inc32 = add nsw i32 %38, 1
  store i32 %inc32, i32* %k1, align 4
  %idxprom33 = sext i32 %38 to i64
  %arrayidx34 = getelementptr inbounds i32, i32* %vla, i64 %idxprom33
  %39 = load i32, i32* %arrayidx34, align 4
  %40 = load i32*, i32** %A.addr, align 8
  %41 = load i32, i32* %i20, align 4
  %idxprom35 = sext i32 %41 to i64
  %arrayidx36 = getelementptr inbounds i32, i32* %40, i64 %idxprom35
  store i32 %39, i32* %arrayidx36, align 4
  br label %if.end55

if.else37:                                        ; preds = %if.else
  %42 = load i32, i32* %k1, align 4
  %idxprom38 = sext i32 %42 to i64
  %arrayidx39 = getelementptr inbounds i32, i32* %vla, i64 %idxprom38
  %43 = load i32, i32* %arrayidx39, align 4
  %44 = load i32, i32* %k2, align 4
  %idxprom40 = sext i32 %44 to i64
  %arrayidx41 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom40
  %45 = load i32, i32* %arrayidx41, align 4
  %cmp42 = icmp sle i32 %43, %45
  br i1 %cmp42, label %if.then43, label %if.else49

if.then43:                                        ; preds = %if.else37
  %46 = load i32, i32* %k1, align 4
  %inc44 = add nsw i32 %46, 1
  store i32 %inc44, i32* %k1, align 4
  %idxprom45 = sext i32 %46 to i64
  %arrayidx46 = getelementptr inbounds i32, i32* %vla, i64 %idxprom45
  %47 = load i32, i32* %arrayidx46, align 4
  %48 = load i32*, i32** %A.addr, align 8
  %49 = load i32, i32* %i20, align 4
  %idxprom47 = sext i32 %49 to i64
  %arrayidx48 = getelementptr inbounds i32, i32* %48, i64 %idxprom47
  store i32 %47, i32* %arrayidx48, align 4
  br label %if.end

if.else49:                                        ; preds = %if.else37
  %50 = load i32, i32* %k2, align 4
  %inc50 = add nsw i32 %50, 1
  store i32 %inc50, i32* %k2, align 4
  %idxprom51 = sext i32 %50 to i64
  %arrayidx52 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom51
  %51 = load i32, i32* %arrayidx52, align 4
  %52 = load i32*, i32** %A.addr, align 8
  %53 = load i32, i32* %i20, align 4
  %idxprom53 = sext i32 %53 to i64
  %arrayidx54 = getelementptr inbounds i32, i32* %52, i64 %idxprom53
  store i32 %51, i32* %arrayidx54, align 4
  br label %if.end

if.end:                                           ; preds = %if.else49, %if.then43
  br label %if.end55

if.end55:                                         ; preds = %if.end, %if.then31
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then
  br label %for.inc57

for.inc57:                                        ; preds = %if.end56
  %54 = load i32, i32* %i20, align 4
  %inc58 = add nsw i32 %54, 1
  store i32 %inc58, i32* %i20, align 4
  br label %for.cond21, !llvm.loop !10

for.end59:                                        ; preds = %for.cond21
  %55 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %55)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mergeSort(i32* %A, i32 %p, i32 %q) #0 {
entry:
  %retval = alloca i32*, align 8
  %A.addr = alloca i32*, align 8
  %p.addr = alloca i32, align 4
  %q.addr = alloca i32, align 4
  %m = alloca i32, align 4
  store i32* %A, i32** %A.addr, align 8
  store i32 %p, i32* %p.addr, align 4
  store i32 %q, i32* %q.addr, align 4
  %0 = load i32, i32* %p.addr, align 4
  %1 = load i32, i32* %q.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %A.addr, align 8
  store i32* %2, i32** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %p.addr, align 4
  %conv = sitofp i32 %3 to double
  %4 = load i32, i32* %q.addr, align 4
  %5 = load i32, i32* %p.addr, align 4
  %sub = sub nsw i32 %4, %5
  %div = sdiv i32 %sub, 2
  %conv1 = sitofp i32 %div to double
  %6 = call double @llvm.floor.f64(double %conv1)
  %add = fadd double %conv, %6
  %conv2 = fptosi double %add to i32
  store i32 %conv2, i32* %m, align 4
  %7 = load i32*, i32** %A.addr, align 8
  %8 = load i32, i32* %p.addr, align 4
  %9 = load i32, i32* %m, align 4
  %call = call i32* @mergeSort(i32* %7, i32 %8, i32 %9)
  %10 = load i32*, i32** %A.addr, align 8
  %11 = load i32, i32* %m, align 4
  %add3 = add nsw i32 %11, 1
  %12 = load i32, i32* %q.addr, align 4
  %call4 = call i32* @mergeSort(i32* %10, i32 %add3, i32 %12)
  %13 = load i32*, i32** %A.addr, align 8
  %14 = load i32, i32* %p.addr, align 4
  %15 = load i32, i32* %m, align 4
  %16 = load i32, i32* %q.addr, align 4
  call void @merge(i32* %13, i32 %14, i32 %15, i32 %16)
  %17 = load i32*, i32** %A.addr, align 8
  store i32* %17, i32** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %18 = load i32*, i32** %retval, align 8
  ret i32* %18
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parent(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %div = sdiv i32 %0, 2
  %conv = sitofp i32 %div to double
  %1 = call double @llvm.ceil.f64(double %conv)
  %sub = fsub double %1, 1.000000e+00
  %conv1 = fptosi double %sub to i32
  ret i32 %conv1
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @left(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %mul = mul nsw i32 %0, 2
  %add = add nsw i32 %mul, 1
  ret i32 %add
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @right(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 %mul, 2
  ret i32 %add
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @maxHeapify(i32* %A, i32 %heapSize, i32 %i) #0 {
entry:
  %A.addr = alloca i32*, align 8
  %heapSize.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %largest = alloca i32, align 4
  store i32* %A, i32** %A.addr, align 8
  store i32 %heapSize, i32* %heapSize.addr, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %call = call i32 @left(i32 %0)
  store i32 %call, i32* %l, align 4
  %1 = load i32, i32* %i.addr, align 4
  %call1 = call i32 @right(i32 %1)
  store i32 %call1, i32* %r, align 4
  %2 = load i32, i32* %i.addr, align 4
  store i32 %2, i32* %largest, align 4
  %3 = load i32, i32* %l, align 4
  %4 = load i32, i32* %heapSize.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i32*, i32** %A.addr, align 8
  %6 = load i32, i32* %l, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load i32*, i32** %A.addr, align 8
  %9 = load i32, i32* %largest, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 %idxprom2
  %10 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp sgt i32 %7, %10
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load i32, i32* %l, align 4
  store i32 %11, i32* %largest, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load i32, i32* %r, align 4
  %13 = load i32, i32* %heapSize.addr, align 4
  %cmp5 = icmp slt i32 %12, %13
  br i1 %cmp5, label %land.lhs.true6, label %if.end13

land.lhs.true6:                                   ; preds = %if.end
  %14 = load i32*, i32** %A.addr, align 8
  %15 = load i32, i32* %r, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %14, i64 %idxprom7
  %16 = load i32, i32* %arrayidx8, align 4
  %17 = load i32*, i32** %A.addr, align 8
  %18 = load i32, i32* %largest, align 4
  %idxprom9 = sext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %17, i64 %idxprom9
  %19 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp sgt i32 %16, %19
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %land.lhs.true6
  %20 = load i32, i32* %r, align 4
  store i32 %20, i32* %largest, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %land.lhs.true6, %if.end
  %21 = load i32, i32* %largest, align 4
  %22 = load i32, i32* %i.addr, align 4
  %cmp14 = icmp ne i32 %21, %22
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end13
  %23 = load i32*, i32** %A.addr, align 8
  %24 = load i32, i32* %i.addr, align 4
  %25 = load i32, i32* %largest, align 4
  call void @swap(i32* %23, i32 %24, i32 %25)
  %26 = load i32*, i32** %A.addr, align 8
  %27 = load i32, i32* %heapSize.addr, align 4
  %28 = load i32, i32* %largest, align 4
  call void @maxHeapify(i32* %26, i32 %27, i32 %28)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buildMaxHeap(i32* %A, i32 %len) #0 {
entry:
  %A.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %m = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %A, i32** %A.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %div = sdiv i32 %0, 2
  %conv = sitofp i32 %div to double
  %1 = call double @llvm.floor.f64(double %conv)
  %sub = fsub double %1, 1.000000e+00
  %conv1 = fptosi double %sub to i32
  store i32 %conv1, i32* %m, align 4
  %2 = load i32, i32* %m, align 4
  store i32 %2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %A.addr, align 8
  %5 = load i32, i32* %len.addr, align 4
  %6 = load i32, i32* %i, align 4
  call void @maxHeapify(i32* %4, i32 %5, i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @heapSort(i32* %A, i32 %len) #0 {
entry:
  %A.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %A, i32** %A.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32*, i32** %A.addr, align 8
  %1 = load i32, i32* %len.addr, align 4
  call void @buildMaxHeap(i32* %0, i32 %1)
  %2 = load i32, i32* %len.addr, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %3, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %A.addr, align 8
  %5 = load i32, i32* %i, align 4
  call void @swap(i32* %4, i32 0, i32 %5)
  %6 = load i32*, i32** %A.addr, align 8
  %7 = load i32, i32* %i, align 4
  call void @maxHeapify(i32* %6, i32 %7, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %9 = load i32*, i32** %A.addr, align 8
  ret i32* %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heap_maximum(i32* %A) #0 {
entry:
  %A.addr = alloca i32*, align 8
  store i32* %A, i32** %A.addr, align 8
  %0 = load i32*, i32** %A.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heap_extract_max(i32* %A, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %A.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %max = alloca i32, align 4
  store i32* %A, i32** %A.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32*, i32** %A.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 0
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %max, align 4
  %3 = load i32*, i32** %A.addr, align 8
  %4 = load i32, i32* %len.addr, align 4
  %sub = sub nsw i32 %4, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx1, align 4
  %6 = load i32*, i32** %A.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 0
  store i32 %5, i32* %arrayidx2, align 4
  %7 = load i32, i32* %len.addr, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %len.addr, align 4
  %8 = load i32*, i32** %A.addr, align 8
  %9 = load i32, i32* %len.addr, align 4
  call void @maxHeapify(i32* %8, i32 %9, i32 0)
  %10 = load i32, i32* %max, align 4
  store i32 %10, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heap_increase_key(i32* %A, i32 %i, i32 %key) #0 {
entry:
  %A.addr = alloca i32*, align 8
  %i.addr = alloca i32, align 4
  %key.addr = alloca i32, align 4
  store i32* %A, i32** %A.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %key, i32* %key.addr, align 4
  %0 = load i32, i32* %key.addr, align 4
  %1 = load i32*, i32** %A.addr, align 8
  %2 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %while.end

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %key.addr, align 4
  %5 = load i32*, i32** %A.addr, align 8
  %6 = load i32, i32* %i.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  store i32 %4, i32* %arrayidx2, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %7 = load i32, i32* %i.addr, align 4
  %cmp3 = icmp sgt i32 %7, 1
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i32*, i32** %A.addr, align 8
  %9 = load i32, i32* %i.addr, align 4
  %call4 = call i32 @parent(i32 %9)
  %10 = load i32*, i32** %A.addr, align 8
  %11 = load i32, i32* %i.addr, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %10, i64 %idxprom5
  %12 = load i32, i32* %arrayidx6, align 4
  %cmp7 = icmp slt i32 %call4, %12
  %conv = zext i1 %cmp7 to i32
  %idxprom8 = sext i32 %conv to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %8, i64 %idxprom8
  %13 = load i32, i32* %arrayidx9, align 4
  %tobool = icmp ne i32 %13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %14, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %15 = load i32*, i32** %A.addr, align 8
  %16 = load i32, i32* %i.addr, align 4
  %call10 = call i32 @parent(i32 %16)
  %17 = load i32, i32* %i.addr, align 4
  call void @swap(i32* %15, i32 %call10, i32 %17)
  %18 = load i32, i32* %i.addr, align 4
  %call11 = call i32 @parent(i32 %18)
  store i32 %call11, i32* %i.addr, align 4
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %if.then, %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @max_heap_insert(i32* %A, i32 %len, i32 %key) #0 {
entry:
  %A.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %key.addr = alloca i32, align 4
  store i32* %A, i32** %A.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %key, i32* %key.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %len.addr, align 4
  %1 = load i32*, i32** %A.addr, align 8
  %2 = load i32, i32* %len.addr, align 4
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  store i32 -65535, i32* %arrayidx, align 4
  %3 = load i32*, i32** %A.addr, align 8
  %4 = load i32, i32* %len.addr, align 4
  %sub1 = sub nsw i32 %4, 1
  %5 = load i32, i32* %key.addr, align 4
  call void @heap_increase_key(i32* %3, i32 %sub1, i32 %5)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @quickSort(i32* %A, i32 %p, i32 %r) #0 {
entry:
  %retval = alloca i32*, align 8
  %A.addr = alloca i32*, align 8
  %p.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %key = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %q = alloca i32, align 4
  store i32* %A, i32** %A.addr, align 8
  store i32 %p, i32* %p.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  %0 = load i32, i32* %p.addr, align 4
  %1 = load i32, i32* %r.addr, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %A.addr, align 8
  store i32* %2, i32** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32*, i32** %A.addr, align 8
  %4 = load i32, i32* %r.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* %key, align 4
  %6 = load i32, i32* %p.addr, align 4
  %sub = sub nsw i32 %6, 1
  store i32 %sub, i32* %j, align 4
  %7 = load i32, i32* %p.addr, align 4
  store i32 %7, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %r.addr, align 4
  %sub1 = sub nsw i32 %9, 1
  %cmp2 = icmp sle i32 %8, %sub1
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32*, i32** %A.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 %idxprom3
  %12 = load i32, i32* %arrayidx4, align 4
  %13 = load i32, i32* %key, align 4
  %cmp5 = icmp sle i32 %12, %13
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  %14 = load i32, i32* %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4
  %15 = load i32*, i32** %A.addr, align 8
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %j, align 4
  call void @swap(i32* %15, i32 %16, i32 %17)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %18 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %18, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %19 = load i32*, i32** %A.addr, align 8
  %20 = load i32, i32* %j, align 4
  %add = add nsw i32 %20, 1
  %21 = load i32, i32* %r.addr, align 4
  call void @swap(i32* %19, i32 %add, i32 %21)
  %22 = load i32, i32* %j, align 4
  %add9 = add nsw i32 %22, 1
  store i32 %add9, i32* %q, align 4
  %23 = load i32*, i32** %A.addr, align 8
  %24 = load i32, i32* %p.addr, align 4
  %25 = load i32, i32* %q, align 4
  %sub10 = sub nsw i32 %25, 1
  %call = call i32* @quickSort(i32* %23, i32 %24, i32 %sub10)
  %26 = load i32*, i32** %A.addr, align 8
  %27 = load i32, i32* %q, align 4
  %add11 = add nsw i32 %27, 1
  %28 = load i32, i32* %r.addr, align 4
  %call12 = call i32* @quickSort(i32* %26, i32 %add11, i32 %28)
  %29 = load i32*, i32** %A.addr, align 8
  store i32* %29, i32** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %30 = load i32*, i32** %retval, align 8
  ret i32* %30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @countingSort(i32* %A, i32* %B, i32 %len, i32 %k) #0 {
entry:
  %A.addr = alloca i32*, align 8
  %B.addr = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i16 = alloca i32, align 4
  %i30 = alloca i32, align 4
  store i32* %A, i32** %A.addr, align 8
  store i32* %B, i32** %B.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  %0 = load i32, i32* %k.addr, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 16
  store i64 %1, i64* %__vla_expr0, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %k.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i1, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc13, %for.end
  %7 = load i32, i32* %i1, align 4
  %8 = load i32, i32* %len.addr, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %for.body4, label %for.end15

for.body4:                                        ; preds = %for.cond2
  %9 = load i32*, i32** %A.addr, align 8
  %10 = load i32, i32* %i1, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %idxprom5
  %11 = load i32, i32* %arrayidx6, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %vla, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %add = add nsw i32 %12, 1
  %13 = load i32*, i32** %A.addr, align 8
  %14 = load i32, i32* %i1, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %13, i64 %idxprom9
  %15 = load i32, i32* %arrayidx10, align 4
  %idxprom11 = sext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %vla, i64 %idxprom11
  store i32 %add, i32* %arrayidx12, align 4
  br label %for.inc13

for.inc13:                                        ; preds = %for.body4
  %16 = load i32, i32* %i1, align 4
  %inc14 = add nsw i32 %16, 1
  store i32 %inc14, i32* %i1, align 4
  br label %for.cond2, !llvm.loop !16

for.end15:                                        ; preds = %for.cond2
  store i32 1, i32* %i16, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc27, %for.end15
  %17 = load i32, i32* %i16, align 4
  %18 = load i32, i32* %k.addr, align 4
  %cmp18 = icmp slt i32 %17, %18
  br i1 %cmp18, label %for.body19, label %for.end29

for.body19:                                       ; preds = %for.cond17
  %19 = load i32, i32* %i16, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds i32, i32* %vla, i64 %idxprom20
  %20 = load i32, i32* %arrayidx21, align 4
  %21 = load i32, i32* %i16, align 4
  %sub = sub nsw i32 %21, 1
  %idxprom22 = sext i32 %sub to i64
  %arrayidx23 = getelementptr inbounds i32, i32* %vla, i64 %idxprom22
  %22 = load i32, i32* %arrayidx23, align 4
  %add24 = add nsw i32 %20, %22
  %23 = load i32, i32* %i16, align 4
  %idxprom25 = sext i32 %23 to i64
  %arrayidx26 = getelementptr inbounds i32, i32* %vla, i64 %idxprom25
  store i32 %add24, i32* %arrayidx26, align 4
  br label %for.inc27

for.inc27:                                        ; preds = %for.body19
  %24 = load i32, i32* %i16, align 4
  %inc28 = add nsw i32 %24, 1
  store i32 %inc28, i32* %i16, align 4
  br label %for.cond17, !llvm.loop !17

for.end29:                                        ; preds = %for.cond17
  %25 = load i32, i32* %len.addr, align 4
  %sub31 = sub nsw i32 %25, 1
  store i32 %sub31, i32* %i30, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc53, %for.end29
  %26 = load i32, i32* %i30, align 4
  %cmp33 = icmp sge i32 %26, 0
  br i1 %cmp33, label %for.body34, label %for.end54

for.body34:                                       ; preds = %for.cond32
  %27 = load i32*, i32** %A.addr, align 8
  %28 = load i32, i32* %i30, align 4
  %idxprom35 = sext i32 %28 to i64
  %arrayidx36 = getelementptr inbounds i32, i32* %27, i64 %idxprom35
  %29 = load i32, i32* %arrayidx36, align 4
  %30 = load i32*, i32** %B.addr, align 8
  %31 = load i32*, i32** %A.addr, align 8
  %32 = load i32, i32* %i30, align 4
  %idxprom37 = sext i32 %32 to i64
  %arrayidx38 = getelementptr inbounds i32, i32* %31, i64 %idxprom37
  %33 = load i32, i32* %arrayidx38, align 4
  %idxprom39 = sext i32 %33 to i64
  %arrayidx40 = getelementptr inbounds i32, i32* %vla, i64 %idxprom39
  %34 = load i32, i32* %arrayidx40, align 4
  %sub41 = sub nsw i32 %34, 1
  %idxprom42 = sext i32 %sub41 to i64
  %arrayidx43 = getelementptr inbounds i32, i32* %30, i64 %idxprom42
  store i32 %29, i32* %arrayidx43, align 4
  %35 = load i32*, i32** %A.addr, align 8
  %36 = load i32, i32* %i30, align 4
  %idxprom44 = sext i32 %36 to i64
  %arrayidx45 = getelementptr inbounds i32, i32* %35, i64 %idxprom44
  %37 = load i32, i32* %arrayidx45, align 4
  %idxprom46 = sext i32 %37 to i64
  %arrayidx47 = getelementptr inbounds i32, i32* %vla, i64 %idxprom46
  %38 = load i32, i32* %arrayidx47, align 4
  %sub48 = sub nsw i32 %38, 1
  %39 = load i32*, i32** %A.addr, align 8
  %40 = load i32, i32* %i30, align 4
  %idxprom49 = sext i32 %40 to i64
  %arrayidx50 = getelementptr inbounds i32, i32* %39, i64 %idxprom49
  %41 = load i32, i32* %arrayidx50, align 4
  %idxprom51 = sext i32 %41 to i64
  %arrayidx52 = getelementptr inbounds i32, i32* %vla, i64 %idxprom51
  store i32 %sub48, i32* %arrayidx52, align 4
  br label %for.inc53

for.inc53:                                        ; preds = %for.body34
  %42 = load i32, i32* %i30, align 4
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %i30, align 4
  br label %for.cond32, !llvm.loop !18

for.end54:                                        ; preds = %for.cond32
  %43 = load i32*, i32** %B.addr, align 8
  %44 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %44)
  ret i32* %43
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %A1 = alloca [6 x i32], align 16
  %A2 = alloca [6 x i32], align 16
  %A3 = alloca [6 x i32], align 16
  %A4 = alloca [6 x i32], align 16
  %A5 = alloca [6 x i32], align 16
  %B = alloca [6 x i32], align 16
  %0 = bitcast [6 x i32]* %A1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([6 x i32]* @__const.main.A1 to i8*), i64 24, i1 false)
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %A1, i64 0, i64 0
  %call = call i32* @insertionSort(i32* %arraydecay, i32 6)
  call void @printArray(i32* %call, i32 6)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %1 = bitcast [6 x i32]* %A2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([6 x i32]* @__const.main.A2 to i8*), i64 24, i1 false)
  %arraydecay2 = getelementptr inbounds [6 x i32], [6 x i32]* %A2, i64 0, i64 0
  %call3 = call i32* @mergeSort(i32* %arraydecay2, i32 0, i32 5)
  call void @printArray(i32* %call3, i32 6)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %2 = bitcast [6 x i32]* %A3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 bitcast ([6 x i32]* @__const.main.A3 to i8*), i64 24, i1 false)
  %arraydecay5 = getelementptr inbounds [6 x i32], [6 x i32]* %A3, i64 0, i64 0
  %call6 = call i32* @heapSort(i32* %arraydecay5, i32 6)
  call void @printArray(i32* %call6, i32 6)
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %3 = bitcast [6 x i32]* %A4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([6 x i32]* @__const.main.A4 to i8*), i64 24, i1 false)
  %arraydecay8 = getelementptr inbounds [6 x i32], [6 x i32]* %A4, i64 0, i64 0
  %call9 = call i32* @quickSort(i32* %arraydecay8, i32 0, i32 5)
  call void @printArray(i32* %call9, i32 6)
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %4 = bitcast [6 x i32]* %A5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([6 x i32]* @__const.main.A5 to i8*), i64 24, i1 false)
  %arraydecay11 = getelementptr inbounds [6 x i32], [6 x i32]* %A5, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [6 x i32], [6 x i32]* %B, i64 0, i64 0
  %call13 = call i32* @countingSort(i32* %arraydecay11, i32* %arraydecay12, i32 6, i32 11)
  call void @printArray(i32* %call13, i32 6)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }

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
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
