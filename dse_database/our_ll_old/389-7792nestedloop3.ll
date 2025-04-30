; ModuleID = './code/389-7792nestedloop3.c'
source_filename = "./code/389-7792nestedloop3.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 123, ptr %i, align 4
  store i32 5, ptr %j, align 4
  store i32 1, ptr %k, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end7, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %while.body, label %while.end8

while.body:                                       ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.end, %while.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 2
  br i1 %cmp2, label %while.body3, label %while.end7

while.body3:                                      ; preds = %while.cond1
  br label %while.cond4

while.cond4:                                      ; preds = %while.body6, %while.body3
  %2 = load i32, ptr %k, align 4
  %cmp5 = icmp slt i32 %2, 4
  br i1 %cmp5, label %while.body6, label %while.end

while.body6:                                      ; preds = %while.cond4
  br label %while.cond4, !llvm.loop !5

while.end:                                        ; preds = %while.cond4
  br label %while.cond1, !llvm.loop !7

while.end7:                                       ; preds = %while.cond1
  br label %while.cond, !llvm.loop !8

while.end8:                                       ; preds = %while.cond
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
