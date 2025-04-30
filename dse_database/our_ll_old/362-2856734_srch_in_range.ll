; ModuleID = './code/362-2856734_srch_in_range.c'
source_filename = "./code/362-2856734_srch_in_range.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.arr = private unnamed_addr constant [6 x i32] [i32 5, i32 7, i32 7, i32 8, i32 8, i32 10], align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @searchRange(ptr noundef %nums, i32 noundef %numsSize, i32 noundef %target, ptr noundef %returnSize) #0 {
entry:
  %retval = alloca ptr, align 8
  %nums.addr = alloca ptr, align 8
  %numsSize.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %returnSize.addr = alloca ptr, align 8
  %res = alloca ptr, align 8
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %mid = alloca i32, align 4
  store ptr %nums, ptr %nums.addr, align 8
  store i32 %numsSize, ptr %numsSize.addr, align 4
  store i32 %target, ptr %target.addr, align 4
  store ptr %returnSize, ptr %returnSize.addr, align 8
  %call = call ptr @malloc(i64 noundef 8) #3
  store ptr %call, ptr %res, align 8
  %0 = load ptr, ptr %returnSize.addr, align 8
  store i32 2, ptr %0, align 4
  store i32 -1, ptr %left, align 4
  %1 = load i32, ptr %numsSize.addr, align 4
  store i32 %1, ptr %right, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i32, ptr %left, align 4
  %add = add nsw i32 %2, 1
  %3 = load i32, ptr %right, align 4
  %cmp = icmp ne i32 %add, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %left, align 4
  %5 = load i32, ptr %right, align 4
  %add1 = add nsw i32 %4, %5
  %div = sdiv i32 %add1, 2
  store i32 %div, ptr %mid, align 4
  %6 = load ptr, ptr %nums.addr, align 8
  %7 = load i32, ptr %mid, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, ptr %6, i64 %idxprom
  %8 = load i32, ptr %arrayidx, align 4
  %9 = load i32, ptr %target.addr, align 4
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %10 = load i32, ptr %mid, align 4
  store i32 %10, ptr %left, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %11 = load i32, ptr %mid, align 4
  store i32 %11, ptr %right, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %12 = load i32, ptr %right, align 4
  %13 = load i32, ptr %numsSize.addr, align 4
  %cmp3 = icmp sge i32 %12, %13
  br i1 %cmp3, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %14 = load ptr, ptr %nums.addr, align 8
  %15 = load i32, ptr %right, align 4
  %idxprom4 = sext i32 %15 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %14, i64 %idxprom4
  %16 = load i32, ptr %arrayidx5, align 4
  %17 = load i32, ptr %target.addr, align 4
  %cmp6 = icmp ne i32 %16, %17
  br i1 %cmp6, label %if.then7, label %if.else10

if.then7:                                         ; preds = %lor.lhs.false, %while.end
  %18 = load ptr, ptr %res, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %18, i64 1
  store i32 -1, ptr %arrayidx8, align 4
  %19 = load ptr, ptr %res, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %19, i64 0
  store i32 -1, ptr %arrayidx9, align 4
  %20 = load ptr, ptr %res, align 8
  store ptr %20, ptr %retval, align 8
  br label %return

if.else10:                                        ; preds = %lor.lhs.false
  %21 = load i32, ptr %right, align 4
  %22 = load ptr, ptr %res, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %22, i64 0
  store i32 %21, ptr %arrayidx11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else10
  store i32 -1, ptr %left, align 4
  %23 = load i32, ptr %numsSize.addr, align 4
  store i32 %23, ptr %right, align 4
  br label %while.cond13

while.cond13:                                     ; preds = %if.end24, %if.end12
  %24 = load i32, ptr %left, align 4
  %add14 = add nsw i32 %24, 1
  %25 = load i32, ptr %right, align 4
  %cmp15 = icmp ne i32 %add14, %25
  br i1 %cmp15, label %while.body16, label %while.end25

while.body16:                                     ; preds = %while.cond13
  %26 = load i32, ptr %left, align 4
  %27 = load i32, ptr %right, align 4
  %add17 = add nsw i32 %26, %27
  %div18 = sdiv i32 %add17, 2
  store i32 %div18, ptr %mid, align 4
  %28 = load ptr, ptr %nums.addr, align 8
  %29 = load i32, ptr %mid, align 4
  %idxprom19 = sext i32 %29 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %28, i64 %idxprom19
  %30 = load i32, ptr %arrayidx20, align 4
  %31 = load i32, ptr %target.addr, align 4
  %cmp21 = icmp sle i32 %30, %31
  br i1 %cmp21, label %if.then22, label %if.else23

if.then22:                                        ; preds = %while.body16
  %32 = load i32, ptr %mid, align 4
  store i32 %32, ptr %left, align 4
  br label %if.end24

if.else23:                                        ; preds = %while.body16
  %33 = load i32, ptr %mid, align 4
  store i32 %33, ptr %right, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else23, %if.then22
  br label %while.cond13, !llvm.loop !7

while.end25:                                      ; preds = %while.cond13
  %34 = load i32, ptr %left, align 4
  %35 = load ptr, ptr %res, align 8
  %arrayidx26 = getelementptr inbounds i32, ptr %35, i64 1
  store i32 %34, ptr %arrayidx26, align 4
  %36 = load ptr, ptr %res, align 8
  store ptr %36, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end25, %if.then7
  %37 = load ptr, ptr %retval, align 8
  ret ptr %37
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [6 x i32], align 4
  %a = alloca ptr, align 8
  %n = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 4 @__const.main.arr, i64 24, i1 false)
  %arraydecay = getelementptr inbounds [6 x i32], ptr %arr, i64 0, i64 0
  %call = call ptr @searchRange(ptr noundef %arraydecay, i32 noundef 6, i32 noundef 8, ptr noundef %n)
  store ptr %call, ptr %a, align 8
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
