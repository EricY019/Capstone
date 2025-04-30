; ModuleID = 'code/044-26825predcom-6.c'
source_filename = "code/044-26825predcom-6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local global i32 0, align 4
@a = dso_local global i32 0, align 4
@e = dso_local global [5 x [2 x i32]] zeroinitializer, align 16
@c = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* @d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* @d, align 4
  %cmp = icmp ult i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* @a, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br i1 false, label %if.then, label %if.end

cond.false:                                       ; preds = %for.body
  %2 = load i32, i32* @c, align 4
  %add = add nsw i32 %2, 3
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @e, i64 0, i64 %idxprom
  %3 = load i32, i32* @d, align 4
  %idxprom1 = zext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx, i64 0, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  %5 = load i32, i32* @c, align 4
  %add3 = add nsw i32 %5, 4
  %idxprom4 = sext i32 %add3 to i64
  %arrayidx5 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @e, i64 0, i64 %idxprom4
  %6 = load i32, i32* @d, align 4
  %idxprom6 = zext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx5, i64 0, i64 %idxprom6
  %7 = load i32, i32* %arrayidx7, align 4
  %and = and i32 %4, %7
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false, %cond.true
  br label %for.end

if.end:                                           ; preds = %cond.false, %cond.true
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* @d, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* @d, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %if.then, %for.cond
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
