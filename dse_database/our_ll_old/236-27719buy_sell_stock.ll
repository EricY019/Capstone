; ModuleID = './code/236-27719buy_sell_stock.c'
source_filename = "./code/236-27719buy_sell_stock.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.stock_a = private unnamed_addr constant [6 x i32] [i32 7, i32 1, i32 5, i32 3, i32 6, i32 4], align 4
@__const.main.stock_b = private unnamed_addr constant [5 x i32] [i32 7, i32 6, i32 4, i32 3, i32 1], align 4
@__const.main.stock_c = private unnamed_addr constant [7 x i32] [i32 1, i32 3, i32 4, i32 6, i32 7, i32 9, i32 0], align 4
@.str = private unnamed_addr constant [56 x i8] c"Max profit of the following stock day prices windows:\0A[\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"]\0A   one transaction %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"   multiple transactions %d\0A[\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"   multiple transactions %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @max_profit_one_transaction(ptr noundef %prices, i32 noundef %pricesSize) #0 {
entry:
  %prices.addr = alloca ptr, align 8
  %pricesSize.addr = alloca i32, align 4
  %min_price_seen = alloca i32, align 4
  %max_profit = alloca i32, align 4
  %p = alloca i32, align 4
  store ptr %prices, ptr %prices.addr, align 8
  store i32 %pricesSize, ptr %pricesSize.addr, align 4
  %0 = load ptr, ptr %prices.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %min_price_seen, align 4
  store i32 0, ptr %max_profit, align 4
  store i32 1, ptr %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %p, align 4
  %3 = load i32, ptr %pricesSize.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %prices.addr, align 8
  %5 = load i32, ptr %p, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx1 = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %6 = load i32, ptr %arrayidx1, align 4
  %7 = load i32, ptr %min_price_seen, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %prices.addr, align 8
  %9 = load i32, ptr %p, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %8, i64 %idxprom3
  %10 = load i32, ptr %arrayidx4, align 4
  store i32 %10, ptr %min_price_seen, align 4
  br label %if.end12

if.else:                                          ; preds = %for.body
  %11 = load ptr, ptr %prices.addr, align 8
  %12 = load i32, ptr %p, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %11, i64 %idxprom5
  %13 = load i32, ptr %arrayidx6, align 4
  %14 = load i32, ptr %min_price_seen, align 4
  %sub = sub nsw i32 %13, %14
  %15 = load i32, ptr %max_profit, align 4
  %cmp7 = icmp sgt i32 %sub, %15
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.else
  %16 = load ptr, ptr %prices.addr, align 8
  %17 = load i32, ptr %p, align 4
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %16, i64 %idxprom9
  %18 = load i32, ptr %arrayidx10, align 4
  %19 = load i32, ptr %min_price_seen, align 4
  %sub11 = sub nsw i32 %18, %19
  store i32 %sub11, ptr %max_profit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %20 = load i32, ptr %p, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %p, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %21 = load i32, ptr %max_profit, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @max_profit_multiple_transactions(ptr noundef %prices, i32 noundef %pricesSize) #0 {
entry:
  %prices.addr = alloca ptr, align 8
  %pricesSize.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %bought_at = alloca i32, align 4
  %p = alloca i32, align 4
  store ptr %prices, ptr %prices.addr, align 8
  store i32 %pricesSize, ptr %pricesSize.addr, align 4
  store i32 0, ptr %sum, align 4
  %0 = load ptr, ptr %prices.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %bought_at, align 4
  store i32 0, ptr %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %p, align 4
  %3 = load i32, ptr %pricesSize.addr, align 4
  %sub = sub nsw i32 %3, 1
  %cmp = icmp slt i32 %2, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %prices.addr, align 8
  %5 = load i32, ptr %p, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx1 = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %6 = load i32, ptr %arrayidx1, align 4
  %7 = load i32, ptr %bought_at, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %prices.addr, align 8
  %9 = load i32, ptr %p, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %8, i64 %idxprom3
  %10 = load i32, ptr %arrayidx4, align 4
  store i32 %10, ptr %bought_at, align 4
  br label %if.end18

if.else:                                          ; preds = %for.body
  %11 = load ptr, ptr %prices.addr, align 8
  %12 = load i32, ptr %p, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %11, i64 %idxprom5
  %13 = load i32, ptr %arrayidx6, align 4
  %14 = load ptr, ptr %prices.addr, align 8
  %15 = load i32, ptr %p, align 4
  %add = add nsw i32 %15, 1
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %14, i64 %idxprom7
  %16 = load i32, ptr %arrayidx8, align 4
  %cmp9 = icmp sgt i32 %13, %16
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.else
  %17 = load ptr, ptr %prices.addr, align 8
  %18 = load i32, ptr %p, align 4
  %idxprom11 = sext i32 %18 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %17, i64 %idxprom11
  %19 = load i32, ptr %arrayidx12, align 4
  %20 = load i32, ptr %bought_at, align 4
  %sub13 = sub nsw i32 %19, %20
  %21 = load i32, ptr %sum, align 4
  %add14 = add nsw i32 %21, %sub13
  store i32 %add14, ptr %sum, align 4
  %22 = load ptr, ptr %prices.addr, align 8
  %23 = load i32, ptr %p, align 4
  %add15 = add nsw i32 %23, 1
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %22, i64 %idxprom16
  %24 = load i32, ptr %arrayidx17, align 4
  store i32 %24, ptr %bought_at, align 4
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end18
  %25 = load i32, ptr %p, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %p, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %26 = load ptr, ptr %prices.addr, align 8
  %27 = load i32, ptr %pricesSize.addr, align 4
  %sub19 = sub nsw i32 %27, 1
  %idxprom20 = sext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %26, i64 %idxprom20
  %28 = load i32, ptr %arrayidx21, align 4
  %29 = load i32, ptr %bought_at, align 4
  %cmp22 = icmp sgt i32 %28, %29
  br i1 %cmp22, label %if.then23, label %if.end29

