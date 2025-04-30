; ModuleID = 'code/101-10836Ch8p390pe4.c'
source_filename = "code/101-10836Ch8p390pe4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.rates = private unnamed_addr constant [9 x float] [float 0x40323D70A0000000, float 0x4039A147A0000000, float 0x4017C28F60000000, float 0x4040F5C280000000, float 0x400DAE1480000000, float 0x40406B8520000000, float 0x4041F70A40000000, float 0x40323D70A0000000, float 0x401BAE1480000000], align 16
@.str = private unnamed_addr constant [16 x i8] c"\0AThe array is: \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%.2f \00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"and \0Athe array's highest number is %.2f, and the lowest %.2f.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %lowRate = alloca float, align 4
  %highRate = alloca float, align 4
  %rates = alloca [9 x float], align 16
  %i = alloca i32, align 4
  %i13 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [9 x float]* %rates to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([9 x float]* @__const.main.rates to i8*), i64 36, i1 false)
  %arrayidx = getelementptr inbounds [9 x float], [9 x float]* %rates, i64 0, i64 1
  %1 = load float, float* %arrayidx, align 4
  store float %1, float* %lowRate, align 4
  %arrayidx1 = getelementptr inbounds [9 x float], [9 x float]* %rates, i64 0, i64 1
  %2 = load float, float* %arrayidx1, align 4
  store float %2, float* %highRate, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [9 x float], [9 x float]* %rates, i64 0, i64 %idxprom
  %5 = load float, float* %arrayidx2, align 4
  %6 = load float, float* %lowRate, align 4
  %cmp3 = fcmp ole float %5, %6
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [9 x float], [9 x float]* %rates, i64 0, i64 %idxprom4
  %8 = load float, float* %arrayidx5, align 4
  store float %8, float* %lowRate, align 4
  br label %if.end12

if.else:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [9 x float], [9 x float]* %rates, i64 0, i64 %idxprom6
  %10 = load float, float* %arrayidx7, align 4
  %11 = load float, float* %highRate, align 4
  %cmp8 = fcmp oge float %10, %11
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.else
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [9 x float], [9 x float]* %rates, i64 0, i64 %idxprom10
  %13 = load float, float* %arrayidx11, align 4
  store float %13, float* %highRate, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %i13, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc20, %for.end
  %15 = load i32, i32* %i13, align 4
  %cmp15 = icmp slt i32 %15, 9
  br i1 %cmp15, label %for.body16, label %for.end22

for.body16:                                       ; preds = %for.cond14
  %16 = load i32, i32* %i13, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [9 x float], [9 x float]* %rates, i64 0, i64 %idxprom17
  %17 = load float, float* %arrayidx18, align 4
  %conv = fpext float %17 to double
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), double %conv)
  br label %for.inc20

for.inc20:                                        ; preds = %for.body16
  %18 = load i32, i32* %i13, align 4
  %inc21 = add nsw i32 %18, 1
  store i32 %inc21, i32* %i13, align 4
  br label %for.cond14, !llvm.loop !6

for.end22:                                        ; preds = %for.cond14
  %19 = load float, float* %highRate, align 4
  %conv23 = fpext float %19 to double
  %20 = load float, float* %lowRate, align 4
  %conv24 = fpext float %20 to double
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), double %conv23, double %conv24)
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
