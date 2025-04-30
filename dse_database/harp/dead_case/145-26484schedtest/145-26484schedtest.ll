; ModuleID = 'code/145-26484schedtest.c'
source_filename = "code/145-26484schedtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"%d faculty: %e \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca x86_fp80, align 16
  %i = alloca x86_fp80, align 16
  store i32 0, i32* %retval, align 4
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %x, align 16
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %i, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load x86_fp80, x86_fp80* %i, align 16
  %cmp = fcmp ole x86_fp80 %0, 0xK4019E4E1C00000000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load x86_fp80, x86_fp80* %x, align 16
  %2 = load x86_fp80, x86_fp80* %i, align 16
  %mul = fmul x86_fp80 %1, %2
  store x86_fp80 %mul, x86_fp80* %x, align 16
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load x86_fp80, x86_fp80* %i, align 16
  %inc = fadd x86_fp80 %3, 0xK3FFF8000000000000000
  store x86_fp80 %inc, x86_fp80* %i, align 16
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %4 = load x86_fp80, x86_fp80* %i, align 16
  %sub = fsub x86_fp80 %4, 0xK3FFF8000000000000000
  %5 = load x86_fp80, x86_fp80* %x, align 16
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), x86_fp80 %sub, x86_fp80 %5)
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
