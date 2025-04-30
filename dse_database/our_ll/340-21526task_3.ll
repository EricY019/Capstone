; ModuleID = 'code/340-21526task_3.c'
source_filename = "code/340-21526task_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"(%d, %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %num = alloca i32, align 4
  %twinPrimes = alloca [20 x i32], align 16
  %br = alloca i32, align 4
  %simplNum = alloca [50 x i32], align 16
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %a, align 4
  store i32 2, i32* %num, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc34, %entry
  %0 = load i32, i32* %num, align 4
  %cmp = icmp sle i32 %0, 300
  br i1 %cmp, label %for.body, label %for.end36

for.body:                                         ; preds = %for.cond
  store i32 2, i32* %br, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %br, align 4
  %2 = load i32, i32* %num, align 4
  %cmp2 = icmp sle i32 %1, %2
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, i32* %num, align 4
  %4 = load i32, i32* %br, align 4
  %rem = srem i32 %3, %4
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  br label %for.end

if.end:                                           ; preds = %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %br, align 4
  %add = add nsw i32 %5, 1
  store i32 %add, i32* %br, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %if.then, %for.cond1
  %6 = load i32, i32* %br, align 4
  %7 = load i32, i32* %num, align 4
  %cmp5 = icmp eq i32 %6, %7
  br i1 %cmp5, label %if.then6, label %if.end33

if.then6:                                         ; preds = %for.end
  %8 = load i32, i32* %num, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [50 x i32], [50 x i32]* %simplNum, i64 0, i64 %idxprom
  store i32 %8, i32* %arrayidx, align 4
  %10 = load i32, i32* %i, align 4
  %add7 = add nsw i32 %10, 1
  store i32 %add7, i32* %i, align 4
  %11 = load i32, i32* %a, align 4
  %cmp8 = icmp sgt i32 %11, 18
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then6
  br label %for.end36

if.end10:                                         ; preds = %if.then6
  %12 = load i32, i32* %i, align 4
  %cmp11 = icmp sgt i32 %12, 1
  br i1 %cmp11, label %land.lhs.true, label %if.end32

land.lhs.true:                                    ; preds = %if.end10
  %13 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %13, 1
  %idxprom12 = sext i32 %sub to i64
  %arrayidx13 = getelementptr inbounds [50 x i32], [50 x i32]* %simplNum, i64 0, i64 %idxprom12
  %14 = load i32, i32* %arrayidx13, align 4
  %15 = load i32, i32* %i, align 4
  %sub14 = sub nsw i32 %15, 2
  %idxprom15 = sext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds [50 x i32], [50 x i32]* %simplNum, i64 0, i64 %idxprom15
  %16 = load i32, i32* %arrayidx16, align 4
  %sub17 = sub nsw i32 %14, %16
  %cmp18 = icmp eq i32 %sub17, 2
  br i1 %cmp18, label %if.then19, label %if.end32

if.then19:                                        ; preds = %land.lhs.true
  %17 = load i32, i32* %i, align 4
  %sub20 = sub nsw i32 %17, 2
  %idxprom21 = sext i32 %sub20 to i64
  %arrayidx22 = getelementptr inbounds [50 x i32], [50 x i32]* %simplNum, i64 0, i64 %idxprom21
  %18 = load i32, i32* %arrayidx22, align 4
  %19 = load i32, i32* %a, align 4
  %idxprom23 = sext i32 %19 to i64
  %arrayidx24 = getelementptr inbounds [20 x i32], [20 x i32]* %twinPrimes, i64 0, i64 %idxprom23
  store i32 %18, i32* %arrayidx24, align 4
  %20 = load i32, i32* %i, align 4
  %sub25 = sub nsw i32 %20, 1
  %idxprom26 = sext i32 %sub25 to i64
  %arrayidx27 = getelementptr inbounds [50 x i32], [50 x i32]* %simplNum, i64 0, i64 %idxprom26
  %21 = load i32, i32* %arrayidx27, align 4
  %22 = load i32, i32* %a, align 4
  %add28 = add nsw i32 %22, 1
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds [20 x i32], [20 x i32]* %twinPrimes, i64 0, i64 %idxprom29
  store i32 %21, i32* %arrayidx30, align 4
  %23 = load i32, i32* %a, align 4
  %add31 = add nsw i32 %23, 2
  store i32 %add31, i32* %a, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then19, %land.lhs.true, %if.end10
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %for.end
  br label %for.inc34

for.inc34:                                        ; preds = %if.end33
  %24 = load i32, i32* %num, align 4
  %add35 = add nsw i32 %24, 1
  store i32 %add35, i32* %num, align 4
  br label %for.cond, !llvm.loop !6

for.end36:                                        ; preds = %if.then9, %for.cond
  store i32 0, i32* %br, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc45, %for.end36
  %25 = load i32, i32* %br, align 4
  %26 = load i32, i32* %a, align 4
  %cmp38 = icmp slt i32 %25, %26
  br i1 %cmp38, label %for.body39, label %for.end47

for.body39:                                       ; preds = %for.cond37
  %27 = load i32, i32* %br, align 4
  %idxprom40 = sext i32 %27 to i64
  %arrayidx41 = getelementptr inbounds [20 x i32], [20 x i32]* %twinPrimes, i64 0, i64 %idxprom40
  %28 = load i32, i32* %arrayidx41, align 4
  %29 = load i32, i32* %br, align 4
  %add42 = add nsw i32 %29, 1
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds [20 x i32], [20 x i32]* %twinPrimes, i64 0, i64 %idxprom43
  %30 = load i32, i32* %arrayidx44, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30)
  br label %for.inc45

for.inc45:                                        ; preds = %for.body39
  %31 = load i32, i32* %br, align 4
  %add46 = add nsw i32 %31, 2
  store i32 %add46, i32* %br, align 4
  br label %for.cond37, !llvm.loop !7

for.end47:                                        ; preds = %for.cond37
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
