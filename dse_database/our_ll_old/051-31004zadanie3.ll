; ModuleID = './code/051-31004zadanie3.c'
source_filename = "./code/051-31004zadanie3.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [45 x i8] c"Liczby doskona\C5\82e w przedziale 1=><=10000: \0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %liczba = alloca i32, align 4
  %i = alloca i32, align 4
  %suma = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 1, ptr %liczba, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %liczba, align 4
  %cmp = icmp sle i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %i, align 4
  store i32 0, ptr %suma, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %liczba, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %liczba, align 4
  %4 = load i32, ptr %i, align 4
  %rem = srem i32 %3, %4
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load i32, ptr %suma, align 4
  %6 = load i32, ptr %i, align 4
  %add = add nsw i32 %5, %6
  store i32 %add, ptr %suma, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %8 = load i32, ptr %suma, align 4
  %9 = load i32, ptr %liczba, align 4
  %cmp3 = icmp eq i32 %8, %9
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %while.end
  %10 = load i32, ptr %liczba, align 4
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %10)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %11 = load i32, ptr %liczba, align 4
  %inc7 = add nsw i32 %11, 1
  store i32 %inc7, ptr %liczba, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret i32 0
}

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
