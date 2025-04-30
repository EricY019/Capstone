; ModuleID = 'code/110-14743fir.c'
source_filename = "code/110-14743fir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fir_int = dso_local global [36 x i64] [i64 4294967294, i64 1, i64 4, i64 3, i64 4294967294, i64 4294967292, i64 2, i64 7, i64 0, i64 4294967287, i64 4294967292, i64 12, i64 11, i64 4294967282, i64 4294967270, i64 15, i64 89, i64 127, i64 89, i64 15, i64 4294967270, i64 4294967282, i64 11, i64 12, i64 4294967292, i64 4294967287, i64 0, i64 7, i64 2, i64 4294967292, i64 4294967294, i64 3, i64 4, i64 1, i64 4294967294, i64 0], align 16
@in_data = dso_local global [701 x i64] [i64 0, i64 0, i64 0, i64 0, i64 127, i64 121, i64 114, i64 121, i64 13, i64 13, i64 0, i64 3, i64 5, i64 2, i64 3, i64 127, i64 127, i64 2, i64 126, i64 0, i64 1, i64 126, i64 1, i64 1, i64 127, i64 0, i64 127, i64 0, i64 2, i64 1, i64 1, i64 3, i64 1, i64 127, i64 1, i64 0, i64 1, i64 1, i64 125, i64 123, i64 115, i64 106, i64 119, i64 16, i64 14, i64 1, i64 5, i64 5, i64 5, i64 5, i64 125, i64 0, i64 2, i64 125, i64 0, i64 0, i64 126, i64 1, i64 126, i64 127, i64 3, i64 124, i64 126, i64 6, i64 0, i64 126, i64 3, i64 2, i64 127, i64 126, i64 127, i64 2, i64 1, i64 127, i64 1, i64 1, i64 0, i64 3, i64 0, i64 127, i64 2, i64 0, i64 127, i64 3, i64 1, i64 0, i64 0, i64 125, i64 0, i64 3, i64 0, i64 126, i64 127, i64 2, i64 1, i64 126, i64 0, i64 3, i64 127, i64 125, i64 1, i64 1, i64 1, i64 127, i64 0, i64 5, i64 0, i64 127, i64 2, i64 126, i64 127, i64 2, i64 1, i64 0, i64 126, i64 0, i64 5, i64 0, i64 127, i64 0, i64 126, i64 1, i64 0, i64 125, i64 1, i64 3, i64 127, i64 0, i64 0, i64 126, i64 2, i64 3, i64 126, i64 125, i64 114, i64 104, i64 113, i64 5, i64 12, i64 7, i64 2, i64 6, i64 13, i64 5, i64 125, i64 3, i64 2, i64 127, i64 0, i64 121, i64 122, i64 3, i64 126, i64 125, i64 0, i64 125, i64 2, i64 1, i64 125, i64 8, i64 3, i64 124, i64 6, i64 0, i64 122, i64 6, i64 2, i64 124, i64 3, i64 126, i64 121, i64 6, i64 5, i64 116, i64 127, i64 13, i64 122, i64 120, i64 6, i64 5, i64 1, i64 0, i64 125, i64 1, i64 4, i64 124, i64 127, i64 3, i64 127, i64 5, i64 3, i64 122, i64 6, i64 10, i64 118, i64 124, i64 10, i64 124, i64 127, i64 6, i64 121, i64 3, i64 12, i64 117, i64 120, i64 10, i64 0, i64 121, i64 3, i64 126, i64 124, i64 6, i64 0, i64 121, i64 2, i64 126, i64 127, i64 6, i64 118, i64 127, i64 13, i64 121, i64 127, i64 6, i64 121, i64 6, i64 3, i64 113, i64 6, i64 10, i64 115, i64 127, i64 10, i64 0, i64 127, i64 122, i64 124, i64 10, i64 0, i64 117, i64 127, i64 12, i64 10, i64 124, i64 121, i64 9, i64 13, i64 125, i64 122, i64 5, i64 11, i64 10, i64 121, i64 124, i64 22, i64 3, i64 114, i64 13, i64 7, i64 121, i64 12, i64 7, i64 122, i64 11, i64 7, i64 122, i64 10, i64 7, i64 121, i64 10, i64 5, i64 117, i64 6, i64 5, i64 121, i64 5, i64 6, i64 1, i64 6, i64 0, i64 122, i64 2, i64 7, i64 3, i64 125, i64 1, i64 10, i64 7, i64 2, i64 127, i64 127, i64 9, i64 7, i64 121, i64 121, i64 6, i64 8, i64 125, i64 122, i64 6, i64 12, i64 6, i64 125, i64 127, i64 13, i64 7, i64 121, i64 1, i64 6, i64 127, i64 127, i64 2, i64 3, i64 1, i64 126, i64 1, i64 1, i64 125, i64 1, i64 0, i64 125, i64 6, i64 3, i64 125, i64 5, i64 7, i64 127, i64 124, i64 1, i64 6, i64 6, i64 124, i64 122, i64 7, i64 10, i64 0, i64 120, i64 1, i64 8, i64 0, i64 121, i64 122, i64 4, i64 10, i64 0, i64 120, i64 1, i64 6, i64 122, i64 117, i64 122, i64 0, i64 0, i64 121, i64 118, i64 127, i64 7, i64 0, i64 122, i64 125, i64 2, i64 4, i64 124, i64 122, i64 2, i64 5, i64 124, i64 122, i64 125, i64 127, i64 0, i64 120, i64 117, i64 127, i64 0, i64 121, i64 120, i64 121, i64 1, i64 3, i64 121, i64 121, i64 0, i64 0, i64 127, i64 127, i64 121, i64 127, i64 2, i64 122, i64 124, i64 125, i64 124, i64 127, i64 125, i64 121, i64 125, i64 0, i64 121, i64 122, i64 124, i64 125, i64 0, i64 125, i64 125, i64 0, i64 0, i64 0, i64 0, i64 125, i64 125, i64 0, i64 125, i64 126, i64 0, i64 126, i64 3, i64 3, i64 125, i64 1, i64 5, i64 0, i64 126, i64 125, i64 127, i64 3, i64 125, i64 121, i64 1, i64 2, i64 125, i64 127, i64 1, i64 0, i64 0, i64 127, i64 127, i64 126, i64 127, i64 0, i64 127, i64 0, i64 124, i64 125, i64 0, i64 121, i64 120, i64 124, i64 124, i64 123, i64 123, i64 125, i64 127, i64 0, i64 0, i64 127, i64 0, i64 1, i64 2, i64 0, i64 127, i64 0, i64 0, i64 0, i64 127, i64 126, i64 0, i64 0, i64 127, i64 0, i64 2, i64 1, i64 2, i64 6, i64 5, i64 3, i64 6, i64 8, i64 5, i64 2, i64 1, i64 1, i64 3, i64 0, i64 125, i64 127, i64 0, i64 127, i64 126, i64 0, i64 2, i64 3, i64 2, i64 1, i64 2, i64 3, i64 1, i64 124, i64 125, i64 0, i64 0, i64 126, i64 124, i64 127, i64 1, i64 0, i64 126, i64 124, i64 127, i64 1, i64 0, i64 126, i64 127, i64 2, i64 3, i64 1, i64 0, i64 4, i64 6, i64 5, i64 6, i64 7, i64 10, i64 10, i64 4, i64 2, i64 5, i64 8, i64 9, i64 8, i64 7, i64 12, i64 20, i64 20, i64 16, i64 14, i64 20, i64 21, i64 15, i64 9, i64 7, i64 4, i64 126, i64 118, i64 100, i64 65, i64 72, i64 125, i64 108, i64 61, i64 103, i64 16, i64 6, i64 125, i64 117, i64 7, i64 29, i64 0, i64 108, i64 2, i64 125, i64 120, i64 119, i64 111, i64 119, i64 1, i64 0, i64 2, i64 7, i64 10, i64 28, i64 28, i64 23, i64 35, i64 47, i64 65, i64 67, i64 79, i64 85, i64 88, i64 126, i64 2, i64 76, i64 16, i64 105, i64 44, i64 13, i64 116, i64 42, i64 116, i64 99, i64 41, i64 124, i64 94, i64 33, i64 53, i64 70, i64 36, i64 103, i64 53, i64 60, i64 60, i64 38, i64 38, i64 47, i64 71, i64 100, i64 4, i64 19, i64 24, i64 39, i64 43, i64 48, i64 27, i64 127, i64 120, i64 114, i64 104, i64 92, i64 90, i64 104, i64 124, i64 3, i64 13, i64 38, i64 65, i64 81, i64 90, i64 106, i64 108, i64 84, i64 120, i64 9, i64 69, i64 121, i64 31, i64 11, i64 46, i64 96, i64 11, i64 102, i64 127, i64 104, i64 119, i64 78, i64 70, i64 74, i64 59, i64 18, i64 91, i64 55, i64 49, i64 33, i64 11, i64 18, i64 46, i64 87, i64 126, i64 25, i64 34, i64 43, i64 63, i64 58, i64 37, i64 11, i64 121, i64 113, i64 104, i64 97, i64 92, i64 102, i64 114, i64 6, i64 22, i64 41, i64 65, i64 94, i64 109, i64 102, i64 96, i64 110, i64 23, i64 72, i64 54, i64 18, i64 23, i64 47, i64 99, i64 120, i64 92, i64 119, i64 108, i64 117, i64 65, i64 73, i64 79, i64 59, i64 11, i64 84, i64 55, i64 0], align 16
@out_data = dso_local global <{ [700 x i64], [20 x i64] }> <{ [700 x i64] [i64 3, i64 4294967290, i64 4294967293, i64 29, i64 88, i64 137, i64 135, i64 86, i64 32, i64 7, i64 7, i64 4, i64 4294967289, i64 0, i64 40, i64 91, i64 107, i64 79, i64 43, i64 33, i64 45, i64 48, i64 39, i64 39, i64 55, i64 71, i64 66, i64 39, i64 8, i64 4294967284, i64 4294967285, i64 13, i64 46, i64 59, i64 37, i64 0, i64 4294967288, i64 29, i64 89, i64 131, i64 135, i64 111, i64 78, i64 47, i64 18, i64 4294967295, i64 4294967291, i64 4, i64 21, i64 35, i64 45, i64 49, i64 47, i64 41, i64 38, i64 42, i64 54, i64 72, i64 88, i64 95, i64 90, i64 79, i64 70, i64 65, i64 50, i64 27, i64 23, i64 55, i64 105, i64 123, i64 89, i64 47, i64 36, i64 48, i64 42, i64 8, i64 4294967286, i64 7, i64 36, i64 49, i64 47, i64 51, i64 50, i64 30, i64 4, i64 7, i64 35, i64 51, i64 33, i64 14, i64 30, i64 74, i64 97, i64 75, i64 33, i64 14, i64 34, i64 73, i64 94, i64 77, i64 37, i64 11, i64 24, i64 50, i64 51, i64 21, i64 5, i64 41, i64 100, i64 118, i64 77, i64 22, i64 9, i64 38, i64 55, i64 35, i64 11, i64 21, i64 60, i64 82, i64 64, i64 35, i64 29, i64 45, i64 54, i64 45, i64 36, i64 41, i64 50, i64 44, i64 33, i64 43, i64 80, i64 123, i64 141, i64 115, i64 71, i64 34, i64 15, i64 7, i64 4294967295, i64 0, i64 19, i64 45, i64 54, i64 43, i64 35, i64 50, i64 78, i64 92, i64 85, i64 79, i64 85, i64 92, i64 80, i64 52, i64 32, i64 34, i64 50, i64 56, i64 47, i64 37, i64 42, i64 53, i64 50, i64 35, i64 31, i64 54, i64 87, i64 96, i64 76, i64 49, i64 45, i64 64, i64 87, i64 103, i64 103, i64 76, i64 33, i64 4, i64 8, i64 32, i64 48, i64 44, i64 51, i64 78, i64 97, i64 86, i64 57, i64 38, i64 38, i64 43, i64 46, i64 56, i64 74, i64 87, i64 88, i64 92, i64 95, i64 80, i64 49, i64 29, i64 49, i64 88, i64 93, i64 55, i64 22, i64 35, i64 85, i64 113, i64 86, i64 40, i64 24, i64 48, i64 81, i64 96, i64 92, i64 82, i64 79, i64 84, i64 94, i64 98, i64 87, i64 69, i64 58, i64 53, i64 38, i64 23, i64 35, i64 71, i64 93, i64 72, i64 39, i64 48, i64 97, i64 121, i64 90, i64 49, i64 45, i64 69, i64 79, i64 65, i64 62, i64 72, i64 72, i64 58, i64 61, i64 83, i64 85, i64 47, i64 13, i64 31, i64 85, i64 105, i64 71, i64 30, i64 28, i64 50, i64 60, i64 49, i64 40, i64 45, i64 52, i64 50, i64 46, i64 46, i64 47, i64 45, i64 47, i64 50, i64 47, i64 38, i64 35, i64 48, i64 61, i64 44, i64 3, i64 4294967279, i64 10, i64 52, i64 57, i64 24, i64 10, i64 40, i64 66, i64 40, i64 4294967291, i64 4294967294, i64 55, i64 97, i64 83, i64 50, i64 53, i64 75, i64 76, i64 54, i64 54, i64 78, i64 86, i64 51, i64 14, i64 27, i64 78, i64 105, i64 81, i64 34, i64 13, i64 36, i64 75, i64 94, i64 77, i64 42, i64 18, i64 22, i64 41, i64 53, i64 51, i64 42, i64 37, i64 38, i64 47, i64 56, i64 49, i64 29, i64 29, i64 66, i64 104, i64 88, i64 26, i64 4294967295, i64 42, i64 99, i64 95, i64 39, i64 10, i64 34, i64 52, i64 30, i64 11, i64 39, i64 88, i64 90, i64 46, i64 16, i64 27, i64 40, i64 35, i64 49, i64 96, i64 124, i64 86, i64 27, i64 29, i64 93, i64 129, i64 92, i64 41, i64 44, i64 78, i64 81, i64 53, i64 51, i64 77, i64 83, i64 50, i64 36, i64 80, i64 134, i64 133, i64 90, i64 70, i64 93, i64 107, i64 91, i64 79, i64 99, i64 113, i64 84, i64 42, i64 44, i64 80, i64 86, i64 48, i64 30, i64 77, i64 141, i64 144, i64 91, i64 58, i64 85, i64 128, i64 137, i64 120, i64 123, i64 138, i64 125, i64 83, i64 62, i64 91, i64 131, i64 127, i64 89, i64 74, i64 91, i64 94, i64 46, i64 4294967284, i64 4294967283, i64 45, i64 95, i64 97, i64 80, i64 84, i64 94, i64 80, i64 48, i64 38, i64 52, i64 50, i64 24, i64 9, i64 39, i64 91, i64 116, i64 109, i64 94, i64 82, i64 64, i64 45, i64 52, i64 84, i64 92, i64 49, i64 0, i64 10, i64 86, i64 156, i64 150, i64 89, i64 46, i64 56, i64 87, i64 94, i64 75, i64 70, i64 94, i64 120, i64 124, i64 119, i64 128, i64 141, i64 125, i64 79, i64 43, i64 43, i64 51, i64 30, i64 0, i64 6, i64 40, i64 55, i64 29, i64 9, i64 36, i64 83, i64 93, i64 61, i64 31, i64 33, i64 41, i64 24, i64 4294967292, i64 4294967285, i64 6, i64 18, i64 9, i64 4294967293, i64 1, i64 15, i64 12, i64 4294967290, i64 4294967282, i64 9, i64 50, i64 77, i64 86, i64 92, i64 98, i64 83, i64 39, i64 0, i64 4294967292, i64 12, i64 8, i64 4294967280, i64 4294967289, i64 54, i64 106, i64 85, i64 28, i64 27, i64 96, i64 142, i64 97, i64 21, i64 20, i64 94, i64 140, i64 97, i64 29, i64 26, i64 82, i64 107, i64 61, i64 4294967291, i64 4294967272, i64 1, i64 21, i64 12, i64 4294967294, i64 0, i64 13, i64 17, i64 9, i64 1, i64 1, i64 7, i64 12, i64 11, i64 7, i64 6, i64 13, i64 22, i64 23, i64 16, i64 12, i64 19, i64 28, i64 19, i64 0, i64 0, i64 38, i64 95, i64 123, i64 104, i64 72, i64 72, i64 104, i64 125, i64 96, i64 45, i64 25, i64 55, i64 92, i64 90, i64 49, i64 15, i64 19, i64 49, i64 76, i64 94, i64 113, i64 131, i64 127, i64 88, i64 32, i64 4294967293, i64 4294967288, i64 9, i64 24, i64 25, i64 22, i64 25, i64 39, i64 55, i64 61, i64 66, i64 79, i64 98, i64 101, i64 79, i64 51, i64 44, i64 54, i64 61, i64 56, i64 52, i64 64, i64 84, i64 93, i64 91, i64 88, i64 89, i64 83, i64 65, i64 50, i64 51, i64 63, i64 74, i64 75, i64 67, i64 51, i64 37, i64 40, i64 61, i64 79, i64 68, i64 35, i64 14, i64 22, i64 41, i64 44, i64 40, i64 57, i64 99, i64 132, i64 125, i64 95, i64 86, i64 105, i64 115, i64 86, i64 36, i64 12, i64 30, i64 64, i64 86, i64 96, i64 105, i64 110, i64 99, i64 78, i64 66, i64 68, i64 71, i64 59, i64 42, i64 34, i64 45, i64 69, i64 93, i64 112, i64 119, i64 109, i64 91, i64 74, i64 63, i64 55, i64 50, i64 57, i64 67, i64 61, i64 32, i64 5, i64 16, i64 63, i64 100, i64 90, i64 52, i64 33, i64 46, i64 62, i64 51, i64 34, i64 48, i64 89, i64 117, i64 113, i64 96, i64 97, i64 103, i64 85, i64 45, i64 18, i64 29, i64 67, i64 101, i64 113, i64 108, i64 95, i64 83, i64 71, i64 57, i64 41, i64 28, i64 30, i64 53, i64 86, i64 111, i64 116, i64 111, i64 106, i64 102, i64 92, i64 75, i64 58, i64 51, i64 54, i64 56, i64 44], [20 x i64] zeroinitializer }>, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %output = alloca [720 x i64], align 16
  store i32 0, i32* %retval, align 4
  %arraydecay = getelementptr inbounds [720 x i64], [720 x i64]* %output, i64 0, i64 0
  call void @fir_filter_int(i64* getelementptr inbounds ([701 x i64], [701 x i64]* @in_data, i64 0, i64 0), i64* %arraydecay, i64 700, i64* getelementptr inbounds ([36 x i64], [36 x i64]* @fir_int, i64 0, i64 0), i64 35, i64 285)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fir_filter_int(i64* %in, i64* %out, i64 %in_len, i64* %coef, i64 %coef_len, i64 %scale) #0 {
