; ModuleID = 'code/205-4916001.c'
source_filename = "code/205-4916001.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%d%d%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc11, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp sle i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end13

for.body3:                                        ; preds = %for.cond1
  store i32 1, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, i32* %k, align 4
  %cmp5 = icmp sle i32 %2, 4
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %j, align 4
  %cmp7 = icmp ne i32 %3, %4
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body6
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %k, align 4
  %cmp8 = icmp ne i32 %5, %6
  br i1 %cmp8, label %land.lhs.true9, label %if.end

land.lhs.true9:                                   ; preds = %land.lhs.true
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %k, align 4
  %cmp10 = icmp ne i32 %7, %8
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true9
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %k, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10, i32 %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true9, %land.lhs.true, %for.body6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %k, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !4

for.end:                                          ; preds = %for.cond4
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %13 = load i32, i32* %j, align 4
  %inc12 = add nsw i32 %13, 1
  store i32 %inc12, i32* %j, align 4
  br label %for.cond1, !llvm.loop !6

for.end13:                                        ; preds = %for.cond1
  br label %for.inc14

for.inc14:                                        ; preds = %for.end13
  %14 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %14, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end16:                                        ; preds = %for.cond
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
