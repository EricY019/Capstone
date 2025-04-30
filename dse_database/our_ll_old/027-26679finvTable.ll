; ModuleID = './code/027-26679finvTable.c'
source_filename = "./code/027-26679finvTable.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%union.anon = type { i32 }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"diffMax = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%08X%X\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %cons = alloca [1024 x i32], align 4
  %grad = alloca [1024 x i32], align 4
  %A0 = alloca float, align 4
  %x0 = alloca float, align 4
  %A020 = alloca i32, align 4
  %A1 = alloca i32, align 4
  %diffMax = alloca i32, align 4
  %u = alloca %union.anon, align 4
  %M = alloca i32, align 4
  %finvman = alloca i32, align 4
  %diff = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 1024
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %add = add nsw i32 %1, 1024
  %conv = sitofp i32 %add to float
  store float %conv, ptr %A0, align 4
  %2 = load float, ptr %A0, align 4
  %div = fdiv float 1.000000e+00, %2
  %3 = load float, ptr %A0, align 4
  %add1 = fadd float %3, 1.000000e+00
  %div2 = fdiv float 1.000000e+00, %add1
  %add3 = fadd float %div, %div2
  %div4 = fdiv float %add3, 1.638400e+04
  store float %div4, ptr %x0, align 4
  %4 = call double @llvm.pow.f64(double 2.000000e+00, double 4.800000e+01)
  %5 = load float, ptr %x0, align 4
  %conv5 = fpext float %5 to double
  %6 = call double @llvm.pow.f64(double 2.000000e+00, double 6.000000e+01)
  %7 = load float, ptr %x0, align 4
  %conv6 = fpext float %7 to double
  %mul7 = fmul double %6, %conv6
  %8 = load float, ptr %x0, align 4
  %conv8 = fpext float %8 to double
  %mul9 = fmul double %mul7, %conv8
  %9 = load float, ptr %A0, align 4
  %conv10 = fpext float %9 to double
  %mul11 = fmul double %mul9, %conv10
  %neg = fneg double %mul11
  %10 = call double @llvm.fmuladd.f64(double %4, double %conv5, double %neg)
  %conv12 = fptosi double %10 to i32
  %11 = load i32, ptr %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [1024 x i32], ptr %cons, i64 0, i64 %idxprom
  store i32 %conv12, ptr %arrayidx, align 4
  %12 = call double @llvm.pow.f64(double 2.000000e+00, double 4.700000e+01)
  %13 = load float, ptr %x0, align 4
  %conv13 = fpext float %13 to double
  %mul = fmul double %12, %conv13
  %14 = load float, ptr %x0, align 4
  %conv14 = fpext float %14 to double
  %mul15 = fmul double %mul, %conv14
  %mul16 = fmul double %mul15, 4.096000e+03
  %conv17 = fptosi double %mul16 to i32
  %15 = load i32, ptr %i, align 4
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [1024 x i32], ptr %grad, i64 0, i64 %idxprom18
  store i32 %conv17, ptr %arrayidx19, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %diffMax, align 4
  store i32 0, ptr %A020, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc46, %for.end
  %17 = load i32, ptr %A020, align 4
  %cmp22 = icmp slt i32 %17, 1024
  br i1 %cmp22, label %for.body24, label %for.end48

for.body24:                                       ; preds = %for.cond21
  store i32 0, ptr %A1, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc43, %for.body24
  %18 = load i32, ptr %A1, align 4
  %cmp26 = icmp slt i32 %18, 8192
  br i1 %cmp26, label %for.body28, label %for.end45

