; ModuleID = './code/153-15556tst-strtoll.c'
source_filename = "./code/153-15556tst-strtoll.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.ltest = type { ptr, i64, i32, i8, i32 }

@tests = internal constant [254 x %struct.ltest] [%struct.ltest { ptr @.str.9, i64 123, i32 0, i8 0, i32 0 }, %struct.ltest { ptr @.str.10, i64 123, i32 0, i8 0, i32 0 }, %struct.ltest { ptr @.str.11, i64 123, i32 0, i8 0, i32 0 }, %struct.ltest { ptr @.str.12, i64 123, i32 0, i8 32, i32 0 }, %struct.ltest { ptr @.str.13, i64 -17, i32 0, i8 0, i32 0 }, %struct.ltest { ptr @.str.14, i64 83, i32 0, i8 0, i32 0 }, %struct.ltest { ptr @.str.15, i64 83, i32 0, i8 97, i32 0 }, %struct.ltest { ptr @.str.16, i64 83, i32 0, i8 57, i32 0 }, %struct.ltest { ptr @.str.17, i64 291, i32 0, i8 0, i32 0 }, %struct.ltest { ptr @.str.18, i64 -291, i32 0, i8 0, i32 0 }, %struct.ltest { ptr @.str.19, i64 0, i32 0, i8 120, i32 0 }, %struct.ltest { ptr @.str.20, i64 4671, i32 0, i8 103, i32 0 }, %struct.ltest { ptr @.str.9, i64 291, i32 16, i8 0, i32 0 }, %struct.ltest { ptr @.str.17, i64 291, i32 16, i8 0, i32 0 }, %struct.ltest { ptr @.str.9, i64 83, i32 8, i8 0, i32 0 }, %struct.ltest { ptr @.str.14, i64 83, i32 8, i8 0, i32 0 }, %struct.ltest { ptr @.str.14, i64 123, i32 10, i8 0, i32 0 }, %struct.ltest { ptr @.str.17, i64 0, i32 10, i8 120, i32 0 }, %struct.ltest { ptr @.str.21, i64 43981, i32 16, i8 0, i32 0 }, %struct.ltest { ptr @.str.22, i64 43981, i32 16, i8 0, i32 0 }, %struct.ltest { ptr @.str.23, i64 43981, i32 16, i8 0, i32 0 }, %struct.ltest { ptr @.str.24, i64 43981, i32 16, i8 0, i32 0 }, %struct.ltest { ptr @.str.25, i64 1189, i32 35, i8 122, i32 0 }, %struct.ltest { ptr @.str.26, i64 1259, i32 36, i8 33, i32 0 }, %struct.ltest { ptr @.str.27, i64 -1259, i32 36, i8 0, i32 0 }, %struct.ltest { ptr @.str.28, i64 135164, i32 20, i8 0, i32 0 }, %struct.ltest { ptr @.str.29, i64 99000000001, i32 0, i8 0, i32 0 }, %struct.ltest { ptr @.str.30, i64 9223372036854775807, i32 0, i8 0, i32 0 }, %struct.ltest { ptr @.str.31, i64 9223372036854775807, i32 0, i8 0, i32 34 }, %struct.ltest { ptr @.str.32, i64 9223372036854775807, i32 0, i8 0, i32 34 }, %struct.ltest { ptr @.str.33, i64 9223372036854775807, i32 0, i8 0, i32 34 }, %struct.ltest { ptr @.str.34, i64 -2147483648, i32 0, i8 0, i32 0 }, %struct.ltest { ptr @.str.35, i64 -9223372036854775808, i32 0, i8 0, i32 0 }, %struct.ltest { ptr @.str.36, i64 -9223372036854775808, i32 0, i8 0, i32 34 }, %struct.ltest { ptr @.str.37, i64 9223372036854775807, i32 16, i8 122, i32 34 }, %struct.ltest { ptr @.str.38, i64 9223372036854775807, i32 0, i8 0, i32 34 }, %struct.ltest { ptr @.str.39, i64 9223372036854775807, i32 2, i8 0, i32 0 }, %struct.ltest { ptr @.str.40, i64 9223372036854775807, i32 2, i8 0, i32 34 }, %struct.ltest { ptr @.str.41, i64 9223372036854775807, i32 3, i8 0, i32 0 }, %struct.ltest { ptr @.str.42, i64 9223372036854775807, i32 3, i8 0, i32 34 }, %struct.ltest { ptr @.str.43, i64 9223372036854775807, i32 4, i8 0, i32 0 }, %struct.ltest { ptr @.str.44, i64 9223372036854775807, i32 4, i8 0, i32 34 }, %struct.ltest { ptr @.str.45, i64 9223372036854775807, i32 5, i8 0, i32 0 }, %struct.ltest { ptr @.str.46, i64 9223372036854775807, i32 5, i8 0, i32 34 }, %struct.ltest { ptr @.str.47, i64 9223372036854775807, i32 6, i8 0, i32 0 }, %struct.ltest { ptr @.str.48, i64 9223372036854775807, i32 6, i8 0, i32 34 }, %struct.ltest { ptr @.str.49, i64 9223372036854775807, i32 7, i8 0, i32 0 }, %struct.ltest { ptr @.str.50, i64 9223372036854775807, i32 7, i8 0, i32 34 }, %struct.ltest { ptr @.str.51, i64 9223372036854775807, i32 8, i8 0, i32 0 }, %struct.ltest { ptr @.str.52, i64 9223372036854775807, i32 8, i8 0, i32 34 }, %struct.ltest { ptr @.str.53, i64 9223372036854775807, i32 9, i8 0, i32 0 }, %struct.ltest { ptr @.str.54, i64 9223372036854775807, i32 9, i8 0, i32 34 }, %struct.ltest { ptr @.str.30, i64 9223372036854775807, i32 10, i8 0, i32 0 }, %struct.ltest { ptr @.str.31, i64 9223372036854775807, i32 10, i8 0, i32 34 }, %struct.ltest { ptr @.str.55, i64 9223372036854775807, i32 11, i8 0, i32 0 }, %struct.ltest { ptr @.str.56, i64 9223372036854775807, i32 11, i8 0, i32 34 }, %struct.ltest { ptr @.str.57, i64 9223372036854775807, i32 12, i8 0, i32 0 }, %struct.ltest { ptr @.str.58, i64 9223372036854775807, i32 12, i8 0, i32 34 }, %struct.ltest { ptr @.str.59, i64 9223372036854775807, i32 13, i8 0, i32 0 }, %struct.ltest { ptr @.str.60, i64 9223372036854775807, i32 13, i8 0, i32 34 }, %struct.ltest { ptr @.str.61, i64 9223372036854775807, i32 14, i8 0, i32 0 }, %struct.ltest { ptr @.str.62, i64 9223372036854775807, i32 14, i8 0, i32 34 }, %struct.ltest { ptr @.str.63, i64 9223372036854775807, i32 15, i8 0, i32 0 }, %struct.ltest { ptr @.str.64, i64 9223372036854775807, i32 15, i8 0, i32 34 }, %struct.ltest { ptr @.str.65, i64 9223372036854775807, i32 16, i8 0, i32 0 }, %struct.ltest { ptr @.str.66, i64 9223372036854775807, i32 16, i8 0, i32 34 }, %struct.ltest { ptr @.str.67, i64 9223372036854775807, i32 17, i8 0, i32 0 }, %struct.ltest { ptr @.str.68, i64 9223372036854775807, i32 17, i8 0, i32 34 }, %struct.ltest { ptr @.str.69, i64 9223372036854775807, i32 18, i8 0, i32 0 }, %struct.ltest { ptr @.str.70, i64 9223372036854775807, i32 18, i8 0, i32 34 }, %struct.ltest { ptr @.str.71, i64 9223372036854775807, i32 19, i8 0, i32 0 }, %struct.ltest { ptr @.str.72, i64 9223372036854775807, i32 19, i8 0, i32 34 }, %struct.ltest { ptr @.str.73, i64 9223372036854775807, i32 20, i8 0, i32 0 }, %struct.ltest { ptr @.str.74, i64 9223372036854775807, i32 20, i8 0, i32 34 }, %struct.ltest { ptr @.str.75, i64 9223372036854775807, i32 21, i8 0, i32 0 }, %struct.ltest { ptr @.str.76, i64 9223372036854775807, i32 21, i8 0, i32 34 }, %struct.ltest { ptr @.str.77, i64 9223372036854775807, i32 22, i8 0, i32 0 }, %struct.ltest { ptr @.str.78, i64 9223372036854775807, i32 22, i8 0, i32 34 }, %struct.ltest { ptr @.str.79, i64 9223372036854775807, i32 23, i8 0, i32 0 }, %struct.ltest { ptr @.str.80, i64 9223372036854775807, i32 23, i8 0, i32 34 }, %struct.ltest { ptr @.str.81, i64 9223372036854775807, i32 24, i8 0, i32 0 }, %struct.ltest { ptr @.str.82, i64 9223372036854775807, i32 24, i8 0, i32 34 }, %struct.ltest { ptr @.str.83, i64 9223372036854775807, i32 25, i8 0, i32 0 }, %struct.ltest { ptr @.str.84, i64 9223372036854775807, i32 25, i8 0, i32 34 }, %struct.ltest { ptr @.str.85, i64 9223372036854775807, i32 26, i8 0, i32 0 }, %struct.ltest { ptr @.str.86, i64 9223372036854775807, i32 26, i8 0, i32 34 }, %struct.ltest { ptr @.str.87, i64 9223372036854775807, i32 27, i8 0, i32 0 }, %struct.ltest { ptr @.str.88, i64 9223372036854775807, i32 27, i8 0, i32 34 }, %struct.ltest { ptr @.str.89, i64 9223372036854775807, i32 28, i8 0, i32 0 }, %struct.ltest { ptr @.str.90, i64 9223372036854775807, i32 28, i8 0, i32 34 }, %struct.ltest { ptr @.str.91, i64 9223372036854775807, i32 29, i8 0, i32 0 }, %struct.ltest { ptr @.str.92, i64 9223372036854775807, i32 29, i8 0, i32 34 }, %struct.ltest { ptr @.str.93, i64 9223372036854775807, i32 30, i8 0, i32 0 }, %struct.ltest { ptr @.str.94, i64 9223372036854775807, i32 30, i8 0, i32 34 }, %struct.ltest { ptr @.str.95, i64 9223372036854775807, i32 31, i8 0, i32 0 }, %struct.ltest { ptr @.str.96, i64 9223372036854775807, i32 31, i8 0, i32 34 }, %struct.ltest { ptr @.str.97, i64 9223372036854775807, i32 32, i8 0, i32 0 }, %struct.ltest { ptr @.str.98, i64 9223372036854775807, i32 32, i8 0, i32 34 }, %struct.ltest { ptr @.str.99, i64 9223372036854775807, i32 33, i8 0, i32 0 }, %struct.ltest { ptr @.str.100, i64 9223372036854775807, i32 33, i8 0, i32 34 }, %struct.ltest { ptr @.str.101, i64 9223372036854775807, i32 34, i8 0, i32 0 }, %struct.ltest { ptr @.str.102, i64 9223372036854775807, i32 34, i8 0, i32 34 }, %struct.ltest { ptr @.str.103, i64 9223372036854775807, i32 35, i8 0, i32 0 }, %struct.ltest { ptr @.str.104, i64 9223372036854775807, i32 35, i8 0, i32 34 }, %struct.ltest { ptr @.str.105, i64 9223372036854775807, i32 36, i8 0, i32 0 }, %struct.ltest { ptr @.str.106, i64 9223372036854775807, i32 36, i8 0, i32 34 }, %struct.ltest { ptr @.str.107, i64 -9223372036854775808, i32 2, i8 0, i32 0 }, %struct.ltest { ptr @.str.108, i64 -9223372036854775808, i32 2, i8 0, i32 34 }, %struct.ltest { ptr @.str.109, i64 -9223372036854775808, i32 3, i8 0, i32 0 }, %struct.ltest { ptr @.str.110, i64 -9223372036854775808, i32 3, i8 0, i32 34 }, %struct.ltest { ptr @.str.111, i64 -9223372036854775808, i32 4, i8 0, i32 0 }, %struct.ltest { ptr @.str.112, i64 -9223372036854775808, i32 4, i8 0, i32 34 }, %struct.ltest { ptr @.str.113, i64 -9223372036854775808, i32 5, i8 0, i32 0 }, %struct.ltest { ptr @.str.114, i64 -9223372036854775808, i32 5, i8 0, i32 34 }, %struct.ltest { ptr @.str.115, i64 -9223372036854775808, i32 6, i8 0, i32 0 }, %struct.ltest { ptr @.str.116, i64 -9223372036854775808, i32 6, i8 0, i32 34 }, %struct.ltest { ptr @.str.117, i64 -9223372036854775808, i32 7, i8 0, i32 0 }, %struct.ltest { ptr @.str.118, i64 -9223372036854775808, i32 7, i8 0, i32 34 }, %struct.ltest { ptr @.str.119, i64 -9223372036854775808, i32 8, i8 0, i32 0 }, %struct.ltest { ptr @.str.120, i64 -9223372036854775808, i32 8, i8 0, i32 34 }, %struct.ltest { ptr @.str.121, i64 -9223372036854775808, i32 9, i8 0, i32 0 }, %struct.ltest { ptr @.str.122, i64 -9223372036854775808, i32 9, i8 0, i32 34 }, %struct.ltest { ptr @.str.35, i64 -9223372036854775808, i32 10, i8 0, i32 0 }, %struct.ltest { ptr @.str.36, i64 -9223372036854775808, i32 10, i8 0, i32 34 }, %struct.ltest { ptr @.str.123, i64 -9223372036854775808, i32 11, i8 0, i32 0 }, %struct.ltest { ptr @.str.124, i64 -9223372036854775808, i32 11, i8 0, i32 34 }, %struct.ltest { ptr @.str.125, i64 -9223372036854775808, i32 12, i8 0, i32 0 }, %struct.ltest { ptr @.str.126, i64 -9223372036854775808, i32 12, i8 0, i32 34 }, %struct.ltest { ptr @.str.127, i64 -9223372036854775808, i32 13, i8 0, i32 0 }, %struct.ltest { ptr @.str.128, i64 -9223372036854775808, i32 13, i8 0, i32 34 }, %struct.ltest { ptr @.str.129, i64 -9223372036854775808, i32 14, i8 0, i32 0 }, %struct.ltest { ptr @.str.130, i64 -9223372036854775808, i32 14, i8 0, i32 34 }, %struct.ltest { ptr @.str.131, i64 -9223372036854775808, i32 15, i8 0, i32 0 }, %struct.ltest { ptr @.str.132, i64 -9223372036854775808, i32 15, i8 0, i32 34 }, %struct.ltest { ptr @.str.133, i64 -9223372036854775808, i32 16, i8 0, i32 0 }, %struct.ltest { ptr @.str.134, i64 -9223372036854775808, i32 16, i8 0, i32 34 }, %struct.ltest { ptr @.str.135, i64 -9223372036854775808, i32 17, i8 0, i32 0 }, %struct.ltest { ptr @.str.136, i64 -9223372036854775808, i32 17, i8 0, i32 34 }, %struct.ltest { ptr @.str.137, i64 -9223372036854775808, i32 18, i8 0, i32 0 }, %struct.ltest { ptr @.str.138, i64 -9223372036854775808, i32 18, i8 0, i32 34 }, %struct.ltest { ptr @.str.139, i64 -9223372036854775808, i32 19, i8 0, i32 0 }, %struct.ltest { ptr @.str.140, i64 -9223372036854775808, i32 19, i8 0, i32 34 }, %struct.ltest { ptr @.str.141, i64 -9223372036854775808, i32 20, i8 0, i32 0 }, %struct.ltest { ptr @.str.142, i64 -9223372036854775808, i32 20, i8 0, i32 34 }, %struct.ltest { ptr @.str.143, i64 -9223372036854775808, i32 21, i8 0, i32 0 }, %struct.ltest { ptr @.str.144, i64 -9223372036854775808, i32 21, i8 0, i32 34 }, %struct.ltest { ptr @.str.145, i64 -9223372036854775808, i32 22, i8 0, i32 0 }, %struct.ltest { ptr @.str.146, i64 -9223372036854775808, i32 22, i8 0, i32 34 }, %struct.ltest { ptr @.str.147, i64 -9223372036854775808, i32 23, i8 0, i32 0 }, %struct.ltest { ptr @.str.148, i64 -9223372036854775808, i32 23, i8 0, i32 34 }, %struct.ltest { ptr @.str.149, i64 -9223372036854775808, i32 24, i8 0, i32 0 }, %struct.ltest { ptr @.str.150, i64 -9223372036854775808, i32 24, i8 0, i32 34 }, %struct.ltest { ptr @.str.151, i64 -9223372036854775808, i32 25, i8 0, i32 0 }, %struct.ltest { ptr @.str.152, i64 -9223372036854775808, i32 25, i8 0, i32 34 }, %struct.ltest { ptr @.str.153, i64 -9223372036854775808, i32 26, i8 0, i32 0 }, %struct.ltest { ptr @.str.154, i64 -9223372036854775808, i32 26, i8 0, i32 34 }, %struct.ltest { ptr @.str.155, i64 -9223372036854775808, i32 27, i8 0, i32 0 }, %struct.ltest { ptr @.str.156, i64 -9223372036854775808, i32 27, i8 0, i32 34 }, %struct.ltest { ptr @.str.157, i64 -9223372036854775808, i32 28, i8 0, i32 0 }, %struct.ltest { ptr @.str.158, i64 -9223372036854775808, i32 28, i8 0, i32 34 }, %struct.ltest { ptr @.str.159, i64 -9223372036854775808, i32 29, i8 0, i32 0 }, %struct.ltest { ptr @.str.160, i64 -9223372036854775808, i32 29, i8 0, i32 34 }, %struct.ltest { ptr @.str.161, i64 -9223372036854775808, i32 30, i8 0, i32 0 }, %struct.ltest { ptr @.str.162, i64 -9223372036854775808, i32 30, i8 0, i32 34 }, %struct.ltest { ptr @.str.163, i64 -9223372036854775808, i32 31, i8 0, i32 0 }, %struct.ltest { ptr @.str.164, i64 -9223372036854775808, i32 31, i8 0, i32 34 }, %struct.ltest { ptr @.str.165, i64 -9223372036854775808, i32 32, i8 0, i32 0 }, %struct.ltest { ptr @.str.166, i64 -9223372036854775808, i32 32, i8 0, i32 34 }, %struct.ltest { ptr @.str.167, i64 -9223372036854775808, i32 33, i8 0, i32 0 }, %struct.ltest { ptr @.str.168, i64 -9223372036854775808, i32 33, i8 0, i32 34 }, %struct.ltest { ptr @.str.169, i64 -9223372036854775808, i32 34, i8 0, i32 0 }, %struct.ltest { ptr @.str.170, i64 -9223372036854775808, i32 34, i8 0, i32 34 }, %struct.ltest { ptr @.str.171, i64 -9223372036854775808, i32 35, i8 0, i32 0 }, %struct.ltest { ptr @.str.172, i64 -9223372036854775808, i32 35, i8 0, i32 34 }, %struct.ltest { ptr @.str.173, i64 -9223372036854775808, i32 36, i8 0, i32 0 }, %struct.ltest { ptr @.str.174, i64 -9223372036854775808, i32 36, i8 0, i32 34 }, %struct.ltest zeroinitializer, %struct.ltest { ptr @.str.175, i64 0, i32 0, i8 0, i32 0 }, %struct.ltest { ptr @.str.176, i64 4294967295, i32 0, i8 103, i32 0 }, %struct.ltest { ptr @.str.177, i64 -1, i32 0, i8 103, i32 0 }, %struct.ltest { ptr @.str.178, i64 -1147797409030816545, i32 0, i8 0, i32 0 }, %struct.ltest { ptr @.str.179, i64 -1, i32 0, i8 0, i32 34 }, %struct.ltest { ptr @.str.180, i64 -1, i32 0, i8 0, i32 34 }, %struct.ltest { ptr @.str.181, i64 -1, i32 2, i8 0, i32 0 }, %struct.ltest { ptr @.str.182, i64 -1, i32 2, i8 0, i32 34 }, %struct.ltest { ptr @.str.183, i64 -1, i32 3, i8 0, i32 0 }, %struct.ltest { ptr @.str.184, i64 -1, i32 3, i8 0, i32 34 }, %struct.ltest { ptr @.str.185, i64 -1, i32 4, i8 0, i32 0 }, %struct.ltest { ptr @.str.186, i64 -1, i32 4, i8 0, i32 34 }, %struct.ltest { ptr @.str.187, i64 -1, i32 5, i8 0, i32 0 }, %struct.ltest { ptr @.str.188, i64 -1, i32 5, i8 0, i32 34 }, %struct.ltest { ptr @.str.189, i64 -1, i32 6, i8 0, i32 0 }, %struct.ltest { ptr @.str.190, i64 -1, i32 6, i8 0, i32 34 }, %struct.ltest { ptr @.str.191, i64 -1, i32 7, i8 0, i32 0 }, %struct.ltest { ptr @.str.192, i64 -1, i32 7, i8 0, i32 34 }, %struct.ltest { ptr @.str.193, i64 -1, i32 8, i8 0, i32 0 }, %struct.ltest { ptr @.str.194, i64 -1, i32 8, i8 0, i32 34 }, %struct.ltest { ptr @.str.195, i64 -1, i32 9, i8 0, i32 0 }, %struct.ltest { ptr @.str.196, i64 -1, i32 9, i8 0, i32 34 }, %struct.ltest { ptr @.str.197, i64 -1, i32 10, i8 0, i32 0 }, %struct.ltest { ptr @.str.198, i64 -1, i32 10, i8 0, i32 34 }, %struct.ltest { ptr @.str.199, i64 -1, i32 11, i8 0, i32 0 }, %struct.ltest { ptr @.str.200, i64 -1, i32 11, i8 0, i32 34 }, %struct.ltest { ptr @.str.201, i64 -1, i32 12, i8 0, i32 0 }, %struct.ltest { ptr @.str.202, i64 -1, i32 12, i8 0, i32 34 }, %struct.ltest { ptr @.str.203, i64 -1, i32 13, i8 0, i32 0 }, %struct.ltest { ptr @.str.204, i64 -1, i32 13, i8 0, i32 34 }, %struct.ltest { ptr @.str.205, i64 -1, i32 14, i8 0, i32 0 }, %struct.ltest { ptr @.str.206, i64 -1, i32 14, i8 0, i32 34 }, %struct.ltest { ptr @.str.207, i64 -1, i32 15, i8 0, i32 0 }, %struct.ltest { ptr @.str.208, i64 -1, i32 15, i8 0, i32 34 }, %struct.ltest { ptr @.str.209, i64 -1, i32 16, i8 0, i32 0 }, %struct.ltest { ptr @.str.210, i64 -1, i32 16, i8 0, i32 34 }, %struct.ltest { ptr @.str.211, i64 -1, i32 17, i8 0, i32 0 }, %struct.ltest { ptr @.str.212, i64 -1, i32 17, i8 0, i32 34 }, %struct.ltest { ptr @.str.213, i64 -1, i32 18, i8 0, i32 0 }, %struct.ltest { ptr @.str.214, i64 -1, i32 18, i8 0, i32 34 }, %struct.ltest { ptr @.str.215, i64 -1, i32 19, i8 0, i32 0 }, %struct.ltest { ptr @.str.216, i64 -1, i32 19, i8 0, i32 34 }, %struct.ltest { ptr @.str.217, i64 -1, i32 20, i8 0, i32 0 }, %struct.ltest { ptr @.str.218, i64 -1, i32 20, i8 0, i32 34 }, %struct.ltest { ptr @.str.219, i64 -1, i32 21, i8 0, i32 0 }, %struct.ltest { ptr @.str.220, i64 -1, i32 21, i8 0, i32 34 }, %struct.ltest { ptr @.str.221, i64 -1, i32 22, i8 0, i32 0 }, %struct.ltest { ptr @.str.222, i64 -1, i32 22, i8 0, i32 34 }, %struct.ltest { ptr @.str.223, i64 -1, i32 23, i8 0, i32 0 }, %struct.ltest { ptr @.str.224, i64 -1, i32 23, i8 0, i32 34 }, %struct.ltest { ptr @.str.225, i64 -1, i32 24, i8 0, i32 0 }, %struct.ltest { ptr @.str.226, i64 -1, i32 24, i8 0, i32 34 }, %struct.ltest { ptr @.str.227, i64 -1, i32 25, i8 0, i32 0 }, %struct.ltest { ptr @.str.228, i64 -1, i32 25, i8 0, i32 34 }, %struct.ltest { ptr @.str.229, i64 -1, i32 26, i8 0, i32 0 }, %struct.ltest { ptr @.str.230, i64 -1, i32 26, i8 0, i32 34 }, %struct.ltest { ptr @.str.231, i64 -1, i32 27, i8 0, i32 0 }, %struct.ltest { ptr @.str.232, i64 -1, i32 27, i8 0, i32 34 }, %struct.ltest { ptr @.str.233, i64 -1, i32 28, i8 0, i32 0 }, %struct.ltest { ptr @.str.234, i64 -1, i32 28, i8 0, i32 34 }, %struct.ltest { ptr @.str.235, i64 -1, i32 29, i8 0, i32 0 }, %struct.ltest { ptr @.str.236, i64 -1, i32 29, i8 0, i32 34 }, %struct.ltest { ptr @.str.237, i64 -1, i32 30, i8 0, i32 0 }, %struct.ltest { ptr @.str.238, i64 -1, i32 30, i8 0, i32 34 }, %struct.ltest { ptr @.str.239, i64 -1, i32 31, i8 0, i32 0 }, %struct.ltest { ptr @.str.240, i64 -1, i32 31, i8 0, i32 34 }, %struct.ltest { ptr @.str.241, i64 -1, i32 32, i8 0, i32 0 }, %struct.ltest { ptr @.str.242, i64 -1, i32 32, i8 0, i32 34 }, %struct.ltest { ptr @.str.243, i64 -1, i32 33, i8 0, i32 0 }, %struct.ltest { ptr @.str.244, i64 -1, i32 33, i8 0, i32 34 }, %struct.ltest { ptr @.str.245, i64 -1, i32 34, i8 0, i32 0 }, %struct.ltest { ptr @.str.246, i64 -1, i32 34, i8 0, i32 34 }, %struct.ltest { ptr @.str.247, i64 -1, i32 35, i8 0, i32 0 }, %struct.ltest { ptr @.str.248, i64 -1, i32 35, i8 0, i32 34 }, %struct.ltest { ptr @.str.249, i64 -1, i32 36, i8 0, i32 0 }, %struct.ltest { ptr @.str.250, i64 -1, i32 36, i8 0, i32 34 }, %struct.ltest zeroinitializer], align 8
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

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %lt = alloca ptr, align 8
  %ep = alloca ptr, align 8
  %status = alloca i32, align 4
  %save_errno = alloca i32, align 4
  %l = alloca i64, align 8
  %exp1 = alloca [5 x i8], align 1
  %exp2 = alloca [5 x i8], align 1
  %ul = alloca i64, align 8
  %exp197 = alloca [5 x i8], align 1
  %exp298 = alloca [5 x i8], align 1
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %status, align 4
  store ptr @tests, ptr %lt, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %lt, align 8
  %str = getelementptr inbounds %struct.ltest, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %str, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call ptr @__error()
  store i32 0, ptr %call, align 4
  %2 = load ptr, ptr %lt, align 8
  %str1 = getelementptr inbounds %struct.ltest, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %str1, align 8
  %4 = load ptr, ptr %lt, align 8
  %base = getelementptr inbounds %struct.ltest, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %base, align 8
  %call2 = call i64 @strtoll(ptr noundef %3, ptr noundef %ep, i32 noundef %5)
  store i64 %call2, ptr %l, align 8
  %call3 = call ptr @__error()
  %6 = load i32, ptr %call3, align 4
  store i32 %6, ptr %save_errno, align 4
  %7 = load ptr, ptr %lt, align 8
  %str4 = getelementptr inbounds %struct.ltest, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %str4, align 8
  %9 = load ptr, ptr %lt, align 8
  %base5 = getelementptr inbounds %struct.ltest, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %base5, align 8
  %11 = load ptr, ptr %lt, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint (ptr @tests to i64)
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  %conv = trunc i64 %sub.ptr.div to i32
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %8, i32 noundef %10, i32 noundef %conv)
  %12 = load i64, ptr %l, align 8
  %13 = load ptr, ptr %lt, align 8
  %expect = getelementptr inbounds %struct.ltest, ptr %13, i32 0, i32 1
  %14 = load i64, ptr %expect, align 8
  %cmp7 = icmp eq i64 %12, %14
  br i1 %cmp7, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %15 = load ptr, ptr %ep, align 8
  %16 = load i8, ptr %15, align 1
  %conv9 = sext i8 %16 to i32
  %17 = load ptr, ptr %lt, align 8
  %left = getelementptr inbounds %struct.ltest, ptr %17, i32 0, i32 3
  %18 = load i8, ptr %left, align 4
  %conv10 = sext i8 %18 to i32
  %cmp11 = icmp eq i32 %conv9, %conv10
  br i1 %cmp11, label %land.lhs.true13, label %if.else

