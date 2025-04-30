; ModuleID = './code/012-18959watch-bitfields.c'
source_filename = "./code/012-18959watch-bitfields.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@q = global { i8, i8, i8, i8, i8, [3 x i8] } { i8 0, i8 0, i8 0, i8 0, i8 0, [3 x i8] undef }, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %bf.load = load i64, ptr @q, align 8
  %bf.clear = and i64 %bf.load, -2
  %bf.set = or i64 %bf.clear, 1
  store i64 %bf.set, ptr @q, align 8
  %bf.load1 = load i64, ptr @q, align 8
  %bf.clear2 = and i64 %bf.load1, -7
  %bf.set3 = or i64 %bf.clear2, 4
  store i64 %bf.set3, ptr @q, align 8
  %bf.load4 = load i64, ptr @q, align 8
  %bf.clear5 = and i64 %bf.load4, -57
  %bf.set6 = or i64 %bf.clear5, 24
  store i64 %bf.set6, ptr @q, align 8
  %bf.load7 = load i64, ptr @q, align 8
  %bf.clear8 = and i64 %bf.load7, -3841
  %bf.set9 = or i64 %bf.clear8, 1024
  store i64 %bf.set9, ptr @q, align 8
  %bf.load10 = load i64, ptr @q, align 8
  %bf.clear11 = and i64 %bf.load10, -126977
  %bf.set12 = or i64 %bf.clear11, 20480
  store i64 %bf.set12, ptr @q, align 8
  %bf.load13 = load i64, ptr @q, align 8
  %bf.clear14 = and i64 %bf.load13, -8257537
  %bf.set15 = or i64 %bf.clear14, 786432
  store i64 %bf.set15, ptr @q, align 8
  %bf.load16 = load i64, ptr @q, align 8
  %bf.clear17 = and i64 %bf.load16, -1065353217
  %bf.set18 = or i64 %bf.clear17, 1015021568
  store i64 %bf.set18, ptr @q, align 8
  %bf.load19 = load i64, ptr @q, align 8
  %bf.clear20 = and i64 %bf.load19, -273804165121
  %bf.set21 = or i64 %bf.clear20, 266287972352
  store i64 %bf.set21, ptr @q, align 8
  %bf.load22 = load i64, ptr @q, align 8
  %bf.clear23 = and i64 %bf.load22, 1
  %dec = add i64 %bf.clear23, -1
  %bf.load24 = load i64, ptr @q, align 8
  %bf.value = and i64 %dec, 1
  %bf.clear25 = and i64 %bf.load24, -2
  %bf.set26 = or i64 %bf.clear25, %bf.value
  store i64 %bf.set26, ptr @q, align 8
  %bf.load27 = load i64, ptr @q, align 8
  %bf.shl = shl i64 %bf.load27, 26
  %bf.ashr = ashr i64 %bf.shl, 56
  %dec28 = add nsw i64 %bf.ashr, -1
  %bf.load29 = load i64, ptr @q, align 8
  %bf.value30 = and i64 %dec28, 255
  %bf.shl31 = shl i64 %bf.value30, 30
  %bf.clear32 = and i64 %bf.load29, -273804165121
  %bf.set33 = or i64 %bf.clear32, %bf.shl31
  store i64 %bf.set33, ptr @q, align 8
  %bf.result.shl = shl i64 %bf.value30, 56
  %bf.result.ashr = ashr i64 %bf.result.shl, 56
  %bf.load34 = load i64, ptr @q, align 8
  %bf.lshr = lshr i64 %bf.load34, 3
  %bf.clear35 = and i64 %bf.lshr, 7
  %dec36 = add i64 %bf.clear35, -1
  %bf.load37 = load i64, ptr @q, align 8
  %bf.value38 = and i64 %dec36, 7
  %bf.shl39 = shl i64 %bf.value38, 3
  %bf.clear40 = and i64 %bf.load37, -57
  %bf.set41 = or i64 %bf.clear40, %bf.shl39
  store i64 %bf.set41, ptr @q, align 8
  %bf.load42 = load i64, ptr @q, align 8
  %bf.lshr43 = lshr i64 %bf.load42, 1
  %bf.clear44 = and i64 %bf.lshr43, 3
  %bf.cast = trunc i64 %bf.clear44 to i8
  %dec45 = add i8 %bf.cast, -1
  %0 = zext i8 %dec45 to i64
  %bf.load46 = load i64, ptr @q, align 8
  %bf.value47 = and i64 %0, 3
  %bf.shl48 = shl i64 %bf.value47, 1
  %bf.clear49 = and i64 %bf.load46, -7
  %bf.set50 = or i64 %bf.clear49, %bf.shl48
  store i64 %bf.set50, ptr @q, align 8
  %bf.result.cast = trunc i64 %bf.value47 to i8
  %bf.load51 = load i64, ptr @q, align 8
  %bf.shl52 = shl i64 %bf.load51, 47
  %bf.ashr53 = ashr i64 %bf.shl52, 59
  %bf.cast54 = trunc i64 %bf.ashr53 to i32
  %dec55 = add nsw i32 %bf.cast54, -1
  %1 = zext i32 %dec55 to i64
  %bf.load56 = load i64, ptr @q, align 8
  %bf.value57 = and i64 %1, 31
  %bf.shl58 = shl i64 %bf.value57, 12
  %bf.clear59 = and i64 %bf.load56, -126977
  %bf.set60 = or i64 %bf.clear59, %bf.shl58
  store i64 %bf.set60, ptr @q, align 8
  %bf.result.shl61 = shl i64 %bf.value57, 59
  %bf.result.ashr62 = ashr i64 %bf.result.shl61, 59
  %bf.result.cast63 = trunc i64 %bf.result.ashr62 to i32
  %bf.load64 = load i64, ptr @q, align 8
  %bf.shl65 = shl i64 %bf.load64, 52
  %bf.ashr66 = ashr i64 %bf.shl65, 60
  %bf.cast67 = trunc i64 %bf.ashr66 to i8
  %dec68 = add i8 %bf.cast67, -1
  %2 = zext i8 %dec68 to i64
  %bf.load69 = load i64, ptr @q, align 8
  %bf.value70 = and i64 %2, 15
  %bf.shl71 = shl i64 %bf.value70, 8
  %bf.clear72 = and i64 %bf.load69, -3841
  %bf.set73 = or i64 %bf.clear72, %bf.shl71
  store i64 %bf.set73, ptr @q, align 8
  %bf.result.shl74 = shl i64 %bf.value70, 60
  %bf.result.ashr75 = ashr i64 %bf.result.shl74, 60
  %bf.result.cast76 = trunc i64 %bf.result.ashr75 to i8
  %bf.load77 = load i64, ptr @q, align 8
  %bf.lshr78 = lshr i64 %bf.load77, 3
  %bf.clear79 = and i64 %bf.lshr78, 7
  %dec80 = add i64 %bf.clear79, -1
  %bf.load81 = load i64, ptr @q, align 8
  %bf.value82 = and i64 %dec80, 7
  %bf.shl83 = shl i64 %bf.value82, 3
  %bf.clear84 = and i64 %bf.load81, -57
  %bf.set85 = or i64 %bf.clear84, %bf.shl83
  store i64 %bf.set85, ptr @q, align 8
  %bf.load86 = load i64, ptr @q, align 8
  %bf.shl87 = shl i64 %bf.load86, 41
  %bf.ashr88 = ashr i64 %bf.shl87, 58
  %bf.cast89 = trunc i64 %bf.ashr88 to i8
  %dec90 = add i8 %bf.cast89, -1
  %3 = zext i8 %dec90 to i64
  %bf.load91 = load i64, ptr @q, align 8
  %bf.value92 = and i64 %3, 63
  %bf.shl93 = shl i64 %bf.value92, 17
  %bf.clear94 = and i64 %bf.load91, -8257537
  %bf.set95 = or i64 %bf.clear94, %bf.shl93
  store i64 %bf.set95, ptr @q, align 8
  %bf.result.shl96 = shl i64 %bf.value92, 58
  %bf.result.ashr97 = ashr i64 %bf.result.shl96, 58
  %bf.result.cast98 = trunc i64 %bf.result.ashr97 to i8
  %bf.load99 = load i64, ptr @q, align 8
  %bf.shl100 = shl i64 %bf.load99, 34
  %bf.ashr101 = ashr i64 %bf.shl100, 57
  %bf.cast102 = trunc i64 %bf.ashr101 to i32
  %dec103 = add nsw i32 %bf.cast102, -1
  %4 = zext i32 %dec103 to i64
  %bf.load104 = load i64, ptr @q, align 8
  %bf.value105 = and i64 %4, 127
  %bf.shl106 = shl i64 %bf.value105, 23
  %bf.clear107 = and i64 %bf.load104, -1065353217
  %bf.set108 = or i64 %bf.clear107, %bf.shl106
  store i64 %bf.set108, ptr @q, align 8
  %bf.result.shl109 = shl i64 %bf.value105, 57
  %bf.result.ashr110 = ashr i64 %bf.result.shl109, 57
  %bf.result.cast111 = trunc i64 %bf.result.ashr110 to i32
  %bf.load112 = load i64, ptr @q, align 8
  %bf.shl113 = shl i64 %bf.load112, 26
  %bf.ashr114 = ashr i64 %bf.shl113, 56
  %dec115 = add nsw i64 %bf.ashr114, -1
  %bf.load116 = load i64, ptr @q, align 8
  %bf.value117 = and i64 %dec115, 255
  %bf.shl118 = shl i64 %bf.value117, 30
  %bf.clear119 = and i64 %bf.load116, -273804165121
  %bf.set120 = or i64 %bf.clear119, %bf.shl118
  store i64 %bf.set120, ptr @q, align 8
  %bf.result.shl121 = shl i64 %bf.value117, 56
  %bf.result.ashr122 = ashr i64 %bf.result.shl121, 56
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
