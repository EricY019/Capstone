; ModuleID = './code/221-4976watchpoints.c'
source_filename = "./code/221-4976watchpoints.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@count = global i32 -1, align 4
@ival1 = global i32 -1, align 4
@ival2 = global i32 -1, align 4
@ival3 = global i32 -1, align 4
@ival4 = global i32 -1, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr @count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr @count, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr @count, align 4
  store i32 %1, ptr @ival1, align 4
  %2 = load i32, ptr @count, align 4
  store i32 %2, ptr @ival2, align 4
  %3 = load i32, ptr @count, align 4
  store i32 %3, ptr @ival3, align 4
  %4 = load i32, ptr @count, align 4
  store i32 %4, ptr @ival4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr @count, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr @count, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr @count, align 4
  store i32 %6, ptr @ival1, align 4
  %7 = load i32, ptr @count, align 4
  store i32 %7, ptr @ival2, align 4
  %8 = load i32, ptr @count, align 4
  store i32 %8, ptr @ival3, align 4
  %9 = load i32, ptr @count, align 4
  store i32 %9, ptr @ival4, align 4
  ret i32 0
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
