; ModuleID = 'code/205-10802ex04_27.c'
source_filename = "code/205-10802ex04_27.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"A=%d B=%d C=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %a, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i32, i32* %a, align 4
  %cmp = icmp sle i32 %0, 500
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %b, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %1 = load i32, i32* %b, align 4
  %cmp2 = icmp sle i32 %1, 500
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  store i32 1, i32* %c, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, i32* %c, align 4
  %cmp5 = icmp sle i32 %2, 500
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %3 = load i32, i32* %a, align 4
  %conv = sitofp i32 %3 to float
  %4 = load i32, i32* %b, align 4
  %conv7 = sitofp i32 %4 to float
  %5 = load i32, i32* %c, align 4
  %conv8 = sitofp i32 %5 to float
  %call = call i32 @isValidRATriangle(float %conv, float %conv7, float %conv8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  %6 = load i32, i32* %a, align 4
  %7 = load i32, i32* %b, align 4
  %8 = load i32, i32* %c, align 4
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %7, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %c, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond4, !llvm.loop !4

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %10 = load i32, i32* %b, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, i32* %b, align 4
  br label %for.cond1, !llvm.loop !6

for.end12:                                        ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end12
  %11 = load i32, i32* %a, align 4
  %inc14 = add nsw i32 %11, 1
  store i32 %inc14, i32* %a, align 4
  br label %for.cond, !llvm.loop !7

for.end15:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isValidRATriangle(float %a, float %b, float %c) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %c.addr = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  store float %c, float* %c.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %1 = load float, float* %b.addr, align 4
  %cmp = fcmp ogt float %0, %1
  br i1 %cmp, label %if.then, label %if.else12

if.then:                                          ; preds = %entry
  %2 = load float, float* %a.addr, align 4
  %3 = load float, float* %c.addr, align 4
  %cmp1 = fcmp ogt float %2, %3
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %4 = load float, float* %c.addr, align 4
  %5 = load float, float* %c.addr, align 4
  %mul = fmul float %4, %5
  %6 = load float, float* %b.addr, align 4
  %7 = load float, float* %b.addr, align 4
  %mul3 = fmul float %6, %7
  %add = fadd float %mul, %mul3
  %8 = load float, float* %a.addr, align 4
  %9 = load float, float* %a.addr, align 4
  %mul4 = fmul float %8, %9
  %cmp5 = fcmp oeq float %add, %mul4
  %conv = zext i1 %cmp5 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then
  %10 = load float, float* %a.addr, align 4
  %11 = load float, float* %a.addr, align 4
  %mul6 = fmul float %10, %11
  %12 = load float, float* %b.addr, align 4
  %13 = load float, float* %b.addr, align 4
  %mul7 = fmul float %12, %13
  %add8 = fadd float %mul6, %mul7
  %14 = load float, float* %c.addr, align 4
  %15 = load float, float* %c.addr, align 4
  %mul9 = fmul float %14, %15
  %cmp10 = fcmp oeq float %add8, %mul9
  %conv11 = zext i1 %cmp10 to i32
  store i32 %conv11, i32* %retval, align 4
  br label %return

if.else12:                                        ; preds = %entry
  %16 = load float, float* %b.addr, align 4
  %17 = load float, float* %c.addr, align 4
  %cmp13 = fcmp ogt float %16, %17
  br i1 %cmp13, label %if.then15, label %if.else22

if.then15:                                        ; preds = %if.else12
  %18 = load float, float* %a.addr, align 4
  %19 = load float, float* %a.addr, align 4
  %mul16 = fmul float %18, %19
  %20 = load float, float* %c.addr, align 4
  %21 = load float, float* %c.addr, align 4
  %mul17 = fmul float %20, %21
  %add18 = fadd float %mul16, %mul17
  %22 = load float, float* %b.addr, align 4
  %23 = load float, float* %b.addr, align 4
  %mul19 = fmul float %22, %23
  %cmp20 = fcmp oeq float %add18, %mul19
  %conv21 = zext i1 %cmp20 to i32
  store i32 %conv21, i32* %retval, align 4
  br label %return

if.else22:                                        ; preds = %if.else12
  %24 = load float, float* %a.addr, align 4
  %25 = load float, float* %a.addr, align 4
  %mul23 = fmul float %24, %25
  %26 = load float, float* %b.addr, align 4
  %27 = load float, float* %b.addr, align 4
  %mul24 = fmul float %26, %27
  %add25 = fadd float %mul23, %mul24
  %28 = load float, float* %c.addr, align 4
  %29 = load float, float* %c.addr, align 4
  %mul26 = fmul float %28, %29
  %cmp27 = fcmp oeq float %add25, %mul26
  %conv28 = zext i1 %cmp27 to i32
  store i32 %conv28, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else22, %if.then15, %if.else, %if.then2
  %30 = load i32, i32* %retval, align 4
  ret i32 %30
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
