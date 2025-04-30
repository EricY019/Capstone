; ModuleID = './code/200-26625QuadraticPrimes.c'
source_filename = "./code/200-26625QuadraticPrimes.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [36 x i8] c"maxA:%d maxB:%d maxN:%d product:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @isPrime(i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %f = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4
  %rem = srem i32 %1, 2
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load i32, ptr %n.addr, align 4
  %cmp4 = icmp slt i32 %2, 2
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end3
  store i32 3, ptr %f, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %if.end6
  %3 = load i32, ptr %f, align 4
  %4 = load i32, ptr %f, align 4
  %mul = mul nsw i32 %3, %4
  %5 = load i32, ptr %n.addr, align 4
  %cmp7 = icmp sle i32 %mul, %5
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %n.addr, align 4
  %7 = load i32, ptr %f, align 4
  %rem8 = srem i32 %6, %7
  %cmp9 = icmp eq i32 %rem8, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %while.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %while.body
  %8 = load i32, ptr %f, align 4
  %add = add nsw i32 %8, 2
  store i32 %add, ptr %f, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then10, %if.then5, %if.then2, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %maxN = alloca i32, align 4
  %maxA = alloca i32, align 4
  %maxB = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %maxN, align 4
  store i32 0, ptr %maxA, align 4
  store i32 0, ptr %maxB, align 4
  store i32 -999, ptr %a, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i32, ptr %a, align 4
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 -999, ptr %b, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc9, %for.body
  %1 = load i32, ptr %b, align 4
  %cmp2 = icmp slt i32 %1, 1000
  br i1 %cmp2, label %for.body3, label %for.end11

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %n, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, ptr %n, align 4
  %3 = load i32, ptr %n, align 4
  %mul = mul nsw i32 %2, %3
  %4 = load i32, ptr %a, align 4
  %5 = load i32, ptr %n, align 4
  %mul5 = mul nsw i32 %4, %5
  %add = add nsw i32 %mul, %mul5
  %6 = load i32, ptr %b, align 4
  %add6 = add nsw i32 %add, %6
  %call = call i32 @isPrime(i32 noundef %add6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond4
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %7 = load i32, ptr %n, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond4, !llvm.loop !7

for.end:                                          ; preds = %for.cond4
  %8 = load i32, ptr %n, align 4
  %9 = load i32, ptr %maxN, align 4
  %cmp8 = icmp sgt i32 %8, %9
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %10 = load i32, ptr %n, align 4
  store i32 %10, ptr %maxN, align 4
  %11 = load i32, ptr %a, align 4
  store i32 %11, ptr %maxA, align 4
  %12 = load i32, ptr %b, align 4
  store i32 %12, ptr %maxB, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  br label %for.inc9

for.inc9:                                         ; preds = %if.end
  %13 = load i32, ptr %b, align 4
  %inc10 = add nsw i32 %13, 1
  store i32 %inc10, ptr %b, align 4
  br label %for.cond1, !llvm.loop !8

for.end11:                                        ; preds = %for.cond1
  br label %for.inc12

for.inc12:                                        ; preds = %for.end11
  %14 = load i32, ptr %a, align 4
  %inc13 = add nsw i32 %14, 1
  store i32 %inc13, ptr %a, align 4
  br label %for.cond, !llvm.loop !9

for.end14:                                        ; preds = %for.cond
  %15 = load i32, ptr %maxA, align 4
  %16 = load i32, ptr %maxB, align 4
  %17 = load i32, ptr %maxN, align 4
  %18 = load i32, ptr %maxA, align 4
  %19 = load i32, ptr %maxB, align 4
  %mul15 = mul nsw i32 %18, %19
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %mul15)
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
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
