; ModuleID = './code/224-20776lfsr128.c'
source_filename = "./code/224-20776lfsr128.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.startState = private unnamed_addr constant [4 x i32] [i32 -956090405, i32 2135773519, i32 1966568857, i32 2102998947], align 4
@.str = private unnamed_addr constant [8 x i8] c"%03d:  \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%02X  \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %startState = alloca [4 x i32], align 4
  %taps = alloca i32, align 4
  %lfsr = alloca [4 x i32], align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %startState, ptr align 4 @__const.main.startState, i64 16, i1 false)
  store i32 -805306367, ptr %taps, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %startState, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %3 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [4 x i32], ptr %lfsr, i64 0, i64 %idxprom1
  store i32 %2, ptr %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %n, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc51, %for.end
  %5 = load i32, ptr %n, align 4
  %cmp4 = icmp slt i32 %5, 530
  br i1 %cmp4, label %for.body5, label %for.end53

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, ptr %n, align 4
  %sub = sub nsw i32 %6, 10
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %sub)
  store i32 0, ptr %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc27, %for.body5
  %7 = load i32, ptr %i, align 4
  %cmp7 = icmp slt i32 %7, 4
  br i1 %cmp7, label %for.body8, label %for.end29

for.body8:                                        ; preds = %for.cond6
  %8 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [4 x i32], ptr %lfsr, i64 0, i64 %idxprom9
  %9 = load i32, ptr %arrayidx10, align 4
  %shr = lshr i32 %9, 24
  %and = and i32 %shr, 255
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %and)
  %10 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [4 x i32], ptr %lfsr, i64 0, i64 %idxprom12
  %11 = load i32, ptr %arrayidx13, align 4
  %shr14 = lshr i32 %11, 16
  %and15 = and i32 %shr14, 255
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %and15)
  %12 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %12 to i64
  %arrayidx18 = getelementptr inbounds [4 x i32], ptr %lfsr, i64 0, i64 %idxprom17
  %13 = load i32, ptr %arrayidx18, align 4
  %shr19 = lshr i32 %13, 8
  %and20 = and i32 %shr19, 255
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %and20)
  %14 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %14 to i64
  %arrayidx23 = getelementptr inbounds [4 x i32], ptr %lfsr, i64 0, i64 %idxprom22
  %15 = load i32, ptr %arrayidx23, align 4
  %shr24 = lshr i32 %15, 0
  %and25 = and i32 %shr24, 255
  %call26 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %and25)
  br label %for.inc27

for.inc27:                                        ; preds = %for.body8
  %16 = load i32, ptr %i, align 4
  %inc28 = add nsw i32 %16, 1
  store i32 %inc28, ptr %i, align 4
  br label %for.cond6, !llvm.loop !7

for.end29:                                        ; preds = %for.cond6
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 0, ptr %i, align 4
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc48, %for.end29
  %17 = load i32, ptr %i, align 4
  %cmp32 = icmp slt i32 %17, 4
  br i1 %cmp32, label %for.body33, label %for.end50

for.body33:                                       ; preds = %for.cond31
  %18 = load i32, ptr %i, align 4
  %idxprom34 = sext i32 %18 to i64
  %arrayidx35 = getelementptr inbounds [4 x i32], ptr %lfsr, i64 0, i64 %idxprom34
  %19 = load i32, ptr %arrayidx35, align 4
  %and36 = and i32 %19, 1
  %cmp37 = icmp eq i32 %and36, 0
  br i1 %cmp37, label %if.then, label %if.else

if.then:                                          ; preds = %for.body33
  %20 = load i32, ptr %i, align 4
  %idxprom38 = sext i32 %20 to i64
  %arrayidx39 = getelementptr inbounds [4 x i32], ptr %lfsr, i64 0, i64 %idxprom38
  %21 = load i32, ptr %arrayidx39, align 4
  %shr40 = lshr i32 %21, 1
  %22 = load i32, ptr %i, align 4
  %idxprom41 = sext i32 %22 to i64
  %arrayidx42 = getelementptr inbounds [4 x i32], ptr %lfsr, i64 0, i64 %idxprom41
  store i32 %shr40, ptr %arrayidx42, align 4
  br label %if.end

if.else:                                          ; preds = %for.body33
  %23 = load i32, ptr %i, align 4
  %idxprom43 = sext i32 %23 to i64
  %arrayidx44 = getelementptr inbounds [4 x i32], ptr %lfsr, i64 0, i64 %idxprom43
  %24 = load i32, ptr %arrayidx44, align 4
  %shr45 = lshr i32 %24, 1
  %25 = load i32, ptr %taps, align 4
  %xor = xor i32 %shr45, %25
  %26 = load i32, ptr %i, align 4
  %idxprom46 = sext i32 %26 to i64
  %arrayidx47 = getelementptr inbounds [4 x i32], ptr %lfsr, i64 0, i64 %idxprom46
  store i32 %xor, ptr %arrayidx47, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc48

for.inc48:                                        ; preds = %if.end
  %27 = load i32, ptr %i, align 4
  %inc49 = add nsw i32 %27, 1
  store i32 %inc49, ptr %i, align 4
  br label %for.cond31, !llvm.loop !8

for.end50:                                        ; preds = %for.cond31
  br label %for.inc51

for.inc51:                                        ; preds = %for.end50
  %28 = load i32, ptr %n, align 4
  %inc52 = add nsw i32 %28, 1
  store i32 %inc52, ptr %n, align 4
  br label %for.cond3, !llvm.loop !9

for.end53:                                        ; preds = %for.cond3
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
