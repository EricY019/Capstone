; ModuleID = 'code/018-28578all_sorting_algorithms.c'
source_filename = "code/018-28578all_sorting_algorithms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.arr = private unnamed_addr constant [9 x i32] [i32 5, i32 2, i32 4, i32 1, i32 7, i32 7, i32 6, i32 9, i32 3], align 16
@.str = private unnamed_addr constant [4 x i8] c"%i \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [9 x i32], align 16
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [9 x i32]* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([9 x i32]* @__const.main.arr to i8*), i64 36, i1 false)
  store i32 9, i32* %len, align 4
  %arraydecay = getelementptr inbounds [9 x i32], [9 x i32]* %arr, i64 0, i64 0
  call void @quicksort(i32* %arraydecay, i32 0, i32 8)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [9 x i32], [9 x i32]* %arr, i64 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quicksort(i32* %x, i32 %start, i32 %end) #0 {
entry:
  %x.addr = alloca i32*, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %p_index = alloca i32, align 4
  store i32* %x, i32** %x.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %0 = load i32, i32* %start.addr, align 4
  %1 = load i32, i32* %end.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end6

if.end:                                           ; preds = %entry
  %2 = load i32*, i32** %x.addr, align 8
  %3 = load i32, i32* %start.addr, align 4
  %4 = load i32, i32* %end.addr, align 4
  %call = call i32 @partition(i32* %2, i32 %3, i32 %4)
  store i32 %call, i32* %p_index, align 4
  %5 = load i32, i32* %p_index, align 4
  %6 = load i32, i32* %start.addr, align 4
  %cmp1 = icmp ne i32 %5, %6
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %7 = load i32*, i32** %x.addr, align 8
  %8 = load i32, i32* %start.addr, align 4
  %9 = load i32, i32* %p_index, align 4
  %sub = sub nsw i32 %9, 1
  call void @quicksort(i32* %7, i32 %8, i32 %sub)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %10 = load i32, i32* %p_index, align 4
  %11 = load i32, i32* %end.addr, align 4
  %cmp4 = icmp ne i32 %10, %11
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %12 = load i32*, i32** %x.addr, align 8
  %13 = load i32, i32* %p_index, align 4
  %add = add nsw i32 %13, 1
  %14 = load i32, i32* %end.addr, align 4
  call void @quicksort(i32* %12, i32 %add, i32 %14)
  br label %if.end6

if.end6:                                          ; preds = %if.then, %if.then5, %if.end3
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @merge(i32* %left, i32 %l, i32* %right, i32 %r, i32* %final) #0 {
entry:
  %left.addr = alloca i32*, align 8
  %l.addr = alloca i32, align 4
  %right.addr = alloca i32*, align 8
  %r.addr = alloca i32, align 4
  %final.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32* %left, i32** %left.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store i32* %right, i32** %right.addr, align 8
  store i32 %r, i32* %r.addr, align 4
  store i32* %final, i32** %final.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %l.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %r.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i32*, i32** %left.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load i32*, i32** %right.addr, align 8
  %9 = load i32, i32* %j, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 %idxprom2
  %10 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp slt i32 %7, %10
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %11 = load i32*, i32** %left.addr, align 8
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %11, i64 %idxprom5
  %13 = load i32, i32* %arrayidx6, align 4
  %14 = load i32*, i32** %final.addr, align 8
  %15 = load i32, i32* %k, align 4
  %inc7 = add nsw i32 %15, 1
  store i32 %inc7, i32* %k, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %14, i64 %idxprom8
  store i32 %13, i32* %arrayidx9, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %16 = load i32*, i32** %right.addr, align 8
  %17 = load i32, i32* %j, align 4
  %inc10 = add nsw i32 %17, 1
  store i32 %inc10, i32* %j, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %16, i64 %idxprom11
  %18 = load i32, i32* %arrayidx12, align 4
  %19 = load i32*, i32** %final.addr, align 8
  %20 = load i32, i32* %k, align 4
  %inc13 = add nsw i32 %20, 1
  store i32 %inc13, i32* %k, align 4
  %idxprom14 = sext i32 %20 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %19, i64 %idxprom14
  store i32 %18, i32* %arrayidx15, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  br label %while.cond16

while.cond16:                                     ; preds = %while.body18, %while.end
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %l.addr, align 4
  %cmp17 = icmp slt i32 %21, %22
  br i1 %cmp17, label %while.body18, label %while.end25

