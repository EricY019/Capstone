; ModuleID = './code/260-11765majority-element.c'
source_filename = "./code/260-11765majority-element.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [7 x i8] c"%d,%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d,\0A\00", align 1
@__const.main.nums1 = private unnamed_addr constant [5 x i32] [i32 6, i32 6, i32 6, i32 7, i32 7], align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @partition(ptr noundef %nums, i32 noundef %start, i32 noundef %end) #0 {
entry:
  %retval = alloca i32, align 4
  %nums.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %v = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %nums, ptr %nums.addr, align 8
  store i32 %start, ptr %start.addr, align 4
  store i32 %end, ptr %end.addr, align 4
  %0 = load i32, ptr %start.addr, align 4
  %1 = load i32, ptr %end.addr, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %start.addr, align 4
  store i32 %2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %nums.addr, align 8
  %4 = load i32, ptr %start.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  store i32 %5, ptr %v, align 4
  %6 = load i32, ptr %start.addr, align 4
  store i32 %6, ptr %i, align 4
  %7 = load i32, ptr %end.addr, align 4
  store i32 %7, ptr %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end27, %if.end
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %j, align 4
  %cmp1 = icmp ne i32 %8, %9
  br i1 %cmp1, label %while.body, label %while.end28

while.body:                                       ; preds = %while.cond
  br label %while.cond2

while.cond2:                                      ; preds = %while.body7, %while.body
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %j, align 4
  %cmp3 = icmp slt i32 %10, %11
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond2
  %12 = load ptr, ptr %nums.addr, align 8
  %13 = load i32, ptr %j, align 4
  %idxprom4 = sext i32 %13 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %12, i64 %idxprom4
  %14 = load i32, ptr %arrayidx5, align 4
  %15 = load i32, ptr %v, align 4
  %cmp6 = icmp sge i32 %14, %15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond2
  %16 = phi i1 [ false, %while.cond2 ], [ %cmp6, %land.rhs ]
  br i1 %16, label %while.body7, label %while.end

while.body7:                                      ; preds = %land.end
  %17 = load i32, ptr %j, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, ptr %j, align 4
  br label %while.cond2, !llvm.loop !5

while.end:                                        ; preds = %land.end
  br label %while.cond8

while.cond8:                                      ; preds = %while.body15, %while.end
  %18 = load i32, ptr %i, align 4
  %19 = load i32, ptr %j, align 4
  %cmp9 = icmp slt i32 %18, %19
  br i1 %cmp9, label %land.rhs10, label %land.end14

land.rhs10:                                       ; preds = %while.cond8
  %20 = load ptr, ptr %nums.addr, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %21 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %20, i64 %idxprom11
  %22 = load i32, ptr %arrayidx12, align 4
  %23 = load i32, ptr %v, align 4
  %cmp13 = icmp sle i32 %22, %23
  br label %land.end14

land.end14:                                       ; preds = %land.rhs10, %while.cond8
  %24 = phi i1 [ false, %while.cond8 ], [ %cmp13, %land.rhs10 ]
  br i1 %24, label %while.body15, label %while.end16

while.body15:                                     ; preds = %land.end14
  %25 = load i32, ptr %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond8, !llvm.loop !7

while.end16:                                      ; preds = %land.end14
  %26 = load i32, ptr %i, align 4
  %27 = load i32, ptr %j, align 4
  %cmp17 = icmp slt i32 %26, %27
  br i1 %cmp17, label %if.then18, label %if.end27

if.then18:                                        ; preds = %while.end16
  %28 = load ptr, ptr %nums.addr, align 8
  %29 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %29 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %28, i64 %idxprom19
  %30 = load i32, ptr %arrayidx20, align 4
  store i32 %30, ptr %tmp, align 4
  %31 = load ptr, ptr %nums.addr, align 8
  %32 = load i32, ptr %j, align 4
  %idxprom21 = sext i32 %32 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %31, i64 %idxprom21
  %33 = load i32, ptr %arrayidx22, align 4
  %34 = load ptr, ptr %nums.addr, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom23 = sext i32 %35 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %34, i64 %idxprom23
  store i32 %33, ptr %arrayidx24, align 4
  %36 = load i32, ptr %tmp, align 4
  %37 = load ptr, ptr %nums.addr, align 8
  %38 = load i32, ptr %j, align 4
  %idxprom25 = sext i32 %38 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %37, i64 %idxprom25
  store i32 %36, ptr %arrayidx26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then18, %while.end16
  %39 = load i32, ptr %i, align 4
  %40 = load i32, ptr %j, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %39, i32 noundef %40)
  br label %while.cond, !llvm.loop !8

