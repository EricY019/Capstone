; ModuleID = './code/176-6095whatis.c'
source_filename = "./code/176-6095whatis.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%union.tu_link = type { [1 x [2 x [3 x %struct.t_struct]]] }
%struct.t_struct = type { i8, i16, i32, i64, i64, float, double }
%union.t_union = type { i64 }
%union.anon = type { i64 }
%struct.anon = type { i8, i16, i32, i64, i64, float, double }
%struct.outer_struct = type { i32, %struct.inner_struct, %union.inner_union, i64 }
%struct.inner_struct = type { i32, i64 }
%union.inner_union = type { i64 }

@v_char = global i8 0, align 1
@v_signed_char = global i8 0, align 1
@v_unsigned_char = global i8 0, align 1
@v_short = global i16 0, align 2
@v_signed_short = global i16 0, align 2
@v_unsigned_short = global i16 0, align 2
@v_int = global i32 0, align 4
@v_signed_int = global i32 0, align 4
@v_unsigned_int = global i32 0, align 4
@v_long = global i64 0, align 8
@v_signed_long = global i64 0, align 8
@v_unsigned_long = global i64 0, align 8
@v_long_long = global i64 0, align 8
@v_signed_long_long = global i64 0, align 8
@v_unsigned_long_long = global i64 0, align 8
@v_float = global float 0.000000e+00, align 4
@v_double = global double 0.000000e+00, align 8
@v_char_array = global [2 x i8] zeroinitializer, align 1
@v_signed_char_array = global [2 x i8] zeroinitializer, align 1
@v_unsigned_char_array = global [2 x i8] zeroinitializer, align 1
@v_short_array = global [2 x i16] zeroinitializer, align 2
@v_signed_short_array = global [2 x i16] zeroinitializer, align 2
@v_unsigned_short_array = global [2 x i16] zeroinitializer, align 2
@v_int_array = global [2 x i32] zeroinitializer, align 4
@v_signed_int_array = global [2 x i32] zeroinitializer, align 4
@v_unsigned_int_array = global [2 x i32] zeroinitializer, align 4
@v_long_array = global [2 x i64] zeroinitializer, align 8
@v_signed_long_array = global [2 x i64] zeroinitializer, align 8
@v_unsigned_long_array = global [2 x i64] zeroinitializer, align 8
@v_long_long_array = global [2 x i64] zeroinitializer, align 8
@v_signed_long_long_array = global [2 x i64] zeroinitializer, align 8
@v_unsigned_long_long_array = global [2 x i64] zeroinitializer, align 8
@v_float_array = global [2 x float] zeroinitializer, align 4
@v_double_array = global [2 x double] zeroinitializer, align 8
@v_char_pointer = global ptr null, align 8
@v_signed_char_pointer = global ptr null, align 8
@v_unsigned_char_pointer = global ptr null, align 8
@v_short_pointer = global ptr null, align 8
@v_signed_short_pointer = global ptr null, align 8
@v_unsigned_short_pointer = global ptr null, align 8
@v_int_pointer = global ptr null, align 8
@v_signed_int_pointer = global ptr null, align 8
@v_unsigned_int_pointer = global ptr null, align 8
@v_long_pointer = global ptr null, align 8
@v_signed_long_pointer = global ptr null, align 8
@v_unsigned_long_pointer = global ptr null, align 8
@v_long_long_pointer = global ptr null, align 8
@v_signed_long_long_pointer = global ptr null, align 8
@v_unsigned_long_long_pointer = global ptr null, align 8
@v_float_pointer = global ptr null, align 8
@v_double_pointer = global ptr null, align 8
@color = global i32 0, align 4
@clunker = global i32 0, align 4
@s_link = global ptr null, align 8
@u_link = global %union.tu_link zeroinitializer, align 8
@v_union = global %union.t_union zeroinitializer, align 8
@v_union2 = global %union.anon zeroinitializer, align 8
@v_struct1 = global %struct.t_struct zeroinitializer, align 8
@v_struct2 = global %struct.anon zeroinitializer, align 8
@nested_su = global %struct.outer_struct zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define signext i8 @v_char_func() #0 {
entry:
  ret i8 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define signext i8 @v_signed_char_func() #0 {
entry:
  ret i8 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define zeroext i8 @v_unsigned_char_func() #0 {
entry:
  ret i8 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define signext i16 @v_short_func() #0 {
entry:
  ret i16 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define signext i16 @v_signed_short_func() #0 {
entry:
  ret i16 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define zeroext i16 @v_unsigned_short_func() #0 {
entry:
  ret i16 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @v_int_func() #0 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @v_signed_int_func() #0 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @v_unsigned_int_func() #0 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @v_long_func() #0 {
entry:
  ret i64 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @v_signed_long_func() #0 {
entry:
  ret i64 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @v_unsigned_long_func() #0 {
entry:
  ret i64 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @v_long_long_func() #0 {
entry:
  ret i64 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @v_signed_long_long_func() #0 {
entry:
  ret i64 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @v_unsigned_long_long_func() #0 {