land.lhs.true13:                                  ; preds = %land.lhs.true
  %19 = load i32, ptr %save_errno, align 4
  %20 = load ptr, ptr %lt, align 8
  %err = getelementptr inbounds %struct.ltest, ptr %20, i32 0, i32 4
  %21 = load i32, ptr %err, align 8
  %cmp14 = icmp eq i32 %19, %21
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true13
  %call16 = call i32 @puts(ptr noundef @.str.1)
  br label %if.end48

if.else:                                          ; preds = %land.lhs.true13, %land.lhs.true, %for.body
  %call17 = call i32 @puts(ptr noundef @.str.2)
  %22 = load i64, ptr %l, align 8
  %23 = load ptr, ptr %lt, align 8
  %expect18 = getelementptr inbounds %struct.ltest, ptr %23, i32 0, i32 1
  %24 = load i64, ptr %expect18, align 8
  %cmp19 = icmp ne i64 %22, %24
  br i1 %cmp19, label %if.then21, label %if.end

if.then21:                                        ; preds = %if.else
  %25 = load i64, ptr %l, align 8
  %26 = load ptr, ptr %lt, align 8
  %expect22 = getelementptr inbounds %struct.ltest, ptr %26, i32 0, i32 1
  %27 = load i64, ptr %expect22, align 8
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i64 noundef %25, i64 noundef %27)
  br label %if.end

