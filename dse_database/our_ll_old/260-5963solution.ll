; ModuleID = './code/260-5963solution.c'
source_filename = "./code/260-5963solution.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [15 x i8] c"Problem 2: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %sum = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 2, ptr %sum, align 4
  store i32 1, ptr %a, align 4
  store i32 2, ptr %b, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, ptr %b, align 4
  %1 = load i32, ptr %a, align 4
  %add = add nsw i32 %1, %0
  store i32 %add, ptr %a, align 4
  %2 = load i32, ptr %a, align 4
  %3 = load i32, ptr %b, align 4
  %add1 = add nsw i32 %3, %2
  store i32 %add1, ptr %b, align 4
  %4 = load i32, ptr %b, align 4
  %5 = load i32, ptr %a, align 4
  %add2 = add nsw i32 %5, %4
  store i32 %add2, ptr %a, align 4
  %6 = load i32, ptr %sum, align 4
  %add3 = add nsw i32 %6, %add2
  store i32 %add3, ptr %sum, align 4
  %7 = load i32, ptr %a, align 4
  %8 = load i32, ptr %b, align 4
  %xor = xor i32 %7, %8
  store i32 %xor, ptr %a, align 4
  %9 = load i32, ptr %b, align 4
  %10 = load i32, ptr %a, align 4
  %xor4 = xor i32 %9, %10
  store i32 %xor4, ptr %b, align 4
  %11 = load i32, ptr %a, align 4
  %12 = load i32, ptr %b, align 4
  %xor5 = xor i32 %11, %12
  store i32 %xor5, ptr %a, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %13 = load i32, ptr %a, align 4
  %14 = load i32, ptr %b, align 4
  %add6 = add nsw i32 %13, %14
  %cmp = icmp slt i32 %add6, 4000000
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !5

do.end:                                           ; preds = %do.cond
  %15 = load i32, ptr %sum, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %15)
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
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
