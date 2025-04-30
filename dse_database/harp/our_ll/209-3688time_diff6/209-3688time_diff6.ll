; ModuleID = 'code/209-3688time_diff6.c'
source_filename = "code/209-3688time_diff6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Time to do %ld empty loops is \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%lf seconds\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %start = alloca i64, align 8
  %finish = alloca i64, align 8
  %duration = alloca double, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  %call = call i64 @clock() #3
  store i64 %call, i64* %start, align 8
  %call1 = call i32 @sleep(i32 3)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp slt i64 %0, 100
  br i1 %cmp, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %j, align 8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %1 = load i64, i64* %j, align 8
  %cmp3 = icmp slt i64 %1, 1000000
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %2 = load i64, i64* %j, align 8
  %inc = add nsw i64 %2, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond2, !llvm.loop !4

for.end:                                          ; preds = %for.cond2
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %3 = load i64, i64* %i, align 8
  %inc6 = add nsw i64 %3, 1
  store i64 %inc6, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end7:                                         ; preds = %for.cond
  %call8 = call i64 @clock() #3
  store i64 %call8, i64* %finish, align 8
  %4 = load i64, i64* %finish, align 8
  %5 = load i64, i64* %start, align 8
  %sub = sub nsw i64 %4, %5
  %conv = sitofp i64 %sub to double
  %div = fdiv double %conv, 1.000000e+06
  store double %div, double* %duration, align 8
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %j, align 8
  %mul = mul nsw i64 %6, %7
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %mul)
  %8 = load double, double* %duration, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), double %8)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @clock() #1

declare dso_local i32 @sleep(i32) #2

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
