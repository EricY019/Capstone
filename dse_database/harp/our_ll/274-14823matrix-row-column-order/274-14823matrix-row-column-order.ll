; ModuleID = 'code/274-14823matrix-row-column-order.c'
source_filename = "code/274-14823matrix-row-column-order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%zux%zu took %zu cycles\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"#%d %zux%zu mismatch\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"%zux%zu transpose mismatch\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"# Test Cycle\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"# Test Transpose\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"# Test Square Transpose\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cons(i64 %r, i64 %c, i32* %M, i32 %v) #0 {
entry:
  %r.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %M.addr = alloca i32*, align 8
  %v.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store i64 %r, i64* %r.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  store i32* %M, i32** %M.addr, align 8
  store i32 %v, i32* %v.addr, align 4
  %0 = load i64, i64* %r.addr, align 8
  %1 = load i64, i64* %c.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %r.addr, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %j, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i64, i64* %j, align 8
  %5 = load i64, i64* %c.addr, align 8
  %cmp2 = icmp ult i64 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, i32* %v.addr, align 4
  %7 = load i32*, i32** %M.addr, align 8
  %8 = load i64, i64* %i, align 8
  %9 = mul nsw i64 %8, %1
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %9
  %10 = load i64, i64* %j, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %arrayidx, i64 %10
  store i32 %6, i32* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %11 = load i64, i64* %j, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %12 = load i64, i64* %i, align 8
  %inc6 = add i64 %12, 1
  store i64 %inc6, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end7:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mulsq(i64 %n, i32* %A, i32* %B, i32* %C) #0 {
entry:
  %n.addr = alloca i64, align 8
  %A.addr = alloca i32*, align 8
  %B.addr = alloca i32*, align 8
  %C.addr = alloca i32*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  store i32* %A, i32** %A.addr, align 8
  store i32* %B, i32** %B.addr, align 8
  store i32* %C, i32** %C.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %1 = load i64, i64* %n.addr, align 8
  %2 = load i64, i64* %n.addr, align 8
  %3 = load i64, i64* %n.addr, align 8
  %4 = load i64, i64* %n.addr, align 8
  %5 = load i64, i64* %n.addr, align 8
  %6 = load i64, i64* %n.addr, align 8
  %7 = load i64, i64* %n.addr, align 8
  %8 = load i32*, i32** %C.addr, align 8
  call void @cons(i64 %6, i64 %7, i32* %8, i32 0)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %9 = load i64, i64* %i, align 8
  %10 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %9, %10
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %j, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %11 = load i64, i64* %j, align 8
  %12 = load i64, i64* %n.addr, align 8
  %cmp2 = icmp ult i64 %11, %12
  br i1 %cmp2, label %for.body3, label %for.end14

