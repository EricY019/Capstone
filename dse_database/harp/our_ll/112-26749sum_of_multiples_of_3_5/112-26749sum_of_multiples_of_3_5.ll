; ModuleID = 'code/112-26749sum_of_multiples_of_3_5.c'
source_filename = "code/112-26749sum_of_multiples_of_3_5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Sum: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sum_multiple_of(i32 %num, i32 %limit) #0 {
entry:
  %num.addr = alloca i32, align 4
  %limit.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 %limit, i32* %limit.addr, align 4
  %0 = load i32, i32* %num.addr, align 4
  store i32 %0, i32* %sum, align 4
  %1 = load i32, i32* %num.addr, align 4
  %mul = mul nsw i32 %1, 2
  store i32 %mul, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %limit.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %sum, align 4
  %add = add nsw i32 %5, %4
  store i32 %add, i32* %sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %num.addr, align 4
  %7 = load i32, i32* %i, align 4
  %add1 = add nsw i32 %7, %6
  store i32 %add1, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %sum, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %limit = alloca i32, align 4
  %operand_first = alloca i32, align 4
  %operand_second = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1000, i32* %limit, align 4
  store i32 3, i32* %operand_first, align 4
  store i32 5, i32* %operand_second, align 4
  %0 = load i32, i32* %operand_first, align 4
  %1 = load i32, i32* %limit, align 4
  %call = call i32 @sum_multiple_of(i32 %0, i32 %1)
  %2 = load i32, i32* %operand_second, align 4
  %3 = load i32, i32* %limit, align 4
  %call1 = call i32 @sum_multiple_of(i32 %2, i32 %3)
  %add = add nsw i32 %call, %call1
  %4 = load i32, i32* %operand_first, align 4
  %5 = load i32, i32* %operand_second, align 4
  %mul = mul nsw i32 %4, %5
  %6 = load i32, i32* %limit, align 4
  %call2 = call i32 @sum_multiple_of(i32 %mul, i32 %6)
  %sub = sub nsw i32 %add, %call2
  store i32 %sub, i32* %sum, align 4
  %7 = load i32, i32* %sum, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %7)
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
