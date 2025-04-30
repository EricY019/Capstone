; ModuleID = 'code/357-12046task_3.c'
source_filename = "code/357-12046task_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"(%d - %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %prim1 = alloca i32, align 4
  %prim2 = alloca i32, align 4
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %prim1, align 4
  store i32 3, i32* %prim2, align 4
  store i32 1, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %cmp = icmp sle i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %m, align 4
  store i32 0, i32* %n, align 4
  store i32 1, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %prim1, align 4
  %cmp1 = icmp sle i32 %1, %2
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %3 = load i32, i32* %m, align 4
  %cmp2 = icmp eq i32 %3, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %4 = phi i1 [ true, %while.cond ], [ %cmp2, %lor.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  %6 = load i32, i32* %prim1, align 4
  %7 = load i32, i32* %i, align 4
  %cmp3 = icmp eq i32 %7, 0
  %conv = zext i1 %cmp3 to i32
  %and = and i32 %6, %conv
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %8 = load i32, i32* %m, align 4
  %inc4 = add nsw i32 %8, 1
  store i32 %inc4, i32* %m, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %lor.end
  store i32 1, i32* %i, align 4
  br label %while.cond5

while.cond5:                                      ; preds = %if.end20, %while.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %prim2, align 4
  %cmp6 = icmp sle i32 %9, %10
  br i1 %cmp6, label %lor.end11, label %lor.rhs8

lor.rhs8:                                         ; preds = %while.cond5
  %11 = load i32, i32* %n, align 4
  %cmp9 = icmp eq i32 %11, 0
  br label %lor.end11

lor.end11:                                        ; preds = %lor.rhs8, %while.cond5
  %12 = phi i1 [ true, %while.cond5 ], [ %cmp9, %lor.rhs8 ]
  br i1 %12, label %while.body12, label %while.end21

while.body12:                                     ; preds = %lor.end11
  %13 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %13, 1
  store i32 %inc13, i32* %i, align 4
  %14 = load i32, i32* %prim2, align 4
  %15 = load i32, i32* %i, align 4
  %cmp14 = icmp eq i32 %15, 0
  %conv15 = zext i1 %cmp14 to i32
  %and16 = and i32 %14, %conv15
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %while.body12
  %16 = load i32, i32* %n, align 4
  %inc19 = add nsw i32 %16, 1
  store i32 %inc19, i32* %n, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %while.body12
  br label %while.cond5, !llvm.loop !6

while.end21:                                      ; preds = %lor.end11
  %17 = load i32, i32* %m, align 4
  %cmp22 = icmp eq i32 %17, 0
  br i1 %cmp22, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %while.end21
  %18 = load i32, i32* %n, align 4
  %cmp24 = icmp eq i32 %18, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %land.lhs.true
  %19 = load i32, i32* %prim1, align 4
  %20 = load i32, i32* %prim2, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %land.lhs.true, %while.end21
  %21 = load i32, i32* %prim1, align 4
  %inc28 = add nsw i32 %21, 1
  store i32 %inc28, i32* %prim1, align 4
  %22 = load i32, i32* %prim2, align 4
  %inc29 = add nsw i32 %22, 1
  store i32 %inc29, i32* %prim2, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %23 = load i32, i32* %x, align 4
  %inc30 = add nsw i32 %23, 1
  store i32 %inc30, i32* %x, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
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