for.body3:                                        ; preds = %for.cond1
  store i64 0, i64* %k, align 8
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %13 = load i64, i64* %k, align 8
  %14 = load i64, i64* %n.addr, align 8
  %cmp5 = icmp ult i64 %13, %14
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %15 = load i32*, i32** %A.addr, align 8
  %16 = load i64, i64* %i, align 8
  %17 = mul nsw i64 %16, %1
  %arrayidx = getelementptr inbounds i32, i32* %15, i64 %17
  %18 = load i64, i64* %k, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %arrayidx, i64 %18
  %19 = load i32, i32* %arrayidx7, align 4
  %20 = load i32*, i32** %B.addr, align 8
  %21 = load i64, i64* %k, align 8
  %22 = mul nsw i64 %21, %3
  %arrayidx8 = getelementptr inbounds i32, i32* %20, i64 %22
  %23 = load i64, i64* %j, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %arrayidx8, i64 %23
  %24 = load i32, i32* %arrayidx9, align 4
  %mul = mul nsw i32 %19, %24
  %25 = load i32*, i32** %C.addr, align 8
  %26 = load i64, i64* %i, align 8
  %27 = mul nsw i64 %26, %5
  %arrayidx10 = getelementptr inbounds i32, i32* %25, i64 %27
  %28 = load i64, i64* %j, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %arrayidx10, i64 %28
  %29 = load i32, i32* %arrayidx11, align 4
  %add = add nsw i32 %29, %mul
  store i32 %add, i32* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %30 = load i64, i64* %k, align 8
  %inc = add i64 %30, 1
  store i64 %inc, i64* %k, align 8
  br label %for.cond4, !llvm.loop !7

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %31 = load i64, i64* %j, align 8
  %inc13 = add i64 %31, 1
  store i64 %inc13, i64* %j, align 8
  br label %for.cond1, !llvm.loop !8

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %32 = load i64, i64* %i, align 8
  %inc16 = add i64 %32, 1
  store i64 %inc16, i64* %i, align 8
  br label %for.cond, !llvm.loop !9

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill(i64 %r, i64 %c, i32* %M) #0 {
entry:
  %r.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %M.addr = alloca i32*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store i64 %r, i64* %r.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  store i32* %M, i32** %M.addr, align 8
  %0 = load i64, i64* %r.addr, align 8
  %1 = load i64, i64* %c.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %r.addr, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %j, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i64, i64* %j, align 8
  %5 = load i64, i64* %c.addr, align 8
  %cmp2 = icmp ult i64 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %r.addr, align 8
  %mul = mul i64 %6, %7
  %8 = load i64, i64* %j, align 8
  %add = add i64 %mul, %8
  %conv = trunc i64 %add to i32
  %9 = load i32*, i32** %M.addr, align 8
  %10 = load i64, i64* %i, align 8
  %11 = mul nsw i64 %10, %1
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %11
  %12 = load i64, i64* %j, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %arrayidx, i64 %12
  store i32 %conv, i32* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %13 = load i64, i64* %j, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond1, !llvm.loop !10

for.end:                                          ; preds = %for.cond1
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %14 = load i64, i64* %i, align 8
  %inc6 = add i64 %14, 1
  store i64 %inc6, i64* %i, align 8
  br label %for.cond, !llvm.loop !11

for.end7:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rands(i64 %r, i64 %c, i32* %M) #0 {
entry:
  %r.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %M.addr = alloca i32*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store i64 %r, i64* %r.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  store i32* %M, i32** %M.addr, align 8
  %0 = load i64, i64* %r.addr, align 8
  %1 = load i64, i64* %c.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %r.addr, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %j, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i64, i64* %j, align 8
  %5 = load i64, i64* %c.addr, align 8
  %cmp2 = icmp ult i64 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %call = call i32 @rand() #6
  %rem = srem i32 %call, 100
  %6 = load i32*, i32** %M.addr, align 8
  %7 = load i64, i64* %i, align 8
  %8 = mul nsw i64 %7, %1
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %8
  %9 = load i64, i64* %j, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %arrayidx, i64 %9
  store i32 %rem, i32* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %10 = load i64, i64* %j, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond1, !llvm.loop !12

for.end:                                          ; preds = %for.cond1
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %11 = load i64, i64* %i, align 8
  %inc6 = add i64 %11, 1
  store i64 %inc6, i64* %i, align 8
  br label %for.cond, !llvm.loop !13

