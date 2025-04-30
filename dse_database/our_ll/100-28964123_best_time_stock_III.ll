; ModuleID = 'code/100-28964123_best_time_stock_III.c'
source_filename = "code/100-28964123_best_time_stock_III.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.x = private unnamed_addr constant [8 x i32] [i32 3, i32 3, i32 5, i32 0, i32 0, i32 3, i32 1, i32 4], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @maxProfit(i32* %prices, i32 %pricesSize) #0 {
entry:
  %retval = alloca i32, align 4
  %prices.addr = alloca i32*, align 8
  %pricesSize.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %min_max = alloca i32, align 4
  %t = alloca i32, align 4
  store i32* %prices, i32** %prices.addr, align 8
  store i32 %pricesSize, i32* %pricesSize.addr, align 4
  %0 = load i32, i32* %pricesSize.addr, align 4
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %pricesSize.addr, align 4
  %2 = zext i32 %1 to i64
  %3 = call i8* @llvm.stacksave()
  store i8* %3, i8** %saved_stack, align 8
  %vla = alloca i32, i64 %2, align 16
  store i64 %2, i64* %__vla_expr0, align 8
  %4 = load i32, i32* %pricesSize.addr, align 4
  %5 = zext i32 %4 to i64
  %vla1 = alloca i32, i64 %5, align 16
  store i64 %5, i64* %__vla_expr1, align 8
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 0
  store i32 0, i32* %arrayidx, align 16
  store i32 0, i32* %min_max, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %pricesSize.addr, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32*, i32** %prices.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %10 = load i32, i32* %arrayidx3, align 4
  %11 = load i32*, i32** %prices.addr, align 8
  %12 = load i32, i32* %min_max, align 4
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %11, i64 %idxprom4
  %13 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp slt i32 %10, %13
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  store i32 %14, i32* %min_max, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %for.body
  %15 = load i32*, i32** %prices.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %16 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %15, i64 %idxprom9
  %17 = load i32, i32* %arrayidx10, align 4
  %18 = load i32*, i32** %prices.addr, align 8
  %19 = load i32, i32* %min_max, align 4
  %idxprom11 = sext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %18, i64 %idxprom11
  %20 = load i32, i32* %arrayidx12, align 4
  %sub = sub nsw i32 %17, %20
  store i32 %sub, i32* %t, align 4
  %21 = load i32, i32* %i, align 4
  %sub13 = sub nsw i32 %21, 1
  %idxprom14 = sext i32 %sub13 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %vla, i64 %idxprom14
  %22 = load i32, i32* %arrayidx15, align 4
  %23 = load i32, i32* %t, align 4
  %cmp16 = icmp sgt i32 %22, %23
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end8
  %24 = load i32, i32* %i, align 4
  %sub17 = sub nsw i32 %24, 1
  %idxprom18 = sext i32 %sub17 to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %vla, i64 %idxprom18
  %25 = load i32, i32* %arrayidx19, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end8
  %26 = load i32, i32* %t, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %26, %cond.false ]
  %27 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %27 to i64
  %arrayidx21 = getelementptr inbounds i32, i32* %vla, i64 %idxprom20
  store i32 %cond, i32* %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %pricesSize.addr, align 4
  %sub22 = sub nsw i32 %29, 1
  %idxprom23 = sext i32 %sub22 to i64
  %arrayidx24 = getelementptr inbounds i32, i32* %vla1, i64 %idxprom23
  store i32 0, i32* %arrayidx24, align 4
  %30 = load i32, i32* %pricesSize.addr, align 4
  %sub25 = sub nsw i32 %30, 1
  store i32 %sub25, i32* %min_max, align 4
  %31 = load i32, i32* %pricesSize.addr, align 4
  %sub26 = sub nsw i32 %31, 2
  store i32 %sub26, i32* %i, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc54, %for.end
  %32 = load i32, i32* %i, align 4
  %cmp28 = icmp sge i32 %32, 0
  br i1 %cmp28, label %for.body29, label %for.end55

