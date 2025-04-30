; ModuleID = './code/181-6389primes.c'
source_filename = "./code/181-6389primes.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@maximum = global i32 32767, align 4
@count = global i32 2, align 4
@internalcount = global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load i32, ptr @count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %1 = load i32, ptr @count, align 4
  %2 = load i32, ptr @maximum, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end5

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr @count, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, ptr @internalcount, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr @count, align 4
  %5 = load i32, ptr @internalcount, align 4
  %rem = srem i32 %4, %5
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %for.body2, label %for.end

for.body2:                                        ; preds = %for.cond1
  br label %for.inc

for.inc:                                          ; preds = %for.body2
  %6 = load i32, ptr @internalcount, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, ptr @internalcount, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  %7 = load i32, ptr @internalcount, align 4
  %cmp3 = icmp eq i32 %7, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %8 = load i32, ptr @count, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  br label %for.inc4

for.inc4:                                         ; preds = %if.end
  %9 = load i32, ptr @count, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr @count, align 4
  br label %for.cond, !llvm.loop !7

for.end5:                                         ; preds = %for.cond
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
