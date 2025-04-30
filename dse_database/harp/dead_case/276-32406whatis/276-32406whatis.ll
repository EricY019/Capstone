; ModuleID = 'code/276-32406whatis.c'
source_filename = "code/276-32406whatis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { %struct.link*, %struct.link* (%struct.link*, i32)*, [1 x [2 x [3 x %struct.t_struct]]] }
%struct.t_struct = type { i8, i16, i32, i64, i64, float, double }
%union.tu_link = type { [1 x [2 x [3 x %struct.t_struct]]] }
%union.t_union = type { i64 }
%union.anon = type { i64 }
%struct.anon = type { i8, i16, i32, i64, i64, float, double }
%struct.outer_struct = type { i32, %struct.inner_struct, %union.inner_union, i64 }
%struct.inner_struct = type { i32, i64 }
%union.inner_union = type { i64 }

@v_char = dso_local global i8 0, align 1
@v_signed_char = dso_local global i8 0, align 1
@v_unsigned_char = dso_local global i8 0, align 1
@v_short = dso_local global i16 0, align 2
@v_signed_short = dso_local global i16 0, align 2
@v_unsigned_short = dso_local global i16 0, align 2
@v_int = dso_local global i32 0, align 4
@v_signed_int = dso_local global i32 0, align 4
@v_unsigned_int = dso_local global i32 0, align 4
@v_long = dso_local global i64 0, align 8
@v_signed_long = dso_local global i64 0, align 8
@v_unsigned_long = dso_local global i64 0, align 8
@v_long_long = dso_local global i64 0, align 8
@v_signed_long_long = dso_local global i64 0, align 8
@v_unsigned_long_long = dso_local global i64 0, align 8
@v_float = dso_local global float 0.000000e+00, align 4
@v_double = dso_local global double 0.000000e+00, align 8
@v_char_array = dso_local global [2 x i8] zeroinitializer, align 1
@v_signed_char_array = dso_local global [2 x i8] zeroinitializer, align 1
@v_unsigned_char_array = dso_local global [2 x i8] zeroinitializer, align 1
@v_short_array = dso_local global [2 x i16] zeroinitializer, align 2
@v_signed_short_array = dso_local global [2 x i16] zeroinitializer, align 2
@v_unsigned_short_array = dso_local global [2 x i16] zeroinitializer, align 2
@v_int_array = dso_local global [2 x i32] zeroinitializer, align 4
@v_signed_int_array = dso_local global [2 x i32] zeroinitializer, align 4
@v_unsigned_int_array = dso_local global [2 x i32] zeroinitializer, align 4
@v_long_array = dso_local global [2 x i64] zeroinitializer, align 16
@v_signed_long_array = dso_local global [2 x i64] zeroinitializer, align 16
@v_unsigned_long_array = dso_local global [2 x i64] zeroinitializer, align 16
@v_long_long_array = dso_local global [2 x i64] zeroinitializer, align 16
@v_signed_long_long_array = dso_local global [2 x i64] zeroinitializer, align 16
@v_unsigned_long_long_array = dso_local global [2 x i64] zeroinitializer, align 16
@v_float_array = dso_local global [2 x float] zeroinitializer, align 4
@v_double_array = dso_local global [2 x double] zeroinitializer, align 16
@v_char_pointer = dso_local global i8* null, align 8
@v_signed_char_pointer = dso_local global i8* null, align 8
@v_unsigned_char_pointer = dso_local global i8* null, align 8
@v_short_pointer = dso_local global i16* null, align 8
@v_signed_short_pointer = dso_local global i16* null, align 8
@v_unsigned_short_pointer = dso_local global i16* null, align 8
@v_int_pointer = dso_local global i32* null, align 8
@v_signed_int_pointer = dso_local global i32* null, align 8
@v_unsigned_int_pointer = dso_local global i32* null, align 8
@v_long_pointer = dso_local global i64* null, align 8
@v_signed_long_pointer = dso_local global i64* null, align 8
@v_unsigned_long_pointer = dso_local global i64* null, align 8
@v_long_long_pointer = dso_local global i64* null, align 8
@v_signed_long_long_pointer = dso_local global i64* null, align 8
@v_unsigned_long_long_pointer = dso_local global i64* null, align 8
@v_float_pointer = dso_local global float* null, align 8
@v_double_pointer = dso_local global double* null, align 8
@color = dso_local global i32 0, align 4
@clunker = dso_local global i32 0, align 4
@s_link = dso_local global %struct.link* null, align 8
@u_link = dso_local global %union.tu_link zeroinitializer, align 8
@v_union = dso_local global %union.t_union zeroinitializer, align 8
@v_union2 = dso_local global %union.anon zeroinitializer, align 8
@v_struct1 = dso_local global %struct.t_struct zeroinitializer, align 8
@v_struct2 = dso_local global %struct.anon zeroinitializer, align 8
@nested_su = dso_local global %struct.outer_struct zeroinitializer, align 8
@a_char_addr = dso_local global i8* null, align 8
@a_ushort_addr = dso_local global i16* null, align 8
@a_slong_addr = dso_local global i64* null, align 8
@a_slong_long_addr = dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @v_char_func() #0 {
entry:
  ret i8 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @v_signed_char_func() #0 {
