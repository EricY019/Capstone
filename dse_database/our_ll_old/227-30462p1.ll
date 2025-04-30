; ModuleID = './code/227-30462p1.c'
source_filename = "./code/227-30462p1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.input1 = private unnamed_addr constant [4 x i32] [i32 2, i32 7, i32 11, i32 15], align 4
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [14 x i8] c"227-30462p1.c\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"r1[0] == 0\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"r1[1] == 1\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @twoSum(ptr noundef %nums, i32 noundef %numsSize, i32 noundef %target) #0 {
entry:
  %nums.addr = alloca ptr, align 8
  %numsSize.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %result = alloca ptr, align 8
  %i = alloca i32, align 4
  %v2 = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %nums, ptr %nums.addr, align 8
  store i32 %numsSize, ptr %numsSize.addr, align 4
  store i32 %target, ptr %target.addr, align 4
  %call = call ptr @malloc(i64 noundef 8) #4
  store ptr %call, ptr %result, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %numsSize.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %target.addr, align 4
  %3 = load ptr, ptr %nums.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  %sub = sub nsw i32 %2, %5
  store i32 %sub, ptr %v2, align 4
  %6 = load i32, ptr %i, align 4
  %add = add nsw i32 %6, 1
  store i32 %add, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %7 = load i32, ptr %j, align 4
  %8 = load i32, ptr %numsSize.addr, align 4
  %cmp2 = icmp slt i32 %7, %8
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %9 = load ptr, ptr %nums.addr, align 8
  %10 = load i32, ptr %j, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %9, i64 %idxprom4
  %11 = load i32, ptr %arrayidx5, align 4
  %12 = load i32, ptr %v2, align 4
  %cmp6 = icmp eq i32 %11, %12
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %13 = load i32, ptr %i, align 4
  %14 = load ptr, ptr %result, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %14, i64 0
  store i32 %13, ptr %arrayidx7, align 4
  %15 = load i32, ptr %j, align 4
  %16 = load ptr, ptr %result, align 8
  %arrayidx8 = getelementptr inbounds i32, ptr %16, i64 1
  store i32 %15, ptr %arrayidx8, align 4
  br label %for.end

if.end:                                           ; preds = %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, ptr %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %if.then, %for.cond1
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %18 = load i32, ptr %i, align 4
  %inc10 = add nsw i32 %18, 1
  store i32 %inc10, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end11:                                        ; preds = %for.cond
  %19 = load ptr, ptr %result, align 8
  ret ptr %19
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %input1 = alloca [4 x i32], align 4
  %r1 = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %input1, ptr align 4 @__const.main.input1, i64 16, i1 false)
  %arraydecay = getelementptr inbounds [4 x i32], ptr %input1, i64 0, i64 0
  %call = call ptr @twoSum(ptr noundef %arraydecay, i32 noundef 4, i32 noundef 9)
  store ptr %call, ptr %r1, align 8
  %0 = load ptr, ptr %r1, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  %cmp = icmp eq i32 %1, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 29, ptr noundef @.str.1) #5
  unreachable

2:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %2
  %3 = load ptr, ptr %r1, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %3, i64 1
  %4 = load i32, ptr %arrayidx1, align 4
  %cmp2 = icmp eq i32 %4, 1
  %lnot4 = xor i1 %cmp2, true
  %lnot.ext5 = zext i1 %lnot4 to i32
  %conv6 = sext i32 %lnot.ext5 to i64
  %tobool7 = icmp ne i64 %conv6, 0
  br i1 %tobool7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 30, ptr noundef @.str.2) #5
  unreachable

5:                                                ; No predecessors!
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %5
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { allocsize(0) }
attributes #5 = { cold noreturn }

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
