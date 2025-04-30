; ModuleID = './code/005-8796lis.c'
source_filename = "./code/005-8796lis.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @lengthOfLIS(ptr noundef %nums, i32 noundef %numsSize) #0 {
entry:
  %nums.addr = alloca ptr, align 8
  %numsSize.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %piles = alloca i32, align 4
  %tops = alloca ptr, align 8
  %pos = alloca i32, align 4
  store ptr %nums, ptr %nums.addr, align 8
  store i32 %numsSize, ptr %numsSize.addr, align 4
  store i32 0, ptr %piles, align 4
  %0 = load i32, ptr %numsSize.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call = call ptr @malloc(i64 noundef %mul) #3
  store ptr %call, ptr %tops, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %numsSize.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %tops, align 8
  %4 = load i32, ptr %piles, align 4
  %5 = load ptr, ptr %nums.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4
  %call2 = call i32 @binary_search(ptr noundef %3, i32 noundef -1, i32 noundef %4, i32 noundef %7)
  store i32 %call2, ptr %pos, align 4
  %8 = load i32, ptr %pos, align 4
  %9 = load i32, ptr %piles, align 4
  %cmp3 = icmp eq i32 %8, %9
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i32, ptr %piles, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %piles, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %11 = load ptr, ptr %nums.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %11, i64 %idxprom5
  %13 = load i32, ptr %arrayidx6, align 4
  %14 = load ptr, ptr %tops, align 8
  %15 = load i32, ptr %pos, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %14, i64 %idxprom7
  store i32 %13, ptr %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, ptr %i, align 4
  %inc9 = add nsw i32 %16, 1
  store i32 %inc9, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %17 = load i32, ptr %piles, align 4
  ret i32 %17
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @binary_search(ptr noundef %nums, i32 noundef %lo, i32 noundef %hi, i32 noundef %target) #0 {
entry:
  %nums.addr = alloca ptr, align 8
  %lo.addr = alloca i32, align 4
  %hi.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %mid = alloca i32, align 4
  store ptr %nums, ptr %nums.addr, align 8
  store i32 %lo, ptr %lo.addr, align 4
  store i32 %hi, ptr %hi.addr, align 4
  store i32 %target, ptr %target.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %lo.addr, align 4
  %add = add nsw i32 %0, 1
  %1 = load i32, ptr %hi.addr, align 4
  %cmp = icmp slt i32 %add, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %lo.addr, align 4
  %3 = load i32, ptr %hi.addr, align 4
  %4 = load i32, ptr %lo.addr, align 4
  %sub = sub nsw i32 %3, %4
  %div = sdiv i32 %sub, 2
  %add1 = add nsw i32 %2, %div
  store i32 %add1, ptr %mid, align 4
  %5 = load ptr, ptr %nums.addr, align 8
  %6 = load i32, ptr %mid, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4
  %8 = load i32, ptr %target.addr, align 4
  %cmp2 = icmp slt i32 %7, %8
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %9 = load i32, ptr %mid, align 4
  store i32 %9, ptr %lo.addr, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %10 = load i32, ptr %mid, align 4
  store i32 %10, ptr %hi.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %11 = load i32, ptr %hi.addr, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %nums = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %sub = sub nsw i32 %0, 1
  %conv = sext i32 %sub to i64
  %mul = mul i64 %conv, 4
  %call = call ptr @malloc(i64 noundef %mul) #3
  store ptr %call, ptr %nums, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %argc.addr, align 4
  %sub1 = sub nsw i32 %2, 1
  %cmp = icmp slt i32 %1, %sub1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %argv.addr, align 8
  %4 = load i32, ptr %i, align 4
  %add = add nsw i32 %4, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  %call3 = call i32 @atoi(ptr noundef %5)
  %6 = load ptr, ptr %nums, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %6, i64 %idxprom4
  store i32 %call3, ptr %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %nums, align 8
  %10 = load i32, ptr %argc.addr, align 4
  %sub6 = sub nsw i32 %10, 1
  %call7 = call i32 @lengthOfLIS(ptr noundef %9, i32 noundef %sub6)
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %call7)
  ret i32 0
}

declare i32 @atoi(ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
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
