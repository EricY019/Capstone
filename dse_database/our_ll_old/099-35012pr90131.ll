; ModuleID = './code/099-35012pr90131.c'
source_filename = "./code/099-35012pr90131.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@b = global [9 x [1 x i32]] zeroinitializer, align 4
@a = global i64 0, align 8
@c = internal global [2 x [1 x i16]] [[1 x i16] [i16 3], [1 x i16] zeroinitializer], align 2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @optimize_me_not() #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #1, !srcloc !5
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [9 x [1 x i32]], ptr @b, i64 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [1 x i32], ptr %arrayidx, i64 0, i64 0
  %2 = load i32, ptr %arrayidx1, align 4
  %conv = sext i32 %2 to i64
  store volatile i64 %conv, ptr @a, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc25, %for.end
  %4 = load i32, ptr %i, align 4
  %cmp3 = icmp slt i32 %4, 2
  br i1 %cmp3, label %for.body5, label %for.end27

for.body5:                                        ; preds = %for.cond2
  store i32 0, ptr %d, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc22, %for.body5
  %5 = load i32, ptr %d, align 4
  %cmp7 = icmp slt i32 %5, 1
  br i1 %cmp7, label %for.body9, label %for.end24

for.body9:                                        ; preds = %for.cond6
  store i32 0, ptr %e, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc19, %for.body9
  %6 = load i32, ptr %e, align 4
  %cmp11 = icmp slt i32 %6, 1
  br i1 %cmp11, label %for.body13, label %for.end21

for.body13:                                       ; preds = %for.cond10
  %7 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %7 to i64
  %arrayidx15 = getelementptr inbounds [2 x [1 x i16]], ptr @c, i64 0, i64 %idxprom14
  %8 = load i32, ptr %e, align 4
  %idxprom16 = sext i32 %8 to i64
  %arrayidx17 = getelementptr inbounds [1 x i16], ptr %arrayidx15, i64 0, i64 %idxprom16
  %9 = load i16, ptr %arrayidx17, align 2
  %conv18 = sext i16 %9 to i64
  store volatile i64 %conv18, ptr @a, align 8
  br label %for.inc19

for.inc19:                                        ; preds = %for.body13
  %10 = load i32, ptr %e, align 4
  %inc20 = add nsw i32 %10, 1
  store i32 %inc20, ptr %e, align 4
  br label %for.cond10, !llvm.loop !8

for.end21:                                        ; preds = %for.cond10
  call void @optimize_me_not()
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %11 = load i32, ptr %d, align 4
  %inc23 = add nsw i32 %11, 1
  store i32 %inc23, ptr %d, align 4
  br label %for.cond6, !llvm.loop !9

for.end24:                                        ; preds = %for.cond6
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %12 = load i32, ptr %i, align 4
  %inc26 = add nsw i32 %12, 1
  store i32 %inc26, ptr %i, align 4
  br label %for.cond2, !llvm.loop !10

for.end27:                                        ; preds = %for.cond2
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = !{i64 121}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
