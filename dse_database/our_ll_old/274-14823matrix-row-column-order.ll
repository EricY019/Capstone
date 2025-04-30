; ModuleID = './code/274-14823matrix-row-column-order.c'
source_filename = "./code/274-14823matrix-row-column-order.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%zux%zu took %zu cycles\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"#%d %zux%zu mismatch\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"%zux%zu transpose mismatch\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"# Test Cycle\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"# Test Transpose\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"# Test Square Transpose\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @cons(i64 noundef %r, i64 noundef %c, ptr noundef %M, i32 noundef %v) #0 {
entry:
  %r.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %M.addr = alloca ptr, align 8
  %v.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store i64 %r, ptr %r.addr, align 8
  store i64 %c, ptr %c.addr, align 8
  store ptr %M, ptr %M.addr, align 8
  store i32 %v, ptr %v.addr, align 4
  %0 = load i64, ptr %r.addr, align 8
  %1 = load i64, ptr %c.addr, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  %2 = load i64, ptr %i, align 8
  %3 = load i64, ptr %r.addr, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %j, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i64, ptr %j, align 8
  %5 = load i64, ptr %c.addr, align 8
  %cmp2 = icmp ult i64 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, ptr %v.addr, align 4
  %7 = load ptr, ptr %M.addr, align 8
  %8 = load i64, ptr %i, align 8
  %9 = mul nsw i64 %8, %1
  %arrayidx = getelementptr inbounds i32, ptr %7, i64 %9
  %10 = load i64, ptr %j, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %arrayidx, i64 %10
  store i32 %6, ptr %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %11 = load i64, ptr %j, align 8
  %inc = add i64 %11, 1
  store i64 %inc, ptr %j, align 8
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %12 = load i64, ptr %i, align 8
  %inc6 = add i64 %12, 1
  store i64 %inc6, ptr %i, align 8
  br label %for.cond, !llvm.loop !7

for.end7:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @mulsq(i64 noundef %n, ptr noundef %A, ptr noundef %B, ptr noundef %C) #0 {
entry:
  %n.addr = alloca i64, align 8
  %A.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %C.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %A, ptr %A.addr, align 8
  store ptr %B, ptr %B.addr, align 8
  store ptr %C, ptr %C.addr, align 8
  %0 = load i64, ptr %n.addr, align 8
  %1 = load i64, ptr %n.addr, align 8
  %2 = load i64, ptr %n.addr, align 8
  %3 = load i64, ptr %n.addr, align 8
  %4 = load i64, ptr %n.addr, align 8
  %5 = load i64, ptr %n.addr, align 8
  %6 = load i64, ptr %n.addr, align 8
  %7 = load i64, ptr %n.addr, align 8
  %8 = load ptr, ptr %C.addr, align 8
  call void @cons(i64 noundef %6, i64 noundef %7, ptr noundef %8, i32 noundef 0)
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %9 = load i64, ptr %i, align 8
  %10 = load i64, ptr %n.addr, align 8
  %cmp = icmp ult i64 %9, %10
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %j, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %11 = load i64, ptr %j, align 8
  %12 = load i64, ptr %n.addr, align 8
  %cmp2 = icmp ult i64 %11, %12
  br i1 %cmp2, label %for.body3, label %for.end14

