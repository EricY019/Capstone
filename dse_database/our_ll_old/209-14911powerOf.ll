; ModuleID = './code/209-14911powerOf.c'
source_filename = "./code/209-14911powerOf.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@funcs = global [7 x ptr] [ptr @isPowerOfTwo, ptr @isPowerOfTwoB, ptr @isPowerOfTwoL, ptr @isPowerOfTwoR, ptr @isPowerOfThree, ptr @isPowerOfThreeL, ptr @isPowerOfThreeR], align 8
@names = global [7 x [16 x i8]] [[16 x i8] c"isPowerOfTwo\00\00\00\00", [16 x i8] c"isPowerOfTwoB\00\00\00", [16 x i8] c"isPowerOfTwoL\00\00\00", [16 x i8] c"isPowerOfTwoR\00\00\00", [16 x i8] c"isPowerOfThree\00\00", [16 x i8] c"isPowerOfThreeL\00", [16 x i8] c"isPowerOfThreeR\00"], align 1
@result = global [2 x [4 x i8]] [[4 x i8] c"FK\00\00", [4 x i8] c"OK\00\00"], align 1
@__const.unitTest.nums = private unnamed_addr constant [2 x [10 x i32]] [[10 x i32] [i32 -2147483648, i32 0, i32 1, i32 6, i32 16, i32 128, i32 4096, i32 512, i32 65535, i32 65536], [10 x i32] [i32 -3, i32 0, i32 1, i32 6, i32 9, i32 27, i32 1162261467, i32 81, i32 6564, i32 6561]], align 4
@.str = private unnamed_addr constant [12 x i8] c"Testing %s:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Run unit Test:\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @isPowerOfTwo(i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %w = alloca i32, align 4
  %un = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 0, ptr %w, align 4
  %0 = load i32, ptr %n.addr, align 4
  store i32 %0, ptr %un, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i32, ptr %un, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %w, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %w, align 4
  %4 = load i32, ptr %un, align 4
  %sub = sub i32 %4, 1
  %5 = load i32, ptr %un, align 4
  %and = and i32 %5, %sub
  store i32 %and, ptr %un, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %6 = load i32, ptr %w, align 4
  %cmp1 = icmp eq i32 %6, 1
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @isPowerOfTwoB(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4
  %2 = load i32, ptr %n.addr, align 4
  %sub = sub nsw i32 %2, 1
  %and = and i32 %1, %sub
  %cmp1 = icmp eq i32 %and, 0
  %conv = zext i1 %cmp1 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @isPowerOfTwoR(i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %n.addr, align 4
  %and = and i32 %2, 1
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %3 = load i32, ptr %n.addr, align 4
  %div = sdiv i32 %3, 2
  %call = call i32 @isPowerOfTwoR(i32 noundef %div)
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %4 = phi i1 [ false, %if.end ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  store i32 %land.ext, ptr %retval, align 4
  br label %return

return:                                           ; preds = %land.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @isPowerOfTwoL(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, ptr %n.addr, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %3 = load i32, ptr %n.addr, align 4
  %div = sdiv i32 %3, 2
  store i32 %div, ptr %n.addr, align 4
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %land.end
  %4 = load i32, ptr %n.addr, align 4
  %cmp1 = icmp eq i32 %4, 1
  %conv = zext i1 %cmp1 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @isPowerOfThreeL(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, ptr %n.addr, align 4
  %rem = srem i32 %1, 3
  %tobool = icmp ne i32 %rem, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %3 = load i32, ptr %n.addr, align 4
  %div = sdiv i32 %3, 3
  store i32 %div, ptr %n.addr, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end
  %4 = load i32, ptr %n.addr, align 4
  %cmp1 = icmp eq i32 %4, 1
  %conv = zext i1 %cmp1 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @isPowerOfThree(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %call = call i32 @isPowerOfThreeL(i32 noundef %0)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @isPowerOfThreeR(i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %n.addr, align 4
  %rem = srem i32 %2, 3
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %3 = load i32, ptr %n.addr, align 4
  %div = sdiv i32 %3, 3
  %call = call i32 @isPowerOfThreeR(i32 noundef %div)
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %4 = phi i1 [ false, %if.end ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  store i32 %land.ext, ptr %retval, align 4
  br label %return

return:                                           ; preds = %land.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @unitTest() #0 {
entry:
  %f = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fname = alloca ptr, align 8
  %nums = alloca [2 x [10 x i32]], align 4
  %eresult = alloca [10 x i32], align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %nums, ptr align 4 @__const.unitTest.nums, i64 80, i1 false)
  call void @llvm.memset.p0.i64(ptr align 4 %eresult, i8 0, i64 40, i1 false)
  %0 = getelementptr inbounds [10 x i32], ptr %eresult, i32 0, i32 2
  store i32 1, ptr %0, align 4
  %1 = getelementptr inbounds [10 x i32], ptr %eresult, i32 0, i32 4
  store i32 1, ptr %1, align 4
  %2 = getelementptr inbounds [10 x i32], ptr %eresult, i32 0, i32 5
  store i32 1, ptr %2, align 4
  %3 = getelementptr inbounds [10 x i32], ptr %eresult, i32 0, i32 6
  store i32 1, ptr %3, align 4
  %4 = getelementptr inbounds [10 x i32], ptr %eresult, i32 0, i32 7
  store i32 1, ptr %4, align 4
  %5 = getelementptr inbounds [10 x i32], ptr %eresult, i32 0, i32 9
  store i32 1, ptr %5, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %6 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %6, 7
  br i1 %cmp, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [7 x [16 x i8]], ptr @names, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [16 x i8], ptr %arrayidx, i64 0, i64 0
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay)
  %8 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds [7 x ptr], ptr @funcs, i64 0, i64 %idxprom1
  %9 = load ptr, ptr %arrayidx2, align 8
  store ptr %9, ptr %f, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %10 = load i32, ptr %j, align 4
  %cmp4 = icmp slt i32 %10, 10
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %11 = load i32, ptr %j, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds [10 x i32], ptr %eresult, i64 0, i64 %idxprom6
  %12 = load i32, ptr %arrayidx7, align 4
  %13 = load ptr, ptr %f, align 8
  %14 = load i32, ptr %i, align 4
  %div = sdiv i32 %14, 4
  %idxprom8 = sext i32 %div to i64
  %arrayidx9 = getelementptr inbounds [2 x [10 x i32]], ptr %nums, i64 0, i64 %idxprom8
  %15 = load i32, ptr %j, align 4
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [10 x i32], ptr %arrayidx9, i64 0, i64 %idxprom10
  %16 = load i32, ptr %arrayidx11, align 4
  %call12 = call i32 %13(i32 noundef %16)
  %cmp13 = icmp eq i32 %12, %call12
  %conv = zext i1 %cmp13 to i32
  %idxprom14 = sext i32 %conv to i64
  %arrayidx15 = getelementptr inbounds [2 x [4 x i8]], ptr @result, i64 0, i64 %idxprom14
  %arraydecay16 = getelementptr inbounds [4 x i8], ptr %arrayidx15, i64 0, i64 0
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay16)
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %17 = load i32, ptr %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond3, !llvm.loop !9

for.end:                                          ; preds = %for.cond3
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %18 = load i32, ptr %i, align 4
  %inc20 = add nsw i32 %18, 1
  store i32 %inc20, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end21:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  call void @unitTest()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
