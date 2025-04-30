; ModuleID = 'code/392-34916heap_sort.c'
source_filename = "code/392-34916heap_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@heap = internal global [100 x i32] zeroinitializer, align 16
@heap_size = internal global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delete_max() #0 {
entry:
  %ret = alloca i32, align 4
  %0 = load i32, i32* getelementptr inbounds ([100 x i32], [100 x i32]* @heap, i64 0, i64 0), align 16
  store i32 %0, i32* %ret, align 4
  call void @delete(i32 0)
  %1 = load i32, i32* %ret, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %last = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* @heap_size, align 4
  %sub = sub nsw i32 %0, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @heap, i64 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %last, align 4
  %2 = load i32, i32* @heap_size, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* @heap_size, align 4
  %3 = load i32, i32* %i.addr, align 4
  %4 = load i32, i32* @heap_size, align 4
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %last, align 4
  %6 = load i32, i32* %i.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [100 x i32], [100 x i32]* @heap, i64 0, i64 %idxprom1
  store i32 %5, i32* %arrayidx2, align 4
  %7 = load i32, i32* %i.addr, align 4
  call void @shift_down(i32 %7)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert(i32 %new_data) #0 {
entry:
  %new_data.addr = alloca i32, align 4
  store i32 %new_data, i32* %new_data.addr, align 4
  %0 = load i32, i32* @heap_size, align 4
  %cmp = icmp sgt i32 %0, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @heap_size, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @heap_size, align 4
  %2 = load i32, i32* %new_data.addr, align 4
  %3 = load i32, i32* @heap_size, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @heap, i64 0, i64 %idxprom
  store i32 %2, i32* %arrayidx, align 4
  %4 = load i32, i32* @heap_size, align 4
  %sub1 = sub nsw i32 %4, 1
  call void @shift_up(i32 %sub1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shift_up(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %done = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 0, i32* %done, align 4
  %0 = load i32, i32* %i.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end12, %if.end
  %1 = load i32, i32* %i.addr, align 4
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %done, align 4
  %tobool = icmp ne i32 %2, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @heap, i64 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32, i32* %i.addr, align 4
  %sub = sub nsw i32 %6, 1
  %div = sdiv i32 %sub, 2
  %idxprom2 = sext i32 %div to i64
  %arrayidx3 = getelementptr inbounds [100 x i32], [100 x i32]* @heap, i64 0, i64 %idxprom2
  %7 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp sgt i32 %5, %7
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %while.body
  %8 = load i32, i32* %i.addr, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], [100 x i32]* @heap, i64 0, i64 %idxprom6
  %9 = load i32, i32* %i.addr, align 4
  %sub8 = sub nsw i32 %9, 1
  %div9 = sdiv i32 %sub8, 2
  %idxprom10 = sext i32 %div9 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], [100 x i32]* @heap, i64 0, i64 %idxprom10
  call void @swap(i32* %arrayidx7, i32* %arrayidx11)
  br label %if.end12

if.else:                                          ; preds = %while.body
  store i32 1, i32* %done, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then5
  %10 = load i32, i32* %i.addr, align 4
  %sub13 = sub nsw i32 %10, 1
  %div14 = sdiv i32 %sub13, 2
  store i32 %div14, i32* %i.addr, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %if.then, %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  store i32 10, i32* @heap_size, align 4
  call void @insert(i32 3)
  call void @insert(i32 7)
  call void @insert(i32 13)
  call void @insert(i32 83)
  call void @insert(i32 23)
  call void @insert(i32 11)
  call void @insert(i32 31)
  call void @insert(i32 12)
  call void @insert(i32 35)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @heap_size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @delete_max()
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shift_down(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %done = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 0, i32* %done, align 4
  %0 = load i32, i32* %i.addr, align 4
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 %mul, 1
  %1 = load i32, i32* @heap_size, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end26, %if.end
  %2 = load i32, i32* %i.addr, align 4
  %mul1 = mul nsw i32 2, %2
  %add2 = add nsw i32 %mul1, 1
  %3 = load i32, i32* @heap_size, align 4
  %cmp3 = icmp slt i32 %add2, %3
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i32, i32* %done, align 4
  %tobool = icmp ne i32 %4, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i32, i32* %i.addr, align 4
  %mul4 = mul nsw i32 2, %6
  %add5 = add nsw i32 %mul4, 1
  store i32 %add5, i32* %i.addr, align 4
  %7 = load i32, i32* %i.addr, align 4
  %add6 = add nsw i32 %7, 1
  %8 = load i32, i32* @heap_size, align 4
  %cmp7 = icmp slt i32 %add6, %8
  br i1 %cmp7, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %while.body
  %9 = load i32, i32* %i.addr, align 4
  %add8 = add nsw i32 %9, 1
  %idxprom = sext i32 %add8 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @heap, i64 0, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %11 = load i32, i32* %i.addr, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], [100 x i32]* @heap, i64 0, i64 %idxprom9
  %12 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp sgt i32 %10, %12
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %i.addr, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i.addr, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %land.lhs.true, %while.body
  %14 = load i32, i32* %i.addr, align 4
  %sub = sub nsw i32 %14, 1
  %div = sdiv i32 %sub, 2
  %idxprom14 = sext i32 %div to i64
  %arrayidx15 = getelementptr inbounds [100 x i32], [100 x i32]* @heap, i64 0, i64 %idxprom14
  %15 = load i32, i32* %arrayidx15, align 4
  %16 = load i32, i32* %i.addr, align 4
  %idxprom16 = sext i32 %16 to i64
  %arrayidx17 = getelementptr inbounds [100 x i32], [100 x i32]* @heap, i64 0, i64 %idxprom16
  %17 = load i32, i32* %arrayidx17, align 4
  %cmp18 = icmp slt i32 %15, %17
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end13
  %18 = load i32, i32* %i.addr, align 4
  %sub20 = sub nsw i32 %18, 1
  %div21 = sdiv i32 %sub20, 2
  %idxprom22 = sext i32 %div21 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], [100 x i32]* @heap, i64 0, i64 %idxprom22
  %19 = load i32, i32* %i.addr, align 4
  %idxprom24 = sext i32 %19 to i64
  %arrayidx25 = getelementptr inbounds [100 x i32], [100 x i32]* @heap, i64 0, i64 %idxprom24
  call void @swap(i32* %arrayidx23, i32* %arrayidx25)
  br label %if.end26

if.else:                                          ; preds = %if.end13
  store i32 1, i32* %done, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then19
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %if.then, %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap(i32* %a, i32* %b) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %temp = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32 0, i32* %temp, align 4
  %0 = load i32*, i32** %b.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %temp, align 4
  %2 = load i32*, i32** %a.addr, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load i32*, i32** %b.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* %temp, align 4
  %6 = load i32*, i32** %a.addr, align 8
  store i32 %5, i32* %6, align 4
  ret void
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
