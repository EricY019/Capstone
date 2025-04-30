; ModuleID = './code/184-26083pe4.c'
source_filename = "./code/184-26083pe4.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@palindrome = internal global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"The numbers are %d and %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @isPalindrome(i32 noundef %number) #0 {
entry:
  %retval = alloca i32, align 4
  %number.addr = alloca i32, align 4
  %temp = alloca i32, align 4
  %rem = alloca i32, align 4
  %reverse = alloca i32, align 4
  store i32 %number, ptr %number.addr, align 4
  %0 = load i32, ptr %number.addr, align 4
  store i32 %0, ptr %temp, align 4
  store i32 0, ptr %reverse, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, ptr %temp, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %temp, align 4
  %rem1 = srem i32 %2, 10
  store i32 %rem1, ptr %rem, align 4
  %3 = load i32, ptr %reverse, align 4
  %mul = mul nsw i32 %3, 10
  %4 = load i32, ptr %rem, align 4
  %add = add nsw i32 %mul, %4
  store i32 %add, ptr %reverse, align 4
  %5 = load i32, ptr %temp, align 4
  %div = sdiv i32 %5, 10
  store i32 %div, ptr %temp, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %6 = load i32, ptr %reverse, align 4
  %7 = load i32, ptr %number.addr, align 4
  %cmp2 = icmp eq i32 %6, %7
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %while.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %current = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 100, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 100, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 1000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %j, align 4
  %mul = mul nsw i32 %2, %3
  store i32 %mul, ptr %current, align 4
  %4 = load i32, ptr %current, align 4
  %call = call i32 @isPalindrome(i32 noundef %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body3
  %5 = load i32, ptr @palindrome, align 4
  %6 = load i32, ptr %current, align 4
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32, ptr %current, align 4
  store i32 %7, ptr @palindrome, align 4
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %j, align 4
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %8, i32 noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !7

for.end:                                          ; preds = %for.cond1
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %11 = load i32, ptr %i, align 4
  %inc7 = add nsw i32 %11, 1
  store i32 %inc7, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end8:                                         ; preds = %for.cond
  %12 = load i32, ptr @palindrome, align 4
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %12)
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