entry:
  %in.addr = alloca i64*, align 8
  %out.addr = alloca i64*, align 8
  %in_len.addr = alloca i64, align 8
  %coef.addr = alloca i64*, align 8
  %coef_len.addr = alloca i64, align 8
  %scale.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %coef_len2 = alloca i64, align 8
  %acc_length = alloca i64, align 8
  %acc = alloca i64, align 8
  %in_ptr = alloca i64*, align 8
  %data_ptr = alloca i64*, align 8
  %coef_start = alloca i64*, align 8
  %coef_ptr = alloca i64*, align 8
  %in_end = alloca i64*, align 8
  store i64* %in, i64** %in.addr, align 8
  store i64* %out, i64** %out.addr, align 8
  store i64 %in_len, i64* %in_len.addr, align 8
  store i64* %coef, i64** %coef.addr, align 8
  store i64 %coef_len, i64* %coef_len.addr, align 8
  store i64 %scale, i64* %scale.addr, align 8
  %0 = load i64*, i64** %coef.addr, align 8
  store i64* %0, i64** %coef_start, align 8
  %1 = load i64, i64* %coef_len.addr, align 8
  %add = add nsw i64 %1, 1
  %shr = ashr i64 %add, 1
  store i64 %shr, i64* %coef_len2, align 8
  %2 = load i64*, i64** %in.addr, align 8
  %3 = load i64, i64* %in_len.addr, align 8
  %add.ptr = getelementptr inbounds i64, i64* %2, i64 %3
  %add.ptr1 = getelementptr inbounds i64, i64* %add.ptr, i64 -1
  store i64* %add.ptr1, i64** %in_end, align 8
  %4 = load i64*, i64** %in.addr, align 8
  %5 = load i64, i64* %coef_len2, align 8
  %add.ptr2 = getelementptr inbounds i64, i64* %4, i64 %5
  %add.ptr3 = getelementptr inbounds i64, i64* %add.ptr2, i64 -1
  store i64* %add.ptr3, i64** %in_ptr, align 8
  %6 = load i64, i64* %coef_len2, align 8
  store i64 %6, i64* %acc_length, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %7 = load i64, i64* %i, align 8
  %8 = load i64, i64* %in_len.addr, align 8
  %cmp = icmp slt i64 %7, %8
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %9 = load i64*, i64** %in_ptr, align 8
  store i64* %9, i64** %data_ptr, align 8
  %10 = load i64*, i64** %coef_start, align 8
  store i64* %10, i64** %coef_ptr, align 8
  %11 = load i64*, i64** %coef_ptr, align 8
  %incdec.ptr = getelementptr inbounds i64, i64* %11, i32 1
  store i64* %incdec.ptr, i64** %coef_ptr, align 8
  %12 = load i64, i64* %11, align 8
  %13 = load i64*, i64** %data_ptr, align 8
  %incdec.ptr4 = getelementptr inbounds i64, i64* %13, i32 -1
  store i64* %incdec.ptr4, i64** %data_ptr, align 8
  %14 = load i64, i64* %13, align 8
  %mul = mul nsw i64 %12, %14
  store i64 %mul, i64* %acc, align 8
  store i64 1, i64* %j, align 8
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %15 = load i64, i64* %j, align 8
  %16 = load i64, i64* %acc_length, align 8
  %cmp6 = icmp slt i64 %15, %16
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %17 = load i64*, i64** %coef_ptr, align 8
  %incdec.ptr8 = getelementptr inbounds i64, i64* %17, i32 1
  store i64* %incdec.ptr8, i64** %coef_ptr, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64*, i64** %data_ptr, align 8
  %incdec.ptr9 = getelementptr inbounds i64, i64* %19, i32 -1
  store i64* %incdec.ptr9, i64** %data_ptr, align 8
  %20 = load i64, i64* %19, align 8
  %mul10 = mul nsw i64 %18, %20
  %21 = load i64, i64* %acc, align 8
  %add11 = add nsw i64 %21, %mul10
  store i64 %add11, i64* %acc, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %22 = load i64, i64* %j, align 8
  %inc = add nsw i64 %22, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond5, !llvm.loop !4

