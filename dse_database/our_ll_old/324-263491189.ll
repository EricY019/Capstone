; ModuleID = './code/324-263491189.c'
source_filename = "./code/324-263491189.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [30 x i32], align 4
  %i = alloca i32, align 4
  %flag = alloca i32, align 4
  %step = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 21, ptr %flag, align 4
  store i32 0, ptr %step, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [30 x i32], ptr %a, i64 0, i64 %idxprom
  store i32 1, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %for.end16, %for.end
  %3 = load i32, ptr %flag, align 4
  %cmp1 = icmp ne i32 %3, 1
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 1, ptr %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc14, %while.body
  %4 = load i32, ptr %i, align 4
  %cmp3 = icmp sle i32 %4, 21
  br i1 %cmp3, label %for.body4, label %for.end16

for.body4:                                        ; preds = %for.cond2
  %5 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [30 x i32], ptr %a, i64 0, i64 %idxprom5
  %6 = load i32, ptr %arrayidx6, align 4
  %cmp7 = icmp eq i32 %6, 1
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %7 = load i32, ptr %step, align 4
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, ptr %step, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  %8 = load i32, ptr %step, align 4
  %cmp9 = icmp eq i32 %8, 17
  br i1 %cmp9, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end
  store i32 0, ptr %step, align 4
  %9 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [30 x i32], ptr %a, i64 0, i64 %idxprom11
  store i32 0, ptr %arrayidx12, align 4
  %10 = load i32, ptr %flag, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, ptr %flag, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end
  br label %for.inc14

for.inc14:                                        ; preds = %if.end13
  %11 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %11, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond2, !llvm.loop !7

for.end16:                                        ; preds = %for.cond2
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %i, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc24, %while.end
  %12 = load i32, ptr %i, align 4
  %cmp18 = icmp sle i32 %12, 21
  br i1 %cmp18, label %for.body19, label %for.end26

for.body19:                                       ; preds = %for.cond17
  %13 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %13 to i64
  %arrayidx21 = getelementptr inbounds [30 x i32], ptr %a, i64 0, i64 %idxprom20
  %14 = load i32, ptr %arrayidx21, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.body19
  %15 = load i32, ptr %i, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %15)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %for.body19
  br label %for.inc24

for.inc24:                                        ; preds = %if.end23
  %16 = load i32, ptr %i, align 4
  %inc25 = add nsw i32 %16, 1
  store i32 %inc25, ptr %i, align 4
  br label %for.cond17, !llvm.loop !9

for.end26:                                        ; preds = %for.cond17
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
