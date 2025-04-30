; ModuleID = './code/107-9192pe12.c'
source_filename = "./code/107-9192pe12.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [25 x i8] c"limit = %llu | i = %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@euler = internal global i64 0, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @numberdivisors(i64 noundef %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %limit = alloca i64, align 8
  %numberOfDivisors = alloca i32, align 4
  %i = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  %0 = load i64, ptr %x.addr, align 8
  store i64 %0, ptr %limit, align 8
  store i32 0, ptr %numberOfDivisors, align 4
  store i64 1, ptr %i, align 8
  store i64 1, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8
  %2 = load i64, ptr %limit, align 8
  %cmp = icmp ult i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %x.addr, align 8
  %4 = load i64, ptr %i, align 8
  %rem = urem i64 %3, %4
  %cmp1 = icmp eq i64 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end5

if.then:                                          ; preds = %for.body
  %5 = load i64, ptr %x.addr, align 8
  %6 = load i64, ptr %i, align 8
  %div = udiv i64 %5, %6
  store i64 %div, ptr %limit, align 8
  %7 = load i64, ptr %limit, align 8
  %8 = load i64, ptr %i, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %7, i64 noundef %8)
  %9 = load i64, ptr %limit, align 8
  %10 = load i64, ptr %i, align 8
  %cmp2 = icmp ne i64 %9, %10
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %11 = load i32, ptr %numberOfDivisors, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %numberOfDivisors, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %12 = load i32, ptr %numberOfDivisors, align 4
  %inc4 = add nsw i32 %12, 1
  store i32 %inc4, ptr %numberOfDivisors, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end5
  %13 = load i64, ptr %i, align 8
  %inc6 = add i64 %13, 1
  store i64 %inc6, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %14 = load i32, ptr %numberOfDivisors, align 4
  ret i32 %14
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %triangle = alloca i64, align 8
  %divisors = alloca i32, align 4
  %i = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i64 0, ptr %triangle, align 8
  store i32 0, ptr %divisors, align 4
  store i64 1, ptr %i, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i64, ptr %i, align 8
  %1 = load i64, ptr %triangle, align 8
  %add = add i64 %1, %0
  store i64 %add, ptr %triangle, align 8
  %2 = load i64, ptr %triangle, align 8
  %call = call i32 @numberdivisors(i64 noundef %2)
  store i32 %call, ptr %divisors, align 4
  %3 = load i64, ptr %i, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %i, align 8
  %4 = load i64, ptr %i, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %4)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %5 = load i32, ptr %divisors, align 4
  %cmp = icmp sle i32 %5, 500
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !7

do.end:                                           ; preds = %do.cond
  %6 = load i64, ptr %triangle, align 8
  store i64 %6, ptr @euler, align 8
  %7 = load i64, ptr @euler, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %7)
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
