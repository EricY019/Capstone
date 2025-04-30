; ModuleID = './code/337-34808229.c'
source_filename = "./code/337-34808229.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.nums = private unnamed_addr constant [8 x i32] [i32 1, i32 1, i32 1, i32 3, i32 3, i32 2, i32 2, i32 2], align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %nums = alloca [8 x i32], align 4
  %numsSize = alloca i32, align 4
  %returnSize = alloca i32, align 4
  %value = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %nums, ptr align 4 @__const.main.nums, i64 32, i1 false)
  store i32 8, ptr %numsSize, align 4
  %arraydecay = getelementptr inbounds [8 x i32], ptr %nums, i64 0, i64 0
  %0 = load i32, ptr %numsSize, align 4
  %call = call ptr @majorityElement(ptr noundef %arraydecay, i32 noundef %0, ptr noundef %returnSize)
  store ptr %call, ptr %value, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %returnSize, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %value, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %value, align 8
  call void @free(ptr noundef %7)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @majorityElement(ptr noundef %nums, i32 noundef %numsSize, ptr noundef %returnSize) #0 {
entry:
  %retval = alloca ptr, align 8
  %nums.addr = alloca ptr, align 8
  %numsSize.addr = alloca i32, align 4
  %returnSize.addr = alloca ptr, align 8
  %result = alloca ptr, align 8
  %i = alloca i32, align 4
  %count1 = alloca i32, align 4
  %count2 = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %judge1 = alloca i32, align 4
  %judge2 = alloca i32, align 4
  store ptr %nums, ptr %nums.addr, align 8
  store i32 %numsSize, ptr %numsSize.addr, align 4
  store ptr %returnSize, ptr %returnSize.addr, align 8
  %call = call ptr @malloc(i64 noundef 8) #6
  store ptr %call, ptr %result, align 8
  %0 = load i32, ptr %numsSize.addr, align 4
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %result, align 8
  %2 = load ptr, ptr %nums.addr, align 8
  %3 = load i32, ptr %numsSize.addr, align 4
  %conv = sext i32 %3 to i64
  %mul = mul i64 4, %conv
  %4 = load ptr, ptr %result, align 8
  %5 = call i64 @llvm.objectsize.i64.p0(ptr %4, i1 false, i1 true, i1 false)
  %call1 = call ptr @__memcpy_chk(ptr noundef %1, ptr noundef %2, i64 noundef %mul, i64 noundef %5) #7
  %6 = load i32, ptr %numsSize.addr, align 4
  %7 = load ptr, ptr %returnSize.addr, align 8
  store i32 %6, ptr %7, align 4
  %8 = load ptr, ptr %result, align 8
  store ptr %8, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %result, align 8
  %arrayidx = getelementptr inbounds i32, ptr %9, i64 0
  store i32 0, ptr %arrayidx, align 4
  %10 = load ptr, ptr %result, align 8
  %arrayidx2 = getelementptr inbounds i32, ptr %10, i64 1
  store i32 0, ptr %arrayidx2, align 4
  store i32 0, ptr %count1, align 4
  store i32 0, ptr %count2, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %numsSize.addr, align 4
  %cmp3 = icmp slt i32 %11, %12
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %result, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %13, i64 0
  %14 = load i32, ptr %arrayidx5, align 4
  %15 = load ptr, ptr %nums.addr, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %15, i64 %idxprom
  %17 = load i32, ptr %arrayidx6, align 4
  %cmp7 = icmp eq i32 %14, %17
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %for.body
  %18 = load i32, ptr %count1, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %count1, align 4
  br label %if.end36

if.else:                                          ; preds = %for.body
  %19 = load ptr, ptr %result, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %19, i64 1
  %20 = load i32, ptr %arrayidx10, align 4
  %21 = load ptr, ptr %nums.addr, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %22 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %21, i64 %idxprom11
  %23 = load i32, ptr %arrayidx12, align 4
  %cmp13 = icmp eq i32 %20, %23
  br i1 %cmp13, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else
  %24 = load i32, ptr %count2, align 4
  %inc16 = add nsw i32 %24, 1
  store i32 %inc16, ptr %count2, align 4
  br label %if.end35

if.else17:                                        ; preds = %if.else
  %25 = load i32, ptr %count1, align 4
  %cmp18 = icmp eq i32 %25, 0
  br i1 %cmp18, label %if.then20, label %if.else24

if.then20:                                        ; preds = %if.else17
  %26 = load ptr, ptr %nums.addr, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %27 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %26, i64 %idxprom21
  %28 = load i32, ptr %arrayidx22, align 4
  %29 = load ptr, ptr %result, align 8
  %arrayidx23 = getelementptr inbounds i32, ptr %29, i64 0
  store i32 %28, ptr %arrayidx23, align 4
  store i32 1, ptr %count1, align 4
  br label %if.end34

if.else24:                                        ; preds = %if.else17
  %30 = load i32, ptr %count2, align 4
  %cmp25 = icmp eq i32 %30, 0
  br i1 %cmp25, label %if.then27, label %if.else31