for.end7:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transpose(i64 %r, i64 %c, i32* %M, i32* %N) #0 {
entry:
  %r.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %M.addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store i64 %r, i64* %r.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  store i32* %M, i32** %M.addr, align 8
  store i32* %N, i32** %N.addr, align 8
  %0 = load i64, i64* %r.addr, align 8
  %1 = load i64, i64* %c.addr, align 8
  %2 = load i64, i64* %c.addr, align 8
  %3 = load i64, i64* %r.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %r.addr, align 8
  %cmp = icmp ult i64 %4, %5
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %j, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %6 = load i64, i64* %j, align 8
  %7 = load i64, i64* %c.addr, align 8
  %cmp2 = icmp ult i64 %6, %7
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %8 = load i32*, i32** %M.addr, align 8
  %9 = load i64, i64* %i, align 8
  %10 = mul nsw i64 %9, %1
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %10
  %11 = load i64, i64* %j, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %arrayidx, i64 %11
  %12 = load i32, i32* %arrayidx4, align 4
  %13 = load i32*, i32** %N.addr, align 8
  %14 = load i64, i64* %j, align 8
  %15 = mul nsw i64 %14, %3
  %arrayidx5 = getelementptr inbounds i32, i32* %13, i64 %15
  %16 = load i64, i64* %i, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %arrayidx5, i64 %16
  store i32 %12, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %17 = load i64, i64* %j, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond1, !llvm.loop !14

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %18 = load i64, i64* %i, align 8
  %inc8 = add i64 %18, 1
  store i64 %inc8, i64* %i, align 8
  br label %for.cond, !llvm.loop !15

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @row2col(i64 %r, i64 %c, i32* %M, i32* %N) #0 {
entry:
  %r.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %M.addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %p = alloca i32*, align 8
  store i64 %r, i64* %r.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  store i32* %M, i32** %M.addr, align 8
  store i32* %N, i32** %N.addr, align 8
  %0 = load i64, i64* %r.addr, align 8
  %1 = load i64, i64* %c.addr, align 8
  %2 = load i64, i64* %r.addr, align 8
  %3 = load i64, i64* %c.addr, align 8
  %4 = load i32*, i32** %N.addr, align 8
  %5 = mul nsw i64 0, %3
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %5
  %arrayidx1 = getelementptr inbounds i32, i32* %arrayidx, i64 0
  store i32* %arrayidx1, i32** %p, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %c.addr, align 8
  %cmp = icmp ult i64 %6, %7
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %j, align 8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %8 = load i64, i64* %j, align 8
  %9 = load i64, i64* %r.addr, align 8
  %cmp3 = icmp ult i64 %8, %9
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %10 = load i32*, i32** %M.addr, align 8
  %11 = load i64, i64* %j, align 8
  %12 = mul nsw i64 %11, %1
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 %12
  %13 = load i64, i64* %i, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %arrayidx5, i64 %13
  %14 = load i32, i32* %arrayidx6, align 4
  %15 = load i32*, i32** %p, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %incdec.ptr, i32** %p, align 8
  store i32 %14, i32* %15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %16 = load i64, i64* %j, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond2, !llvm.loop !16

for.end:                                          ; preds = %for.cond2
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i64, i64* %i, align 8
  %inc8 = add i64 %17, 1
  store i64 %inc8, i64* %i, align 8
  br label %for.cond, !llvm.loop !17

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump(i64 %r, i64 %c, i32* %M) #0 {
entry:
  %r.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %M.addr = alloca i32*, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store i64 %r, i64* %r.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  store i32* %M, i32** %M.addr, align 8
  %0 = load i64, i64* %r.addr, align 8
  %1 = load i64, i64* %c.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %r.addr, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %j, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i64, i64* %j, align 8
  %5 = load i64, i64* %c.addr, align 8
  %cmp2 = icmp ult i64 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i32*, i32** %M.addr, align 8
  %7 = load i64, i64* %i, align 8
  %8 = mul nsw i64 %7, %1
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %8
  %9 = load i64, i64* %j, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %arrayidx, i64 %9
  %10 = load i32, i32* %arrayidx4, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %11 = load i64, i64* %j, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond1, !llvm.loop !18

for.end:                                          ; preds = %for.cond1
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %12 = load i64, i64* %i, align 8
  %inc7 = add i64 %12, 1
  store i64 %inc7, i64* %i, align 8
  br label %for.cond, !llvm.loop !19

