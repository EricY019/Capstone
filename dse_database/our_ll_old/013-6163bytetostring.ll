; ModuleID = './code/013-6163bytetostring.c'
source_filename = "./code/013-6163bytetostring.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %str = alloca ptr, align 8
  %buf = alloca [20 x i8], align 1
  store ptr @.str, ptr %str, align 8
  %0 = load ptr, ptr %str, align 8
  %arraydecay = getelementptr inbounds [20 x i8], ptr %buf, i64 0, i64 0
  call void @byteToString(ptr noundef %0, i32 noundef 8, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [20 x i8], ptr %buf, i64 0, i64 0
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay1)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @byteToString(ptr noundef %buffer, i32 noundef %len, ptr noundef %string) #0 {
entry:
  %buffer.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %string.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %buffer, ptr %buffer.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store ptr %string, ptr %string.addr, align 8
  store i32 0, ptr %i, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %buffer.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %shr = ashr i32 %conv, 4
  store i32 %shr, ptr %tmp, align 4
  %5 = load i32, ptr %tmp, align 4
  %cmp1 = icmp sge i32 %5, 0
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %6 = load i32, ptr %tmp, align 4
  %cmp3 = icmp sle i32 %6, 9
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32, ptr %tmp, align 4
  %add = add nsw i32 %7, 48
  %conv5 = trunc i32 %add to i8
  %8 = load ptr, ptr %string.addr, align 8
  %9 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %9, 2
  %idxprom6 = sext i32 %mul to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %8, i64 %idxprom6
  store i8 %conv5, ptr %arrayidx7, align 1
  br label %if.end23

if.else:                                          ; preds = %land.lhs.true, %for.body
  %10 = load i32, ptr %tmp, align 4
  %cmp8 = icmp sge i32 %10, 10
  br i1 %cmp8, label %land.lhs.true10, label %if.else19

land.lhs.true10:                                  ; preds = %if.else
  %11 = load i32, ptr %tmp, align 4
  %cmp11 = icmp sle i32 %11, 15
  br i1 %cmp11, label %if.then13, label %if.else19

if.then13:                                        ; preds = %land.lhs.true10
  %12 = load i32, ptr %tmp, align 4
  %sub = sub nsw i32 %12, 10
  %add14 = add nsw i32 %sub, 65
  %conv15 = trunc i32 %add14 to i8
  %13 = load ptr, ptr %string.addr, align 8
  %14 = load i32, ptr %i, align 4
  %mul16 = mul nsw i32 %14, 2
  %idxprom17 = sext i32 %mul16 to i64
  %arrayidx18 = getelementptr inbounds i8, ptr %13, i64 %idxprom17
  store i8 %conv15, ptr %arrayidx18, align 1
  br label %if.end

if.else19:                                        ; preds = %land.lhs.true10, %if.else
  %15 = load ptr, ptr %string.addr, align 8
  %16 = load i32, ptr %i, align 4
  %mul20 = mul nsw i32 %16, 2
  %idxprom21 = sext i32 %mul20 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %15, i64 %idxprom21
  store i8 70, ptr %arrayidx22, align 1
  br label %if.end

if.end:                                           ; preds = %if.else19, %if.then13
  br label %if.end23

if.end23:                                         ; preds = %if.end, %if.then
  %17 = load ptr, ptr %buffer.addr, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %18 to i64
  %arrayidx25 = getelementptr inbounds i8, ptr %17, i64 %idxprom24
  %19 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %19 to i32
  %and = and i32 %conv26, 15
  store i32 %and, ptr %tmp, align 4
  %20 = load i32, ptr %tmp, align 4
  %cmp27 = icmp sge i32 %20, 0
  br i1 %cmp27, label %land.lhs.true29, label %if.else39

land.lhs.true29:                                  ; preds = %if.end23
  %21 = load i32, ptr %tmp, align 4
  %cmp30 = icmp sle i32 %21, 9
  br i1 %cmp30, label %if.then32, label %if.else39

if.then32:                                        ; preds = %land.lhs.true29
  %22 = load i32, ptr %tmp, align 4
  %add33 = add nsw i32 %22, 48
  %conv34 = trunc i32 %add33 to i8
  %23 = load ptr, ptr %string.addr, align 8
  %24 = load i32, ptr %i, align 4
  %mul35 = mul nsw i32 %24, 2
  %add36 = add nsw i32 %mul35, 1
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds i8, ptr %23, i64 %idxprom37
  store i8 %conv34, ptr %arrayidx38, align 1
  br label %if.end59

if.else39:                                        ; preds = %land.lhs.true29, %if.end23
  %25 = load i32, ptr %tmp, align 4
  %cmp40 = icmp sge i32 %25, 10
  br i1 %cmp40, label %land.lhs.true42, label %if.else53

land.lhs.true42:                                  ; preds = %if.else39
  %26 = load i32, ptr %tmp, align 4
  %cmp43 = icmp sle i32 %26, 15
  br i1 %cmp43, label %if.then45, label %if.else53

if.then45:                                        ; preds = %land.lhs.true42
  %27 = load i32, ptr %tmp, align 4
  %sub46 = sub nsw i32 %27, 10
  %add47 = add nsw i32 %sub46, 65
  %conv48 = trunc i32 %add47 to i8
  %28 = load ptr, ptr %string.addr, align 8
  %29 = load i32, ptr %i, align 4
  %mul49 = mul nsw i32 %29, 2
  %add50 = add nsw i32 %mul49, 1
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds i8, ptr %28, i64 %idxprom51
  store i8 %conv48, ptr %arrayidx52, align 1
  br label %if.end58

if.else53:                                        ; preds = %land.lhs.true42, %if.else39
  %30 = load ptr, ptr %string.addr, align 8
  %31 = load i32, ptr %i, align 4
  %mul54 = mul nsw i32 %31, 2
  %add55 = add nsw i32 %mul54, 1
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds i8, ptr %30, i64 %idxprom56
  store i8 70, ptr %arrayidx57, align 1
  br label %if.end58

if.end58:                                         ; preds = %if.else53, %if.then45
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then32
  br label %for.inc

for.inc:                                          ; preds = %if.end59
  %32 = load i32, ptr %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %33 = load ptr, ptr %string.addr, align 8
  %34 = load i32, ptr %i, align 4
  %mul60 = mul nsw i32 %34, 2
  %idxprom61 = sext i32 %mul60 to i64
  %arrayidx62 = getelementptr inbounds i8, ptr %33, i64 %idxprom61
  store i8 0, ptr %arrayidx62, align 1
  ret void
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
