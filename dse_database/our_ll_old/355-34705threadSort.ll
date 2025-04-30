; ModuleID = './code/355-34705threadSort.c'
source_filename = "./code/355-34705threadSort.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [17 x i8] c"Before Sort:  \0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"[ \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"After Sort:  \0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %arr = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @srand(i32 noundef 123456)
  %call = call ptr @malloc(i64 noundef 4000) #3
  store ptr %call, ptr %arr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 @rand()
  %rem = srem i32 %call1, 200
  %1 = load ptr, ptr %arr, align 8
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  store i32 %rem, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc15, %for.end
  %4 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %4, 1000
  br i1 %cmp4, label %for.body5, label %for.end17

for.body5:                                        ; preds = %for.cond3
  %5 = load i32, ptr %i, align 4
  %cmp6 = icmp eq i32 %5, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body5
  %6 = load ptr, ptr %arr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %6, i64 %idxprom8
  %8 = load i32, ptr %arrayidx9, align 4
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %8)
  %9 = load i32, ptr %i, align 4
  %cmp11 = icmp eq i32 %9, 999
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end
  br label %for.inc15

for.inc15:                                        ; preds = %if.end14
  %10 = load i32, ptr %i, align 4
  %inc16 = add nsw i32 %10, 1
  store i32 %inc16, ptr %i, align 4
  br label %for.cond3, !llvm.loop !7

for.end17:                                        ; preds = %for.cond3
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %11 = load ptr, ptr %arr, align 8
  call void @quicksort(ptr noundef %11, i32 noundef 0, i32 noundef 999)
  store i32 0, ptr %i, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc33, %for.end17
  %12 = load i32, ptr %i, align 4
  %cmp20 = icmp slt i32 %12, 1000
  br i1 %cmp20, label %for.body21, label %for.end35

for.body21:                                       ; preds = %for.cond19
  %13 = load i32, ptr %i, align 4
  %cmp22 = icmp eq i32 %13, 0
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %for.body21
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %for.body21
  %14 = load ptr, ptr %arr, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %15 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %14, i64 %idxprom26
  %16 = load i32, ptr %arrayidx27, align 4
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %16)
  %17 = load i32, ptr %i, align 4
  %cmp29 = icmp eq i32 %17, 999
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end25
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end25
  br label %for.inc33

for.inc33:                                        ; preds = %if.end32
  %18 = load i32, ptr %i, align 4
  %inc34 = add nsw i32 %18, 1
  store i32 %inc34, ptr %i, align 4
  br label %for.cond19, !llvm.loop !8

for.end35:                                        ; preds = %for.cond19
  %19 = load ptr, ptr %arr, align 8
  call void @free(ptr noundef %19)
  ret i32 0
}

declare void @srand(i32 noundef) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

