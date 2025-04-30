; ModuleID = './code/044-30873heap_sort.c'
source_filename = "./code/044-30873heap_sort.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"swap %d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%4d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"\0Ainit the heap...\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"\0Aafter swap (%d, %d)...\0A\00", align 1
@__const.main.array = private unnamed_addr constant [8 x i32] [i32 36, i32 48, i32 48, i32 90, i32 88, i32 80, i32 76, i32 99], align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @Large(i32 noundef %left, i32 noundef %right) #0 {
entry:
  %left.addr = alloca i32, align 4
  %right.addr = alloca i32, align 4
  store i32 %left, ptr %left.addr, align 4
  store i32 %right, ptr %right.addr, align 4
  %0 = load i32, ptr %left.addr, align 4
  %1 = load i32, ptr %right.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @Less(i32 noundef %left, i32 noundef %right) #0 {
entry:
  %left.addr = alloca i32, align 4
  %right.addr = alloca i32, align 4
  store i32 %left, ptr %left.addr, align 4
  store i32 %right, ptr %right.addr, align 4
  %0 = load i32, ptr %left.addr, align 4
  %1 = load i32, ptr %right.addr, align 4
  %cmp = icmp slt i32 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @ShiftAdjust(ptr noundef %array, i32 noundef %low, i32 noundef %high) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %father = alloca i32, align 4
  %child = alloca i32, align 4
  %__tmp = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  store i32 %low, ptr %low.addr, align 4
  store i32 %high, ptr %high.addr, align 4
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load i32, ptr %low.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  %3 = load i32, ptr %low.addr, align 4
  store i32 %3, ptr %father, align 4
  %4 = load i32, ptr %low.addr, align 4
  %mul = mul nsw i32 2, %4
  %add = add nsw i32 %mul, 1
  store i32 %add, ptr %child, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %child, align 4
  %6 = load i32, ptr %high.addr, align 4
  %cmp = icmp sle i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %child, align 4
  %8 = load i32, ptr %high.addr, align 4
  %cmp1 = icmp slt i32 %7, %8
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %9 = load ptr, ptr %array.addr, align 8
  %10 = load i32, ptr %child, align 4
  %idxprom2 = sext i32 %10 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %9, i64 %idxprom2
  %11 = load i32, ptr %arrayidx3, align 4
  %12 = load ptr, ptr %array.addr, align 8
  %13 = load i32, ptr %child, align 4
  %add4 = add nsw i32 %13, 1
  %idxprom5 = sext i32 %add4 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %12, i64 %idxprom5
  %14 = load i32, ptr %arrayidx6, align 4
  %cmp7 = icmp slt i32 %11, %14
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %15 = load i32, ptr %child, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %child, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %16 = load ptr, ptr %array.addr, align 8
  %17 = load i32, ptr %father, align 4
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %16, i64 %idxprom8
  %18 = load i32, ptr %arrayidx9, align 4
  %19 = load ptr, ptr %array.addr, align 8
  %20 = load i32, ptr %child, align 4
  %idxprom10 = sext i32 %20 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %19, i64 %idxprom10
  %21 = load i32, ptr %arrayidx11, align 4
  %cmp12 = icmp sge i32 %18, %21
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  br label %for.end

if.end14:                                         ; preds = %if.end
  %22 = load ptr, ptr %array.addr, align 8
  %23 = load i32, ptr %father, align 4
  %idxprom15 = sext i32 %23 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %22, i64 %idxprom15
  %24 = load i32, ptr %arrayidx16, align 4
  %25 = load ptr, ptr %array.addr, align 8
  %26 = load i32, ptr %child, align 4
  %idxprom17 = sext i32 %26 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %25, i64 %idxprom17
  %27 = load i32, ptr %arrayidx18, align 4
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %24, i32 noundef %27)
  br label %do.body

