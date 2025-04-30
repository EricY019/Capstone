; ModuleID = './code/378-3907palindrome.c'
source_filename = "./code/378-3907palindrome.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @isPalindrome(i32 noundef %num) #0 {
entry:
  %num.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %isPalindrome = alloca i32, align 4
  %i = alloca i32, align 4
  %out = alloca [512 x i8], align 1
  store i32 %num, ptr %num.addr, align 4
  store i32 0, ptr %len, align 4
  store i32 1, ptr %isPalindrome, align 4
  %arraydecay = getelementptr inbounds [512 x i8], ptr %out, i64 0, i64 0
  %0 = load i32, ptr %num.addr, align 4
  %call = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay, i32 noundef 0, i64 noundef 512, ptr noundef @.str, i32 noundef %0)
  %arraydecay1 = getelementptr inbounds [512 x i8], ptr %out, i64 0, i64 0
  %call2 = call i64 @strlen(ptr noundef %arraydecay1) #3
  %conv = trunc i64 %call2 to i32
  store i32 %conv, ptr %len, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %len, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [512 x i8], ptr %out, i64 0, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv4 = sext i8 %4 to i32
  %5 = load i32, ptr %len, align 4
  %6 = load i32, ptr %i, align 4
  %add = add nsw i32 %6, 1
  %sub = sub nsw i32 %5, %add
  %idxprom5 = sext i32 %sub to i64
  %arrayidx6 = getelementptr inbounds [512 x i8], ptr %out, i64 0, i64 %idxprom5
  %7 = load i8, ptr %arrayidx6, align 1
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp ne i32 %conv4, %conv7
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, ptr %isPalindrome, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %if.then, %for.cond
  %9 = load i32, ptr %isPalindrome, align 4
  ret i32 %9
}

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #1

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %num1 = alloca i32, align 4
  %num2 = alloca i32, align 4
  %largest = alloca i32, align 4
  %current = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 999, ptr %num1, align 4
  store i32 0, ptr %largest, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %num1, align 4
  %cmp = icmp sge i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %num1, align 4
  store i32 %1, ptr %num2, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %num2, align 4
  %cmp2 = icmp sge i32 %2, 100
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, ptr %num1, align 4
  %4 = load i32, ptr %num2, align 4
  %mul = mul nsw i32 %3, %4
  store i32 %mul, ptr %current, align 4
  %5 = load i32, ptr %current, align 4
  %call = call i32 @isPalindrome(i32 noundef %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end6

if.then:                                          ; preds = %for.body3
  %6 = load i32, ptr %current, align 4
  %7 = load i32, ptr %largest, align 4
  %cmp4 = icmp sgt i32 %6, %7
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %8 = load i32, ptr %current, align 4
  store i32 %8, ptr %largest, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %9 = load i32, ptr %num2, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %num2, align 4
  br label %for.cond1, !llvm.loop !7

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %10 = load i32, ptr %num1, align 4
  %dec8 = add nsw i32 %10, -1
  store i32 %dec8, ptr %num1, align 4
  br label %for.cond, !llvm.loop !8

for.end9:                                         ; preds = %for.cond
  %11 = load i32, ptr %largest, align 4
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %11)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind }

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