for.end8:                                         ; preds = %for.cond
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_raw(i8* %b, i64 %n) #0 {
entry:
  %b.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %p = alloca i32*, align 8
  store i8* %b, i8** %b.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i8*, i8** %b.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %p, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %p, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %5
  %6 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6)
  %7 = load i64, i64* %i, align 8
  %and = and i64 %7, 15
  %cmp1 = icmp eq i64 %and, 15
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i64, i64* %i, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_cycle(i64 %r, i64 %c) #0 {
entry:
  %r.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %__vla_expr2 = alloca i64, align 8
  %__vla_expr3 = alloca i64, align 8
  %__vla_expr4 = alloca i64, align 8
  %__vla_expr5 = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %r, i64* %r.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %r.addr, align 8
  %1 = load i64, i64* %c.addr, align 8
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack, align 8
  %3 = mul nuw i64 %0, %1
  %vla = alloca i32, i64 %3, align 16
  store i64 %0, i64* %__vla_expr0, align 8
  store i64 %1, i64* %__vla_expr1, align 8
  %4 = load i64, i64* %r.addr, align 8
  %5 = load i64, i64* %c.addr, align 8
  %6 = mul nuw i64 %4, %5
  %vla1 = alloca i32, i64 %6, align 16
  store i64 %4, i64* %__vla_expr2, align 8
  store i64 %5, i64* %__vla_expr3, align 8
  %7 = load i64, i64* %r.addr, align 8
  %8 = load i64, i64* %c.addr, align 8
  %9 = mul nuw i64 %7, %8
  %vla2 = alloca i32, i64 %9, align 16
  store i64 %7, i64* %__vla_expr4, align 8
  store i64 %8, i64* %__vla_expr5, align 8
  %10 = load i64, i64* %r.addr, align 8
  %11 = load i64, i64* %c.addr, align 8
  call void @fill(i64 %10, i64 %11, i32* %vla)
  %12 = bitcast i32* %vla1 to i8*
  %13 = bitcast i32* %vla to i8*
  %14 = mul nuw i64 %0, %1
  %15 = mul nuw i64 4, %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 %13, i64 %15, i1 false)
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %16 = load i64, i64* %r.addr, align 8
  %17 = load i64, i64* %c.addr, align 8
  call void @row2col(i64 %16, i64 %17, i32* %vla1, i32* %vla2)
  %18 = bitcast i32* %vla1 to i8*
  %19 = bitcast i32* %vla2 to i8*
  %20 = mul nuw i64 %7, %8
  %21 = mul nuw i64 4, %20
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 %19, i64 %21, i1 false)
  %22 = bitcast i32* %vla to i8*
  %23 = bitcast i32* %vla1 to i8*
  %24 = mul nuw i64 %4, %5
  %25 = mul nuw i64 4, %24
  %call = call i32 @memcmp(i8* %22, i8* %23, i64 %25) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load i64, i64* %i, align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then
  %27 = load i64, i64* %r.addr, align 8
  %28 = load i64, i64* %c.addr, align 8
  %29 = load i64, i64* %i, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %27, i64 %28, i64 %29)
  %30 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %30)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_transpose(i64 %r, i64 %c, i32 %n) #0 {
entry:
  %r.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %n.addr = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %__vla_expr2 = alloca i64, align 8
  %__vla_expr3 = alloca i64, align 8
  %__vla_expr4 = alloca i64, align 8
  %__vla_expr5 = alloca i64, align 8
  %__vla_expr6 = alloca i64, align 8
  %__vla_expr7 = alloca i64, align 8
  %__vla_expr8 = alloca i64, align 8
  %__vla_expr9 = alloca i64, align 8
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %r, i64* %r.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i64, i64* %r.addr, align 8
  %1 = load i64, i64* %c.addr, align 8
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack, align 8
  %3 = mul nuw i64 %0, %1
  %vla = alloca i32, i64 %3, align 16
  store i64 %0, i64* %__vla_expr0, align 8
  store i64 %1, i64* %__vla_expr1, align 8
  %4 = load i64, i64* %r.addr, align 8
  %5 = load i64, i64* %c.addr, align 8
  %6 = mul nuw i64 %4, %5
  %vla1 = alloca i32, i64 %6, align 16
  store i64 %4, i64* %__vla_expr2, align 8
  store i64 %5, i64* %__vla_expr3, align 8
  %7 = load i64, i64* %r.addr, align 8
  %8 = load i64, i64* %c.addr, align 8
  %9 = mul nuw i64 %7, %8
  %vla2 = alloca i32, i64 %9, align 16
  store i64 %7, i64* %__vla_expr4, align 8
  store i64 %8, i64* %__vla_expr5, align 8
  %10 = load i64, i64* %r.addr, align 8
  %11 = load i64, i64* %c.addr, align 8
  %12 = mul nuw i64 %10, %11
  %vla3 = alloca i32, i64 %12, align 16
  store i64 %10, i64* %__vla_expr6, align 8
  store i64 %11, i64* %__vla_expr7, align 8
  %13 = load i64, i64* %c.addr, align 8
  %14 = load i64, i64* %r.addr, align 8
  %15 = mul nuw i64 %13, %14
  %vla4 = alloca i32, i64 %15, align 16
  store i64 %13, i64* %__vla_expr8, align 8
  store i64 %14, i64* %__vla_expr9, align 8
  %16 = load i64, i64* %r.addr, align 8
  %cmp = icmp eq i64 %16, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %17 = load i64, i64* %c.addr, align 8
  %cmp5 = icmp eq i64 %17, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %18 = load i64, i64* %r.addr, align 8
  %19 = load i64, i64* %c.addr, align 8
  call void @fill(i64 %18, i64 %19, i32* %vla)
  %20 = bitcast i32* %vla1 to i8*
  %21 = bitcast i32* %vla to i8*
  %22 = mul nuw i64 %0, %1
  %23 = mul nuw i64 4, %22
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 %21, i64 %23, i1 false)
  %24 = bitcast i32* %vla3 to i8*
  %25 = bitcast i32* %vla to i8*
  %26 = mul nuw i64 %0, %1
  %27 = mul nuw i64 4, %26
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %24, i8* align 16 %25, i64 %27, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %n.addr, align 4
  %cmp6 = icmp slt i32 %28, %29
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i64, i64* %r.addr, align 8
  %31 = load i64, i64* %c.addr, align 8
  call void @row2col(i64 %30, i64 %31, i32* %vla1, i32* %vla2)
  %32 = load i32, i32* %i, align 4
  %and = and i32 %32, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then7

