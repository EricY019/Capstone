; ModuleID = './code/100-28964123_best_time_stock_III.c'
source_filename = "./code/100-28964123_best_time_stock_III.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.x = private unnamed_addr constant [8 x i32] [i32 3, i32 3, i32 5, i32 0, i32 0, i32 3, i32 1, i32 4], align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @maxProfit(ptr noundef %prices, i32 noundef %pricesSize) #0 {
entry:
  %retval = alloca i32, align 4
  %prices.addr = alloca ptr, align 8
  %pricesSize.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %min_max = alloca i32, align 4
  %t = alloca i32, align 4
  store ptr %prices, ptr %prices.addr, align 8
  store i32 %pricesSize, ptr %pricesSize.addr, align 4
  %0 = load i32, ptr %pricesSize.addr, align 4
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %pricesSize.addr, align 4
  %2 = zext i32 %1 to i64
  %3 = call ptr @llvm.stacksave.p0()
  store ptr %3, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %2, align 4
  store i64 %2, ptr %__vla_expr0, align 8
  %4 = load i32, ptr %pricesSize.addr, align 4
  %5 = zext i32 %4 to i64
  %vla1 = alloca i32, i64 %5, align 4
  store i64 %5, ptr %__vla_expr1, align 8
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 0
  store i32 0, ptr %arrayidx, align 4
  store i32 0, ptr %min_max, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %pricesSize.addr, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %prices.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %8, i64 %idxprom
  %10 = load i32, ptr %arrayidx3, align 4
  %11 = load ptr, ptr %prices.addr, align 8
  %12 = load i32, ptr %min_max, align 4
  %idxprom4 = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %11, i64 %idxprom4
  %13 = load i32, ptr %arrayidx5, align 4
  %cmp6 = icmp slt i32 %10, %13
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  store i32 %14, ptr %min_max, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %for.body
  %15 = load ptr, ptr %prices.addr, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %16 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %15, i64 %idxprom9
  %17 = load i32, ptr %arrayidx10, align 4
  %18 = load ptr, ptr %prices.addr, align 8
  %19 = load i32, ptr %min_max, align 4
  %idxprom11 = sext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %18, i64 %idxprom11
  %20 = load i32, ptr %arrayidx12, align 4
  %sub = sub nsw i32 %17, %20
  store i32 %sub, ptr %t, align 4
  %21 = load i32, ptr %i, align 4
  %sub13 = sub nsw i32 %21, 1
  %idxprom14 = sext i32 %sub13 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %vla, i64 %idxprom14
  %22 = load i32, ptr %arrayidx15, align 4
  %23 = load i32, ptr %t, align 4
  %cmp16 = icmp sgt i32 %22, %23
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end8
  %24 = load i32, ptr %i, align 4
  %sub17 = sub nsw i32 %24, 1
  %idxprom18 = sext i32 %sub17 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %vla, i64 %idxprom18
  %25 = load i32, ptr %arrayidx19, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end8
  %26 = load i32, ptr %t, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %26, %cond.false ]
  %27 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %27 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %vla, i64 %idxprom20
  store i32 %cond, ptr %arrayidx21, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %28 = load i32, ptr %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %29 = load i32, ptr %pricesSize.addr, align 4
  %sub22 = sub nsw i32 %29, 1
  %idxprom23 = sext i32 %sub22 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom23
  store i32 0, ptr %arrayidx24, align 4
  %30 = load i32, ptr %pricesSize.addr, align 4
  %sub25 = sub nsw i32 %30, 1
  store i32 %sub25, ptr %min_max, align 4
  %31 = load i32, ptr %pricesSize.addr, align 4
  %sub26 = sub nsw i32 %31, 2
  store i32 %sub26, ptr %i, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc54, %for.end
  %32 = load i32, ptr %i, align 4
  %cmp28 = icmp sge i32 %32, 0
  br i1 %cmp28, label %for.body29, label %for.end55

