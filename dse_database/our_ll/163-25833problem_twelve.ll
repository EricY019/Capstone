; ModuleID = 'code/163-25833problem_twelve.c'
source_filename = "code/163-25833problem_twelve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %num = alloca i64, align 8
  %triangle = alloca i64, align 8
  %count = alloca i64, align 8
  %i = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i64 1, i64* %num, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load i64, i64* %num, align 8
  %cmp = icmp ne i64 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, i64* %num, align 8
  %2 = load i64, i64* %num, align 8
  %add = add nsw i64 %2, 1
  %mul = mul nsw i64 %1, %add
  %div = sdiv i64 %mul, 2
  store i64 %div, i64* %triangle, align 8
  store i64 2, i64* %count, align 8
  store i64 2, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %3 = load i64, i64* %i, align 8
  %4 = load i64, i64* %i, align 8
  %mul1 = mul nsw i64 %3, %4
  %5 = load i64, i64* %triangle, align 8
  %cmp2 = icmp slt i64 %mul1, %5
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %triangle, align 8
  %7 = load i64, i64* %i, align 8
  %rem = srem i64 %6, %7
  %cmp3 = icmp eq i64 %rem, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i64, i64* %count, align 8
  %add4 = add nsw i64 %8, 2
  store i64 %add4, i64* %count, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load i64, i64* %count, align 8
  %cmp5 = icmp sge i64 %9, 500
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %10 = load i64, i64* %triangle, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %10)
  store i32 0, i32* %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %11 = load i64, i64* %i, align 8
  %inc = add nsw i64 %11, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %12 = load i64, i64* %num, align 8
  %inc8 = add nsw i64 %12, 1
  store i64 %inc8, i64* %num, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then6
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
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
