; ModuleID = 'code/209-14911powerOf.c'
source_filename = "code/209-14911powerOf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@funcs = dso_local global [7 x i32 (i32)*] [i32 (i32)* @isPowerOfTwo, i32 (i32)* @isPowerOfTwoB, i32 (i32)* @isPowerOfTwoL, i32 (i32)* @isPowerOfTwoR, i32 (i32)* @isPowerOfThree, i32 (i32)* @isPowerOfThreeL, i32 (i32)* @isPowerOfThreeR], align 16
@names = dso_local global [7 x [16 x i8]] [[16 x i8] c"isPowerOfTwo\00\00\00\00", [16 x i8] c"isPowerOfTwoB\00\00\00", [16 x i8] c"isPowerOfTwoL\00\00\00", [16 x i8] c"isPowerOfTwoR\00\00\00", [16 x i8] c"isPowerOfThree\00\00", [16 x i8] c"isPowerOfThreeL\00", [16 x i8] c"isPowerOfThreeR\00"], align 16
@result = dso_local global [2 x [4 x i8]] [[4 x i8] c"FK\00\00", [4 x i8] c"OK\00\00"], align 1
@__const.unitTest.nums = private unnamed_addr constant [2 x [10 x i32]] [[10 x i32] [i32 -2147483648, i32 0, i32 1, i32 6, i32 16, i32 128, i32 4096, i32 512, i32 65535, i32 65536], [10 x i32] [i32 -3, i32 0, i32 1, i32 6, i32 9, i32 27, i32 1162261467, i32 81, i32 6564, i32 6561]], align 16
@.str = private unnamed_addr constant [12 x i8] c"Testing %s:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Run unit Test:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isPowerOfTwo(i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %w = alloca i32, align 4
  %un = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %w, align 4
  %0 = load i32, i32* %n.addr, align 4
  store i32 %0, i32* %un, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i32, i32* %un, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %w, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %w, align 4
  %4 = load i32, i32* %un, align 4
  %sub = sub i32 %4, 1
  %5 = load i32, i32* %un, align 4
  %and = and i32 %5, %sub
  store i32 %and, i32* %un, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %w, align 4
  %cmp1 = icmp eq i32 %6, 1
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isPowerOfTwoB(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %2 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %2, 1
  %and = and i32 %1, %sub
  %cmp1 = icmp eq i32 %and, 0
  %conv = zext i1 %cmp1 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isPowerOfTwoR(i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %n.addr, align 4
  %and = and i32 %2, 1
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %3 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %3, 2
  %call = call i32 @isPowerOfTwoR(i32 %div)
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %4 = phi i1 [ false, %if.end ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  store i32 %land.ext, i32* %retval, align 4
  br label %return

return:                                           ; preds = %land.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isPowerOfTwoL(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* %n.addr, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %3 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %3, 2
  store i32 %div, i32* %n.addr, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %4 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp eq i32 %4, 1
  %conv = zext i1 %cmp1 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isPowerOfThreeL(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %1, 3
  %tobool = icmp ne i32 %rem, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %3 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %3, 3
  store i32 %div, i32* %n.addr, align 4
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %land.end
  %4 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp eq i32 %4, 1
  %conv = zext i1 %cmp1 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isPowerOfThree(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %call = call i32 @isPowerOfThreeL(i32 %0)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isPowerOfThreeR(i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %2, 3
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %3 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %3, 3
  %call = call i32 @isPowerOfThreeR(i32 %div)
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %4 = phi i1 [ false, %if.end ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  store i32 %land.ext, i32* %retval, align 4
  br label %return

return:                                           ; preds = %land.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unitTest() #0 {
entry:
  %f = alloca i32 (i32)*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fname = alloca i8*, align 8
  %nums = alloca [2 x [10 x i32]], align 16
  %eresult = alloca [10 x i32], align 16
  %0 = bitcast [2 x [10 x i32]]* %nums to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([2 x [10 x i32]]* @__const.unitTest.nums to i8*), i64 80, i1 false)
  %1 = bitcast [10 x i32]* %eresult to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false)
  %2 = bitcast i8* %1 to [10 x i32]*
  %3 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i32 0, i32 2
  store i32 1, i32* %3, align 8
  %4 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i32 0, i32 4
  store i32 1, i32* %4, align 16
  %5 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i32 0, i32 5
  store i32 1, i32* %5, align 4
  %6 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i32 0, i32 6
  store i32 1, i32* %6, align 8
  %7 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i32 0, i32 7
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds [10 x i32], [10 x i32]* %2, i32 0, i32 9
  store i32 1, i32* %8, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %9 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %9, 7
  br i1 %cmp, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [7 x [16 x i8]], [7 x [16 x i8]]* @names, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx, i64 0, i64 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %arraydecay)
  %11 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %11 to i64
  %arrayidx2 = getelementptr inbounds [7 x i32 (i32)*], [7 x i32 (i32)*]* @funcs, i64 0, i64 %idxprom1
  %12 = load i32 (i32)*, i32 (i32)** %arrayidx2, align 8
  store i32 (i32)* %12, i32 (i32)** %f, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %13 = load i32, i32* %j, align 4
  %cmp4 = icmp slt i32 %13, 10
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %14 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %eresult, i64 0, i64 %idxprom6
  %15 = load i32, i32* %arrayidx7, align 4
  %16 = load i32 (i32)*, i32 (i32)** %f, align 8
  %17 = load i32, i32* %i, align 4
  %div = sdiv i32 %17, 4
  %idxprom8 = sext i32 %div to i64
  %arrayidx9 = getelementptr inbounds [2 x [10 x i32]], [2 x [10 x i32]]* %nums, i64 0, i64 %idxprom8
  %18 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %18 to i64
  %arrayidx11 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx9, i64 0, i64 %idxprom10
  %19 = load i32, i32* %arrayidx11, align 4
  %call12 = call i32 %16(i32 %19)
  %cmp13 = icmp eq i32 %15, %call12
  %conv = zext i1 %cmp13 to i32
  %idxprom14 = sext i32 %conv to i64
  %arrayidx15 = getelementptr inbounds [2 x [4 x i8]], [2 x [4 x i8]]* @result, i64 0, i64 %idxprom14
  %arraydecay16 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx15, i64 0, i64 0
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay16)
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %20 = load i32, i32* %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !8

for.end:                                          ; preds = %for.cond3
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %21 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %21, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end21:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  call void @unitTest()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
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
!9 = distinct !{!9, !5}
