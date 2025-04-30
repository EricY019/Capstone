; ModuleID = 'code/049-2654121.c'
source_filename = "code/049-2654121.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.prices = private unnamed_addr constant [6 x i32] [i32 7, i32 1, i32 5, i32 3, i32 6, i32 4], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %prices = alloca [6 x i32], align 16
  %priceSize = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [6 x i32]* %prices to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([6 x i32]* @__const.main.prices to i8*), i64 24, i1 false)
  store i32 6, i32* %priceSize, align 4
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %prices, i64 0, i64 0
  %1 = load i32, i32* %priceSize, align 4
  %call = call i32 @maxProfit(i32* %arraydecay, i32 %1)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %call)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @maxProfit(i32* %prices, i32 %priceSize) #0 {
entry:
  %prices.addr = alloca i32*, align 8
  %priceSize.addr = alloca i32, align 4
  %min = alloca i32, align 4
  %profit = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %prices, i32** %prices.addr, align 8
  store i32 %priceSize, i32* %priceSize.addr, align 4
  %0 = load i32*, i32** %prices.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %min, align 4
  %2 = load i32*, i32** %prices.addr, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* %min, align 4
  %sub = sub nsw i32 %3, %4
  store i32 %sub, i32* %profit, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %priceSize.addr, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %min, align 4
  %8 = load i32*, i32** %prices.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i32, i32* %8, i64 %idx.ext
  %10 = load i32, i32* %add.ptr, align 4
  %cmp1 = icmp sgt i32 %7, %10
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32*, i32** %prices.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idx.ext2 = sext i32 %12 to i64
  %add.ptr3 = getelementptr inbounds i32, i32* %11, i64 %idx.ext2
  %13 = load i32, i32* %add.ptr3, align 4
  store i32 %13, i32* %min, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %14 = load i32*, i32** %prices.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idx.ext4 = sext i32 %15 to i64
  %add.ptr5 = getelementptr inbounds i32, i32* %14, i64 %idx.ext4
  %16 = load i32, i32* %add.ptr5, align 4
  %17 = load i32, i32* %min, align 4
  %sub6 = sub nsw i32 %16, %17
  %18 = load i32, i32* %profit, align 4
  %cmp7 = icmp sgt i32 %sub6, %18
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %19 = load i32*, i32** %prices.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idx.ext8 = sext i32 %20 to i64
  %add.ptr9 = getelementptr inbounds i32, i32* %19, i64 %idx.ext8
  %21 = load i32, i32* %add.ptr9, align 4
  %22 = load i32, i32* %min, align 4
  %sub10 = sub nsw i32 %21, %22
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %23 = load i32, i32* %profit, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub10, %cond.true ], [ %23, %cond.false ]
  store i32 %cond, i32* %profit, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %25 = load i32, i32* %profit, align 4
  ret i32 %25
}

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
