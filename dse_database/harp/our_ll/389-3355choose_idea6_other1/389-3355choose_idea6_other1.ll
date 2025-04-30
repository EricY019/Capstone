; ModuleID = 'code/389-3355choose_idea6_other1.c'
source_filename = "code/389-3355choose_idea6_other1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C = dso_local global [1001 x [1001 x i32]] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initial() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1001 x i32], [1001 x i32]* getelementptr inbounds ([1001 x [1001 x i32]], [1001 x [1001 x i32]]* @C, i64 0, i64 0), i64 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %2 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [1001 x [1001 x i32]], [1001 x [1001 x i32]]* @C, i64 0, i64 %idxprom1
  %arrayidx3 = getelementptr inbounds [1001 x i32], [1001 x i32]* %arrayidx2, i64 0, i64 0
  store i32 1, i32* %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc27, %for.end
  %4 = load i32, i32* %i, align 4
  %cmp5 = icmp sle i32 %4, 1000
  br i1 %cmp5, label %for.body6, label %for.end29

for.body6:                                        ; preds = %for.cond4
  store i32 1, i32* %j, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc24, %for.body6
  %5 = load i32, i32* %j, align 4
  %cmp8 = icmp sle i32 %5, 1000
  br i1 %cmp8, label %for.body9, label %for.end26

for.body9:                                        ; preds = %for.cond7
  %6 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %6, 1
  %idxprom10 = sext i32 %sub to i64
  %arrayidx11 = getelementptr inbounds [1001 x [1001 x i32]], [1001 x [1001 x i32]]* @C, i64 0, i64 %idxprom10
  %7 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %7 to i64
  %arrayidx13 = getelementptr inbounds [1001 x i32], [1001 x i32]* %arrayidx11, i64 0, i64 %idxprom12
  %8 = load i32, i32* %arrayidx13, align 4
  %9 = load i32, i32* %i, align 4
  %sub14 = sub nsw i32 %9, 1
  %idxprom15 = sext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds [1001 x [1001 x i32]], [1001 x [1001 x i32]]* @C, i64 0, i64 %idxprom15
  %10 = load i32, i32* %j, align 4
  %sub17 = sub nsw i32 %10, 1
  %idxprom18 = sext i32 %sub17 to i64
  %arrayidx19 = getelementptr inbounds [1001 x i32], [1001 x i32]* %arrayidx16, i64 0, i64 %idxprom18
  %11 = load i32, i32* %arrayidx19, align 4
  %add = add nsw i32 %8, %11
  %12 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %12 to i64
  %arrayidx21 = getelementptr inbounds [1001 x [1001 x i32]], [1001 x [1001 x i32]]* @C, i64 0, i64 %idxprom20
  %13 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %13 to i64
  %arrayidx23 = getelementptr inbounds [1001 x i32], [1001 x i32]* %arrayidx21, i64 0, i64 %idxprom22
  store i32 %add, i32* %arrayidx23, align 4
  br label %for.inc24

for.inc24:                                        ; preds = %for.body9
  %14 = load i32, i32* %j, align 4
  %inc25 = add nsw i32 %14, 1
  store i32 %inc25, i32* %j, align 4
  br label %for.cond7, !llvm.loop !6

for.end26:                                        ; preds = %for.cond7
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %15 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %15, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond4, !llvm.loop !7

for.end29:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @choose(i32 %n, i32 %k) #0 {
entry:
  %n.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [1001 x [1001 x i32]], [1001 x [1001 x i32]]* @C, i64 0, i64 %idxprom
  %1 = load i32, i32* %k.addr, align 4
  %idxprom1 = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds [1001 x i32], [1001 x i32]* %arrayidx, i64 0, i64 %idxprom1
  %2 = load i32, i32* %arrayidx2, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @initial()
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %k, align 4
  %2 = load i32, i32* %n, align 4
  %cmp2 = icmp sle i32 %1, %2
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, i32* %n, align 4
  %4 = load i32, i32* %k, align 4
  %call = call i32 @choose(i32 %3, i32 %4)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %call)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %5 = load i32, i32* %k, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond1, !llvm.loop !8

for.end:                                          ; preds = %for.cond1
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %6 = load i32, i32* %n, align 4
  %inc7 = add nsw i32 %6, 1
  store i32 %inc7, i32* %n, align 4
  br label %for.cond, !llvm.loop !9

for.end8:                                         ; preds = %for.cond
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
!9 = distinct !{!9, !5}
