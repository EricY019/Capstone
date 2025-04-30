; ModuleID = 'code/351-1576mm.2.c'
source_filename = "code/351-1576mm.2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [500 x [500 x double]] zeroinitializer, align 16
@b = dso_local global [500 x [500 x double]] zeroinitializer, align 16
@c = dso_local global [500 x [500 x double]] zeroinitializer, align 16
@.str = private unnamed_addr constant [41 x i8] c"Tempo impiegato per inizializzare %f s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Tempo per prodotto classico %f s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Tempo totale %f s.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Mflops ----------------> %f \0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Controllo -------------> %f \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %somma = alloca double, align 8
  %time1 = alloca float, align 4
  %time2 = alloca float, align 4
  %ttime1 = alloca float, align 4
  %ttime2 = alloca float, align 4
  %dub_time = alloca float, align 4
  store i32 0, i32* %retval, align 4
  %call = call i64 @clock() #3
  %conv = sitofp i64 %call to float
  store float %conv, float* %ttime1, align 4
  %call1 = call i64 @clock() #3
  %conv2 = sitofp i64 %call1 to float
  store float %conv2, float* %time1, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 500
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %1, 500
  br i1 %cmp5, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond4
  %call8 = call i32 @rand() #3
  %conv9 = sitofp i32 %call8 to double
  %div = fdiv double %conv9, 0x41DFFFFFFFC00000
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [500 x [500 x double]], [500 x [500 x double]]* @a, i64 0, i64 %idxprom
  %3 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %3 to i64
  %arrayidx11 = getelementptr inbounds [500 x double], [500 x double]* %arrayidx, i64 0, i64 %idxprom10
  store double %div, double* %arrayidx11, align 8
  %call12 = call i32 @rand() #3
  %conv13 = sitofp i32 %call12 to double
  %div14 = fdiv double %conv13, 0x41DFFFFFFFC00000
  %4 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %4 to i64
  %arrayidx16 = getelementptr inbounds [500 x [500 x double]], [500 x [500 x double]]* @b, i64 0, i64 %idxprom15
  %5 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %5 to i64
  %arrayidx18 = getelementptr inbounds [500 x double], [500 x double]* %arrayidx16, i64 0, i64 %idxprom17
  store double %div14, double* %arrayidx18, align 8
  %6 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %6 to i64
  %arrayidx20 = getelementptr inbounds [500 x [500 x double]], [500 x [500 x double]]* @c, i64 0, i64 %idxprom19
  %7 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %7 to i64
  %arrayidx22 = getelementptr inbounds [500 x double], [500 x double]* %arrayidx20, i64 0, i64 %idxprom21
  store double 0.000000e+00, double* %arrayidx22, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond4, !llvm.loop !4

for.end:                                          ; preds = %for.cond4
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %9 = load i32, i32* %j, align 4
  %inc24 = add nsw i32 %9, 1
  store i32 %inc24, i32* %j, align 4
  br label %for.cond, !llvm.loop !6

for.end25:                                        ; preds = %for.cond
  %call26 = call i64 @clock() #3
  %conv27 = sitofp i64 %call26 to float
  store float %conv27, float* %time2, align 4
  %10 = load float, float* %time2, align 4
  %11 = load float, float* %time1, align 4
  %sub = fsub float %10, %11
  %conv28 = fpext float %sub to double
  %div29 = fdiv double %conv28, 1.000000e+06
  %conv30 = fptrunc double %div29 to float
  store float %conv30, float* %dub_time, align 4
  %12 = load float, float* %dub_time, align 4
  %conv31 = fpext float %12 to double
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), double %conv31)
  %call33 = call i64 @clock() #3
  %conv34 = sitofp i64 %call33 to float
  store float %conv34, float* %time1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc69, %for.end25
  %13 = load i32, i32* %i, align 4
  %cmp36 = icmp slt i32 %13, 500
  br i1 %cmp36, label %for.body38, label %for.end71

for.body38:                                       ; preds = %for.cond35
  store i32 0, i32* %j, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc66, %for.body38
  %14 = load i32, i32* %j, align 4
  %cmp40 = icmp slt i32 %14, 500
  br i1 %cmp40, label %for.body42, label %for.end68

for.body42:                                       ; preds = %for.cond39
  store i32 0, i32* %k, align 4
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc63, %for.body42
  %15 = load i32, i32* %k, align 4
  %cmp44 = icmp slt i32 %15, 500
  br i1 %cmp44, label %for.body46, label %for.end65

