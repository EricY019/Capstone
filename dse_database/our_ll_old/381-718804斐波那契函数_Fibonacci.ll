; ModuleID = './code/381-718804斐波那契函数_Fibonacci.c'
source_filename = "./code/381-718804\E6\96\90\E6\B3\A2\E9\82\A3\E5\A5\91\E5\87\BD\E6\95\B0_Fibonacci.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [35 x i8] c"\E8\BF\AD\E4\BB\A3\E6\98\BE\E7\A4\BA\E6\96\90\E6\B3\A2\E9\82\A3\E5\A5\91\E6\95\B0\E5\88\97\EF\BC\9A\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"\E9\80\92\E5\BD\92\E6\98\BE\E7\A4\BA\E6\96\90\E6\B3\A2\E9\82\A3\E5\A5\91\E6\95\B0\E5\88\97\EF\BC\9A\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @Fbi(i32 noundef %i) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %i.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  %2 = zext i1 %cmp1 to i64
  %cond = select i1 %cmp1, i32 0, i32 1
  store i32 %cond, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %i.addr, align 4
  %sub = sub nsw i32 %3, 1
  %call = call i32 @Fbi(i32 noundef %sub)
  %4 = load i32, ptr %i.addr, align 4
  %sub2 = sub nsw i32 %4, 2
  %call3 = call i32 @Fbi(i32 noundef %sub2)
  %add = add nsw i32 %call, %call3
  store i32 %add, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca [40 x i32], align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %arrayidx = getelementptr inbounds [40 x i32], ptr %a, i64 0, i64 0
  store i32 0, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [40 x i32], ptr %a, i64 0, i64 1
  store i32 1, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [40 x i32], ptr %a, i64 0, i64 0
  %0 = load i32, ptr %arrayidx2, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %0)
  %arrayidx4 = getelementptr inbounds [40 x i32], ptr %a, i64 0, i64 1
  %1 = load i32, ptr %arrayidx4, align 4
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %1)
  store i32 2, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 40
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %3, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx6 = getelementptr inbounds [40 x i32], ptr %a, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx6, align 4
  %5 = load i32, ptr %i, align 4
  %sub7 = sub nsw i32 %5, 2
  %idxprom8 = sext i32 %sub7 to i64
  %arrayidx9 = getelementptr inbounds [40 x i32], ptr %a, i64 0, i64 %idxprom8
  %6 = load i32, ptr %arrayidx9, align 4
  %add = add nsw i32 %4, %6
  %7 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [40 x i32], ptr %a, i64 0, i64 %idxprom10
  store i32 %add, ptr %arrayidx11, align 4
  %8 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds [40 x i32], ptr %a, i64 0, i64 %idxprom12
  %9 = load i32, ptr %arrayidx13, align 4
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  store i32 0, ptr %i, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc22, %for.end
  %11 = load i32, ptr %i, align 4
  %cmp18 = icmp slt i32 %11, 40
  br i1 %cmp18, label %for.body19, label %for.end24

for.body19:                                       ; preds = %for.cond17
  %12 = load i32, ptr %i, align 4
  %call20 = call i32 @Fbi(i32 noundef %12)
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %call20)
  br label %for.inc22

for.inc22:                                        ; preds = %for.body19
  %13 = load i32, ptr %i, align 4
  %inc23 = add nsw i32 %13, 1
  store i32 %inc23, ptr %i, align 4
  br label %for.cond17, !llvm.loop !7

for.end24:                                        ; preds = %for.cond17
  %call25 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
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
