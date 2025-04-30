; ModuleID = './code/127-13418mm.3.c'
source_filename = "./code/127-13418mm.3.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@a = global [1024 x [1024 x double]] zeroinitializer, align 8
@b = global [1024 x [1024 x double]] zeroinitializer, align 8
@c = global [1024 x [1024 x double]] zeroinitializer, align 8
@.str = private unnamed_addr constant [41 x i8] c"Tempo impiegato per inizializzare %f s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Tempo per prodotto classico %f s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Tempo totale %f s.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Mflops ----------------> %f \0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Controllo -------------> %f \0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
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
  store i32 0, ptr %retval, align 4
  %call = call i64 @"\01_clock"()
  %conv = uitofp i64 %call to float
  store float %conv, ptr %ttime1, align 4
  %call1 = call i64 @"\01_clock"()
  %conv2 = uitofp i64 %call1 to float
  store float %conv2, ptr %time1, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %0 = load i32, ptr %j, align 4
  %cmp = icmp slt i32 %0, 1024
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %1, 1024
  br i1 %cmp5, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond4
  %call8 = call i32 @rand()
  %conv9 = sitofp i32 %call8 to double
  %div = fdiv double %conv9, 0x41DFFFFFFFC00000
  %2 = load i32, ptr %j, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1024 x [1024 x double]], ptr @a, i64 0, i64 %idxprom
  %3 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %3 to i64
  %arrayidx11 = getelementptr inbounds [1024 x double], ptr %arrayidx, i64 0, i64 %idxprom10
  store double %div, ptr %arrayidx11, align 8
  %call12 = call i32 @rand()
  %conv13 = sitofp i32 %call12 to double
  %div14 = fdiv double %conv13, 0x41DFFFFFFFC00000
  %4 = load i32, ptr %j, align 4
  %idxprom15 = sext i32 %4 to i64
  %arrayidx16 = getelementptr inbounds [1024 x [1024 x double]], ptr @b, i64 0, i64 %idxprom15
  %5 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %5 to i64
  %arrayidx18 = getelementptr inbounds [1024 x double], ptr %arrayidx16, i64 0, i64 %idxprom17
  store double %div14, ptr %arrayidx18, align 8
  %6 = load i32, ptr %j, align 4
  %idxprom19 = sext i32 %6 to i64
  %arrayidx20 = getelementptr inbounds [1024 x [1024 x double]], ptr @c, i64 0, i64 %idxprom19
  %7 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %7 to i64
  %arrayidx22 = getelementptr inbounds [1024 x double], ptr %arrayidx20, i64 0, i64 %idxprom21
  store double 0.000000e+00, ptr %arrayidx22, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond4, !llvm.loop !5

for.end:                                          ; preds = %for.cond4
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %9 = load i32, ptr %j, align 4
  %inc24 = add nsw i32 %9, 1
  store i32 %inc24, ptr %j, align 4
  br label %for.cond, !llvm.loop !7

for.end25:                                        ; preds = %for.cond
  %call26 = call i64 @"\01_clock"()
  %conv27 = uitofp i64 %call26 to float
  store float %conv27, ptr %time2, align 4
  %10 = load float, ptr %time2, align 4
  %11 = load float, ptr %time1, align 4
  %sub = fsub float %10, %11
  %conv28 = fpext float %sub to double
  %div29 = fdiv double %conv28, 1.000000e+06
  %conv30 = fptrunc double %div29 to float
  store float %conv30, ptr %dub_time, align 4
  %12 = load float, ptr %dub_time, align 4
  %conv31 = fpext float %12 to double
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %conv31)
  %call33 = call i64 @"\01_clock"()
  %conv34 = uitofp i64 %call33 to float
  store float %conv34, ptr %time1, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc69, %for.end25
  %13 = load i32, ptr %i, align 4
  %cmp36 = icmp slt i32 %13, 1024
  br i1 %cmp36, label %for.body38, label %for.end71

for.body38:                                       ; preds = %for.cond35
  store i32 0, ptr %k, align 4
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc66, %for.body38
  %14 = load i32, ptr %k, align 4
  %cmp40 = icmp slt i32 %14, 1024
  br i1 %cmp40, label %for.body42, label %for.end68

for.body42:                                       ; preds = %for.cond39
  store i32 0, ptr %j, align 4
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc63, %for.body42
  %15 = load i32, ptr %j, align 4
  %cmp44 = icmp slt i32 %15, 1024
  br i1 %cmp44, label %for.body46, label %for.end65

for.body46:                                       ; preds = %for.cond43
  %16 = load i32, ptr %i, align 4
  %idxprom47 = sext i32 %16 to i64
  %arrayidx48 = getelementptr inbounds [1024 x [1024 x double]], ptr @c, i64 0, i64 %idxprom47
  %17 = load i32, ptr %j, align 4
  %idxprom49 = sext i32 %17 to i64
  %arrayidx50 = getelementptr inbounds [1024 x double], ptr %arrayidx48, i64 0, i64 %idxprom49
  %18 = load double, ptr %arrayidx50, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom51 = sext i32 %19 to i64
  %arrayidx52 = getelementptr inbounds [1024 x [1024 x double]], ptr @a, i64 0, i64 %idxprom51
  %20 = load i32, ptr %k, align 4
  %idxprom53 = sext i32 %20 to i64
  %arrayidx54 = getelementptr inbounds [1024 x double], ptr %arrayidx52, i64 0, i64 %idxprom53
  %21 = load double, ptr %arrayidx54, align 8
  %22 = load i32, ptr %k, align 4
  %idxprom55 = sext i32 %22 to i64
  %arrayidx56 = getelementptr inbounds [1024 x [1024 x double]], ptr @b, i64 0, i64 %idxprom55
  %23 = load i32, ptr %j, align 4
  %idxprom57 = sext i32 %23 to i64
  %arrayidx58 = getelementptr inbounds [1024 x double], ptr %arrayidx56, i64 0, i64 %idxprom57
  %24 = load double, ptr %arrayidx58, align 8
  %25 = call double @llvm.fmuladd.f64(double %21, double %24, double %18)
  %26 = load i32, ptr %i, align 4
  %idxprom59 = sext i32 %26 to i64
  %arrayidx60 = getelementptr inbounds [1024 x [1024 x double]], ptr @c, i64 0, i64 %idxprom59
  %27 = load i32, ptr %j, align 4
  %idxprom61 = sext i32 %27 to i64
  %arrayidx62 = getelementptr inbounds [1024 x double], ptr %arrayidx60, i64 0, i64 %idxprom61
  store double %25, ptr %arrayidx62, align 8
  br label %for.inc63

