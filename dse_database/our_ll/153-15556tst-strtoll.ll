; ModuleID = 'code/153-15556tst-strtoll.c'
source_filename = "code/153-15556tst-strtoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltest = type { i8*, i64, i32, i8, i32 }

@tests = internal constant [254 x %struct.ltest] [%struct.ltest { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i64 123, i32 0, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i64 123, i32 0, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i64 123, i32 0, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i64 123, i32 0, i8 32, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i64 -17, i32 0, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i64 83, i32 0, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i64 83, i32 0, i8 97, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i64 83, i32 0, i8 57, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i64 291, i32 0, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i64 -291, i32 0, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i64 0, i32 0, i8 120, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i64 4671, i32 0, i8 103, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i64 291, i32 16, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i64 291, i32 16, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i64 83, i32 8, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i64 83, i32 8, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i64 123, i32 10, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i64 0, i32 10, i8 120, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i64 43981, i32 16, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i64 43981, i32 16, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i64 43981, i32 16, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i64 43981, i32 16, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i64 1189, i32 35, i8 122, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i64 1259, i32 36, i8 33, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i64 -1259, i32 36, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i64 135164, i32 20, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i64 99000000001, i32 0, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i64 9223372036854775807, i32 0, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), i64 9223372036854775807, i32 0, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i32 0, i32 0), i64 9223372036854775807, i32 0, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), i64 9223372036854775807, i32 0, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i64 -2147483648, i32 0, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0), i64 -9223372036854775808, i32 0, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i32 0, i32 0), i64 -9223372036854775808, i32 0, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i32 0, i32 0), i64 9223372036854775807, i32 16, i8 122, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i32 0, i32 0), i64 9223372036854775807, i32 0, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.39, i32 0, i32 0), i64 9223372036854775807, i32 2, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.40, i32 0, i32 0), i64 9223372036854775807, i32 2, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.41, i32 0, i32 0), i64 9223372036854775807, i32 3, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i32 0, i32 0), i64 9223372036854775807, i32 3, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.43, i32 0, i32 0), i64 9223372036854775807, i32 4, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i32 0, i32 0), i64 9223372036854775807, i32 4, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.45, i32 0, i32 0), i64 9223372036854775807, i32 5, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.46, i32 0, i32 0), i64 9223372036854775807, i32 5, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.47, i32 0, i32 0), i64 9223372036854775807, i32 6, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i32 0, i32 0), i64 9223372036854775807, i32 6, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i32 0, i32 0), i64 9223372036854775807, i32 7, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.50, i32 0, i32 0), i64 9223372036854775807, i32 7, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51, i32 0, i32 0), i64 9223372036854775807, i32 8, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i32 0, i32 0), i64 9223372036854775807, i32 8, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i32 0, i32 0), i64 9223372036854775807, i32 9, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i32 0, i32 0), i64 9223372036854775807, i32 9, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i64 9223372036854775807, i32 10, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i32 0, i32 0), i64 9223372036854775807, i32 10, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.55, i32 0, i32 0), i64 9223372036854775807, i32 11, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.56, i32 0, i32 0), i64 9223372036854775807, i32 11, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i32 0, i32 0), i64 9223372036854775807, i32 12, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0), i64 9223372036854775807, i32 12, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.59, i32 0, i32 0), i64 9223372036854775807, i32 13, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.60, i32 0, i32 0), i64 9223372036854775807, i32 13, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.61, i32 0, i32 0), i64 9223372036854775807, i32 14, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i32 0, i32 0), i64 9223372036854775807, i32 14, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i32 0, i32 0), i64 9223372036854775807, i32 15, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.64, i32 0, i32 0), i64 9223372036854775807, i32 15, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i32 0, i32 0), i64 9223372036854775807, i32 16, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i32 0, i32 0), i64 9223372036854775807, i32 16, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.67, i32 0, i32 0), i64 9223372036854775807, i32 17, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.68, i32 0, i32 0), i64 9223372036854775807, i32 17, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.69, i32 0, i32 0), i64 9223372036854775807, i32 18, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), i64 9223372036854775807, i32 18, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i32 0, i32 0), i64 9223372036854775807, i32 19, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.72, i32 0, i32 0), i64 9223372036854775807, i32 19, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i32 0, i32 0), i64 9223372036854775807, i32 20, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i32 0, i32 0), i64 9223372036854775807, i32 20, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.75, i32 0, i32 0), i64 9223372036854775807, i32 21, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.76, i32 0, i32 0), i64 9223372036854775807, i32 21, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i32 0, i32 0), i64 9223372036854775807, i32 22, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.78, i32 0, i32 0), i64 9223372036854775807, i32 22, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i32 0, i32 0), i64 9223372036854775807, i32 23, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.80, i32 0, i32 0), i64 9223372036854775807, i32 23, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.81, i32 0, i32 0), i64 9223372036854775807, i32 24, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i32 0, i32 0), i64 9223372036854775807, i32 24, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.83, i32 0, i32 0), i64 9223372036854775807, i32 25, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0), i64 9223372036854775807, i32 25, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.85, i32 0, i32 0), i64 9223372036854775807, i32 26, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.86, i32 0, i32 0), i64 9223372036854775807, i32 26, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.87, i32 0, i32 0), i64 9223372036854775807, i32 27, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.88, i32 0, i32 0), i64 9223372036854775807, i32 27, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.89, i32 0, i32 0), i64 9223372036854775807, i32 28, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.90, i32 0, i32 0), i64 9223372036854775807, i32 28, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.91, i32 0, i32 0), i64 9223372036854775807, i32 29, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.92, i32 0, i32 0), i64 9223372036854775807, i32 29, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.93, i32 0, i32 0), i64 9223372036854775807, i32 30, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.94, i32 0, i32 0), i64 9223372036854775807, i32 30, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.95, i32 0, i32 0), i64 9223372036854775807, i32 31, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.96, i32 0, i32 0), i64 9223372036854775807, i32 31, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.97, i32 0, i32 0), i64 9223372036854775807, i32 32, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.98, i32 0, i32 0), i64 9223372036854775807, i32 32, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.99, i32 0, i32 0), i64 9223372036854775807, i32 33, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.100, i32 0, i32 0), i64 9223372036854775807, i32 33, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.101, i32 0, i32 0), i64 9223372036854775807, i32 34, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.102, i32 0, i32 0), i64 9223372036854775807, i32 34, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.103, i32 0, i32 0), i64 9223372036854775807, i32 35, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.104, i32 0, i32 0), i64 9223372036854775807, i32 35, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.105, i32 0, i32 0), i64 9223372036854775807, i32 36, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.106, i32 0, i32 0), i64 9223372036854775807, i32 36, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.107, i32 0, i32 0), i64 -9223372036854775808, i32 2, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.108, i32 0, i32 0), i64 -9223372036854775808, i32 2, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.109, i32 0, i32 0), i64 -9223372036854775808, i32 3, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.110, i32 0, i32 0), i64 -9223372036854775808, i32 3, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.111, i32 0, i32 0), i64 -9223372036854775808, i32 4, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.112, i32 0, i32 0), i64 -9223372036854775808, i32 4, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.113, i32 0, i32 0), i64 -9223372036854775808, i32 5, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.114, i32 0, i32 0), i64 -9223372036854775808, i32 5, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.115, i32 0, i32 0), i64 -9223372036854775808, i32 6, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.116, i32 0, i32 0), i64 -9223372036854775808, i32 6, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.117, i32 0, i32 0), i64 -9223372036854775808, i32 7, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.118, i32 0, i32 0), i64 -9223372036854775808, i32 7, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.119, i32 0, i32 0), i64 -9223372036854775808, i32 8, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.120, i32 0, i32 0), i64 -9223372036854775808, i32 8, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.121, i32 0, i32 0), i64 -9223372036854775808, i32 9, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.122, i32 0, i32 0), i64 -9223372036854775808, i32 9, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i32 0, i32 0), i64 -9223372036854775808, i32 10, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i32 0, i32 0), i64 -9223372036854775808, i32 10, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.123, i32 0, i32 0), i64 -9223372036854775808, i32 11, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.124, i32 0, i32 0), i64 -9223372036854775808, i32 11, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.125, i32 0, i32 0), i64 -9223372036854775808, i32 12, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.126, i32 0, i32 0), i64 -9223372036854775808, i32 12, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.127, i32 0, i32 0), i64 -9223372036854775808, i32 13, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.128, i32 0, i32 0), i64 -9223372036854775808, i32 13, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.129, i32 0, i32 0), i64 -9223372036854775808, i32 14, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.130, i32 0, i32 0), i64 -9223372036854775808, i32 14, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.131, i32 0, i32 0), i64 -9223372036854775808, i32 15, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.132, i32 0, i32 0), i64 -9223372036854775808, i32 15, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.133, i32 0, i32 0), i64 -9223372036854775808, i32 16, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.134, i32 0, i32 0), i64 -9223372036854775808, i32 16, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.135, i32 0, i32 0), i64 -9223372036854775808, i32 17, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.136, i32 0, i32 0), i64 -9223372036854775808, i32 17, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.137, i32 0, i32 0), i64 -9223372036854775808, i32 18, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.138, i32 0, i32 0), i64 -9223372036854775808, i32 18, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.139, i32 0, i32 0), i64 -9223372036854775808, i32 19, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.140, i32 0, i32 0), i64 -9223372036854775808, i32 19, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.141, i32 0, i32 0), i64 -9223372036854775808, i32 20, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.142, i32 0, i32 0), i64 -9223372036854775808, i32 20, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.143, i32 0, i32 0), i64 -9223372036854775808, i32 21, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.144, i32 0, i32 0), i64 -9223372036854775808, i32 21, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.145, i32 0, i32 0), i64 -9223372036854775808, i32 22, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.146, i32 0, i32 0), i64 -9223372036854775808, i32 22, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.147, i32 0, i32 0), i64 -9223372036854775808, i32 23, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.148, i32 0, i32 0), i64 -9223372036854775808, i32 23, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.149, i32 0, i32 0), i64 -9223372036854775808, i32 24, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.150, i32 0, i32 0), i64 -9223372036854775808, i32 24, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.151, i32 0, i32 0), i64 -9223372036854775808, i32 25, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.152, i32 0, i32 0), i64 -9223372036854775808, i32 25, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.153, i32 0, i32 0), i64 -9223372036854775808, i32 26, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.154, i32 0, i32 0), i64 -9223372036854775808, i32 26, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.155, i32 0, i32 0), i64 -9223372036854775808, i32 27, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.156, i32 0, i32 0), i64 -9223372036854775808, i32 27, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.157, i32 0, i32 0), i64 -9223372036854775808, i32 28, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.158, i32 0, i32 0), i64 -9223372036854775808, i32 28, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.159, i32 0, i32 0), i64 -9223372036854775808, i32 29, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.160, i32 0, i32 0), i64 -9223372036854775808, i32 29, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.161, i32 0, i32 0), i64 -9223372036854775808, i32 30, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.162, i32 0, i32 0), i64 -9223372036854775808, i32 30, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.163, i32 0, i32 0), i64 -9223372036854775808, i32 31, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.164, i32 0, i32 0), i64 -9223372036854775808, i32 31, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.165, i32 0, i32 0), i64 -9223372036854775808, i32 32, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.166, i32 0, i32 0), i64 -9223372036854775808, i32 32, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.167, i32 0, i32 0), i64 -9223372036854775808, i32 33, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.168, i32 0, i32 0), i64 -9223372036854775808, i32 33, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.169, i32 0, i32 0), i64 -9223372036854775808, i32 34, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.170, i32 0, i32 0), i64 -9223372036854775808, i32 34, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.171, i32 0, i32 0), i64 -9223372036854775808, i32 35, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.172, i32 0, i32 0), i64 -9223372036854775808, i32 35, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.173, i32 0, i32 0), i64 -9223372036854775808, i32 36, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.174, i32 0, i32 0), i64 -9223372036854775808, i32 36, i8 0, i32 34 }, %struct.ltest zeroinitializer, %struct.ltest { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.175, i32 0, i32 0), i64 0, i32 0, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.176, i32 0, i32 0), i64 4294967295, i32 0, i8 103, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.177, i32 0, i32 0), i64 -1, i32 0, i8 103, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.178, i32 0, i32 0), i64 -1147797409030816545, i32 0, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.179, i32 0, i32 0), i64 -1, i32 0, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.180, i32 0, i32 0), i64 -1, i32 0, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.181, i32 0, i32 0), i64 -1, i32 2, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.182, i32 0, i32 0), i64 -1, i32 2, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.183, i32 0, i32 0), i64 -1, i32 3, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.184, i32 0, i32 0), i64 -1, i32 3, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.185, i32 0, i32 0), i64 -1, i32 4, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.186, i32 0, i32 0), i64 -1, i32 4, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.187, i32 0, i32 0), i64 -1, i32 5, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.188, i32 0, i32 0), i64 -1, i32 5, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.189, i32 0, i32 0), i64 -1, i32 6, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.190, i32 0, i32 0), i64 -1, i32 6, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.191, i32 0, i32 0), i64 -1, i32 7, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.192, i32 0, i32 0), i64 -1, i32 7, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.193, i32 0, i32 0), i64 -1, i32 8, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.194, i32 0, i32 0), i64 -1, i32 8, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.195, i32 0, i32 0), i64 -1, i32 9, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.196, i32 0, i32 0), i64 -1, i32 9, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.197, i32 0, i32 0), i64 -1, i32 10, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.198, i32 0, i32 0), i64 -1, i32 10, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.199, i32 0, i32 0), i64 -1, i32 11, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.200, i32 0, i32 0), i64 -1, i32 11, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.201, i32 0, i32 0), i64 -1, i32 12, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.202, i32 0, i32 0), i64 -1, i32 12, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.203, i32 0, i32 0), i64 -1, i32 13, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.204, i32 0, i32 0), i64 -1, i32 13, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.205, i32 0, i32 0), i64 -1, i32 14, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.206, i32 0, i32 0), i64 -1, i32 14, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.207, i32 0, i32 0), i64 -1, i32 15, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.208, i32 0, i32 0), i64 -1, i32 15, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.209, i32 0, i32 0), i64 -1, i32 16, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.210, i32 0, i32 0), i64 -1, i32 16, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.211, i32 0, i32 0), i64 -1, i32 17, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.212, i32 0, i32 0), i64 -1, i32 17, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.213, i32 0, i32 0), i64 -1, i32 18, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.214, i32 0, i32 0), i64 -1, i32 18, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.215, i32 0, i32 0), i64 -1, i32 19, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.216, i32 0, i32 0), i64 -1, i32 19, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.217, i32 0, i32 0), i64 -1, i32 20, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.218, i32 0, i32 0), i64 -1, i32 20, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.219, i32 0, i32 0), i64 -1, i32 21, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.220, i32 0, i32 0), i64 -1, i32 21, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.221, i32 0, i32 0), i64 -1, i32 22, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.222, i32 0, i32 0), i64 -1, i32 22, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.223, i32 0, i32 0), i64 -1, i32 23, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.224, i32 0, i32 0), i64 -1, i32 23, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.225, i32 0, i32 0), i64 -1, i32 24, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.226, i32 0, i32 0), i64 -1, i32 24, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.227, i32 0, i32 0), i64 -1, i32 25, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.228, i32 0, i32 0), i64 -1, i32 25, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.229, i32 0, i32 0), i64 -1, i32 26, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.230, i32 0, i32 0), i64 -1, i32 26, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.231, i32 0, i32 0), i64 -1, i32 27, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.232, i32 0, i32 0), i64 -1, i32 27, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.233, i32 0, i32 0), i64 -1, i32 28, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.234, i32 0, i32 0), i64 -1, i32 28, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.235, i32 0, i32 0), i64 -1, i32 29, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.236, i32 0, i32 0), i64 -1, i32 29, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.237, i32 0, i32 0), i64 -1, i32 30, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.238, i32 0, i32 0), i64 -1, i32 30, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.239, i32 0, i32 0), i64 -1, i32 31, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.240, i32 0, i32 0), i64 -1, i32 31, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.241, i32 0, i32 0), i64 -1, i32 32, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.242, i32 0, i32 0), i64 -1, i32 32, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.243, i32 0, i32 0), i64 -1, i32 33, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.244, i32 0, i32 0), i64 -1, i32 33, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.245, i32 0, i32 0), i64 -1, i32 34, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.246, i32 0, i32 0), i64 -1, i32 34, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.247, i32 0, i32 0), i64 -1, i32 35, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.248, i32 0, i32 0), i64 -1, i32 35, i8 0, i32 34 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.249, i32 0, i32 0), i64 -1, i32 36, i8 0, i32 0 }, %struct.ltest { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.250, i32 0, i32 0), i64 -1, i32 36, i8 0, i32 34 }, %struct.ltest zeroinitializer], align 16
@.str = private unnamed_addr constant [28 x i8] c"strtoll(\22%s\22, , %d) test %u\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\09OK\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\09BAD\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"  returns %lld, expected %lld\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"  leaves '%s', expected '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"  errno %d (%s)  instead of %d (%s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"strtoull(\22%s\22, , %d) test %u\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"  returns %llu, expected %llu\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"  errno %d (%s) instead of %d (%s)\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"+123\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"  123\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c" 123 \00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"   -17\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"0123\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"0123a\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"01239\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"0x123\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"-0x123\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"0x0xc\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c" +0x123fg\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"abcd\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"AbCd\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"0xABCD\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"0Xabcd\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"0xyz\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"yz!\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"-yz\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"GhI4\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"99000000001\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"9223372036854775807\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"9223372036854775808\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"922337203685477580777\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"9223372036854775810\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"-2147483648\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"-9223372036854775808\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"-9223372036854775809\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"0x112233445566778899z\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"0xFFFFFFFFFFFF00FF\00", align 1
@.str.39 = private unnamed_addr constant [64 x i8] c"111111111111111111111111111111111111111111111111111111111111111\00", align 1
@.str.40 = private unnamed_addr constant [65 x i8] c"1000000000000000000000000000000000000000000000000000000000000000\00", align 1
@.str.41 = private unnamed_addr constant [41 x i8] c"2021110011022210012102010021220101220221\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"2021110011022210012102010021220101220222\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"13333333333333333333333333333333\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"20000000000000000000000000000000\00", align 1
@.str.45 = private unnamed_addr constant [29 x i8] c"1104332401304422434310311212\00", align 1
@.str.46 = private unnamed_addr constant [29 x i8] c"1104332401304422434310311213\00", align 1
@.str.47 = private unnamed_addr constant [26 x i8] c"1540241003031030222122211\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"1540241003031030222122212\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"22341010611245052052300\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"22341010611245052052301\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"777777777777777777777\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"1000000000000000000000\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"67404283172107811827\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"67404283172107811828\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"1728002635214590697\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"1728002635214590698\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"41a792678515120367\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"41a792678515120368\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"10b269549075433c37\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"10b269549075433c38\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"4340724c6c71dc7a7\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"4340724c6c71dc7a8\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"160e2ad3246366807\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"160e2ad3246366808\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"7fffffffffffffff\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"8000000000000000\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"33d3d8307b214008\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"33d3d8307b214009\00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"16agh595df825fa7\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"16agh595df825fa8\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"ba643dci0ffeehh\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"ba643dci0ffeehi\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"5cbfjia3fh26ja7\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"5cbfjia3fh26ja8\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"2heiciiie82dh97\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"2heiciiie82dh98\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"1adaibb21dckfa7\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"1adaibb21dckfa8\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"i6k448cf4192c2\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"i6k448cf4192c3\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"acd772jnc9l0l7\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"acd772jnc9l0l8\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"64ie1focnn5g77\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"64ie1focnn5g78\00", align 1
@.str.85 = private unnamed_addr constant [15 x i8] c"3igoecjbmca687\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"3igoecjbmca688\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"27c48l5b37oaop\00", align 1
@.str.88 = private unnamed_addr constant [15 x i8] c"27c48l5b37oaoq\00", align 1
@.str.89 = private unnamed_addr constant [15 x i8] c"1bk39f3ah3dmq7\00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"1bk39f3ah3dmq8\00", align 1
@.str.91 = private unnamed_addr constant [14 x i8] c"q1se8f0m04isb\00", align 1
@.str.92 = private unnamed_addr constant [14 x i8] c"q1se8f0m04isc\00", align 1
@.str.93 = private unnamed_addr constant [14 x i8] c"hajppbc1fc207\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"hajppbc1fc208\00", align 1
@.str.95 = private unnamed_addr constant [14 x i8] c"bm03i95hia437\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"bm03i95hia438\00", align 1
@.str.97 = private unnamed_addr constant [14 x i8] c"7vvvvvvvvvvvv\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"8000000000000\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c"5hg4ck9jd4u37\00", align 1
@.str.100 = private unnamed_addr constant [14 x i8] c"5hg4ck9jd4u38\00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"3tdtk1v8j6tpp\00", align 1
@.str.102 = private unnamed_addr constant [14 x i8] c"3tdtk1v8j6tpq\00", align 1
@.str.103 = private unnamed_addr constant [14 x i8] c"2pijmikexrxp7\00", align 1
@.str.104 = private unnamed_addr constant [14 x i8] c"2pijmikexrxp8\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"1y2p0ij32e8e7\00", align 1
@.str.106 = private unnamed_addr constant [14 x i8] c"1y2p0ij32e8e8\00", align 1
@.str.107 = private unnamed_addr constant [66 x i8] c"-1000000000000000000000000000000000000000000000000000000000000000\00", align 1
@.str.108 = private unnamed_addr constant [66 x i8] c"-1000000000000000000000000000000000000000000000000000000000000001\00", align 1
@.str.109 = private unnamed_addr constant [42 x i8] c"-2021110011022210012102010021220101220222\00", align 1
@.str.110 = private unnamed_addr constant [42 x i8] c"-2021110011022210012102010021220101221000\00", align 1
@.str.111 = private unnamed_addr constant [34 x i8] c"-20000000000000000000000000000000\00", align 1
@.str.112 = private unnamed_addr constant [34 x i8] c"-20000000000000000000000000000001\00", align 1
@.str.113 = private unnamed_addr constant [30 x i8] c"-1104332401304422434310311213\00", align 1
@.str.114 = private unnamed_addr constant [30 x i8] c"-1104332401304422434310311214\00", align 1
@.str.115 = private unnamed_addr constant [27 x i8] c"-1540241003031030222122212\00", align 1
@.str.116 = private unnamed_addr constant [27 x i8] c"-1540241003031030222122213\00", align 1
@.str.117 = private unnamed_addr constant [25 x i8] c"-22341010611245052052301\00", align 1
@.str.118 = private unnamed_addr constant [25 x i8] c"-22341010611245052052302\00", align 1
@.str.119 = private unnamed_addr constant [24 x i8] c"-1000000000000000000000\00", align 1
@.str.120 = private unnamed_addr constant [24 x i8] c"-1000000000000000000001\00", align 1
@.str.121 = private unnamed_addr constant [22 x i8] c"-67404283172107811828\00", align 1
@.str.122 = private unnamed_addr constant [22 x i8] c"-67404283172107811830\00", align 1
@.str.123 = private unnamed_addr constant [21 x i8] c"-1728002635214590698\00", align 1
@.str.124 = private unnamed_addr constant [21 x i8] c"-1728002635214590699\00", align 1
@.str.125 = private unnamed_addr constant [20 x i8] c"-41a792678515120368\00", align 1
@.str.126 = private unnamed_addr constant [20 x i8] c"-41a792678515120369\00", align 1
@.str.127 = private unnamed_addr constant [20 x i8] c"-10b269549075433c38\00", align 1
@.str.128 = private unnamed_addr constant [20 x i8] c"-10b269549075433c39\00", align 1
@.str.129 = private unnamed_addr constant [19 x i8] c"-4340724c6c71dc7a8\00", align 1
@.str.130 = private unnamed_addr constant [19 x i8] c"-4340724c6c71dc7a9\00", align 1
@.str.131 = private unnamed_addr constant [19 x i8] c"-160e2ad3246366808\00", align 1
@.str.132 = private unnamed_addr constant [19 x i8] c"-160e2ad3246366809\00", align 1
@.str.133 = private unnamed_addr constant [18 x i8] c"-8000000000000000\00", align 1
@.str.134 = private unnamed_addr constant [18 x i8] c"-8000000000000001\00", align 1
@.str.135 = private unnamed_addr constant [18 x i8] c"-33d3d8307b214009\00", align 1
@.str.136 = private unnamed_addr constant [18 x i8] c"-33d3d8307b21400a\00", align 1
@.str.137 = private unnamed_addr constant [18 x i8] c"-16agh595df825fa8\00", align 1
@.str.138 = private unnamed_addr constant [18 x i8] c"-16agh595df825fa9\00", align 1
@.str.139 = private unnamed_addr constant [17 x i8] c"-ba643dci0ffeehi\00", align 1
@.str.140 = private unnamed_addr constant [17 x i8] c"-ba643dci0ffeei0\00", align 1
@.str.141 = private unnamed_addr constant [17 x i8] c"-5cbfjia3fh26ja8\00", align 1
@.str.142 = private unnamed_addr constant [17 x i8] c"-5cbfjia3fh26ja9\00", align 1
@.str.143 = private unnamed_addr constant [17 x i8] c"-2heiciiie82dh98\00", align 1
@.str.144 = private unnamed_addr constant [17 x i8] c"-2heiciiie82dh99\00", align 1
@.str.145 = private unnamed_addr constant [17 x i8] c"-1adaibb21dckfa8\00", align 1
@.str.146 = private unnamed_addr constant [17 x i8] c"-1adaibb21dckfa9\00", align 1
@.str.147 = private unnamed_addr constant [16 x i8] c"-i6k448cf4192c3\00", align 1
@.str.148 = private unnamed_addr constant [16 x i8] c"-i6k448cf4192c4\00", align 1
@.str.149 = private unnamed_addr constant [16 x i8] c"-acd772jnc9l0l8\00", align 1
@.str.150 = private unnamed_addr constant [16 x i8] c"-acd772jnc9l0l9\00", align 1
@.str.151 = private unnamed_addr constant [16 x i8] c"-64ie1focnn5g78\00", align 1
@.str.152 = private unnamed_addr constant [16 x i8] c"-64ie1focnn5g79\00", align 1
@.str.153 = private unnamed_addr constant [16 x i8] c"-3igoecjbmca688\00", align 1
@.str.154 = private unnamed_addr constant [16 x i8] c"-3igoecjbmca689\00", align 1
@.str.155 = private unnamed_addr constant [16 x i8] c"-27c48l5b37oaoq\00", align 1
@.str.156 = private unnamed_addr constant [16 x i8] c"-27c48l5b37oap0\00", align 1
@.str.157 = private unnamed_addr constant [16 x i8] c"-1bk39f3ah3dmq8\00", align 1
@.str.158 = private unnamed_addr constant [16 x i8] c"-1bk39f3ah3dmq9\00", align 1
@.str.159 = private unnamed_addr constant [15 x i8] c"-q1se8f0m04isc\00", align 1
@.str.160 = private unnamed_addr constant [15 x i8] c"-q1se8f0m04isd\00", align 1
@.str.161 = private unnamed_addr constant [15 x i8] c"-hajppbc1fc208\00", align 1
@.str.162 = private unnamed_addr constant [15 x i8] c"-hajppbc1fc209\00", align 1
@.str.163 = private unnamed_addr constant [15 x i8] c"-bm03i95hia438\00", align 1
@.str.164 = private unnamed_addr constant [15 x i8] c"-bm03i95hia439\00", align 1
@.str.165 = private unnamed_addr constant [15 x i8] c"-8000000000000\00", align 1
@.str.166 = private unnamed_addr constant [15 x i8] c"-8000000000001\00", align 1
@.str.167 = private unnamed_addr constant [15 x i8] c"-5hg4ck9jd4u38\00", align 1
@.str.168 = private unnamed_addr constant [15 x i8] c"-5hg4ck9jd4u39\00", align 1
@.str.169 = private unnamed_addr constant [15 x i8] c"-3tdtk1v8j6tpq\00", align 1
@.str.170 = private unnamed_addr constant [15 x i8] c"-3tdtk1v8j6tpr\00", align 1
@.str.171 = private unnamed_addr constant [15 x i8] c"-2pijmikexrxp8\00", align 1
@.str.172 = private unnamed_addr constant [15 x i8] c"-2pijmikexrxp9\00", align 1
@.str.173 = private unnamed_addr constant [15 x i8] c"-1y2p0ij32e8e8\00", align 1
@.str.174 = private unnamed_addr constant [15 x i8] c"-1y2p0ij32e8e9\00", align 1
@.str.175 = private unnamed_addr constant [4 x i8] c"  0\00", align 1
@.str.176 = private unnamed_addr constant [12 x i8] c"0xffffffffg\00", align 1
@.str.177 = private unnamed_addr constant [20 x i8] c"0xffffffffffffffffg\00", align 1
@.str.178 = private unnamed_addr constant [19 x i8] c"-0xfedcba987654321\00", align 1
@.str.179 = private unnamed_addr constant [21 x i8] c"0xf1f2f3f4f5f6f7f8f9\00", align 1
@.str.180 = private unnamed_addr constant [21 x i8] c"-0x123456789abcdef01\00", align 1
@.str.181 = private unnamed_addr constant [65 x i8] c"1111111111111111111111111111111111111111111111111111111111111111\00", align 1
@.str.182 = private unnamed_addr constant [66 x i8] c"10000000000000000000000000000000000000000000000000000000000000000\00", align 1
@.str.183 = private unnamed_addr constant [42 x i8] c"11112220022122120101211020120210210211220\00", align 1
@.str.184 = private unnamed_addr constant [42 x i8] c"11112220022122120101211020120210210211221\00", align 1
@.str.185 = private unnamed_addr constant [33 x i8] c"33333333333333333333333333333333\00", align 1
@.str.186 = private unnamed_addr constant [34 x i8] c"100000000000000000000000000000000\00", align 1
@.str.187 = private unnamed_addr constant [29 x i8] c"2214220303114400424121122430\00", align 1
@.str.188 = private unnamed_addr constant [29 x i8] c"2214220303114400424121122431\00", align 1
@.str.189 = private unnamed_addr constant [26 x i8] c"3520522010102100444244423\00", align 1
@.str.190 = private unnamed_addr constant [26 x i8] c"3520522010102100444244424\00", align 1
@.str.191 = private unnamed_addr constant [24 x i8] c"45012021522523134134601\00", align 1
@.str.192 = private unnamed_addr constant [24 x i8] c"45012021522523134134602\00", align 1
@.str.193 = private unnamed_addr constant [23 x i8] c"1777777777777777777777\00", align 1
@.str.194 = private unnamed_addr constant [23 x i8] c"2000000000000000000000\00", align 1
@.str.195 = private unnamed_addr constant [22 x i8] c"145808576354216723756\00", align 1
@.str.196 = private unnamed_addr constant [22 x i8] c"145808576354216723757\00", align 1
@.str.197 = private unnamed_addr constant [21 x i8] c"18446744073709551615\00", align 1
@.str.198 = private unnamed_addr constant [21 x i8] c"18446744073709551616\00", align 1
@.str.199 = private unnamed_addr constant [20 x i8] c"335500516a429071284\00", align 1
@.str.200 = private unnamed_addr constant [20 x i8] c"335500516a429071285\00", align 1
@.str.201 = private unnamed_addr constant [19 x i8] c"839365134a2a240713\00", align 1
@.str.202 = private unnamed_addr constant [19 x i8] c"839365134a2a240714\00", align 1
@.str.203 = private unnamed_addr constant [19 x i8] c"219505a9511a867b72\00", align 1
@.str.204 = private unnamed_addr constant [19 x i8] c"219505a9511a867b73\00", align 1
@.str.205 = private unnamed_addr constant [18 x i8] c"8681049adb03db171\00", align 1
@.str.206 = private unnamed_addr constant [18 x i8] c"8681049adb03db172\00", align 1
@.str.207 = private unnamed_addr constant [18 x i8] c"2c1d56b648c6cd110\00", align 1
@.str.208 = private unnamed_addr constant [18 x i8] c"2c1d56b648c6cd111\00", align 1
@.str.209 = private unnamed_addr constant [17 x i8] c"ffffffffffffffff\00", align 1
@.str.210 = private unnamed_addr constant [18 x i8] c"10000000000000000\00", align 1
@.str.211 = private unnamed_addr constant [17 x i8] c"67979g60f5428010\00", align 1
@.str.212 = private unnamed_addr constant [17 x i8] c"67979g60f5428011\00", align 1
@.str.213 = private unnamed_addr constant [17 x i8] c"2d3fgb0b9cg4bd2f\00", align 1
@.str.214 = private unnamed_addr constant [17 x i8] c"2d3fgb0b9cg4bd2g\00", align 1
@.str.215 = private unnamed_addr constant [17 x i8] c"141c8786h1ccaagg\00", align 1
@.str.216 = private unnamed_addr constant [17 x i8] c"141c8786h1ccaagh\00", align 1
@.str.217 = private unnamed_addr constant [16 x i8] c"b53bjh07be4dj0f\00", align 1
@.str.218 = private unnamed_addr constant [16 x i8] c"b53bjh07be4dj0g\00", align 1
@.str.219 = private unnamed_addr constant [16 x i8] c"5e8g4ggg7g56dif\00", align 1
@.str.220 = private unnamed_addr constant [16 x i8] c"5e8g4ggg7g56dig\00", align 1
@.str.221 = private unnamed_addr constant [16 x i8] c"2l4lf104353j8kf\00", align 1
@.str.222 = private unnamed_addr constant [16 x i8] c"2l4lf104353j8kg\00", align 1
@.str.223 = private unnamed_addr constant [16 x i8] c"1ddh88h2782i515\00", align 1
@.str.224 = private unnamed_addr constant [16 x i8] c"1ddh88h2782i516\00", align 1
@.str.225 = private unnamed_addr constant [15 x i8] c"l12ee5fn0ji1if\00", align 1
@.str.226 = private unnamed_addr constant [15 x i8] c"l12ee5fn0ji1ig\00", align 1
@.str.227 = private unnamed_addr constant [15 x i8] c"c9c336o0mlb7ef\00", align 1
@.str.228 = private unnamed_addr constant [15 x i8] c"c9c336o0mlb7eg\00", align 1
@.str.229 = private unnamed_addr constant [15 x i8] c"7b7n2pcniokcgf\00", align 1
@.str.230 = private unnamed_addr constant [15 x i8] c"7b7n2pcniokcgg\00", align 1
@.str.231 = private unnamed_addr constant [15 x i8] c"4eo8hfam6fllmo\00", align 1
@.str.232 = private unnamed_addr constant [15 x i8] c"4eo8hfam6fllmp\00", align 1
@.str.233 = private unnamed_addr constant [15 x i8] c"2nc6j26l66rhof\00", align 1
@.str.234 = private unnamed_addr constant [15 x i8] c"2nc6j26l66rhog\00", align 1
@.str.235 = private unnamed_addr constant [15 x i8] c"1n3rsh11f098rn\00", align 1
@.str.236 = private unnamed_addr constant [15 x i8] c"1n3rsh11f098ro\00", align 1
@.str.237 = private unnamed_addr constant [15 x i8] c"14l9lkmo30o40f\00", align 1
@.str.238 = private unnamed_addr constant [15 x i8] c"14l9lkmo30o40g\00", align 1
@.str.239 = private unnamed_addr constant [14 x i8] c"nd075ib45k86f\00", align 1
@.str.240 = private unnamed_addr constant [14 x i8] c"nd075ib45k86g\00", align 1
@.str.241 = private unnamed_addr constant [14 x i8] c"fvvvvvvvvvvvv\00", align 1
@.str.242 = private unnamed_addr constant [14 x i8] c"g000000000000\00", align 1
@.str.243 = private unnamed_addr constant [14 x i8] c"b1w8p7j5q9r6f\00", align 1
@.str.244 = private unnamed_addr constant [14 x i8] c"b1w8p7j5q9r6g\00", align 1
@.str.245 = private unnamed_addr constant [14 x i8] c"7orp63sh4dphh\00", align 1
@.str.246 = private unnamed_addr constant [14 x i8] c"7orp63sh4dphi\00", align 1
@.str.247 = private unnamed_addr constant [14 x i8] c"5g24a25twkwff\00", align 1
@.str.248 = private unnamed_addr constant [14 x i8] c"5g24a25twkwfg\00", align 1
@.str.249 = private unnamed_addr constant [14 x i8] c"3w5e11264sgsf\00", align 1
@.str.250 = private unnamed_addr constant [14 x i8] c"3w5e11264sgsg\00", align 1
@.str.251 = private unnamed_addr constant [6 x i8] c"%#.3o\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %lt = alloca %struct.ltest*, align 8
  %ep = alloca i8*, align 8
  %status = alloca i32, align 4
  %save_errno = alloca i32, align 4
  %l = alloca i64, align 8
  %exp1 = alloca [5 x i8], align 1
  %exp2 = alloca [5 x i8], align 1
  %ul = alloca i64, align 8
  %exp197 = alloca [5 x i8], align 1
  %exp298 = alloca [5 x i8], align 1
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %status, align 4
  store %struct.ltest* getelementptr inbounds ([254 x %struct.ltest], [254 x %struct.ltest]* @tests, i64 0, i64 0), %struct.ltest** %lt, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %str = getelementptr inbounds %struct.ltest, %struct.ltest* %0, i32 0, i32 0
  %1 = load i8*, i8** %str, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32* @__errno_location() #4
  store i32 0, i32* %call, align 4
  %2 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %str1 = getelementptr inbounds %struct.ltest, %struct.ltest* %2, i32 0, i32 0
  %3 = load i8*, i8** %str1, align 8
  %4 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %base = getelementptr inbounds %struct.ltest, %struct.ltest* %4, i32 0, i32 2
  %5 = load i32, i32* %base, align 8
  %call2 = call i64 @strtoll(i8* %3, i8** %ep, i32 %5) #5
  store i64 %call2, i64* %l, align 8
  %call3 = call i32* @__errno_location() #4
  %6 = load i32, i32* %call3, align 4
  store i32 %6, i32* %save_errno, align 4
  %7 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %str4 = getelementptr inbounds %struct.ltest, %struct.ltest* %7, i32 0, i32 0
  %8 = load i8*, i8** %str4, align 8
  %9 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %base5 = getelementptr inbounds %struct.ltest, %struct.ltest* %9, i32 0, i32 2
  %10 = load i32, i32* %base5, align 8
  %11 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.ltest* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([254 x %struct.ltest]* @tests to i64)
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  %conv = trunc i64 %sub.ptr.div to i32
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %8, i32 %10, i32 %conv)
  %12 = load i64, i64* %l, align 8
  %13 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %expect = getelementptr inbounds %struct.ltest, %struct.ltest* %13, i32 0, i32 1
  %14 = load i64, i64* %expect, align 8
  %cmp7 = icmp eq i64 %12, %14
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %15 = load i8*, i8** %ep, align 8
  %16 = load i8, i8* %15, align 1
  %conv9 = sext i8 %16 to i32
  %17 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %left = getelementptr inbounds %struct.ltest, %struct.ltest* %17, i32 0, i32 3
  %18 = load i8, i8* %left, align 4
  %conv10 = sext i8 %18 to i32
  %cmp11 = icmp eq i32 %conv9, %conv10
  br i1 %cmp11, label %land.lhs.true13, label %if.else

