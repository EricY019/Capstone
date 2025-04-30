; ModuleID = 'code/381-718804斐波那契函数_Fibonacci.c'
source_filename = "code/381-718804\E6\96\90\E6\B3\A2\E9\82\A3\E5\A5\91\E5\87\BD\E6\95\B0_Fibonacci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"\E8\BF\AD\E4\BB\A3\E6\98\BE\E7\A4\BA\E6\96\90\E6\B3\A2\E9\82\A3\E5\A5\91\E6\95\B0\E5\88\97\EF\BC\9A\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"\E9\80\92\E5\BD\92\E6\98\BE\E7\A4\BA\E6\96\90\E6\B3\A2\E9\82\A3\E5\A5\91\E6\95\B0\E5\88\97\EF\BC\9A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Fbi(i32 %i) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %i.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  %2 = zext i1 %cmp1 to i64
  %cond = select i1 %cmp1, i32 0, i32 1
  store i32 %cond, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %i.addr, align 4
  %sub = sub nsw i32 %3, 1
  %call = call i32 @Fbi(i32 %sub)
  %4 = load i32, i32* %i.addr, align 4
  %sub2 = sub nsw i32 %4, 2
  %call3 = call i32 @Fbi(i32 %sub2)
  %add = add nsw i32 %call, %call3
  store i32 %add, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca [40 x i32], align 16
  store i32 0, i32* %retval, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %arrayidx = getelementptr inbounds [40 x i32], [40 x i32]* %a, i64 0, i64 0
  store i32 0, i32* %arrayidx, align 16
  %arrayidx1 = getelementptr inbounds [40 x i32], [40 x i32]* %a, i64 0, i64 1
  store i32 1, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [40 x i32], [40 x i32]* %a, i64 0, i64 0
  %0 = load i32, i32* %arrayidx2, align 16
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %0)
  %arrayidx4 = getelementptr inbounds [40 x i32], [40 x i32]* %a, i64 0, i64 1
  %1 = load i32, i32* %arrayidx4, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %1)
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 40
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx6 = getelementptr inbounds [40 x i32], [40 x i32]* %a, i64 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx6, align 4
  %5 = load i32, i32* %i, align 4
  %sub7 = sub nsw i32 %5, 2
  %idxprom8 = sext i32 %sub7 to i64
  %arrayidx9 = getelementptr inbounds [40 x i32], [40 x i32]* %a, i64 0, i64 %idxprom8
  %6 = load i32, i32* %arrayidx9, align 4
  %add = add nsw i32 %4, %6
  %7 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [40 x i32], [40 x i32]* %a, i64 0, i64 %idxprom10
  store i32 %add, i32* %arrayidx11, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds [40 x i32], [40 x i32]* %a, i64 0, i64 %idxprom12
  %9 = load i32, i32* %arrayidx13, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc22, %for.end
  %11 = load i32, i32* %i, align 4
  %cmp18 = icmp slt i32 %11, 40
  br i1 %cmp18, label %for.body19, label %for.end24

for.body19:                                       ; preds = %for.cond17
  %12 = load i32, i32* %i, align 4
  %call20 = call i32 @Fbi(i32 %12)
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %call20)
  br label %for.inc22

for.inc22:                                        ; preds = %for.body19
  %13 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %13, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond17, !llvm.loop !6

for.end24:                                        ; preds = %for.cond17
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
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
