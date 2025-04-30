; ModuleID = './code/157-13872pr81573.c'
source_filename = "./code/157-13872pr81573.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@a = global i32 1, align 4
@c = global ptr @a, align 8
@b = global i8 0, align 1
@d = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, ptr @b, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sgt i32 %conv, -27
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8, ptr @b, align 1
  %conv2 = sext i8 %1 to i32
  %2 = load ptr, ptr @c, align 8
  %3 = load i32, ptr %2, align 4
  %xor = xor i32 %3, %conv2
  store i32 %xor, ptr %2, align 4
  %4 = load ptr, ptr @c, align 8
  %5 = load i32, ptr %4, align 4
  %xor3 = xor i32 %5, 1
  store i32 %xor3, ptr %4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i8, ptr @b, align 1
  %dec = add i8 %6, -1
  store i8 %dec, ptr @b, align 1
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %7 = load i32, ptr @a, align 4
  %cmp4 = icmp sgt i32 %7, 1
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  ret i32 0
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
!7 = distinct !{!7, !6}