entry:
  ret i8 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @v_unsigned_char_func() #0 {
entry:
  ret i8 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @v_short_func() #0 {
entry:
  ret i16 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @v_signed_short_func() #0 {
entry:
  ret i16 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @v_unsigned_short_func() #0 {
entry:
  ret i16 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_int_func() #0 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_signed_int_func() #0 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_unsigned_int_func() #0 {
entry:
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @v_long_func() #0 {
entry:
  ret i64 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @v_signed_long_func() #0 {
entry:
  ret i64 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @v_unsigned_long_func() #0 {
entry:
  ret i64 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @v_long_long_func() #0 {
entry:
  ret i64 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @v_signed_long_long_func() #0 {
entry:
  ret i64 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @v_unsigned_long_long_func() #0 {
entry:
  ret i64 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @v_float_func() #0 {
entry:
  ret float 0.000000e+00
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @v_double_func() #0 {
entry:
  ret double 0.000000e+00
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i8 0, i8* @v_char, align 1
  store i8 1, i8* @v_signed_char, align 1
  store i8 2, i8* @v_unsigned_char, align 1
  store i16 3, i16* @v_short, align 2
  store i16 4, i16* @v_signed_short, align 2
  store i16 5, i16* @v_unsigned_short, align 2
  store i32 6, i32* @v_int, align 4
  store i32 7, i32* @v_signed_int, align 4
  store i32 8, i32* @v_unsigned_int, align 4
  store i64 9, i64* @v_long, align 8
  store i64 10, i64* @v_signed_long, align 8
  store i64 11, i64* @v_unsigned_long, align 8
  store i64 12, i64* @v_long_long, align 8
  store i64 13, i64* @v_signed_long_long, align 8
  store i64 14, i64* @v_unsigned_long_long, align 8
  store float 1.000000e+02, float* @v_float, align 4
  store double 2.000000e+02, double* @v_double, align 8
  %0 = load i8, i8* @v_char, align 1
  store i8 %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @v_char_array, i64 0, i64 0), align 1
  %1 = load i8, i8* @v_signed_char, align 1
  store i8 %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @v_signed_char_array, i64 0, i64 0), align 1
  %2 = load i8, i8* @v_unsigned_char, align 1
  store i8 %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @v_unsigned_char_array, i64 0, i64 0), align 1
  %3 = load i16, i16* @v_short, align 2
  store i16 %3, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @v_short_array, i64 0, i64 0), align 2
  %4 = load i16, i16* @v_signed_short, align 2
  store i16 %4, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @v_signed_short_array, i64 0, i64 0), align 2
  %5 = load i16, i16* @v_unsigned_short, align 2
  store i16 %5, i16* getelementptr inbounds ([2 x i16], [2 x i16]* @v_unsigned_short_array, i64 0, i64 0), align 2
  %6 = load i32, i32* @v_int, align 4
  store i32 %6, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @v_int_array, i64 0, i64 0), align 4
  %7 = load i32, i32* @v_signed_int, align 4
  store i32 %7, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @v_signed_int_array, i64 0, i64 0), align 4
  %8 = load i32, i32* @v_unsigned_int, align 4
  store i32 %8, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @v_unsigned_int_array, i64 0, i64 0), align 4
  %9 = load i64, i64* @v_long, align 8
  store i64 %9, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @v_long_array, i64 0, i64 0), align 16
  %10 = load i64, i64* @v_signed_long, align 8
  store i64 %10, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @v_signed_long_array, i64 0, i64 0), align 16
  %11 = load i64, i64* @v_unsigned_long, align 8
  store i64 %11, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @v_unsigned_long_array, i64 0, i64 0), align 16
  %12 = load i64, i64* @v_long_long, align 8
  store i64 %12, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @v_long_long_array, i64 0, i64 0), align 16
  %13 = load i64, i64* @v_signed_long_long, align 8
  store i64 %13, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @v_signed_long_long_array, i64 0, i64 0), align 16
  %14 = load i64, i64* @v_unsigned_long_long, align 8
  store i64 %14, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @v_unsigned_long_long_array, i64 0, i64 0), align 16
  %15 = load float, float* @v_float, align 4
  store float %15, float* getelementptr inbounds ([2 x float], [2 x float]* @v_float_array, i64 0, i64 0), align 4
  %16 = load double, double* @v_double, align 8
  store double %16, double* getelementptr inbounds ([2 x double], [2 x double]* @v_double_array, i64 0, i64 0), align 16
  store i8* @v_char, i8** @v_char_pointer, align 8
  store i8* @v_signed_char, i8** @v_signed_char_pointer, align 8
  store i8* @v_unsigned_char, i8** @v_unsigned_char_pointer, align 8
  store i16* @v_short, i16** @v_short_pointer, align 8
  store i16* @v_signed_short, i16** @v_signed_short_pointer, align 8
  store i16* @v_unsigned_short, i16** @v_unsigned_short_pointer, align 8
  store i32* @v_int, i32** @v_int_pointer, align 8
  store i32* @v_signed_int, i32** @v_signed_int_pointer, align 8
  store i32* @v_unsigned_int, i32** @v_unsigned_int_pointer, align 8
  store i64* @v_long, i64** @v_long_pointer, align 8
  store i64* @v_signed_long, i64** @v_signed_long_pointer, align 8
  store i64* @v_unsigned_long, i64** @v_unsigned_long_pointer, align 8
  store i64* @v_long_long, i64** @v_long_long_pointer, align 8
  store i64* @v_signed_long_long, i64** @v_signed_long_long_pointer, align 8
  store i64* @v_unsigned_long_long, i64** @v_unsigned_long_long_pointer, align 8
  store float* @v_float, float** @v_float_pointer, align 8
  store double* @v_double, double** @v_double_pointer, align 8
  store i32 0, i32* @color, align 4
  store i32 2, i32* @clunker, align 4
  %17 = load %struct.link*, %struct.link** @s_link, align 8
  store %struct.link* %17, %struct.link** bitcast (%union.tu_link* @u_link to %struct.link**), align 8
  %18 = load i16, i16* bitcast (%union.t_union* @v_union to i16*), align 8
  store i16 %18, i16* bitcast (%union.anon* @v_union2 to i16*), align 8
  store i8 0, i8* getelementptr inbounds (%struct.t_struct, %struct.t_struct* @v_struct1, i32 0, i32 0), align 8
  store i8 0, i8* getelementptr inbounds (%struct.anon, %struct.anon* @v_struct2, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.outer_struct, %struct.outer_struct* @nested_su, i32 0, i32 0), align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
