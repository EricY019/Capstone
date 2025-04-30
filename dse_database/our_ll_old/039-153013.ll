; ModuleID = './code/039-153013.c'
source_filename = "./code/039-153013.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [19 x i8] c"%d [in %f seconds]\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @largest_prime_factor(i64 noundef %number) #0 {
entry:
  %number.addr = alloca i64, align 8
  %largest_factor = alloca i32, align 4
  %i = alloca i32, align 4
  store i64 %number, ptr %number.addr, align 8
  store i32 0, ptr %largest_factor, align 4
  store i32 2, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load i64, ptr %number.addr, align 8
  %cmp = icmp sle i64 %conv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %number.addr, align 8
  %3 = load i32, ptr %i, align 4
  %conv2 = sext i32 %3 to i64
  %rem = srem i64 %2, %conv2
  %cmp3 = icmp eq i64 %rem, 0
  br i1 %cmp3, label %if.then, label %if.end9

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %largest_factor, align 4
  %cmp5 = icmp sgt i32 %4, %5
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %6 = load i32, ptr %i, align 4
  store i32 %6, ptr %largest_factor, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  %7 = load i32, ptr %i, align 4
  %conv8 = sext i32 %7 to i64
  %8 = load i64, ptr %number.addr, align 8
  %div = sdiv i64 %8, %conv8
  store i64 %div, ptr %number.addr, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %10 = load i32, ptr %largest_factor, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %NUMBER = alloca i64, align 8
  %begin = alloca i64, align 8
  %result = alloca i32, align 4
  %end = alloca i64, align 8
  %time = alloca double, align 8
  store i64 600851475143, ptr %NUMBER, align 8
  %call = call i64 @"\01_clock"()
  store i64 %call, ptr %begin, align 8
  %0 = load i64, ptr %NUMBER, align 8
  %call1 = call i32 @largest_prime_factor(i64 noundef %0)
  store i32 %call1, ptr %result, align 4
  %call2 = call i64 @"\01_clock"()
  store i64 %call2, ptr %end, align 8
  %1 = load i64, ptr %end, align 8
  %2 = load i64, ptr %begin, align 8
  %sub = sub i64 %1, %2
  %conv = uitofp i64 %sub to double
  %div = fdiv double %conv, 1.000000e+06
  store double %div, ptr %time, align 8
  %3 = load i32, ptr %result, align 4
  %4 = load double, ptr %time, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %3, double noundef %4)
  ret i32 0
}

declare i64 @"\01_clock"() #1

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