land.lhs.true13:                                  ; preds = %land.lhs.true
  %19 = load i32, i32* %save_errno, align 4
  %20 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %err = getelementptr inbounds %struct.ltest, %struct.ltest* %20, i32 0, i32 4
  %21 = load i32, i32* %err, align 8
  %cmp14 = icmp eq i32 %19, %21
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true13
  %call16 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end48

if.else:                                          ; preds = %land.lhs.true13, %land.lhs.true, %for.body
  %call17 = call i32 @puts(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i64, i64* %l, align 8
  %23 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %expect18 = getelementptr inbounds %struct.ltest, %struct.ltest* %23, i32 0, i32 1
  %24 = load i64, i64* %expect18, align 8
  %cmp19 = icmp ne i64 %22, %24
  br i1 %cmp19, label %if.then21, label %if.end

if.then21:                                        ; preds = %if.else
  %25 = load i64, i64* %l, align 8
  %26 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %expect22 = getelementptr inbounds %struct.ltest, %struct.ltest* %26, i32 0, i32 1
  %27 = load i64, i64* %expect22, align 8
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %25, i64 %27)
  br label %if.end

if.end:                                           ; preds = %if.then21, %if.else
  %28 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %left24 = getelementptr inbounds %struct.ltest, %struct.ltest* %28, i32 0, i32 3
  %29 = load i8, i8* %left24, align 4
  %conv25 = sext i8 %29 to i32
  %30 = load i8*, i8** %ep, align 8
  %31 = load i8, i8* %30, align 1
  %conv26 = sext i8 %31 to i32
  %cmp27 = icmp ne i32 %conv25, %conv26
  br i1 %cmp27, label %if.then29, label %if.end37

