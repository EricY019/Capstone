; ModuleID = 'code/385-2345214.c'
source_filename = "code/385-2345214.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %t = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i64, align 8
  %nx = alloca i64, align 8
  %mn = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %m, align 4
  store i64 0, i64* %mn, align 8
  store i64 1, i64* %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %n, align 8
  %cmp = icmp slt i64 %0, 1000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %n, align 8
  store i64 %1, i64* %nx, align 8
  store i32 1, i32* %t, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %2 = load i64, i64* %nx, align 8
  %cmp1 = icmp ne i64 %2, 1
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, i64* %nx, align 8
  %rem = srem i64 %3, 2
  %cmp2 = icmp eq i64 %rem, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load i64, i64* %nx, align 8
  %div = sdiv i64 %4, 2
  store i64 %div, i64* %nx, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %5 = load i64, i64* %nx, align 8
  %mul = mul nsw i64 3, %5
  %add = add nsw i64 %mul, 1
  store i64 %add, i64* %nx, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %t, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %t, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* %t, align 4
  %8 = load i32, i32* %m, align 4
  %cmp3 = icmp sgt i32 %7, %8
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %while.end
  %9 = load i32, i32* %t, align 4
  store i32 %9, i32* %m, align 4
  %10 = load i64, i64* %n, align 8
  store i64 %10, i64* %mn, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end5
  %11 = load i64, i64* %n, align 8
  %inc6 = add nsw i64 %11, 1
  store i64 %inc6, i64* %n, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %12 = load i64, i64* %mn, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %12)
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
