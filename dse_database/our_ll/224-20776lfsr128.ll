; ModuleID = 'code/224-20776lfsr128.c'
source_filename = "code/224-20776lfsr128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.startState = private unnamed_addr constant [4 x i32] [i32 -956090405, i32 2135773519, i32 1966568857, i32 2102998947], align 16
@.str = private unnamed_addr constant [8 x i8] c"%03d:  \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%02X  \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %startState = alloca [4 x i32], align 16
  %taps = alloca i32, align 4
  %lfsr = alloca [4 x i32], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [4 x i32]* %startState to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x i32]* @__const.main.startState to i8*), i64 16, i1 false)
  store i32 -805306367, i32* %taps, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %startState, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %lfsr, i64 0, i64 %idxprom1
  store i32 %3, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %n, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc51, %for.end
  %6 = load i32, i32* %n, align 4
  %cmp4 = icmp slt i32 %6, 530
  br i1 %cmp4, label %for.body5, label %for.end53

for.body5:                                        ; preds = %for.cond3
  %7 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %7, 10
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %sub)
  store i32 0, i32* %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc27, %for.body5
  %8 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %8, 4
  br i1 %cmp7, label %for.body8, label %for.end29

for.body8:                                        ; preds = %for.cond6
  %9 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [4 x i32], [4 x i32]* %lfsr, i64 0, i64 %idxprom9
  %10 = load i32, i32* %arrayidx10, align 4
  %shr = lshr i32 %10, 24
  %and = and i32 %shr, 255
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %and)
  %11 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [4 x i32], [4 x i32]* %lfsr, i64 0, i64 %idxprom12
  %12 = load i32, i32* %arrayidx13, align 4
  %shr14 = lshr i32 %12, 16
  %and15 = and i32 %shr14, 255
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %and15)
  %13 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %13 to i64
  %arrayidx18 = getelementptr inbounds [4 x i32], [4 x i32]* %lfsr, i64 0, i64 %idxprom17
  %14 = load i32, i32* %arrayidx18, align 4
  %shr19 = lshr i32 %14, 8
  %and20 = and i32 %shr19, 255
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %and20)
  %15 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %15 to i64
  %arrayidx23 = getelementptr inbounds [4 x i32], [4 x i32]* %lfsr, i64 0, i64 %idxprom22
  %16 = load i32, i32* %arrayidx23, align 4
  %shr24 = lshr i32 %16, 0
  %and25 = and i32 %shr24, 255
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %and25)
  br label %for.inc27

for.inc27:                                        ; preds = %for.body8
  %17 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %17, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond6, !llvm.loop !6

for.end29:                                        ; preds = %for.cond6
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc48, %for.end29
  %18 = load i32, i32* %i, align 4
  %cmp32 = icmp slt i32 %18, 4
  br i1 %cmp32, label %for.body33, label %for.end50

for.body33:                                       ; preds = %for.cond31
  %19 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %19 to i64
  %arrayidx35 = getelementptr inbounds [4 x i32], [4 x i32]* %lfsr, i64 0, i64 %idxprom34
  %20 = load i32, i32* %arrayidx35, align 4
  %and36 = and i32 %20, 1
  %cmp37 = icmp eq i32 %and36, 0
  br i1 %cmp37, label %if.then, label %if.else

if.then:                                          ; preds = %for.body33
  %21 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %21 to i64
  %arrayidx39 = getelementptr inbounds [4 x i32], [4 x i32]* %lfsr, i64 0, i64 %idxprom38
  %22 = load i32, i32* %arrayidx39, align 4
  %shr40 = lshr i32 %22, 1
  %23 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %23 to i64
  %arrayidx42 = getelementptr inbounds [4 x i32], [4 x i32]* %lfsr, i64 0, i64 %idxprom41
  store i32 %shr40, i32* %arrayidx42, align 4
  br label %if.end

if.else:                                          ; preds = %for.body33
  %24 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %24 to i64
  %arrayidx44 = getelementptr inbounds [4 x i32], [4 x i32]* %lfsr, i64 0, i64 %idxprom43
  %25 = load i32, i32* %arrayidx44, align 4
  %shr45 = lshr i32 %25, 1
  %26 = load i32, i32* %taps, align 4
  %xor = xor i32 %shr45, %26
  %27 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %27 to i64
  %arrayidx47 = getelementptr inbounds [4 x i32], [4 x i32]* %lfsr, i64 0, i64 %idxprom46
  store i32 %xor, i32* %arrayidx47, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc48

for.inc48:                                        ; preds = %if.end
  %28 = load i32, i32* %i, align 4
  %inc49 = add nsw i32 %28, 1
  store i32 %inc49, i32* %i, align 4
  br label %for.cond31, !llvm.loop !7

for.end50:                                        ; preds = %for.cond31
  br label %for.inc51

for.inc51:                                        ; preds = %for.end50
  %29 = load i32, i32* %n, align 4
  %inc52 = add nsw i32 %29, 1
  store i32 %inc52, i32* %n, align 4
  br label %for.cond3, !llvm.loop !8

for.end53:                                        ; preds = %for.cond3
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
