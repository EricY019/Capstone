; ModuleID = './code/286-23371code.c'
source_filename = "./code/286-23371code.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@A = global [2000 x [2000 x float]] zeroinitializer, align 4
@B = global [2000 x [2000 x float]] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 2000
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 2000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2000 x [2000 x float]], ptr @A, i64 0, i64 %idxprom
  %3 = load i32, ptr %j, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [2000 x float], ptr %arrayidx, i64 0, i64 %idxprom4
  store float 0.000000e+00, ptr %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %4 = load i32, ptr %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %5 = load i32, ptr %i, align 4
  %inc7 = add nsw i32 %5, 1
  store i32 %inc7, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end8:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc26, %for.end8
  %6 = load i32, ptr %i, align 4
  %cmp10 = icmp slt i32 %6, 1600
  br i1 %cmp10, label %for.body11, label %for.end28

for.body11:                                       ; preds = %for.cond9
  store i32 0, ptr %j, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc23, %for.body11
  %7 = load i32, ptr %j, align 4
  %cmp13 = icmp slt i32 %7, 1600
  br i1 %cmp13, label %for.body14, label %for.end25

for.body14:                                       ; preds = %for.cond12
  %8 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %8 to i64
  %arrayidx16 = getelementptr inbounds [2000 x [2000 x float]], ptr @B, i64 0, i64 %idxprom15
  %9 = load i32, ptr %j, align 4
  %idxprom17 = sext i32 %9 to i64
  %arrayidx18 = getelementptr inbounds [2000 x float], ptr %arrayidx16, i64 0, i64 %idxprom17
  %10 = load float, ptr %arrayidx18, align 4
  %11 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %11 to i64
  %arrayidx20 = getelementptr inbounds [2000 x [2000 x float]], ptr @A, i64 0, i64 %idxprom19
  %12 = load i32, ptr %j, align 4
  %idxprom21 = sext i32 %12 to i64
  %arrayidx22 = getelementptr inbounds [2000 x float], ptr %arrayidx20, i64 0, i64 %idxprom21
  store float %10, ptr %arrayidx22, align 4
  br label %for.inc23

for.inc23:                                        ; preds = %for.body14
  %13 = load i32, ptr %j, align 4
  %inc24 = add nsw i32 %13, 1
  store i32 %inc24, ptr %j, align 4
  br label %for.cond12, !llvm.loop !8

for.end25:                                        ; preds = %for.cond12
  br label %for.inc26

for.inc26:                                        ; preds = %for.end25
  %14 = load i32, ptr %i, align 4
  %inc27 = add nsw i32 %14, 1
  store i32 %inc27, ptr %i, align 4
  br label %for.cond9, !llvm.loop !9

for.end28:                                        ; preds = %for.cond9
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
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
!9 = distinct !{!9, !6}
