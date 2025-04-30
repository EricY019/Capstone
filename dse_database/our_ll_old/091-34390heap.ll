; ModuleID = './code/091-34390heap.c'
source_filename = "./code/091-34390heap.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@next_index = global i32 0, align 4
@heap_array = global [20 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"a[%d]: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Before the remove_from_heap\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"After the remove_from_heap\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @get_parent_index(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %sub = sub nsw i32 %0, 1
  %shr = ashr i32 %sub, 1
  ret i32 %shr
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @get_left_index(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %shl = shl i32 %0, 1
  %add = add nsw i32 %shl, 1
  ret i32 %add
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @get_right_index(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %shl = shl i32 %0, 1
  %add = add nsw i32 %shl, 2
  ret i32 %add
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @swap(i32 noundef %i, i32 noundef %j) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  store i32 %j, ptr %j.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [20 x i32], ptr @heap_array, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %tmp, align 4
  %2 = load i32, ptr %j.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [20 x i32], ptr @heap_array, i64 0, i64 %idxprom1
  %3 = load i32, ptr %arrayidx2, align 4
  %4 = load i32, ptr %i.addr, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [20 x i32], ptr @heap_array, i64 0, i64 %idxprom3
  store i32 %3, ptr %arrayidx4, align 4
  %5 = load i32, ptr %tmp, align 4
  %6 = load i32, ptr %j.addr, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [20 x i32], ptr @heap_array, i64 0, i64 %idxprom5
  store i32 %5, ptr %arrayidx6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @heapify(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %p = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end5

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %i.addr, align 4
  %call = call i32 @get_parent_index(i32 noundef %1)
  store i32 %call, ptr %p, align 4
  %2 = load i32, ptr %p, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [20 x i32], ptr @heap_array, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %4 = load i32, ptr %i.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [20 x i32], ptr @heap_array, i64 0, i64 %idxprom1
  %5 = load i32, ptr %arrayidx2, align 4
  %cmp3 = icmp slt i32 %3, %5
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %6 = load i32, ptr %i.addr, align 4
  %7 = load i32, ptr %p, align 4
  call void @swap(i32 noundef %6, i32 noundef %7)
  %8 = load i32, ptr %p, align 4
  call void @heapify(i32 noundef %8)
  br label %if.end5

if.end5:                                          ; preds = %if.then, %if.then4, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @trickle_up(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %saved = alloca i32, align 4
  %parent = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [20 x i32], ptr @heap_array, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %saved, align 4
  %2 = load i32, ptr %i.addr, align 4
  %call = call i32 @get_parent_index(i32 noundef %2)
  store i32 %call, ptr %parent, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, ptr %i.addr, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i32, ptr %saved, align 4
  %5 = load i32, ptr %parent, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [20 x i32], ptr @heap_array, i64 0, i64 %idxprom1
  %6 = load i32, ptr %arrayidx2, align 4
  %cmp3 = icmp sgt i32 %4, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i32, ptr %parent, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [20 x i32], ptr @heap_array, i64 0, i64 %idxprom4
  %9 = load i32, ptr %arrayidx5, align 4
  %10 = load i32, ptr %i.addr, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [20 x i32], ptr @heap_array, i64 0, i64 %idxprom6
  store i32 %9, ptr %arrayidx7, align 4
  %11 = load i32, ptr %parent, align 4
  store i32 %11, ptr %i.addr, align 4
  %12 = load i32, ptr %parent, align 4
  %call8 = call i32 @get_parent_index(i32 noundef %12)
  store i32 %call8, ptr %parent, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %land.end
  %13 = load i32, ptr %saved, align 4
  %14 = load i32, ptr %i.addr, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds [20 x i32], ptr @heap_array, i64 0, i64 %idxprom9
  store i32 %13, ptr %arrayidx10, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @insert(i32 noundef %v) #0 {
entry:
  %v.addr = alloca i32, align 4
  store i32 %v, ptr %v.addr, align 4
  %0 = load i32, ptr %v.addr, align 4
  %1 = load i32, ptr @next_index, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [20 x i32], ptr @heap_array, i64 0, i64 %idxprom
  store i32 %0, ptr %arrayidx, align 4
  %2 = load i32, ptr @next_index, align 4
  call void @trickle_up(i32 noundef %2)
  %3 = load i32, ptr @next_index, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr @next_index, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @trickle_down(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %saved = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %parent = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [20 x i32], ptr @heap_array, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %saved, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end12, %entry
  %2 = load i32, ptr %i.addr, align 4
  %3 = load i32, ptr @next_index, align 4
  %div = sdiv i32 %3, 2
  %cmp = icmp slt i32 %2, %div
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %i.addr, align 4
  %call = call i32 @get_left_index(i32 noundef %4)
  store i32 %call, ptr %left, align 4
  %5 = load i32, ptr %i.addr, align 4
  %call1 = call i32 @get_right_index(i32 noundef %5)
  store i32 %call1, ptr %right, align 4
  %6 = load i32, ptr %right, align 4
  %7 = load i32, ptr @next_index, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %8 = load i32, ptr %right, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds [20 x i32], ptr @heap_array, i64 0, i64 %idxprom3
  %9 = load i32, ptr %arrayidx4, align 4
  %10 = load i32, ptr %left, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [20 x i32], ptr @heap_array, i64 0, i64 %idxprom5
  %11 = load i32, ptr %arrayidx6, align 4
  %cmp7 = icmp sgt i32 %9, %11
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %12 = load i32, ptr %right, align 4
  store i32 %12, ptr %parent, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %while.body
  %13 = load i32, ptr %left, align 4
  store i32 %13, ptr %parent, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32, ptr %saved, align 4
  %15 = load i32, ptr %parent, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds [20 x i32], ptr @heap_array, i64 0, i64 %idxprom8
  %16 = load i32, ptr %arrayidx9, align 4
  %cmp10 = icmp sge i32 %14, %16
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  br label %while.end

if.end12:                                         ; preds = %if.end
  %17 = load i32, ptr %parent, align 4
  %idxprom13 = sext i32 %17 to i64
  %arrayidx14 = getelementptr inbounds [20 x i32], ptr @heap_array, i64 0, i64 %idxprom13
  %18 = load i32, ptr %arrayidx14, align 4
  %19 = load i32, ptr %i.addr, align 4
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds [20 x i32], ptr @heap_array, i64 0, i64 %idxprom15
  store i32 %18, ptr %arrayidx16, align 4
  %20 = load i32, ptr %parent, align 4
  store i32 %20, ptr %i.addr, align 4
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %if.then11, %while.cond
  %21 = load i32, ptr %saved, align 4
  %22 = load i32, ptr %i.addr, align 4
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds [20 x i32], ptr @heap_array, i64 0, i64 %idxprom17
  store i32 %21, ptr %arrayidx18, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @remove_from_heap() #0 {
entry:
  %r = alloca i32, align 4
  %0 = load i32, ptr @heap_array, align 4
  store i32 %0, ptr %r, align 4
  %1 = load i32, ptr @next_index, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr @next_index, align 4
  %idxprom = sext i32 %dec to i64
  %arrayidx = getelementptr inbounds [20 x i32], ptr @heap_array, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr @heap_array, align 4
  call void @trickle_down(i32 noundef 0)
  %3 = load i32, ptr %r, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @change(i32 noundef %index, i32 noundef %v) #0 {
entry:
  %index.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  %old = alloca i32, align 4
  store i32 %index, ptr %index.addr, align 4
  store i32 %v, ptr %v.addr, align 4
  %0 = load i32, ptr %index.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %index.addr, align 4
  %2 = load i32, ptr @next_index, align 4
  %cmp1 = icmp sge i32 %1, %2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end6

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, ptr %index.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [20 x i32], ptr @heap_array, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  store i32 %4, ptr %old, align 4
  %5 = load i32, ptr %v.addr, align 4
  %6 = load i32, ptr %index.addr, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [20 x i32], ptr @heap_array, i64 0, i64 %idxprom2
  store i32 %5, ptr %arrayidx3, align 4
  %7 = load i32, ptr %old, align 4
  %8 = load i32, ptr %v.addr, align 4
  %cmp4 = icmp sgt i32 %7, %8
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %9 = load i32, ptr %index.addr, align 4
  call void @trickle_down(i32 noundef %9)
  br label %if.end6

if.else:                                          ; preds = %if.end
  %10 = load i32, ptr %index.addr, align 4
  call void @trickle_up(i32 noundef %10)
  br label %if.end6

if.end6:                                          ; preds = %if.then, %if.else, %if.then5
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @display_heap() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr @next_index, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [20 x i32], ptr @heap_array, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2, i32 noundef %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argv, ptr noundef %argc) #0 {
entry:
  %retval = alloca i32, align 4
  %argv.addr = alloca i32, align 4
  %argc.addr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argv, ptr %argv.addr, align 4
  store ptr %argc, ptr %argc.addr, align 8
  call void @insert(i32 noundef 10)
  call void @insert(i32 noundef 23)
  call void @insert(i32 noundef 1)
  call void @insert(i32 noundef 9)
  call void @insert(i32 noundef 33)
  call void @insert(i32 noundef 2)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  call void @display_heap()
  %call1 = call i32 @remove_from_heap()
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  call void @display_heap()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