if.then29:                                        ; preds = %if.end
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %exp1, i64 0, i64 0
  %32 = load i8*, i8** %ep, align 8
  %33 = load i8, i8* %32, align 1
  %conv30 = sext i8 %33 to i32
  call void @expand(i8* %arraydecay, i32 %conv30)
  %arraydecay31 = getelementptr inbounds [5 x i8], [5 x i8]* %exp2, i64 0, i64 0
  %34 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %left32 = getelementptr inbounds %struct.ltest, %struct.ltest* %34, i32 0, i32 3
  %35 = load i8, i8* %left32, align 4
  %conv33 = sext i8 %35 to i32
  call void @expand(i8* %arraydecay31, i32 %conv33)
  %arraydecay34 = getelementptr inbounds [5 x i8], [5 x i8]* %exp1, i64 0, i64 0
  %arraydecay35 = getelementptr inbounds [5 x i8], [5 x i8]* %exp2, i64 0, i64 0
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %arraydecay34, i8* %arraydecay35)
  br label %if.end37

if.end37:                                         ; preds = %if.then29, %if.end
  %36 = load i32, i32* %save_errno, align 4
  %37 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %err38 = getelementptr inbounds %struct.ltest, %struct.ltest* %37, i32 0, i32 4
  %38 = load i32, i32* %err38, align 8
  %cmp39 = icmp ne i32 %36, %38
  br i1 %cmp39, label %if.then41, label %if.end47

