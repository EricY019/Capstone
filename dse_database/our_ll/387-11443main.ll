; ModuleID = 'code/387-11443main.c'
source_filename = "code/387-11443main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.n = private unnamed_addr constant [8 x i64] [i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000], align 16
@.str = private unnamed_addr constant [87 x i8] c"Iterationen %10ld Werte: Pi: %f, berechneter Wert: %f, Differenz: %e, Laufzeit: %2.8f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %pi = alloca double, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %n = alloca [8 x i64], align 16
  %x = alloca double, align 8
  %y = alloca double, align 8
  %begin = alloca i64, align 8
  %end = alloca i64, align 8
  %time_spent = alloca double, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast [8 x i64]* %n to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([8 x i64]* @__const.main.n to i8*), i64 64, i1 false)
  store double 0.000000e+00, double* %x, align 8
  store double 0.000000e+00, double* %y, align 8
  %call = call i64 @time(i64* null) #5
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #5
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %1 = load i64, i64* %j, align 8
  %cmp = icmp ult i64 %1, 8
  br i1 %cmp, label %for.body, label %for.end31

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %i, align 8
  %call2 = call i64 @clock() #5
  store i64 %call2, i64* %begin, align 8
  store i64 0, i64* %k, align 8
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %2 = load i64, i64* %k, align 8
  %3 = load i64, i64* %j, align 8
  %arrayidx = getelementptr inbounds [8 x i64], [8 x i64]* %n, i64 0, i64 %3
  %4 = load i64, i64* %arrayidx, align 8
  %cmp4 = icmp ult i64 %2, %4
  br i1 %cmp4, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond3
  %call7 = call i32 @rand() #5
  %conv8 = sitofp i32 %call7 to double
  %add = fadd double %conv8, 1.000000e+00
  %div = fdiv double %add, 0x41DFFFFFFFC00000
  store double %div, double* %x, align 8
  %call9 = call i32 @rand() #5
  %conv10 = sitofp i32 %call9 to double
  %add11 = fadd double %conv10, 1.000000e+00
  %div12 = fdiv double %add11, 0x41DFFFFFFFC00000
  store double %div12, double* %y, align 8
  %5 = load double, double* %x, align 8
  %6 = load double, double* %x, align 8
  %mul = fmul double %5, %6
  %7 = load double, double* %y, align 8
  %8 = load double, double* %y, align 8
  %mul13 = fmul double %7, %8
  %add14 = fadd double %mul, %mul13
  %cmp15 = fcmp ole double %add14, 1.000000e+00
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  %9 = load i64, i64* %i, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i64, i64* %k, align 8
  %inc17 = add i64 %10, 1
  store i64 %inc17, i64* %k, align 8
  br label %for.cond3, !llvm.loop !4

for.end:                                          ; preds = %for.cond3
  %11 = load i64, i64* %i, align 8
  %conv18 = uitofp i64 %11 to double
  %12 = load i64, i64* %j, align 8
  %arrayidx19 = getelementptr inbounds [8 x i64], [8 x i64]* %n, i64 0, i64 %12
  %13 = load i64, i64* %arrayidx19, align 8
  %conv20 = uitofp i64 %13 to double
  %div21 = fdiv double %conv18, %conv20
  %mul22 = fmul double %div21, 4.000000e+00
  store double %mul22, double* %pi, align 8
  %call23 = call i64 @clock() #5
  store i64 %call23, i64* %end, align 8
  %14 = load i64, i64* %end, align 8
  %15 = load i64, i64* %begin, align 8
  %sub = sub nsw i64 %14, %15
  %conv24 = sitofp i64 %sub to double
  %div25 = fdiv double %conv24, 1.000000e+06
  store double %div25, double* %time_spent, align 8
  %16 = load i64, i64* %j, align 8
  %arrayidx26 = getelementptr inbounds [8 x i64], [8 x i64]* %n, i64 0, i64 %16
  %17 = load i64, i64* %arrayidx26, align 8
  %18 = load double, double* %pi, align 8
  %19 = load double, double* %pi, align 8
  %sub27 = fsub double 0x400921FB54442D18, %19
  %20 = call double @llvm.fabs.f64(double %sub27)
  %21 = load double, double* %time_spent, align 8
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i64 %17, double 0x400921FB54442D18, double %18, double %20, double %21)
  br label %for.inc29

for.inc29:                                        ; preds = %for.end
  %22 = load i64, i64* %j, align 8
  %inc30 = add i64 %22, 1
  store i64 %inc30, i64* %j, align 8
  br label %for.cond, !llvm.loop !6

for.end31:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

; Function Attrs: nounwind
declare dso_local i64 @clock() #2

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
