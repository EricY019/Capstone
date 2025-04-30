; ModuleID = './code/171-172exercise_3-3_expand.c'
source_filename = "./code/171-172exercise_3-3_expand.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [7 x i8] c"%d %c\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @expand(ptr noundef %originalString, ptr noundef %newString) #0 {
entry:
  %originalString.addr = alloca ptr, align 8
  %newString.addr = alloca ptr, align 8
  %theIndex = alloca [62 x i8], align 1
  %i = alloca i32, align 4
  %i15 = alloca i32, align 4
  store ptr %originalString, ptr %originalString.addr, align 8
  store ptr %newString, ptr %newString.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 62
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %cmp1 = icmp slt i32 %1, 10
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %add = add nsw i32 %2, 48
  %conv = trunc i32 %add to i8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [62 x i8], ptr %theIndex, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  br label %if.end14

if.else:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %4, 36
  br i1 %cmp2, label %if.then4, label %if.else9

if.then4:                                         ; preds = %if.else
  %5 = load i32, ptr %i, align 4
  %add5 = add nsw i32 %5, 55
  %conv6 = trunc i32 %add5 to i8
  %6 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [62 x i8], ptr %theIndex, i64 0, i64 %idxprom7
  store i8 %conv6, ptr %arrayidx8, align 1
  br label %if.end

if.else9:                                         ; preds = %if.else
  %7 = load i32, ptr %i, align 4
  %add10 = add nsw i32 %7, 61
  %conv11 = trunc i32 %add10 to i8
  %8 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %8 to i64
  %arrayidx13 = getelementptr inbounds [62 x i8], ptr %theIndex, i64 0, i64 %idxprom12
  store i8 %conv11, ptr %arrayidx13, align 1
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then4
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i15, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc23, %for.end
  %10 = load i32, ptr %i15, align 4
  %cmp17 = icmp slt i32 %10, 62
  br i1 %cmp17, label %for.body19, label %for.end25

for.body19:                                       ; preds = %for.cond16
  %11 = load i32, ptr %i15, align 4
  %12 = load i32, ptr %i15, align 4
  %idxprom20 = sext i32 %12 to i64
  %arrayidx21 = getelementptr inbounds [62 x i8], ptr %theIndex, i64 0, i64 %idxprom20
  %13 = load i8, ptr %arrayidx21, align 1
  %conv22 = sext i8 %13 to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %11, i32 noundef %conv22)
  br label %for.inc23

for.inc23:                                        ; preds = %for.body19
  %14 = load i32, ptr %i15, align 4
  %inc24 = add nsw i32 %14, 1
  store i32 %inc24, ptr %i15, align 4
  br label %for.cond16, !llvm.loop !7

for.end25:                                        ; preds = %for.cond16
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %original = alloca [5 x i8], align 1
  %new = alloca [5 x i8], align 1
  store i32 0, ptr %retval, align 4
  %arraydecay = getelementptr inbounds [5 x i8], ptr %original, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [5 x i8], ptr %new, i64 0, i64 0
  %call = call i32 @expand(ptr noundef %arraydecay, ptr noundef %arraydecay1)
  ret i32 0
}

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
