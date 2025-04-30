; ModuleID = './code/096-30172ejercicioenclase3.c'
source_filename = "./code/096-30172ejercicioenclase3.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %microsxhora = alloca [24 x i32], align 4
  %pasajerosxhora = alloca [24 x i32], align 4
  %"recaudaci\C3\B3nxhora" = alloca [24 x i32], align 4
  %promediopxh = alloca [24 x i32], align 4
  %cantmaxmicros = alloca i32, align 4
  %recaudacionxhora = alloca [24 x i32], align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %cantmaxmicros, align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [24 x i32], ptr %pasajerosxhora, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %3 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [24 x i32], ptr %microsxhora, i64 0, i64 %idxprom1
  %4 = load i32, ptr %arrayidx2, align 4
  %div = sdiv i32 %2, %4
  %5 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [24 x i32], ptr %promediopxh, i64 0, i64 %idxprom3
  store i32 %div, ptr %arrayidx4, align 4
  %6 = load i32, ptr %cantmaxmicros, align 4
  %7 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [24 x i32], ptr %microsxhora, i64 0, i64 %idxprom5
  %8 = load i32, ptr %arrayidx6, align 4
  %cmp7 = icmp slt i32 %6, %8
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [24 x i32], ptr %microsxhora, i64 0, i64 %idxprom8
  %10 = load i32, ptr %arrayidx9, align 4
  store i32 %10, ptr %cantmaxmicros, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %11 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [24 x i32], ptr %pasajerosxhora, i64 0, i64 %idxprom10
  %12 = load i32, ptr %arrayidx11, align 4
  %mul = mul nsw i32 %12, 800
  %13 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [24 x i32], ptr %recaudacionxhora, i64 0, i64 %idxprom12
  store i32 %mul, ptr %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %i, align 4
  %add = add nsw i32 %14, 1
  store i32 %add, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
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
