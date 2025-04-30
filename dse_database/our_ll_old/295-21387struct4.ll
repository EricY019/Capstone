; ModuleID = './code/295-21387struct4.c'
source_filename = "./code/295-21387struct4.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.s = type { i32, i32 }

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [10 x i32], align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %b = alloca %struct.s, align 4
  %i14 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr %a, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i1, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc11, %for.end
  %3 = load i32, ptr %i1, align 4
  %cmp3 = icmp slt i32 %3, 10
  br i1 %cmp3, label %for.body4, label %for.end13

for.body4:                                        ; preds = %for.cond2
  %a5 = getelementptr inbounds %struct.s, ptr %b, i32 0, i32 0
  store i32 1, ptr %a5, align 4
  %4 = load i32, ptr %i1, align 4
  %b6 = getelementptr inbounds %struct.s, ptr %b, i32 0, i32 1
  store i32 %4, ptr %b6, align 4
  %a7 = getelementptr inbounds %struct.s, ptr %b, i32 0, i32 0
  %5 = load i32, ptr %a7, align 4
  %b8 = getelementptr inbounds %struct.s, ptr %b, i32 0, i32 1
  %6 = load i32, ptr %b8, align 4
  %add = add nsw i32 %5, %6
  %7 = load i32, ptr %i1, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [10 x i32], ptr %a, i64 0, i64 %idxprom9
  store i32 %add, ptr %arrayidx10, align 4
  br label %for.inc11

for.inc11:                                        ; preds = %for.body4
  %8 = load i32, ptr %i1, align 4
  %inc12 = add nsw i32 %8, 1
  store i32 %inc12, ptr %i1, align 4
  br label %for.cond2, !llvm.loop !7

for.end13:                                        ; preds = %for.cond2
  store i32 0, ptr %i14, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc22, %for.end13
  %9 = load i32, ptr %i14, align 4
  %cmp16 = icmp slt i32 %9, 10
  br i1 %cmp16, label %for.body17, label %for.end24

for.body17:                                       ; preds = %for.cond15
  %10 = load i32, ptr %i14, align 4
  %idxprom18 = sext i32 %10 to i64
  %arrayidx19 = getelementptr inbounds [10 x i32], ptr %a, i64 0, i64 %idxprom18
  %11 = load i32, ptr %arrayidx19, align 4
  %12 = load i32, ptr %i14, align 4
  %add20 = add nsw i32 1, %12
  %cmp21 = icmp ne i32 %11, %add20
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %for.body17
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body17
  br label %for.inc22

for.inc22:                                        ; preds = %if.end
  %13 = load i32, ptr %i14, align 4
  %inc23 = add nsw i32 %13, 1
  store i32 %inc23, ptr %i14, align 4
  br label %for.cond15, !llvm.loop !8

for.end24:                                        ; preds = %for.cond15
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end24, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
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
