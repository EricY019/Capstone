; ModuleID = './code/048-13514force-parallel-6.c'
source_filename = "./code/048-13514force-parallel-6.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@Y = global [1000 x i32] zeroinitializer, align 4
@X = global [1000 x i32] zeroinitializer, align 4
@A = global [1000 x [1000 x i32]] zeroinitializer, align 4
@B = global [1000 x i32] zeroinitializer, align 4
@C = global [1000 x [1000 x i32]] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @foo() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc36, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 500
  br i1 %cmp, label %for.body, label %for.end38

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], ptr @Y, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %add = add nsw i32 %2, 10
  %3 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [1000 x i32], ptr @X, i64 0, i64 %idxprom1
  store i32 %add, ptr %arrayidx2, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc33, %for.body
  %4 = load i32, ptr %j, align 4
  %cmp4 = icmp slt i32 %4, 500
  br i1 %cmp4, label %for.body5, label %for.end35

for.body5:                                        ; preds = %for.cond3
  %5 = load i32, ptr %j, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [1000 x [1000 x i32]], ptr @A, i64 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [1000 x i32], ptr %arrayidx7, i64 0, i64 500
  %6 = load i32, ptr %arrayidx8, align 4
  %7 = load i32, ptr %j, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [1000 x i32], ptr @B, i64 0, i64 %idxprom9
  store i32 %6, ptr %arrayidx10, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body5
  %8 = load i32, ptr %k, align 4
  %cmp12 = icmp slt i32 %8, 500
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %9 = load i32, ptr %j, align 4
  %idxprom14 = sext i32 %9 to i64
  %arrayidx15 = getelementptr inbounds [1000 x i32], ptr @B, i64 0, i64 %idxprom14
  %10 = load i32, ptr %arrayidx15, align 4
  %11 = load i32, ptr %j, align 4
  %idxprom16 = sext i32 %11 to i64
  %arrayidx17 = getelementptr inbounds [1000 x [1000 x i32]], ptr @C, i64 0, i64 %idxprom16
  %12 = load i32, ptr %k, align 4
  %idxprom18 = sext i32 %12 to i64
  %arrayidx19 = getelementptr inbounds [1000 x i32], ptr %arrayidx17, i64 0, i64 %idxprom18
  %13 = load i32, ptr %arrayidx19, align 4
  %add20 = add nsw i32 %10, %13
  %14 = load i32, ptr %j, align 4
  %add21 = add nsw i32 %14, 1
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [1000 x [1000 x i32]], ptr @A, i64 0, i64 %idxprom22
  %15 = load i32, ptr %k, align 4
  %idxprom24 = sext i32 %15 to i64
  %arrayidx25 = getelementptr inbounds [1000 x i32], ptr %arrayidx23, i64 0, i64 %idxprom24
  store i32 %add20, ptr %arrayidx25, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %16 = load i32, ptr %k, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond11, !llvm.loop !5

for.end:                                          ; preds = %for.cond11
  %17 = load i32, ptr %j, align 4
  %add26 = add nsw i32 %17, 1
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds [1000 x [1000 x i32]], ptr @A, i64 0, i64 %idxprom27
  %arrayidx29 = getelementptr inbounds [1000 x i32], ptr %arrayidx28, i64 0, i64 500
  %18 = load i32, ptr %arrayidx29, align 4
  %19 = load i32, ptr %i, align 4
  %20 = load i32, ptr %j, align 4
  %add30 = add nsw i32 %19, %20
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds [1000 x i32], ptr @Y, i64 0, i64 %idxprom31
  store i32 %18, ptr %arrayidx32, align 4
  br label %for.inc33

for.inc33:                                        ; preds = %for.end
  %21 = load i32, ptr %j, align 4
  %inc34 = add nsw i32 %21, 1
  store i32 %inc34, ptr %j, align 4
  br label %for.cond3, !llvm.loop !7

for.end35:                                        ; preds = %for.cond3
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %22 = load i32, ptr %i, align 4
  %inc37 = add nsw i32 %22, 1
  store i32 %inc37, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end38:                                        ; preds = %for.cond
  %23 = load i32, ptr getelementptr inbounds ([1000 x i32], ptr getelementptr inbounds ([1000 x [1000 x i32]], ptr @A, i64 0, i64 1), i64 0, i64 5), align 4
  %24 = load i32, ptr getelementptr inbounds ([1000 x i32], ptr @B, i64 0, i64 6), align 4
  %mul = mul nsw i32 %23, %24
  ret i32 %mul
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @foo()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
