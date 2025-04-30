; ModuleID = './code/212-28059puzzle.c'
source_filename = "./code/212-28059puzzle.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@next = internal global i64 1, align 8
@.str = private unnamed_addr constant [21 x i8] c"Found duplicate: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @rand() #0 {
entry:
  %0 = load i64, ptr @next, align 8
  %mul = mul i64 %0, 1103515245
  %add = add i64 %mul, 12345
  store i64 %add, ptr @next, align 8
  %1 = load i64, ptr @next, align 8
  %div = udiv i64 %1, 65536
  %conv = trunc i64 %div to i32
  %rem = urem i32 %conv, 32767
  %add1 = add i32 %rem, 1
  ret i32 %add1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @srand(i32 noundef %seed) #0 {
entry:
  %seed.addr = alloca i32, align 4
  store i32 %seed, ptr %seed.addr, align 4
  %0 = load i32, ptr %seed.addr, align 4
  %conv = zext i32 %0 to i64
  store i64 %conv, ptr @next, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @randInt(i32 noundef %min, i32 noundef %max) #0 {
entry:
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 %min, ptr %min.addr, align 4
  store i32 %max, ptr %max.addr, align 4
  %0 = load i32, ptr %max.addr, align 4
  %1 = load i32, ptr %min.addr, align 4
  %sub = sub nsw i32 %0, %1
  %add = add nsw i32 %sub, 1
  store i32 %add, ptr %n, align 4
  %2 = load i32, ptr %n, align 4
  %conv = sitofp i32 %2 to double
  %call = call i32 @rand()
  %conv1 = sitofp i32 %call to double
  %div = fdiv double %conv1, 3.276800e+04
  %mul = fmul double %conv, %div
  %conv2 = fptosi double %mul to i32
  store i32 %conv2, ptr %k, align 4
  %3 = load i32, ptr %k, align 4
  %4 = load i32, ptr %n, align 4
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i32, ptr %k, align 4
  %6 = load i32, ptr %min.addr, align 4
  %add4 = add nsw i32 %5, %6
  %sub5 = sub nsw i32 %add4, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load i32, ptr %k, align 4
  %8 = load i32, ptr %min.addr, align 4
  %add6 = add nsw i32 %7, %8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub5, %cond.true ], [ %add6, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @shuffle(ptr noundef %items, i32 noundef %len) #0 {
entry:
  %items.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %i = alloca i64, align 8
  %aux = alloca i32, align 4
  store ptr %items, ptr %items.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %0 = load i32, ptr %len.addr, align 4
  %sub = sub nsw i32 %0, 1
  %conv = sext i32 %sub to i64
  store i64 %conv, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %i, align 8
  %add = add i64 %2, 1
  %conv2 = uitofp i64 %add to double
  %call = call i32 @rand()
  %conv3 = sitofp i32 %call to double
  %div = fdiv double %conv3, 3.276800e+04
  %mul = fmul double %conv2, %div
  %conv4 = fptosi double %mul to i32
  %conv5 = sext i32 %conv4 to i64
  store i64 %conv5, ptr %k, align 8
  %3 = load i64, ptr %k, align 8
  %4 = load i64, ptr %i, align 8
  %add6 = add i64 %4, 1
  %cmp7 = icmp eq i64 %3, %add6
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %5 = load i64, ptr %k, align 8
  %sub9 = sub i64 %5, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %6 = load i64, ptr %k, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub9, %cond.true ], [ %6, %cond.false ]
  store i64 %cond, ptr %j, align 8
  %7 = load ptr, ptr %items.addr, align 8
  %8 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i32, ptr %7, i64 %8
  %9 = load i32, ptr %arrayidx, align 4
  store i32 %9, ptr %aux, align 4
  %10 = load ptr, ptr %items.addr, align 8
  %11 = load i64, ptr %j, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %10, i64 %11
  %12 = load i32, ptr %arrayidx10, align 4
  %13 = load ptr, ptr %items.addr, align 8
  %14 = load i64, ptr %i, align 8
  %arrayidx11 = getelementptr inbounds i32, ptr %13, i64 %14
  store i32 %12, ptr %arrayidx11, align 4
  %15 = load i32, ptr %aux, align 4
  %16 = load ptr, ptr %items.addr, align 8
  %17 = load i64, ptr %j, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %16, i64 %17
  store i32 %15, ptr %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %18 = load i64, ptr %i, align 8
  %dec = add i64 %18, -1
  store i64 %dec, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @createRandomArray(i32 noundef %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %result = alloca ptr, align 8
  store i32 %size, ptr %size.addr, align 4
  %0 = load i32, ptr %size.addr, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, ptr %len, align 4
  %1 = load i32, ptr %len, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 4
  %call = call ptr @malloc(i64 noundef %mul) #3
  store ptr %call, ptr %result, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %len, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4
  %5 = load ptr, ptr %result, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  store i32 %4, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %size.addr, align 4
  %call2 = call i32 @randInt(i32 noundef 1, i32 noundef %8)
  %9 = load ptr, ptr %result, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %9, i64 0
  store i32 %call2, ptr %arrayidx3, align 4
  %10 = load ptr, ptr %result, align 8
  %11 = load i32, ptr %len, align 4
  call void @shuffle(ptr noundef %10, i32 noundef %11)
  %12 = load ptr, ptr %result, align 8
  ret ptr %12
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @findDuplicate(ptr noundef %data, i32 noundef %len) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %result = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 0, ptr %result, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %result, align 4
  %3 = load i32, ptr %i, align 4
  %add = add nsw i32 %3, 1
  %xor = xor i32 %2, %add
  %4 = load ptr, ptr %data.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4
  %xor1 = xor i32 %xor, %6
  store i32 %xor1, ptr %result, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %len.addr, align 4
  %9 = load i32, ptr %result, align 4
  %xor2 = xor i32 %9, %8
  store i32 %xor2, ptr %result, align 4
  %10 = load i32, ptr %result, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %duplicate = alloca i32, align 4
  %rndArr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  call void @srand(i32 noundef 1)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  %call = call ptr @createRandomArray(i32 noundef 500000)
  store ptr %call, ptr %rndArr, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 200
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load ptr, ptr %rndArr, align 8
  %call4 = call i32 @findDuplicate(ptr noundef %2, i32 noundef 500001)
  store i32 %call4, ptr %duplicate, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %3 = load i32, ptr %j, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %4 = load ptr, ptr %rndArr, align 8
  call void @free(ptr noundef %4)
  %5 = load i32, ptr %duplicate, align 4
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %5)
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %6 = load i32, ptr %i, align 4
  %inc7 = add nsw i32 %6, 1
  store i32 %inc7, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end8:                                         ; preds = %for.cond
  ret i32 0
}

declare void @free(ptr noundef) #2

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
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
