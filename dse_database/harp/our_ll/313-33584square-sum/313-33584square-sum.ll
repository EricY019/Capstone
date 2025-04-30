; ModuleID = 'code/313-33584square-sum.c'
source_filename = "code/313-33584square-sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"%ld - %ld = %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %sumofsquares = alloca i64, align 8
  %squareofsum = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i64 0, i64* %sumofsquares, align 8
  store i64 0, i64* %squareofsum, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %conv = sitofp i32 %1 to x86_fp80
  %call = call x86_fp80 @powl(x86_fp80 %conv, x86_fp80 0xK40008000000000000000) #3
  %conv1 = fptoui x86_fp80 %call to i64
  %2 = load i64, i64* %sumofsquares, align 8
  %add = add i64 %2, %conv1
  store i64 %add, i64* %sumofsquares, align 8
  %3 = load i32, i32* %i, align 4
  %conv2 = sext i32 %3 to i64
  %4 = load i64, i64* %squareofsum, align 8
  %add3 = add i64 %4, %conv2
  store i64 %add3, i64* %squareofsum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %6 = load i64, i64* %squareofsum, align 8
  %conv4 = uitofp i64 %6 to x86_fp80
  %call5 = call x86_fp80 @powl(x86_fp80 %conv4, x86_fp80 0xK40008000000000000000) #3
  %conv6 = fptoui x86_fp80 %call5 to i64
  store i64 %conv6, i64* %squareofsum, align 8
  %7 = load i64, i64* %squareofsum, align 8
  %8 = load i64, i64* %sumofsquares, align 8
  %9 = load i64, i64* %squareofsum, align 8
  %10 = load i64, i64* %sumofsquares, align 8
  %sub = sub i64 %9, %10
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %7, i64 %8, i64 %sub)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local x86_fp80 @powl(x86_fp80, x86_fp80) #1

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