for.body29:                                       ; preds = %for.cond27
  %33 = load ptr, ptr %prices.addr, align 8
  %34 = load i32, ptr %i, align 4
  %idxprom30 = sext i32 %34 to i64
  %arrayidx31 = getelementptr inbounds i32, ptr %33, i64 %idxprom30
  %35 = load i32, ptr %arrayidx31, align 4
  %36 = load ptr, ptr %prices.addr, align 8
  %37 = load i32, ptr %min_max, align 4
  %idxprom32 = sext i32 %37 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %36, i64 %idxprom32
  %38 = load i32, ptr %arrayidx33, align 4
  %cmp34 = icmp sgt i32 %35, %38
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %for.body29
  %39 = load i32, ptr %i, align 4
  store i32 %39, ptr %min_max, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %for.body29
  %40 = load ptr, ptr %prices.addr, align 8
  %41 = load i32, ptr %min_max, align 4
  %idxprom37 = sext i32 %41 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %40, i64 %idxprom37
  %42 = load i32, ptr %arrayidx38, align 4
  %43 = load ptr, ptr %prices.addr, align 8
  %44 = load i32, ptr %i, align 4
  %idxprom39 = sext i32 %44 to i64
  %arrayidx40 = getelementptr inbounds i32, ptr %43, i64 %idxprom39
  %45 = load i32, ptr %arrayidx40, align 4
  %sub41 = sub nsw i32 %42, %45
  store i32 %sub41, ptr %t, align 4
  %46 = load i32, ptr %i, align 4
  %add = add nsw i32 %46, 1
  %idxprom42 = sext i32 %add to i64
  %arrayidx43 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom42
  %47 = load i32, ptr %arrayidx43, align 4
  %48 = load i32, ptr %t, align 4
  %cmp44 = icmp sgt i32 %47, %48
  br i1 %cmp44, label %cond.true45, label %cond.false49

cond.true45:                                      ; preds = %if.end36
  %49 = load i32, ptr %i, align 4
  %add46 = add nsw i32 %49, 1
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom47
  %50 = load i32, ptr %arrayidx48, align 4
  br label %cond.end50

cond.false49:                                     ; preds = %if.end36
  %51 = load i32, ptr %t, align 4
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false49, %cond.true45
  %cond51 = phi i32 [ %50, %cond.true45 ], [ %51, %cond.false49 ]
  %52 = load i32, ptr %i, align 4
  %idxprom52 = sext i32 %52 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom52
  store i32 %cond51, ptr %arrayidx53, align 4
  br label %for.inc54

for.inc54:                                        ; preds = %cond.end50
  %53 = load i32, ptr %i, align 4
  %dec = add nsw i32 %53, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond27, !llvm.loop !7

for.end55:                                        ; preds = %for.cond27
  store i32 0, ptr %min_max, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc67, %for.end55
  %54 = load i32, ptr %i, align 4
  %55 = load i32, ptr %pricesSize.addr, align 4
  %cmp57 = icmp slt i32 %54, %55
  br i1 %cmp57, label %for.body58, label %for.end69

for.body58:                                       ; preds = %for.cond56
  %56 = load i32, ptr %i, align 4
  %idxprom59 = sext i32 %56 to i64
  %arrayidx60 = getelementptr inbounds i32, ptr %vla, i64 %idxprom59
  %57 = load i32, ptr %arrayidx60, align 4
  %58 = load i32, ptr %i, align 4
  %idxprom61 = sext i32 %58 to i64
  %arrayidx62 = getelementptr inbounds i32, ptr %vla1, i64 %idxprom61
  %59 = load i32, ptr %arrayidx62, align 4
  %add63 = add nsw i32 %57, %59
  store i32 %add63, ptr %t, align 4
  %60 = load i32, ptr %t, align 4
  %61 = load i32, ptr %min_max, align 4
  %cmp64 = icmp sgt i32 %60, %61
  br i1 %cmp64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %for.body58
  %62 = load i32, ptr %t, align 4
  store i32 %62, ptr %min_max, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %for.body58
  br label %for.inc67

for.inc67:                                        ; preds = %if.end66
  %63 = load i32, ptr %i, align 4
  %inc68 = add nsw i32 %63, 1
  store i32 %inc68, ptr %i, align 4
  br label %for.cond56, !llvm.loop !8

for.end69:                                        ; preds = %for.cond56
  %64 = load i32, ptr %min_max, align 4
  store i32 %64, ptr %retval, align 4
  %65 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %65)
  br label %return

return:                                           ; preds = %for.end69, %if.then
  %66 = load i32, ptr %retval, align 4
  ret i32 %66
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca [8 x i32], align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %x, ptr align 4 @__const.main.x, i64 32, i1 false)
  %arraydecay = getelementptr inbounds [8 x i32], ptr %x, i64 0, i64 0
  %call = call i32 @maxProfit(ptr noundef %arraydecay, i32 noundef 8)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %call)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