if.then7:                                         ; preds = %for.body
  %33 = load i64, i64* %r.addr, align 8
  %34 = load i64, i64* %c.addr, align 8
  call void @transpose(i64 %33, i64 %34, i32* %vla3, i32* %vla4)
  %35 = bitcast i32* %vla2 to i8*
  %36 = bitcast i32* %vla4 to i8*
  %37 = mul nuw i64 %13, %14
  %38 = mul nuw i64 4, %37
  %call = call i32 @memcmp(i8* %35, i8* %36, i64 %38) #7
  store i32 %call, i32* %m, align 4
  br label %if.end9

if.else:                                          ; preds = %for.body
  %39 = load i64, i64* %c.addr, align 8
  %40 = load i64, i64* %r.addr, align 8
  call void @transpose(i64 %39, i64 %40, i32* %vla4, i32* %vla3)
  %41 = bitcast i32* %vla2 to i8*
  %42 = bitcast i32* %vla3 to i8*
  %43 = mul nuw i64 %10, %11
  %44 = mul nuw i64 4, %43
  %call8 = call i32 @memcmp(i8* %41, i8* %42, i64 %44) #7
  store i32 %call8, i32* %m, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  %45 = bitcast i32* %vla1 to i8*
  %46 = bitcast i32* %vla2 to i8*
  %47 = mul nuw i64 %7, %8
  %48 = mul nuw i64 4, %47
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %45, i8* align 16 %46, i64 %48, i1 false)
  %49 = load i32, i32* %m, align 4
  %tobool10 = icmp ne i32 %49, 0
  br i1 %tobool10, label %if.then11, label %if.end18

if.then11:                                        ; preds = %if.end9
  %50 = load i32, i32* %i, align 4
  %51 = load i64, i64* %r.addr, align 8
  %52 = load i64, i64* %c.addr, align 8
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %50, i64 %51, i64 %52)
  %53 = load i64, i64* %r.addr, align 8
  %54 = load i64, i64* %c.addr, align 8
  call void @dump(i64 %53, i64 %54, i32* %vla2)
  %55 = load i32, i32* %i, align 4
  %and13 = and i32 %55, 1
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.else16, label %if.then15

if.then15:                                        ; preds = %if.then11
  %56 = load i64, i64* %c.addr, align 8
  %57 = load i64, i64* %r.addr, align 8
  call void @dump(i64 %56, i64 %57, i32* %vla4)
  br label %if.end17

if.else16:                                        ; preds = %if.then11
  %58 = load i64, i64* %r.addr, align 8
  %59 = load i64, i64* %c.addr, align 8
  call void @dump(i64 %58, i64 %59, i32* %vla3)
  br label %if.end17

if.end17:                                         ; preds = %if.else16, %if.then15
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end9
  br label %for.inc

