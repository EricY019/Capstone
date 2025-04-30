; ModuleID = 'code/001-21665rain.c'
source_filename = "code/001-21665rain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.rain = private unnamed_addr constant [5 x [12 x float]] [[12 x float] [float 0x4011333340000000, float 0x4011333340000000, float 0x4011333340000000, float 3.000000e+00, float 2.000000e+00, float 0x3FF3333340000000, float 0x3FC99999A0000000, float 0x3FC99999A0000000, float 0x3FD99999A0000000, float 0x4003333340000000, float 3.500000e+00, float 0x401A666660000000], [12 x float] [float 8.500000e+00, float 0x4020666660000000, float 0x3FF3333340000000, float 0x3FF99999A0000000, float 0x4003333340000000, float 0.000000e+00, float 0x4014CCCCC0000000, float 0x3FECCCCCC0000000, float 0x3FD3333340000000, float 0x3FECCCCCC0000000, float 0x3FF6666660000000, float 0x401D333340000000], [12 x float] [float 0x4022333340000000, float 8.500000e+00, float 0x401ACCCCC0000000, float 0x4011333340000000, float 0x4000CCCCC0000000, float 0x3FE99999A0000000, float 0x3FC99999A0000000, float 0x3FC99999A0000000, float 0x3FF19999A0000000, float 0x4002666660000000, float 0x4018666660000000, float 0x4020CCCCC0000000], [12 x float] [float 0x401CCCCCC0000000, float 0x4023CCCCC0000000, float 0x4020CCCCC0000000, float 0x400A666660000000, float 0x3FF3333340000000, float 0x3FE99999A0000000, float 0x3FD99999A0000000, float 0.000000e+00, float 0x3FE3333340000000, float 0x3FFB333340000000, float 0x4011333340000000, float 0x4018CCCCC0000000], [12 x float] [float 0x401E666660000000, float 0x4016666660000000, float 0x400E666660000000, float 0x4006666660000000, float 0x400E666660000000, float 0x3FC99999A0000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0x3FF4CCCCC0000000, float 0x4004CCCCC0000000, float 0x4014CCCCC0000000]], align 16
@.str = private unnamed_addr constant [26 x i8] c" YEAR RAINFALL (inches) \0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%5d %15.1f\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"\0AThe yearly average is %.1f inches.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"MONTHLY AVERAGES: \0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c" Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%4.1f \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %rain = alloca [5 x [12 x float]], align 16
  %year = alloca i32, align 4
  %month = alloca i32, align 4
  %subtot = alloca float, align 4
  %total = alloca float, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [5 x [12 x float]]* %rain to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([5 x [12 x float]]* @__const.main.rain to i8*), i64 240, i1 false)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %year, align 4
  store float 0.000000e+00, float* %total, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %1 = load i32, i32* %year, align 4
  %cmp = icmp slt i32 %1, 5
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %month, align 4
  store float 0.000000e+00, float* %subtot, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %month, align 4
  %cmp2 = icmp slt i32 %2, 12
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, i32* %year, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [5 x [12 x float]], [5 x [12 x float]]* %rain, i64 0, i64 %idxprom
  %4 = load i32, i32* %month, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx, i64 0, i64 %idxprom4
  %5 = load float, float* %arrayidx5, align 4
  %6 = load float, float* %subtot, align 4
  %add = fadd float %6, %5
  store float %add, float* %subtot, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %7 = load i32, i32* %month, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %month, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  %8 = load i32, i32* %year, align 4
  %add6 = add nsw i32 2000, %8
  %9 = load float, float* %subtot, align 4
  %conv = fpext float %9 to double
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %add6, double %conv)
  %10 = load float, float* %subtot, align 4
  %11 = load float, float* %total, align 4
  %add8 = fadd float %11, %10
  store float %add8, float* %total, align 4
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %12 = load i32, i32* %year, align 4
  %inc10 = add nsw i32 %12, 1
  store i32 %inc10, i32* %year, align 4
  br label %for.cond, !llvm.loop !6

for.end11:                                        ; preds = %for.cond
  %13 = load float, float* %total, align 4
  %div = fdiv float %13, 5.000000e+00
  %conv12 = fpext float %div to double
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), double %conv12)
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %month, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc35, %for.end11
  %14 = load i32, i32* %month, align 4
  %cmp17 = icmp slt i32 %14, 12
  br i1 %cmp17, label %for.body19, label %for.end37

for.body19:                                       ; preds = %for.cond16
  store i32 0, i32* %year, align 4
  store float 0.000000e+00, float* %subtot, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc29, %for.body19
  %15 = load i32, i32* %year, align 4
  %cmp21 = icmp slt i32 %15, 5
  br i1 %cmp21, label %for.body23, label %for.end31

for.body23:                                       ; preds = %for.cond20
  %16 = load i32, i32* %year, align 4
  %idxprom24 = sext i32 %16 to i64
  %arrayidx25 = getelementptr inbounds [5 x [12 x float]], [5 x [12 x float]]* %rain, i64 0, i64 %idxprom24
  %17 = load i32, i32* %month, align 4
  %idxprom26 = sext i32 %17 to i64
  %arrayidx27 = getelementptr inbounds [12 x float], [12 x float]* %arrayidx25, i64 0, i64 %idxprom26
  %18 = load float, float* %arrayidx27, align 4
  %19 = load float, float* %subtot, align 4
  %add28 = fadd float %19, %18
  store float %add28, float* %subtot, align 4
  br label %for.inc29

for.inc29:                                        ; preds = %for.body23
  %20 = load i32, i32* %year, align 4
  %inc30 = add nsw i32 %20, 1
  store i32 %inc30, i32* %year, align 4
  br label %for.cond20, !llvm.loop !7

for.end31:                                        ; preds = %for.cond20
  %21 = load float, float* %subtot, align 4
  %div32 = fdiv float %21, 5.000000e+00
  %conv33 = fpext float %div32 to double
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), double %conv33)
  br label %for.inc35

for.inc35:                                        ; preds = %for.end31
  %22 = load i32, i32* %month, align 4
  %inc36 = add nsw i32 %22, 1
  store i32 %inc36, i32* %month, align 4
  br label %for.cond16, !llvm.loop !8

for.end37:                                        ; preds = %for.cond16
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
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