for.body3:                                        ; preds = %for.cond1
  store i64 0, ptr %k, align 8
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %13 = load i64, ptr %k, align 8
  %14 = load i64, ptr %n.addr, align 8
  %cmp5 = icmp ult i64 %13, %14
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %15 = load ptr, ptr %A.addr, align 8
  %16 = load i64, ptr %i, align 8
  %17 = mul nsw i64 %16, %1
  %arrayidx = getelementptr inbounds i32, ptr %15, i64 %17
  %18 = load i64, ptr %k, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %arrayidx, i64 %18
  %19 = load i32, ptr %arrayidx7, align 4
  %20 = load ptr, ptr %B.addr, align 8
  %21 = load i64, ptr %k, align 8
  %22 = mul nsw i64 %21, %3
  %arrayidx8 = getelementptr inbounds i32, ptr %20, i64 %22
  %23 = load i64, ptr %j, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %arrayidx8, i64 %23
  %24 = load i32, ptr %arrayidx9, align 4
  %mul = mul nsw i32 %19, %24
  %25 = load ptr, ptr %C.addr, align 8
  %26 = load i64, ptr %i, align 8
  %27 = mul nsw i64 %26, %5
  %arrayidx10 = getelementptr inbounds i32, ptr %25, i64 %27
  %28 = load i64, ptr %j, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %arrayidx10, i64 %28
  %29 = load i32, ptr %arrayidx11, align 4
  %add = add nsw i32 %29, %mul
  store i32 %add, ptr %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %30 = load i64, ptr %k, align 8
  %inc = add i64 %30, 1
  store i64 %inc, ptr %k, align 8
  br label %for.cond4, !llvm.loop !8

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %31 = load i64, ptr %j, align 8
  %inc13 = add i64 %31, 1
  store i64 %inc13, ptr %j, align 8
  br label %for.cond1, !llvm.loop !9

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %32 = load i64, ptr %i, align 8
  %inc16 = add i64 %32, 1
  store i64 %inc16, ptr %i, align 8
  br label %for.cond, !llvm.loop !10

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @fill(i64 noundef %r, i64 noundef %c, ptr noundef %M) #0 {
entry:
  %r.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %M.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store i64 %r, ptr %r.addr, align 8
  store i64 %c, ptr %c.addr, align 8
  store ptr %M, ptr %M.addr, align 8
  %0 = load i64, ptr %r.addr, align 8
  %1 = load i64, ptr %c.addr, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  %2 = load i64, ptr %i, align 8
  %3 = load i64, ptr %r.addr, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %j, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i64, ptr %j, align 8
  %5 = load i64, ptr %c.addr, align 8
  %cmp2 = icmp ult i64 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i64, ptr %i, align 8
  %7 = load i64, ptr %r.addr, align 8
  %mul = mul i64 %6, %7
  %8 = load i64, ptr %j, align 8
  %add = add i64 %mul, %8
  %conv = trunc i64 %add to i32
  %9 = load ptr, ptr %M.addr, align 8
  %10 = load i64, ptr %i, align 8
  %11 = mul nsw i64 %10, %1
  %arrayidx = getelementptr inbounds i32, ptr %9, i64 %11
  %12 = load i64, ptr %j, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %arrayidx, i64 %12
  store i32 %conv, ptr %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %13 = load i64, ptr %j, align 8
  %inc = add i64 %13, 1
  store i64 %inc, ptr %j, align 8
  br label %for.cond1, !llvm.loop !11

for.end:                                          ; preds = %for.cond1
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %14 = load i64, ptr %i, align 8
  %inc6 = add i64 %14, 1
  store i64 %inc6, ptr %i, align 8
  br label %for.cond, !llvm.loop !12

for.end7:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @rands(i64 noundef %r, i64 noundef %c, ptr noundef %M) #0 {
entry:
  %r.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %M.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store i64 %r, ptr %r.addr, align 8
  store i64 %c, ptr %c.addr, align 8
  store ptr %M, ptr %M.addr, align 8
  %0 = load i64, ptr %r.addr, align 8
  %1 = load i64, ptr %c.addr, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  %2 = load i64, ptr %i, align 8
  %3 = load i64, ptr %r.addr, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %j, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i64, ptr %j, align 8
  %5 = load i64, ptr %c.addr, align 8
  %cmp2 = icmp ult i64 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %call = call i32 @rand()
  %rem = srem i32 %call, 100
  %6 = load ptr, ptr %M.addr, align 8
  %7 = load i64, ptr %i, align 8
  %8 = mul nsw i64 %7, %1
  %arrayidx = getelementptr inbounds i32, ptr %6, i64 %8
  %9 = load i64, ptr %j, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %arrayidx, i64 %9
  store i32 %rem, ptr %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %10 = load i64, ptr %j, align 8
  %inc = add i64 %10, 1
  store i64 %inc, ptr %j, align 8
  br label %for.cond1, !llvm.loop !13

for.end:                                          ; preds = %for.cond1
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %11 = load i64, ptr %i, align 8
  %inc6 = add i64 %11, 1
  store i64 %inc6, ptr %i, align 8
  br label %for.cond, !llvm.loop !14