for.inc:                                          ; preds = %if.end18
  %60 = load i32, i32* %i, align 4
  %inc = add nsw i32 %60, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %61 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %61)
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_square_transpose(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %__vla_expr2 = alloca i64, align 8
  %__vla_expr3 = alloca i64, align 8
  %__vla_expr4 = alloca i64, align 8
  %__vla_expr5 = alloca i64, align 8
  %__vla_expr6 = alloca i64, align 8
  %__vla_expr7 = alloca i64, align 8
  %__vla_expr8 = alloca i64, align 8
  %__vla_expr9 = alloca i64, align 8
  %__vla_expr10 = alloca i64, align 8
  %__vla_expr11 = alloca i64, align 8
  %__vla_expr12 = alloca i64, align 8
  %__vla_expr13 = alloca i64, align 8
  %__vla_expr14 = alloca i64, align 8
  %__vla_expr15 = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %1 = load i64, i64* %n.addr, align 8
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack, align 8
  %3 = mul nuw i64 %0, %1
  %vla = alloca i32, i64 %3, align 16
  store i64 %0, i64* %__vla_expr0, align 8
  store i64 %1, i64* %__vla_expr1, align 8
  %4 = load i64, i64* %n.addr, align 8
  %5 = load i64, i64* %n.addr, align 8
  %6 = mul nuw i64 %4, %5
  %vla1 = alloca i32, i64 %6, align 16
  store i64 %4, i64* %__vla_expr2, align 8
  store i64 %5, i64* %__vla_expr3, align 8
  %7 = load i64, i64* %n.addr, align 8
  %8 = load i64, i64* %n.addr, align 8
  %9 = mul nuw i64 %7, %8
  %vla2 = alloca i32, i64 %9, align 16
  store i64 %7, i64* %__vla_expr4, align 8
  store i64 %8, i64* %__vla_expr5, align 8
  %10 = load i64, i64* %n.addr, align 8
  %11 = load i64, i64* %n.addr, align 8
  %12 = mul nuw i64 %10, %11
  %vla3 = alloca i32, i64 %12, align 16
  store i64 %10, i64* %__vla_expr6, align 8
  store i64 %11, i64* %__vla_expr7, align 8
  %13 = load i64, i64* %n.addr, align 8
  %14 = load i64, i64* %n.addr, align 8
  %15 = mul nuw i64 %13, %14
  %vla4 = alloca i32, i64 %15, align 16
  store i64 %13, i64* %__vla_expr8, align 8
  store i64 %14, i64* %__vla_expr9, align 8
  %16 = load i64, i64* %n.addr, align 8
  %17 = load i64, i64* %n.addr, align 8
  %18 = mul nuw i64 %16, %17
  %vla5 = alloca i32, i64 %18, align 16
  store i64 %16, i64* %__vla_expr10, align 8
  store i64 %17, i64* %__vla_expr11, align 8
  %19 = load i64, i64* %n.addr, align 8
  %20 = load i64, i64* %n.addr, align 8
  %21 = mul nuw i64 %19, %20
  %vla6 = alloca i32, i64 %21, align 16
  store i64 %19, i64* %__vla_expr12, align 8
  store i64 %20, i64* %__vla_expr13, align 8
  %22 = load i64, i64* %n.addr, align 8
  %23 = load i64, i64* %n.addr, align 8
  %24 = mul nuw i64 %22, %23
  %vla7 = alloca i32, i64 %24, align 16
  store i64 %22, i64* %__vla_expr14, align 8
  store i64 %23, i64* %__vla_expr15, align 8
  %25 = load i64, i64* %n.addr, align 8
  %26 = load i64, i64* %n.addr, align 8
  call void @rands(i64 %25, i64 %26, i32* %vla)
  %27 = load i64, i64* %n.addr, align 8
  %28 = load i64, i64* %n.addr, align 8
  call void @rands(i64 %27, i64 %28, i32* %vla1)
  %29 = load i64, i64* %n.addr, align 8
  call void @mulsq(i64 %29, i32* %vla, i32* %vla1, i32* %vla2)
  %30 = load i64, i64* %n.addr, align 8
  %31 = load i64, i64* %n.addr, align 8
  call void @transpose(i64 %30, i64 %31, i32* %vla2, i32* %vla3)
  %32 = load i64, i64* %n.addr, align 8
  %33 = load i64, i64* %n.addr, align 8
  call void @transpose(i64 %32, i64 %33, i32* %vla1, i32* %vla4)
  %34 = load i64, i64* %n.addr, align 8
  %35 = load i64, i64* %n.addr, align 8
  call void @transpose(i64 %34, i64 %35, i32* %vla, i32* %vla5)
  %36 = load i64, i64* %n.addr, align 8
  call void @mulsq(i64 %36, i32* %vla4, i32* %vla5, i32* %vla6)
  %37 = load i64, i64* %n.addr, align 8
  call void @mulsq(i64 %37, i32* %vla, i32* %vla1, i32* %vla2)
  %38 = load i64, i64* %n.addr, align 8
  %39 = load i64, i64* %n.addr, align 8
  call void @row2col(i64 %38, i64 %39, i32* %vla2, i32* %vla3)
  %40 = load i64, i64* %n.addr, align 8
  %41 = load i64, i64* %n.addr, align 8
  call void @row2col(i64 %40, i64 %41, i32* %vla1, i32* %vla4)
  %42 = load i64, i64* %n.addr, align 8
  %43 = load i64, i64* %n.addr, align 8
  call void @row2col(i64 %42, i64 %43, i32* %vla, i32* %vla5)
  %44 = load i64, i64* %n.addr, align 8
  call void @mulsq(i64 %44, i32* %vla4, i32* %vla5, i32* %vla7)
  %45 = bitcast i32* %vla7 to i8*
  %46 = bitcast i32* %vla6 to i8*
  %47 = mul nuw i64 %19, %20
  %48 = mul nuw i64 4, %47
  %call = call i32 @memcmp(i8* %45, i8* %46, i64 %48) #7
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %49 = load i64, i64* %n.addr, align 8
  %50 = load i64, i64* %n.addr, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %49, i64 %50)
  %51 = load i64, i64* %n.addr, align 8
  %52 = load i64, i64* %n.addr, align 8
  call void @dump(i64 %51, i64 %52, i32* %vla6)
  %53 = load i64, i64* %n.addr, align 8
  %54 = load i64, i64* %n.addr, align 8
  call void @dump(i64 %53, i64 %54, i32* %vla7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %55 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %55)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i64 @time(i64* null) #6
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #6
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %conv3 = sext i32 %1 to i64
  %2 = load i32, i32* %i, align 4
  %conv4 = sext i32 %2 to i64
  call void @test_cycle(i64 %conv3, i64 %conv4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  call void @test_cycle(i64 2, i64 3)
  call void @test_cycle(i64 4, i64 39)
  call void @test_cycle(i64 54, i64 100)
  call void @test_cycle(i64 320, i64 30)
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc20, %for.end
  %4 = load i32, i32* %i, align 4
  %cmp8 = icmp sle i32 %4, 4
  br i1 %cmp8, label %for.body10, label %for.end22

for.body10:                                       ; preds = %for.cond7
  store i32 0, i32* %j, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc17, %for.body10
  %5 = load i32, i32* %j, align 4
  %cmp12 = icmp sle i32 %5, 4
  br i1 %cmp12, label %for.body14, label %for.end19

for.body14:                                       ; preds = %for.cond11
  %6 = load i32, i32* %i, align 4
  %conv15 = sext i32 %6 to i64
  %7 = load i32, i32* %j, align 4
  %conv16 = sext i32 %7 to i64
  call void @test_transpose(i64 %conv15, i64 %conv16, i32 5)
  br label %for.inc17

for.inc17:                                        ; preds = %for.body14
  %8 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %8, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond11, !llvm.loop !23

for.end19:                                        ; preds = %for.cond11
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %9 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %9, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond7, !llvm.loop !24

for.end22:                                        ; preds = %for.cond7
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %i, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc29, %for.end22
  %10 = load i32, i32* %i, align 4
  %cmp25 = icmp sle i32 %10, 100
  br i1 %cmp25, label %for.body27, label %for.end31

for.body27:                                       ; preds = %for.cond24
  %11 = load i32, i32* %i, align 4
  %conv28 = sext i32 %11 to i64
  call void @test_square_transpose(i64 %conv28)
  br label %for.inc29

for.inc29:                                        ; preds = %for.body27
  %12 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %12, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond24, !llvm.loop !25

for.end31:                                        ; preds = %for.cond24
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

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
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