for.body46:                                       ; preds = %for.cond43
  %16 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %16 to i64
  %arrayidx48 = getelementptr inbounds [500 x [500 x double]], [500 x [500 x double]]* @c, i64 0, i64 %idxprom47
  %17 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %17 to i64
  %arrayidx50 = getelementptr inbounds [500 x double], [500 x double]* %arrayidx48, i64 0, i64 %idxprom49
  %18 = load double, double* %arrayidx50, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %19 to i64
  %arrayidx52 = getelementptr inbounds [500 x [500 x double]], [500 x [500 x double]]* @a, i64 0, i64 %idxprom51
  %20 = load i32, i32* %k, align 4
  %idxprom53 = sext i32 %20 to i64
  %arrayidx54 = getelementptr inbounds [500 x double], [500 x double]* %arrayidx52, i64 0, i64 %idxprom53
  %21 = load double, double* %arrayidx54, align 8
  %22 = load i32, i32* %k, align 4
  %idxprom55 = sext i32 %22 to i64
  %arrayidx56 = getelementptr inbounds [500 x [500 x double]], [500 x [500 x double]]* @b, i64 0, i64 %idxprom55
  %23 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %23 to i64
  %arrayidx58 = getelementptr inbounds [500 x double], [500 x double]* %arrayidx56, i64 0, i64 %idxprom57
  %24 = load double, double* %arrayidx58, align 8
  %mul = fmul double %21, %24
  %add = fadd double %18, %mul
  %25 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %25 to i64
  %arrayidx60 = getelementptr inbounds [500 x [500 x double]], [500 x [500 x double]]* @c, i64 0, i64 %idxprom59
  %26 = load i32, i32* %j, align 4
  %idxprom61 = sext i32 %26 to i64
  %arrayidx62 = getelementptr inbounds [500 x double], [500 x double]* %arrayidx60, i64 0, i64 %idxprom61
  store double %add, double* %arrayidx62, align 8
  br label %for.inc63

for.inc63:                                        ; preds = %for.body46
  %27 = load i32, i32* %k, align 4
  %inc64 = add nsw i32 %27, 1
  store i32 %inc64, i32* %k, align 4
  br label %for.cond43, !llvm.loop !7

for.end65:                                        ; preds = %for.cond43
  br label %for.inc66

for.inc66:                                        ; preds = %for.end65
  %28 = load i32, i32* %j, align 4
  %inc67 = add nsw i32 %28, 1
  store i32 %inc67, i32* %j, align 4
  br label %for.cond39, !llvm.loop !8

for.end68:                                        ; preds = %for.cond39
  br label %for.inc69

for.inc69:                                        ; preds = %for.end68
  %29 = load i32, i32* %i, align 4
  %inc70 = add nsw i32 %29, 1
  store i32 %inc70, i32* %i, align 4
  br label %for.cond35, !llvm.loop !9

for.end71:                                        ; preds = %for.cond35
  %call72 = call i64 @clock() #3
  %conv73 = sitofp i64 %call72 to float
  store float %conv73, float* %time2, align 4
  %30 = load float, float* %time2, align 4
  %31 = load float, float* %time1, align 4
  %sub74 = fsub float %30, %31
  %conv75 = fpext float %sub74 to double
  %div76 = fdiv double %conv75, 1.000000e+06
  %conv77 = fptrunc double %div76 to float
  store float %conv77, float* %dub_time, align 4
  %32 = load float, float* %dub_time, align 4
  %conv78 = fpext float %32 to double
  %call79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), double %conv78)
  %call80 = call i64 @clock() #3
  %conv81 = sitofp i64 %call80 to float
  store float %conv81, float* %ttime2, align 4
  %33 = load float, float* %ttime2, align 4
  %34 = load float, float* %ttime1, align 4
  %sub82 = fsub float %33, %34
  %conv83 = fpext float %sub82 to double
  %div84 = fdiv double %conv83, 1.000000e+06
  %conv85 = fptrunc double %div84 to float
  store float %conv85, float* %dub_time, align 4
  %35 = load float, float* %dub_time, align 4
  %conv86 = fpext float %35 to double
  %call87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), double %conv86)
  %36 = load float, float* %dub_time, align 4
  %mul88 = fmul float 1.000000e+06, %36
  %conv89 = fpext float %mul88 to double
  %div90 = fdiv double 2.500000e+08, %conv89
  %call91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), double %div90)
  store double 0.000000e+00, double* %somma, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc108, %for.end71
  %37 = load i32, i32* %i, align 4
  %cmp93 = icmp slt i32 %37, 500
  br i1 %cmp93, label %for.body95, label %for.end110

for.body95:                                       ; preds = %for.cond92
  store i32 0, i32* %j, align 4
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc105, %for.body95
  %38 = load i32, i32* %j, align 4
  %cmp97 = icmp slt i32 %38, 500
  br i1 %cmp97, label %for.body99, label %for.end107

for.body99:                                       ; preds = %for.cond96
  %39 = load double, double* %somma, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %40 to i64
  %arrayidx101 = getelementptr inbounds [500 x [500 x double]], [500 x [500 x double]]* @c, i64 0, i64 %idxprom100
  %41 = load i32, i32* %j, align 4
  %idxprom102 = sext i32 %41 to i64
  %arrayidx103 = getelementptr inbounds [500 x double], [500 x double]* %arrayidx101, i64 0, i64 %idxprom102
  %42 = load double, double* %arrayidx103, align 8
  %add104 = fadd double %39, %42
  store double %add104, double* %somma, align 8
  br label %for.inc105

for.inc105:                                       ; preds = %for.body99
  %43 = load i32, i32* %j, align 4
  %inc106 = add nsw i32 %43, 1
  store i32 %inc106, i32* %j, align 4
  br label %for.cond96, !llvm.loop !10

for.end107:                                       ; preds = %for.cond96
  br label %for.inc108

for.inc108:                                       ; preds = %for.end107
  %44 = load i32, i32* %i, align 4
  %inc109 = add nsw i32 %44, 1
  store i32 %inc109, i32* %i, align 4
  br label %for.cond92, !llvm.loop !11

for.end110:                                       ; preds = %for.cond92
  %45 = load double, double* %somma, align 8
  %call111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), double %45)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @clock() #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