if.then23:                                        ; preds = %for.end
  %30 = load ptr, ptr %prices.addr, align 8
  %31 = load i32, ptr %pricesSize.addr, align 4
  %sub24 = sub nsw i32 %31, 1
  %idxprom25 = sext i32 %sub24 to i64
  %arrayidx26 = getelementptr inbounds i32, ptr %30, i64 %idxprom25
  %32 = load i32, ptr %arrayidx26, align 4
  %33 = load i32, ptr %bought_at, align 4
  %sub27 = sub nsw i32 %32, %33
  %34 = load i32, ptr %sum, align 4
  %add28 = add nsw i32 %34, %sub27
  store i32 %add28, ptr %sum, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %for.end
  %35 = load i32, ptr %sum, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %stock_a = alloca [6 x i32], align 4
  %stock_b = alloca [5 x i32], align 4
  %stock_c = alloca [7 x i32], align 4
  %i = alloca i32, align 4
  %i7 = alloca i32, align 4
  %i23 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %stock_a, ptr align 4 @__const.main.stock_a, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %stock_b, ptr align 4 @__const.main.stock_b, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %stock_c, ptr align 4 @__const.main.stock_c, i64 28, i1 false)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [6 x i32], ptr %stock_a, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [6 x i32], ptr %stock_a, i64 0, i64 0
  %call2 = call i32 @max_profit_one_transaction(ptr noundef %arraydecay, i32 noundef 6)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %call2)
  %arraydecay4 = getelementptr inbounds [6 x i32], ptr %stock_a, i64 0, i64 0
  %call5 = call i32 @max_profit_multiple_transactions(ptr noundef %arraydecay4, i32 noundef 6)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %call5)
  store i32 0, ptr %i7, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc14, %for.end
  %4 = load i32, ptr %i7, align 4
  %cmp9 = icmp slt i32 %4, 5
  br i1 %cmp9, label %for.body10, label %for.end16

for.body10:                                       ; preds = %for.cond8
  %5 = load i32, ptr %i7, align 4
  %idxprom11 = sext i32 %5 to i64
  %arrayidx12 = getelementptr inbounds [5 x i32], ptr %stock_b, i64 0, i64 %idxprom11
  %6 = load i32, ptr %arrayidx12, align 4
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %6)
  br label %for.inc14

for.inc14:                                        ; preds = %for.body10
  %7 = load i32, ptr %i7, align 4
  %inc15 = add nsw i32 %7, 1
  store i32 %inc15, ptr %i7, align 4
  br label %for.cond8, !llvm.loop !9

for.end16:                                        ; preds = %for.cond8
  %arraydecay17 = getelementptr inbounds [5 x i32], ptr %stock_b, i64 0, i64 0
  %call18 = call i32 @max_profit_one_transaction(ptr noundef %arraydecay17, i32 noundef 5)
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %call18)
  %arraydecay20 = getelementptr inbounds [5 x i32], ptr %stock_b, i64 0, i64 0
  %call21 = call i32 @max_profit_multiple_transactions(ptr noundef %arraydecay20, i32 noundef 6)
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %call21)
  store i32 0, ptr %i23, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc30, %for.end16
  %8 = load i32, ptr %i23, align 4
  %cmp25 = icmp slt i32 %8, 6
  br i1 %cmp25, label %for.body26, label %for.end32

for.body26:                                       ; preds = %for.cond24
  %9 = load i32, ptr %i23, align 4
  %idxprom27 = sext i32 %9 to i64
  %arrayidx28 = getelementptr inbounds [7 x i32], ptr %stock_c, i64 0, i64 %idxprom27
  %10 = load i32, ptr %arrayidx28, align 4
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %10)
  br label %for.inc30

for.inc30:                                        ; preds = %for.body26
  %11 = load i32, ptr %i23, align 4
  %inc31 = add nsw i32 %11, 1
  store i32 %inc31, ptr %i23, align 4
  br label %for.cond24, !llvm.loop !10

for.end32:                                        ; preds = %for.cond24
  %arraydecay33 = getelementptr inbounds [7 x i32], ptr %stock_c, i64 0, i64 0
  %call34 = call i32 @max_profit_one_transaction(ptr noundef %arraydecay33, i32 noundef 7)
  %call35 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %call34)
  %arraydecay36 = getelementptr inbounds [7 x i32], ptr %stock_c, i64 0, i64 0
  %call37 = call i32 @max_profit_multiple_transactions(ptr noundef %arraydecay36, i32 noundef 6)
  %call38 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %call37)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

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
!10 = distinct !{!10, !6}
