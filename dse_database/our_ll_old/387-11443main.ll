; ModuleID = './code/387-11443main.c'
source_filename = "./code/387-11443main.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.n = private unnamed_addr constant [8 x i64] [i64 100, i64 1000, i64 10000, i64 100000, i64 1000000, i64 10000000, i64 100000000, i64 1000000000], align 8
@.str = private unnamed_addr constant [87 x i8] c"Iterationen %10ld Werte: Pi: %f, berechneter Wert: %f, Differenz: %e, Laufzeit: %2.8f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %pi = alloca double, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %n = alloca [8 x i64], align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %begin = alloca i64, align 8
  %end = alloca i64, align 8
  %time_spent = alloca double, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %n, ptr align 8 @__const.main.n, i64 64, i1 false)
  store double 0.000000e+00, ptr %x, align 8
  store double 0.000000e+00, ptr %y, align 8
  %call = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv)
  store i64 0, ptr %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %0 = load i64, ptr %j, align 8
  %cmp = icmp ult i64 %0, 8
  br i1 %cmp, label %for.body, label %for.end29

for.body:                                         ; preds = %for.cond
  store i64 0, ptr %i, align 8
  %call2 = call i64 @"\01_clock"()
  store i64 %call2, ptr %begin, align 8
  store i64 0, ptr %k, align 8
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %1 = load i64, ptr %k, align 8
  %2 = load i64, ptr %j, align 8
  %arrayidx = getelementptr inbounds [8 x i64], ptr %n, i64 0, i64 %2
  %3 = load i64, ptr %arrayidx, align 8
  %cmp4 = icmp ult i64 %1, %3
  br i1 %cmp4, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond3
  %call7 = call i32 @rand()
  %conv8 = sitofp i32 %call7 to double
  %add = fadd double %conv8, 1.000000e+00
  %div = fdiv double %add, 0x41DFFFFFFFC00000
  store double %div, ptr %x, align 8
  %call9 = call i32 @rand()
  %conv10 = sitofp i32 %call9 to double
  %add11 = fadd double %conv10, 1.000000e+00
  %div12 = fdiv double %add11, 0x41DFFFFFFFC00000
  store double %div12, ptr %y, align 8
  %4 = load double, ptr %x, align 8
  %5 = load double, ptr %x, align 8
  %6 = load double, ptr %y, align 8
  %7 = load double, ptr %y, align 8
  %mul13 = fmul double %6, %7
  %8 = call double @llvm.fmuladd.f64(double %4, double %5, double %mul13)
  %cmp14 = fcmp ole double %8, 1.000000e+00
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  %9 = load i64, ptr %i, align 8
  %inc = add i64 %9, 1
  store i64 %inc, ptr %i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i64, ptr %k, align 8
  %inc16 = add i64 %10, 1
  store i64 %inc16, ptr %k, align 8
  br label %for.cond3, !llvm.loop !5

for.end:                                          ; preds = %for.cond3
  %11 = load i64, ptr %i, align 8
  %conv17 = uitofp i64 %11 to double
  %12 = load i64, ptr %j, align 8
  %arrayidx18 = getelementptr inbounds [8 x i64], ptr %n, i64 0, i64 %12
  %13 = load i64, ptr %arrayidx18, align 8
  %conv19 = uitofp i64 %13 to double
  %div20 = fdiv double %conv17, %conv19
  %mul = fmul double %div20, 4.000000e+00
  store double %mul, ptr %pi, align 8
  %call21 = call i64 @"\01_clock"()
  store i64 %call21, ptr %end, align 8
  %14 = load i64, ptr %end, align 8
  %15 = load i64, ptr %begin, align 8
  %sub = sub i64 %14, %15
  %conv22 = uitofp i64 %sub to double
  %div23 = fdiv double %conv22, 1.000000e+06
  store double %div23, ptr %time_spent, align 8
  %16 = load i64, ptr %j, align 8
  %arrayidx24 = getelementptr inbounds [8 x i64], ptr %n, i64 0, i64 %16
  %17 = load i64, ptr %arrayidx24, align 8
  %18 = load double, ptr %pi, align 8
  %19 = load double, ptr %pi, align 8
  %sub25 = fsub double 0x400921FB54442D18, %19
  %20 = call double @llvm.fabs.f64(double %sub25)
  %21 = load double, ptr %time_spent, align 8
  %call26 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %17, double noundef 0x400921FB54442D18, double noundef %18, double noundef %20, double noundef %21)
  br label %for.inc27

for.inc27:                                        ; preds = %for.end
  %22 = load i64, ptr %j, align 8
  %inc28 = add i64 %22, 1
  store i64 %inc28, ptr %j, align 8
  br label %for.cond, !llvm.loop !7

for.end29:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare void @srand(i32 noundef) #2

declare i64 @time(ptr noundef) #2

declare i64 @"\01_clock"() #2

declare i32 @rand() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
