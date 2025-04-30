; ModuleID = './code/179-29385pr61375.c'
source_filename = "./code/179-29385pr61375.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @uint128_central_bitsi_ior(i128 noundef %in1, i64 noundef %in2) #0 {
entry:
  %in1.addr = alloca i128, align 16
  %in2.addr = alloca i64, align 8
  %mask = alloca i128, align 16
  store i128 %in1, ptr %in1.addr, align 16
  store i64 %in2, ptr %in2.addr, align 8
  store i128 4722294425275607285760, ptr %mask, align 16
  %0 = load i128, ptr %in1.addr, align 16
  %1 = load i128, ptr %mask, align 16
  %and = and i128 %0, %1
  %shr = lshr i128 %and, 56
  %2 = load i64, ptr %in2.addr, align 8
  %conv = zext i64 %2 to i128
  %or = or i128 %shr, %conv
  %conv1 = trunc i128 %or to i64
  ret i64 %conv1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %in = alloca i128, align 16
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i128 1, ptr %in, align 16
  %0 = load i128, ptr %in, align 16
  %shl = shl i128 %0, 64
  store i128 %shl, ptr %in, align 16
  %1 = load i128, ptr %in, align 16
  %call = call i64 @uint128_central_bitsi_ior(i128 noundef %1, i64 noundef 2)
  %cmp = icmp ne i64 %call, 258
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
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
