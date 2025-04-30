; ModuleID = 'code/027-26679finvTable.c'
source_filename = "code/027-26679finvTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.anon = type { i32 }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [14 x i8] c"diffMax = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%08X%X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %cons = alloca [1024 x i32], align 16
  %grad = alloca [1024 x i32], align 16
  %A0 = alloca float, align 4
  %x0 = alloca float, align 4
  %A023 = alloca i32, align 4
  %A1 = alloca i32, align 4
  %diffMax = alloca i32, align 4
  %u = alloca %union.anon, align 4
  %M = alloca i32, align 4
  %finvman = alloca i32, align 4
  %diff = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1024
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %add = add nsw i32 %1, 1024
  %conv = sitofp i32 %add to float
  store float %conv, float* %A0, align 4
  %2 = load float, float* %A0, align 4
  %div = fdiv float 1.000000e+00, %2
  %3 = load float, float* %A0, align 4
  %add1 = fadd float %3, 1.000000e+00
  %div2 = fdiv float 1.000000e+00, %add1
  %add3 = fadd float %div, %div2
  %div4 = fdiv float %add3, 1.638400e+04
  store float %div4, float* %x0, align 4
  %call = call double @pow(double 2.000000e+00, double 4.800000e+01) #3
  %4 = load float, float* %x0, align 4
  %conv5 = fpext float %4 to double
  %mul = fmul double %call, %conv5
  %call6 = call double @pow(double 2.000000e+00, double 6.000000e+01) #3
  %5 = load float, float* %x0, align 4
  %conv7 = fpext float %5 to double
  %mul8 = fmul double %call6, %conv7
  %6 = load float, float* %x0, align 4
  %conv9 = fpext float %6 to double
  %mul10 = fmul double %mul8, %conv9
  %7 = load float, float* %A0, align 4
  %conv11 = fpext float %7 to double
  %mul12 = fmul double %mul10, %conv11
  %sub = fsub double %mul, %mul12
  %conv13 = fptosi double %sub to i32
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* %cons, i64 0, i64 %idxprom
  store i32 %conv13, i32* %arrayidx, align 4
  %call14 = call double @pow(double 2.000000e+00, double 4.700000e+01) #3
  %9 = load float, float* %x0, align 4
  %conv15 = fpext float %9 to double
  %mul16 = fmul double %call14, %conv15
  %10 = load float, float* %x0, align 4
  %conv17 = fpext float %10 to double
  %mul18 = fmul double %mul16, %conv17
  %mul19 = fmul double %mul18, 4.096000e+03
  %conv20 = fptosi double %mul19 to i32
  %11 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %11 to i64
  %arrayidx22 = getelementptr inbounds [1024 x i32], [1024 x i32]* %grad, i64 0, i64 %idxprom21
  store i32 %conv20, i32* %arrayidx22, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %diffMax, align 4
  store i32 0, i32* %A023, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc53, %for.end
  %13 = load i32, i32* %A023, align 4
  %cmp25 = icmp slt i32 %13, 1024
  br i1 %cmp25, label %for.body27, label %for.end55

for.body27:                                       ; preds = %for.cond24
  store i32 0, i32* %A1, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc50, %for.body27
  %14 = load i32, i32* %A1, align 4
  %cmp29 = icmp slt i32 %14, 8192
  br i1 %cmp29, label %for.body31, label %for.end52