while.end28:                                      ; preds = %while.cond
  %41 = load ptr, ptr %nums.addr, align 8
  %42 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %42 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %41, i64 %idxprom29
  %43 = load i32, ptr %arrayidx30, align 4
  %44 = load ptr, ptr %nums.addr, align 8
  %45 = load i32, ptr %start.addr, align 4
  %idxprom31 = sext i32 %45 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %44, i64 %idxprom31
  store i32 %43, ptr %arrayidx32, align 4
  %46 = load i32, ptr %v, align 4
  %47 = load ptr, ptr %nums.addr, align 8
  %48 = load i32, ptr %i, align 4
  %idxprom33 = sext i32 %48 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %47, i64 %idxprom33
  store i32 %46, ptr %arrayidx34, align 4
  %49 = load i32, ptr %i, align 4
  store i32 %49, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end28, %if.then
  %50 = load i32, ptr %retval, align 4
  ret i32 %50
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @majorityElement(ptr noundef %nums, i32 noundef %numsSize) #0 {
entry:
  %nums.addr = alloca ptr, align 8
  %numsSize.addr = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %index = alloca i32, align 4
  %mid = alloca i32, align 4
  store ptr %nums, ptr %nums.addr, align 8
  store i32 %numsSize, ptr %numsSize.addr, align 4
  store i32 0, ptr %start, align 4
  %0 = load i32, ptr %numsSize.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, ptr %end, align 4
  %1 = load ptr, ptr %nums.addr, align 8
  %2 = load i32, ptr %start, align 4
  %3 = load i32, ptr %end, align 4
  %call = call i32 @partition(ptr noundef %1, i32 noundef %2, i32 noundef %3)
  store i32 %call, ptr %index, align 4
  %4 = load i32, ptr %numsSize.addr, align 4
  %div = sdiv i32 %4, 2
  store i32 %div, ptr %mid, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load i32, ptr %index, align 4
  %6 = load i32, ptr %mid, align 4
  %cmp = icmp ne i32 %5, %6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, ptr %index, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %7)
  %8 = load i32, ptr %index, align 4
  %9 = load i32, ptr %mid, align 4
  %cmp2 = icmp sgt i32 %8, %9
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %10 = load i32, ptr %index, align 4
  %sub3 = sub nsw i32 %10, 1
  store i32 %sub3, ptr %end, align 4
  %11 = load ptr, ptr %nums.addr, align 8
  %12 = load i32, ptr %start, align 4
  %13 = load i32, ptr %end, align 4
  %call4 = call i32 @partition(ptr noundef %11, i32 noundef %12, i32 noundef %13)
  store i32 %call4, ptr %index, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %14 = load i32, ptr %index, align 4
  %add = add nsw i32 %14, 1
  store i32 %add, ptr %start, align 4
  %15 = load ptr, ptr %nums.addr, align 8
  %16 = load i32, ptr %start, align 4
  %17 = load i32, ptr %end, align 4
  %call5 = call i32 @partition(ptr noundef %15, i32 noundef %16, i32 noundef %17)
  store i32 %call5, ptr %index, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %18 = load ptr, ptr %nums.addr, align 8
  %19 = load i32, ptr %mid, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds i32, ptr %18, i64 %idxprom
  %20 = load i32, ptr %arrayidx, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %nums1 = alloca [5 x i32], align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %nums1, ptr align 4 @__const.main.nums1, i64 20, i1 false)
  %arraydecay = getelementptr inbounds [5 x i32], ptr %nums1, i64 0, i64 0
  %call = call i32 @majorityElement(ptr noundef %arraydecay, i32 noundef 5)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %call)
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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
