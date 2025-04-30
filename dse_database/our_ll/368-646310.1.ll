; ModuleID = 'code/368-646310.1.c'
source_filename = "code/368-646310.1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%.0f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %mark = alloca [2000000 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sum = alloca double, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store double 0.000000e+00, double* %sum, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1999999
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %1, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [2000000 x i32], [2000000 x i32]* %mark, i64 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 2, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc16, %for.end
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %3, 2000000
  br i1 %cmp2, label %for.body3, label %for.end18

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [2000000 x i32], [2000000 x i32]* %mark, i64 0, i64 %idxprom4
  %5 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp eq i32 %5, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %6 = load i32, i32* %i, align 4
  %conv = sitofp i32 %6 to double
  %7 = load double, double* %sum, align 8
  %add = fadd double %7, %conv
  store double %add, double* %sum, align 8
  %8 = load i32, i32* %i, align 4
  store i32 %8, i32* %j, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc13, %if.then
  %9 = load i32, i32* %j, align 4
  %cmp8 = icmp slt i32 %9, 2000000
  br i1 %cmp8, label %for.body10, label %for.end15

for.body10:                                       ; preds = %for.cond7
  %10 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [2000000 x i32], [2000000 x i32]* %mark, i64 0, i64 %idxprom11
  store i32 1, i32* %arrayidx12, align 4
  br label %for.inc13

for.inc13:                                        ; preds = %for.body10
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %j, align 4
  %add14 = add nsw i32 %12, %11
  store i32 %add14, i32* %j, align 4
  br label %for.cond7, !llvm.loop !6

for.end15:                                        ; preds = %for.cond7
  br label %if.end

if.end:                                           ; preds = %for.end15, %for.body3
  br label %for.inc16

for.inc16:                                        ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %13, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond1, !llvm.loop !7

for.end18:                                        ; preds = %for.cond1
  %14 = load double, double* %sum, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %14)
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
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
