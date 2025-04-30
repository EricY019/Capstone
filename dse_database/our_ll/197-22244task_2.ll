; ModuleID = 'code/197-22244task_2.c'
source_filename = "code/197-22244task_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%lli, \00", align 1
@.str.1 = private unnamed_addr constant [181 x i8] c"27280388024614569596, 44140595050111976643, 71420983074726546239, 115561578124838522882, 186982561199565069121, 302544139324403592003, 489526700523968661124, 792070839848372253127 \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %L1 = alloca i64, align 8
  %L2 = alloca i64, align 8
  %L3 = alloca i64, align 8
  %a = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i64 2, i64* %L1, align 8
  store i64 1, i64* %L2, align 8
  %0 = load i64, i64* %L1, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %0)
  %1 = load i64, i64* %L2, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %1)
  store i32 2, i32* %a, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %a, align 4
  %cmp = icmp sle i32 %2, 93
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %L2, align 8
  %4 = load i64, i64* %L1, align 8
  %add = add i64 %3, %4
  store i64 %add, i64* %L3, align 8
  %5 = load i64, i64* %L3, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %5)
  %6 = load i64, i64* %L2, align 8
  store i64 %6, i64* %L1, align 8
  %7 = load i64, i64* %L3, align 8
  store i64 %7, i64* %L2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %a, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %a, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([181 x i8], [181 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
