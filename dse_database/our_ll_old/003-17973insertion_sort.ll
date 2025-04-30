; ModuleID = './code/003-17973insertion_sort.c'
source_filename = "./code/003-17973insertion_sort.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.main.data = private unnamed_addr constant [5 x i32] [i32 2, i32 3, i32 1, i32 8, i32 5], align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @sort(ptr noundef %data, i32 noundef %length) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  store i32 %length, ptr %length.addr, align 4
  %0 = load ptr, ptr %data.addr, align 8
  %1 = load i32, ptr %length.addr, align 4
  call void @insertion_sort(ptr noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @insertion_sort(ptr noundef %data, i32 noundef %length) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %tmp = alloca i32, align 4
  %k = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  store i32 %length, ptr %length.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %length.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  store i32 %2, ptr %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %3 = load i32, ptr %j, align 4
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load ptr, ptr %data.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4
  %7 = load ptr, ptr %data.addr, align 8
  %8 = load i32, ptr %j, align 4
  %sub = sub nsw i32 %8, 1
  %idxprom2 = sext i32 %sub to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %7, i64 %idxprom2
  %9 = load i32, ptr %arrayidx3, align 4
  %cmp4 = icmp slt i32 %6, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load i32, ptr %j, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, ptr %j, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %land.end
  %12 = load ptr, ptr %data.addr, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %12, i64 %idxprom5
  %14 = load i32, ptr %arrayidx6, align 4
  store i32 %14, ptr %tmp, align 4
  %15 = load i32, ptr %i, align 4
  store i32 %15, ptr %k, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %while.end
  %16 = load i32, ptr %k, align 4
  %17 = load i32, ptr %j, align 4
  %cmp8 = icmp sgt i32 %16, %17
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %18 = load ptr, ptr %data.addr, align 8
  %19 = load i32, ptr %k, align 4
  %sub10 = sub nsw i32 %19, 1
  %idxprom11 = sext i32 %sub10 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %18, i64 %idxprom11
  %20 = load i32, ptr %arrayidx12, align 4
  %21 = load ptr, ptr %data.addr, align 8
  %22 = load i32, ptr %k, align 4
  %idxprom13 = sext i32 %22 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %21, i64 %idxprom13
  store i32 %20, ptr %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %23 = load i32, ptr %k, align 4
  %dec15 = add nsw i32 %23, -1
  store i32 %dec15, ptr %k, align 4
  br label %for.cond7, !llvm.loop !7

for.end:                                          ; preds = %for.cond7
  %24 = load i32, ptr %tmp, align 4
  %25 = load ptr, ptr %data.addr, align 8
  %26 = load i32, ptr %j, align 4
  %idxprom16 = sext i32 %26 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %25, i64 %idxprom16
  store i32 %24, ptr %arrayidx17, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %27 = load i32, ptr %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end19:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print(ptr noundef %data, i32 noundef %length) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  store i32 %length, ptr %length.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %length.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %data.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %data = alloca [5 x i32], align 4
  %length = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %data, ptr align 4 @__const.main.data, i64 20, i1 false)
  store i32 5, ptr %length, align 4
  %arraydecay = getelementptr inbounds [5 x i32], ptr %data, i64 0, i64 0
  %0 = load i32, ptr %length, align 4
  call void @print(ptr noundef %arraydecay, i32 noundef %0)
  %arraydecay1 = getelementptr inbounds [5 x i32], ptr %data, i64 0, i64 0
  %1 = load i32, ptr %length, align 4
  call void @sort(ptr noundef %arraydecay1, i32 noundef %1)
  %arraydecay2 = getelementptr inbounds [5 x i32], ptr %data, i64 0, i64 0
  %2 = load i32, ptr %length, align 4
  call void @print(ptr noundef %arraydecay2, i32 noundef %2)
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
