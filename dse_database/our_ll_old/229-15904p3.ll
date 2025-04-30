; ModuleID = './code/229-15904p3.c'
source_filename = "./code/229-15904p3.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [32 x i8] c"\0Aleft: %d, right: %d, midpt: %d\00", align 1
@__const.main.ar = private unnamed_addr constant [10 x i32] [i32 5, i32 6, i32 7, i32 8, i32 9, i32 0, i32 1, i32 2, i32 3, i32 4], align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"\0A %d \0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @binarySearch(i32 noundef %target, ptr noundef %arr, i32 noundef %leftBound, i32 noundef %rightBound) #0 {
entry:
  %retval = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %arr.addr = alloca ptr, align 8
  %leftBound.addr = alloca i32, align 4
  %rightBound.addr = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %midptIdx = alloca i32, align 4
  %midpt = alloca i32, align 4
  store i32 %target, ptr %target.addr, align 4
  store ptr %arr, ptr %arr.addr, align 8
  store i32 %leftBound, ptr %leftBound.addr, align 4
  store i32 %rightBound, ptr %rightBound.addr, align 4
  %0 = load ptr, ptr %arr.addr, align 8
  %1 = load i32, ptr %leftBound.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %left, align 4
  %3 = load ptr, ptr %arr.addr, align 8
  %4 = load i32, ptr %rightBound.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %3, i64 %idxprom1
  %5 = load i32, ptr %arrayidx2, align 4
  store i32 %5, ptr %right, align 4
  %6 = load i32, ptr %rightBound.addr, align 4
  %7 = load i32, ptr %leftBound.addr, align 4
  %add = add nsw i32 %6, %7
  %div = sdiv i32 %add, 2
  store i32 %div, ptr %midptIdx, align 4
  %8 = load ptr, ptr %arr.addr, align 8
  %9 = load i32, ptr %midptIdx, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %8, i64 %idxprom3
  %10 = load i32, ptr %arrayidx4, align 4
  store i32 %10, ptr %midpt, align 4
  %11 = load i32, ptr %leftBound.addr, align 4
  %12 = load i32, ptr %rightBound.addr, align 4
  %13 = load i32, ptr %midptIdx, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %11, i32 noundef %12, i32 noundef %13)
  %14 = load i32, ptr %left, align 4
  %15 = load i32, ptr %target.addr, align 4
  %cmp = icmp eq i32 %14, %15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load i32, ptr %leftBound.addr, align 4
  store i32 %16, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %17 = load i32, ptr %right, align 4
  %18 = load i32, ptr %target.addr, align 4
  %cmp5 = icmp eq i32 %17, %18
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %19 = load i32, ptr %rightBound.addr, align 4
  store i32 %19, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %20 = load i32, ptr %midpt, align 4
  %21 = load i32, ptr %target.addr, align 4
  %cmp8 = icmp eq i32 %20, %21
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  %22 = load i32, ptr %midptIdx, align 4
  store i32 %22, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end7
  %23 = load i32, ptr %midpt, align 4
  %24 = load i32, ptr %target.addr, align 4
  %cmp11 = icmp slt i32 %23, %24
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %25 = load i32, ptr %target.addr, align 4
  %26 = load ptr, ptr %arr.addr, align 8
  %27 = load i32, ptr %midptIdx, align 4
  %28 = load i32, ptr %rightBound.addr, align 4
  %call13 = call i32 @binarySearch(i32 noundef %25, ptr noundef %26, i32 noundef %27, i32 noundef %28)
  store i32 %call13, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end10
  %29 = load i32, ptr %target.addr, align 4
  %30 = load ptr, ptr %arr.addr, align 8
  %31 = load i32, ptr %leftBound.addr, align 4
  %32 = load i32, ptr %midptIdx, align 4
  %call15 = call i32 @binarySearch(i32 noundef %29, ptr noundef %30, i32 noundef %31, i32 noundef %32)
  store i32 %call15, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then12, %if.then9, %if.then6, %if.then
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @binarySearchMin(ptr noundef %arr, i32 noundef %leftBound, i32 noundef %rightBound) #0 {
entry:
  %retval = alloca i32, align 4
  %arr.addr = alloca ptr, align 8
  %leftBound.addr = alloca i32, align 4
  %rightBound.addr = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %midptIdx = alloca i32, align 4
  %midpt = alloca i32, align 4
  store ptr %arr, ptr %arr.addr, align 8
  store i32 %leftBound, ptr %leftBound.addr, align 4
  store i32 %rightBound, ptr %rightBound.addr, align 4
  %0 = load ptr, ptr %arr.addr, align 8
  %1 = load i32, ptr %leftBound.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %left, align 4
  %3 = load ptr, ptr %arr.addr, align 8
  %4 = load i32, ptr %rightBound.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %3, i64 %idxprom1
  %5 = load i32, ptr %arrayidx2, align 4
  store i32 %5, ptr %right, align 4
  %6 = load i32, ptr %rightBound.addr, align 4
  %7 = load i32, ptr %leftBound.addr, align 4
  %add = add nsw i32 %6, %7
  %div = sdiv i32 %add, 2
  store i32 %div, ptr %midptIdx, align 4
  %8 = load ptr, ptr %arr.addr, align 8
  %9 = load i32, ptr %midptIdx, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %8, i64 %idxprom3
  %10 = load i32, ptr %arrayidx4, align 4
  store i32 %10, ptr %midpt, align 4
  %11 = load i32, ptr %leftBound.addr, align 4
  %12 = load i32, ptr %rightBound.addr, align 4
  %13 = load i32, ptr %midptIdx, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %11, i32 noundef %12, i32 noundef %13)
  %14 = load i32, ptr %rightBound.addr, align 4
  %15 = load i32, ptr %leftBound.addr, align 4
  %sub = sub nsw i32 %14, %15
  %cmp = icmp eq i32 %sub, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %16 = load i32, ptr %rightBound.addr, align 4
  %17 = load i32, ptr %leftBound.addr, align 4
  %cmp5 = icmp eq i32 %16, %17
  br i1 %cmp5, label %if.then, label %if.end8