if.then41:                                        ; preds = %if.end37
  %39 = load i32, i32* %save_errno, align 4
  %40 = load i32, i32* %save_errno, align 4
  %call42 = call i8* @strerror(i32 %40) #5
  %41 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %err43 = getelementptr inbounds %struct.ltest, %struct.ltest* %41, i32 0, i32 4
  %42 = load i32, i32* %err43, align 8
  %43 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %err44 = getelementptr inbounds %struct.ltest, %struct.ltest* %43, i32 0, i32 4
  %44 = load i32, i32* %err44, align 8
  %call45 = call i8* @strerror(i32 %44) #5
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %39, i8* %call42, i32 %42, i8* %call45)
  br label %if.end47

if.end47:                                         ; preds = %if.then41, %if.end37
  store i32 1, i32* %status, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end48
  %45 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %incdec.ptr = getelementptr inbounds %struct.ltest, %struct.ltest* %45, i32 1
  store %struct.ltest* %incdec.ptr, %struct.ltest** %lt, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %46 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %incdec.ptr49 = getelementptr inbounds %struct.ltest, %struct.ltest* %46, i32 1
  store %struct.ltest* %incdec.ptr49, %struct.ltest** %lt, align 8
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc119, %for.end
  %47 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %str51 = getelementptr inbounds %struct.ltest, %struct.ltest* %47, i32 0, i32 0
  %48 = load i8*, i8** %str51, align 8
  %cmp52 = icmp ne i8* %48, null
  br i1 %cmp52, label %for.body54, label %for.end121

