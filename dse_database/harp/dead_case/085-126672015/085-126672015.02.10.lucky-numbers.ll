; ModuleID = 'code/085-126672015.02.10.lucky-numbers.c'
source_filename = "code/085-126672015.02.10.lucky-numbers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"Lucky numbers: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @num_repeats(i32 %test, i32 %num) #0 {
entry:
  %test.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %test, i32* %test.addr, align 4
  store i32 %num, i32* %num.addr, align 4
  %0 = load i32, i32* %num.addr, align 4
  store i32 %0, i32* %result, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %result, align 4
  %2 = load i32, i32* %test.addr, align 4
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %result, align 4
  %mul = mul i32 %3, 10
  %4 = load i32, i32* %num.addr, align 4
  %add = add i32 %mul, %4
  store i32 %add, i32* %result, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %test.addr, align 4
  %6 = load i32, i32* %result, align 4
  %cmp1 = icmp eq i32 %5, %6
  %conv = zext i1 %cmp1 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @numlen(i32 %num) #0 {
entry:
  %num.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 1, i32* %result, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %num.addr, align 4
  %div = udiv i32 %0, 10
  store i32 %div, i32* %num.addr, align 4
  %tobool = icmp ne i32 %div, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %result, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %result, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %2 = load i32, i32* %result, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lucky_nums(i32 %limit) #0 {
entry:
  %limit.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %limit, i32* %limit.addr, align 4
  store i32 0, i32* %result, align 4
  store i32 0, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %limit.addr, align 4
  %cmp = icmp ule i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %len, align 4
  %cmp1 = icmp eq i32 3, %2
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %3 = load i32, i32* %len, align 4
  %cmp2 = icmp eq i32 7, %3
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load i32, i32* %i, align 4
  %call = call i32 @num_repeats(i32 %4, i32 3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false3
  %5 = load i32, i32* %i, align 4
  %call5 = call i32 @num_repeats(i32 %5, i32 7)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false3, %lor.lhs.false, %for.body
  %6 = load i32, i32* %result, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc7 = add i32 %7, 1
  store i32 %inc7, i32* %i, align 4
  %8 = load i32, i32* %i, align 4
  %call8 = call i32 @numlen(i32 %8)
  store i32 %call8, i32* %len, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %result, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @lucky_nums(i32 1000000)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %call)
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
