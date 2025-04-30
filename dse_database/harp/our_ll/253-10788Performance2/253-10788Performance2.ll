; ModuleID = 'code/253-10788Performance2.c'
source_filename = "code/253-10788Performance2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Tempo gasto %.2lf segundos.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @minhafuncao() #0 {
entry:
  %x = alloca i32, align 4
  store i32 0, i32* %x, align 4
  %0 = load i32, i32* %x, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %x, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %begin = alloca i64, align 8
  %end = alloca i64, align 8
  %time_spent = alloca double, align 8
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  %i4 = alloca i32, align 4
  %i18 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i64 @clock() #3
  store i64 %call, i64* %begin, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 300000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, i32* %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call1 = call i64 @clock() #3
  store i64 %call1, i64* %end, align 8
  %2 = load i64, i64* %end, align 8
  %3 = load i64, i64* %begin, align 8
  %sub = sub nsw i64 %2, %3
  %conv = sitofp i64 %sub to double
  %div = fdiv double %conv, 1.000000e+06
  store double %div, double* %time_spent, align 8
  %4 = load double, double* %time_spent, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), double %4)
  %call3 = call i64 @clock() #3
  store i64 %call3, i64* %begin, align 8
  store i32 0, i32* %i4, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc9, %for.end
  %5 = load i32, i32* %i4, align 4
  %cmp6 = icmp slt i32 %5, 300000000
  br i1 %cmp6, label %for.body8, label %for.end11

for.body8:                                        ; preds = %for.cond5
  call void @minhafuncao()
  br label %for.inc9

for.inc9:                                         ; preds = %for.body8
  %6 = load i32, i32* %i4, align 4
  %inc10 = add nsw i32 %6, 1
  store i32 %inc10, i32* %i4, align 4
  br label %for.cond5, !llvm.loop !6

for.end11:                                        ; preds = %for.cond5
  %call12 = call i64 @clock() #3
  store i64 %call12, i64* %end, align 8
  %7 = load i64, i64* %end, align 8
  %8 = load i64, i64* %begin, align 8
  %sub13 = sub nsw i64 %7, %8
  %conv14 = sitofp i64 %sub13 to double
  %div15 = fdiv double %conv14, 1.000000e+06
  store double %div15, double* %time_spent, align 8
  %9 = load double, double* %time_spent, align 8
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), double %9)
  %call17 = call i64 @clock() #3
  store i64 %call17, i64* %begin, align 8
  store i32 0, i32* %i18, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc24, %for.end11
  %10 = load i32, i32* %i18, align 4
  %cmp20 = icmp slt i32 %10, 300000000
  br i1 %cmp20, label %for.body22, label %for.end26

for.body22:                                       ; preds = %for.cond19
  %11 = load i32, i32* %x, align 4
  %inc23 = add nsw i32 %11, 1
  store i32 %inc23, i32* %x, align 4
  br label %for.inc24

for.inc24:                                        ; preds = %for.body22
  %12 = load i32, i32* %i18, align 4
  %inc25 = add nsw i32 %12, 1
  store i32 %inc25, i32* %i18, align 4
  br label %for.cond19, !llvm.loop !7

for.end26:                                        ; preds = %for.cond19
  %call27 = call i64 @clock() #3
  store i64 %call27, i64* %end, align 8
  %13 = load i64, i64* %end, align 8
  %14 = load i64, i64* %begin, align 8
  %sub28 = sub nsw i64 %13, %14
  %conv29 = sitofp i64 %sub28 to double
  %div30 = fdiv double %conv29, 1.000000e+06
  store double %div30, double* %time_spent, align 8
  %15 = load double, double* %time_spent, align 8
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), double %15)
  %16 = load i32, i32* %x, align 4
  %inc32 = add nsw i32 %16, 1
  store i32 %inc32, i32* %x, align 4
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind
declare dso_local i64 @clock() #1

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
