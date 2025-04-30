; ModuleID = './code/229-21322euler4.c'
source_filename = "./code/229-21322euler4.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@largestPalindrome = global i32 0, align 4
@testNumber = global i32 0, align 4
@strEnd = global i32 5, align 4
@strStart = global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"this is maybe the largest? %d\00", align 1
@str = global [1333 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"palindrome: %d\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 99, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 999
  br i1 %cmp, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  store i32 99, ptr %a, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %a, align 4
  %cmp2 = icmp slt i32 %1, 999
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %a, align 4
  %3 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %2, %3
  store i32 %mul, ptr @testNumber, align 4
  %4 = load i32, ptr @testNumber, align 4
  call void @checkForPalindrome(i32 noundef %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %5 = load i32, ptr %a, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %a, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  br label %for.inc4

for.inc4:                                         ; preds = %for.end
  %6 = load i32, ptr %i, align 4
  %inc5 = add nsw i32 %6, 1
  store i32 %inc5, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end6:                                         ; preds = %for.cond
  %7 = load i32, ptr @largestPalindrome, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %7)
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @checkForPalindrome(i32 noundef %number) #0 {
entry:
  %number.addr = alloca i32, align 4
  store i32 %number, ptr %number.addr, align 4
  %0 = load i32, ptr %number.addr, align 4
  %call = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef @str, i32 noundef 0, i64 noundef 1333, ptr noundef @.str.1, i32 noundef %0)
  %1 = load i32, ptr @strStart, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1333 x i8], ptr @str, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %3 = load i32, ptr @strEnd, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [1333 x i8], ptr @str, i64 0, i64 %idxprom1
  %4 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, %conv3
  br i1 %cmp, label %if.then, label %if.end31

if.then:                                          ; preds = %entry
  %5 = load i32, ptr @strStart, align 4
  %add = add nsw i32 %5, 1
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds [1333 x i8], ptr @str, i64 0, i64 %idxprom5
  %6 = load i8, ptr %arrayidx6, align 1
  %conv7 = sext i8 %6 to i32
  %7 = load i32, ptr @strEnd, align 4
  %sub = sub nsw i32 %7, 1
  %idxprom8 = sext i32 %sub to i64
  %arrayidx9 = getelementptr inbounds [1333 x i8], ptr @str, i64 0, i64 %idxprom8
  %8 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %8 to i32
  %cmp11 = icmp eq i32 %conv7, %conv10
  br i1 %cmp11, label %if.then13, label %if.end30

if.then13:                                        ; preds = %if.then
  %9 = load i32, ptr @strStart, align 4
  %add14 = add nsw i32 %9, 2
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds [1333 x i8], ptr @str, i64 0, i64 %idxprom15
  %10 = load i8, ptr %arrayidx16, align 1
  %conv17 = sext i8 %10 to i32
  %11 = load i32, ptr @strEnd, align 4
  %sub18 = sub nsw i32 %11, 2
  %idxprom19 = sext i32 %sub18 to i64
  %arrayidx20 = getelementptr inbounds [1333 x i8], ptr @str, i64 0, i64 %idxprom19
  %12 = load i8, ptr %arrayidx20, align 1
  %conv21 = sext i8 %12 to i32
  %cmp22 = icmp eq i32 %conv17, %conv21
  br i1 %cmp22, label %if.then24, label %if.end29

if.then24:                                        ; preds = %if.then13
  %13 = load i32, ptr %number.addr, align 4
  %call25 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %13)
  %14 = load i32, ptr %number.addr, align 4
  %15 = load i32, ptr @largestPalindrome, align 4
  %cmp26 = icmp sgt i32 %14, %15
  br i1 %cmp26, label %if.then28, label %if.end

if.then28:                                        ; preds = %if.then24
  %16 = load i32, ptr %number.addr, align 4
  store i32 %16, ptr @largestPalindrome, align 4
  br label %if.end

if.end:                                           ; preds = %if.then28, %if.then24
  br label %if.end29

if.end29:                                         ; preds = %if.end, %if.then13
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %entry
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #1

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
