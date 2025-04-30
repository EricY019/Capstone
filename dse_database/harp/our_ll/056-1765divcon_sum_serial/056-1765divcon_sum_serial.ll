; ModuleID = 'code/056-1765divcon_sum_serial.c'
source_filename = "code/056-1765divcon_sum_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"error=%g\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Took %g s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @sum(double* %a, i64 %n) #0 {
entry:
  %retval = alloca double, align 8
  %a.addr = alloca double*, align 8
  %n.addr = alloca i64, align 8
  %half = alloca i64, align 8
  store double* %a, double** %a.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %n.addr, align 8
  %cmp1 = icmp eq i64 %1, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = load double*, double** %a.addr, align 8
  %3 = load double, double* %2, align 8
  store double %3, double* %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %n.addr, align 8
  %div = udiv i64 %4, 2
  store i64 %div, i64* %half, align 8
  %5 = load double*, double** %a.addr, align 8
  %6 = load i64, i64* %half, align 8
  %call = call double @sum(double* %5, i64 %6)
  %7 = load double*, double** %a.addr, align 8
  %8 = load i64, i64* %half, align 8
  %add.ptr = getelementptr inbounds double, double* %7, i64 %8
  %9 = load i64, i64* %n.addr, align 8
  %10 = load i64, i64* %half, align 8
  %sub = sub i64 %9, %10
  %call4 = call double @sum(double* %add.ptr, i64 %sub)
  %add = fadd double %call, %call4
  store double %add, double* %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %11 = load double, double* %retval, align 8
  ret double %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %N = alloca i32, align 4
  %i = alloca i32, align 4
  %list = alloca double*, align 8
  %res = alloca double, align 8
  %kgo = alloca double, align 8
  %t_start = alloca i64, align 8
  %t_end = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 100000000, i32* %N, align 4
  %0 = load i32, i32* %N, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias align 16 i8* @malloc(i64 %mul) #3
  %1 = bitcast i8* %call to double*
  store double* %1, double** %list, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %N, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %conv2 = sitofp i32 %4 to double
  %5 = load double*, double** %list, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds double, double* %5, i64 %idxprom
  store double %conv2, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call3 = call i64 @clock() #3
  store i64 %call3, i64* %t_start, align 8
  %8 = load double*, double** %list, align 8
  %9 = load i32, i32* %N, align 4
  %conv4 = sext i32 %9 to i64
  %call5 = call double @sum(double* %8, i64 %conv4)
  store double %call5, double* %res, align 8
  %call6 = call i64 @clock() #3
  store i64 %call6, i64* %t_end, align 8
  %10 = load i32, i32* %N, align 4
  %conv7 = sitofp i32 %10 to double
  %mul8 = fmul double 5.000000e-01, %conv7
  %11 = load i32, i32* %N, align 4
  %sub = sub nsw i32 %11, 1
  %conv9 = sitofp i32 %sub to double
  %mul10 = fmul double %mul8, %conv9
  store double %mul10, double* %kgo, align 8
  %12 = load double, double* %res, align 8
  %13 = load double, double* %kgo, align 8
  %sub11 = fsub double %12, %13
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), double %sub11)
  %14 = load i64, i64* %t_end, align 8
  %15 = load i64, i64* %t_start, align 8
  %sub13 = sub nsw i64 %14, %15
  %conv14 = sitofp i64 %sub13 to double
  %div = fdiv double %conv14, 1.000000e+06
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), double %div)
  %16 = load double*, double** %list, align 8
  %17 = bitcast double* %16 to i8*
  call void @free(i8* %17) #3
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local i64 @clock() #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

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