for.end7:                                         ; preds = %for.cond
  ret void
}

declare i32 @rand() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @transpose(i64 noundef %r, i64 noundef %c, ptr noundef %M, ptr noundef %N) #0 {
entry:
  %r.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %M.addr = alloca ptr, align 8
  %N.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store i64 %r, ptr %r.addr, align 8
  store i64 %c, ptr %c.addr, align 8
  store ptr %M, ptr %M.addr, align 8
  store ptr %N, ptr %N.addr, align 8
  %0 = load i64, ptr %r.addr, align 8
  %1 = load i64, ptr %c.addr, align 8
  %2 = load i64, ptr %c.addr, align 8
  %3 = load i64, ptr %r.addr, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %4 = load i64, ptr %i, align 8
  %5 = load i64, ptr %r.addr, align 8
  %cmp = icmp ult i64 %4, %5
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %j, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %6 = load i64, ptr %j, align 8
  %7 = load i64, ptr %c.addr, align 8
  %cmp2 = icmp ult i64 %6, %7
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %8 = load ptr, ptr %M.addr, align 8
  %9 = load i64, ptr %i, align 8
  %10 = mul nsw i64 %9, %1
  %arrayidx = getelementptr inbounds i32, ptr %8, i64 %10
  %11 = load i64, ptr %j, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %arrayidx, i64 %11
  %12 = load i32, ptr %arrayidx4, align 4
  %13 = load ptr, ptr %N.addr, align 8
  %14 = load i64, ptr %j, align 8
  %15 = mul nsw i64 %14, %3
  %arrayidx5 = getelementptr inbounds i32, ptr %13, i64 %15
  %16 = load i64, ptr %i, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %arrayidx5, i64 %16
  store i32 %12, ptr %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %17 = load i64, ptr %j, align 8
  %inc = add i64 %17, 1
  store i64 %inc, ptr %j, align 8
  br label %for.cond1, !llvm.loop !15

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %18 = load i64, ptr %i, align 8
  %inc8 = add i64 %18, 1
  store i64 %inc8, ptr %i, align 8
  br label %for.cond, !llvm.loop !16

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @row2col(i64 noundef %r, i64 noundef %c, ptr noundef %M, ptr noundef %N) #0 {
entry:
  %r.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %M.addr = alloca ptr, align 8
  %N.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %p = alloca ptr, align 8
  store i64 %r, ptr %r.addr, align 8
  store i64 %c, ptr %c.addr, align 8
  store ptr %M, ptr %M.addr, align 8
  store ptr %N, ptr %N.addr, align 8
  %0 = load i64, ptr %r.addr, align 8
  %1 = load i64, ptr %c.addr, align 8
  %2 = load i64, ptr %r.addr, align 8
  %3 = load i64, ptr %c.addr, align 8
  %4 = load ptr, ptr %N.addr, align 8
  %5 = mul nsw i64 0, %3
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %5
  %arrayidx1 = getelementptr inbounds i32, ptr %arrayidx, i64 0
  store ptr %arrayidx1, ptr %p, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %6 = load i64, ptr %i, align 8
  %7 = load i64, ptr %c.addr, align 8
  %cmp = icmp ult i64 %6, %7
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %j, align 8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %8 = load i64, ptr %j, align 8
  %9 = load i64, ptr %r.addr, align 8
  %cmp3 = icmp ult i64 %8, %9
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %10 = load ptr, ptr %M.addr, align 8
  %11 = load i64, ptr %j, align 8
  %12 = mul nsw i64 %11, %1
  %arrayidx5 = getelementptr inbounds i32, ptr %10, i64 %12
  %13 = load i64, ptr %i, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %arrayidx5, i64 %13
  %14 = load i32, ptr %arrayidx6, align 4
  %15 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  store i32 %14, ptr %15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %16 = load i64, ptr %j, align 8
  %inc = add i64 %16, 1
  store i64 %inc, ptr %j, align 8
  br label %for.cond2, !llvm.loop !17

