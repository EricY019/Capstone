; ModuleID = 'code/055-26206task_3.c'
source_filename = "code/055-26206task_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%d - %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %f = alloca i32, align 4
  %count = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %t = alloca i32, align 4
  %tf = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %count, align 4
  store i32 2, i32* %a, align 4
  store i32 0, i32* %f, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end27, %entry
  %0 = load i32, i32* %count, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %while.body, label %while.end28

while.body:                                       ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %if.end10, %while.body
  %1 = load i32, i32* %f, align 4
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %while.body3, label %while.end

while.body3:                                      ; preds = %while.cond1
  %2 = load i32, i32* %a, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %a, align 4
  store i32 1, i32* %t, align 4
  store i32 1, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body3
  %3 = load i32, i32* %x, align 4
  %4 = load i32, i32* %a, align 4
  %cmp4 = icmp slt i32 %3, %4
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %a, align 4
  %6 = load i32, i32* %x, align 4
  %rem = srem i32 %5, %6
  %cmp5 = icmp slt i32 %rem, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i32, i32* %a, align 4
  %8 = load i32, i32* %x, align 4
  %rem6 = srem i32 %7, %8
  %cmp7 = icmp sgt i32 %rem6, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 0, i32* %t, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %x, align 4
  %inc8 = add nsw i32 %9, 1
  store i32 %inc8, i32* %x, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %t, align 4
  br i1 true, label %if.then9, label %if.end10

if.then9:                                         ; preds = %for.end
  store i32 1, i32* %f, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %for.end
  br label %while.cond1, !llvm.loop !6

while.end:                                        ; preds = %while.cond1
  %10 = load i32, i32* %a, align 4
  %add = add nsw i32 %10, 2
  store i32 %add, i32* %b, align 4
  store i32 1, i32* %tf, align 4
  store i32 1, i32* %x, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc21, %while.end
  %11 = load i32, i32* %x, align 4
  %12 = load i32, i32* %b, align 4
  %cmp12 = icmp slt i32 %11, %12
  br i1 %cmp12, label %for.body13, label %for.end23

for.body13:                                       ; preds = %for.cond11
  %13 = load i32, i32* %b, align 4
  %14 = load i32, i32* %x, align 4
  %rem14 = srem i32 %13, %14
  %cmp15 = icmp slt i32 %rem14, 0
  br i1 %cmp15, label %if.then19, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %for.body13
  %15 = load i32, i32* %b, align 4
  %16 = load i32, i32* %x, align 4
  %rem17 = srem i32 %15, %16
  %cmp18 = icmp sgt i32 %rem17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %lor.lhs.false16, %for.body13
  store i32 0, i32* %tf, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %lor.lhs.false16
  br label %for.inc21

for.inc21:                                        ; preds = %if.end20
  %17 = load i32, i32* %x, align 4
  %inc22 = add nsw i32 %17, 1
  store i32 %inc22, i32* %x, align 4
  br label %for.cond11, !llvm.loop !7

for.end23:                                        ; preds = %for.cond11
  store i32 1, i32* %tf, align 4
  br i1 true, label %if.then24, label %if.end27

if.then24:                                        ; preds = %for.end23
  %18 = load i32, i32* %a, align 4
  %19 = load i32, i32* %b, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %20 = load i32, i32* %count, align 4
  %inc25 = add nsw i32 %20, 1
  store i32 %inc25, i32* %count, align 4
  %21 = load i32, i32* %a, align 4
  %inc26 = add nsw i32 %21, 1
  store i32 %inc26, i32* %a, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %for.end23
  br label %while.cond, !llvm.loop !8

while.end28:                                      ; preds = %while.cond
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
!8 = distinct !{!8, !5}