if.end:                                           ; preds = %if.then21, %if.else
  %28 = load ptr, ptr %lt, align 8
  %left24 = getelementptr inbounds %struct.ltest, ptr %28, i32 0, i32 3
  %29 = load i8, ptr %left24, align 4
  %conv25 = sext i8 %29 to i32
  %30 = load ptr, ptr %ep, align 8
  %31 = load i8, ptr %30, align 1
  %conv26 = sext i8 %31 to i32
  %cmp27 = icmp ne i32 %conv25, %conv26
  br i1 %cmp27, label %if.then29, label %if.end37

if.then29:                                        ; preds = %if.end
  %arraydecay = getelementptr inbounds [5 x i8], ptr %exp1, i64 0, i64 0
  %32 = load ptr, ptr %ep, align 8
  %33 = load i8, ptr %32, align 1
  %conv30 = sext i8 %33 to i32
  call void @expand(ptr noundef %arraydecay, i32 noundef %conv30)
  %arraydecay31 = getelementptr inbounds [5 x i8], ptr %exp2, i64 0, i64 0
  %34 = load ptr, ptr %lt, align 8
  %left32 = getelementptr inbounds %struct.ltest, ptr %34, i32 0, i32 3
  %35 = load i8, ptr %left32, align 4
  %conv33 = sext i8 %35 to i32
  call void @expand(ptr noundef %arraydecay31, i32 noundef %conv33)
  %arraydecay34 = getelementptr inbounds [5 x i8], ptr %exp1, i64 0, i64 0
  %arraydecay35 = getelementptr inbounds [5 x i8], ptr %exp2, i64 0, i64 0
  %call36 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %arraydecay34, ptr noundef %arraydecay35)
  br label %if.end37