for.body54:                                       ; preds = %for.cond50
  %call55 = call i32* @__errno_location() #4
  store i32 0, i32* %call55, align 4
  %49 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %str56 = getelementptr inbounds %struct.ltest, %struct.ltest* %49, i32 0, i32 0
  %50 = load i8*, i8** %str56, align 8
  %51 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %base57 = getelementptr inbounds %struct.ltest, %struct.ltest* %51, i32 0, i32 2
  %52 = load i32, i32* %base57, align 8
  %call58 = call i64 @strtoull(i8* %50, i8** %ep, i32 %52) #5
  store i64 %call58, i64* %ul, align 8
  %call59 = call i32* @__errno_location() #4
  %53 = load i32, i32* %call59, align 4
  store i32 %53, i32* %save_errno, align 4
  %54 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %str60 = getelementptr inbounds %struct.ltest, %struct.ltest* %54, i32 0, i32 0
  %55 = load i8*, i8** %str60, align 8
  %56 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %base61 = getelementptr inbounds %struct.ltest, %struct.ltest* %56, i32 0, i32 2
  %57 = load i32, i32* %base61, align 8
  %58 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %sub.ptr.lhs.cast62 = ptrtoint %struct.ltest* %58 to i64
  %sub.ptr.sub63 = sub i64 %sub.ptr.lhs.cast62, ptrtoint ([254 x %struct.ltest]* @tests to i64)
  %sub.ptr.div64 = sdiv exact i64 %sub.ptr.sub63, 32
  %conv65 = trunc i64 %sub.ptr.div64 to i32
  %call66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %55, i32 %57, i32 %conv65)
  %59 = load i64, i64* %ul, align 8
  %60 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %expect67 = getelementptr inbounds %struct.ltest, %struct.ltest* %60, i32 0, i32 1
  %61 = load i64, i64* %expect67, align 8
  %cmp68 = icmp eq i64 %59, %61
  br i1 %cmp68, label %land.lhs.true70, label %if.else82

