; ModuleID = './code/359-18013rot13.c'
source_filename = "./code/359-18013rot13.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__stdinp = external global ptr, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @rot13(i32 noundef %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %q = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %sub = sub nsw i32 %0, 1
  %div = sdiv i32 %sub, 32
  store i32 %div, ptr %q, align 4
  %1 = load i32, ptr %x.addr, align 4
  %sub1 = sub nsw i32 %1, 1
  %rem = srem i32 %sub1, 32
  store i32 %rem, ptr %r, align 4
  %2 = load i32, ptr %q, align 4
  %cmp = icmp ne i32 %2, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %q, align 4
  %cmp2 = icmp ne i32 %3, 3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, ptr %x.addr, align 4
  store i32 %4, ptr %retval, align 4
  br label %sw.epilog

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load i32, ptr %r, align 4
  %div3 = sdiv i32 %5, 13
  store i32 %div3, ptr %q, align 4
  %6 = load i32, ptr %q, align 4
  switch i32 %6, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.end
  %7 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %7, 13
  store i32 %add, ptr %retval, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  %8 = load i32, ptr %x.addr, align 4
  %sub5 = sub nsw i32 %8, 13
  store i32 %sub5, ptr %retval, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %9 = load i32, ptr %x.addr, align 4
  store i32 %9, ptr %retval, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb, %sw.bb4, %sw.bb6, %if.end
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr @__stdinp, align 8
  %call = call i32 @fgetc(ptr noundef %0)
  store i32 %call, ptr %c, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %c, align 4
  %call1 = call i32 @rot13(i32 noundef %1)
  %call2 = call i32 @putchar(i32 noundef %call1)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare i32 @fgetc(ptr noundef) #1

declare i32 @putchar(i32 noundef) #1

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
