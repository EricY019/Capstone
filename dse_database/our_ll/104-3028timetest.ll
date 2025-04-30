; ModuleID = 'code/104-3028timetest.c'
source_filename = "code/104-3028timetest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"%d Hours %d minutes %d seconds\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %hour = alloca i32, align 4
  %minute = alloca i32, align 4
  %second = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %hour, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, i32* %hour, align 4
  %cmp = icmp ult i32 %0, 24
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %minute, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc7, %for.body
  %1 = load i32, i32* %minute, align 4
  %cmp2 = icmp ule i32 %1, 60
  br i1 %cmp2, label %for.body3, label %for.end9

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %second, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, i32* %second, align 4
  %cmp5 = icmp ule i32 %2, 60
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %3 = load i32, i32* %hour, align 4
  %4 = load i32, i32* %minute, align 4
  %5 = load i32, i32* %second, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %4, i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %6 = load i32, i32* %second, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %second, align 4
  br label %for.cond4, !llvm.loop !4

for.end:                                          ; preds = %for.cond4
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %7 = load i32, i32* %minute, align 4
  %inc8 = add i32 %7, 1
  store i32 %inc8, i32* %minute, align 4
  br label %for.cond1, !llvm.loop !6

for.end9:                                         ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end9
  %8 = load i32, i32* %hour, align 4
  %inc11 = add i32 %8, 1
  store i32 %inc11, i32* %hour, align 4
  br label %for.cond, !llvm.loop !7

for.end12:                                        ; preds = %for.cond
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
