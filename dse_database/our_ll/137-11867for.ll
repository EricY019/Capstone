; ModuleID = 'code/137-11867for.c'
source_filename = "code/137-11867for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i = dso_local global i32 3, align 4
@var = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = load i32, i32* @var, align 4
  store i32 %0, i32* @i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* @i, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* @var, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @var, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* @i, align 4
  %inc1 = add nsw i32 %3, 1
  store i32 %inc1, i32* @i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* @var, align 4
  %cmp2 = icmp sgt i32 %4, 10
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %5 = load i32, i32* @i, align 4
  %6 = load i32, i32* @var, align 4
  %div = sdiv i32 %5, %6
  store i32 %div, i32* @var, align 4
  br label %if.end

if.else:                                          ; preds = %for.end
  %7 = load i32, i32* @var, align 4
  %8 = load i32, i32* @i, align 4
  %sub = sub nsw i32 0, %8
  %xor = xor i32 %7, %sub
  store i32 %xor, i32* @var, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
