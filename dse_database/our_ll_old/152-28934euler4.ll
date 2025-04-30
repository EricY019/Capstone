; ModuleID = './code/152-28934euler4.c'
source_filename = "./code/152-28934euler4.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [77 x i8] c"Calculating the largest palindrome of the product of two 3-digit numbers...\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"[+] Largest palindrome: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %i = alloca i32, align 4
  %bigpal = alloca i32, align 4
  %reverse = alloca i32, align 4
  %palcount = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %reverse, align 4
  store i32 0, ptr %palcount, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 100, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %0 = load i32, ptr %x, align 4
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  store i32 100, ptr %y, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %y, align 4
  %cmp2 = icmp slt i32 %1, 1000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %x, align 4
  %3 = load i32, ptr %y, align 4
  %mul = mul nsw i32 %2, %3
  store i32 %mul, ptr %z, align 4
  %4 = load i32, ptr %z, align 4
  store i32 %4, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body3
  %5 = load i32, ptr %i, align 4
  %cmp4 = icmp ne i32 %5, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %reverse, align 4
  %mul5 = mul nsw i32 %6, 10
  store i32 %mul5, ptr %reverse, align 4
  %7 = load i32, ptr %reverse, align 4
  %8 = load i32, ptr %i, align 4
  %rem = srem i32 %8, 10
  %add = add nsw i32 %7, %rem
  store i32 %add, ptr %reverse, align 4
  %9 = load i32, ptr %i, align 4
  %div = sdiv i32 %9, 10
  store i32 %div, ptr %i, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %10 = load i32, ptr %reverse, align 4
  %11 = load i32, ptr %z, align 4
  %cmp6 = icmp eq i32 %10, %11
  br i1 %cmp6, label %if.then, label %if.end9

if.then:                                          ; preds = %while.end
  %12 = load i32, ptr %z, align 4
  %13 = load i32, ptr %bigpal, align 4
  %cmp7 = icmp sgt i32 %12, %13
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  %14 = load i32, ptr %z, align 4
  store i32 %14, ptr %bigpal, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then
  %15 = load i32, ptr %palcount, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %palcount, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %while.end
  store i32 0, ptr %reverse, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %16 = load i32, ptr %y, align 4
  %inc10 = add nsw i32 %16, 1
  store i32 %inc10, ptr %y, align 4
  br label %for.cond1, !llvm.loop !7

for.end:                                          ; preds = %for.cond1
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %17 = load i32, ptr %x, align 4
  %inc12 = add nsw i32 %17, 1
  store i32 %inc12, ptr %x, align 4
  br label %for.cond, !llvm.loop !8

for.end13:                                        ; preds = %for.cond
  %18 = load i32, ptr %bigpal, align 4
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %18)
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
