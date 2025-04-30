; ModuleID = 'code/169-35020ex07.c'
source_filename = "code/169-35020ex07.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%d -> %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %nprime = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %prime = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %nprime, align 4
  store i32 0, i32* %prime, align 4
  store i32 3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %0 = load i32, i32* %nprime, align 4
  %cmp = icmp slt i32 %0, 10001
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  store i32 2, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %1, %2
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %j, align 4
  %rem = srem i32 %3, %4
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  br label %for.end

if.end:                                           ; preds = %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %j, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %if.then, %for.cond1
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %i, align 4
  %cmp5 = icmp eq i32 %6, %7
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %for.end
  %8 = load i32, i32* %i, align 4
  store i32 %8, i32* %prime, align 4
  %9 = load i32, i32* %nprime, align 4
  %inc7 = add nsw i32 %9, 1
  store i32 %inc7, i32* %nprime, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %for.end
  br label %for.inc9

for.inc9:                                         ; preds = %if.end8
  %10 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %10, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end11:                                        ; preds = %for.cond
  %11 = load i32, i32* %nprime, align 4
  %12 = load i32, i32* %prime, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
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
