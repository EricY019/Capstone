; ModuleID = 'code/101-28378014.c'
source_filename = "code/101-28378014.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %l = alloca i64, align 8
  %n = alloca i64, align 8
  %t = alloca i64, align 8
  %h = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i64 0, i64* %l, align 8
  store i32 0, i32* %h, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %t, align 8
  %1 = load i32, i32* %i, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, i64* %n, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %2 = load i64, i64* %n, align 8
  %cmp1 = icmp ult i64 1, %2
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, i64* %t, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %t, align 8
  %4 = load i64, i64* %n, align 8
  %rem = urem i64 %4, 2
  %cmp3 = icmp eq i64 %rem, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load i64, i64* %n, align 8
  %div = udiv i64 %5, 2
  store i64 %div, i64* %n, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %6 = load i64, i64* %n, align 8
  %mul = mul i64 3, %6
  %add = add i64 %mul, 1
  store i64 %add, i64* %n, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %7 = load i64, i64* %l, align 8
  %8 = load i64, i64* %t, align 8
  %cmp5 = icmp ult i64 %7, %8
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %while.end
  %9 = load i64, i64* %t, align 8
  store i64 %9, i64* %l, align 8
  %10 = load i32, i32* %i, align 4
  store i32 %10, i32* %h, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %11 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %11, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %h, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %12)
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
