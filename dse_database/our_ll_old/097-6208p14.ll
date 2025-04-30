; ModuleID = './code/097-6208p14.c'
source_filename = "./code/097-6208p14.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [18 x i8] c"Longest: %d (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %longest = alloca i32, align 4
  %terms = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i64, align 8
  %current_term = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %longest, align 4
  store i32 0, ptr %terms, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 1000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, ptr %j, align 8
  store i32 1, ptr %current_term, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end8, %for.body
  %2 = load i64, ptr %j, align 8
  %cmp1 = icmp ne i64 %2, 1
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %current_term, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %current_term, align 4
  %4 = load i32, ptr %current_term, align 4
  %5 = load i32, ptr %terms, align 4
  %cmp3 = icmp sgt i32 %4, %5
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load i32, ptr %current_term, align 4
  store i32 %6, ptr %terms, align 4
  %7 = load i32, ptr %i, align 4
  store i32 %7, ptr %longest, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %8 = load i64, ptr %j, align 8
  %rem = urem i64 %8, 2
  %cmp5 = icmp eq i64 %rem, 0
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %9 = load i64, ptr %j, align 8
  %div = udiv i64 %9, 2
  store i64 %div, ptr %j, align 8
  br label %if.end8

if.else:                                          ; preds = %if.end
  %10 = load i64, ptr %j, align 8
  %mul = mul i64 3, %10
  %add = add i64 %mul, 1
  store i64 %add, ptr %j, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %11 = load i32, ptr %i, align 4
  %inc9 = add nsw i32 %11, 1
  store i32 %inc9, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %longest, align 4
  %13 = load i32, ptr %terms, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %12, i32 noundef %13)
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
