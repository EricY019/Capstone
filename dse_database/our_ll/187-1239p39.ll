; ModuleID = 'code/187-1239p39.c'
source_filename = "code/187-1239p39.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %max_p = alloca i32, align 4
  %max_c = alloca i32, align 4
  %p = alloca i32, align 4
  %count = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %max_p, align 4
  store i32 0, i32* %max_c, align 4
  store i32 3, i32* %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %0 = load i32, i32* %p, align 4
  %cmp = icmp sle i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %count, align 4
  store i32 1, i32* %a, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc19, %for.body
  %1 = load i32, i32* %a, align 4
  %2 = load i32, i32* %p, align 4
  %cmp2 = icmp slt i32 %1, %2
  br i1 %cmp2, label %for.body3, label %for.end21

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, i32* %a, align 4
  store i32 %3, i32* %b, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, i32* %b, align 4
  %5 = load i32, i32* %p, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, i32* %p, align 4
  %7 = load i32, i32* %a, align 4
  %sub = sub nsw i32 %6, %7
  %8 = load i32, i32* %b, align 4
  %sub7 = sub nsw i32 %sub, %8
  store i32 %sub7, i32* %c, align 4
  %9 = load i32, i32* %a, align 4
  %10 = load i32, i32* %b, align 4
  %add = add nsw i32 %9, %10
  %11 = load i32, i32* %c, align 4
  %cmp8 = icmp slt i32 %add, %11
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  br label %for.inc

if.end:                                           ; preds = %for.body6
  %12 = load i32, i32* %c, align 4
  %cmp9 = icmp sle i32 %12, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  br label %for.inc

if.end11:                                         ; preds = %if.end
  %13 = load i32, i32* %c, align 4
  %14 = load i32, i32* %c, align 4
  %mul = mul nsw i32 %13, %14
  %15 = load i32, i32* %a, align 4
  %16 = load i32, i32* %a, align 4
  %mul12 = mul nsw i32 %15, %16
  %17 = load i32, i32* %b, align 4
  %18 = load i32, i32* %b, align 4
  %mul13 = mul nsw i32 %17, %18
  %add14 = add nsw i32 %mul12, %mul13
  %cmp15 = icmp eq i32 %mul, %add14
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end11
  %19 = load i32, i32* %count, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end11
  br label %for.inc

for.inc:                                          ; preds = %if.end17, %if.then10, %if.then
  %20 = load i32, i32* %b, align 4
  %inc18 = add nsw i32 %20, 1
  store i32 %inc18, i32* %b, align 4
  br label %for.cond4, !llvm.loop !4

for.end:                                          ; preds = %for.cond4
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %21 = load i32, i32* %a, align 4
  %inc20 = add nsw i32 %21, 1
  store i32 %inc20, i32* %a, align 4
  br label %for.cond1, !llvm.loop !6

for.end21:                                        ; preds = %for.cond1
  %22 = load i32, i32* %count, align 4
  %23 = load i32, i32* %max_c, align 4
  %cmp22 = icmp sgt i32 %22, %23
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.end21
  %24 = load i32, i32* %p, align 4
  store i32 %24, i32* %max_p, align 4
  %25 = load i32, i32* %count, align 4
  store i32 %25, i32* %max_c, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %for.end21
  br label %for.inc25

for.inc25:                                        ; preds = %if.end24
  %26 = load i32, i32* %p, align 4
  %inc26 = add nsw i32 %26, 1
  store i32 %inc26, i32* %p, align 4
  br label %for.cond, !llvm.loop !7

for.end27:                                        ; preds = %for.cond
  %27 = load i32, i32* %max_p, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %27)
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
