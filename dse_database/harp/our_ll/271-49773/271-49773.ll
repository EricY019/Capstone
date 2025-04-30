; ModuleID = 'code/271-49773.c'
source_filename = "code/271-49773.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gcd(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %b.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %a.addr, align 4
  store i32 %1, i32* %tmp, align 4
  %2 = load i32, i32* %b.addr, align 4
  store i32 %2, i32* %a.addr, align 4
  %3 = load i32, i32* %tmp, align 4
  %4 = load i32, i32* %b.addr, align 4
  %rem = srem i32 %3, %4
  store i32 %rem, i32* %b.addr, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %a.addr, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %count = alloca i32, align 4
  %d = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %count, align 4
  store i32 2, i32* %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, i32* %d, align 4
  %cmp = icmp sle i32 %0, 12000
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %d, align 4
  %div = sdiv i32 %1, 3
  %add = add nsw i32 %div, 1
  store i32 %add, i32* %n, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %n, align 4
  %3 = load i32, i32* %d, align 4
  %rem = srem i32 %3, 2
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond1
  %4 = load i32, i32* %d, align 4
  %div3 = sdiv i32 %4, 2
  br label %cond.end

cond.false:                                       ; preds = %for.cond1
  %5 = load i32, i32* %d, align 4
  %div4 = sdiv i32 %5, 2
  %add5 = add nsw i32 %div4, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div3, %cond.true ], [ %add5, %cond.false ]
  %cmp6 = icmp slt i32 %2, %cond
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %cond.end
  %6 = load i32, i32* %d, align 4
  %7 = load i32, i32* %n, align 4
  %call = call i32 @gcd(i32 %6, i32 %7)
  %cmp8 = icmp eq i32 %call, 1
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %8 = load i32, i32* %count, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %n, align 4
  %inc9 = add nsw i32 %9, 1
  store i32 %inc9, i32* %n, align 4
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %cond.end
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %10 = load i32, i32* %d, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, i32* %d, align 4
  br label %for.cond, !llvm.loop !7

for.end12:                                        ; preds = %for.cond
  %11 = load i32, i32* %count, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %11)
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
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
