; ModuleID = './code/246-23443switch-statement.armle.c'
source_filename = "./code/246-23443switch-statement.armle.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %sub = sub nsw i32 %0, 1
  %1 = load ptr, ptr %argv.addr, align 8
  %call = call i32 @call_me(i32 noundef %sub, ptr noundef %1)
  %2 = load i32, ptr %argc.addr, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb8
    i32 4, label %sw.bb11
    i32 5, label %sw.bb14
  ]

sw.bb:                                            ; preds = %entry
  %3 = load i32, ptr %argc.addr, align 4
  %sub1 = sub nsw i32 %3, 1
  %4 = load ptr, ptr %argv.addr, align 8
  %call2 = call i32 @call_me(i32 noundef %sub1, ptr noundef %4)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %5 = load i32, ptr %argc.addr, align 4
  %add = add nsw i32 %5, 1
  %6 = load ptr, ptr %argv.addr, align 8
  %call4 = call i32 @call_me(i32 noundef %add, ptr noundef %6)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %7 = load i32, ptr %argc.addr, align 4
  %sub6 = sub nsw i32 %7, 2
  %8 = load ptr, ptr %argv.addr, align 8
  %call7 = call i32 @call_me(i32 noundef %sub6, ptr noundef %8)
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %9 = load i32, ptr %argc.addr, align 4
  %sub9 = sub nsw i32 %9, 5
  %10 = load ptr, ptr %argv.addr, align 8
  %call10 = call i32 @call_me(i32 noundef %sub9, ptr noundef %10)
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %11 = load i32, ptr %argc.addr, align 4
  %add12 = add nsw i32 %11, 3
  %12 = load ptr, ptr %argv.addr, align 8
  %call13 = call i32 @call_me(i32 noundef %add12, ptr noundef %12)
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %13 = load i32, ptr %argc.addr, align 4
  %add15 = add nsw i32 %13, 2
  %14 = load ptr, ptr %argv.addr, align 8
  %call16 = call i32 @call_me(i32 noundef %add15, ptr noundef %14)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb14, %sw.bb11, %sw.bb8, %sw.bb5, %sw.bb3, %sw.bb
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @call_me(i32 noundef %x, ptr noundef %p) #0 {
entry:
  %x.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %a = alloca ptr, align 8
  %orig_a = alloca ptr, align 8
  store i32 %x, ptr %x.addr, align 4
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i32, ptr %x.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  store ptr %2, ptr %a, align 8
  %3 = load ptr, ptr %a, align 8
  store ptr %3, ptr %orig_a, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load ptr, ptr %a, align 8
  %5 = load i8, ptr %4, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %a, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %a, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr %a, align 8
  %8 = ptrtoint ptr %7 to i32
  %9 = load ptr, ptr %orig_a, align 8
  %10 = ptrtoint ptr %9 to i32
  %sub = sub nsw i32 %8, %10
  ret i32 %sub
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
