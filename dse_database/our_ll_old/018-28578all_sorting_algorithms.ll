; ModuleID = './code/018-28578all_sorting_algorithms.c'
source_filename = "./code/018-28578all_sorting_algorithms.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.arr = private unnamed_addr constant [9 x i32] [i32 5, i32 2, i32 4, i32 1, i32 7, i32 7, i32 6, i32 9, i32 3], align 4
@.str = private unnamed_addr constant [4 x i8] c"%i \00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [9 x i32], align 4
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 4 @__const.main.arr, i64 36, i1 false)
  store i32 9, ptr %len, align 4
  %arraydecay = getelementptr inbounds [9 x i32], ptr %arr, i64 0, i64 0
  call void @quicksort(ptr noundef %arraydecay, i32 noundef 0, i32 noundef 8)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %len, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [9 x i32], ptr %arr, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @quicksort(ptr noundef %x, i32 noundef %start, i32 noundef %end) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %p_index = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8
  store i32 %start, ptr %start.addr, align 4
  store i32 %end, ptr %end.addr, align 4
  %0 = load i32, ptr %start.addr, align 4
  %1 = load i32, ptr %end.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end6

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %x.addr, align 8
  %3 = load i32, ptr %start.addr, align 4
  %4 = load i32, ptr %end.addr, align 4
  %call = call i32 @partition(ptr noundef %2, i32 noundef %3, i32 noundef %4)
  store i32 %call, ptr %p_index, align 4
  %5 = load i32, ptr %p_index, align 4
  %6 = load i32, ptr %start.addr, align 4
  %cmp1 = icmp ne i32 %5, %6
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr %x.addr, align 8
  %8 = load i32, ptr %start.addr, align 4
  %9 = load i32, ptr %p_index, align 4
  %sub = sub nsw i32 %9, 1
  call void @quicksort(ptr noundef %7, i32 noundef %8, i32 noundef %sub)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %10 = load i32, ptr %p_index, align 4
  %11 = load i32, ptr %end.addr, align 4
  %cmp4 = icmp ne i32 %10, %11
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %12 = load ptr, ptr %x.addr, align 8
  %13 = load i32, ptr %p_index, align 4
  %add = add nsw i32 %13, 1
  %14 = load i32, ptr %end.addr, align 4
  call void @quicksort(ptr noundef %12, i32 noundef %add, i32 noundef %14)
  br label %if.end6

if.end6:                                          ; preds = %if.then, %if.then5, %if.end3
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @merge(ptr noundef %left, i32 noundef %l, ptr noundef %right, i32 noundef %r, ptr noundef %final) #0 {
entry:
  %left.addr = alloca ptr, align 8
  %l.addr = alloca i32, align 4
  %right.addr = alloca ptr, align 8
  %r.addr = alloca i32, align 4
  %final.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store ptr %left, ptr %left.addr, align 8
  store i32 %l, ptr %l.addr, align 4
  store ptr %right, ptr %right.addr, align 8
  store i32 %r, ptr %r.addr, align 4
  store ptr %final, ptr %final.addr, align 8
  store i32 0, ptr %i, align 4
  store i32 0, ptr %j, align 4
  store i32 0, ptr %k, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %l.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %r.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load ptr, ptr %left.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4
  %8 = load ptr, ptr %right.addr, align 8
  %9 = load i32, ptr %j, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %8, i64 %idxprom2
  %10 = load i32, ptr %arrayidx3, align 4
  %cmp4 = icmp slt i32 %7, %10
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %11 = load ptr, ptr %left.addr, align 8
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %11, i64 %idxprom5
  %13 = load i32, ptr %arrayidx6, align 4
  %14 = load ptr, ptr %final.addr, align 8
  %15 = load i32, ptr %k, align 4
  %inc7 = add nsw i32 %15, 1
  store i32 %inc7, ptr %k, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %14, i64 %idxprom8
  store i32 %13, ptr %arrayidx9, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %16 = load ptr, ptr %right.addr, align 8
  %17 = load i32, ptr %j, align 4
  %inc10 = add nsw i32 %17, 1
  store i32 %inc10, ptr %j, align 4
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %16, i64 %idxprom11
  %18 = load i32, ptr %arrayidx12, align 4
  %19 = load ptr, ptr %final.addr, align 8
  %20 = load i32, ptr %k, align 4
  %inc13 = add nsw i32 %20, 1
  store i32 %inc13, ptr %k, align 4
  %idxprom14 = sext i32 %20 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %19, i64 %idxprom14
  store i32 %18, ptr %arrayidx15, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %land.end
  br label %while.cond16

