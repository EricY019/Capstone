; ModuleID = './code/396-29283maximum_sum_increasing_subsequence.c'
source_filename = "./code/396-29283maximum_sum_increasing_subsequence.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.arr = private unnamed_addr constant [7 x i32] [i32 4, i32 6, i32 1, i32 3, i32 8, i32 4, i32 6], align 4
@.str = private unnamed_addr constant [48 x i8] c"Sum of maximum sum increasing subsequence is %d\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @maxSum(ptr noundef %arr, i32 noundef %N) #0 {
entry:
  %arr.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %max = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  store ptr %arr, ptr %arr.addr, align 8
  store i32 %N, ptr %N.addr, align 4
  store i32 0, ptr %max, align 4
  %0 = load i32, ptr %N.addr, align 4
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  store ptr %2, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 4
  store i64 %1, ptr %__vla_expr0, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %N.addr, align 4
  %cmp = icmp sle i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %arr.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4
  %8 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %vla, i64 %idxprom1
  store i32 %7, ptr %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc31, %for.end
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %N.addr, align 4
  %cmp4 = icmp slt i32 %10, %11
  br i1 %cmp4, label %for.body5, label %for.end33

for.body5:                                        ; preds = %for.cond3
  store i32 0, ptr %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc28, %for.body5
  %12 = load i32, ptr %j, align 4
  %13 = load i32, ptr %i, align 4
  %cmp7 = icmp slt i32 %12, %13
  br i1 %cmp7, label %for.body8, label %for.end30

for.body8:                                        ; preds = %for.cond6
  %14 = load ptr, ptr %arr.addr, align 8
  %15 = load i32, ptr %j, align 4
  %idxprom9 = sext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %14, i64 %idxprom9
  %16 = load i32, ptr %arrayidx10, align 4
  %17 = load ptr, ptr %arr.addr, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %18 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %17, i64 %idxprom11
  %19 = load i32, ptr %arrayidx12, align 4
  %cmp13 = icmp slt i32 %16, %19
  br i1 %cmp13, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body8
  %20 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %20 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %vla, i64 %idxprom14
  %21 = load i32, ptr %arrayidx15, align 4
  %22 = load i32, ptr %j, align 4
  %idxprom16 = sext i32 %22 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %vla, i64 %idxprom16
  %23 = load i32, ptr %arrayidx17, align 4
  %24 = load ptr, ptr %arr.addr, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom18 = sext i32 %25 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %24, i64 %idxprom18
  %26 = load i32, ptr %arrayidx19, align 4
  %add = add nsw i32 %23, %26
  %cmp20 = icmp slt i32 %21, %add
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %27 = load i32, ptr %j, align 4
  %idxprom21 = sext i32 %27 to i64
  %arrayidx22 = getelementptr inbounds i32, ptr %vla, i64 %idxprom21
  %28 = load i32, ptr %arrayidx22, align 4
  %29 = load ptr, ptr %arr.addr, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom23 = sext i32 %30 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %29, i64 %idxprom23
  %31 = load i32, ptr %arrayidx24, align 4
  %add25 = add nsw i32 %28, %31
  %32 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %32 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %vla, i64 %idxprom26
  store i32 %add25, ptr %arrayidx27, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body8
  br label %for.inc28

for.inc28:                                        ; preds = %if.end
  %33 = load i32, ptr %j, align 4
  %inc29 = add nsw i32 %33, 1
  store i32 %inc29, ptr %j, align 4
  br label %for.cond6, !llvm.loop !7

for.end30:                                        ; preds = %for.cond6
  br label %for.inc31

for.inc31:                                        ; preds = %for.end30
  %34 = load i32, ptr %i, align 4
  %inc32 = add nsw i32 %34, 1
  store i32 %inc32, ptr %i, align 4
  br label %for.cond3, !llvm.loop !8

for.end33:                                        ; preds = %for.cond3
  store i32 0, ptr %i, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc44, %for.end33
  %35 = load i32, ptr %i, align 4
  %36 = load i32, ptr %N.addr, align 4
  %cmp35 = icmp slt i32 %35, %36
  br i1 %cmp35, label %for.body36, label %for.end46

for.body36:                                       ; preds = %for.cond34
  %37 = load i32, ptr %max, align 4
  %38 = load i32, ptr %i, align 4
  %idxprom37 = sext i32 %38 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %vla, i64 %idxprom37
  %39 = load i32, ptr %arrayidx38, align 4
  %cmp39 = icmp slt i32 %37, %39
  br i1 %cmp39, label %if.then40, label %if.end43

if.then40:                                        ; preds = %for.body36
  %40 = load i32, ptr %i, align 4
  %idxprom41 = sext i32 %40 to i64
  %arrayidx42 = getelementptr inbounds i32, ptr %vla, i64 %idxprom41
  %41 = load i32, ptr %arrayidx42, align 4
  store i32 %41, ptr %max, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %for.body36
  br label %for.inc44

for.inc44:                                        ; preds = %if.end43
  %42 = load i32, ptr %i, align 4
  %inc45 = add nsw i32 %42, 1
  store i32 %inc45, ptr %i, align 4
  br label %for.cond34, !llvm.loop !9

for.end46:                                        ; preds = %for.cond34
  %43 = load i32, ptr %max, align 4
  %44 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %44)
  ret i32 %43
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [7 x i32], align 4
  %n = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 4 @__const.main.arr, i64 28, i1 false)
  store i32 7, ptr %n, align 4
  %arraydecay = getelementptr inbounds [7 x i32], ptr %arr, i64 0, i64 0
  %0 = load i32, ptr %n, align 4
  %call = call i32 @maxSum(ptr noundef %arraydecay, i32 noundef %0)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %call)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
