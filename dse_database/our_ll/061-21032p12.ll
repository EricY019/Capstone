; ModuleID = 'code/061-21032p12.c'
source_filename = "code/061-21032p12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%ld: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @factor(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %k = alloca i64, align 8
  %count = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  store i32 2, i32* %count, align 4
  store i64 2, i64* %k, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %k, align 8
  %1 = load i64, i64* %n.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %n.addr, align 8
  %3 = load i64, i64* %k, align 8
  %rem = urem i64 %2, %3
  %cmp1 = icmp eq i64 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %count, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i64, i64* %k, align 8
  %inc2 = add i64 %5, 1
  store i64 %inc2, i64* %k, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %count, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %trinum = alloca i64, align 8
  %i = alloca i64, align 8
  %count = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i64 0, i64* %trinum, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, -1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %trinum, align 8
  %add = add i64 %2, %1
  store i64 %add, i64* %trinum, align 8
  %3 = load i64, i64* %i, align 8
  %and = and i64 %3, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load i64, i64* %i, align 8
  %call = call i32 @factor(i64 %4)
  %5 = load i64, i64* %i, align 8
  %add1 = add i64 %5, 1
  %div = udiv i64 %add1, 2
  %call2 = call i32 @factor(i64 %div)
  %mul = mul nsw i32 %call, %call2
  store i32 %mul, i32* %count, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %6 = load i64, i64* %i, align 8
  %div3 = udiv i64 %6, 2
  %call4 = call i32 @factor(i64 %div3)
  %7 = load i64, i64* %i, align 8
  %add5 = add i64 %7, 1
  %call6 = call i32 @factor(i64 %add5)
  %mul7 = mul nsw i32 %call4, %call6
  store i32 %mul7, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %count, align 4
  %cmp8 = icmp sgt i32 %8, 500
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %9 = load i64, i64* %i, align 8
  %10 = load i64, i64* %trinum, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %9, i64 %10)
  store i32 0, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  store i32 0, i32* %count, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %11 = load i64, i64* %i, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then9
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
