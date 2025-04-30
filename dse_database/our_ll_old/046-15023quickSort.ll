; ModuleID = './code/046-15023quickSort.c'
source_filename = "./code/046-15023quickSort.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @quickSort(ptr noundef %Array, i32 noundef %arraySize) #0 {
entry:
  %Array.addr = alloca ptr, align 8
  %arraySize.addr = alloca i32, align 4
  %pivot = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca i32, align 4
  store ptr %Array, ptr %Array.addr, align 8
  store i32 %arraySize, ptr %arraySize.addr, align 4
  %0 = load i32, ptr %arraySize.addr, align 4
  %cmp = icmp uge i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %Array.addr, align 8
  %2 = load i32, ptr %arraySize.addr, align 4
  %div = udiv i32 %2, 2
  %idxprom = zext i32 %div to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  store i32 %3, ptr %pivot, align 4
  store i32 0, ptr %i, align 4
  %4 = load i32, ptr %arraySize.addr, align 4
  %sub = sub i32 %4, 1
  store i32 %sub, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.cond
  %5 = load ptr, ptr %Array.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %5, i64 %idxprom1
  %7 = load i32, ptr %arrayidx2, align 4
  %8 = load i32, ptr %pivot, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  br label %while.cond4

while.cond4:                                      ; preds = %while.body8, %while.end
  %10 = load ptr, ptr %Array.addr, align 8
  %11 = load i32, ptr %j, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %10, i64 %idxprom5
  %12 = load i32, ptr %arrayidx6, align 4
  %13 = load i32, ptr %pivot, align 4
  %cmp7 = icmp sgt i32 %12, %13
  br i1 %cmp7, label %while.body8, label %while.end9

while.body8:                                      ; preds = %while.cond4
  %14 = load i32, ptr %j, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, ptr %j, align 4
  br label %while.cond4, !llvm.loop !7

while.end9:                                       ; preds = %while.cond4
  %15 = load i32, ptr %i, align 4
  %16 = load i32, ptr %j, align 4
  %cmp10 = icmp sge i32 %15, %16
  br i1 %cmp10, label %if.then11, label %if.end

if.then11:                                        ; preds = %while.end9
  br label %for.end

if.end:                                           ; preds = %while.end9
  %17 = load ptr, ptr %Array.addr, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %18 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %17, i64 %idxprom12
  %19 = load i32, ptr %arrayidx13, align 4
  store i32 %19, ptr %temp, align 4
  %20 = load ptr, ptr %Array.addr, align 8
  %21 = load i32, ptr %j, align 4
  %idxprom14 = sext i32 %21 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %20, i64 %idxprom14
  %22 = load i32, ptr %arrayidx15, align 4
  %23 = load ptr, ptr %Array.addr, align 8
  %24 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %24 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %23, i64 %idxprom16
  store i32 %22, ptr %arrayidx17, align 4
  %25 = load i32, ptr %temp, align 4
  %26 = load ptr, ptr %Array.addr, align 8
  %27 = load i32, ptr %j, align 4
  %idxprom18 = sext i32 %27 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %26, i64 %idxprom18
  store i32 %25, ptr %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, ptr %i, align 4
  %inc20 = add nsw i32 %28, 1
  store i32 %inc20, ptr %i, align 4
  %29 = load i32, ptr %j, align 4
  %dec21 = add nsw i32 %29, -1
  store i32 %dec21, ptr %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then11
  %30 = load ptr, ptr %Array.addr, align 8
  %31 = load i32, ptr %i, align 4
  call void @quickSort(ptr noundef %30, i32 noundef %31)
  %32 = load ptr, ptr %Array.addr, align 8
  %33 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %33 to i64
  %add.ptr = getelementptr inbounds i32, ptr %32, i64 %idx.ext
  %34 = load i32, ptr %arraySize.addr, align 4
  %35 = load i32, ptr %i, align 4
  %sub22 = sub i32 %34, %35
  call void @quickSort(ptr noundef %add.ptr, i32 noundef %sub22)
  br label %if.end23

if.end23:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %numbers = alloca [100000 x i32], align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 100000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand()
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100000 x i32], ptr %numbers, i64 0, i64 %idxprom
  store i32 %call2, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [100000 x i32], ptr %numbers, i64 0, i64 0
  call void @quickSort(ptr noundef %arraydecay, i32 noundef 100000)
  ret i32 0
}

declare void @srand(i32 noundef) #1

declare i64 @time(ptr noundef) #1

declare i32 @rand() #1

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
