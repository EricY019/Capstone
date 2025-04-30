; ModuleID = 'code/130-6710010.c'
source_filename = "code/130-6710010.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%lld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %flag = alloca [2000000 x i8], align 16
  %i = alloca i32, align 4
  %sum = alloca i64, align 8
  %mul_factor = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i64 0, i64* %sum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2000000 x i8], [2000000 x i8]* %flag, i64 0, i64 %idxprom
  store i8 97, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 2, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc15, %for.end
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %3, 2000000
  br i1 %cmp2, label %for.body3, label %for.end17

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [2000000 x i8], [2000000 x i8]* %flag, i64 0, i64 %idxprom4
  %5 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %5 to i32
  %cmp6 = icmp eq i32 %conv, 97
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %6 = load i32, i32* %i, align 4
  %conv8 = sext i32 %6 to i64
  %7 = load i64, i64* %sum, align 8
  %add = add nsw i64 %7, %conv8
  store i64 %add, i64* %sum, align 8
  store i32 2, i32* %mul_factor, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %mul_factor, align 4
  %mul = mul nsw i32 %8, %9
  %cmp9 = icmp slt i32 %mul, 2000000
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %mul_factor, align 4
  %mul11 = mul nsw i32 %10, %11
  %idxprom12 = sext i32 %mul11 to i64
  %arrayidx13 = getelementptr inbounds [2000000 x i8], [2000000 x i8]* %flag, i64 0, i64 %idxprom12
  store i8 98, i8* %arrayidx13, align 1
  %12 = load i32, i32* %mul_factor, align 4
  %inc14 = add nsw i32 %12, 1
  store i32 %inc14, i32* %mul_factor, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %for.body3
  br label %for.inc15

for.inc15:                                        ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %13, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond1, !llvm.loop !7

for.end17:                                        ; preds = %for.cond1
  %14 = load i64, i64* %sum, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %14)
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
!7 = distinct !{!7, !5}