while.cond16:                                     ; preds = %while.body18, %while.end
  %21 = load i32, ptr %i, align 4
  %22 = load i32, ptr %l.addr, align 4
  %cmp17 = icmp slt i32 %21, %22
  br i1 %cmp17, label %while.body18, label %while.end25

while.body18:                                     ; preds = %while.cond16
  %23 = load ptr, ptr %left.addr, align 8
  %24 = load i32, ptr %i, align 4
  %inc19 = add nsw i32 %24, 1
  store i32 %inc19, ptr %i, align 4
  %idxprom20 = sext i32 %24 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %23, i64 %idxprom20
  %25 = load i32, ptr %arrayidx21, align 4
  %26 = load ptr, ptr %final.addr, align 8
  %27 = load i32, ptr %k, align 4
  %inc22 = add nsw i32 %27, 1
  store i32 %inc22, ptr %k, align 4
  %idxprom23 = sext i32 %27 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %26, i64 %idxprom23
  store i32 %25, ptr %arrayidx24, align 4
  br label %while.cond16, !llvm.loop !8

while.end25:                                      ; preds = %while.cond16
  br label %while.cond26

while.cond26:                                     ; preds = %while.body28, %while.end25
  %28 = load i32, ptr %j, align 4
  %29 = load i32, ptr %r.addr, align 4
  %cmp27 = icmp slt i32 %28, %29
  br i1 %cmp27, label %while.body28, label %while.end35

while.body28:                                     ; preds = %while.cond26
  %30 = load ptr, ptr %right.addr, align 8
  %31 = load i32, ptr %j, align 4
  %inc29 = add nsw i32 %31, 1
  store i32 %inc29, ptr %j, align 4
  %idxprom30 = sext i32 %31 to i64
  %arrayidx31 = getelementptr inbounds i32, ptr %30, i64 %idxprom30
  %32 = load i32, ptr %arrayidx31, align 4
  %33 = load ptr, ptr %final.addr, align 8
  %34 = load i32, ptr %k, align 4
  %inc32 = add nsw i32 %34, 1
  store i32 %inc32, ptr %k, align 4
  %idxprom33 = sext i32 %34 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %33, i64 %idxprom33
  store i32 %32, ptr %arrayidx34, align 4
  br label %while.cond26, !llvm.loop !9

while.end35:                                      ; preds = %while.cond26
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @merge_sort(ptr noundef %x, i32 noundef %size) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %i = alloca i32, align 4
  %l_size = alloca i32, align 4
  %r_size = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  %0 = load i32, ptr %size.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %size.addr, align 4
  %div = sdiv i32 %1, 2
  %2 = zext i32 %div to i64
  %3 = call ptr @llvm.stacksave.p0()
  store ptr %3, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %2, align 4
  store i64 %2, ptr %__vla_expr0, align 8
  %4 = load i32, ptr %size.addr, align 4
  %5 = load i32, ptr %size.addr, align 4
  %div1 = sdiv i32 %5, 2
  %sub = sub nsw i32 %4, %div1
  %6 = zext i32 %sub to i64
  %vla2 = alloca i32, i64 %6, align 4
  store i64 %6, ptr %__vla_expr1, align 8
  %7 = load i32, ptr %size.addr, align 4
  %div3 = sdiv i32 %7, 2
  store i32 %div3, ptr %l_size, align 4
  %8 = load i32, ptr %size.addr, align 4
  %9 = load i32, ptr %size.addr, align 4
  %div4 = sdiv i32 %9, 2
  %sub5 = sub nsw i32 %8, %div4
  store i32 %sub5, ptr %r_size, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %l_size, align 4
  %cmp6 = icmp slt i32 %10, %11
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %x.addr, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i32, ptr %12, i64 %idxprom
  %14 = load i32, ptr %arrayidx, align 4
  %15 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %vla, i64 %idxprom7
  store i32 %14, ptr %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc16, %for.end
  %17 = load i32, ptr %i, align 4
  %18 = load i32, ptr %r_size, align 4
  %cmp10 = icmp slt i32 %17, %18
  br i1 %cmp10, label %for.body11, label %for.end18

for.body11:                                       ; preds = %for.cond9
  %19 = load ptr, ptr %x.addr, align 8
  %20 = load i32, ptr %i, align 4
  %21 = load i32, ptr %l_size, align 4
  %add = add nsw i32 %20, %21
  %idxprom12 = sext i32 %add to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %19, i64 %idxprom12
  %22 = load i32, ptr %arrayidx13, align 4
  %23 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %23 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %vla2, i64 %idxprom14
  store i32 %22, ptr %arrayidx15, align 4
  br label %for.inc16