land.lhs.true70:                                  ; preds = %for.body54
  %62 = load i8*, i8** %ep, align 8
  %63 = load i8, i8* %62, align 1
  %conv71 = sext i8 %63 to i32
  %64 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %left72 = getelementptr inbounds %struct.ltest, %struct.ltest* %64, i32 0, i32 3
  %65 = load i8, i8* %left72, align 4
  %conv73 = sext i8 %65 to i32
  %cmp74 = icmp eq i32 %conv71, %conv73
  br i1 %cmp74, label %land.lhs.true76, label %if.else82

land.lhs.true76:                                  ; preds = %land.lhs.true70
  %66 = load i32, i32* %save_errno, align 4
  %67 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %err77 = getelementptr inbounds %struct.ltest, %struct.ltest* %67, i32 0, i32 4
  %68 = load i32, i32* %err77, align 8
  %cmp78 = icmp eq i32 %66, %68
  br i1 %cmp78, label %if.then80, label %if.else82

if.then80:                                        ; preds = %land.lhs.true76
  %call81 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end118

if.else82:                                        ; preds = %land.lhs.true76, %land.lhs.true70, %for.body54
  %call83 = call i32 @puts(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i64, i64* %ul, align 8
  %70 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %expect84 = getelementptr inbounds %struct.ltest, %struct.ltest* %70, i32 0, i32 1
  %71 = load i64, i64* %expect84, align 8
  %cmp85 = icmp ne i64 %69, %71
  br i1 %cmp85, label %if.then87, label %if.end90

if.then87:                                        ; preds = %if.else82
  %72 = load i64, i64* %ul, align 8
  %73 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %expect88 = getelementptr inbounds %struct.ltest, %struct.ltest* %73, i32 0, i32 1
  %74 = load i64, i64* %expect88, align 8
  %call89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i64 %72, i64 %74)
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %if.else82
  %75 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %left91 = getelementptr inbounds %struct.ltest, %struct.ltest* %75, i32 0, i32 3
  %76 = load i8, i8* %left91, align 4
  %conv92 = sext i8 %76 to i32
  %77 = load i8*, i8** %ep, align 8
  %78 = load i8, i8* %77, align 1
  %conv93 = sext i8 %78 to i32
  %cmp94 = icmp ne i32 %conv92, %conv93
  br i1 %cmp94, label %if.then96, label %if.end107