for.end:                                          ; preds = %for.cond2
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %17 = load i64, ptr %i, align 8
  %inc8 = add i64 %17, 1
  store i64 %inc8, ptr %i, align 8
  br label %for.cond, !llvm.loop !18

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @dump(i64 noundef %r, i64 noundef %c, ptr noundef %M) #0 {
entry:
  %r.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %M.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store i64 %r, ptr %r.addr, align 8
  store i64 %c, ptr %c.addr, align 8
  store ptr %M, ptr %M.addr, align 8
  %0 = load i64, ptr %r.addr, align 8
  %1 = load i64, ptr %c.addr, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %2 = load i64, ptr %i, align 8
  %3 = load i64, ptr %r.addr, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %j, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i64, ptr %j, align 8
  %5 = load i64, ptr %c.addr, align 8
  %cmp2 = icmp ult i64 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load ptr, ptr %M.addr, align 8
  %7 = load i64, ptr %i, align 8
  %8 = mul nsw i64 %7, %1
  %arrayidx = getelementptr inbounds i32, ptr %6, i64 %8
  %9 = load i64, ptr %j, align 8
  %arrayidx4 = getelementptr inbounds i32, ptr %arrayidx, i64 %9
  %10 = load i32, ptr %arrayidx4, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %11 = load i64, ptr %j, align 8
  %inc = add i64 %11, 1
  store i64 %inc, ptr %j, align 8
  br label %for.cond1, !llvm.loop !19

for.end:                                          ; preds = %for.cond1
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %12 = load i64, ptr %i, align 8
  %inc7 = add i64 %12, 1
  store i64 %inc7, ptr %i, align 8
  br label %for.cond, !llvm.loop !20

for.end8:                                         ; preds = %for.cond
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @dump_raw(ptr noundef %b, i64 noundef %n) #0 {
entry:
  %b.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %p = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %b.addr, align 8
  store ptr %0, ptr %p, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8
  %2 = load i64, ptr %n.addr, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %p, align 8
  %4 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %4
  %5 = load i32, ptr %arrayidx, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %5)
  %6 = load i64, ptr %i, align 8
  %and = and i64 %6, 15
  %cmp1 = icmp eq i64 %and, 15
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i64, ptr %i, align 8
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !21