while.body18:                                     ; preds = %while.cond16
  %23 = load i32*, i32** %left.addr, align 8
  %24 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %24, 1
  store i32 %inc19, i32* %i, align 4
  %idxprom20 = sext i32 %24 to i64
  %arrayidx21 = getelementptr inbounds i32, i32* %23, i64 %idxprom20
  %25 = load i32, i32* %arrayidx21, align 4
  %26 = load i32*, i32** %final.addr, align 8
  %27 = load i32, i32* %k, align 4
  %inc22 = add nsw i32 %27, 1
  store i32 %inc22, i32* %k, align 4
  %idxprom23 = sext i32 %27 to i64
  %arrayidx24 = getelementptr inbounds i32, i32* %26, i64 %idxprom23
  store i32 %25, i32* %arrayidx24, align 4
  br label %while.cond16, !llvm.loop !7

while.end25:                                      ; preds = %while.cond16
  br label %while.cond26

while.cond26:                                     ; preds = %while.body28, %while.end25
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* %r.addr, align 4
  %cmp27 = icmp slt i32 %28, %29
  br i1 %cmp27, label %while.body28, label %while.end35

while.body28:                                     ; preds = %while.cond26
  %30 = load i32*, i32** %right.addr, align 8
  %31 = load i32, i32* %j, align 4
  %inc29 = add nsw i32 %31, 1
  store i32 %inc29, i32* %j, align 4
  %idxprom30 = sext i32 %31 to i64
  %arrayidx31 = getelementptr inbounds i32, i32* %30, i64 %idxprom30
  %32 = load i32, i32* %arrayidx31, align 4
  %33 = load i32*, i32** %final.addr, align 8
  %34 = load i32, i32* %k, align 4
  %inc32 = add nsw i32 %34, 1
  store i32 %inc32, i32* %k, align 4
  %idxprom33 = sext i32 %34 to i64
  %arrayidx34 = getelementptr inbounds i32, i32* %33, i64 %idxprom33
  store i32 %32, i32* %arrayidx34, align 4
  br label %while.cond26, !llvm.loop !8

while.end35:                                      ; preds = %while.cond26
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @merge_sort(i32* %x, i32 %size) #0 {
entry:
  %x.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %i = alloca i32, align 4
  %l_size = alloca i32, align 4
  %r_size = alloca i32, align 4
  store i32* %x, i32** %x.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %size.addr, align 4
  %div = sdiv i32 %1, 2
  %2 = zext i32 %div to i64
  %3 = call i8* @llvm.stacksave()
  store i8* %3, i8** %saved_stack, align 8
  %vla = alloca i32, i64 %2, align 16
  store i64 %2, i64* %__vla_expr0, align 8
  %4 = load i32, i32* %size.addr, align 4
  %5 = load i32, i32* %size.addr, align 4
  %div1 = sdiv i32 %5, 2
  %sub = sub nsw i32 %4, %div1
  %6 = zext i32 %sub to i64
  %vla2 = alloca i32, i64 %6, align 16
  store i64 %6, i64* %__vla_expr1, align 8
  %7 = load i32, i32* %size.addr, align 4
  %div3 = sdiv i32 %7, 2
  store i32 %div3, i32* %l_size, align 4
  %8 = load i32, i32* %size.addr, align 4
  %9 = load i32, i32* %size.addr, align 4
  %div4 = sdiv i32 %9, 2
  %sub5 = sub nsw i32 %8, %div4
  store i32 %sub5, i32* %r_size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %l_size, align 4
  %cmp6 = icmp slt i32 %10, %11
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32*, i32** %x.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 %idxprom
  %14 = load i32, i32* %arrayidx, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %vla, i64 %idxprom7
  store i32 %14, i32* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc16, %for.end
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %r_size, align 4
  %cmp10 = icmp slt i32 %17, %18
  br i1 %cmp10, label %for.body11, label %for.end18

for.body11:                                       ; preds = %for.cond9
  %19 = load i32*, i32** %x.addr, align 8
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %l_size, align 4
  %add = add nsw i32 %20, %21
  %idxprom12 = sext i32 %add to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %19, i64 %idxprom12
  %22 = load i32, i32* %arrayidx13, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %23 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %vla2, i64 %idxprom14
  store i32 %22, i32* %arrayidx15, align 4
  br label %for.inc16

