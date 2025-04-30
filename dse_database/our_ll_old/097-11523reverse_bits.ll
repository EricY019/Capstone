; ModuleID = './code/097-11523reverse_bits.c'
source_filename = "./code/097-11523reverse_bits.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [10 x i8] c"sizeof %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"sw : %d \0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %v = alloca i32, align 4
  %r = alloca i32, align 4
  %a = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 80, ptr %v, align 4
  %0 = load i32, ptr %v, align 4
  store i32 %0, ptr %r, align 4
  store i32 0, ptr %a, align 4
  store i32 31, ptr %s, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef 4)
  %1 = load i32, ptr %v, align 4
  %shr = lshr i32 %1, 1
  store i32 %shr, ptr %v, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %v, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %r, align 4
  %shl = shl i32 %3, 1
  store i32 %shl, ptr %r, align 4
  %4 = load i32, ptr %v, align 4
  %and = and i32 %4, 1
  %5 = load i32, ptr %r, align 4
  %or = or i32 %5, %and
  store i32 %or, ptr %r, align 4
  %6 = load i32, ptr %s, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, ptr %s, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %v, align 4
  %shr1 = lshr i32 %7, 1
  store i32 %shr1, ptr %v, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %s, align 4
  %9 = load i32, ptr %r, align 4
  %shl2 = shl i32 %9, %8
  store i32 %shl2, ptr %r, align 4
  %10 = load i32, ptr %r, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %10)
  store i32 90, ptr %r, align 4
  %11 = load i32, ptr %r, align 4
  %call4 = call i32 @swap_nibble(i32 noundef %11)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %call4)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @swap_nibble(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %and = and i32 %0, 240
  %shr = lshr i32 %and, 4
  %1 = load i32, ptr %n.addr, align 4
  %and1 = and i32 %1, 15
  %shl = shl i32 %and1, 4
  %or = or i32 %shr, %shl
  ret i32 %or
}

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
