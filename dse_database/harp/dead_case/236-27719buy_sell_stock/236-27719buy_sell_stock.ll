; ModuleID = 'code/236-27719buy_sell_stock.c'
source_filename = "code/236-27719buy_sell_stock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.stock_a = private unnamed_addr constant [6 x i32] [i32 7, i32 1, i32 5, i32 3, i32 6, i32 4], align 16
@__const.main.stock_b = private unnamed_addr constant [5 x i32] [i32 7, i32 6, i32 4, i32 3, i32 1], align 16
@__const.main.stock_c = private unnamed_addr constant [7 x i32] [i32 1, i32 3, i32 4, i32 6, i32 7, i32 9, i32 0], align 16
@.str = private unnamed_addr constant [56 x i8] c"Max profit of the following stock day prices windows:\0A[\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"]\0A   one transaction %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"   multiple transactions %d\0A[\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"   multiple transactions %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @max_profit_one_transaction(i32* %prices, i32 %pricesSize) #0 {
entry:
  %prices.addr = alloca i32*, align 8
  %pricesSize.addr = alloca i32, align 4
  %min_price_seen = alloca i32, align 4
  %max_profit = alloca i32, align 4
  %p = alloca i32, align 4
  store i32* %prices, i32** %prices.addr, align 8
  store i32 %pricesSize, i32* %pricesSize.addr, align 4
  %0 = load i32*, i32** %prices.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %min_price_seen, align 4
  store i32 0, i32* %max_profit, align 4
  store i32 1, i32* %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %p, align 4
  %3 = load i32, i32* %pricesSize.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %prices.addr, align 8
  %5 = load i32, i32* %p, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx1 = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx1, align 4
  %7 = load i32, i32* %min_price_seen, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = load i32*, i32** %prices.addr, align 8
  %9 = load i32, i32* %p, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 %idxprom3
  %10 = load i32, i32* %arrayidx4, align 4
  store i32 %10, i32* %min_price_seen, align 4
  br label %if.end12

if.else:                                          ; preds = %for.body
  %11 = load i32*, i32** %prices.addr, align 8
  %12 = load i32, i32* %p, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %11, i64 %idxprom5
  %13 = load i32, i32* %arrayidx6, align 4
  %14 = load i32, i32* %min_price_seen, align 4
  %sub = sub nsw i32 %13, %14
  %15 = load i32, i32* %max_profit, align 4
  %cmp7 = icmp sgt i32 %sub, %15
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.else
  %16 = load i32*, i32** %prices.addr, align 8
  %17 = load i32, i32* %p, align 4
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %16, i64 %idxprom9
  %18 = load i32, i32* %arrayidx10, align 4
  %19 = load i32, i32* %min_price_seen, align 4
  %sub11 = sub nsw i32 %18, %19
  store i32 %sub11, i32* %max_profit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %20 = load i32, i32* %p, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %p, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %max_profit, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @max_profit_multiple_transactions(i32* %prices, i32 %pricesSize) #0 {
entry:
  %prices.addr = alloca i32*, align 8
  %pricesSize.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %bought_at = alloca i32, align 4
  %p = alloca i32, align 4
  store i32* %prices, i32** %prices.addr, align 8
  store i32 %pricesSize, i32* %pricesSize.addr, align 4
  store i32 0, i32* %sum, align 4
  %0 = load i32*, i32** %prices.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %bought_at, align 4
  store i32 0, i32* %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %p, align 4
  %3 = load i32, i32* %pricesSize.addr, align 4
  %sub = sub nsw i32 %3, 1
  %cmp = icmp slt i32 %2, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %prices.addr, align 8
  %5 = load i32, i32* %p, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx1 = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx1, align 4
  %7 = load i32, i32* %bought_at, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = load i32*, i32** %prices.addr, align 8
  %9 = load i32, i32* %p, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 %idxprom3
  %10 = load i32, i32* %arrayidx4, align 4
  store i32 %10, i32* %bought_at, align 4
  br label %if.end18

if.else:                                          ; preds = %for.body
  %11 = load i32*, i32** %prices.addr, align 8
  %12 = load i32, i32* %p, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %11, i64 %idxprom5
  %13 = load i32, i32* %arrayidx6, align 4
  %14 = load i32*, i32** %prices.addr, align 8
  %15 = load i32, i32* %p, align 4
  %add = add nsw i32 %15, 1
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %14, i64 %idxprom7
  %16 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp sgt i32 %13, %16
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.else
  %17 = load i32*, i32** %prices.addr, align 8
  %18 = load i32, i32* %p, align 4
  %idxprom11 = sext i32 %18 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %17, i64 %idxprom11
  %19 = load i32, i32* %arrayidx12, align 4
  %20 = load i32, i32* %bought_at, align 4
  %sub13 = sub nsw i32 %19, %20
  %21 = load i32, i32* %sum, align 4
  %add14 = add nsw i32 %21, %sub13
  store i32 %add14, i32* %sum, align 4
  %22 = load i32*, i32** %prices.addr, align 8
  %23 = load i32, i32* %p, align 4
  %add15 = add nsw i32 %23, 1
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %22, i64 %idxprom16
  %24 = load i32, i32* %arrayidx17, align 4
  store i32 %24, i32* %bought_at, align 4
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end18
  %25 = load i32, i32* %p, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %p, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %26 = load i32*, i32** %prices.addr, align 8
  %27 = load i32, i32* %pricesSize.addr, align 4
  %sub19 = sub nsw i32 %27, 1
  %idxprom20 = sext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds i32, i32* %26, i64 %idxprom20
  %28 = load i32, i32* %arrayidx21, align 4
  %29 = load i32, i32* %bought_at, align 4
  %cmp22 = icmp sgt i32 %28, %29
  br i1 %cmp22, label %if.then23, label %if.end29

