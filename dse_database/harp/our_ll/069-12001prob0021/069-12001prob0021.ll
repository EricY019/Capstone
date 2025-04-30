; ModuleID = 'code/069-12001prob0021.c'
source_filename = "code/069-12001prob0021.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"\0ASum is %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sum = alloca [10000 x i32], align 16
  %s = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10000 x i32], [10000 x i32]* %sum, i64 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %j, align 4
  %rem = srem i32 %4, %5
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body3
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [10000 x i32], [10000 x i32]* %sum, i64 0, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %add = add nsw i32 %8, %6
  store i32 %add, i32* %arrayidx5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %10 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %10, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end8:                                         ; preds = %for.cond
  store i32 0, i32* %s, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc29, %for.end8
  %11 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %11, 10000
  br i1 %cmp10, label %for.body11, label %for.end31

for.body11:                                       ; preds = %for.cond9
  %12 = load i32, i32* %i, align 4
  %add12 = add nsw i32 %12, 1
  store i32 %add12, i32* %j, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc26, %for.body11
  %13 = load i32, i32* %j, align 4
  %cmp14 = icmp slt i32 %13, 10000
  br i1 %cmp14, label %for.body15, label %for.end28

for.body15:                                       ; preds = %for.cond13
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [10000 x i32], [10000 x i32]* %sum, i64 0, i64 %idxprom16
  %16 = load i32, i32* %arrayidx17, align 4
  %cmp18 = icmp eq i32 %14, %16
  br i1 %cmp18, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %for.body15
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds [10000 x i32], [10000 x i32]* %sum, i64 0, i64 %idxprom19
  %19 = load i32, i32* %arrayidx20, align 4
  %cmp21 = icmp eq i32 %17, %19
  br i1 %cmp21, label %if.then22, label %if.end25

if.then22:                                        ; preds = %land.lhs.true
  %20 = load i32, i32* %s, align 4
  %21 = load i32, i32* %i, align 4
  %add23 = add nsw i32 %20, %21
  %22 = load i32, i32* %j, align 4
  %add24 = add nsw i32 %add23, %22
  store i32 %add24, i32* %s, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %land.lhs.true, %for.body15
  br label %for.inc26

for.inc26:                                        ; preds = %if.end25
  %23 = load i32, i32* %j, align 4
  %inc27 = add nsw i32 %23, 1
  store i32 %inc27, i32* %j, align 4
  br label %for.cond13, !llvm.loop !7

for.end28:                                        ; preds = %for.cond13
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %24 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %24, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond9, !llvm.loop !8

for.end31:                                        ; preds = %for.cond9
  %25 = load i32, i32* %s, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %25)
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
!8 = distinct !{!8, !5}
