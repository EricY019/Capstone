; ModuleID = './code/271-11983simplestatemachine.c'
source_filename = "./code/271-11983simplestatemachine.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca i32, align 4
  %counter = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %s, align 4
  store i32 0, ptr %counter, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %entry
  %0 = load i32, ptr %s, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %counter, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %counter, align 4
  %2 = load i32, ptr %counter, align 4
  %cmp1 = icmp eq i32 %2, 5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, ptr %s, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  store i32 1, ptr %s, align 4
  br i1 true, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %counter, align 4
  %sub = sub nsw i32 %3, 2
  store i32 %sub, ptr %counter, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i32, ptr %counter, align 4
  %cmp4 = icmp eq i32 %4, -5
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i32 2, ptr %s, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
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
