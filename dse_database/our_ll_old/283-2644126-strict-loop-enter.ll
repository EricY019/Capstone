; ModuleID = './code/283-2644126-strict-loop-enter.c'
source_filename = "./code/283-2644126-strict-loop-enter.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@g = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %x, align 4
  %cmp = icmp slt i32 %0, 50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 1, ptr @g, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, ptr %x, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %x, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %2 = load i32, ptr %x, align 4
  %cmp1 = icmp sgt i32 %2, 50
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 0, ptr %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc5, %if.then
  %3 = load i32, ptr %i, align 4
  %cmp3 = icmp sle i32 %3, 0
  br i1 %cmp3, label %for.body4, label %for.end6

for.body4:                                        ; preds = %for.cond2
  store i32 57, ptr @g, align 4
  br label %for.inc5

for.inc5:                                         ; preds = %for.body4
  %4 = load i32, ptr %i, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond2, !llvm.loop !7

for.end6:                                         ; preds = %for.cond2
  br label %if.end

if.end:                                           ; preds = %for.end6, %for.end
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
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
