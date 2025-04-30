; ModuleID = './code/221-27221modular_exponential.c'
source_filename = "./code/221-27221modular_exponential.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @modularExponential(i64 noundef %base, i64 noundef %power, i64 noundef %mod) #0 {
entry:
  %base.addr = alloca i64, align 8
  %power.addr = alloca i64, align 8
  %mod.addr = alloca i64, align 8
  %answer = alloca i64, align 8
  store i64 %base, ptr %base.addr, align 8
  store i64 %power, ptr %power.addr, align 8
  store i64 %mod, ptr %mod.addr, align 8
  store i64 1, ptr %answer, align 8
  %0 = load i64, ptr %base.addr, align 8
  %1 = load i64, ptr %mod.addr, align 8
  %rem = srem i64 %0, %1
  store i64 %rem, ptr %base.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i64, ptr %power.addr, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, ptr %power.addr, align 8
  %and = and i64 %3, 1
  %tobool1 = icmp ne i64 %and, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load i64, ptr %answer, align 8
  %5 = load i64, ptr %base.addr, align 8
  %mul = mul nsw i64 %4, %5
  %6 = load i64, ptr %mod.addr, align 8
  %rem2 = srem i64 %mul, %6
  store i64 %rem2, ptr %answer, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %7 = load i64, ptr %power.addr, align 8
  %shr = ashr i64 %7, 1
  store i64 %shr, ptr %power.addr, align 8
  %8 = load i64, ptr %base.addr, align 8
  %9 = load i64, ptr %base.addr, align 8
  %mul3 = mul nsw i64 %8, %9
  %10 = load i64, ptr %mod.addr, align 8
  %rem4 = srem i64 %mul3, %10
  store i64 %rem4, ptr %base.addr, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %11 = load i64, ptr %answer, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %base = alloca i64, align 8
  %power = alloca i64, align 8
  %mod = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i64 2, ptr %base, align 8
  store i64 10, ptr %power, align 8
  store i64 100000, ptr %mod, align 8
  %0 = load i64, ptr %base, align 8
  %1 = load i64, ptr %power, align 8
  %2 = load i64, ptr %mod, align 8
  %call = call i64 @modularExponential(i64 noundef %0, i64 noundef %1, i64 noundef %2)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %call)
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