if.end37:                                         ; preds = %if.then29, %if.end
  %36 = load i32, ptr %save_errno, align 4
  %37 = load ptr, ptr %lt, align 8
  %err38 = getelementptr inbounds %struct.ltest, ptr %37, i32 0, i32 4
  %38 = load i32, ptr %err38, align 8
  %cmp39 = icmp ne i32 %36, %38
  br i1 %cmp39, label %if.then41, label %if.end47

if.then41:                                        ; preds = %if.end37
  %39 = load i32, ptr %save_errno, align 4
  %40 = load i32, ptr %save_errno, align 4
  %call42 = call ptr @"\01_strerror"(i32 noundef %40)
  %41 = load ptr, ptr %lt, align 8
  %err43 = getelementptr inbounds %struct.ltest, ptr %41, i32 0, i32 4
  %42 = load i32, ptr %err43, align 8
  %43 = load ptr, ptr %lt, align 8
  %err44 = getelementptr inbounds %struct.ltest, ptr %43, i32 0, i32 4
  %44 = load i32, ptr %err44, align 8
  %call45 = call ptr @"\01_strerror"(i32 noundef %44)
  %call46 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %39, ptr noundef %call42, i32 noundef %42, ptr noundef %call45)
  br label %if.end47

if.end47:                                         ; preds = %if.then41, %if.end37
  store i32 1, ptr %status, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end48
  %45 = load ptr, ptr %lt, align 8
  %incdec.ptr = getelementptr inbounds %struct.ltest, ptr %45, i32 1
  store ptr %incdec.ptr, ptr %lt, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %46 = load ptr, ptr %lt, align 8
  %incdec.ptr49 = getelementptr inbounds %struct.ltest, ptr %46, i32 1
  store ptr %incdec.ptr49, ptr %lt, align 8
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc119, %for.end
  %47 = load ptr, ptr %lt, align 8
  %str51 = getelementptr inbounds %struct.ltest, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %str51, align 8
  %cmp52 = icmp ne ptr %48, null
  br i1 %cmp52, label %for.body54, label %for.end121

