; ModuleID = './code/312-4052jacobi2.c'
source_filename = "./code/312-4052jacobi2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [512 x double], align 8
  %b = alloca [512 x double], align 8
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %t, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %entry
  %0 = load i32, ptr %t, align 4
  %cmp = icmp sle i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end24

for.body:                                         ; preds = %for.cond
  store i32 2, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %i, align 4
  %cmp2 = icmp sle i32 %1, 511
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [512 x double], ptr %a, i64 0, i64 %idxprom
  %3 = load double, ptr %arrayidx, align 8
  %4 = load i32, ptr %i, align 4
  %add = add nsw i32 %4, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [512 x double], ptr %a, i64 0, i64 %idxprom4
  %5 = load double, ptr %arrayidx5, align 8
  %add6 = fadd double %3, %5
  %6 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [512 x double], ptr %a, i64 0, i64 %idxprom7
  %7 = load double, ptr %arrayidx8, align 8
  %mul9 = fmul double 5.000000e-01, %7
  %8 = call double @llvm.fmuladd.f64(double 2.500000e-01, double %add6, double %mul9)
  %9 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [512 x double], ptr %b, i64 0, i64 %idxprom10
  store double %8, ptr %arrayidx11, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  store i32 2, ptr %i, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc19, %for.end
  %11 = load i32, ptr %i, align 4
  %cmp13 = icmp sle i32 %11, 511
  br i1 %cmp13, label %for.body14, label %for.end21

for.body14:                                       ; preds = %for.cond12
  %12 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [512 x double], ptr %b, i64 0, i64 %idxprom15
  %13 = load double, ptr %arrayidx16, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [512 x double], ptr %a, i64 0, i64 %idxprom17
  store double %13, ptr %arrayidx18, align 8
  br label %for.inc19

for.inc19:                                        ; preds = %for.body14
  %15 = load i32, ptr %i, align 4
  %inc20 = add nsw i32 %15, 1
  store i32 %inc20, ptr %i, align 4
  br label %for.cond12, !llvm.loop !7

for.end21:                                        ; preds = %for.cond12
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %16 = load i32, ptr %t, align 4
  %inc23 = add nsw i32 %16, 1
  store i32 %inc23, ptr %t, align 4
  br label %for.cond, !llvm.loop !8

for.end24:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
