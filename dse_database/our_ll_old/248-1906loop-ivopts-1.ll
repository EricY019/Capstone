; ModuleID = './code/248-1906loop-ivopts-1.c'
source_filename = "./code/248-1906loop-ivopts-1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@foo.t16 = internal global [16 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01], align 4
@foo.tmp = internal global [4 x float] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca [4 x float], align 4
  store i32 0, ptr %retval, align 4
  %arraydecay = getelementptr inbounds [4 x float], ptr %x, i64 0, i64 0
  call void @foo(ptr noundef %arraydecay)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @foo(ptr noundef %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %temp = alloca float, align 4
  store ptr %x, ptr %x.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %sub = sub nsw i32 3, %1
  store i32 %sub, ptr %k, align 4
  %2 = load i32, ptr %k, align 4
  %mul = mul nsw i32 5, %2
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds [16 x float], ptr @foo.t16, i64 0, i64 %idxprom
  %3 = load float, ptr %arrayidx, align 4
  store float %3, ptr %temp, align 4
  %4 = load i32, ptr %k, align 4
  %add = add nsw i32 %4, 1
  store i32 %add, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %5, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, ptr %k, align 4
  %7 = load i32, ptr %j, align 4
  %mul4 = mul nsw i32 %7, 4
  %add5 = add nsw i32 %6, %mul4
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds [16 x float], ptr @foo.t16, i64 0, i64 %idxprom6
  %8 = load float, ptr %arrayidx7, align 4
  %9 = load float, ptr %temp, align 4
  %mul8 = fmul float %8, %9
  %10 = load i32, ptr %k, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [4 x float], ptr @foo.tmp, i64 0, i64 %idxprom9
  store float %mul8, ptr %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %11 = load i32, ptr %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %12 = load i32, ptr %i, align 4
  %inc12 = add nsw i32 %12, 1
  store i32 %inc12, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end13:                                        ; preds = %for.cond
  %13 = load float, ptr @foo.tmp, align 4
  %14 = load ptr, ptr %x.addr, align 8
  %arrayidx14 = getelementptr inbounds float, ptr %14, i64 0
  store float %13, ptr %arrayidx14, align 4
  %15 = load float, ptr getelementptr inbounds ([4 x float], ptr @foo.tmp, i64 0, i64 1), align 4
  %16 = load ptr, ptr %x.addr, align 8
  %arrayidx15 = getelementptr inbounds float, ptr %16, i64 1
  store float %15, ptr %arrayidx15, align 4
  %17 = load float, ptr getelementptr inbounds ([4 x float], ptr @foo.tmp, i64 0, i64 2), align 4
  %18 = load ptr, ptr %x.addr, align 8
  %arrayidx16 = getelementptr inbounds float, ptr %18, i64 2
  store float %17, ptr %arrayidx16, align 4
  %19 = load float, ptr getelementptr inbounds ([4 x float], ptr @foo.tmp, i64 0, i64 3), align 4
  %20 = load ptr, ptr %x.addr, align 8
  %arrayidx17 = getelementptr inbounds float, ptr %20, i64 3
  store float %19, ptr %arrayidx17, align 4
  ret void
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
