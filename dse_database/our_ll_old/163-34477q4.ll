; ModuleID = './code/163-34477q4.c'
source_filename = "./code/163-34477q4.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [33 x i8] c"Largest 3 digit Palindrome is %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %call = call i32 @PalindromeThreeDigitProduct()
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %call)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @isPalindrome(ptr noundef %str) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %startindex = alloca i32, align 4
  %endindex = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  %0 = load ptr, ptr %str.addr, align 8
  %call = call i64 @strlen(ptr noundef %0) #3
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %len, align 4
  store i32 0, ptr %startindex, align 4
  %1 = load i32, ptr %len, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, ptr %endindex, align 4
  %2 = load ptr, ptr %str.addr, align 8
  %3 = load i32, ptr %startindex, align 4
  %4 = load i32, ptr %endindex, align 4
  %call1 = call i32 @isPalindromeHelper(ptr noundef %2, i32 noundef %3, i32 noundef %4)
  ret i32 %call1
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @isPalindromeHelper(ptr noundef %str, i32 noundef %startindex, i32 noundef %endindex) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  %startindex.addr = alloca i32, align 4
  %endindex.addr = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  store i32 %startindex, ptr %startindex.addr, align 4
  store i32 %endindex, ptr %endindex.addr, align 4
  %0 = load ptr, ptr %str.addr, align 8
  %1 = load i32, ptr %startindex.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %3 = load ptr, ptr %str.addr, align 8
  %4 = load i32, ptr %endindex.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %3, i64 %idxprom1
  %5 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %5 to i32
  %cmp = icmp ne i32 %conv, %conv3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %if.end9

if.else:                                          ; preds = %entry
  %6 = load i32, ptr %startindex.addr, align 4
  %7 = load i32, ptr %endindex.addr, align 4
  %cmp5 = icmp sge i32 %6, %7
  br i1 %cmp5, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  store i32 1, ptr %retval, align 4
  br label %if.end9

if.else8:                                         ; preds = %if.else
  %8 = load ptr, ptr %str.addr, align 8
  %9 = load i32, ptr %startindex.addr, align 4
  %add = add nsw i32 %9, 1
  %10 = load i32, ptr %endindex.addr, align 4
  %sub = sub nsw i32 %10, 1
  %call = call i32 @isPalindromeHelper(ptr noundef %8, i32 noundef %add, i32 noundef %sub)
  br label %if.end

if.end:                                           ; preds = %if.else8
  br label %if.end9

if.end9:                                          ; preds = %if.then, %if.then7, %if.end
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @PalindromeThreeDigitProduct() #0 {
entry:
  %startingPt = alloca i32, align 4
  %palindrome = alloca i64, align 8
  %tempstr = alloca [100 x i8], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 999, ptr %startingPt, align 4
  store i64 0, ptr %palindrome, align 8
  %0 = load i32, ptr %startingPt, align 4
  store i32 %0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp sge i32 %1, 100
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %startingPt, align 4
  store i32 %2, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %j, align 4
  %cmp2 = icmp sge i32 %3, 100
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arraydecay = getelementptr inbounds [100 x i8], ptr %tempstr, i64 0, i64 0
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %j, align 4
  %mul = mul nsw i32 %4, %5
  %call = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay, i32 noundef 0, i64 noundef 100, ptr noundef @.str.1, i32 noundef %mul)
  %arraydecay4 = getelementptr inbounds [100 x i8], ptr %tempstr, i64 0, i64 0
  %call5 = call i32 @isPalindrome(ptr noundef %arraydecay4)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end12

if.then:                                          ; preds = %for.body3
  %6 = load i64, ptr %palindrome, align 8
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %j, align 4
  %mul6 = mul nsw i32 %7, %8
  %conv = sext i32 %mul6 to i64
  %cmp7 = icmp slt i64 %6, %conv
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %j, align 4
  %mul10 = mul nsw i32 %9, %10
  %conv11 = sext i32 %mul10 to i64
  store i64 %conv11, ptr %palindrome, align 8
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  br label %if.end12

if.end12:                                         ; preds = %if.end, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %11 = load i32, ptr %j, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %12 = load i32, ptr %i, align 4
  %dec14 = add nsw i32 %12, -1
  store i32 %dec14, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end15:                                        ; preds = %for.cond
  %13 = load i64, ptr %palindrome, align 8
  %conv16 = trunc i64 %13 to i32
  ret i32 %conv16
}

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #1

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