for.body54:                                       ; preds = %for.cond50
  %call55 = call ptr @__error()
  store i32 0, ptr %call55, align 4
  %49 = load ptr, ptr %lt, align 8
  %str56 = getelementptr inbounds %struct.ltest, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %str56, align 8
  %51 = load ptr, ptr %lt, align 8
  %base57 = getelementptr inbounds %struct.ltest, ptr %51, i32 0, i32 2
  %52 = load i32, ptr %base57, align 8
  %call58 = call i64 @strtoull(ptr noundef %50, ptr noundef %ep, i32 noundef %52)
  store i64 %call58, ptr %ul, align 8
  %call59 = call ptr @__error()
  %53 = load i32, ptr %call59, align 4
  store i32 %53, ptr %save_errno, align 4
  %54 = load ptr, ptr %lt, align 8
  %str60 = getelementptr inbounds %struct.ltest, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %str60, align 8
  %56 = load ptr, ptr %lt, align 8
  %base61 = getelementptr inbounds %struct.ltest, ptr %56, i32 0, i32 2
  %57 = load i32, ptr %base61, align 8
  %58 = load ptr, ptr %lt, align 8
  %sub.ptr.lhs.cast62 = ptrtoint ptr %58 to i64
  %sub.ptr.sub63 = sub i64 %sub.ptr.lhs.cast62, ptrtoint (ptr @tests to i64)
  %sub.ptr.div64 = sdiv exact i64 %sub.ptr.sub63, 32
  %conv65 = trunc i64 %sub.ptr.div64 to i32
  %call66 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, ptr noundef %55, i32 noundef %57, i32 noundef %conv65)
  %59 = load i64, ptr %ul, align 8
  %60 = load ptr, ptr %lt, align 8
  %expect67 = getelementptr inbounds %struct.ltest, ptr %60, i32 0, i32 1
  %61 = load i64, ptr %expect67, align 8
  %cmp68 = icmp eq i64 %59, %61
  br i1 %cmp68, label %land.lhs.true70, label %if.else82

