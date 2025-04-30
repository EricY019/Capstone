; ModuleID = 'code/396-29283maximum_sum_increasing_subsequence.c'
source_filename = "code/396-29283maximum_sum_increasing_subsequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.arr = private unnamed_addr constant [7 x i32] [i32 4, i32 6, i32 1, i32 3, i32 8, i32 4, i32 6], align 16
@.str = private unnamed_addr constant [48 x i8] c"Sum of maximum sum increasing subsequence is %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @maxSum(i32* %arr, i32 %N) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  %N.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %max = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  store i32 0, i32* %max, align 4
  %0 = load i32, i32* %N.addr, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 16
  store i64 %1, i64* %__vla_expr0, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %N.addr, align 4
  %cmp = icmp sle i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32*, i32** %arr.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %vla, i64 %idxprom1
  store i32 %7, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc31, %for.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %N.addr, align 4
  %cmp4 = icmp slt i32 %10, %11
  br i1 %cmp4, label %for.body5, label %for.end33

for.body5:                                        ; preds = %for.cond3
  store i32 0, i32* %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc28, %for.body5
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %12, %13
  br i1 %cmp7, label %for.body8, label %for.end30

for.body8:                                        ; preds = %for.cond6
  %14 = load i32*, i32** %arr.addr, align 8
  %15 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %14, i64 %idxprom9
  %16 = load i32, i32* %arrayidx10, align 4
  %17 = load i32*, i32** %arr.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %18 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %17, i64 %idxprom11
  %19 = load i32, i32* %arrayidx12, align 4
  %cmp13 = icmp slt i32 %16, %19
  br i1 %cmp13, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body8
  %20 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %20 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %vla, i64 %idxprom14
  %21 = load i32, i32* %arrayidx15, align 4
  %22 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %22 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %vla, i64 %idxprom16
  %23 = load i32, i32* %arrayidx17, align 4
  %24 = load i32*, i32** %arr.addr, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %25 to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %24, i64 %idxprom18
  %26 = load i32, i32* %arrayidx19, align 4
  %add = add nsw i32 %23, %26
  %cmp20 = icmp slt i32 %21, %add
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %27 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %27 to i64
  %arrayidx22 = getelementptr inbounds i32, i32* %vla, i64 %idxprom21
  %28 = load i32, i32* %arrayidx22, align 4
  %29 = load i32*, i32** %arr.addr, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %30 to i64
  %arrayidx24 = getelementptr inbounds i32, i32* %29, i64 %idxprom23
  %31 = load i32, i32* %arrayidx24, align 4
  %add25 = add nsw i32 %28, %31
  %32 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %32 to i64
  %arrayidx27 = getelementptr inbounds i32, i32* %vla, i64 %idxprom26
  store i32 %add25, i32* %arrayidx27, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body8
  br label %for.inc28

for.inc28:                                        ; preds = %if.end
  %33 = load i32, i32* %j, align 4
  %inc29 = add nsw i32 %33, 1
  store i32 %inc29, i32* %j, align 4
  br label %for.cond6, !llvm.loop !6

for.end30:                                        ; preds = %for.cond6
  br label %for.inc31

for.inc31:                                        ; preds = %for.end30
  %34 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %34, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond3, !llvm.loop !7

for.end33:                                        ; preds = %for.cond3
  store i32 0, i32* %i, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc44, %for.end33
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %N.addr, align 4
  %cmp35 = icmp slt i32 %35, %36
  br i1 %cmp35, label %for.body36, label %for.end46

for.body36:                                       ; preds = %for.cond34
  %37 = load i32, i32* %max, align 4
  %38 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %38 to i64
  %arrayidx38 = getelementptr inbounds i32, i32* %vla, i64 %idxprom37
  %39 = load i32, i32* %arrayidx38, align 4
  %cmp39 = icmp slt i32 %37, %39
  br i1 %cmp39, label %if.then40, label %if.end43

if.then40:                                        ; preds = %for.body36
  %40 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %40 to i64
  %arrayidx42 = getelementptr inbounds i32, i32* %vla, i64 %idxprom41
  %41 = load i32, i32* %arrayidx42, align 4
  store i32 %41, i32* %max, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %for.body36
  br label %for.inc44

for.inc44:                                        ; preds = %if.end43
  %42 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %42, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond34, !llvm.loop !8

for.end46:                                        ; preds = %for.cond34
  %43 = load i32, i32* %max, align 4
  %44 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %44)
  ret i32 %43
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [7 x i32], align 16
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [7 x i32]* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([7 x i32]* @__const.main.arr to i8*), i64 28, i1 false)
  store i32 7, i32* %n, align 4
  %arraydecay = getelementptr inbounds [7 x i32], [7 x i32]* %arr, i64 0, i64 0
  %1 = load i32, i32* %n, align 4
  %call = call i32 @maxSum(i32* %arraydecay, i32 %1)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %call)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
