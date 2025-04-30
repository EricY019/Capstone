; ModuleID = './code/235-30129002.c'
source_filename = "./code/235-30129002.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [16 x i8] c"The sum is %i.\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %sum = alloca i32, align 4
  %fib_curr = alloca i32, align 4
  %fib_prev = alloca i32, align 4
  %fib_temp = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %sum, align 4
  store i32 2, ptr %fib_curr, align 4
  store i32 1, ptr %fib_prev, align 4
  store i32 0, ptr %fib_temp, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, ptr %fib_curr, align 4
  %rem = srem i32 %0, 2
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %1 = load i32, ptr %fib_curr, align 4
  %2 = load i32, ptr %sum, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, ptr %sum, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %3 = load i32, ptr %fib_curr, align 4
  store i32 %3, ptr %fib_temp, align 4
  %4 = load i32, ptr %fib_curr, align 4
  %5 = load i32, ptr %fib_prev, align 4
  %add1 = add nsw i32 %4, %5
  store i32 %add1, ptr %fib_curr, align 4
  %6 = load i32, ptr %fib_temp, align 4
  store i32 %6, ptr %fib_prev, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %7 = load i32, ptr %fib_curr, align 4
  %cmp2 = icmp sle i32 %7, 4000000
  br i1 %cmp2, label %do.body, label %do.end, !llvm.loop !5

do.end:                                           ; preds = %do.cond
  %8 = load i32, ptr %sum, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %8)
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
