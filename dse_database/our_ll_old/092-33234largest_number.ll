; ModuleID = './code/092-33234largest_number.c'
source_filename = "./code/092-33234largest_number.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.object = type { [16 x i8] }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %nums = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, ptr %count, align 4
  %1 = load i32, ptr %count, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 4
  %call = call ptr @malloc(i64 noundef %mul) #6
  store ptr %call, ptr %nums, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %count, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %argv.addr, align 8
  %5 = load i32, ptr %i, align 4
  %add = add nsw i32 %5, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8
  %call2 = call i32 @atoi(ptr noundef %6)
  %7 = load ptr, ptr %nums, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %7, i64 %idxprom3
  store i32 %call2, ptr %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %nums, align 8
  %11 = load i32, ptr %count, align 4
  %call5 = call ptr @largestNumber(ptr noundef %10, i32 noundef %11)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %call5)
  ret i32 0
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare i32 @atoi(ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal ptr @largestNumber(ptr noundef %nums, i32 noundef %numsSize) #0 {
entry:
  %retval = alloca ptr, align 8
  %nums.addr = alloca ptr, align 8
  %numsSize.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %objs = alloca ptr, align 8
  %result = alloca ptr, align 8
  store ptr %nums, ptr %nums.addr, align 8
  store i32 %numsSize, ptr %numsSize.addr, align 4
  %0 = load i32, ptr %numsSize.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 16
  %call = call ptr @malloc(i64 noundef %mul) #6
  store ptr %call, ptr %objs, align 8
  %1 = load ptr, ptr %objs, align 8
  %2 = load ptr, ptr %objs, align 8
  %3 = call i64 @llvm.objectsize.i64.p0(ptr %2, i1 false, i1 true, i1 false)
  %call1 = call ptr @__memset_chk(ptr noundef %1, i32 noundef 0, i64 noundef 16, i64 noundef %3) #7
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %numsSize.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %objs, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.object, ptr %6, i64 %idxprom
  %buf = getelementptr inbounds %struct.object, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0
  %8 = load ptr, ptr %objs, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds %struct.object, ptr %8, i64 %idxprom3
  %buf5 = getelementptr inbounds %struct.object, ptr %arrayidx4, i32 0, i32 0
  %arraydecay6 = getelementptr inbounds [16 x i8], ptr %buf5, i64 0, i64 0
  %10 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay6, i1 false, i1 true, i1 false)
  %11 = load ptr, ptr %nums.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %11, i64 %idxprom7
  %13 = load i32, ptr %arrayidx8, align 4
  %call9 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay, i32 noundef 0, i64 noundef %10, ptr noundef @.str.1, i32 noundef %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %objs, align 8
  %16 = load i32, ptr %numsSize.addr, align 4
  %conv10 = sext i32 %16 to i64
  call void @qsort(ptr noundef %15, i64 noundef %conv10, i64 noundef 16, ptr noundef @compare)
  %17 = load ptr, ptr %objs, align 8
  %18 = load i32, ptr %numsSize.addr, align 4
  %sub = sub nsw i32 %18, 1
  %idxprom11 = sext i32 %sub to i64
  %arrayidx12 = getelementptr inbounds %struct.object, ptr %17, i64 %idxprom11
  %buf13 = getelementptr inbounds %struct.object, ptr %arrayidx12, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [16 x i8], ptr %buf13, i64 0, i64 0
  %19 = load i8, ptr %arrayidx14, align 1
  %conv15 = sext i8 %19 to i32
  %cmp16 = icmp eq i32 %conv15, 48
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store ptr @.str.2, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %for.end
  %20 = load i32, ptr %numsSize.addr, align 4
  %mul18 = mul nsw i32 %20, 16
  %conv19 = sext i32 %mul18 to i64
  %call20 = call ptr @malloc(i64 noundef %conv19) #6
  store ptr %call20, ptr %result, align 8
  %21 = load ptr, ptr %result, align 8
  %arrayidx21 = getelementptr inbounds i8, ptr %21, i64 0
  store i8 0, ptr %arrayidx21, align 1
  %22 = load i32, ptr %numsSize.addr, align 4
  %sub22 = sub nsw i32 %22, 1
  store i32 %sub22, ptr %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc32, %if.end
  %23 = load i32, ptr %i, align 4
  %cmp24 = icmp sge i32 %23, 0
  br i1 %cmp24, label %for.body26, label %for.end33

