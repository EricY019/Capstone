; ModuleID = 'code/177-3105converse1.c'
source_filename = "code/177-3105converse1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @converse(i32 %N, i32 %r) #0 {
entry:
  %N.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %array = alloca [200 x i32], align 16
  %top = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  store i32 -1, i32* %top, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %N.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %N.addr, align 4
  %2 = load i32, i32* %r.addr, align 4
  %rem = srem i32 %1, %2
  %3 = load i32, i32* %top, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %top, align 4
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr inbounds [200 x i32], [200 x i32]* %array, i64 0, i64 %idxprom
  store i32 %rem, i32* %arrayidx, align 4
  %4 = load i32, i32* %N.addr, align 4
  %5 = load i32, i32* %r.addr, align 4
  %div = sdiv i32 %4, %5
  store i32 %div, i32* %N.addr, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body2, %while.end
  %6 = load i32, i32* %top, align 4
  %cmp = icmp ne i32 %6, -1
  br i1 %cmp, label %while.body2, label %while.end5

while.body2:                                      ; preds = %while.cond1
  %7 = load i32, i32* %top, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %top, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [200 x i32], [200 x i32]* %array, i64 0, i64 %idxprom3
  %8 = load i32, i32* %arrayidx4, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %while.cond1, !llvm.loop !6

while.end5:                                       ; preds = %while.cond1
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %N = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 1025, i32* %N, align 4
  store i32 2, i32* %r, align 4
  %0 = load i32, i32* %N, align 4
  %1 = load i32, i32* %r, align 4
  call void @converse(i32 %0, i32 %1)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

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
