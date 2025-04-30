; ModuleID = './code/253-10788Performance2.c'
source_filename = "./code/253-10788Performance2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [29 x i8] c"Tempo gasto %.2lf segundos.\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @minhafuncao() #0 {
entry:
  %x = alloca i32, align 4
  store i32 0, ptr %x, align 4
  %0 = load i32, ptr %x, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %x, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %begin = alloca i64, align 8
  %end = alloca i64, align 8
  %time_spent = alloca double, align 8
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  %i4 = alloca i32, align 4
  %i18 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i64 @"\01_clock"()
  store i64 %call, ptr %begin, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 300000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, ptr %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call1 = call i64 @"\01_clock"()
  store i64 %call1, ptr %end, align 8
  %2 = load i64, ptr %end, align 8
  %3 = load i64, ptr %begin, align 8
  %sub = sub i64 %2, %3
  %conv = uitofp i64 %sub to double
  %div = fdiv double %conv, 1.000000e+06
  store double %div, ptr %time_spent, align 8
  %4 = load double, ptr %time_spent, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %4)
  %call3 = call i64 @"\01_clock"()
  store i64 %call3, ptr %begin, align 8
  store i32 0, ptr %i4, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc9, %for.end
  %5 = load i32, ptr %i4, align 4
  %cmp6 = icmp slt i32 %5, 300000000
  br i1 %cmp6, label %for.body8, label %for.end11

for.body8:                                        ; preds = %for.cond5
  call void @minhafuncao()
  br label %for.inc9

for.inc9:                                         ; preds = %for.body8
  %6 = load i32, ptr %i4, align 4
  %inc10 = add nsw i32 %6, 1
  store i32 %inc10, ptr %i4, align 4
  br label %for.cond5, !llvm.loop !7

for.end11:                                        ; preds = %for.cond5
  %call12 = call i64 @"\01_clock"()
  store i64 %call12, ptr %end, align 8
  %7 = load i64, ptr %end, align 8
  %8 = load i64, ptr %begin, align 8
  %sub13 = sub i64 %7, %8
  %conv14 = uitofp i64 %sub13 to double
  %div15 = fdiv double %conv14, 1.000000e+06
  store double %div15, ptr %time_spent, align 8
  %9 = load double, ptr %time_spent, align 8
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %9)
  %call17 = call i64 @"\01_clock"()
  store i64 %call17, ptr %begin, align 8
  store i32 0, ptr %i18, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc24, %for.end11
  %10 = load i32, ptr %i18, align 4
  %cmp20 = icmp slt i32 %10, 300000000
  br i1 %cmp20, label %for.body22, label %for.end26

for.body22:                                       ; preds = %for.cond19
  %11 = load i32, ptr %x, align 4
  %inc23 = add nsw i32 %11, 1
  store i32 %inc23, ptr %x, align 4
  br label %for.inc24

for.inc24:                                        ; preds = %for.body22
  %12 = load i32, ptr %i18, align 4
  %inc25 = add nsw i32 %12, 1
  store i32 %inc25, ptr %i18, align 4
  br label %for.cond19, !llvm.loop !8

for.end26:                                        ; preds = %for.cond19
  %call27 = call i64 @"\01_clock"()
  store i64 %call27, ptr %end, align 8
  %13 = load i64, ptr %end, align 8
  %14 = load i64, ptr %begin, align 8
  %sub28 = sub i64 %13, %14
  %conv29 = uitofp i64 %sub28 to double
  %div30 = fdiv double %conv29, 1.000000e+06
  store double %div30, ptr %time_spent, align 8
  %15 = load double, ptr %time_spent, align 8
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %15)
  %16 = load i32, ptr %x, align 4
  %inc32 = add nsw i32 %16, 1
  store i32 %inc32, ptr %x, align 4
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

declare i64 @"\01_clock"() #1

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
