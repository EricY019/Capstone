; ModuleID = 'code/191-35133test_simple_big_sqrt.c'
source_filename = "code/191-35133test_simple_big_sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"Math function sqrt of %lli is %Lf \0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Big sqrt mp of %lli is %lli \0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Time taken: %f \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i64, align 8
  %x = alloca x86_fp80, align 16
  %sqrt = alloca i64, align 8
  %starttime = alloca i64, align 8
  %i = alloca i64, align 8
  %endtime = alloca i64, align 8
  %runtimeinsecs = alloca double, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i64 581170932765279684, i64* %n, align 8
  %0 = load i64, i64* %n, align 8
  %conv = sitofp i64 %0 to x86_fp80
  %call = call x86_fp80 @sqrtl(x86_fp80 %conv) #4
  store x86_fp80 %call, x86_fp80* %x, align 16
  %1 = load i64, i64* %n, align 8
  %2 = load x86_fp80, x86_fp80* %x, align 16
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %1, x86_fp80 %2)
  store i64 0, i64* %sqrt, align 8
  %call2 = call i64 @time(i64* null) #4
  store i64 %call2, i64* %starttime, align 8
  store i64 2, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %i, align 8
  %4 = load i64, i64* %n, align 8
  %div = sdiv i64 %4, 2
  %cmp = icmp slt i64 %3, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %i, align 8
  %6 = load i64, i64* %i, align 8
  %mul = mul nsw i64 %5, %6
  %7 = load i64, i64* %n, align 8
  %cmp4 = icmp eq i64 %mul, %7
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i64, i64* %i, align 8
  store i64 %8, i64* %sqrt, align 8
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i64, i64* %i, align 8
  %inc = add nsw i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %if.then, %for.cond
  %call6 = call i64 @time(i64* null) #4
  store i64 %call6, i64* %endtime, align 8
  %10 = load i64, i64* %endtime, align 8
  %11 = load i64, i64* %starttime, align 8
  %call7 = call double @difftime(i64 %10, i64 %11) #5
  store double %call7, double* %runtimeinsecs, align 8
  %12 = load i64, i64* %n, align 8
  %13 = load i64, i64* %sqrt, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %12, i64 %13)
  %14 = load double, double* %runtimeinsecs, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), double %14)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local x86_fp80 @sqrtl(x86_fp80) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local double @difftime(i64, i64) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