land.lhs.true70:                                  ; preds = %for.body54
  %62 = load ptr, ptr %ep, align 8
  %63 = load i8, ptr %62, align 1
  %conv71 = sext i8 %63 to i32
  %64 = load ptr, ptr %lt, align 8
  %left72 = getelementptr inbounds %struct.ltest, ptr %64, i32 0, i32 3
  %65 = load i8, ptr %left72, align 4
  %conv73 = sext i8 %65 to i32
  %cmp74 = icmp eq i32 %conv71, %conv73
  br i1 %cmp74, label %land.lhs.true76, label %if.else82

land.lhs.true76:                                  ; preds = %land.lhs.true70
  %66 = load i32, ptr %save_errno, align 4
  %67 = load ptr, ptr %lt, align 8
  %err77 = getelementptr inbounds %struct.ltest, ptr %67, i32 0, i32 4
  %68 = load i32, ptr %err77, align 8
  %cmp78 = icmp eq i32 %66, %68
  br i1 %cmp78, label %if.then80, label %if.else82

if.then80:                                        ; preds = %land.lhs.true76
  %call81 = call i32 @puts(ptr noundef @.str.1)
  br label %if.end118

if.else82:                                        ; preds = %land.lhs.true76, %land.lhs.true70, %for.body54
  %call83 = call i32 @puts(ptr noundef @.str.2)
  %69 = load i64, ptr %ul, align 8
  %70 = load ptr, ptr %lt, align 8
  %expect84 = getelementptr inbounds %struct.ltest, ptr %70, i32 0, i32 1
  %71 = load i64, ptr %expect84, align 8
  %cmp85 = icmp ne i64 %69, %71
  br i1 %cmp85, label %if.then87, label %if.end90