for.inc63:                                        ; preds = %for.body46
  %28 = load i32, ptr %j, align 4
  %inc64 = add nsw i32 %28, 1
  store i32 %inc64, ptr %j, align 4
  br label %for.cond43, !llvm.loop !8

for.end65:                                        ; preds = %for.cond43
  br label %for.inc66

for.inc66:                                        ; preds = %for.end65
  %29 = load i32, ptr %k, align 4
  %inc67 = add nsw i32 %29, 1
  store i32 %inc67, ptr %k, align 4
  br label %for.cond39, !llvm.loop !9

for.end68:                                        ; preds = %for.cond39
  br label %for.inc69

for.inc69:                                        ; preds = %for.end68
  %30 = load i32, ptr %i, align 4
  %inc70 = add nsw i32 %30, 1
  store i32 %inc70, ptr %i, align 4
  br label %for.cond35, !llvm.loop !10

for.end71:                                        ; preds = %for.cond35
  %call72 = call i64 @"\01_clock"()
  %conv73 = uitofp i64 %call72 to float
  store float %conv73, ptr %time2, align 4
  %31 = load float, ptr %time2, align 4
  %32 = load float, ptr %time1, align 4
  %sub74 = fsub float %31, %32
  %conv75 = fpext float %sub74 to double
  %div76 = fdiv double %conv75, 1.000000e+06
  %conv77 = fptrunc double %div76 to float
  store float %conv77, ptr %dub_time, align 4
  %33 = load float, ptr %dub_time, align 4
  %conv78 = fpext float %33 to double
  %call79 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %conv78)
  %call80 = call i64 @"\01_clock"()
  %conv81 = uitofp i64 %call80 to float
  store float %conv81, ptr %ttime2, align 4
  %34 = load float, ptr %ttime2, align 4
  %35 = load float, ptr %ttime1, align 4
  %sub82 = fsub float %34, %35
  %conv83 = fpext float %sub82 to double
  %div84 = fdiv double %conv83, 1.000000e+06
  %conv85 = fptrunc double %div84 to float
  store float %conv85, ptr %dub_time, align 4
  %36 = load float, ptr %dub_time, align 4
  %conv86 = fpext float %36 to double
  %call87 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %conv86)
  %37 = load float, ptr %dub_time, align 4
  %mul = fmul float 1.000000e+06, %37
  %conv88 = fpext float %mul to double
  %div89 = fdiv double 0x41E0000000000000, %conv88
  %call90 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %div89)
  store double 0.000000e+00, ptr %somma, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond91

for.cond91:                                       ; preds = %for.inc106, %for.end71
  %38 = load i32, ptr %i, align 4
  %cmp92 = icmp slt i32 %38, 1024
  br i1 %cmp92, label %for.body94, label %for.end108

for.body94:                                       ; preds = %for.cond91
  store i32 0, ptr %j, align 4
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc103, %for.body94
  %39 = load i32, ptr %j, align 4
  %cmp96 = icmp slt i32 %39, 1024
  br i1 %cmp96, label %for.body98, label %for.end105

for.body98:                                       ; preds = %for.cond95
  %40 = load double, ptr %somma, align 8
  %41 = load i32, ptr %i, align 4
  %idxprom99 = sext i32 %41 to i64
  %arrayidx100 = getelementptr inbounds [1024 x [1024 x double]], ptr @c, i64 0, i64 %idxprom99
  %42 = load i32, ptr %j, align 4
  %idxprom101 = sext i32 %42 to i64
  %arrayidx102 = getelementptr inbounds [1024 x double], ptr %arrayidx100, i64 0, i64 %idxprom101
  %43 = load double, ptr %arrayidx102, align 8
  %add = fadd double %40, %43
  store double %add, ptr %somma, align 8
  br label %for.inc103

for.inc103:                                       ; preds = %for.body98
  %44 = load i32, ptr %j, align 4
  %inc104 = add nsw i32 %44, 1
  store i32 %inc104, ptr %j, align 4
  br label %for.cond95, !llvm.loop !11

for.end105:                                       ; preds = %for.cond95
  br label %for.inc106

for.inc106:                                       ; preds = %for.end105
  %45 = load i32, ptr %i, align 4
  %inc107 = add nsw i32 %45, 1
  store i32 %inc107, ptr %i, align 4
  br label %for.cond91, !llvm.loop !12

for.end108:                                       ; preds = %for.cond91
  %46 = load double, ptr %somma, align 8
  %call109 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %46)
  ret i32 0
}

declare i64 @"\01_clock"() #1

declare i32 @rand() #1

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