for.body31:                                       ; preds = %for.cond28
  %15 = load i32, i32* %A023, align 4
  %shl = shl i32 %15, 13
  %or = or i32 1065353216, %shl
  %16 = load i32, i32* %A1, align 4
  %or32 = or i32 %or, %16
  %i33 = bitcast %union.anon* %u to i32*
  store i32 %or32, i32* %i33, align 4
  %f = bitcast %union.anon* %u to float*
  %17 = load float, float* %f, align 4
  %div34 = fdiv float 1.000000e+00, %17
  %f35 = bitcast %union.anon* %u to float*
  store float %div34, float* %f35, align 4
  %i36 = bitcast %union.anon* %u to i32*
  %18 = load i32, i32* %i36, align 4
  %and = and i32 %18, 8388607
  %add37 = add nsw i32 8388608, %and
  store i32 %add37, i32* %M, align 4
  %19 = load i32, i32* %A023, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body31
  %20 = load i32, i32* %A1, align 4
  %tobool38 = icmp ne i32 %20, 0
  br i1 %tobool38, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body31
  %21 = load i32, i32* %A023, align 4
  %idxprom39 = sext i32 %21 to i64
  %arrayidx40 = getelementptr inbounds [1024 x i32], [1024 x i32]* %cons, i64 0, i64 %idxprom39
  %22 = load i32, i32* %arrayidx40, align 4
  %23 = load i32, i32* %A023, align 4
  %idxprom41 = sext i32 %23 to i64
  %arrayidx42 = getelementptr inbounds [1024 x i32], [1024 x i32]* %grad, i64 0, i64 %idxprom41
  %24 = load i32, i32* %arrayidx42, align 4
  %25 = load i32, i32* %A1, align 4
  %mul43 = mul nsw i32 %24, %25
  %shr = ashr i32 %mul43, 12
  %sub44 = sub nsw i32 %22, %shr
  store i32 %sub44, i32* %finvman, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  store i32 8388608, i32* %finvman, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %26 = load i32, i32* %M, align 4
  %27 = load i32, i32* %finvman, align 4
  %sub45 = sub nsw i32 %26, %27
  store i32 %sub45, i32* %diff, align 4
  %28 = load i32, i32* %diffMax, align 4
  %29 = load i32, i32* %diff, align 4
  %cmp46 = icmp slt i32 %28, %29
  br i1 %cmp46, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end
  %30 = load i32, i32* %diff, align 4
  store i32 %30, i32* %diffMax, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.end
  br label %for.inc50

for.inc50:                                        ; preds = %if.end49
  %31 = load i32, i32* %A1, align 4
  %inc51 = add nsw i32 %31, 1
  store i32 %inc51, i32* %A1, align 4
  br label %for.cond28, !llvm.loop !6

for.end52:                                        ; preds = %for.cond28
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %32 = load i32, i32* %A023, align 4
  %inc54 = add nsw i32 %32, 1
  store i32 %inc54, i32* %A023, align 4
  br label %for.cond24, !llvm.loop !7

for.end55:                                        ; preds = %for.cond24
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = load i32, i32* %diffMax, align 4
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 0, i32* %i, align 4
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc72, %for.end55
  %35 = load i32, i32* %i, align 4
  %cmp58 = icmp slt i32 %35, 1024
  br i1 %cmp58, label %for.body60, label %for.end74

for.body60:                                       ; preds = %for.cond57
  %36 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %36 to i64
  %arrayidx62 = getelementptr inbounds [1024 x i32], [1024 x i32]* %cons, i64 0, i64 %idxprom61
  %37 = load i32, i32* %arrayidx62, align 4
  %shl63 = shl i32 %37, 9
  %38 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %38 to i64
  %arrayidx65 = getelementptr inbounds [1024 x i32], [1024 x i32]* %grad, i64 0, i64 %idxprom64
  %39 = load i32, i32* %arrayidx65, align 4
  %shr66 = ashr i32 %39, 4
  %or67 = or i32 %shl63, %shr66
  store i32 %or67, i32* %a, align 4
  %40 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %40 to i64
  %arrayidx69 = getelementptr inbounds [1024 x i32], [1024 x i32]* %grad, i64 0, i64 %idxprom68
  %41 = load i32, i32* %arrayidx69, align 4
  %and70 = and i32 %41, 15
  store i32 %and70, i32* %b, align 4
  %42 = load i32, i32* %a, align 4
  %43 = load i32, i32* %b, align 4
  %call71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43)
  br label %for.inc72

for.inc72:                                        ; preds = %for.body60
  %44 = load i32, i32* %i, align 4
  %inc73 = add nsw i32 %44, 1
  store i32 %inc73, i32* %i, align 4
  br label %for.cond57, !llvm.loop !8

for.end74:                                        ; preds = %for.cond57
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

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
