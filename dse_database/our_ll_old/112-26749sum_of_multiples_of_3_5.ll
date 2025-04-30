; ModuleID = './code/112-26749sum_of_multiples_of_3_5.c'
source_filename = "./code/112-26749sum_of_multiples_of_3_5.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [8 x i8] c"Sum: %d\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @sum_multiple_of(i32 noundef %num, i32 noundef %limit) #0 {
entry:
  %num.addr = alloca i32, align 4
  %limit.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %num, ptr %num.addr, align 4
  store i32 %limit, ptr %limit.addr, align 4
  %0 = load i32, ptr %num.addr, align 4
  store i32 %0, ptr %sum, align 4
  %1 = load i32, ptr %num.addr, align 4
  %mul = mul nsw i32 %1, 2
  store i32 %mul, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %limit.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %sum, align 4
  %add = add nsw i32 %5, %4
  store i32 %add, ptr %sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %num.addr, align 4
  %7 = load i32, ptr %i, align 4
  %add1 = add nsw i32 %7, %6
  store i32 %add1, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %sum, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %limit = alloca i32, align 4
  %operand_first = alloca i32, align 4
  %operand_second = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 1000, ptr %limit, align 4
  store i32 3, ptr %operand_first, align 4
  store i32 5, ptr %operand_second, align 4
  %0 = load i32, ptr %operand_first, align 4
  %1 = load i32, ptr %limit, align 4
  %call = call i32 @sum_multiple_of(i32 noundef %0, i32 noundef %1)
  %2 = load i32, ptr %operand_second, align 4
  %3 = load i32, ptr %limit, align 4
  %call1 = call i32 @sum_multiple_of(i32 noundef %2, i32 noundef %3)
  %add = add nsw i32 %call, %call1
  %4 = load i32, ptr %operand_first, align 4
  %5 = load i32, ptr %operand_second, align 4
  %mul = mul nsw i32 %4, %5
  %6 = load i32, ptr %limit, align 4
  %call2 = call i32 @sum_multiple_of(i32 noundef %mul, i32 noundef %6)
  %sub = sub nsw i32 %add, %call2
  store i32 %sub, ptr %sum, align 4
  %7 = load i32, ptr %sum, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %7)
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
