; ModuleID = './code/343-33554PE002.c'
source_filename = "./code/343-33554PE002.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %limit = alloca i64, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %sum = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i64 4000000, ptr %limit, align 8
  store i64 1, ptr %x, align 8
  store i64 1, ptr %y, align 8
  store i64 0, ptr %sum, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %sum, align 8
  %1 = load i64, ptr %limit, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, ptr %x, align 8
  %3 = load i64, ptr %y, align 8
  %add = add nsw i64 %2, %3
  %4 = load i64, ptr %sum, align 8
  %add1 = add nsw i64 %4, %add
  store i64 %add1, ptr %sum, align 8
  %5 = load i64, ptr %x, align 8
  %6 = load i64, ptr %y, align 8
  %mul = mul nsw i64 2, %6
  %add2 = add nsw i64 %5, %mul
  store i64 %add2, ptr %x, align 8
  %7 = load i64, ptr %x, align 8
  %mul3 = mul nsw i64 2, %7
  %8 = load i64, ptr %y, align 8
  %sub = sub nsw i64 %mul3, %8
  store i64 %sub, ptr %y, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %9 = load i64, ptr %sum, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %9)
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
