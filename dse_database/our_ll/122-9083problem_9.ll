; ModuleID = 'code/122-9083problem_9.c'
source_filename = "code/122-9083problem_9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [59 x i8] c"Pythagorean triplet with sum 1000: %d, %d, %d\0AProduct: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"PAUSE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %ni = alloca i32, align 4
  %nj = alloca i32, align 4
  %nk = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %ni, align 4
  store i32 0, i32* %nj, align 4
  store i32 0, i32* %nk, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 999
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc15, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 999
  br i1 %cmp2, label %for.body3, label %for.end17

for.body3:                                        ; preds = %for.cond1
  store i32 1, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %2, 999
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %3, %4
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %j, align 4
  %mul7 = mul nsw i32 %5, %6
  %add = add nsw i32 %mul, %mul7
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %k, align 4
  %mul8 = mul nsw i32 %7, %8
  %cmp9 = icmp eq i32 %add, %mul8
  br i1 %cmp9, label %if.then, label %if.end14

if.then:                                          ; preds = %for.body6
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %j, align 4
  %add10 = add nsw i32 %9, %10
  %11 = load i32, i32* %k, align 4
  %add11 = add nsw i32 %add10, %11
  %cmp12 = icmp eq i32 %add11, 1000
  br i1 %cmp12, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then
  %12 = load i32, i32* %i, align 4
  store i32 %12, i32* %ni, align 4
  %13 = load i32, i32* %j, align 4
  store i32 %13, i32* %nj, align 4
  %14 = load i32, i32* %k, align 4
  store i32 %14, i32* %nk, align 4
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then
  br label %if.end14

if.end14:                                         ; preds = %if.end, %for.body6
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %15 = load i32, i32* %k, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !4

for.end:                                          ; preds = %for.cond4
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %16 = load i32, i32* %j, align 4
  %inc16 = add nsw i32 %16, 1
  store i32 %inc16, i32* %j, align 4
  br label %for.cond1, !llvm.loop !6

for.end17:                                        ; preds = %for.cond1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end17
  %17 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %17, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end20:                                        ; preds = %for.cond
  %18 = load i32, i32* %ni, align 4
  %19 = load i32, i32* %nj, align 4
  %20 = load i32, i32* %nk, align 4
  %21 = load i32, i32* %ni, align 4
  %22 = load i32, i32* %nj, align 4
  %mul21 = mul nsw i32 %21, %22
  %23 = load i32, i32* %nk, align 4
  %mul22 = mul nsw i32 %mul21, %23
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %20, i32 %mul22)
  %call23 = call i32 @system(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @system(i8*) #1

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
