; ModuleID = './code/182-1593430.c'
source_filename = "./code/182-1593430.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %nn = alloca i32, align 4
  %s = alloca i32, align 4
  %ss = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %ss, align 4
  store i32 10, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %0, 354294
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %s, align 4
  %1 = load i32, ptr %n, align 4
  store i32 %1, ptr %nn, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %2 = load i32, ptr %nn, align 4
  %cmp1 = icmp ne i32 %2, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %nn, align 4
  %rem = srem i32 %3, 10
  %4 = load i32, ptr %nn, align 4
  %rem2 = srem i32 %4, 10
  %mul = mul nsw i32 %rem, %rem2
  %5 = load i32, ptr %nn, align 4
  %rem3 = srem i32 %5, 10
  %mul4 = mul nsw i32 %mul, %rem3
  %6 = load i32, ptr %nn, align 4
  %rem5 = srem i32 %6, 10
  %mul6 = mul nsw i32 %mul4, %rem5
  %7 = load i32, ptr %nn, align 4
  %rem7 = srem i32 %7, 10
  %mul8 = mul nsw i32 %mul6, %rem7
  %8 = load i32, ptr %s, align 4
  %add = add nsw i32 %8, %mul8
  store i32 %add, ptr %s, align 4
  %9 = load i32, ptr %nn, align 4
  %div = sdiv i32 %9, 10
  store i32 %div, ptr %nn, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %10 = load i32, ptr %n, align 4
  %11 = load i32, ptr %s, align 4
  %cmp9 = icmp eq i32 %10, %11
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %12 = load i32, ptr %n, align 4
  %13 = load i32, ptr %ss, align 4
  %add10 = add nsw i32 %13, %12
  store i32 %add10, ptr %ss, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %n, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %15 = load i32, ptr %ss, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %15)
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