declare i32 @rand() #1

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @quicksort(ptr noundef %arr, i32 noundef %low, i32 noundef %upp) #0 {
entry:
  %arr.addr = alloca ptr, align 8
  %low.addr = alloca i32, align 4
  %upp.addr = alloca i32, align 4
  %p = alloca i32, align 4
  store ptr %arr, ptr %arr.addr, align 8
  store i32 %low, ptr %low.addr, align 4
  store i32 %upp, ptr %upp.addr, align 4
  %0 = load i32, ptr %low.addr, align 4
  %1 = load i32, ptr %upp.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %arr.addr, align 8
  %3 = load i32, ptr %low.addr, align 4
  %4 = load i32, ptr %upp.addr, align 4
  %call = call i32 @partition(ptr noundef %2, i32 noundef %3, i32 noundef %4)
  store i32 %call, ptr %p, align 4
  %5 = load ptr, ptr %arr.addr, align 8
  %6 = load i32, ptr %low.addr, align 4
  %7 = load i32, ptr %p, align 4
  %sub = sub nsw i32 %7, 1
  call void @quicksort(ptr noundef %5, i32 noundef %6, i32 noundef %sub)
  %8 = load ptr, ptr %arr.addr, align 8
  %9 = load i32, ptr %p, align 4
  %add = add nsw i32 %9, 1
  %10 = load i32, ptr %upp.addr, align 4
  call void @quicksort(ptr noundef %8, i32 noundef %add, i32 noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @partition(ptr noundef %arr, i32 noundef %low, i32 noundef %upp) #0 {
entry:
  %arr.addr = alloca ptr, align 8
  %low.addr = alloca i32, align 4
  %upp.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %pivotIdx = alloca i32, align 4
  %pivotVal = alloca i32, align 4
  %storeIdx = alloca i32, align 4
  store ptr %arr, ptr %arr.addr, align 8
  store i32 %low, ptr %low.addr, align 4
  store i32 %upp, ptr %upp.addr, align 4
  %0 = load ptr, ptr %arr.addr, align 8
  %1 = load i32, ptr %low.addr, align 4
  %2 = load i32, ptr %upp.addr, align 4
  %call = call i32 @choosePivot(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  store i32 %call, ptr %pivotIdx, align 4
  %3 = load ptr, ptr %arr.addr, align 8
  %4 = load i32, ptr %pivotIdx, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  store i32 %5, ptr %pivotVal, align 4
  %6 = load ptr, ptr %arr.addr, align 8
  %7 = load i32, ptr %pivotIdx, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %6, i64 %idxprom1
  %8 = load ptr, ptr %arr.addr, align 8
  %9 = load i32, ptr %upp.addr, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %8, i64 %idxprom3
  call void @swaparr(ptr noundef %arrayidx2, ptr noundef %arrayidx4)
  %10 = load i32, ptr %low.addr, align 4
  store i32 %10, ptr %storeIdx, align 4
  %11 = load i32, ptr %low.addr, align 4
  store i32 %11, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, ptr %i, align 4
  %13 = load i32, ptr %upp.addr, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %arr.addr, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %15 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %14, i64 %idxprom5
  %16 = load i32, ptr %arrayidx6, align 4
  %17 = load i32, ptr %pivotVal, align 4
  %cmp7 = icmp slt i32 %16, %17
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %18 = load ptr, ptr %arr.addr, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %19 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %18, i64 %idxprom8
  %20 = load ptr, ptr %arr.addr, align 8
  %21 = load i32, ptr %storeIdx, align 4
  %idxprom10 = sext i32 %21 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %20, i64 %idxprom10
  call void @swaparr(ptr noundef %arrayidx9, ptr noundef %arrayidx11)
  %22 = load i32, ptr %storeIdx, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %storeIdx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, ptr %i, align 4
  %inc12 = add nsw i32 %23, 1
  store i32 %inc12, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %24 = load ptr, ptr %arr.addr, align 8
  %25 = load i32, ptr %storeIdx, align 4
  %idxprom13 = sext i32 %25 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %24, i64 %idxprom13
  %26 = load ptr, ptr %arr.addr, align 8
  %27 = load i32, ptr %upp.addr, align 4
  %idxprom15 = sext i32 %27 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %26, i64 %idxprom15
  call void @swaparr(ptr noundef %arrayidx14, ptr noundef %arrayidx16)
  %28 = load i32, ptr %storeIdx, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @choosePivot(ptr noundef %arr, i32 noundef %low, i32 noundef %upp) #0 {
entry:
  %arr.addr = alloca ptr, align 8
  %low.addr = alloca i32, align 4
  %upp.addr = alloca i32, align 4
  %mid = alloca i32, align 4
  store ptr %arr, ptr %arr.addr, align 8
  store i32 %low, ptr %low.addr, align 4
  store i32 %upp, ptr %upp.addr, align 4
  %0 = load i32, ptr %low.addr, align 4
  %1 = load i32, ptr %upp.addr, align 4
  %add = add nsw i32 %0, %1
  %div = sdiv i32 %add, 2
  store i32 %div, ptr %mid, align 4
  %2 = load ptr, ptr %arr.addr, align 8
  %3 = load i32, ptr %low.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %5 = load ptr, ptr %arr.addr, align 8
  %6 = load i32, ptr %upp.addr, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %5, i64 %idxprom1
  %7 = load i32, ptr %arrayidx2, align 4
  %cmp = icmp sgt i32 %4, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %low.addr, align 4
  %9 = load i32, ptr %upp.addr, align 4
  call void @swapval(i32 noundef %8, i32 noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %arr.addr, align 8
  %11 = load i32, ptr %mid, align 4
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %10, i64 %idxprom3
  %12 = load i32, ptr %arrayidx4, align 4
  %13 = load ptr, ptr %arr.addr, align 8
  %14 = load i32, ptr %low.addr, align 4
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %13, i64 %idxprom5
  %15 = load i32, ptr %arrayidx6, align 4
  %cmp7 = icmp slt i32 %12, %15
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  %16 = load i32, ptr %mid, align 4
  %17 = load i32, ptr %low.addr, align 4
  call void @swapval(i32 noundef %16, i32 noundef %17)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  %18 = load ptr, ptr %arr.addr, align 8
  %19 = load i32, ptr %upp.addr, align 4
  %idxprom10 = sext i32 %19 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %18, i64 %idxprom10
  %20 = load i32, ptr %arrayidx11, align 4
  %21 = load ptr, ptr %arr.addr, align 8
  %22 = load i32, ptr %mid, align 4
  %idxprom12 = sext i32 %22 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %21, i64 %idxprom12
  %23 = load i32, ptr %arrayidx13, align 4
  %cmp14 = icmp slt i32 %20, %23
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end9
  %24 = load i32, ptr %mid, align 4
  %25 = load i32, ptr %upp.addr, align 4
  call void @swapval(i32 noundef %24, i32 noundef %25)
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end9
  %26 = load i32, ptr %mid, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @swaparr(ptr noundef %x, ptr noundef %y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8
  store ptr %y, ptr %y.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %tmp, align 4
  %2 = load ptr, ptr %y.addr, align 8
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr %x.addr, align 8
  store i32 %3, ptr %4, align 4
  %5 = load i32, ptr %tmp, align 4
  %6 = load ptr, ptr %y.addr, align 8
  store i32 %5, ptr %6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @swapval(i32 noundef %x, i32 noundef %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  store i32 %0, ptr %tmp, align 4
  %1 = load i32, ptr %y.addr, align 4
  store i32 %1, ptr %x.addr, align 4
  %2 = load i32, ptr %tmp, align 4
  store i32 %2, ptr %y.addr, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

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
