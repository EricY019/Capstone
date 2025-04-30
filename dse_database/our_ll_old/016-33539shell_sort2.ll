; ModuleID = './code/016-33539shell_sort2.c'
source_filename = "./code/016-33539shell_sort2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.arr = private unnamed_addr constant [10 x i32] [i32 2, i32 1, i32 8, i32 3, i32 9, i32 0, i32 4, i32 6, i32 7, i32 5], align 4
@.str = private unnamed_addr constant [12 x i8] c"%2d : %2d \09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %arr = alloca [10 x i32], align 4
  %length = alloca i32, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 4 @__const.main.arr, i64 40, i1 false)
  store i32 10, ptr %length, align 4
  %arraydecay = getelementptr inbounds [10 x i32], ptr %arr, i64 0, i64 0
  %0 = load i32, ptr %length, align 4
  call void @shell_sort2(ptr noundef %arraydecay, i32 noundef %0)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @shell_sort2(ptr noundef %arr, i32 noundef %len) #0 {
entry:
  %arr.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %gap = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca i32, align 4
  store ptr %arr, ptr %arr.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  %0 = load i32, ptr %len.addr, align 4
  %shr = ashr i32 %0, 1
  store i32 %shr, ptr %gap, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %1 = load i32, ptr %gap, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %gap, align 4
  store i32 %2, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc21, %for.body
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %len.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body3, label %for.end22

for.body3:                                        ; preds = %for.cond1
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %gap, align 4
  %sub = sub nsw i32 %5, %6
  store i32 %sub, ptr %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %7 = load i32, ptr %j, align 4
  %cmp5 = icmp sge i32 %7, 0
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond4
  %8 = load ptr, ptr %arr.addr, align 8
  %9 = load i32, ptr %j, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, ptr %8, i64 %idxprom
  %10 = load i32, ptr %arrayidx, align 4
  %11 = load ptr, ptr %arr.addr, align 8
  %12 = load i32, ptr %j, align 4
  %13 = load i32, ptr %gap, align 4
  %add = add nsw i32 %12, %13
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %11, i64 %idxprom6
  %14 = load i32, ptr %arrayidx7, align 4
  %cmp8 = icmp sgt i32 %10, %14
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond4
  %15 = phi i1 [ false, %for.cond4 ], [ %cmp8, %land.rhs ]
  br i1 %15, label %for.body9, label %for.end

for.body9:                                        ; preds = %land.end
  %16 = load ptr, ptr %arr.addr, align 8
  %17 = load i32, ptr %j, align 4
  %idxprom10 = sext i32 %17 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %16, i64 %idxprom10
  %18 = load i32, ptr %arrayidx11, align 4
  store i32 %18, ptr %temp, align 4
  %19 = load ptr, ptr %arr.addr, align 8
  %20 = load i32, ptr %j, align 4
  %21 = load i32, ptr %gap, align 4
  %add12 = add nsw i32 %20, %21
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %19, i64 %idxprom13
  %22 = load i32, ptr %arrayidx14, align 4
  %23 = load ptr, ptr %arr.addr, align 8
  %24 = load i32, ptr %j, align 4
  %idxprom15 = sext i32 %24 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %23, i64 %idxprom15
  store i32 %22, ptr %arrayidx16, align 4
  %25 = load i32, ptr %temp, align 4
  %26 = load ptr, ptr %arr.addr, align 8
  %27 = load i32, ptr %j, align 4
  %28 = load i32, ptr %gap, align 4
  %add17 = add nsw i32 %27, %28
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %26, i64 %idxprom18
  store i32 %25, ptr %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %29 = load i32, ptr %gap, align 4
  %30 = load i32, ptr %j, align 4
  %sub20 = sub nsw i32 %30, %29
  store i32 %sub20, ptr %j, align 4
  br label %for.cond4, !llvm.loop !5

for.end:                                          ; preds = %land.end
  %31 = load ptr, ptr %arr.addr, align 8
  %32 = load i32, ptr %len.addr, align 4
  call void @print(ptr noundef %31, i32 noundef %32)
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %33 = load i32, ptr %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond1, !llvm.loop !7

for.end22:                                        ; preds = %for.cond1
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %34 = load i32, ptr %gap, align 4
  %shr24 = ashr i32 %34, 1
  store i32 %shr24, ptr %gap, align 4
  br label %for.cond, !llvm.loop !8

for.end25:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print(ptr noundef %arr, i32 noundef %len) #0 {
entry:
  %arr.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %arr, ptr %arr.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %add = add nsw i32 %2, 1
  %3 = load ptr, ptr %arr.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %add, i32 noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