if.then27:                                        ; preds = %if.else24
  %31 = load ptr, ptr %nums.addr, align 8
  %32 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %32 to i64
  %arrayidx29 = getelementptr inbounds i32, ptr %31, i64 %idxprom28
  %33 = load i32, ptr %arrayidx29, align 4
  %34 = load ptr, ptr %result, align 8
  %arrayidx30 = getelementptr inbounds i32, ptr %34, i64 1
  store i32 %33, ptr %arrayidx30, align 4
  store i32 1, ptr %count2, align 4
  br label %if.end33

if.else31:                                        ; preds = %if.else24
  %35 = load i32, ptr %count1, align 4
  %dec = add nsw i32 %35, -1
  store i32 %dec, ptr %count1, align 4
  %36 = load i32, ptr %count2, align 4
  %dec32 = add nsw i32 %36, -1
  store i32 %dec32, ptr %count2, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %if.then27
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then20
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then15
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then9
  br label %for.inc

for.inc:                                          ; preds = %if.end36
  %37 = load i32, ptr %i, align 4
  %inc37 = add nsw i32 %37, 1
  store i32 %inc37, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %count1, align 4
  store i32 0, ptr %count2, align 4
  %38 = load ptr, ptr %result, align 8
  %arrayidx38 = getelementptr inbounds i32, ptr %38, i64 0
  %39 = load i32, ptr %arrayidx38, align 4
  store i32 %39, ptr %a, align 4
  %40 = load ptr, ptr %result, align 8
  %arrayidx39 = getelementptr inbounds i32, ptr %40, i64 1
  %41 = load i32, ptr %arrayidx39, align 4
  store i32 %41, ptr %b, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc59, %for.end
  %42 = load i32, ptr %i, align 4
  %43 = load i32, ptr %numsSize.addr, align 4
  %cmp41 = icmp slt i32 %42, %43
  br i1 %cmp41, label %for.body43, label %for.end61

for.body43:                                       ; preds = %for.cond40
  %44 = load i32, ptr %a, align 4
  %45 = load ptr, ptr %nums.addr, align 8
  %46 = load i32, ptr %i, align 4
  %idxprom44 = sext i32 %46 to i64
  %arrayidx45 = getelementptr inbounds i32, ptr %45, i64 %idxprom44
  %47 = load i32, ptr %arrayidx45, align 4
  %cmp46 = icmp eq i32 %44, %47
  br i1 %cmp46, label %if.then48, label %if.else50

if.then48:                                        ; preds = %for.body43
  %48 = load i32, ptr %count1, align 4
  %inc49 = add nsw i32 %48, 1
  store i32 %inc49, ptr %count1, align 4
  br label %if.end58

if.else50:                                        ; preds = %for.body43
  %49 = load i32, ptr %b, align 4
  %50 = load ptr, ptr %nums.addr, align 8
  %51 = load i32, ptr %i, align 4
  %idxprom51 = sext i32 %51 to i64
  %arrayidx52 = getelementptr inbounds i32, ptr %50, i64 %idxprom51
  %52 = load i32, ptr %arrayidx52, align 4
  %cmp53 = icmp eq i32 %49, %52
  br i1 %cmp53, label %if.then55, label %if.end57

if.then55:                                        ; preds = %if.else50
  %53 = load i32, ptr %count2, align 4
  %inc56 = add nsw i32 %53, 1
  store i32 %inc56, ptr %count2, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.else50
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then48
  br label %for.inc59

for.inc59:                                        ; preds = %if.end58
  %54 = load i32, ptr %i, align 4
  %inc60 = add nsw i32 %54, 1
  store i32 %inc60, ptr %i, align 4
  br label %for.cond40, !llvm.loop !8

for.end61:                                        ; preds = %for.cond40
  %55 = load i32, ptr %count1, align 4
  %56 = load i32, ptr %numsSize.addr, align 4
  %div = sdiv i32 %56, 3
  %cmp62 = icmp sgt i32 %55, %div
  %conv63 = zext i1 %cmp62 to i32
  store i32 %conv63, ptr %judge1, align 4
  %57 = load i32, ptr %count2, align 4
  %58 = load i32, ptr %numsSize.addr, align 4
  %div64 = sdiv i32 %58, 3
  %cmp65 = icmp sgt i32 %57, %div64
  %conv66 = zext i1 %cmp65 to i32
  store i32 %conv66, ptr %judge2, align 4
  %59 = load i32, ptr %judge1, align 4
  %60 = load i32, ptr %judge2, align 4
  %add = add nsw i32 %59, %60
  %61 = load ptr, ptr %returnSize.addr, align 8
  store i32 %add, ptr %61, align 4
  %62 = load ptr, ptr %result, align 8
  %add.ptr = getelementptr inbounds i32, ptr %62, i64 1
  %63 = load i32, ptr %judge1, align 4
  %idx.ext = sext i32 %63 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr67 = getelementptr inbounds i32, ptr %add.ptr, i64 %idx.neg
  store ptr %add.ptr67, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end61, %if.then
  %64 = load ptr, ptr %retval, align 8
  ret ptr %64
}

declare i32 @printf(ptr noundef, ...) #2

declare void @free(ptr noundef) #2

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #5

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { allocsize(0) }
attributes #7 = { nounwind }

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
