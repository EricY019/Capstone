; ModuleID = './code/164-10276switch-case-1.c'
source_filename = "./code/164-10276switch-case-1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@g = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @foo(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb4
    i32 5, label %sw.bb6
    i32 6, label %sw.bb8
    i32 7, label %sw.bb10
    i32 8, label %sw.bb12
    i32 9, label %sw.bb14
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr @g, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @g, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %2 = load i32, ptr @g, align 4
  %add = add nsw i32 %2, 2
  store i32 %add, ptr @g, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %3 = load i32, ptr @g, align 4
  %add3 = add nsw i32 %3, 1
  store i32 %add3, ptr @g, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %4 = load i32, ptr @g, align 4
  %add5 = add nsw i32 %4, 3
  store i32 %add5, ptr @g, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %5 = load i32, ptr @g, align 4
  %add7 = add nsw i32 %5, 4
  store i32 %add7, ptr @g, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %6 = load i32, ptr @g, align 4
  %add9 = add nsw i32 %6, 5
  store i32 %add9, ptr @g, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %7 = load i32, ptr @g, align 4
  %add11 = add nsw i32 %7, 6
  store i32 %add11, ptr @g, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  %8 = load i32, ptr @g, align 4
  %add13 = add nsw i32 %8, 7
  store i32 %add13, ptr @g, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %9 = load i32, ptr @g, align 4
  %add15 = add nsw i32 %9, 8
  store i32 %add15, ptr @g, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %10 = load i32, ptr @g, align 4
  %add16 = add nsw i32 %10, 8
  store i32 %add16, ptr @g, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %1, %2
  %rem = srem i32 %mul, 5
  call void @foo(i32 noundef %rem)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
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