if.then96:                                        ; preds = %if.end90
  %arraydecay99 = getelementptr inbounds [5 x i8], [5 x i8]* %exp197, i64 0, i64 0
  %79 = load i8*, i8** %ep, align 8
  %80 = load i8, i8* %79, align 1
  %conv100 = sext i8 %80 to i32
  call void @expand(i8* %arraydecay99, i32 %conv100)
  %arraydecay101 = getelementptr inbounds [5 x i8], [5 x i8]* %exp298, i64 0, i64 0
  %81 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %left102 = getelementptr inbounds %struct.ltest, %struct.ltest* %81, i32 0, i32 3
  %82 = load i8, i8* %left102, align 4
  %conv103 = sext i8 %82 to i32
  call void @expand(i8* %arraydecay101, i32 %conv103)
  %arraydecay104 = getelementptr inbounds [5 x i8], [5 x i8]* %exp197, i64 0, i64 0
  %arraydecay105 = getelementptr inbounds [5 x i8], [5 x i8]* %exp298, i64 0, i64 0
  %call106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %arraydecay104, i8* %arraydecay105)
  br label %if.end107

if.end107:                                        ; preds = %if.then96, %if.end90
  %83 = load i32, i32* %save_errno, align 4
  %84 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %err108 = getelementptr inbounds %struct.ltest, %struct.ltest* %84, i32 0, i32 4
  %85 = load i32, i32* %err108, align 8
  %cmp109 = icmp ne i32 %83, %85
  br i1 %cmp109, label %if.then111, label %if.end117