for.end:                                          ; preds = %for.cond5
  %23 = load i64, i64* %acc, align 8
  %24 = load i64, i64* %scale.addr, align 8
  %div = sdiv i64 %23, %24
  %conv = trunc i64 %div to i32
  %conv12 = sext i32 %conv to i64
  %25 = load i64*, i64** %out.addr, align 8
  %incdec.ptr13 = getelementptr inbounds i64, i64* %25, i32 1
  store i64* %incdec.ptr13, i64** %out.addr, align 8
  store i64 %conv12, i64* %25, align 8
  %26 = load i64*, i64** %in_ptr, align 8
  %27 = load i64*, i64** %in_end, align 8
  %cmp14 = icmp eq i64* %26, %27
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %28 = load i64, i64* %acc_length, align 8
  %dec = add nsw i64 %28, -1
  store i64 %dec, i64* %acc_length, align 8
  %29 = load i64*, i64** %coef_start, align 8
  %incdec.ptr16 = getelementptr inbounds i64, i64* %29, i32 1
  store i64* %incdec.ptr16, i64** %coef_start, align 8
  br label %if.end22

if.else:                                          ; preds = %for.end
  %30 = load i64, i64* %acc_length, align 8
  %31 = load i64, i64* %coef_len.addr, align 8
  %cmp17 = icmp slt i64 %30, %31
  br i1 %cmp17, label %if.then19, label %if.end

if.then19:                                        ; preds = %if.else
  %32 = load i64, i64* %acc_length, align 8
  %inc20 = add nsw i64 %32, 1
  store i64 %inc20, i64* %acc_length, align 8
  br label %if.end

if.end:                                           ; preds = %if.then19, %if.else
  %33 = load i64*, i64** %in_ptr, align 8
  %incdec.ptr21 = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %incdec.ptr21, i64** %in_ptr, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.end, %if.then
  br label %for.inc23

for.inc23:                                        ; preds = %if.end22
  %34 = load i64, i64* %i, align 8
  %inc24 = add nsw i64 %34, 1
  store i64 %inc24, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end25:                                        ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