for.body28:                                       ; preds = %for.cond25
  %19 = load i32, ptr %A020, align 4
  %shl = shl i32 %19, 13
  %or = or i32 1065353216, %shl
  %20 = load i32, ptr %A1, align 4
  %or29 = or i32 %or, %20
  store i32 %or29, ptr %u, align 4
  %21 = load float, ptr %u, align 4
  %div30 = fdiv float 1.000000e+00, %21
  store float %div30, ptr %u, align 4
  %22 = load i32, ptr %u, align 4
  %and = and i32 %22, 8388607
  %add31 = add nsw i32 8388608, %and
  store i32 %add31, ptr %M, align 4
  %23 = load i32, ptr %A020, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body28
  %24 = load i32, ptr %A1, align 4
  %tobool32 = icmp ne i32 %24, 0
  br i1 %tobool32, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body28
  %25 = load i32, ptr %A020, align 4
  %idxprom33 = sext i32 %25 to i64
  %arrayidx34 = getelementptr inbounds [1024 x i32], ptr %cons, i64 0, i64 %idxprom33
  %26 = load i32, ptr %arrayidx34, align 4
  %27 = load i32, ptr %A020, align 4
  %idxprom35 = sext i32 %27 to i64
  %arrayidx36 = getelementptr inbounds [1024 x i32], ptr %grad, i64 0, i64 %idxprom35
  %28 = load i32, ptr %arrayidx36, align 4
  %29 = load i32, ptr %A1, align 4
  %mul37 = mul nsw i32 %28, %29
  %shr = ashr i32 %mul37, 12
  %sub = sub nsw i32 %26, %shr
  store i32 %sub, ptr %finvman, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  store i32 8388608, ptr %finvman, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %30 = load i32, ptr %M, align 4
  %31 = load i32, ptr %finvman, align 4
  %sub38 = sub nsw i32 %30, %31
  store i32 %sub38, ptr %diff, align 4
  %32 = load i32, ptr %diffMax, align 4
  %33 = load i32, ptr %diff, align 4
  %cmp39 = icmp slt i32 %32, %33
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end
  %34 = load i32, ptr %diff, align 4
  store i32 %34, ptr %diffMax, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end
  br label %for.inc43

for.inc43:                                        ; preds = %if.end42
  %35 = load i32, ptr %A1, align 4
  %inc44 = add nsw i32 %35, 1
  store i32 %inc44, ptr %A1, align 4
  br label %for.cond25, !llvm.loop !7

for.end45:                                        ; preds = %for.cond25
  br label %for.inc46

for.inc46:                                        ; preds = %for.end45
  %36 = load i32, ptr %A020, align 4
  %inc47 = add nsw i32 %36, 1
  store i32 %inc47, ptr %A020, align 4
  br label %for.cond21, !llvm.loop !8

for.end48:                                        ; preds = %for.cond21
  %37 = load ptr, ptr @__stderrp, align 8
  %38 = load i32, ptr %diffMax, align 4
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str, i32 noundef %38) #4
  store i32 0, ptr %i, align 4
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc64, %for.end48
  %39 = load i32, ptr %i, align 4
  %cmp50 = icmp slt i32 %39, 1024
  br i1 %cmp50, label %for.body52, label %for.end66

for.body52:                                       ; preds = %for.cond49
  %40 = load i32, ptr %i, align 4
  %idxprom53 = sext i32 %40 to i64
  %arrayidx54 = getelementptr inbounds [1024 x i32], ptr %cons, i64 0, i64 %idxprom53
  %41 = load i32, ptr %arrayidx54, align 4
  %shl55 = shl i32 %41, 9
  %42 = load i32, ptr %i, align 4
  %idxprom56 = sext i32 %42 to i64
  %arrayidx57 = getelementptr inbounds [1024 x i32], ptr %grad, i64 0, i64 %idxprom56
  %43 = load i32, ptr %arrayidx57, align 4
  %shr58 = ashr i32 %43, 4
  %or59 = or i32 %shl55, %shr58
  store i32 %or59, ptr %a, align 4
  %44 = load i32, ptr %i, align 4
  %idxprom60 = sext i32 %44 to i64
  %arrayidx61 = getelementptr inbounds [1024 x i32], ptr %grad, i64 0, i64 %idxprom60
  %45 = load i32, ptr %arrayidx61, align 4
  %and62 = and i32 %45, 15
  store i32 %and62, ptr %b, align 4
  %46 = load i32, ptr %a, align 4
  %47 = load i32, ptr %b, align 4
  %call63 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %46, i32 noundef %47)
  br label %for.inc64

for.inc64:                                        ; preds = %for.body52
  %48 = load i32, ptr %i, align 4
  %inc65 = add nsw i32 %48, 1
  store i32 %inc65, ptr %i, align 4
  br label %for.cond49, !llvm.loop !9

for.end66:                                        ; preds = %for.cond49
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind }

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
