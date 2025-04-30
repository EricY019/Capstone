; ModuleID = './code/330-10720pr83668.c'
source_filename = "./code/330-10720pr83668.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@b = global i32 0, align 4
@a = global i32 0, align 4
@d = global [14 x i32] zeroinitializer, align 4
@c = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %e = alloca i16, align 2
  %f = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %0 = load i32, ptr @b, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  store i16 0, ptr %e, align 2
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc9, %for.body
  %1 = load i16, ptr %e, align 2
  %conv = sext i16 %1 to i32
  %cmp2 = icmp slt i32 %conv, 2
  br i1 %cmp2, label %for.body4, label %for.end11

for.body4:                                        ; preds = %for.cond1
  store i32 0, ptr @a, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %2 = load i32, ptr @a, align 4
  %cmp6 = icmp slt i32 %2, 7
  br i1 %cmp6, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond5
  %3 = load i32, ptr @a, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [14 x i32], ptr @d, i64 0, i64 %idxprom
  store i32 1, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %4 = load i32, ptr @a, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr @a, align 4
  br label %for.cond5, !llvm.loop !5

for.end:                                          ; preds = %for.cond5
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %5 = load i16, ptr %e, align 2
  %inc10 = add i16 %5, 1
  store i16 %inc10, ptr %e, align 2
  br label %for.cond1, !llvm.loop !7

for.end11:                                        ; preds = %for.cond1
  %6 = load i32, ptr @c, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end11
  store i8 0, ptr %f, align 1
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc17, %if.then
  %7 = load i8, ptr %f, align 1
  %conv13 = sext i8 %7 to i32
  %cmp14 = icmp sge i32 %conv13, 0
  br i1 %cmp14, label %for.body16, label %for.end18

for.body16:                                       ; preds = %for.cond12
  br label %for.inc17

for.inc17:                                        ; preds = %for.body16
  %8 = load i8, ptr %f, align 1
  %dec = add i8 %8, -1
  store i8 %dec, ptr %f, align 1
  br label %for.cond12, !llvm.loop !8

for.end18:                                        ; preds = %for.cond12
  br label %if.end

if.end:                                           ; preds = %for.end18, %for.end11
  br label %for.inc19

for.inc19:                                        ; preds = %if.end
  %9 = load i32, ptr @b, align 4
  %dec20 = add nsw i32 %9, -1
  store i32 %dec20, ptr @b, align 4
  br label %for.cond, !llvm.loop !9

for.end21:                                        ; preds = %for.cond
  %10 = load i32, ptr @a, align 4
  %cmp22 = icmp ne i32 %10, 7
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %for.end21
  call void @abort() #2
  unreachable

if.end25:                                         ; preds = %for.end21
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