if.then111:                                       ; preds = %if.end107
  %86 = load i32, i32* %save_errno, align 4
  %87 = load i32, i32* %save_errno, align 4
  %call112 = call i8* @strerror(i32 %87) #5
  %88 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %err113 = getelementptr inbounds %struct.ltest, %struct.ltest* %88, i32 0, i32 4
  %89 = load i32, i32* %err113, align 8
  %90 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %err114 = getelementptr inbounds %struct.ltest, %struct.ltest* %90, i32 0, i32 4
  %91 = load i32, i32* %err114, align 8
  %call115 = call i8* @strerror(i32 %91) #5
  %call116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %86, i8* %call112, i32 %89, i8* %call115)
  br label %if.end117

if.end117:                                        ; preds = %if.then111, %if.end107
  store i32 1, i32* %status, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.then80
  br label %for.inc119

for.inc119:                                       ; preds = %if.end118
  %92 = load %struct.ltest*, %struct.ltest** %lt, align 8
  %incdec.ptr120 = getelementptr inbounds %struct.ltest, %struct.ltest* %92, i32 1
  store %struct.ltest* %incdec.ptr120, %struct.ltest** %lt, align 8
  br label %for.cond50, !llvm.loop !6

for.end121:                                       ; preds = %for.cond50
  %93 = load i32, i32* %status, align 4
  %tobool = icmp ne i32 %93, 0
  %94 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #1

; Function Attrs: nounwind
declare dso_local i64 @strtoll(i8*, i8**, i32) #2

declare dso_local i32 @printf(i8*, ...) #3

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expand(i8* %dst, i32 %c) #0 {
entry:
  %dst.addr = alloca i8*, align 8
  %c.addr = alloca i32, align 4
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %call = call i16** @__ctype_b_loc() #4
  %0 = load i16*, i16** %call, align 8
  %1 = load i32, i32* %c.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %c.addr, align 4
  %conv1 = trunc i32 %3 to i8
  %4 = load i8*, i8** %dst.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 0
  store i8 %conv1, i8* %arrayidx2, align 1
  %5 = load i8*, i8** %dst.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 1
  store i8 0, i8* %arrayidx3, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i8*, i8** %dst.addr, align 8
  %7 = load i32, i32* %c.addr, align 4
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.251, i64 0, i64 0), i32 %7) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32) #2

; Function Attrs: nounwind
declare dso_local i64 @strtoull(i8*, i8**, i32) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
