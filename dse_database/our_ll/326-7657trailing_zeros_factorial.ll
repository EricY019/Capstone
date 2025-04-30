; ModuleID = 'code/326-7657trailing_zeros_factorial.c'
source_filename = "code/326-7657trailing_zeros_factorial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"n: %d; z: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @factorial(i64 %n) #0 {
entry:
  %retval = alloca i64, align 8
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %cmp = icmp eq i64 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 1, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %n.addr, align 8
  %2 = load i64, i64* %n.addr, align 8
  %sub = sub i64 %2, 1
  %call = call i64 @factorial(i64 %sub)
  %mul = mul i64 %1, %call
  store i64 %mul, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval, align 8
  ret i64 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trailing_zeros(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %c = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  store i32 0, i32* %c, align 4
  %0 = load i64, i64* %n.addr, align 8
  store i64 %0, i64* %tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %tmp, align 8
  %cmp = icmp ugt i64 %1, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %tmp, align 8
  %rem = urem i64 %2, 10
  %cmp1 = icmp eq i64 %rem, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %c, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %c, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i64, i64* %tmp, align 8
  %div = udiv i64 %4, 10
  store i64 %div, i64* %tmp, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %if.else, %for.cond
  %5 = load i32, i32* %c, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @powers_of_five(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %c, align 4
  store i32 5, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i32, i32* %i, align 4
  %div = sdiv i32 %0, %1
  %cmp = icmp sgt i32 %div, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %c, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %c, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %3, 5
  store i32 %mul, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %c, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @direct_trailing_zeros(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %z = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %z, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %1, 5
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load i32, i32* %n.addr, align 4
  %call = call i32 @powers_of_five(i32 %2)
  %3 = load i32, i32* %z, align 4
  %add = add nsw i32 %3, %call
  store i32 %add, i32* %z, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %n.addr, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %z, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 26, i32* %n, align 4
  %0 = load i32, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %call = call i32 @direct_trailing_zeros(i32 %1)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %0, i32 %call)
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
