; ModuleID = './code/046-2960646_permutations.c'
source_filename = "./code/046-2960646_permutations.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@res = internal global ptr null, align 8
@occupy = internal global [512 x i8] zeroinitializer, align 1
@maxp = internal global i32 0, align 4
@p = internal global i32 0, align 4
@__const.main.x = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 3], align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@perm = internal global [512 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @permute(ptr noundef %nums, i32 noundef %numsSize, ptr noundef %returnSize) #0 {
entry:
  %retval = alloca ptr, align 8
  %nums.addr = alloca ptr, align 8
  %numsSize.addr = alloca i32, align 4
  %returnSize.addr = alloca ptr, align 8
  store ptr %nums, ptr %nums.addr, align 8
  store i32 %numsSize, ptr %numsSize.addr, align 4
  store ptr %returnSize, ptr %returnSize.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store ptr null, ptr @res, align 8
  call void @llvm.memset.p0.i64(ptr align 1 @occupy, i8 0, i64 512, i1 false)
  store i32 0, ptr @maxp, align 4
  store i32 0, ptr @p, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, ptr %numsSize.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.end
  %1 = load ptr, ptr %returnSize.addr, align 8
  store i32 0, ptr %1, align 4
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %do.end
  %2 = load i32, ptr %numsSize.addr, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then1, label %if.end6

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %returnSize.addr, align 8
  store i32 1, ptr %3, align 4
  %call = call ptr @malloc(i64 noundef 8) #8
  store ptr %call, ptr @res, align 8
  %call2 = call ptr @malloc(i64 noundef 4) #8
  %4 = load ptr, ptr @res, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 0
  store ptr %call2, ptr %arrayidx, align 8
  %5 = load ptr, ptr %nums.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %5, i64 0
  %6 = load i32, ptr %arrayidx3, align 4
  %7 = load ptr, ptr @res, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %7, i64 0
  %8 = load ptr, ptr %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i32, ptr %8, i64 0
  store i32 %6, ptr %arrayidx5, align 4
  %9 = load ptr, ptr @res, align 8
  store ptr %9, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %if.end
  %10 = load ptr, ptr %nums.addr, align 8
  %11 = load i32, ptr %numsSize.addr, align 4
  call void @bktrack(ptr noundef %10, i32 noundef %11, i32 noundef 0)
  %12 = load i32, ptr @p, align 4
  %13 = load ptr, ptr %returnSize.addr, align 8
  store i32 %12, ptr %13, align 4
  %14 = load ptr, ptr @res, align 8
  store ptr %14, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end6, %if.then1, %if.then
  %15 = load ptr, ptr %retval, align 8
  ret ptr %15
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @bktrack(ptr noundef %nums, i32 noundef %n, i32 noundef %lev) #0 {
entry:
  %nums.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %lev.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %nums, ptr %nums.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store i32 %lev, ptr %lev.addr, align 4
  %0 = load i32, ptr %lev.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %nums.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  store i32 %5, ptr @perm, align 4
  %6 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds [512 x i8], ptr @occupy, i64 0, i64 %idxprom1
  store i8 1, ptr %arrayidx2, align 1
  %7 = load ptr, ptr %nums.addr, align 8
  %8 = load i32, ptr %n.addr, align 4
  %9 = load i32, ptr %lev.addr, align 4
  %add = add nsw i32 %9, 1
  call void @bktrack(ptr noundef %7, i32 noundef %8, i32 noundef %add)
  %10 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds [512 x i8], ptr @occupy, i64 0, i64 %idxprom3
  store i8 0, ptr %arrayidx4, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %for.end45

if.end:                                           ; preds = %entry
  %12 = load i32, ptr %lev.addr, align 4
  %13 = load i32, ptr %n.addr, align 4
  %sub = sub nsw i32 %13, 1
  %cmp5 = icmp eq i32 %12, %sub
  br i1 %cmp5, label %if.then6, label %if.end25

if.then6:                                         ; preds = %if.end
  store i32 0, ptr %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc15, %if.then6
  %14 = load i32, ptr %i, align 4
  %15 = load i32, ptr %n.addr, align 4
  %cmp8 = icmp slt i32 %14, %15
  br i1 %cmp8, label %for.body9, label %for.end17

for.body9:                                        ; preds = %for.cond7
  %16 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds [512 x i8], ptr @occupy, i64 0, i64 %idxprom10
  %17 = load i8, ptr %arrayidx11, align 1
  %tobool12 = icmp ne i8 %17, 0
  br i1 %tobool12, label %if.end14, label %if.then13

if.then13:                                        ; preds = %for.body9
  br label %for.end17

if.end14:                                         ; preds = %for.body9
  br label %for.inc15

for.inc15:                                        ; preds = %if.end14
  %18 = load i32, ptr %i, align 4
  %inc16 = add nsw i32 %18, 1
  store i32 %inc16, ptr %i, align 4
  br label %for.cond7, !llvm.loop !7

for.end17:                                        ; preds = %if.then13, %for.cond7
  %19 = load ptr, ptr %nums.addr, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom18 = sext i32 %20 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %19, i64 %idxprom18
  %21 = load i32, ptr %arrayidx19, align 4
  %22 = load i32, ptr %lev.addr, align 4
  %idxprom20 = sext i32 %22 to i64
  %arrayidx21 = getelementptr inbounds [512 x i32], ptr @perm, i64 0, i64 %idxprom20
  store i32 %21, ptr %arrayidx21, align 4
  %23 = load i32, ptr %n.addr, align 4
  %call = call i32 @avail(i32 noundef %23)
  %tobool22 = icmp ne i32 %call, 0
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.end17
  %24 = load i32, ptr %n.addr, align 4
  call void @add_res(i32 noundef %24)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %for.end17
  br label %for.end45

if.end25:                                         ; preds = %if.end
  store i32 0, ptr %i, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc43, %if.end25
  %25 = load i32, ptr %i, align 4
  %26 = load i32, ptr %n.addr, align 4
  %cmp27 = icmp slt i32 %25, %26
  br i1 %cmp27, label %for.body28, label %for.end45

for.body28:                                       ; preds = %for.cond26
  %27 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %27 to i64
  %arrayidx30 = getelementptr inbounds [512 x i8], ptr @occupy, i64 0, i64 %idxprom29
  %28 = load i8, ptr %arrayidx30, align 1
  %tobool31 = icmp ne i8 %28, 0
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %for.body28
  br label %for.inc43

if.end33:                                         ; preds = %for.body28
  %29 = load ptr, ptr %nums.addr, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom34 = sext i32 %30 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %29, i64 %idxprom34
  %31 = load i32, ptr %arrayidx35, align 4
  %32 = load i32, ptr %lev.addr, align 4
  %idxprom36 = sext i32 %32 to i64
  %arrayidx37 = getelementptr inbounds [512 x i32], ptr @perm, i64 0, i64 %idxprom36
  store i32 %31, ptr %arrayidx37, align 4
  %33 = load i32, ptr %i, align 4
  %idxprom38 = sext i32 %33 to i64
  %arrayidx39 = getelementptr inbounds [512 x i8], ptr @occupy, i64 0, i64 %idxprom38
  store i8 1, ptr %arrayidx39, align 1
  %34 = load ptr, ptr %nums.addr, align 8
  %35 = load i32, ptr %n.addr, align 4
  %36 = load i32, ptr %lev.addr, align 4
  %add40 = add nsw i32 %36, 1
  call void @bktrack(ptr noundef %34, i32 noundef %35, i32 noundef %add40)
  %37 = load i32, ptr %i, align 4
  %idxprom41 = sext i32 %37 to i64
  %arrayidx42 = getelementptr inbounds [512 x i8], ptr @occupy, i64 0, i64 %idxprom41
  store i8 0, ptr %arrayidx42, align 1
  br label %for.inc43

for.inc43:                                        ; preds = %if.end33, %if.then32
  %38 = load i32, ptr %i, align 4
  %inc44 = add nsw i32 %38, 1
  store i32 %inc44, ptr %i, align 4
  br label %for.cond26, !llvm.loop !8

for.end45:                                        ; preds = %for.end, %if.end24, %for.cond26
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca ptr, align 8
  %n = alloca i32, align 4
  %x = alloca [3 x i32], align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %x, ptr align 4 @__const.main.x, i64 12, i1 false)
  %arraydecay = getelementptr inbounds [3 x i32], ptr %x, i64 0, i64 0
  %call = call ptr @permute(ptr noundef %arraydecay, i32 noundef 3, ptr noundef %n)
  %0 = load i32, ptr %n, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %0)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @printf(ptr noundef, ...) #4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @avail(i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr @p, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr @res, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  %5 = load i32, ptr %n.addr, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 %conv, 4
  %call = call i32 @memcmp(ptr noundef %4, ptr noundef @perm, i64 noundef %mul)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @add_res(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr @maxp, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 16, ptr @maxp, align 4
  %1 = load i32, ptr @maxp, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 8
  %call = call ptr @malloc(i64 noundef %mul) #8
  store ptr %call, ptr @res, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr @p, align 4
  %3 = load i32, ptr @maxp, align 4
  %cmp = icmp sge i32 %2, %3
  br i1 %cmp, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %4 = load i32, ptr @maxp, align 4
  %add = add nsw i32 %4, 16
  store i32 %add, ptr @maxp, align 4
  %5 = load ptr, ptr @res, align 8
  %6 = load i32, ptr @maxp, align 4
  %conv3 = sext i32 %6 to i64
  %mul4 = mul i64 %conv3, 8
  %call5 = call ptr @realloc(ptr noundef %5, i64 noundef %mul4) #9
  store ptr %call5, ptr @res, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end
  %7 = load i32, ptr %n.addr, align 4
  %conv7 = sext i32 %7 to i64
  %mul8 = mul i64 %conv7, 4
  %call9 = call ptr @malloc(i64 noundef %mul8) #8
  %8 = load ptr, ptr @res, align 8
  %9 = load i32, ptr @p, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  store ptr %call9, ptr %arrayidx, align 8
  %10 = load ptr, ptr @res, align 8
  %11 = load i32, ptr @p, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds ptr, ptr %10, i64 %idxprom10
  %12 = load ptr, ptr %arrayidx11, align 8
  %13 = load i32, ptr %n.addr, align 4
  %conv12 = sext i32 %13 to i64
  %mul13 = mul i64 %conv12, 4
  %14 = load ptr, ptr @res, align 8
  %15 = load i32, ptr @p, align 4
  %idxprom14 = sext i32 %15 to i64
  %arrayidx15 = getelementptr inbounds ptr, ptr %14, i64 %idxprom14
  %16 = load ptr, ptr %arrayidx15, align 8
  %17 = call i64 @llvm.objectsize.i64.p0(ptr %16, i1 false, i1 true, i1 false)
  %call16 = call ptr @__memcpy_chk(ptr noundef %12, ptr noundef @perm, i64 noundef %mul13, i64 noundef %17) #10
  %18 = load i32, ptr @p, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr @p, align 4
  ret void
}

declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #5

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #7

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #6 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { allocsize(0) }
attributes #9 = { allocsize(1) }
attributes #10 = { nounwind }

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
