; ModuleID = './code/351-17280svcomp_genady_true-alloca.c'
source_filename = "./code/351-17280svcomp_genady_true-alloca.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca ptr, align 8
  %j = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %0 = alloca i8, i64 4, align 8
  store ptr %0, ptr %i, align 8
  %1 = alloca i8, i64 4, align 8
  store ptr %1, ptr %j, align 8
  %2 = load ptr, ptr %j, align 8
  store i32 1, ptr %2, align 4
  %3 = load ptr, ptr %i, align 8
  store i32 10000, ptr %3, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %i, align 8
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr %j, align 8
  %7 = load i32, ptr %6, align 4
  %sub = sub nsw i32 %5, %7
  %cmp = icmp sge i32 %sub, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %j, align 8
  %9 = load i32, ptr %8, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load ptr, ptr %i, align 8
  %11 = load i32, ptr %10, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, ptr %10, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
