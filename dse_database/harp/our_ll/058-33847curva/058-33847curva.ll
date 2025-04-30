; ModuleID = 'code/058-33847curva.c'
source_filename = "code/058-33847curva.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sample_s = type { i32, i32 }

@curve = dso_local global [11 x %struct.sample_s] [%struct.sample_s { i32 10000, i32 265 }, %struct.sample_s { i32 8000, i32 268 }, %struct.sample_s { i32 6000, i32 274 }, %struct.sample_s { i32 4000, i32 281 }, %struct.sample_s { i32 3000, i32 288 }, %struct.sample_s { i32 2000, i32 293 }, %struct.sample_s { i32 1500, i32 298 }, %struct.sample_s { i32 1000, i32 303 }, %struct.sample_s { i32 800, i32 307 }, %struct.sample_s { i32 600, i32 314 }, %struct.sample_s { i32 400, i32 324 }], align 16
@nsamples = dso_local global i64 11, align 8
@.str = private unnamed_addr constant [7 x i8] c"%d;%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
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
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load i64, i64* @nsamples, align 8
  %sub = sub i64 %1, 1
  %cmp = icmp ult i64 %conv, %sub
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %add = add nsw i32 %2, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [11 x %struct.sample_s], [11 x %struct.sample_s]* @curve, i64 0, i64 %idxprom
  %ppm = getelementptr inbounds %struct.sample_s, %struct.sample_s* %arrayidx, i32 0, i32 0
  %3 = load i32, i32* %ppm, align 8
  store i32 %3, i32* %ppm0, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [11 x %struct.sample_s], [11 x %struct.sample_s]* @curve, i64 0, i64 %idxprom3
  %ppm5 = getelementptr inbounds %struct.sample_s, %struct.sample_s* %arrayidx4, i32 0, i32 0
  %5 = load i32, i32* %ppm5, align 8
  store i32 %5, i32* %ppm2, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [11 x %struct.sample_s], [11 x %struct.sample_s]* @curve, i64 0, i64 %idxprom6
  %mv = getelementptr inbounds %struct.sample_s, %struct.sample_s* %arrayidx7, i32 0, i32 1
  %7 = load i32, i32* %mv, align 4
  store i32 %7, i32* %mv0, align 4
  %8 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %8, 1
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds [11 x %struct.sample_s], [11 x %struct.sample_s]* @curve, i64 0, i64 %idxprom10
  %mv12 = getelementptr inbounds %struct.sample_s, %struct.sample_s* %arrayidx11, i32 0, i32 1
  %9 = load i32, i32* %mv12, align 4
  store i32 %9, i32* %mv8, align 4
  %10 = load i32, i32* %ppm0, align 4
  %11 = load i32, i32* %ppm2, align 4
  %sub13 = sub nsw i32 %10, %11
  store i32 %sub13, i32* %diffppm, align 4
  %12 = load i32, i32* %mv0, align 4
  %13 = load i32, i32* %mv8, align 4
  %sub14 = sub nsw i32 %12, %13
  store i32 %sub14, i32* %diffmv, align 4
  %14 = load i32, i32* %diffppm, align 4
  %15 = load i32, i32* %diffmv, align 4
  %div = sdiv i32 %14, %15
  store i32 %div, i32* %step, align 4
  %16 = load i32, i32* %mv0, align 4
  store i32 %16, i32* %j, align 4
  %17 = load i32, i32* %ppm2, align 4
  store i32 %17, i32* %k, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc, %for.body
  %18 = load i32, i32* %j, align 4
  %19 = load i32, i32* %mv8, align 4
  %cmp16 = icmp slt i32 %18, %19
  br i1 %cmp16, label %for.body18, label %for.end

for.body18:                                       ; preds = %for.cond15
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %k, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  br label %for.inc

for.inc:                                          ; preds = %for.body18
  %22 = load i32, i32* %j, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %j, align 4
  %23 = load i32, i32* %step, align 4
  %24 = load i32, i32* %k, align 4
  %sub19 = sub nsw i32 %24, %23
  store i32 %sub19, i32* %k, align 4
  br label %for.cond15, !llvm.loop !4

for.end:                                          ; preds = %for.cond15
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %25 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %25, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end22:                                        ; preds = %for.cond
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
