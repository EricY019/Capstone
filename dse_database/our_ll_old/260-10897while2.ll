; ModuleID = './code/260-10897while2.c'
source_filename = "./code/260-10897while2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %counter = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %counter, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %counter, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %counter, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %counter, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %while.end
  %2 = load i32, ptr %counter, align 4
  %cmp2 = icmp slt i32 %2, 10
  br i1 %cmp2, label %while.body3, label %while.end5

while.body3:                                      ; preds = %while.cond1
  %3 = load i32, ptr %counter, align 4
  %inc4 = add nsw i32 %3, 1
  store i32 %inc4, ptr %counter, align 4
  br label %while.cond1, !llvm.loop !7

while.end5:                                       ; preds = %while.cond1
  br label %while.cond6

while.cond6:                                      ; preds = %while.body8, %while.end5
  %4 = load i32, ptr %counter, align 4
  %cmp7 = icmp slt i32 %4, 15
  br i1 %cmp7, label %while.body8, label %while.end10

while.body8:                                      ; preds = %while.cond6
  %5 = load i32, ptr %counter, align 4
  %inc9 = add nsw i32 %5, 1
  store i32 %inc9, ptr %counter, align 4
  br label %while.cond6, !llvm.loop !8

while.end10:                                      ; preds = %while.cond6
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
!8 = distinct !{!8, !6}