for.end:                                          ; preds = %for.cond
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test_cycle(i64 noundef %r, i64 noundef %c) #0 {
entry:
  %r.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %__vla_expr2 = alloca i64, align 8
  %__vla_expr3 = alloca i64, align 8
  %__vla_expr4 = alloca i64, align 8
  %__vla_expr5 = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %r, ptr %r.addr, align 8
  store i64 %c, ptr %c.addr, align 8
  %0 = load i64, ptr %r.addr, align 8
  %1 = load i64, ptr %c.addr, align 8
  %2 = call ptr @llvm.stacksave.p0()
  store ptr %2, ptr %saved_stack, align 8
  %3 = mul nuw i64 %0, %1
  %vla = alloca i32, i64 %3, align 4
  store i64 %0, ptr %__vla_expr0, align 8
  store i64 %1, ptr %__vla_expr1, align 8
  %4 = load i64, ptr %r.addr, align 8
  %5 = load i64, ptr %c.addr, align 8
  %6 = mul nuw i64 %4, %5
  %vla1 = alloca i32, i64 %6, align 4
  store i64 %4, ptr %__vla_expr2, align 8
  store i64 %5, ptr %__vla_expr3, align 8
  %7 = load i64, ptr %r.addr, align 8
  %8 = load i64, ptr %c.addr, align 8
  %9 = mul nuw i64 %7, %8
  %vla2 = alloca i32, i64 %9, align 4
  store i64 %7, ptr %__vla_expr4, align 8
  store i64 %8, ptr %__vla_expr5, align 8
  %10 = load i64, ptr %r.addr, align 8
  %11 = load i64, ptr %c.addr, align 8
  call void @fill(i64 noundef %10, i64 noundef %11, ptr noundef %vla)
  %12 = mul nuw i64 %0, %1
  %13 = mul nuw i64 4, %12
  %14 = call i64 @llvm.objectsize.i64.p0(ptr %vla1, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %vla1, ptr noundef %vla, i64 noundef %13, i64 noundef %14) #5
  store i64 1, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i64, ptr %r.addr, align 8
  %16 = load i64, ptr %c.addr, align 8
  call void @row2col(i64 noundef %15, i64 noundef %16, ptr noundef %vla1, ptr noundef %vla2)
  %17 = mul nuw i64 %7, %8
  %18 = mul nuw i64 4, %17
  %19 = call i64 @llvm.objectsize.i64.p0(ptr %vla1, i1 false, i1 true, i1 false)
  %call3 = call ptr @__memcpy_chk(ptr noundef %vla1, ptr noundef %vla2, i64 noundef %18, i64 noundef %19) #5
  %20 = mul nuw i64 %4, %5
  %21 = mul nuw i64 4, %20
  %call4 = call i32 @memcmp(ptr noundef %vla, ptr noundef %vla1, i64 noundef %21)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i64, ptr %i, align 8
  %inc = add i64 %22, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then
  %23 = load i64, ptr %r.addr, align 8
  %24 = load i64, ptr %c.addr, align 8
  %25 = load i64, ptr %i, align 8
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i64 noundef %23, i64 noundef %24, i64 noundef %25)
  %26 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %26)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #2

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test_transpose(i64 noundef %r, i64 noundef %c, i32 noundef %n) #0 {
entry:
  %r.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %n.addr = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
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
  store i64 %r, ptr %r.addr, align 8
  store i64 %c, ptr %c.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load i64, ptr %r.addr, align 8
  %1 = load i64, ptr %c.addr, align 8
  %2 = call ptr @llvm.stacksave.p0()
  store ptr %2, ptr %saved_stack, align 8
  %3 = mul nuw i64 %0, %1
  %vla = alloca i32, i64 %3, align 4
  store i64 %0, ptr %__vla_expr0, align 8
  store i64 %1, ptr %__vla_expr1, align 8
  %4 = load i64, ptr %r.addr, align 8
  %5 = load i64, ptr %c.addr, align 8
  %6 = mul nuw i64 %4, %5
  %vla1 = alloca i32, i64 %6, align 4
  store i64 %4, ptr %__vla_expr2, align 8
  store i64 %5, ptr %__vla_expr3, align 8
  %7 = load i64, ptr %r.addr, align 8
  %8 = load i64, ptr %c.addr, align 8
  %9 = mul nuw i64 %7, %8
  %vla2 = alloca i32, i64 %9, align 4
  store i64 %7, ptr %__vla_expr4, align 8
  store i64 %8, ptr %__vla_expr5, align 8
  %10 = load i64, ptr %r.addr, align 8
  %11 = load i64, ptr %c.addr, align 8
  %12 = mul nuw i64 %10, %11
  %vla3 = alloca i32, i64 %12, align 4
  store i64 %10, ptr %__vla_expr6, align 8
  store i64 %11, ptr %__vla_expr7, align 8
  %13 = load i64, ptr %c.addr, align 8
  %14 = load i64, ptr %r.addr, align 8
  %15 = mul nuw i64 %13, %14
  %vla4 = alloca i32, i64 %15, align 4
  store i64 %13, ptr %__vla_expr8, align 8
  store i64 %14, ptr %__vla_expr9, align 8
  %16 = load i64, ptr %r.addr, align 8
  %cmp = icmp eq i64 %16, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %17 = load i64, ptr %c.addr, align 8
  %cmp5 = icmp eq i64 %17, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %18 = load i64, ptr %r.addr, align 8
  %19 = load i64, ptr %c.addr, align 8
  call void @fill(i64 noundef %18, i64 noundef %19, ptr noundef %vla)
  %20 = mul nuw i64 %0, %1
  %21 = mul nuw i64 4, %20
  %22 = call i64 @llvm.objectsize.i64.p0(ptr %vla1, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %vla1, ptr noundef %vla, i64 noundef %21, i64 noundef %22) #5
  %23 = mul nuw i64 %0, %1
  %24 = mul nuw i64 4, %23
  %25 = call i64 @llvm.objectsize.i64.p0(ptr %vla3, i1 false, i1 true, i1 false)
  %call6 = call ptr @__memcpy_chk(ptr noundef %vla3, ptr noundef %vla, i64 noundef %24, i64 noundef %25) #5
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load i32, ptr %i, align 4
  %27 = load i32, ptr %n.addr, align 4
  %cmp7 = icmp slt i32 %26, %27
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i64, ptr %r.addr, align 8
  %29 = load i64, ptr %c.addr, align 8
  call void @row2col(i64 noundef %28, i64 noundef %29, ptr noundef %vla1, ptr noundef %vla2)
  %30 = load i32, ptr %i, align 4
  %and = and i32 %30, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then8

