; ModuleID = './code/358-32653pr33755.c'
source_filename = "./code/358-32653pr33755.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [10 x i8] c"Some text\00", align 1
@gv = global i32 0, align 4
@ptrs = global [2 x ptr] zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @foo(ptr noundef %v, ptr noundef %ptrs) #0 {
entry:
  %v.addr = alloca ptr, align 8
  %ptrs.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  store ptr %ptrs, ptr %ptrs.addr, align 8
  %0 = load ptr, ptr %v.addr, align 8
  %1 = load volatile i32, ptr %0, align 4
  %and = and i32 %1, 1
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %ptrs.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  store ptr null, ptr %arrayidx, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %3 = load ptr, ptr %ptrs.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %3, i64 1
  store ptr @.str, ptr %arrayidx2, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.epilog
  %4 = load ptr, ptr %v.addr, align 8
  %5 = load volatile i32, ptr %4, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %v.addr, align 8
  %7 = load volatile i32, ptr %6, align 4
  %sub = sub nsw i32 %7, 1
  store volatile i32 %sub, ptr %6, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @foo(ptr noundef @gv, ptr noundef @ptrs)
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
