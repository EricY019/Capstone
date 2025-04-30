; ModuleID = 'code/295-21387struct4.c'
source_filename = "code/295-21387struct4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [10 x i32], align 16
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %b = alloca %struct.s, align 4
  %i14 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i1, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc11, %for.end
  %3 = load i32, i32* %i1, align 4
  %cmp3 = icmp slt i32 %3, 10
  br i1 %cmp3, label %for.body4, label %for.end13

for.body4:                                        ; preds = %for.cond2
  %a5 = getelementptr inbounds %struct.s, %struct.s* %b, i32 0, i32 0
  store i32 1, i32* %a5, align 4
  %4 = load i32, i32* %i1, align 4
  %b6 = getelementptr inbounds %struct.s, %struct.s* %b, i32 0, i32 1
  store i32 %4, i32* %b6, align 4
  %a7 = getelementptr inbounds %struct.s, %struct.s* %b, i32 0, i32 0
  %5 = load i32, i32* %a7, align 4
  %b8 = getelementptr inbounds %struct.s, %struct.s* %b, i32 0, i32 1
  %6 = load i32, i32* %b8, align 4
  %add = add nsw i32 %5, %6
  %7 = load i32, i32* %i1, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 %idxprom9
  store i32 %add, i32* %arrayidx10, align 4
  br label %for.inc11

for.inc11:                                        ; preds = %for.body4
  %8 = load i32, i32* %i1, align 4
  %inc12 = add nsw i32 %8, 1
  store i32 %inc12, i32* %i1, align 4
  br label %for.cond2, !llvm.loop !6

for.end13:                                        ; preds = %for.cond2
  store i32 0, i32* %i14, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc22, %for.end13
  %9 = load i32, i32* %i14, align 4
  %cmp16 = icmp slt i32 %9, 10
  br i1 %cmp16, label %for.body17, label %for.end24

for.body17:                                       ; preds = %for.cond15
  %10 = load i32, i32* %i14, align 4
  %idxprom18 = sext i32 %10 to i64
  %arrayidx19 = getelementptr inbounds [10 x i32], [10 x i32]* %a, i64 0, i64 %idxprom18
  %11 = load i32, i32* %arrayidx19, align 4
  %12 = load i32, i32* %i14, align 4
  %add20 = add nsw i32 1, %12
  %cmp21 = icmp ne i32 %11, %add20
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %for.body17
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body17
  br label %for.inc22

for.inc22:                                        ; preds = %if.end
  %13 = load i32, i32* %i14, align 4
  %inc23 = add nsw i32 %13, 1
  store i32 %inc23, i32* %i14, align 4
  br label %for.cond15, !llvm.loop !7

for.end24:                                        ; preds = %for.cond15
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end24, %if.then
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
