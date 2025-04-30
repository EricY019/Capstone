; ModuleID = './code/137-11867for.c'
source_filename = "./code/137-11867for.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@i = global i32 3, align 4
@var = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load i32, ptr @var, align 4
  store i32 %0, ptr @i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr @i, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr @var, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr @var, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr @i, align 4
  %inc1 = add nsw i32 %3, 1
  store i32 %inc1, ptr @i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr @var, align 4
  %cmp2 = icmp sgt i32 %4, 10
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %5 = load i32, ptr @i, align 4
  %6 = load i32, ptr @var, align 4
  %div = sdiv i32 %5, %6
  store i32 %div, ptr @var, align 4
  br label %if.end

if.else:                                          ; preds = %for.end
  %7 = load i32, ptr @var, align 4
  %8 = load i32, ptr @i, align 4
  %sub = sub nsw i32 0, %8
  %xor = xor i32 %7, %sub
  store i32 %xor, ptr @var, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
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