if.then:                                          ; preds = %lor.lhs.false, %entry
  %18 = load i32, ptr %right, align 4
  %19 = load i32, ptr %left, align 4
  %cmp6 = icmp sge i32 %18, %19
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %20 = load i32, ptr %leftBound.addr, align 4
  store i32 %20, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %21 = load i32, ptr %rightBound.addr, align 4
  store i32 %21, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %lor.lhs.false
  %22 = load i32, ptr %midpt, align 4
  %23 = load i32, ptr %left, align 4
  %cmp9 = icmp slt i32 %22, %23
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %24 = load ptr, ptr %arr.addr, align 8
  %25 = load i32, ptr %leftBound.addr, align 4
  %26 = load i32, ptr %midptIdx, align 4
  %call11 = call i32 @binarySearchMin(ptr noundef %24, i32 noundef %25, i32 noundef %26)
  store i32 %call11, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end8
  %27 = load ptr, ptr %arr.addr, align 8
  %28 = load i32, ptr %midptIdx, align 4
  %29 = load i32, ptr %rightBound.addr, align 4
  %call13 = call i32 @binarySearchMin(ptr noundef %27, i32 noundef %28, i32 noundef %29)
  store i32 %call13, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then10, %if.end, %if.then7
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @searchRotatedArray(i32 noundef %target, ptr noundef %arr, i32 noundef %arrLen) #0 {
entry:
  %retval = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %arr.addr = alloca ptr, align 8
  %arrLen.addr = alloca i32, align 4
  %minIdx = alloca i32, align 4
  store i32 %target, ptr %target.addr, align 4
  store ptr %arr, ptr %arr.addr, align 8
  store i32 %arrLen, ptr %arrLen.addr, align 4
  %0 = load ptr, ptr %arr.addr, align 8
  %1 = load i32, ptr %arrLen.addr, align 4
  %sub = sub nsw i32 %1, 1
  %call = call i32 @binarySearchMin(ptr noundef %0, i32 noundef 0, i32 noundef %sub)
  store i32 %call, ptr %minIdx, align 4
  %2 = load i32, ptr %target.addr, align 4
  %3 = load ptr, ptr %arr.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 0
  %4 = load i32, ptr %arrayidx, align 4
  %cmp = icmp sge i32 %2, %4
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %arr.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %5, i64 0
  %6 = load i32, ptr %arrayidx1, align 4
  %7 = load ptr, ptr %arr.addr, align 8
  %8 = load i32, ptr %minIdx, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %7, i64 %idxprom
  %9 = load i32, ptr %arrayidx2, align 4
  %cmp3 = icmp sgt i32 %6, %9
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %10 = load i32, ptr %target.addr, align 4
  %11 = load ptr, ptr %arr.addr, align 8
  %12 = load i32, ptr %minIdx, align 4
  %sub4 = sub nsw i32 %12, 1
  %call5 = call i32 @binarySearch(i32 noundef %10, ptr noundef %11, i32 noundef 0, i32 noundef %sub4)
  store i32 %call5, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %13 = load i32, ptr %target.addr, align 4
  %14 = load ptr, ptr %arr.addr, align 8
  %15 = load i32, ptr %minIdx, align 4
  %16 = load i32, ptr %arrLen.addr, align 4
  %sub6 = sub nsw i32 %16, 1
  %call7 = call i32 @binarySearch(i32 noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %sub6)
  store i32 %call7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %ar = alloca [10 x i32], align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %ar, ptr align 4 @__const.main.ar, i64 40, i1 false)
  %arraydecay = getelementptr inbounds [10 x i32], ptr %ar, i64 0, i64 0
  %call = call i32 @searchRotatedArray(i32 noundef 8, ptr noundef %arraydecay, i32 noundef 10)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %call)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
