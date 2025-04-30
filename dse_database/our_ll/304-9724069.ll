; ModuleID = 'code/304-9724069.c'
source_filename = "code/304-9724069.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%d == %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mySqrt(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 1, i32* %i, align 4
  store i32 0, i32* %sum, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %sum, align 4
  %1 = load i32, i32* %sum, align 4
  %2 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %2, 2
  %add = add nsw i32 %1, %mul
  %sub = sub nsw i32 %add, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %mul1 = mul nsw i32 %3, 2
  %sub2 = sub nsw i32 %mul1, 1
  %4 = load i32, i32* %sum, align 4
  %add3 = add nsw i32 %4, %sub2
  store i32 %add3, i32* %sum, align 4
  %5 = load i32, i32* %x.addr, align 4
  %cmp4 = icmp slt i32 %add3, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp4, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %land.end
  %8 = load i32, i32* %sum, align 4
  %9 = load i32, i32* %x.addr, align 4
  %cmp5 = icmp eq i32 %8, %9
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %10 = load i32, i32* %i, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  %sub6 = sub nsw i32 %11, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ %sub6, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @mySqrt(i32 2147483647)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 46340, i32 %call)
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