if.then87:                                        ; preds = %if.else82
  %72 = load i64, ptr %ul, align 8
  %73 = load ptr, ptr %lt, align 8
  %expect88 = getelementptr inbounds %struct.ltest, ptr %73, i32 0, i32 1
  %74 = load i64, ptr %expect88, align 8
  %call89 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i64 noundef %72, i64 noundef %74)
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %if.else82
  %75 = load ptr, ptr %lt, align 8
  %left91 = getelementptr inbounds %struct.ltest, ptr %75, i32 0, i32 3
  %76 = load i8, ptr %left91, align 4
  %conv92 = sext i8 %76 to i32
  %77 = load ptr, ptr %ep, align 8
  %78 = load i8, ptr %77, align 1
  %conv93 = sext i8 %78 to i32
  %cmp94 = icmp ne i32 %conv92, %conv93
  br i1 %cmp94, label %if.then96, label %if.end107

if.then96:                                        ; preds = %if.end90
  %arraydecay99 = getelementptr inbounds [5 x i8], ptr %exp197, i64 0, i64 0
  %79 = load ptr, ptr %ep, align 8
  %80 = load i8, ptr %79, align 1
  %conv100 = sext i8 %80 to i32
  call void @expand(ptr noundef %arraydecay99, i32 noundef %conv100)
  %arraydecay101 = getelementptr inbounds [5 x i8], ptr %exp298, i64 0, i64 0
  %81 = load ptr, ptr %lt, align 8
  %left102 = getelementptr inbounds %struct.ltest, ptr %81, i32 0, i32 3
  %82 = load i8, ptr %left102, align 4
  %conv103 = sext i8 %82 to i32
  call void @expand(ptr noundef %arraydecay101, i32 noundef %conv103)
  %arraydecay104 = getelementptr inbounds [5 x i8], ptr %exp197, i64 0, i64 0
  %arraydecay105 = getelementptr inbounds [5 x i8], ptr %exp298, i64 0, i64 0
  %call106 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %arraydecay104, ptr noundef %arraydecay105)
  br label %if.end107

