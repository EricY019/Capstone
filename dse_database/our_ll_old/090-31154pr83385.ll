; ModuleID = './code/090-31154pr83385.c'
source_filename = "./code/090-31154pr83385.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@n1 = global i32 0, align 4
@xc = global i32 0, align 4
@bx = global [2 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %aj = alloca i32, align 4
  %cs = alloca i32, align 4
  %sq = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %aj, align 4
  %0 = load i32, ptr %aj, align 4
  store i32 %0, ptr %cs, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %1 = load i32, ptr %cs, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %sq, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc8, %for.body
  %2 = load i32, ptr %sq, align 4
  %cmp2 = icmp slt i32 %2, 2
  br i1 %cmp2, label %for.body3, label %for.end10

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, ptr %aj, align 4
  %cmp4 = icmp ne i32 %3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %4 = load i32, ptr @n1, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr @n1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  store i32 0, ptr @xc, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %if.end
  %5 = load i32, ptr @xc, align 4
  %cmp6 = icmp slt i32 %5, 2
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %6 = load i32, ptr @xc, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [2 x i32], ptr @bx, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %7 = load i32, ptr @xc, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr @xc, align 4
  br label %for.cond5, !llvm.loop !5

for.end:                                          ; preds = %for.cond5
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %8 = load i32, ptr %sq, align 4
  %inc9 = add nsw i32 %8, 1
  store i32 %inc9, ptr %sq, align 4
  br label %for.cond1, !llvm.loop !7

for.end10:                                        ; preds = %for.cond1
  %9 = load i32, ptr %aj, align 4
  %dec11 = add nsw i32 %9, -1
  store i32 %dec11, ptr %aj, align 4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end10
  %10 = load i32, ptr %cs, align 4
  %dec13 = add nsw i32 %10, -1
  store i32 %dec13, ptr %cs, align 4
  br label %for.cond, !llvm.loop !8

for.end14:                                        ; preds = %for.cond
  %11 = load i32, ptr @n1, align 4
  %cmp15 = icmp ne i32 %11, -2
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.end14
  call void @abort() #2
  unreachable

if.end17:                                         ; preds = %for.end14
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
