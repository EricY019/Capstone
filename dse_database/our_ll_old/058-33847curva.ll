; ModuleID = './code/058-33847curva.c'
source_filename = "./code/058-33847curva.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.sample_s = type { i32, i32 }

@curve = global [11 x %struct.sample_s] [%struct.sample_s { i32 10000, i32 265 }, %struct.sample_s { i32 8000, i32 268 }, %struct.sample_s { i32 6000, i32 274 }, %struct.sample_s { i32 4000, i32 281 }, %struct.sample_s { i32 3000, i32 288 }, %struct.sample_s { i32 2000, i32 293 }, %struct.sample_s { i32 1500, i32 298 }, %struct.sample_s { i32 1000, i32 303 }, %struct.sample_s { i32 800, i32 307 }, %struct.sample_s { i32 600, i32 314 }, %struct.sample_s { i32 400, i32 324 }], align 4
@nsamples = global i64 11, align 8
@.str = private unnamed_addr constant [7 x i8] c"%d;%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ppm0 = alloca i32, align 4
  %ppm2 = alloca i32, align 4
  %mv0 = alloca i32, align 4
  %mv8 = alloca i32, align 4
  %diffppm = alloca i32, align 4
  %diffmv = alloca i32, align 4
  %step = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %i, align 4
  store i32 0, ptr %j, align 4
  store i32 0, ptr %k, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %0 = load i32, ptr %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load i64, ptr @nsamples, align 8
  %sub = sub i64 %1, 1
  %cmp = icmp ult i64 %conv, %sub
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %add = add nsw i32 %2, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [11 x %struct.sample_s], ptr @curve, i64 0, i64 %idxprom
  %ppm = getelementptr inbounds %struct.sample_s, ptr %arrayidx, i32 0, i32 0
  %3 = load i32, ptr %ppm, align 4
  store i32 %3, ptr %ppm0, align 4
  %4 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [11 x %struct.sample_s], ptr @curve, i64 0, i64 %idxprom3
  %ppm5 = getelementptr inbounds %struct.sample_s, ptr %arrayidx4, i32 0, i32 0
  %5 = load i32, ptr %ppm5, align 4
  store i32 %5, ptr %ppm2, align 4
  %6 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [11 x %struct.sample_s], ptr @curve, i64 0, i64 %idxprom6
  %mv = getelementptr inbounds %struct.sample_s, ptr %arrayidx7, i32 0, i32 1
  %7 = load i32, ptr %mv, align 4
  store i32 %7, ptr %mv0, align 4
  %8 = load i32, ptr %i, align 4
  %add9 = add nsw i32 %8, 1
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds [11 x %struct.sample_s], ptr @curve, i64 0, i64 %idxprom10
  %mv12 = getelementptr inbounds %struct.sample_s, ptr %arrayidx11, i32 0, i32 1
  %9 = load i32, ptr %mv12, align 4
  store i32 %9, ptr %mv8, align 4
  %10 = load i32, ptr %ppm0, align 4
  %11 = load i32, ptr %ppm2, align 4
  %sub13 = sub nsw i32 %10, %11
  store i32 %sub13, ptr %diffppm, align 4
  %12 = load i32, ptr %mv0, align 4
  %13 = load i32, ptr %mv8, align 4
  %sub14 = sub nsw i32 %12, %13
  store i32 %sub14, ptr %diffmv, align 4
  %14 = load i32, ptr %diffppm, align 4
  %15 = load i32, ptr %diffmv, align 4
  %div = sdiv i32 %14, %15
  store i32 %div, ptr %step, align 4
  %16 = load i32, ptr %mv0, align 4
  store i32 %16, ptr %j, align 4
  %17 = load i32, ptr %ppm2, align 4
  store i32 %17, ptr %k, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc, %for.body
  %18 = load i32, ptr %j, align 4
  %19 = load i32, ptr %mv8, align 4
  %cmp16 = icmp slt i32 %18, %19
  br i1 %cmp16, label %for.body18, label %for.end

for.body18:                                       ; preds = %for.cond15
  %20 = load i32, ptr %j, align 4
  %21 = load i32, ptr %k, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %20, i32 noundef %21)
  br label %for.inc

for.inc:                                          ; preds = %for.body18
  %22 = load i32, ptr %j, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %j, align 4
  %23 = load i32, ptr %step, align 4
  %24 = load i32, ptr %k, align 4
  %sub19 = sub nsw i32 %24, %23
  store i32 %sub19, ptr %k, align 4
  br label %for.cond15, !llvm.loop !5

for.end:                                          ; preds = %for.cond15
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %25 = load i32, ptr %i, align 4
  %inc21 = add nsw i32 %25, 1
  store i32 %inc21, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end22:                                        ; preds = %for.cond
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