if.end107:                                        ; preds = %if.then96, %if.end90
  %83 = load i32, ptr %save_errno, align 4
  %84 = load ptr, ptr %lt, align 8
  %err108 = getelementptr inbounds %struct.ltest, ptr %84, i32 0, i32 4
  %85 = load i32, ptr %err108, align 8
  %cmp109 = icmp ne i32 %83, %85
  br i1 %cmp109, label %if.then111, label %if.end117

if.then111:                                       ; preds = %if.end107
  %86 = load i32, ptr %save_errno, align 4
  %87 = load i32, ptr %save_errno, align 4
  %call112 = call ptr @"\01_strerror"(i32 noundef %87)
  %88 = load ptr, ptr %lt, align 8
  %err113 = getelementptr inbounds %struct.ltest, ptr %88, i32 0, i32 4
  %89 = load i32, ptr %err113, align 8
  %90 = load ptr, ptr %lt, align 8
  %err114 = getelementptr inbounds %struct.ltest, ptr %90, i32 0, i32 4
  %91 = load i32, ptr %err114, align 8
  %call115 = call ptr @"\01_strerror"(i32 noundef %91)
  %call116 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %86, ptr noundef %call112, i32 noundef %89, ptr noundef %call115)
  br label %if.end117

if.end117:                                        ; preds = %if.then111, %if.end107
  store i32 1, ptr %status, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.then80
  br label %for.inc119

for.inc119:                                       ; preds = %if.end118
  %92 = load ptr, ptr %lt, align 8
  %incdec.ptr120 = getelementptr inbounds %struct.ltest, ptr %92, i32 1
  store ptr %incdec.ptr120, ptr %lt, align 8
  br label %for.cond50, !llvm.loop !7

for.end121:                                       ; preds = %for.cond50
  %93 = load i32, ptr %status, align 4
  %tobool = icmp ne i32 %93, 0
  %94 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  ret i32 %cond
}

declare ptr @__error() #1

declare i64 @strtoll(ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @puts(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @expand(ptr noundef %dst, i32 noundef %c) #0 {
entry:
  %dst.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  store i32 %c, ptr %c.addr, align 4
  %0 = load i32, ptr %c.addr, align 4
  %call = call i32 @isprint(i32 noundef %0) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %c.addr, align 4
  %conv = trunc i32 %1 to i8
  %2 = load ptr, ptr %dst.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0
  store i8 %conv, ptr %arrayidx, align 1
  %3 = load ptr, ptr %dst.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %3, i64 1
  store i8 0, ptr %arrayidx1, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %dst.addr, align 8
  %5 = load ptr, ptr %dst.addr, align 8
  %6 = call i64 @llvm.objectsize.i64.p0(ptr %5, i1 false, i1 true, i1 false)
  %7 = load i32, ptr %c.addr, align 4
  %call2 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %4, i32 noundef 0, i64 noundef %6, ptr noundef @.str.251, i32 noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare ptr @"\01_strerror"(i32 noundef) #1

declare i64 @strtoull(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isprint(i32 noundef) #2

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