do.body:                                          ; preds = %if.end14
  %28 = load ptr, ptr %array.addr, align 8
  %29 = load i32, ptr %father, align 4
  %idxprom20 = sext i32 %29 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %28, i64 %idxprom20
  %30 = load i32, ptr %arrayidx21, align 4
  store i32 %30, ptr %__tmp, align 4
  %31 = load ptr, ptr %array.addr, align 8
  %32 = load i32, ptr %child, align 4
  %idxprom22 = sext i32 %32 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %31, i64 %idxprom22
  %33 = load i32, ptr %arrayidx23, align 4
  %34 = load ptr, ptr %array.addr, align 8
  %35 = load i32, ptr %father, align 4
  %idxprom24 = sext i32 %35 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %34, i64 %idxprom24
  store i32 %33, ptr %arrayidx25, align 4
  %36 = load i32, ptr %__tmp, align 4
  %37 = load ptr, ptr %array.addr, align 8
  %38 = load i32, ptr %child, align 4
  %idxprom26 = sext i32 %38 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %37, i64 %idxprom26
  store i32 %36, ptr %arrayidx27, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %39 = load i32, ptr %child, align 4
  store i32 %39, ptr %father, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %40 = load i32, ptr %child, align 4
  %mul28 = mul nsw i32 2, %40
  %add29 = add nsw i32 %mul28, 1
  store i32 %add29, ptr %child, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %if.then13, %for.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @Print(ptr noundef %array, i32 noundef %length) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  store i32 %length, ptr %length.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %length.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %array.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @HeadSort(ptr noundef %array, i32 noundef %length) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %i2 = alloca i32, align 4
  %__tmp = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  store i32 %length, ptr %length.addr, align 4
  %0 = load i32, ptr %length.addr, align 4
  %sub = sub nsw i32 %0, 2
  %div = sdiv i32 %sub, 2
  store i32 %div, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %array.addr, align 8
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %length.addr, align 4
  %sub1 = sub nsw i32 %4, 1
  call void @ShiftAdjust(ptr noundef %2, i32 noundef %3, i32 noundef %sub1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %6 = load ptr, ptr %array.addr, align 8
  %7 = load i32, ptr %length.addr, align 4
  call void @Print(ptr noundef %6, i32 noundef %7)
  %8 = load i32, ptr %length.addr, align 4
  %sub3 = sub nsw i32 %8, 1
  store i32 %sub3, ptr %i2, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc16, %for.end
  %9 = load i32, ptr %i2, align 4
  %cmp5 = icmp sgt i32 %9, 0
  br i1 %cmp5, label %for.body6, label %for.end18

for.body6:                                        ; preds = %for.cond4
  %10 = load ptr, ptr %array.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %10, i64 0
  %11 = load i32, ptr %arrayidx, align 4
  %12 = load ptr, ptr %array.addr, align 8
  %13 = load i32, ptr %i2, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %12, i64 %idxprom
  %14 = load i32, ptr %arrayidx7, align 4
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %11, i32 noundef %14)
  %15 = load ptr, ptr %array.addr, align 8
  %16 = load i32, ptr %length.addr, align 4
  call void @Print(ptr noundef %15, i32 noundef %16)
  br label %do.body

do.body:                                          ; preds = %for.body6
  %17 = load ptr, ptr %array.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, ptr %17, i64 0
  %18 = load i32, ptr %arrayidx9, align 4
  store i32 %18, ptr %__tmp, align 4
  %19 = load ptr, ptr %array.addr, align 8
  %20 = load i32, ptr %i2, align 4
  %idxprom10 = sext i32 %20 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %19, i64 %idxprom10
  %21 = load i32, ptr %arrayidx11, align 4
  %22 = load ptr, ptr %array.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, ptr %22, i64 0
  store i32 %21, ptr %arrayidx12, align 4
  %23 = load i32, ptr %__tmp, align 4
  %24 = load ptr, ptr %array.addr, align 8
  %25 = load i32, ptr %i2, align 4
  %idxprom13 = sext i32 %25 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %24, i64 %idxprom13
  store i32 %23, ptr %arrayidx14, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %26 = load ptr, ptr %array.addr, align 8
  %27 = load i32, ptr %i2, align 4
  %sub15 = sub nsw i32 %27, 1
  call void @ShiftAdjust(ptr noundef %26, i32 noundef 0, i32 noundef %sub15)
  %28 = load ptr, ptr %array.addr, align 8
  %29 = load i32, ptr %length.addr, align 4
  call void @Print(ptr noundef %28, i32 noundef %29)
  br label %for.inc16

for.inc16:                                        ; preds = %do.end
  %30 = load i32, ptr %i2, align 4
  %dec17 = add nsw i32 %30, -1
  store i32 %dec17, ptr %i2, align 4
  br label %for.cond4, !llvm.loop !9

for.end18:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %array = alloca [8 x i32], align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %array, ptr align 4 @__const.main.array, i64 32, i1 false)
  %arraydecay = getelementptr inbounds [8 x i32], ptr %array, i64 0, i64 0
  call void @HeadSort(ptr noundef %arraydecay, i32 noundef 8)
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