for.inc16:                                        ; preds = %for.body11
  %24 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %24, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond9, !llvm.loop !10

for.end18:                                        ; preds = %for.cond9
  %25 = load i32, i32* %l_size, align 4
  call void @merge_sort(i32* %vla, i32 %25)
  %26 = load i32, i32* %r_size, align 4
  call void @merge_sort(i32* %vla2, i32 %26)
  %27 = load i32, i32* %l_size, align 4
  %28 = load i32, i32* %r_size, align 4
  %29 = load i32*, i32** %x.addr, align 8
  call void @merge(i32* %vla, i32 %27, i32* %vla2, i32 %28, i32* %29)
  %30 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %30)
  br label %return

return:                                           ; preds = %for.end18, %if.then
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @partition(i32* %x, i32 %start, i32 %end) #0 {
entry:
  %x.addr = alloca i32*, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %pivot = alloca i32, align 4
  %swap_index = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %x, i32** %x.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %0 = load i32*, i32** %x.addr, align 8
  %1 = load i32, i32* %end.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %pivot, align 4
  %3 = load i32, i32* %start.addr, align 4
  store i32 %3, i32* %swap_index, align 4
  %4 = load i32, i32* %start.addr, align 4
  store i32 %4, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %end.addr, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32*, i32** %x.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 %idxprom1
  %9 = load i32, i32* %arrayidx2, align 4
  %10 = load i32, i32* %pivot, align 4
  %cmp3 = icmp sle i32 %9, %10
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32*, i32** %x.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %11, i64 %idxprom4
  %13 = load i32, i32* %arrayidx5, align 4
  %14 = load i32*, i32** %x.addr, align 8
  %15 = load i32, i32* %swap_index, align 4
  %idxprom6 = sext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %14, i64 %idxprom6
  %16 = load i32, i32* %arrayidx7, align 4
  %add = add nsw i32 %13, %16
  %17 = load i32*, i32** %x.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %18 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %17, i64 %idxprom8
  %19 = load i32, i32* %arrayidx9, align 4
  %20 = load i32*, i32** %x.addr, align 8
  %21 = load i32, i32* %swap_index, align 4
  %idxprom10 = sext i32 %21 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %20, i64 %idxprom10
  store i32 %19, i32* %arrayidx11, align 4
  %sub = sub nsw i32 %add, %19
  %22 = load i32*, i32** %x.addr, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %23 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %22, i64 %idxprom12
  store i32 %sub, i32* %arrayidx13, align 4
  %24 = load i32, i32* %swap_index, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %swap_index, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %25, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %26 = load i32*, i32** %x.addr, align 8
  %27 = load i32, i32* %end.addr, align 4
  %idxprom15 = sext i32 %27 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %26, i64 %idxprom15
  %28 = load i32, i32* %arrayidx16, align 4
  %29 = load i32*, i32** %x.addr, align 8
  %30 = load i32, i32* %swap_index, align 4
  %idxprom17 = sext i32 %30 to i64
  %arrayidx18 = getelementptr inbounds i32, i32* %29, i64 %idxprom17
  %31 = load i32, i32* %arrayidx18, align 4
  %add19 = add nsw i32 %28, %31
  %32 = load i32*, i32** %x.addr, align 8
  %33 = load i32, i32* %end.addr, align 4
  %idxprom20 = sext i32 %33 to i64
  %arrayidx21 = getelementptr inbounds i32, i32* %32, i64 %idxprom20
  %34 = load i32, i32* %arrayidx21, align 4
  %35 = load i32*, i32** %x.addr, align 8
  %36 = load i32, i32* %swap_index, align 4
  %idxprom22 = sext i32 %36 to i64
  %arrayidx23 = getelementptr inbounds i32, i32* %35, i64 %idxprom22
  store i32 %34, i32* %arrayidx23, align 4
  %sub24 = sub nsw i32 %add19, %34
  %37 = load i32*, i32** %x.addr, align 8
  %38 = load i32, i32* %end.addr, align 4
  %idxprom25 = sext i32 %38 to i64
  %arrayidx26 = getelementptr inbounds i32, i32* %37, i64 %idxprom25
  store i32 %sub24, i32* %arrayidx26, align 4
  %39 = load i32, i32* %swap_index, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind willreturn }

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
