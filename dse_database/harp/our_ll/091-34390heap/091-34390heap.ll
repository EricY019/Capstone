; ModuleID = 'code/091-34390heap.c'
source_filename = "code/091-34390heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@next_index = dso_local global i32 0, align 4
@heap_array = dso_local global [20 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"a[%d]: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Before the remove_from_heap\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"After the remove_from_heap\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_parent_index(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %sub = sub nsw i32 %0, 1
  %shr = ashr i32 %sub, 1
  ret i32 %shr
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_left_index(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %shl = shl i32 %0, 1
  %add = add nsw i32 %shl, 1
  ret i32 %add
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_right_index(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %shl = shl i32 %0, 1
  %add = add nsw i32 %shl, 2
  ret i32 %add
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i32 %i, i32 %j) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @heap_array, i64 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %tmp, align 4
  %2 = load i32, i32* %j.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [20 x i32], [20 x i32]* @heap_array, i64 0, i64 %idxprom1
  %3 = load i32, i32* %arrayidx2, align 4
  %4 = load i32, i32* %i.addr, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [20 x i32], [20 x i32]* @heap_array, i64 0, i64 %idxprom3
  store i32 %3, i32* %arrayidx4, align 4
  %5 = load i32, i32* %tmp, align 4
  %6 = load i32, i32* %j.addr, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [20 x i32], [20 x i32]* @heap_array, i64 0, i64 %idxprom5
  store i32 %5, i32* %arrayidx6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heapify(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %p = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end5

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %i.addr, align 4
  %call = call i32 @get_parent_index(i32 %1)
  store i32 %call, i32* %p, align 4
  %2 = load i32, i32* %p, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @heap_array, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %i.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [20 x i32], [20 x i32]* @heap_array, i64 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp slt i32 %3, %5
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %6 = load i32, i32* %i.addr, align 4
  %7 = load i32, i32* %p, align 4
  call void @swap(i32 %6, i32 %7)
  %8 = load i32, i32* %p, align 4
  call void @heapify(i32 %8)
  br label %if.end5

if.end5:                                          ; preds = %if.then, %if.then4, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trickle_up(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %saved = alloca i32, align 4
  %parent = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @heap_array, i64 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %saved, align 4
  %2 = load i32, i32* %i.addr, align 4
  %call = call i32 @get_parent_index(i32 %2)
  store i32 %call, i32* %parent, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, i32* %i.addr, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i32, i32* %saved, align 4
  %5 = load i32, i32* %parent, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [20 x i32], [20 x i32]* @heap_array, i64 0, i64 %idxprom1
  %6 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp sgt i32 %4, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i32, i32* %parent, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [20 x i32], [20 x i32]* @heap_array, i64 0, i64 %idxprom4
  %9 = load i32, i32* %arrayidx5, align 4
  %10 = load i32, i32* %i.addr, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [20 x i32], [20 x i32]* @heap_array, i64 0, i64 %idxprom6
  store i32 %9, i32* %arrayidx7, align 4
  %11 = load i32, i32* %parent, align 4
  store i32 %11, i32* %i.addr, align 4
  %12 = load i32, i32* %parent, align 4
  %call8 = call i32 @get_parent_index(i32 %12)
  store i32 %call8, i32* %parent, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  %13 = load i32, i32* %saved, align 4
  %14 = load i32, i32* %i.addr, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds [20 x i32], [20 x i32]* @heap_array, i64 0, i64 %idxprom9
  store i32 %13, i32* %arrayidx10, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert(i32 %v) #0 {
entry:
  %v.addr = alloca i32, align 4
  store i32 %v, i32* %v.addr, align 4
  %0 = load i32, i32* %v.addr, align 4
  %1 = load i32, i32* @next_index, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @heap_array, i64 0, i64 %idxprom
  store i32 %0, i32* %arrayidx, align 4
  %2 = load i32, i32* @next_index, align 4
  call void @trickle_up(i32 %2)
  %3 = load i32, i32* @next_index, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @next_index, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trickle_down(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %saved = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %parent = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @heap_array, i64 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %saved, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end12, %entry
  %2 = load i32, i32* %i.addr, align 4
  %3 = load i32, i32* @next_index, align 4
  %div = sdiv i32 %3, 2
  %cmp = icmp slt i32 %2, %div
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %i.addr, align 4
  %call = call i32 @get_left_index(i32 %4)
  store i32 %call, i32* %left, align 4
  %5 = load i32, i32* %i.addr, align 4
  %call1 = call i32 @get_right_index(i32 %5)
  store i32 %call1, i32* %right, align 4
  %6 = load i32, i32* %right, align 4
  %7 = load i32, i32* @next_index, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %8 = load i32, i32* %right, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds [20 x i32], [20 x i32]* @heap_array, i64 0, i64 %idxprom3
  %9 = load i32, i32* %arrayidx4, align 4
  %10 = load i32, i32* %left, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [20 x i32], [20 x i32]* @heap_array, i64 0, i64 %idxprom5
  %11 = load i32, i32* %arrayidx6, align 4
  %cmp7 = icmp sgt i32 %9, %11
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %12 = load i32, i32* %right, align 4
  store i32 %12, i32* %parent, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %while.body
  %13 = load i32, i32* %left, align 4
  store i32 %13, i32* %parent, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32, i32* %saved, align 4
  %15 = load i32, i32* %parent, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds [20 x i32], [20 x i32]* @heap_array, i64 0, i64 %idxprom8
  %16 = load i32, i32* %arrayidx9, align 4
  %cmp10 = icmp sge i32 %14, %16
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  br label %while.end

if.end12:                                         ; preds = %if.end
  %17 = load i32, i32* %parent, align 4
  %idxprom13 = sext i32 %17 to i64
  %arrayidx14 = getelementptr inbounds [20 x i32], [20 x i32]* @heap_array, i64 0, i64 %idxprom13
  %18 = load i32, i32* %arrayidx14, align 4
  %19 = load i32, i32* %i.addr, align 4
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds [20 x i32], [20 x i32]* @heap_array, i64 0, i64 %idxprom15
  store i32 %18, i32* %arrayidx16, align 4
  %20 = load i32, i32* %parent, align 4
  store i32 %20, i32* %i.addr, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then11, %while.cond
  %21 = load i32, i32* %saved, align 4
  %22 = load i32, i32* %i.addr, align 4
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds [20 x i32], [20 x i32]* @heap_array, i64 0, i64 %idxprom17
  store i32 %21, i32* %arrayidx18, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remove_from_heap() #0 {
entry:
  %r = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @heap_array, i64 0, i64 0), align 16
  store i32 %0, i32* %r, align 4
  %1 = load i32, i32* @next_index, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* @next_index, align 4
  %idxprom = sext i32 %dec to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @heap_array, i64 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* getelementptr inbounds ([20 x i32], [20 x i32]* @heap_array, i64 0, i64 0), align 16
  call void @trickle_down(i32 0)
  %3 = load i32, i32* %r, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @change(i32 %index, i32 %v) #0 {
entry:
  %index.addr = alloca i32, align 4
  %v.addr = alloca i32, align 4
  %old = alloca i32, align 4
  store i32 %index, i32* %index.addr, align 4
  store i32 %v, i32* %v.addr, align 4
  %0 = load i32, i32* %index.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %index.addr, align 4
  %2 = load i32, i32* @next_index, align 4
  %cmp1 = icmp sge i32 %1, %2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end6

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @heap_array, i64 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %old, align 4
  %5 = load i32, i32* %v.addr, align 4
  %6 = load i32, i32* %index.addr, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [20 x i32], [20 x i32]* @heap_array, i64 0, i64 %idxprom2
  store i32 %5, i32* %arrayidx3, align 4
  %7 = load i32, i32* %old, align 4
  %8 = load i32, i32* %v.addr, align 4
  %cmp4 = icmp sgt i32 %7, %8
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %9 = load i32, i32* %index.addr, align 4
  call void @trickle_down(i32 %9)
  br label %if.end6

if.else:                                          ; preds = %if.end
  %10 = load i32, i32* %index.addr, align 4
  call void @trickle_up(i32 %10)
  br label %if.end6

if.end6:                                          ; preds = %if.then, %if.else, %if.then5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @display_heap() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @next_index, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* @heap_array, i64 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argv, i8** %argc) #0 {
entry:
  %retval = alloca i32, align 4
  %argv.addr = alloca i32, align 4
  %argc.addr = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argv, i32* %argv.addr, align 4
  store i8** %argc, i8*** %argc.addr, align 8
  call void @insert(i32 10)
  call void @insert(i32 23)
  call void @insert(i32 1)
  call void @insert(i32 9)
  call void @insert(i32 33)
  call void @insert(i32 2)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  call void @display_heap()
  %call1 = call i32 @remove_from_heap()
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  call void @display_heap()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
