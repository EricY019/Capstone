; ModuleID = './code/360-13858pr95045.c'
source_filename = "./code/360-13858pr95045.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@f = global i32 0, align 4
@b = global i64 0, align 8
@d = global i8 0, align 1
@e = global [3 x i32] zeroinitializer, align 4
@c = global i32 0, align 4
@g = global [9 x [3 x [2 x i32]]] zeroinitializer, align 4
@a = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  br label %h

h:                                                ; preds = %if.then, %entry
  store i32 0, ptr @f, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %h
  %0 = load i32, ptr @f, align 4
  %cmp = icmp sle i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  store i64 3, ptr @b, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc22, %for.body
  %1 = load i64, ptr @b, align 8
  %cmp2 = icmp sge i64 %1, 0
  br i1 %cmp2, label %for.body3, label %for.end23

for.body3:                                        ; preds = %for.cond1
  store i8 0, ptr @d, align 1
  store i32 0, ptr getelementptr inbounds ([3 x i32], ptr @e, i64 0, i64 2), align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc19, %for.body3
  %2 = load i8, ptr @d, align 1
  %conv = sext i8 %2 to i32
  %cmp5 = icmp sle i32 %conv, 3
  br i1 %cmp5, label %for.body7, label %for.end21

for.body7:                                        ; preds = %for.cond4
  store i32 0, ptr @c, align 4
  store i32 0, ptr getelementptr inbounds ([3 x i32], ptr @e, i64 0, i64 1), align 4
  store i32 0, ptr getelementptr inbounds ([3 x [2 x i32]], ptr getelementptr inbounds ([9 x [3 x [2 x i32]]], ptr @g, i64 0, i64 8), i64 0, i64 2), align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body7
  %3 = load i32, ptr @c, align 4
  %cmp9 = icmp sle i32 %3, 1
  br i1 %cmp9, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond8
  %4 = load i8, ptr @d, align 1
  %conv12 = sext i8 %4 to i32
  %add = add nsw i32 %conv12, 5
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [9 x [3 x [2 x i32]]], ptr @g, i64 0, i64 %idxprom
  %arrayidx13 = getelementptr inbounds [3 x [2 x i32]], ptr %arrayidx, i64 0, i64 2
  %5 = load i32, ptr @c, align 4
  %idxprom14 = sext i32 %5 to i64
  %arrayidx15 = getelementptr inbounds [2 x i32], ptr %arrayidx13, i64 0, i64 %idxprom14
  store i32 4, ptr %arrayidx15, align 4
  %6 = load i32, ptr @c, align 4
  %add16 = add nsw i32 %6, 1
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds [3 x i32], ptr @e, i64 0, i64 %idxprom17
  store i32 4, ptr %arrayidx18, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body11
  %7 = load i32, ptr @c, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr @c, align 4
  br label %for.cond8, !llvm.loop !5

for.end:                                          ; preds = %for.cond8
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %8 = load i8, ptr @d, align 1
  %inc20 = add i8 %8, 1
  store i8 %inc20, ptr @d, align 1
  br label %for.cond4, !llvm.loop !7

for.end21:                                        ; preds = %for.cond4
  %9 = load i32, ptr @a, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end21
  br label %h

if.end:                                           ; preds = %for.end21
  br label %for.inc22

for.inc22:                                        ; preds = %if.end
  %10 = load i64, ptr @b, align 8
  %dec = add nsw i64 %10, -1
  store i64 %dec, ptr @b, align 8
  br label %for.cond1, !llvm.loop !8

for.end23:                                        ; preds = %for.cond1
  br label %for.inc24

for.inc24:                                        ; preds = %for.end23
  %11 = load i32, ptr @f, align 4
  %inc25 = add nsw i32 %11, 1
  store i32 %inc25, ptr @f, align 4
  br label %for.cond, !llvm.loop !9

for.end26:                                        ; preds = %for.cond
  %12 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @e, i64 0, i64 2), align 4
  %cmp27 = icmp ne i32 %12, 4
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.end26
  call void @abort() #2
  unreachable

if.end30:                                         ; preds = %for.end26
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { noreturn nounwind }

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
!9 = distinct !{!9, !6}