if.then8:                                         ; preds = %for.body
  %31 = load i64, ptr %r.addr, align 8
  %32 = load i64, ptr %c.addr, align 8
  call void @transpose(i64 noundef %31, i64 noundef %32, ptr noundef %vla3, ptr noundef %vla4)
  %33 = mul nuw i64 %13, %14
  %34 = mul nuw i64 4, %33
  %call9 = call i32 @memcmp(ptr noundef %vla2, ptr noundef %vla4, i64 noundef %34)
  store i32 %call9, ptr %m, align 4
  br label %if.end11

if.else:                                          ; preds = %for.body
  %35 = load i64, ptr %c.addr, align 8
  %36 = load i64, ptr %r.addr, align 8
  call void @transpose(i64 noundef %35, i64 noundef %36, ptr noundef %vla4, ptr noundef %vla3)
  %37 = mul nuw i64 %10, %11
  %38 = mul nuw i64 4, %37
  %call10 = call i32 @memcmp(ptr noundef %vla2, ptr noundef %vla3, i64 noundef %38)
  store i32 %call10, ptr %m, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %39 = mul nuw i64 %7, %8
  %40 = mul nuw i64 4, %39
  %41 = call i64 @llvm.objectsize.i64.p0(ptr %vla1, i1 false, i1 true, i1 false)
  %call12 = call ptr @__memcpy_chk(ptr noundef %vla1, ptr noundef %vla2, i64 noundef %40, i64 noundef %41) #5
  %42 = load i32, ptr %m, align 4
  %tobool13 = icmp ne i32 %42, 0
  br i1 %tobool13, label %if.then14, label %if.end21

if.then14:                                        ; preds = %if.end11
  %43 = load i32, ptr %i, align 4
  %44 = load i64, ptr %r.addr, align 8
  %45 = load i64, ptr %c.addr, align 8
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %43, i64 noundef %44, i64 noundef %45)
  %46 = load i64, ptr %r.addr, align 8
  %47 = load i64, ptr %c.addr, align 8
  call void @dump(i64 noundef %46, i64 noundef %47, ptr noundef %vla2)
  %48 = load i32, ptr %i, align 4
  %and16 = and i32 %48, 1
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.else19, label %if.then18

if.then18:                                        ; preds = %if.then14
  %49 = load i64, ptr %c.addr, align 8
  %50 = load i64, ptr %r.addr, align 8
  call void @dump(i64 noundef %49, i64 noundef %50, ptr noundef %vla4)
  br label %if.end20