entry:
  ret i64 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define float @v_float_func() #0 {
entry:
  ret float 0.000000e+00
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define double @v_double_func() #0 {
entry:
  ret double 0.000000e+00
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i8 0, ptr @v_char, align 1
  store i8 1, ptr @v_signed_char, align 1
  store i8 2, ptr @v_unsigned_char, align 1
  store i16 3, ptr @v_short, align 2
  store i16 4, ptr @v_signed_short, align 2
  store i16 5, ptr @v_unsigned_short, align 2
  store i32 6, ptr @v_int, align 4
  store i32 7, ptr @v_signed_int, align 4
  store i32 8, ptr @v_unsigned_int, align 4
  store i64 9, ptr @v_long, align 8
  store i64 10, ptr @v_signed_long, align 8
  store i64 11, ptr @v_unsigned_long, align 8
  store i64 12, ptr @v_long_long, align 8
  store i64 13, ptr @v_signed_long_long, align 8
  store i64 14, ptr @v_unsigned_long_long, align 8
  store float 1.000000e+02, ptr @v_float, align 4
  store double 2.000000e+02, ptr @v_double, align 8
  %0 = load i8, ptr @v_char, align 1
  store i8 %0, ptr @v_char_array, align 1
  %1 = load i8, ptr @v_signed_char, align 1
  store i8 %1, ptr @v_signed_char_array, align 1
  %2 = load i8, ptr @v_unsigned_char, align 1
  store i8 %2, ptr @v_unsigned_char_array, align 1
  %3 = load i16, ptr @v_short, align 2
  store i16 %3, ptr @v_short_array, align 2
  %4 = load i16, ptr @v_signed_short, align 2
  store i16 %4, ptr @v_signed_short_array, align 2
  %5 = load i16, ptr @v_unsigned_short, align 2
  store i16 %5, ptr @v_unsigned_short_array, align 2
  %6 = load i32, ptr @v_int, align 4
  store i32 %6, ptr @v_int_array, align 4
  %7 = load i32, ptr @v_signed_int, align 4
  store i32 %7, ptr @v_signed_int_array, align 4
  %8 = load i32, ptr @v_unsigned_int, align 4
  store i32 %8, ptr @v_unsigned_int_array, align 4
  %9 = load i64, ptr @v_long, align 8
  store i64 %9, ptr @v_long_array, align 8
  %10 = load i64, ptr @v_signed_long, align 8
  store i64 %10, ptr @v_signed_long_array, align 8
  %11 = load i64, ptr @v_unsigned_long, align 8
  store i64 %11, ptr @v_unsigned_long_array, align 8
  %12 = load i64, ptr @v_long_long, align 8
  store i64 %12, ptr @v_long_long_array, align 8
  %13 = load i64, ptr @v_signed_long_long, align 8
  store i64 %13, ptr @v_signed_long_long_array, align 8
  %14 = load i64, ptr @v_unsigned_long_long, align 8
  store i64 %14, ptr @v_unsigned_long_long_array, align 8
  %15 = load float, ptr @v_float, align 4
  store float %15, ptr @v_float_array, align 4
  %16 = load double, ptr @v_double, align 8
  store double %16, ptr @v_double_array, align 8
  store ptr @v_char, ptr @v_char_pointer, align 8
  store ptr @v_signed_char, ptr @v_signed_char_pointer, align 8
  store ptr @v_unsigned_char, ptr @v_unsigned_char_pointer, align 8
  store ptr @v_short, ptr @v_short_pointer, align 8
  store ptr @v_signed_short, ptr @v_signed_short_pointer, align 8
  store ptr @v_unsigned_short, ptr @v_unsigned_short_pointer, align 8
  store ptr @v_int, ptr @v_int_pointer, align 8
  store ptr @v_signed_int, ptr @v_signed_int_pointer, align 8
  store ptr @v_unsigned_int, ptr @v_unsigned_int_pointer, align 8
  store ptr @v_long, ptr @v_long_pointer, align 8
  store ptr @v_signed_long, ptr @v_signed_long_pointer, align 8
  store ptr @v_unsigned_long, ptr @v_unsigned_long_pointer, align 8
  store ptr @v_long_long, ptr @v_long_long_pointer, align 8
  store ptr @v_signed_long_long, ptr @v_signed_long_long_pointer, align 8
  store ptr @v_unsigned_long_long, ptr @v_unsigned_long_long_pointer, align 8
  store ptr @v_float, ptr @v_float_pointer, align 8
  store ptr @v_double, ptr @v_double_pointer, align 8
  store i32 0, ptr @color, align 4
  store i32 2, ptr @clunker, align 4
  %17 = load ptr, ptr @s_link, align 8
  store ptr %17, ptr @u_link, align 8
  %18 = load i16, ptr @v_union, align 8
  store i16 %18, ptr @v_union2, align 8
  store i8 0, ptr @v_struct1, align 8
  store i8 0, ptr @v_struct2, align 8
  store i32 0, ptr @nested_su, align 8
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