for.body29:                                       ; preds = %for.cond27
  %33 = load i32*, i32** %prices.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %34 to i64
  %arrayidx31 = getelementptr inbounds i32, i32* %33, i64 %idxprom30
  %35 = load i32, i32* %arrayidx31, align 4
  %36 = load i32*, i32** %prices.addr, align 8
  %37 = load i32, i32* %min_max, align 4
  %idxprom32 = sext i32 %37 to i64
  %arrayidx33 = getelementptr inbounds i32, i32* %36, i64 %idxprom32
  %38 = load i32, i32* %arrayidx33, align 4
  %cmp34 = icmp sgt i32 %35, %38
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %for.body29
  %39 = load i32, i32* %i, align 4
  store i32 %39, i32* %min_max, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %for.body29
  %40 = load i32*, i32** %prices.addr, align 8
  %41 = load i32, i32* %min_max, align 4
  %idxprom37 = sext i32 %41 to i64
  %arrayidx38 = getelementptr inbounds i32, i32* %40, i64 %idxprom37
  %42 = load i32, i32* %arrayidx38, align 4
  %43 = load i32*, i32** %prices.addr, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %44 to i64
  %arrayidx40 = getelementptr inbounds i32, i32* %43, i64 %idxprom39
  %45 = load i32, i32* %arrayidx40, align 4
  %sub41 = sub nsw i32 %42, %45
  store i32 %sub41, i32* %t, align 4
  %46 = load i32, i32* %i, align 4
  %add = add nsw i32 %46, 1
  %idxprom42 = sext i32 %add to i64
  %arrayidx43 = getelementptr inbounds i32, i32* %vla1, i64 %idxprom42
  %47 = load i32, i32* %arrayidx43, align 4
  %48 = load i32, i32* %t, align 4
  %cmp44 = icmp sgt i32 %47, %48
  br i1 %cmp44, label %cond.true45, label %cond.false49

cond.true45:                                      ; preds = %if.end36
  %49 = load i32, i32* %i, align 4
  %add46 = add nsw i32 %49, 1
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds i32, i32* %vla1, i64 %idxprom47
  %50 = load i32, i32* %arrayidx48, align 4
  br label %cond.end50

cond.false49:                                     ; preds = %if.end36
  %51 = load i32, i32* %t, align 4
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false49, %cond.true45
  %cond51 = phi i32 [ %50, %cond.true45 ], [ %51, %cond.false49 ]
  %52 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %52 to i64
  %arrayidx53 = getelementptr inbounds i32, i32* %vla1, i64 %idxprom52
  store i32 %cond51, i32* %arrayidx53, align 4
  br label %for.inc54

for.inc54:                                        ; preds = %cond.end50
  %53 = load i32, i32* %i, align 4
  %dec = add nsw i32 %53, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond27, !llvm.loop !6

for.end55:                                        ; preds = %for.cond27
  store i32 0, i32* %min_max, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc67, %for.end55
  %54 = load i32, i32* %i, align 4
  %55 = load i32, i32* %pricesSize.addr, align 4
  %cmp57 = icmp slt i32 %54, %55
  br i1 %cmp57, label %for.body58, label %for.end69

for.body58:                                       ; preds = %for.cond56
  %56 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %56 to i64
  %arrayidx60 = getelementptr inbounds i32, i32* %vla, i64 %idxprom59
  %57 = load i32, i32* %arrayidx60, align 4
  %58 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %58 to i64
  %arrayidx62 = getelementptr inbounds i32, i32* %vla1, i64 %idxprom61
  %59 = load i32, i32* %arrayidx62, align 4
  %add63 = add nsw i32 %57, %59
  store i32 %add63, i32* %t, align 4
  %60 = load i32, i32* %t, align 4
  %61 = load i32, i32* %min_max, align 4
  %cmp64 = icmp sgt i32 %60, %61
  br i1 %cmp64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %for.body58
  %62 = load i32, i32* %t, align 4
  store i32 %62, i32* %min_max, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %for.body58
  br label %for.inc67

for.inc67:                                        ; preds = %if.end66
  %63 = load i32, i32* %i, align 4
  %inc68 = add nsw i32 %63, 1
  store i32 %inc68, i32* %i, align 4
  br label %for.cond56, !llvm.loop !7

for.end69:                                        ; preds = %for.cond56
  %64 = load i32, i32* %min_max, align 4
  store i32 %64, i32* %retval, align 4
  %65 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %65)
  br label %return

return:                                           ; preds = %for.end69, %if.then
  %66 = load i32, i32* %retval, align 4
  ret i32 %66
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca [8 x i32], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [8 x i32]* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([8 x i32]* @__const.main.x to i8*), i64 32, i1 false)
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %x, i64 0, i64 0
  %call = call i32 @maxProfit(i32* %arraydecay, i32 8)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %call)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