if.else19:                                        ; preds = %if.then14
  %51 = load i64, ptr %r.addr, align 8
  %52 = load i64, ptr %c.addr, align 8
  call void @dump(i64 noundef %51, i64 noundef %52, ptr noundef %vla3)
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.then18
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end11
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %53 = load i32, ptr %i, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %54 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %54)
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test_square_transpose(i64 noundef %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %saved_stack = alloca ptr, align 8
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
  store i64 %n, ptr %n.addr, align 8
  %0 = load i64, ptr %n.addr, align 8
  %1 = load i64, ptr %n.addr, align 8
  %2 = call ptr @llvm.stacksave.p0()
  store ptr %2, ptr %saved_stack, align 8
  %3 = mul nuw i64 %0, %1
  %vla = alloca i32, i64 %3, align 4
  store i64 %0, ptr %__vla_expr0, align 8
  store i64 %1, ptr %__vla_expr1, align 8
  %4 = load i64, ptr %n.addr, align 8
  %5 = load i64, ptr %n.addr, align 8
  %6 = mul nuw i64 %4, %5
  %vla1 = alloca i32, i64 %6, align 4
  store i64 %4, ptr %__vla_expr2, align 8
  store i64 %5, ptr %__vla_expr3, align 8
  %7 = load i64, ptr %n.addr, align 8
  %8 = load i64, ptr %n.addr, align 8
  %9 = mul nuw i64 %7, %8
  %vla2 = alloca i32, i64 %9, align 4
  store i64 %7, ptr %__vla_expr4, align 8
  store i64 %8, ptr %__vla_expr5, align 8
  %10 = load i64, ptr %n.addr, align 8
  %11 = load i64, ptr %n.addr, align 8
  %12 = mul nuw i64 %10, %11
  %vla3 = alloca i32, i64 %12, align 4
  store i64 %10, ptr %__vla_expr6, align 8
  store i64 %11, ptr %__vla_expr7, align 8
  %13 = load i64, ptr %n.addr, align 8
  %14 = load i64, ptr %n.addr, align 8
  %15 = mul nuw i64 %13, %14
  %vla4 = alloca i32, i64 %15, align 4
  store i64 %13, ptr %__vla_expr8, align 8
  store i64 %14, ptr %__vla_expr9, align 8
  %16 = load i64, ptr %n.addr, align 8
  %17 = load i64, ptr %n.addr, align 8
  %18 = mul nuw i64 %16, %17
  %vla5 = alloca i32, i64 %18, align 4
  store i64 %16, ptr %__vla_expr10, align 8
  store i64 %17, ptr %__vla_expr11, align 8
  %19 = load i64, ptr %n.addr, align 8
  %20 = load i64, ptr %n.addr, align 8
  %21 = mul nuw i64 %19, %20
  %vla6 = alloca i32, i64 %21, align 4
  store i64 %19, ptr %__vla_expr12, align 8
  store i64 %20, ptr %__vla_expr13, align 8
  %22 = load i64, ptr %n.addr, align 8
  %23 = load i64, ptr %n.addr, align 8
  %24 = mul nuw i64 %22, %23
  %vla7 = alloca i32, i64 %24, align 4
  store i64 %22, ptr %__vla_expr14, align 8
  store i64 %23, ptr %__vla_expr15, align 8
  %25 = load i64, ptr %n.addr, align 8
  %26 = load i64, ptr %n.addr, align 8
  call void @rands(i64 noundef %25, i64 noundef %26, ptr noundef %vla)
  %27 = load i64, ptr %n.addr, align 8
  %28 = load i64, ptr %n.addr, align 8
  call void @rands(i64 noundef %27, i64 noundef %28, ptr noundef %vla1)
  %29 = load i64, ptr %n.addr, align 8
  call void @mulsq(i64 noundef %29, ptr noundef %vla, ptr noundef %vla1, ptr noundef %vla2)
  %30 = load i64, ptr %n.addr, align 8
  %31 = load i64, ptr %n.addr, align 8
  call void @transpose(i64 noundef %30, i64 noundef %31, ptr noundef %vla2, ptr noundef %vla3)
  %32 = load i64, ptr %n.addr, align 8
  %33 = load i64, ptr %n.addr, align 8
  call void @transpose(i64 noundef %32, i64 noundef %33, ptr noundef %vla1, ptr noundef %vla4)
  %34 = load i64, ptr %n.addr, align 8
  %35 = load i64, ptr %n.addr, align 8
  call void @transpose(i64 noundef %34, i64 noundef %35, ptr noundef %vla, ptr noundef %vla5)
  %36 = load i64, ptr %n.addr, align 8
  call void @mulsq(i64 noundef %36, ptr noundef %vla4, ptr noundef %vla5, ptr noundef %vla6)
  %37 = load i64, ptr %n.addr, align 8
  call void @mulsq(i64 noundef %37, ptr noundef %vla, ptr noundef %vla1, ptr noundef %vla2)
  %38 = load i64, ptr %n.addr, align 8
  %39 = load i64, ptr %n.addr, align 8
  call void @row2col(i64 noundef %38, i64 noundef %39, ptr noundef %vla2, ptr noundef %vla3)
  %40 = load i64, ptr %n.addr, align 8
  %41 = load i64, ptr %n.addr, align 8
  call void @row2col(i64 noundef %40, i64 noundef %41, ptr noundef %vla1, ptr noundef %vla4)
  %42 = load i64, ptr %n.addr, align 8
  %43 = load i64, ptr %n.addr, align 8
  call void @row2col(i64 noundef %42, i64 noundef %43, ptr noundef %vla, ptr noundef %vla5)
  %44 = load i64, ptr %n.addr, align 8
  call void @mulsq(i64 noundef %44, ptr noundef %vla4, ptr noundef %vla5, ptr noundef %vla7)
  %45 = mul nuw i64 %19, %20
  %46 = mul nuw i64 4, %45
  %call = call i32 @memcmp(ptr noundef %vla7, ptr noundef %vla6, i64 noundef %46)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %47 = load i64, ptr %n.addr, align 8
  %48 = load i64, ptr %n.addr, align 8
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i64 noundef %47, i64 noundef %48)
  %49 = load i64, ptr %n.addr, align 8
  %50 = load i64, ptr %n.addr, align 8
  call void @dump(i64 noundef %49, i64 noundef %50, ptr noundef %vla6)
  %51 = load i64, ptr %n.addr, align 8
  %52 = load i64, ptr %n.addr, align 8
  call void @dump(i64 noundef %51, i64 noundef %52, ptr noundef %vla7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %53 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %53)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %conv3 = sext i32 %1 to i64
  %2 = load i32, ptr %i, align 4
  %conv4 = sext i32 %2 to i64
  call void @test_cycle(i64 noundef %conv3, i64 noundef %conv4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  call void @test_cycle(i64 noundef 2, i64 noundef 3)
  call void @test_cycle(i64 noundef 4, i64 noundef 39)
  call void @test_cycle(i64 noundef 54, i64 noundef 100)
  call void @test_cycle(i64 noundef 320, i64 noundef 30)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  store i32 0, ptr %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc20, %for.end
  %4 = load i32, ptr %i, align 4
  %cmp8 = icmp sle i32 %4, 4
  br i1 %cmp8, label %for.body10, label %for.end22

for.body10:                                       ; preds = %for.cond7
  store i32 0, ptr %j, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc17, %for.body10
  %5 = load i32, ptr %j, align 4
  %cmp12 = icmp sle i32 %5, 4
  br i1 %cmp12, label %for.body14, label %for.end19

for.body14:                                       ; preds = %for.cond11
  %6 = load i32, ptr %i, align 4
  %conv15 = sext i32 %6 to i64
  %7 = load i32, ptr %j, align 4
  %conv16 = sext i32 %7 to i64
  call void @test_transpose(i64 noundef %conv15, i64 noundef %conv16, i32 noundef 5)
  br label %for.inc17

for.inc17:                                        ; preds = %for.body14
  %8 = load i32, ptr %j, align 4
  %inc18 = add nsw i32 %8, 1
  store i32 %inc18, ptr %j, align 4
  br label %for.cond11, !llvm.loop !24

for.end19:                                        ; preds = %for.cond11
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %9 = load i32, ptr %i, align 4
  %inc21 = add nsw i32 %9, 1
  store i32 %inc21, ptr %i, align 4
  br label %for.cond7, !llvm.loop !25

for.end22:                                        ; preds = %for.cond7
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  store i32 1, ptr %i, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc29, %for.end22
  %10 = load i32, ptr %i, align 4
  %cmp25 = icmp sle i32 %10, 100
  br i1 %cmp25, label %for.body27, label %for.end31

for.body27:                                       ; preds = %for.cond24
  %11 = load i32, ptr %i, align 4
  %conv28 = sext i32 %11 to i64
  call void @test_square_transpose(i64 noundef %conv28)
  br label %for.inc29

for.inc29:                                        ; preds = %for.body27
  %12 = load i32, ptr %i, align 4
  %inc30 = add nsw i32 %12, 1
  store i32 %inc30, ptr %i, align 4
  br label %for.cond24, !llvm.loop !26

for.end31:                                        ; preds = %for.cond24
  ret i32 0
}

declare void @srand(i32 noundef) #1

declare i64 @time(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