for.body26:                                       ; preds = %for.cond23
  %24 = load ptr, ptr %result, align 8
  %25 = load ptr, ptr %objs, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %26 to i64
  %arrayidx28 = getelementptr inbounds %struct.object, ptr %25, i64 %idxprom27
  %buf29 = getelementptr inbounds %struct.object, ptr %arrayidx28, i32 0, i32 0
  %arraydecay30 = getelementptr inbounds [16 x i8], ptr %buf29, i64 0, i64 0
  %27 = load ptr, ptr %result, align 8
  %28 = call i64 @llvm.objectsize.i64.p0(ptr %27, i1 false, i1 true, i1 false)
  %call31 = call ptr @__strcat_chk(ptr noundef %24, ptr noundef %arraydecay30, i64 noundef %28) #7
  br label %for.inc32

for.inc32:                                        ; preds = %for.body26
  %29 = load i32, ptr %i, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond23, !llvm.loop !8

for.end33:                                        ; preds = %for.cond23
  %30 = load ptr, ptr %result, align 8
  store ptr %30, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end33, %if.then
  %31 = load ptr, ptr %retval, align 8
  ret ptr %31
}

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #2

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @compare(ptr noundef %o1, ptr noundef %o2) #0 {
entry:
  %o1.addr = alloca ptr, align 8
  %o2.addr = alloca ptr, align 8
  %p1 = alloca [32 x i8], align 1
  %p2 = alloca [32 x i8], align 1
  store ptr %o1, ptr %o1.addr, align 8
  store ptr %o2, ptr %o2.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %p1, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr align 1 %p2, i8 0, i64 32, i1 false)
  %arraydecay = getelementptr inbounds [32 x i8], ptr %p1, i64 0, i64 0
  %0 = load ptr, ptr %o1.addr, align 8
  %buf = getelementptr inbounds %struct.object, ptr %0, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0
  %call = call ptr @__strcat_chk(ptr noundef %arraydecay, ptr noundef %arraydecay1, i64 noundef 32) #7
  %arraydecay2 = getelementptr inbounds [32 x i8], ptr %p1, i64 0, i64 0
  %1 = load ptr, ptr %o2.addr, align 8
  %buf3 = getelementptr inbounds %struct.object, ptr %1, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [16 x i8], ptr %buf3, i64 0, i64 0
  %call5 = call ptr @__strcat_chk(ptr noundef %arraydecay2, ptr noundef %arraydecay4, i64 noundef 32) #7
  %arraydecay6 = getelementptr inbounds [32 x i8], ptr %p2, i64 0, i64 0
  %2 = load ptr, ptr %o2.addr, align 8
  %buf7 = getelementptr inbounds %struct.object, ptr %2, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [16 x i8], ptr %buf7, i64 0, i64 0
  %call9 = call ptr @__strcat_chk(ptr noundef %arraydecay6, ptr noundef %arraydecay8, i64 noundef 32) #7
  %arraydecay10 = getelementptr inbounds [32 x i8], ptr %p2, i64 0, i64 0
  %3 = load ptr, ptr %o1.addr, align 8
  %buf11 = getelementptr inbounds %struct.object, ptr %3, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [16 x i8], ptr %buf11, i64 0, i64 0
  %call13 = call ptr @__strcat_chk(ptr noundef %arraydecay10, ptr noundef %arraydecay12, i64 noundef 32) #7
  %arraydecay14 = getelementptr inbounds [32 x i8], ptr %p1, i64 0, i64 0
  %arraydecay15 = getelementptr inbounds [32 x i8], ptr %p2, i64 0, i64 0
  %call16 = call i32 @strcmp(ptr noundef %arraydecay14, ptr noundef %arraydecay15) #7
  ret i32 %call16
}

; Function Attrs: nounwind
declare ptr @__strcat_chk(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
