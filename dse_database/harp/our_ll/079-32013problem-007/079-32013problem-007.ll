; ModuleID = 'code/079-32013problem-007.c'
source_filename = "code/079-32013problem-007.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"The 10,001st prime is %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_prime(i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %f = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 2, i32* %f, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %f, align 4
  %1 = load i32, i32* %f, align 4
  %mul = mul nsw i32 %0, %1
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %mul, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %n.addr, align 4
  %4 = load i32, i32* %f, align 4
  %rem = srem i32 %3, %4
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %5 = load i32, i32* %f, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %f, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nth_prime(i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %p = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %p, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end3, %if.end
  %1 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp sgt i32 %1, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %p, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %p, align 4
  %3 = load i32, i32* %p, align 4
  %call = call i32 @is_prime(i32 %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then2, label %if.end3

if.then2:                                         ; preds = %while.body
  %4 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %n.addr, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %p, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %call = call i32 @nth_prime(i32 10001)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %call)
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