if.then23:                                        ; preds = %for.end
  %30 = load i32*, i32** %prices.addr, align 8
  %31 = load i32, i32* %pricesSize.addr, align 4
  %sub24 = sub nsw i32 %31, 1
  %idxprom25 = sext i32 %sub24 to i64
  %arrayidx26 = getelementptr inbounds i32, i32* %30, i64 %idxprom25
  %32 = load i32, i32* %arrayidx26, align 4
  %33 = load i32, i32* %bought_at, align 4
  %sub27 = sub nsw i32 %32, %33
  %34 = load i32, i32* %sum, align 4
  %add28 = add nsw i32 %34, %sub27
  store i32 %add28, i32* %sum, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %for.end
  %35 = load i32, i32* %sum, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %stock_a = alloca [6 x i32], align 16
  %stock_b = alloca [5 x i32], align 16
  %stock_c = alloca [7 x i32], align 16
  %i = alloca i32, align 4
  %i7 = alloca i32, align 4
  %i23 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [6 x i32]* %stock_a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([6 x i32]* @__const.main.stock_a to i8*), i64 24, i1 false)
  %1 = bitcast [5 x i32]* %stock_b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([5 x i32]* @__const.main.stock_b to i8*), i64 20, i1 false)
  %2 = bitcast [7 x i32]* %stock_c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 bitcast ([7 x i32]* @__const.main.stock_c to i8*), i64 28, i1 false)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* %stock_a, i64 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %stock_a, i64 0, i64 0
  %call2 = call i32 @max_profit_one_transaction(i32* %arraydecay, i32 6)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %call2)
  %arraydecay4 = getelementptr inbounds [6 x i32], [6 x i32]* %stock_a, i64 0, i64 0
  %call5 = call i32 @max_profit_multiple_transactions(i32* %arraydecay4, i32 6)
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %call5)
  store i32 0, i32* %i7, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc14, %for.end
  %7 = load i32, i32* %i7, align 4
  %cmp9 = icmp slt i32 %7, 5
  br i1 %cmp9, label %for.body10, label %for.end16

for.body10:                                       ; preds = %for.cond8
  %8 = load i32, i32* %i7, align 4
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [5 x i32], [5 x i32]* %stock_b, i64 0, i64 %idxprom11
  %9 = load i32, i32* %arrayidx12, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  br label %for.inc14

for.inc14:                                        ; preds = %for.body10
  %10 = load i32, i32* %i7, align 4
  %inc15 = add nsw i32 %10, 1
  store i32 %inc15, i32* %i7, align 4
  br label %for.cond8, !llvm.loop !8

for.end16:                                        ; preds = %for.cond8
  %arraydecay17 = getelementptr inbounds [5 x i32], [5 x i32]* %stock_b, i64 0, i64 0
  %call18 = call i32 @max_profit_one_transaction(i32* %arraydecay17, i32 5)
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %call18)
  %arraydecay20 = getelementptr inbounds [5 x i32], [5 x i32]* %stock_b, i64 0, i64 0
  %call21 = call i32 @max_profit_multiple_transactions(i32* %arraydecay20, i32 6)
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %call21)
  store i32 0, i32* %i23, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc30, %for.end16
  %11 = load i32, i32* %i23, align 4
  %cmp25 = icmp slt i32 %11, 6
  br i1 %cmp25, label %for.body26, label %for.end32

for.body26:                                       ; preds = %for.cond24
  %12 = load i32, i32* %i23, align 4
  %idxprom27 = sext i32 %12 to i64
  %arrayidx28 = getelementptr inbounds [7 x i32], [7 x i32]* %stock_c, i64 0, i64 %idxprom27
  %13 = load i32, i32* %arrayidx28, align 4
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  br label %for.inc30

for.inc30:                                        ; preds = %for.body26
  %14 = load i32, i32* %i23, align 4
  %inc31 = add nsw i32 %14, 1
  store i32 %inc31, i32* %i23, align 4
  br label %for.cond24, !llvm.loop !9

for.end32:                                        ; preds = %for.cond24
  %arraydecay33 = getelementptr inbounds [7 x i32], [7 x i32]* %stock_c, i64 0, i64 0
  %call34 = call i32 @max_profit_one_transaction(i32* %arraydecay33, i32 7)
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %call34)
  %arraydecay36 = getelementptr inbounds [7 x i32], [7 x i32]* %stock_c, i64 0, i64 0
  %call37 = call i32 @max_profit_multiple_transactions(i32* %arraydecay36, i32 6)
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %call37)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