for.inc16:                                        ; preds = %for.body11
  %24 = load i32, ptr %i, align 4
  %inc17 = add nsw i32 %24, 1
  store i32 %inc17, ptr %i, align 4
  br label %for.cond9, !llvm.loop !11

for.end18:                                        ; preds = %for.cond9
  %25 = load i32, ptr %l_size, align 4
  call void @merge_sort(ptr noundef %vla, i32 noundef %25)
  %26 = load i32, ptr %r_size, align 4
  call void @merge_sort(ptr noundef %vla2, i32 noundef %26)
  %27 = load i32, ptr %l_size, align 4
  %28 = load i32, ptr %r_size, align 4
  %29 = load ptr, ptr %x.addr, align 8
  call void @merge(ptr noundef %vla, i32 noundef %27, ptr noundef %vla2, i32 noundef %28, ptr noundef %29)
  %30 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %30)
  br label %return

return:                                           ; preds = %for.end18, %if.then
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @partition(ptr noundef %x, i32 noundef %start, i32 noundef %end) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %pivot = alloca i32, align 4
  %swap_index = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8
  store i32 %start, ptr %start.addr, align 4
  store i32 %end, ptr %end.addr, align 4
  %0 = load ptr, ptr %x.addr, align 8
  %1 = load i32, ptr %end.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %pivot, align 4
  %3 = load i32, ptr %start.addr, align 4
  store i32 %3, ptr %swap_index, align 4
  %4 = load i32, ptr %start.addr, align 4
  store i32 %4, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %end.addr, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %x.addr, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %7, i64 %idxprom1
  %9 = load i32, ptr %arrayidx2, align 4
  %10 = load i32, ptr %pivot, align 4
  %cmp3 = icmp sle i32 %9, %10
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load ptr, ptr %x.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %11, i64 %idxprom4
  %13 = load i32, ptr %arrayidx5, align 4
  %14 = load ptr, ptr %x.addr, align 8
  %15 = load i32, ptr %swap_index, align 4
  %idxprom6 = sext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %14, i64 %idxprom6
  %16 = load i32, ptr %arrayidx7, align 4
  %add = add nsw i32 %13, %16
  %17 = load ptr, ptr %x.addr, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %18 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %17, i64 %idxprom8
  %19 = load i32, ptr %arrayidx9, align 4
  %20 = load ptr, ptr %x.addr, align 8
  %21 = load i32, ptr %swap_index, align 4
  %idxprom10 = sext i32 %21 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %20, i64 %idxprom10
  store i32 %19, ptr %arrayidx11, align 4
  %sub = sub nsw i32 %add, %19
  %22 = load ptr, ptr %x.addr, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %23 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %22, i64 %idxprom12
  store i32 %sub, ptr %arrayidx13, align 4
  %24 = load i32, ptr %swap_index, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %swap_index, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i32, ptr %i, align 4
  %inc14 = add nsw i32 %25, 1
  store i32 %inc14, ptr %i, align 4
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %26 = load ptr, ptr %x.addr, align 8
  %27 = load i32, ptr %end.addr, align 4
  %idxprom15 = sext i32 %27 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %26, i64 %idxprom15
  %28 = load i32, ptr %arrayidx16, align 4
  %29 = load ptr, ptr %x.addr, align 8
  %30 = load i32, ptr %swap_index, align 4
  %idxprom17 = sext i32 %30 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %29, i64 %idxprom17
  %31 = load i32, ptr %arrayidx18, align 4
  %add19 = add nsw i32 %28, %31
  %32 = load ptr, ptr %x.addr, align 8
  %33 = load i32, ptr %end.addr, align 4
  %idxprom20 = sext i32 %33 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %32, i64 %idxprom20
  %34 = load i32, ptr %arrayidx21, align 4
  %35 = load ptr, ptr %x.addr, align 8
  %36 = load i32, ptr %swap_index, align 4
  %idxprom22 = sext i32 %36 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %35, i64 %idxprom22
  store i32 %34, ptr %arrayidx23, align 4
  %sub24 = sub nsw i32 %add19, %34
  %37 = load ptr, ptr %x.addr, align 8
  %38 = load i32, ptr %end.addr, align 4
  %idxprom25 = sext i32 %38 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %37, i64 %idxprom25
  store i32 %sub24, ptr %arrayidx26, align 4
  %39 = load i32, ptr %swap_index, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }

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
