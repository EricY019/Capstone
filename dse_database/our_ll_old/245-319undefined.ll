; ModuleID = './code/245-319undefined.c'
source_filename = "./code/245-319undefined.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.int_1 = type { i32 }

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ints = alloca [10 x ptr], align 8
  %i = alloca i32, align 4
  %.compoundliteral = alloca %struct.int_1, align 4
  %sum = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %x = getelementptr inbounds %struct.int_1, ptr %.compoundliteral, i32 0, i32 0
  %1 = load i32, ptr %i, align 4
  store i32 %1, ptr %x, align 4
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %ints, i64 0, i64 %idxprom
  store ptr %.compoundliteral, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %sum, align 4
  store i32 0, ptr %i1, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc8, %for.end
  %4 = load i32, ptr %i1, align 4
  %cmp3 = icmp slt i32 %4, 10
  br i1 %cmp3, label %for.body4, label %for.end10

for.body4:                                        ; preds = %for.cond2
  %5 = load i32, ptr %i1, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [10 x ptr], ptr %ints, i64 0, i64 %idxprom5
  %6 = load ptr, ptr %arrayidx6, align 8
  %x7 = getelementptr inbounds %struct.int_1, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %x7, align 4
  %8 = load i32, ptr %sum, align 4
  %add = add nsw i32 %8, %7
  store i32 %add, ptr %sum, align 4
  br label %for.inc8

for.inc8:                                         ; preds = %for.body4
  %9 = load i32, ptr %i1, align 4
  %inc9 = add nsw i32 %9, 1
  store i32 %inc9, ptr %i1, align 4
  br label %for.cond2, !llvm.loop !7

for.end10:                                        ; preds = %for.cond2
  %10 = load i32, ptr %sum, align 4
  ret i32 %10
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
