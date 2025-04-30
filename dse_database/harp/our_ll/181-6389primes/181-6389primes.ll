; ModuleID = 'code/181-6389primes.c'
source_filename = "code/181-6389primes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@maximum = dso_local global i32 32767, align 4
@count = dso_local global i32 2, align 4
@internalcount = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = load i32, i32* @count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %1 = load i32, i32* @count, align 4
  %2 = load i32, i32* @maximum, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end5

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* @count, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* @internalcount, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* @count, align 4
  %5 = load i32, i32* @internalcount, align 4
  %rem = srem i32 %4, %5
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %for.body2, label %for.end

for.body2:                                        ; preds = %for.cond1
  br label %for.inc

for.inc:                                          ; preds = %for.body2
  %6 = load i32, i32* @internalcount, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* @internalcount, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  %7 = load i32, i32* @internalcount, align 4
  %cmp3 = icmp eq i32 %7, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %8 = load i32, i32* @count, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  br label %for.inc4

for.inc4:                                         ; preds = %if.end
  %9 = load i32, i32* @count, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* @count, align 4
  br label %for.cond, !llvm.loop !6

for.end5:                                         ; preds = %for.cond
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
!6 = distinct !{!6, !5}
