; ModuleID = './code/049-2654121.c'
source_filename = "./code/049-2654121.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.prices = private unnamed_addr constant [6 x i32] [i32 7, i32 1, i32 5, i32 3, i32 6, i32 4], align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %prices = alloca [6 x i32], align 4
  %priceSize = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %prices, ptr align 4 @__const.main.prices, i64 24, i1 false)
  store i32 6, ptr %priceSize, align 4
  %arraydecay = getelementptr inbounds [6 x i32], ptr %prices, i64 0, i64 0
  %0 = load i32, ptr %priceSize, align 4
  %call = call i32 @maxProfit(ptr noundef %arraydecay, i32 noundef %0)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %call)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @maxProfit(ptr noundef %prices, i32 noundef %priceSize) #0 {
entry:
  %prices.addr = alloca ptr, align 8
  %priceSize.addr = alloca i32, align 4
  %min = alloca i32, align 4
  %profit = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %prices, ptr %prices.addr, align 8
  store i32 %priceSize, ptr %priceSize.addr, align 4
  %0 = load ptr, ptr %prices.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %min, align 4
  %2 = load ptr, ptr %prices.addr, align 8
  %3 = load i32, ptr %2, align 4
  %4 = load i32, ptr %min, align 4
  %sub = sub nsw i32 %3, %4
  store i32 %sub, ptr %profit, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %priceSize.addr, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %min, align 4
  %8 = load ptr, ptr %prices.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i32, ptr %8, i64 %idx.ext
  %10 = load i32, ptr %add.ptr, align 4
  %cmp1 = icmp sgt i32 %7, %10
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load ptr, ptr %prices.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idx.ext2 = sext i32 %12 to i64
  %add.ptr3 = getelementptr inbounds i32, ptr %11, i64 %idx.ext2
  %13 = load i32, ptr %add.ptr3, align 4
  store i32 %13, ptr %min, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %14 = load ptr, ptr %prices.addr, align 8
  %15 = load i32, ptr %i, align 4
  %idx.ext4 = sext i32 %15 to i64
  %add.ptr5 = getelementptr inbounds i32, ptr %14, i64 %idx.ext4
  %16 = load i32, ptr %add.ptr5, align 4
  %17 = load i32, ptr %min, align 4
  %sub6 = sub nsw i32 %16, %17
  %18 = load i32, ptr %profit, align 4
  %cmp7 = icmp sgt i32 %sub6, %18
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %19 = load ptr, ptr %prices.addr, align 8
  %20 = load i32, ptr %i, align 4
  %idx.ext8 = sext i32 %20 to i64
  %add.ptr9 = getelementptr inbounds i32, ptr %19, i64 %idx.ext8
  %21 = load i32, ptr %add.ptr9, align 4
  %22 = load i32, ptr %min, align 4
  %sub10 = sub nsw i32 %21, %22
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %23 = load i32, ptr %profit, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub10, %cond.true ], [ %23, %cond.false ]
  store i32 %cond, ptr %profit, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %24 = load i32, ptr %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %25 = load i32, ptr %profit, align 4
  ret i32 %25
}

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
