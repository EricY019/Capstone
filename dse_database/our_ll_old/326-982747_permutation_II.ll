; ModuleID = './code/326-982747_permutation_II.c'
source_filename = "./code/326-982747_permutation_II.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@p = internal global i32 0, align 4
@res = internal global ptr null, align 8
@__const.main.x = private unnamed_addr constant [3 x i32] [i32 1, i32 1, i32 2], align 4
@ans = internal global ptr null, align 8
@occupy = internal global ptr null, align 8
@maxp = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @permuteUnique(ptr noundef %nums, i32 noundef %numsSize, ptr noundef %returnSize) #0 {
entry:
  %retval = alloca ptr, align 8
  %nums.addr = alloca ptr, align 8
  %numsSize.addr = alloca i32, align 4
  %returnSize.addr = alloca ptr, align 8
  store ptr %nums, ptr %nums.addr, align 8
  store i32 %numsSize, ptr %numsSize.addr, align 4
  store ptr %returnSize, ptr %returnSize.addr, align 8
  %0 = load i32, ptr %numsSize.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %returnSize.addr, align 8
  store i32 0, ptr %1, align 4
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %numsSize.addr, align 4
  call void @init(i32 noundef %2)
  %3 = load ptr, ptr %nums.addr, align 8
  %4 = load i32, ptr %numsSize.addr, align 4
  call void @do_perm(ptr noundef %3, i32 noundef %4, i32 noundef 0)
  call void @deinit()
  %5 = load i32, ptr @p, align 4
  %6 = load ptr, ptr %returnSize.addr, align 8
  store i32 %5, ptr %6, align 4
  %7 = load ptr, ptr @res, align 8
  store ptr %7, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load ptr, ptr %retval, align 8
  ret ptr %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @init(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call = call ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr @ans, align 8
  %1 = load i32, ptr %n.addr, align 4
  %conv1 = sext i32 %1 to i64
  %call2 = call ptr @calloc(i64 noundef %conv1, i64 noundef 1) #9
  store ptr %call2, ptr @occupy, align 8
  store ptr null, ptr @res, align 8
  store i32 0, ptr @p, align 4
  store i32 0, ptr @maxp, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @do_perm(ptr noundef %nums, i32 noundef %n, i32 noundef %start) #0 {
entry:
  %nums.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %start.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %nums, ptr %nums.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store i32 %start, ptr %start.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %1 = load i32, ptr %start.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %n.addr, align 4
  call void @add_ans(i32 noundef %2)
  br label %for.end

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %n.addr, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr @occupy, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  %7 = load i8, ptr %arrayidx, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %if.then2, label %if.end3

if.then2:                                         ; preds = %for.body
  br label %for.inc

if.end3:                                          ; preds = %for.body
  %8 = load ptr, ptr @occupy, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %8, i64 %idxprom4
  store i8 1, ptr %arrayidx5, align 1
  %10 = load ptr, ptr %nums.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %10, i64 %idxprom6
  %12 = load i32, ptr %arrayidx7, align 4
  %13 = load ptr, ptr @ans, align 8
  %14 = load i32, ptr %start.addr, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %13, i64 %idxprom8
  store i32 %12, ptr %arrayidx9, align 4
  %15 = load ptr, ptr %nums.addr, align 8
  %16 = load i32, ptr %n.addr, align 4
  %17 = load i32, ptr %start.addr, align 4
  %add = add nsw i32 %17, 1
  call void @do_perm(ptr noundef %15, i32 noundef %16, i32 noundef %add)
  %18 = load ptr, ptr @occupy, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %19 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %18, i64 %idxprom10
  store i8 0, ptr %arrayidx11, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end3, %if.then2
  %20 = load i32, ptr %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @deinit() #0 {
entry:
  %0 = load ptr, ptr @ans, align 8
  call void @free(ptr noundef %0)
  %1 = load ptr, ptr @occupy, align 8
  call void @free(ptr noundef %1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %res = alloca ptr, align 8
  %ret = alloca i32, align 4
  %x = alloca [3 x i32], align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %x, ptr align 4 @__const.main.x, i64 12, i1 false)
  %arraydecay = getelementptr inbounds [3 x i32], ptr %x, i64 0, i64 0
  %call = call ptr @permuteUnique(ptr noundef %arraydecay, i32 noundef 3, ptr noundef %ret)
  store ptr %call, ptr %res, align 8
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @add_ans(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr @p, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr @res, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  %5 = load ptr, ptr @ans, align 8
  %6 = load i32, ptr %n.addr, align 4
  %conv = sext i32 %6 to i64
  %mul = mul i64 %conv, 4
  %call = call i32 @memcmp(ptr noundef %4, ptr noundef %5, i64 noundef %mul)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr @res, align 8
  %tobool1 = icmp ne ptr %8, null
  br i1 %tobool1, label %if.end6, label %if.then2

if.then2:                                         ; preds = %for.end
  store i32 8, ptr @maxp, align 4
  %9 = load i32, ptr @maxp, align 4
  %conv3 = sext i32 %9 to i64
  %mul4 = mul i64 %conv3, 8
  %call5 = call ptr @malloc(i64 noundef %mul4) #8
  store ptr %call5, ptr @res, align 8
  store i32 0, ptr @p, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %for.end
  %10 = load i32, ptr @p, align 4
  %11 = load i32, ptr @maxp, align 4
  %cmp7 = icmp sge i32 %10, %11
  br i1 %cmp7, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end6
  %12 = load i32, ptr @maxp, align 4
  %add = add nsw i32 %12, 8
  store i32 %add, ptr @maxp, align 4
  %13 = load ptr, ptr @res, align 8
  %14 = load i32, ptr @maxp, align 4
  %conv10 = sext i32 %14 to i64
  %mul11 = mul i64 %conv10, 8
  %call12 = call ptr @realloc(ptr noundef %13, i64 noundef %mul11) #10
  store ptr %call12, ptr @res, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end6
  %15 = load i32, ptr %n.addr, align 4
  %conv14 = sext i32 %15 to i64
  %mul15 = mul i64 %conv14, 4
  %call16 = call ptr @malloc(i64 noundef %mul15) #8
  %16 = load ptr, ptr @res, align 8
  %17 = load i32, ptr @p, align 4
  %idxprom17 = sext i32 %17 to i64
  %arrayidx18 = getelementptr inbounds ptr, ptr %16, i64 %idxprom17
  store ptr %call16, ptr %arrayidx18, align 8
  %18 = load ptr, ptr @res, align 8
  %19 = load i32, ptr @p, align 4
  %idxprom19 = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds ptr, ptr %18, i64 %idxprom19
  %20 = load ptr, ptr %arrayidx20, align 8
  %21 = load ptr, ptr @ans, align 8
  %22 = load i32, ptr %n.addr, align 4
  %conv21 = sext i32 %22 to i64
  %mul22 = mul i64 %conv21, 4
  %23 = load ptr, ptr @res, align 8
  %24 = load i32, ptr @p, align 4
  %idxprom23 = sext i32 %24 to i64
  %arrayidx24 = getelementptr inbounds ptr, ptr %23, i64 %idxprom23
  %25 = load ptr, ptr %arrayidx24, align 8
  %26 = call i64 @llvm.objectsize.i64.p0(ptr %25, i1 false, i1 true, i1 false)
  %call25 = call ptr @__memcpy_chk(ptr noundef %20, ptr noundef %21, i64 noundef %mul22, i64 noundef %26) #11
  %27 = load i32, ptr @p, align 4
  %inc26 = add nsw i32 %27, 1
  store i32 %inc26, ptr @p, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then
  ret void
}

declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #5

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #7

declare void @free(ptr noundef) #4

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #6 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { allocsize(0) }
attributes #9 = { allocsize(0,1) }
attributes #10 = { allocsize(1) }
attributes #11 = { nounwind }

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
