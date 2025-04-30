; ModuleID = 'code/100-23843guia-wagstaff.c'
source_filename = "code/100-23843guia-wagstaff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"\0An\C2\B0 de Wagstaff encontrado! %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %p = alloca i32, align 4
  %w = alloca i32, align 4
  %div_p = alloca i32, align 4
  %div_w = alloca i32, align 4
  %prim_v = alloca i32, align 4
  %resultado = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 2, i32* %p, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %0 = load i32, i32* %p, align 4
  %cmp = icmp sle i32 %0, 31
  br i1 %cmp, label %for.body, label %for.end31

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %prim_v, align 4
  store i32 1, i32* %div_p, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %div_p, align 4
  %2 = load i32, i32* %p, align 4
  %cmp2 = icmp sle i32 %1, %2
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, i32* %p, align 4
  %4 = load i32, i32* %div_p, align 4
  %rem = srem i32 %3, %4
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %5 = load i32, i32* %prim_v, align 4
  %add = add nsw i32 %5, 1
  store i32 %add, i32* %prim_v, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %div_p, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %div_p, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  %7 = load i32, i32* %prim_v, align 4
  %cmp5 = icmp eq i32 %7, 2
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %for.end
  store i32 2, i32* %resultado, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc10, %if.then6
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %p, align 4
  %cmp8 = icmp sle i32 %8, %9
  br i1 %cmp8, label %for.body9, label %for.end12

for.body9:                                        ; preds = %for.cond7
  %10 = load i32, i32* %resultado, align 4
  %mul = mul nsw i32 %10, 2
  store i32 %mul, i32* %resultado, align 4
  br label %for.inc10

for.inc10:                                        ; preds = %for.body9
  %11 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %11, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond7, !llvm.loop !6

for.end12:                                        ; preds = %for.cond7
  %12 = load i32, i32* %resultado, align 4
  %add13 = add nsw i32 %12, 1
  %div = sdiv i32 %add13, 3
  store i32 %div, i32* %w, align 4
  store i32 0, i32* %prim_v, align 4
  store i32 1, i32* %div_w, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc22, %for.end12
  %13 = load i32, i32* %div_w, align 4
  %14 = load i32, i32* %w, align 4
  %cmp15 = icmp sle i32 %13, %14
  br i1 %cmp15, label %for.body16, label %for.end24

for.body16:                                       ; preds = %for.cond14
  %15 = load i32, i32* %w, align 4
  %16 = load i32, i32* %div_w, align 4
  %rem17 = srem i32 %15, %16
  %cmp18 = icmp eq i32 %rem17, 0
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %for.body16
  %17 = load i32, i32* %prim_v, align 4
  %add20 = add nsw i32 %17, 1
  store i32 %add20, i32* %prim_v, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %for.body16
  br label %for.inc22

for.inc22:                                        ; preds = %if.end21
  %18 = load i32, i32* %div_w, align 4
  %inc23 = add nsw i32 %18, 1
  store i32 %inc23, i32* %div_w, align 4
  br label %for.cond14, !llvm.loop !7

for.end24:                                        ; preds = %for.cond14
  %19 = load i32, i32* %prim_v, align 4
  %cmp25 = icmp eq i32 %19, 2
  br i1 %cmp25, label %if.then26, label %if.end27

if.then26:                                        ; preds = %for.end24
  %20 = load i32, i32* %w, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %for.end24
  br label %if.end28

if.else:                                          ; preds = %for.end
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.end27
  br label %for.inc29

for.inc29:                                        ; preds = %if.end28
  %21 = load i32, i32* %p, align 4
  %inc30 = add nsw i32 %21, 1
  store i32 %inc30, i32* %p, align 4
  br label %for.cond, !llvm.loop !8

for.end31:                                        ; preds = %for.cond
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
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
