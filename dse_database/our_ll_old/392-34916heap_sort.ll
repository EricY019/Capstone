; ModuleID = './code/392-34916heap_sort.c'
source_filename = "./code/392-34916heap_sort.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@heap = internal global [100 x i32] zeroinitializer, align 4
@heap_size = internal global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @delete_max() #0 {
entry:
  %ret = alloca i32, align 4
  %0 = load i32, ptr @heap, align 4
  store i32 %0, ptr %ret, align 4
  call void @delete(i32 noundef 0)
  %1 = load i32, ptr %ret, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @delete(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %last = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr @heap_size, align 4
  %sub = sub nsw i32 %0, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr @heap, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %last, align 4
  %2 = load i32, ptr @heap_size, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr @heap_size, align 4
  %3 = load i32, ptr %i.addr, align 4
  %4 = load i32, ptr @heap_size, align 4
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %last, align 4
  %6 = load i32, ptr %i.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [100 x i32], ptr @heap, i64 0, i64 %idxprom1
  store i32 %5, ptr %arrayidx2, align 4
  %7 = load i32, ptr %i.addr, align 4
  call void @shift_down(i32 noundef %7)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @insert(i32 noundef %new_data) #0 {
entry:
  %new_data.addr = alloca i32, align 4
  store i32 %new_data, ptr %new_data.addr, align 4
  %0 = load i32, ptr @heap_size, align 4
  %cmp = icmp sgt i32 %0, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @heap_size, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @heap_size, align 4
  %2 = load i32, ptr %new_data.addr, align 4
  %3 = load i32, ptr @heap_size, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr @heap, i64 0, i64 %idxprom
  store i32 %2, ptr %arrayidx, align 4
  %4 = load i32, ptr @heap_size, align 4
  %sub1 = sub nsw i32 %4, 1
  call void @shift_up(i32 noundef %sub1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @shift_up(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %done = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  store i32 0, ptr %done, align 4
  %0 = load i32, ptr %i.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end12, %if.end
  %1 = load i32, ptr %i.addr, align 4
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, ptr %done, align 4
  %tobool = icmp ne i32 %2, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i32, ptr %i.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr @heap, i64 0, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  %6 = load i32, ptr %i.addr, align 4
  %sub = sub nsw i32 %6, 1
  %div = sdiv i32 %sub, 2
  %idxprom2 = sext i32 %div to i64
  %arrayidx3 = getelementptr inbounds [100 x i32], ptr @heap, i64 0, i64 %idxprom2
  %7 = load i32, ptr %arrayidx3, align 4
  %cmp4 = icmp sgt i32 %5, %7
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %while.body
  %8 = load i32, ptr %i.addr, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], ptr @heap, i64 0, i64 %idxprom6
  %9 = load i32, ptr %i.addr, align 4
  %sub8 = sub nsw i32 %9, 1
  %div9 = sdiv i32 %sub8, 2
  %idxprom10 = sext i32 %div9 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr @heap, i64 0, i64 %idxprom10
  call void @swap(ptr noundef %arrayidx7, ptr noundef %arrayidx11)
  br label %if.end12

if.else:                                          ; preds = %while.body
  store i32 1, ptr %done, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then5
  %10 = load i32, ptr %i.addr, align 4
  %sub13 = sub nsw i32 %10, 1
  %div14 = sdiv i32 %sub13, 2
  store i32 %div14, ptr %i.addr, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %if.then, %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  store i32 10, ptr @heap_size, align 4
  call void @insert(i32 noundef 3)
  call void @insert(i32 noundef 7)
  call void @insert(i32 noundef 13)
  call void @insert(i32 noundef 83)
  call void @insert(i32 noundef 23)
  call void @insert(i32 noundef 11)
  call void @insert(i32 noundef 31)
  call void @insert(i32 noundef 12)
  call void @insert(i32 noundef 35)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr @heap_size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @delete_max()
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @shift_down(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %done = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  store i32 0, ptr %done, align 4
  %0 = load i32, ptr %i.addr, align 4
  %mul = mul nsw i32 2, %0
  %add = add nsw i32 %mul, 1
  %1 = load i32, ptr @heap_size, align 4
  %cmp = icmp sgt i32 %add, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end26, %if.end
  %2 = load i32, ptr %i.addr, align 4
  %mul1 = mul nsw i32 2, %2
  %add2 = add nsw i32 %mul1, 1
  %3 = load i32, ptr @heap_size, align 4
  %cmp3 = icmp slt i32 %add2, %3
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i32, ptr %done, align 4
  %tobool = icmp ne i32 %4, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i32, ptr %i.addr, align 4
  %mul4 = mul nsw i32 2, %6
  %add5 = add nsw i32 %mul4, 1
  store i32 %add5, ptr %i.addr, align 4
  %7 = load i32, ptr %i.addr, align 4
  %add6 = add nsw i32 %7, 1
  %8 = load i32, ptr @heap_size, align 4
  %cmp7 = icmp slt i32 %add6, %8
  br i1 %cmp7, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %while.body
  %9 = load i32, ptr %i.addr, align 4
  %add8 = add nsw i32 %9, 1
  %idxprom = sext i32 %add8 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr @heap, i64 0, i64 %idxprom
  %10 = load i32, ptr %arrayidx, align 4
  %11 = load i32, ptr %i.addr, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], ptr @heap, i64 0, i64 %idxprom9
  %12 = load i32, ptr %arrayidx10, align 4
  %cmp11 = icmp sgt i32 %10, %12
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %land.lhs.true
  %13 = load i32, ptr %i.addr, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i.addr, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %land.lhs.true, %while.body
  %14 = load i32, ptr %i.addr, align 4
  %sub = sub nsw i32 %14, 1
  %div = sdiv i32 %sub, 2
  %idxprom14 = sext i32 %div to i64
  %arrayidx15 = getelementptr inbounds [100 x i32], ptr @heap, i64 0, i64 %idxprom14
  %15 = load i32, ptr %arrayidx15, align 4
  %16 = load i32, ptr %i.addr, align 4
  %idxprom16 = sext i32 %16 to i64
  %arrayidx17 = getelementptr inbounds [100 x i32], ptr @heap, i64 0, i64 %idxprom16
  %17 = load i32, ptr %arrayidx17, align 4
  %cmp18 = icmp slt i32 %15, %17
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end13
  %18 = load i32, ptr %i.addr, align 4
  %sub20 = sub nsw i32 %18, 1
  %div21 = sdiv i32 %sub20, 2
  %idxprom22 = sext i32 %div21 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr @heap, i64 0, i64 %idxprom22
  %19 = load i32, ptr %i.addr, align 4
  %idxprom24 = sext i32 %19 to i64
  %arrayidx25 = getelementptr inbounds [100 x i32], ptr @heap, i64 0, i64 %idxprom24
  call void @swap(ptr noundef %arrayidx23, ptr noundef %arrayidx25)
  br label %if.end26

if.else:                                          ; preds = %if.end13
  store i32 1, ptr %done, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then19
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %if.then, %land.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @swap(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %temp = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store i32 0, ptr %temp, align 4
  %0 = load ptr, ptr %b.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %temp, align 4
  %2 = load ptr, ptr %a.addr, align 8
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr %b.addr, align 8
  store i32 %3, ptr %4, align 4
  %5 = load i32, ptr %temp, align 4
  %6 = load ptr, ptr %a.addr, align 8
  store i32 %5, ptr %6, align 4
  ret void
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
