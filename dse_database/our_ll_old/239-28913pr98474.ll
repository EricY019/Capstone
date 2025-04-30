; ModuleID = './code/239-28913pr98474.c'
source_filename = "./code/239-28913pr98474.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @foo(ptr noundef %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %x.addr, align 8
  %1 = load i128, ptr %0, align 16
  %add = add i128 %1, 36893488147419103232
  store i128 %add, ptr %0, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i128, align 16
  %b = alloca i128, align 16
  %n = alloca i128, align 16
  store i32 0, ptr %retval, align 4
  store i128 36893488147419103232, ptr %a, align 16
  %0 = load i128, ptr %a, align 16
  store i128 %0, ptr %b, align 16
  call void @foo(ptr noundef %b)
  %1 = load i128, ptr %b, align 16
  store i128 %1, ptr %n, align 16
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i128, ptr %n, align 16
  %3 = load i128, ptr %a, align 16
  %cmp = icmp uge i128 %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i128, ptr %a, align 16
  %5 = load i128, ptr %n, align 16
  %sub = sub i128 %5, %4
  store i128 %sub, ptr %n, align 16
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %6 = load i128, ptr %n, align 16
  %shr = lshr i128 %6, 64
  %conv = trunc i128 %shr to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %while.end
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
