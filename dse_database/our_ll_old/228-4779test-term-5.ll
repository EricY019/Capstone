; ModuleID = './code/228-4779test-term-5.c'
source_filename = "./code/228-4779test-term-5.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @foo(ptr noundef %p, ptr noundef %A, ptr noundef %B, i32 noundef %n) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %A.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %numNonZero = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %A, ptr %A.addr, align 8
  store ptr %B, ptr %B.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, ptr %numNonZero, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, ptr %numNonZero, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %numNonZero, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %A.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %A.addr, align 8
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr %B.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i32, ptr %4, i32 1
  store ptr %incdec.ptr1, ptr %B.addr, align 8
  %5 = load i32, ptr %4, align 4
  %mul = mul nsw i32 %3, %5
  %6 = load ptr, ptr %p.addr, align 8
  %7 = load i32, ptr %6, align 4
  %mul2 = mul nsw i32 %7, %mul
  store i32 %mul2, ptr %6, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %p.addr, align 8
  %9 = load i32, ptr %8, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %p = alloca i32, align 4
  %A = alloca [10 x i32], align 4
  %B = alloca [10 x i32], align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call i32 @foo(ptr noundef %p, ptr noundef %A, ptr noundef %B, i32 noundef 10)
  ret i32 %call
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
