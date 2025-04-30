; ModuleID = 'code/176-2396470_climbing_stair.c'
source_filename = "code/176-2396470_climbing_stair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @climbStairs(i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp eq i32 %2, 2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  %3 = load i32, i32* %n.addr, align 4
  store i32 %3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false1
  %4 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %4, 1
  %5 = zext i32 %add to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %saved_stack, align 8
  %vla = alloca i32, i64 %5, align 16
  store i64 %5, i64* %__vla_expr0, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n.addr, align 4
  %cmp3 = icmp sle i32 %7, %8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %cmp4 = icmp eq i32 %9, 1
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %cmp6 = icmp eq i32 %10, 2
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false5, %for.body
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom
  store i32 %11, i32* %arrayidx, align 4
  br label %for.inc

if.end8:                                          ; preds = %lor.lhs.false5
  %13 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %13, 1
  %idxprom9 = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %vla, i64 %idxprom9
  %14 = load i32, i32* %arrayidx10, align 4
  %15 = load i32, i32* %i, align 4
  %sub11 = sub nsw i32 %15, 2
  %idxprom12 = sext i32 %sub11 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %vla, i64 %idxprom12
  %16 = load i32, i32* %arrayidx13, align 4
  %add14 = add nsw i32 %14, %16
  %17 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %17 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %vla, i64 %idxprom15
  store i32 %add14, i32* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end8, %if.then7
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %n.addr, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds i32, i32* %vla, i64 %idxprom17
  %20 = load i32, i32* %arrayidx18, align 4
  store i32 %20, i32* %retval, align 4
  %21 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %21)
  br label %return

return:                                           ; preds = %for.end, %if.then
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
