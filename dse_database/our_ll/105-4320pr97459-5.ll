; ModuleID = 'code/105-4320pr97459-5.c'
source_filename = "code/105-4320pr97459-5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i128, { i64, i64 } (i64, i64, i128*)*, [8 x i8] }

@tests = dso_local global [466 x %struct.S] [%struct.S { i128 1, { i64, i64 } (i64, i64, i128*)* @foo10001, [8 x i8] undef }, %struct.S { i128 3, { i64, i64 } (i64, i64, i128*)* @foo10003, [8 x i8] undef }, %struct.S { i128 5, { i64, i64 } (i64, i64, i128*)* @foo10005, [8 x i8] undef }, %struct.S { i128 7, { i64, i64 } (i64, i64, i128*)* @foo10007, [8 x i8] undef }, %struct.S { i128 9, { i64, i64 } (i64, i64, i128*)* @foo10009, [8 x i8] undef }, %struct.S { i128 11, { i64, i64 } (i64, i64, i128*)* @foo10011, [8 x i8] undef }, %struct.S { i128 13, { i64, i64 } (i64, i64, i128*)* @foo10013, [8 x i8] undef }, %struct.S { i128 15, { i64, i64 } (i64, i64, i128*)* @foo10015, [8 x i8] undef }, %struct.S { i128 17, { i64, i64 } (i64, i64, i128*)* @foo10017, [8 x i8] undef }, %struct.S { i128 19, { i64, i64 } (i64, i64, i128*)* @foo10019, [8 x i8] undef }, %struct.S { i128 21, { i64, i64 } (i64, i64, i128*)* @foo10021, [8 x i8] undef }, %struct.S { i128 23, { i64, i64 } (i64, i64, i128*)* @foo10023, [8 x i8] undef }, %struct.S { i128 25, { i64, i64 } (i64, i64, i128*)* @foo10025, [8 x i8] undef }, %struct.S { i128 27, { i64, i64 } (i64, i64, i128*)* @foo10027, [8 x i8] undef }, %struct.S { i128 29, { i64, i64 } (i64, i64, i128*)* @foo10029, [8 x i8] undef }, %struct.S { i128 31, { i64, i64 } (i64, i64, i128*)* @foo10031, [8 x i8] undef }, %struct.S { i128 33, { i64, i64 } (i64, i64, i128*)* @foo10033, [8 x i8] undef }, %struct.S { i128 35, { i64, i64 } (i64, i64, i128*)* @foo10035, [8 x i8] undef }, %struct.S { i128 37, { i64, i64 } (i64, i64, i128*)* @foo10037, [8 x i8] undef }, %struct.S { i128 39, { i64, i64 } (i64, i64, i128*)* @foo10039, [8 x i8] undef }, %struct.S { i128 41, { i64, i64 } (i64, i64, i128*)* @foo10041, [8 x i8] undef }, %struct.S { i128 43, { i64, i64 } (i64, i64, i128*)* @foo10043, [8 x i8] undef }, %struct.S { i128 45, { i64, i64 } (i64, i64, i128*)* @foo10045, [8 x i8] undef }, %struct.S { i128 47, { i64, i64 } (i64, i64, i128*)* @foo10047, [8 x i8] undef }, %struct.S { i128 49, { i64, i64 } (i64, i64, i128*)* @foo10049, [8 x i8] undef }, %struct.S { i128 51, { i64, i64 } (i64, i64, i128*)* @foo10051, [8 x i8] undef }, %struct.S { i128 53, { i64, i64 } (i64, i64, i128*)* @foo10053, [8 x i8] undef }, %struct.S { i128 55, { i64, i64 } (i64, i64, i128*)* @foo10055, [8 x i8] undef }, %struct.S { i128 57, { i64, i64 } (i64, i64, i128*)* @foo10057, [8 x i8] undef }, %struct.S { i128 59, { i64, i64 } (i64, i64, i128*)* @foo10059, [8 x i8] undef }, %struct.S { i128 61, { i64, i64 } (i64, i64, i128*)* @foo10061, [8 x i8] undef }, %struct.S { i128 63, { i64, i64 } (i64, i64, i128*)* @foo10063, [8 x i8] undef }, %struct.S { i128 65, { i64, i64 } (i64, i64, i128*)* @foo10065, [8 x i8] undef }, %struct.S { i128 67, { i64, i64 } (i64, i64, i128*)* @foo10067, [8 x i8] undef }, %struct.S { i128 69, { i64, i64 } (i64, i64, i128*)* @foo10069, [8 x i8] undef }, %struct.S { i128 71, { i64, i64 } (i64, i64, i128*)* @foo10071, [8 x i8] undef }, %struct.S { i128 73, { i64, i64 } (i64, i64, i128*)* @foo10073, [8 x i8] undef }, %struct.S { i128 75, { i64, i64 } (i64, i64, i128*)* @foo10075, [8 x i8] undef }, %struct.S { i128 77, { i64, i64 } (i64, i64, i128*)* @foo10077, [8 x i8] undef }, %struct.S { i128 79, { i64, i64 } (i64, i64, i128*)* @foo10079, [8 x i8] undef }, %struct.S { i128 81, { i64, i64 } (i64, i64, i128*)* @foo10081, [8 x i8] undef }, %struct.S { i128 83, { i64, i64 } (i64, i64, i128*)* @foo10083, [8 x i8] undef }, %struct.S { i128 85, { i64, i64 } (i64, i64, i128*)* @foo10085, [8 x i8] undef }, %struct.S { i128 87, { i64, i64 } (i64, i64, i128*)* @foo10087, [8 x i8] undef }, %struct.S { i128 89, { i64, i64 } (i64, i64, i128*)* @foo10089, [8 x i8] undef }, %struct.S { i128 91, { i64, i64 } (i64, i64, i128*)* @foo10091, [8 x i8] undef }, %struct.S { i128 93, { i64, i64 } (i64, i64, i128*)* @foo10093, [8 x i8] undef }, %struct.S { i128 95, { i64, i64 } (i64, i64, i128*)* @foo10095, [8 x i8] undef }, %struct.S { i128 97, { i64, i64 } (i64, i64, i128*)* @foo10097, [8 x i8] undef }, %struct.S { i128 99, { i64, i64 } (i64, i64, i128*)* @foo10099, [8 x i8] undef }, %struct.S { i128 401, { i64, i64 } (i64, i64, i128*)* @foo10401, [8 x i8] undef }, %struct.S { i128 403, { i64, i64 } (i64, i64, i128*)* @foo10403, [8 x i8] undef }, %struct.S { i128 405, { i64, i64 } (i64, i64, i128*)* @foo10405, [8 x i8] undef }, %struct.S { i128 407, { i64, i64 } (i64, i64, i128*)* @foo10407, [8 x i8] undef }, %struct.S { i128 409, { i64, i64 } (i64, i64, i128*)* @foo10409, [8 x i8] undef }, %struct.S { i128 411, { i64, i64 } (i64, i64, i128*)* @foo10411, [8 x i8] undef }, %struct.S { i128 413, { i64, i64 } (i64, i64, i128*)* @foo10413, [8 x i8] undef }, %struct.S { i128 415, { i64, i64 } (i64, i64, i128*)* @foo10415, [8 x i8] undef }, %struct.S { i128 417, { i64, i64 } (i64, i64, i128*)* @foo10417, [8 x i8] undef }, %struct.S { i128 419, { i64, i64 } (i64, i64, i128*)* @foo10419, [8 x i8] undef }, %struct.S { i128 421, { i64, i64 } (i64, i64, i128*)* @foo10421, [8 x i8] undef }, %struct.S { i128 423, { i64, i64 } (i64, i64, i128*)* @foo10423, [8 x i8] undef }, %struct.S { i128 425, { i64, i64 } (i64, i64, i128*)* @foo10425, [8 x i8] undef }, %struct.S { i128 427, { i64, i64 } (i64, i64, i128*)* @foo10427, [8 x i8] undef }, %struct.S { i128 429, { i64, i64 } (i64, i64, i128*)* @foo10429, [8 x i8] undef }, %struct.S { i128 431, { i64, i64 } (i64, i64, i128*)* @foo10431, [8 x i8] undef }, %struct.S { i128 433, { i64, i64 } (i64, i64, i128*)* @foo10433, [8 x i8] undef }, %struct.S { i128 435, { i64, i64 } (i64, i64, i128*)* @foo10435, [8 x i8] undef }, %struct.S { i128 437, { i64, i64 } (i64, i64, i128*)* @foo10437, [8 x i8] undef }, %struct.S { i128 439, { i64, i64 } (i64, i64, i128*)* @foo10439, [8 x i8] undef }, %struct.S { i128 441, { i64, i64 } (i64, i64, i128*)* @foo10441, [8 x i8] undef }, %struct.S { i128 443, { i64, i64 } (i64, i64, i128*)* @foo10443, [8 x i8] undef }, %struct.S { i128 445, { i64, i64 } (i64, i64, i128*)* @foo10445, [8 x i8] undef }, %struct.S { i128 447, { i64, i64 } (i64, i64, i128*)* @foo10447, [8 x i8] undef }, %struct.S { i128 449, { i64, i64 } (i64, i64, i128*)* @foo10449, [8 x i8] undef }, %struct.S { i128 451, { i64, i64 } (i64, i64, i128*)* @foo10451, [8 x i8] undef }, %struct.S { i128 453, { i64, i64 } (i64, i64, i128*)* @foo10453, [8 x i8] undef }, %struct.S { i128 455, { i64, i64 } (i64, i64, i128*)* @foo10455, [8 x i8] undef }, %struct.S { i128 457, { i64, i64 } (i64, i64, i128*)* @foo10457, [8 x i8] undef }, %struct.S { i128 459, { i64, i64 } (i64, i64, i128*)* @foo10459, [8 x i8] undef }, %struct.S { i128 461, { i64, i64 } (i64, i64, i128*)* @foo10461, [8 x i8] undef }, %struct.S { i128 463, { i64, i64 } (i64, i64, i128*)* @foo10463, [8 x i8] undef }, %struct.S { i128 465, { i64, i64 } (i64, i64, i128*)* @foo10465, [8 x i8] undef }, %struct.S { i128 467, { i64, i64 } (i64, i64, i128*)* @foo10467, [8 x i8] undef }, %struct.S { i128 469, { i64, i64 } (i64, i64, i128*)* @foo10469, [8 x i8] undef }, %struct.S { i128 471, { i64, i64 } (i64, i64, i128*)* @foo10471, [8 x i8] undef }, %struct.S { i128 473, { i64, i64 } (i64, i64, i128*)* @foo10473, [8 x i8] undef }, %struct.S { i128 475, { i64, i64 } (i64, i64, i128*)* @foo10475, [8 x i8] undef }, %struct.S { i128 477, { i64, i64 } (i64, i64, i128*)* @foo10477, [8 x i8] undef }, %struct.S { i128 479, { i64, i64 } (i64, i64, i128*)* @foo10479, [8 x i8] undef }, %struct.S { i128 481, { i64, i64 } (i64, i64, i128*)* @foo10481, [8 x i8] undef }, %struct.S { i128 483, { i64, i64 } (i64, i64, i128*)* @foo10483, [8 x i8] undef }, %struct.S { i128 485, { i64, i64 } (i64, i64, i128*)* @foo10485, [8 x i8] undef }, %struct.S { i128 487, { i64, i64 } (i64, i64, i128*)* @foo10487, [8 x i8] undef }, %struct.S { i128 489, { i64, i64 } (i64, i64, i128*)* @foo10489, [8 x i8] undef }, %struct.S { i128 491, { i64, i64 } (i64, i64, i128*)* @foo10491, [8 x i8] undef }, %struct.S { i128 493, { i64, i64 } (i64, i64, i128*)* @foo10493, [8 x i8] undef }, %struct.S { i128 495, { i64, i64 } (i64, i64, i128*)* @foo10495, [8 x i8] undef }, %struct.S { i128 497, { i64, i64 } (i64, i64, i128*)* @foo10497, [8 x i8] undef }, %struct.S { i128 499, { i64, i64 } (i64, i64, i128*)* @foo10499, [8 x i8] undef }, %struct.S { i128 901, { i64, i64 } (i64, i64, i128*)* @foo10901, [8 x i8] undef }, %struct.S { i128 903, { i64, i64 } (i64, i64, i128*)* @foo10903, [8 x i8] undef }, %struct.S { i128 905, { i64, i64 } (i64, i64, i128*)* @foo10905, [8 x i8] undef }, %struct.S { i128 907, { i64, i64 } (i64, i64, i128*)* @foo10907, [8 x i8] undef }, %struct.S { i128 909, { i64, i64 } (i64, i64, i128*)* @foo10909, [8 x i8] undef }, %struct.S { i128 911, { i64, i64 } (i64, i64, i128*)* @foo10911, [8 x i8] undef }, %struct.S { i128 913, { i64, i64 } (i64, i64, i128*)* @foo10913, [8 x i8] undef }, %struct.S { i128 915, { i64, i64 } (i64, i64, i128*)* @foo10915, [8 x i8] undef }, %struct.S { i128 917, { i64, i64 } (i64, i64, i128*)* @foo10917, [8 x i8] undef }, %struct.S { i128 919, { i64, i64 } (i64, i64, i128*)* @foo10919, [8 x i8] undef }, %struct.S { i128 921, { i64, i64 } (i64, i64, i128*)* @foo10921, [8 x i8] undef }, %struct.S { i128 923, { i64, i64 } (i64, i64, i128*)* @foo10923, [8 x i8] undef }, %struct.S { i128 925, { i64, i64 } (i64, i64, i128*)* @foo10925, [8 x i8] undef }, %struct.S { i128 927, { i64, i64 } (i64, i64, i128*)* @foo10927, [8 x i8] undef }, %struct.S { i128 929, { i64, i64 } (i64, i64, i128*)* @foo10929, [8 x i8] undef }, %struct.S { i128 931, { i64, i64 } (i64, i64, i128*)* @foo10931, [8 x i8] undef }, %struct.S { i128 933, { i64, i64 } (i64, i64, i128*)* @foo10933, [8 x i8] undef }, %struct.S { i128 935, { i64, i64 } (i64, i64, i128*)* @foo10935, [8 x i8] undef }, %struct.S { i128 937, { i64, i64 } (i64, i64, i128*)* @foo10937, [8 x i8] undef }, %struct.S { i128 939, { i64, i64 } (i64, i64, i128*)* @foo10939, [8 x i8] undef }, %struct.S { i128 941, { i64, i64 } (i64, i64, i128*)* @foo10941, [8 x i8] undef }, %struct.S { i128 943, { i64, i64 } (i64, i64, i128*)* @foo10943, [8 x i8] undef }, %struct.S { i128 945, { i64, i64 } (i64, i64, i128*)* @foo10945, [8 x i8] undef }, %struct.S { i128 947, { i64, i64 } (i64, i64, i128*)* @foo10947, [8 x i8] undef }, %struct.S { i128 949, { i64, i64 } (i64, i64, i128*)* @foo10949, [8 x i8] undef }, %struct.S { i128 951, { i64, i64 } (i64, i64, i128*)* @foo10951, [8 x i8] undef }, %struct.S { i128 953, { i64, i64 } (i64, i64, i128*)* @foo10953, [8 x i8] undef }, %struct.S { i128 955, { i64, i64 } (i64, i64, i128*)* @foo10955, [8 x i8] undef }, %struct.S { i128 957, { i64, i64 } (i64, i64, i128*)* @foo10957, [8 x i8] undef }, %struct.S { i128 959, { i64, i64 } (i64, i64, i128*)* @foo10959, [8 x i8] undef }, %struct.S { i128 961, { i64, i64 } (i64, i64, i128*)* @foo10961, [8 x i8] undef }, %struct.S { i128 963, { i64, i64 } (i64, i64, i128*)* @foo10963, [8 x i8] undef }, %struct.S { i128 965, { i64, i64 } (i64, i64, i128*)* @foo10965, [8 x i8] undef }, %struct.S { i128 967, { i64, i64 } (i64, i64, i128*)* @foo10967, [8 x i8] undef }, %struct.S { i128 969, { i64, i64 } (i64, i64, i128*)* @foo10969, [8 x i8] undef }, %struct.S { i128 971, { i64, i64 } (i64, i64, i128*)* @foo10971, [8 x i8] undef }, %struct.S { i128 973, { i64, i64 } (i64, i64, i128*)* @foo10973, [8 x i8] undef }, %struct.S { i128 975, { i64, i64 } (i64, i64, i128*)* @foo10975, [8 x i8] undef }, %struct.S { i128 977, { i64, i64 } (i64, i64, i128*)* @foo10977, [8 x i8] undef }, %struct.S { i128 979, { i64, i64 } (i64, i64, i128*)* @foo10979, [8 x i8] undef }, %struct.S { i128 981, { i64, i64 } (i64, i64, i128*)* @foo10981, [8 x i8] undef }, %struct.S { i128 983, { i64, i64 } (i64, i64, i128*)* @foo10983, [8 x i8] undef }, %struct.S { i128 985, { i64, i64 } (i64, i64, i128*)* @foo10985, [8 x i8] undef }, %struct.S { i128 987, { i64, i64 } (i64, i64, i128*)* @foo10987, [8 x i8] undef }, %struct.S { i128 989, { i64, i64 } (i64, i64, i128*)* @foo10989, [8 x i8] undef }, %struct.S { i128 991, { i64, i64 } (i64, i64, i128*)* @foo10991, [8 x i8] undef }, %struct.S { i128 993, { i64, i64 } (i64, i64, i128*)* @foo10993, [8 x i8] undef }, %struct.S { i128 995, { i64, i64 } (i64, i64, i128*)* @foo10995, [8 x i8] undef }, %struct.S { i128 997, { i64, i64 } (i64, i64, i128*)* @foo10997, [8 x i8] undef }, %struct.S { i128 999, { i64, i64 } (i64, i64, i128*)* @foo10999, [8 x i8] undef }, %struct.S { i128 3001, { i64, i64 } (i64, i64, i128*)* @foo13001, [8 x i8] undef }, %struct.S { i128 3003, { i64, i64 } (i64, i64, i128*)* @foo13003, [8 x i8] undef }, %struct.S { i128 3005, { i64, i64 } (i64, i64, i128*)* @foo13005, [8 x i8] undef }, %struct.S { i128 3007, { i64, i64 } (i64, i64, i128*)* @foo13007, [8 x i8] undef }, %struct.S { i128 3009, { i64, i64 } (i64, i64, i128*)* @foo13009, [8 x i8] undef }, %struct.S { i128 3011, { i64, i64 } (i64, i64, i128*)* @foo13011, [8 x i8] undef }, %struct.S { i128 3013, { i64, i64 } (i64, i64, i128*)* @foo13013, [8 x i8] undef }, %struct.S { i128 3015, { i64, i64 } (i64, i64, i128*)* @foo13015, [8 x i8] undef }, %struct.S { i128 3017, { i64, i64 } (i64, i64, i128*)* @foo13017, [8 x i8] undef }, %struct.S { i128 3019, { i64, i64 } (i64, i64, i128*)* @foo13019, [8 x i8] undef }, %struct.S { i128 3021, { i64, i64 } (i64, i64, i128*)* @foo13021, [8 x i8] undef }, %struct.S { i128 3023, { i64, i64 } (i64, i64, i128*)* @foo13023, [8 x i8] undef }, %struct.S { i128 3025, { i64, i64 } (i64, i64, i128*)* @foo13025, [8 x i8] undef }, %struct.S { i128 3027, { i64, i64 } (i64, i64, i128*)* @foo13027, [8 x i8] undef }, %struct.S { i128 3029, { i64, i64 } (i64, i64, i128*)* @foo13029, [8 x i8] undef }, %struct.S { i128 3031, { i64, i64 } (i64, i64, i128*)* @foo13031, [8 x i8] undef }, %struct.S { i128 3033, { i64, i64 } (i64, i64, i128*)* @foo13033, [8 x i8] undef }, %struct.S { i128 3035, { i64, i64 } (i64, i64, i128*)* @foo13035, [8 x i8] undef }, %struct.S { i128 3037, { i64, i64 } (i64, i64, i128*)* @foo13037, [8 x i8] undef }, %struct.S { i128 3039, { i64, i64 } (i64, i64, i128*)* @foo13039, [8 x i8] undef }, %struct.S { i128 3041, { i64, i64 } (i64, i64, i128*)* @foo13041, [8 x i8] undef }, %struct.S { i128 3043, { i64, i64 } (i64, i64, i128*)* @foo13043, [8 x i8] undef }, %struct.S { i128 3045, { i64, i64 } (i64, i64, i128*)* @foo13045, [8 x i8] undef }, %struct.S { i128 3047, { i64, i64 } (i64, i64, i128*)* @foo13047, [8 x i8] undef }, %struct.S { i128 3049, { i64, i64 } (i64, i64, i128*)* @foo13049, [8 x i8] undef }, %struct.S { i128 3051, { i64, i64 } (i64, i64, i128*)* @foo13051, [8 x i8] undef }, %struct.S { i128 3053, { i64, i64 } (i64, i64, i128*)* @foo13053, [8 x i8] undef }, %struct.S { i128 3055, { i64, i64 } (i64, i64, i128*)* @foo13055, [8 x i8] undef }, %struct.S { i128 3057, { i64, i64 } (i64, i64, i128*)* @foo13057, [8 x i8] undef }, %struct.S { i128 3059, { i64, i64 } (i64, i64, i128*)* @foo13059, [8 x i8] undef }, %struct.S { i128 3061, { i64, i64 } (i64, i64, i128*)* @foo13061, [8 x i8] undef }, %struct.S { i128 3063, { i64, i64 } (i64, i64, i128*)* @foo13063, [8 x i8] undef }, %struct.S { i128 3065, { i64, i64 } (i64, i64, i128*)* @foo13065, [8 x i8] undef }, %struct.S { i128 3067, { i64, i64 } (i64, i64, i128*)* @foo13067, [8 x i8] undef }, %struct.S { i128 3069, { i64, i64 } (i64, i64, i128*)* @foo13069, [8 x i8] undef }, %struct.S { i128 3071, { i64, i64 } (i64, i64, i128*)* @foo13071, [8 x i8] undef }, %struct.S { i128 3073, { i64, i64 } (i64, i64, i128*)* @foo13073, [8 x i8] undef }, %struct.S { i128 3075, { i64, i64 } (i64, i64, i128*)* @foo13075, [8 x i8] undef }, %struct.S { i128 3077, { i64, i64 } (i64, i64, i128*)* @foo13077, [8 x i8] undef }, %struct.S { i128 3079, { i64, i64 } (i64, i64, i128*)* @foo13079, [8 x i8] undef }, %struct.S { i128 3081, { i64, i64 } (i64, i64, i128*)* @foo13081, [8 x i8] undef }, %struct.S { i128 3083, { i64, i64 } (i64, i64, i128*)* @foo13083, [8 x i8] undef }, %struct.S { i128 3085, { i64, i64 } (i64, i64, i128*)* @foo13085, [8 x i8] undef }, %struct.S { i128 3087, { i64, i64 } (i64, i64, i128*)* @foo13087, [8 x i8] undef }, %struct.S { i128 3089, { i64, i64 } (i64, i64, i128*)* @foo13089, [8 x i8] undef }, %struct.S { i128 3091, { i64, i64 } (i64, i64, i128*)* @foo13091, [8 x i8] undef }, %struct.S { i128 3093, { i64, i64 } (i64, i64, i128*)* @foo13093, [8 x i8] undef }, %struct.S { i128 3095, { i64, i64 } (i64, i64, i128*)* @foo13095, [8 x i8] undef }, %struct.S { i128 3097, { i64, i64 } (i64, i64, i128*)* @foo13097, [8 x i8] undef }, %struct.S { i128 3099, { i64, i64 } (i64, i64, i128*)* @foo13099, [8 x i8] undef }, %struct.S { i128 3401, { i64, i64 } (i64, i64, i128*)* @foo13401, [8 x i8] undef }, %struct.S { i128 3403, { i64, i64 } (i64, i64, i128*)* @foo13403, [8 x i8] undef }, %struct.S { i128 3405, { i64, i64 } (i64, i64, i128*)* @foo13405, [8 x i8] undef }, %struct.S { i128 3407, { i64, i64 } (i64, i64, i128*)* @foo13407, [8 x i8] undef }, %struct.S { i128 3409, { i64, i64 } (i64, i64, i128*)* @foo13409, [8 x i8] undef }, %struct.S { i128 3411, { i64, i64 } (i64, i64, i128*)* @foo13411, [8 x i8] undef }, %struct.S { i128 3413, { i64, i64 } (i64, i64, i128*)* @foo13413, [8 x i8] undef }, %struct.S { i128 3415, { i64, i64 } (i64, i64, i128*)* @foo13415, [8 x i8] undef }, %struct.S { i128 3417, { i64, i64 } (i64, i64, i128*)* @foo13417, [8 x i8] undef }, %struct.S { i128 3419, { i64, i64 } (i64, i64, i128*)* @foo13419, [8 x i8] undef }, %struct.S { i128 3421, { i64, i64 } (i64, i64, i128*)* @foo13421, [8 x i8] undef }, %struct.S { i128 3423, { i64, i64 } (i64, i64, i128*)* @foo13423, [8 x i8] undef }, %struct.S { i128 3425, { i64, i64 } (i64, i64, i128*)* @foo13425, [8 x i8] undef }, %struct.S { i128 3427, { i64, i64 } (i64, i64, i128*)* @foo13427, [8 x i8] undef }, %struct.S { i128 3429, { i64, i64 } (i64, i64, i128*)* @foo13429, [8 x i8] undef }, %struct.S { i128 3431, { i64, i64 } (i64, i64, i128*)* @foo13431, [8 x i8] undef }, %struct.S { i128 3433, { i64, i64 } (i64, i64, i128*)* @foo13433, [8 x i8] undef }, %struct.S { i128 3435, { i64, i64 } (i64, i64, i128*)* @foo13435, [8 x i8] undef }, %struct.S { i128 3437, { i64, i64 } (i64, i64, i128*)* @foo13437, [8 x i8] undef }, %struct.S { i128 3439, { i64, i64 } (i64, i64, i128*)* @foo13439, [8 x i8] undef }, %struct.S { i128 3441, { i64, i64 } (i64, i64, i128*)* @foo13441, [8 x i8] undef }, %struct.S { i128 3443, { i64, i64 } (i64, i64, i128*)* @foo13443, [8 x i8] undef }, %struct.S { i128 3445, { i64, i64 } (i64, i64, i128*)* @foo13445, [8 x i8] undef }, %struct.S { i128 3447, { i64, i64 } (i64, i64, i128*)* @foo13447, [8 x i8] undef }, %struct.S { i128 3449, { i64, i64 } (i64, i64, i128*)* @foo13449, [8 x i8] undef }, %struct.S { i128 3451, { i64, i64 } (i64, i64, i128*)* @foo13451, [8 x i8] undef }, %struct.S { i128 3453, { i64, i64 } (i64, i64, i128*)* @foo13453, [8 x i8] undef }, %struct.S { i128 3455, { i64, i64 } (i64, i64, i128*)* @foo13455, [8 x i8] undef }, %struct.S { i128 3457, { i64, i64 } (i64, i64, i128*)* @foo13457, [8 x i8] undef }, %struct.S { i128 3459, { i64, i64 } (i64, i64, i128*)* @foo13459, [8 x i8] undef }, %struct.S { i128 3461, { i64, i64 } (i64, i64, i128*)* @foo13461, [8 x i8] undef }, %struct.S { i128 3463, { i64, i64 } (i64, i64, i128*)* @foo13463, [8 x i8] undef }, %struct.S { i128 3465, { i64, i64 } (i64, i64, i128*)* @foo13465, [8 x i8] undef }, %struct.S { i128 3467, { i64, i64 } (i64, i64, i128*)* @foo13467, [8 x i8] undef }, %struct.S { i128 3469, { i64, i64 } (i64, i64, i128*)* @foo13469, [8 x i8] undef }, %struct.S { i128 3471, { i64, i64 } (i64, i64, i128*)* @foo13471, [8 x i8] undef }, %struct.S { i128 3473, { i64, i64 } (i64, i64, i128*)* @foo13473, [8 x i8] undef }, %struct.S { i128 3475, { i64, i64 } (i64, i64, i128*)* @foo13475, [8 x i8] undef }, %struct.S { i128 3477, { i64, i64 } (i64, i64, i128*)* @foo13477, [8 x i8] undef }, %struct.S { i128 3479, { i64, i64 } (i64, i64, i128*)* @foo13479, [8 x i8] undef }, %struct.S { i128 3481, { i64, i64 } (i64, i64, i128*)* @foo13481, [8 x i8] undef }, %struct.S { i128 3483, { i64, i64 } (i64, i64, i128*)* @foo13483, [8 x i8] undef }, %struct.S { i128 3485, { i64, i64 } (i64, i64, i128*)* @foo13485, [8 x i8] undef }, %struct.S { i128 3487, { i64, i64 } (i64, i64, i128*)* @foo13487, [8 x i8] undef }, %struct.S { i128 3489, { i64, i64 } (i64, i64, i128*)* @foo13489, [8 x i8] undef }, %struct.S { i128 3491, { i64, i64 } (i64, i64, i128*)* @foo13491, [8 x i8] undef }, %struct.S { i128 3493, { i64, i64 } (i64, i64, i128*)* @foo13493, [8 x i8] undef }, %struct.S { i128 3495, { i64, i64 } (i64, i64, i128*)* @foo13495, [8 x i8] undef }, %struct.S { i128 3497, { i64, i64 } (i64, i64, i128*)* @foo13497, [8 x i8] undef }, %struct.S { i128 3499, { i64, i64 } (i64, i64, i128*)* @foo13499, [8 x i8] undef }, %struct.S { i128 3901, { i64, i64 } (i64, i64, i128*)* @foo13901, [8 x i8] undef }, %struct.S { i128 3903, { i64, i64 } (i64, i64, i128*)* @foo13903, [8 x i8] undef }, %struct.S { i128 3905, { i64, i64 } (i64, i64, i128*)* @foo13905, [8 x i8] undef }, %struct.S { i128 3907, { i64, i64 } (i64, i64, i128*)* @foo13907, [8 x i8] undef }, %struct.S { i128 3909, { i64, i64 } (i64, i64, i128*)* @foo13909, [8 x i8] undef }, %struct.S { i128 3911, { i64, i64 } (i64, i64, i128*)* @foo13911, [8 x i8] undef }, %struct.S { i128 3913, { i64, i64 } (i64, i64, i128*)* @foo13913, [8 x i8] undef }, %struct.S { i128 3915, { i64, i64 } (i64, i64, i128*)* @foo13915, [8 x i8] undef }, %struct.S { i128 3917, { i64, i64 } (i64, i64, i128*)* @foo13917, [8 x i8] undef }, %struct.S { i128 3919, { i64, i64 } (i64, i64, i128*)* @foo13919, [8 x i8] undef }, %struct.S { i128 3921, { i64, i64 } (i64, i64, i128*)* @foo13921, [8 x i8] undef }, %struct.S { i128 3923, { i64, i64 } (i64, i64, i128*)* @foo13923, [8 x i8] undef }, %struct.S { i128 3925, { i64, i64 } (i64, i64, i128*)* @foo13925, [8 x i8] undef }, %struct.S { i128 3927, { i64, i64 } (i64, i64, i128*)* @foo13927, [8 x i8] undef }, %struct.S { i128 3929, { i64, i64 } (i64, i64, i128*)* @foo13929, [8 x i8] undef }, %struct.S { i128 3931, { i64, i64 } (i64, i64, i128*)* @foo13931, [8 x i8] undef }, %struct.S { i128 3933, { i64, i64 } (i64, i64, i128*)* @foo13933, [8 x i8] undef }, %struct.S { i128 3935, { i64, i64 } (i64, i64, i128*)* @foo13935, [8 x i8] undef }, %struct.S { i128 3937, { i64, i64 } (i64, i64, i128*)* @foo13937, [8 x i8] undef }, %struct.S { i128 3939, { i64, i64 } (i64, i64, i128*)* @foo13939, [8 x i8] undef }, %struct.S { i128 3941, { i64, i64 } (i64, i64, i128*)* @foo13941, [8 x i8] undef }, %struct.S { i128 3943, { i64, i64 } (i64, i64, i128*)* @foo13943, [8 x i8] undef }, %struct.S { i128 3945, { i64, i64 } (i64, i64, i128*)* @foo13945, [8 x i8] undef }, %struct.S { i128 3947, { i64, i64 } (i64, i64, i128*)* @foo13947, [8 x i8] undef }, %struct.S { i128 3949, { i64, i64 } (i64, i64, i128*)* @foo13949, [8 x i8] undef }, %struct.S { i128 3951, { i64, i64 } (i64, i64, i128*)* @foo13951, [8 x i8] undef }, %struct.S { i128 3953, { i64, i64 } (i64, i64, i128*)* @foo13953, [8 x i8] undef }, %struct.S { i128 3955, { i64, i64 } (i64, i64, i128*)* @foo13955, [8 x i8] undef }, %struct.S { i128 3957, { i64, i64 } (i64, i64, i128*)* @foo13957, [8 x i8] undef }, %struct.S { i128 3959, { i64, i64 } (i64, i64, i128*)* @foo13959, [8 x i8] undef }, %struct.S { i128 3961, { i64, i64 } (i64, i64, i128*)* @foo13961, [8 x i8] undef }, %struct.S { i128 3963, { i64, i64 } (i64, i64, i128*)* @foo13963, [8 x i8] undef }, %struct.S { i128 3965, { i64, i64 } (i64, i64, i128*)* @foo13965, [8 x i8] undef }, %struct.S { i128 3967, { i64, i64 } (i64, i64, i128*)* @foo13967, [8 x i8] undef }, %struct.S { i128 3969, { i64, i64 } (i64, i64, i128*)* @foo13969, [8 x i8] undef }, %struct.S { i128 3971, { i64, i64 } (i64, i64, i128*)* @foo13971, [8 x i8] undef }, %struct.S { i128 3973, { i64, i64 } (i64, i64, i128*)* @foo13973, [8 x i8] undef }, %struct.S { i128 3975, { i64, i64 } (i64, i64, i128*)* @foo13975, [8 x i8] undef }, %struct.S { i128 3977, { i64, i64 } (i64, i64, i128*)* @foo13977, [8 x i8] undef }, %struct.S { i128 3979, { i64, i64 } (i64, i64, i128*)* @foo13979, [8 x i8] undef }, %struct.S { i128 3981, { i64, i64 } (i64, i64, i128*)* @foo13981, [8 x i8] undef }, %struct.S { i128 3983, { i64, i64 } (i64, i64, i128*)* @foo13983, [8 x i8] undef }, %struct.S { i128 3985, { i64, i64 } (i64, i64, i128*)* @foo13985, [8 x i8] undef }, %struct.S { i128 3987, { i64, i64 } (i64, i64, i128*)* @foo13987, [8 x i8] undef }, %struct.S { i128 3989, { i64, i64 } (i64, i64, i128*)* @foo13989, [8 x i8] undef }, %struct.S { i128 3991, { i64, i64 } (i64, i64, i128*)* @foo13991, [8 x i8] undef }, %struct.S { i128 3993, { i64, i64 } (i64, i64, i128*)* @foo13993, [8 x i8] undef }, %struct.S { i128 3995, { i64, i64 } (i64, i64, i128*)* @foo13995, [8 x i8] undef }, %struct.S { i128 3997, { i64, i64 } (i64, i64, i128*)* @foo13997, [8 x i8] undef }, %struct.S { i128 3999, { i64, i64 } (i64, i64, i128*)* @foo13999, [8 x i8] undef }, %struct.S { i128 7001, { i64, i64 } (i64, i64, i128*)* @foo17001, [8 x i8] undef }, %struct.S { i128 7003, { i64, i64 } (i64, i64, i128*)* @foo17003, [8 x i8] undef }, %struct.S { i128 7005, { i64, i64 } (i64, i64, i128*)* @foo17005, [8 x i8] undef }, %struct.S { i128 7007, { i64, i64 } (i64, i64, i128*)* @foo17007, [8 x i8] undef }, %struct.S { i128 7009, { i64, i64 } (i64, i64, i128*)* @foo17009, [8 x i8] undef }, %struct.S { i128 7011, { i64, i64 } (i64, i64, i128*)* @foo17011, [8 x i8] undef }, %struct.S { i128 7013, { i64, i64 } (i64, i64, i128*)* @foo17013, [8 x i8] undef }, %struct.S { i128 7015, { i64, i64 } (i64, i64, i128*)* @foo17015, [8 x i8] undef }, %struct.S { i128 7017, { i64, i64 } (i64, i64, i128*)* @foo17017, [8 x i8] undef }, %struct.S { i128 7019, { i64, i64 } (i64, i64, i128*)* @foo17019, [8 x i8] undef }, %struct.S { i128 7021, { i64, i64 } (i64, i64, i128*)* @foo17021, [8 x i8] undef }, %struct.S { i128 7023, { i64, i64 } (i64, i64, i128*)* @foo17023, [8 x i8] undef }, %struct.S { i128 7025, { i64, i64 } (i64, i64, i128*)* @foo17025, [8 x i8] undef }, %struct.S { i128 7027, { i64, i64 } (i64, i64, i128*)* @foo17027, [8 x i8] undef }, %struct.S { i128 7029, { i64, i64 } (i64, i64, i128*)* @foo17029, [8 x i8] undef }, %struct.S { i128 7031, { i64, i64 } (i64, i64, i128*)* @foo17031, [8 x i8] undef }, %struct.S { i128 7033, { i64, i64 } (i64, i64, i128*)* @foo17033, [8 x i8] undef }, %struct.S { i128 7035, { i64, i64 } (i64, i64, i128*)* @foo17035, [8 x i8] undef }, %struct.S { i128 7037, { i64, i64 } (i64, i64, i128*)* @foo17037, [8 x i8] undef }, %struct.S { i128 7039, { i64, i64 } (i64, i64, i128*)* @foo17039, [8 x i8] undef }, %struct.S { i128 7041, { i64, i64 } (i64, i64, i128*)* @foo17041, [8 x i8] undef }, %struct.S { i128 7043, { i64, i64 } (i64, i64, i128*)* @foo17043, [8 x i8] undef }, %struct.S { i128 7045, { i64, i64 } (i64, i64, i128*)* @foo17045, [8 x i8] undef }, %struct.S { i128 7047, { i64, i64 } (i64, i64, i128*)* @foo17047, [8 x i8] undef }, %struct.S { i128 7049, { i64, i64 } (i64, i64, i128*)* @foo17049, [8 x i8] undef }, %struct.S { i128 7051, { i64, i64 } (i64, i64, i128*)* @foo17051, [8 x i8] undef }, %struct.S { i128 7053, { i64, i64 } (i64, i64, i128*)* @foo17053, [8 x i8] undef }, %struct.S { i128 7055, { i64, i64 } (i64, i64, i128*)* @foo17055, [8 x i8] undef }, %struct.S { i128 7057, { i64, i64 } (i64, i64, i128*)* @foo17057, [8 x i8] undef }, %struct.S { i128 7059, { i64, i64 } (i64, i64, i128*)* @foo17059, [8 x i8] undef }, %struct.S { i128 7061, { i64, i64 } (i64, i64, i128*)* @foo17061, [8 x i8] undef }, %struct.S { i128 7063, { i64, i64 } (i64, i64, i128*)* @foo17063, [8 x i8] undef }, %struct.S { i128 7065, { i64, i64 } (i64, i64, i128*)* @foo17065, [8 x i8] undef }, %struct.S { i128 7067, { i64, i64 } (i64, i64, i128*)* @foo17067, [8 x i8] undef }, %struct.S { i128 7069, { i64, i64 } (i64, i64, i128*)* @foo17069, [8 x i8] undef }, %struct.S { i128 7071, { i64, i64 } (i64, i64, i128*)* @foo17071, [8 x i8] undef }, %struct.S { i128 7073, { i64, i64 } (i64, i64, i128*)* @foo17073, [8 x i8] undef }, %struct.S { i128 7075, { i64, i64 } (i64, i64, i128*)* @foo17075, [8 x i8] undef }, %struct.S { i128 7077, { i64, i64 } (i64, i64, i128*)* @foo17077, [8 x i8] undef }, %struct.S { i128 7079, { i64, i64 } (i64, i64, i128*)* @foo17079, [8 x i8] undef }, %struct.S { i128 7081, { i64, i64 } (i64, i64, i128*)* @foo17081, [8 x i8] undef }, %struct.S { i128 7083, { i64, i64 } (i64, i64, i128*)* @foo17083, [8 x i8] undef }, %struct.S { i128 7085, { i64, i64 } (i64, i64, i128*)* @foo17085, [8 x i8] undef }, %struct.S { i128 7087, { i64, i64 } (i64, i64, i128*)* @foo17087, [8 x i8] undef }, %struct.S { i128 7089, { i64, i64 } (i64, i64, i128*)* @foo17089, [8 x i8] undef }, %struct.S { i128 7091, { i64, i64 } (i64, i64, i128*)* @foo17091, [8 x i8] undef }, %struct.S { i128 7093, { i64, i64 } (i64, i64, i128*)* @foo17093, [8 x i8] undef }, %struct.S { i128 7095, { i64, i64 } (i64, i64, i128*)* @foo17095, [8 x i8] undef }, %struct.S { i128 7097, { i64, i64 } (i64, i64, i128*)* @foo17097, [8 x i8] undef }, %struct.S { i128 7099, { i64, i64 } (i64, i64, i128*)* @foo17099, [8 x i8] undef }, %struct.S { i128 7401, { i64, i64 } (i64, i64, i128*)* @foo17401, [8 x i8] undef }, %struct.S { i128 7403, { i64, i64 } (i64, i64, i128*)* @foo17403, [8 x i8] undef }, %struct.S { i128 7405, { i64, i64 } (i64, i64, i128*)* @foo17405, [8 x i8] undef }, %struct.S { i128 7407, { i64, i64 } (i64, i64, i128*)* @foo17407, [8 x i8] undef }, %struct.S { i128 7409, { i64, i64 } (i64, i64, i128*)* @foo17409, [8 x i8] undef }, %struct.S { i128 7411, { i64, i64 } (i64, i64, i128*)* @foo17411, [8 x i8] undef }, %struct.S { i128 7413, { i64, i64 } (i64, i64, i128*)* @foo17413, [8 x i8] undef }, %struct.S { i128 7415, { i64, i64 } (i64, i64, i128*)* @foo17415, [8 x i8] undef }, %struct.S { i128 7417, { i64, i64 } (i64, i64, i128*)* @foo17417, [8 x i8] undef }, %struct.S { i128 7419, { i64, i64 } (i64, i64, i128*)* @foo17419, [8 x i8] undef }, %struct.S { i128 7421, { i64, i64 } (i64, i64, i128*)* @foo17421, [8 x i8] undef }, %struct.S { i128 7423, { i64, i64 } (i64, i64, i128*)* @foo17423, [8 x i8] undef }, %struct.S { i128 7425, { i64, i64 } (i64, i64, i128*)* @foo17425, [8 x i8] undef }, %struct.S { i128 7427, { i64, i64 } (i64, i64, i128*)* @foo17427, [8 x i8] undef }, %struct.S { i128 7429, { i64, i64 } (i64, i64, i128*)* @foo17429, [8 x i8] undef }, %struct.S { i128 7431, { i64, i64 } (i64, i64, i128*)* @foo17431, [8 x i8] undef }, %struct.S { i128 7433, { i64, i64 } (i64, i64, i128*)* @foo17433, [8 x i8] undef }, %struct.S { i128 7435, { i64, i64 } (i64, i64, i128*)* @foo17435, [8 x i8] undef }, %struct.S { i128 7437, { i64, i64 } (i64, i64, i128*)* @foo17437, [8 x i8] undef }, %struct.S { i128 7439, { i64, i64 } (i64, i64, i128*)* @foo17439, [8 x i8] undef }, %struct.S { i128 7441, { i64, i64 } (i64, i64, i128*)* @foo17441, [8 x i8] undef }, %struct.S { i128 7443, { i64, i64 } (i64, i64, i128*)* @foo17443, [8 x i8] undef }, %struct.S { i128 7445, { i64, i64 } (i64, i64, i128*)* @foo17445, [8 x i8] undef }, %struct.S { i128 7447, { i64, i64 } (i64, i64, i128*)* @foo17447, [8 x i8] undef }, %struct.S { i128 7449, { i64, i64 } (i64, i64, i128*)* @foo17449, [8 x i8] undef }, %struct.S { i128 7451, { i64, i64 } (i64, i64, i128*)* @foo17451, [8 x i8] undef }, %struct.S { i128 7453, { i64, i64 } (i64, i64, i128*)* @foo17453, [8 x i8] undef }, %struct.S { i128 7455, { i64, i64 } (i64, i64, i128*)* @foo17455, [8 x i8] undef }, %struct.S { i128 7457, { i64, i64 } (i64, i64, i128*)* @foo17457, [8 x i8] undef }, %struct.S { i128 7459, { i64, i64 } (i64, i64, i128*)* @foo17459, [8 x i8] undef }, %struct.S { i128 7461, { i64, i64 } (i64, i64, i128*)* @foo17461, [8 x i8] undef }, %struct.S { i128 7463, { i64, i64 } (i64, i64, i128*)* @foo17463, [8 x i8] undef }, %struct.S { i128 7465, { i64, i64 } (i64, i64, i128*)* @foo17465, [8 x i8] undef }, %struct.S { i128 7467, { i64, i64 } (i64, i64, i128*)* @foo17467, [8 x i8] undef }, %struct.S { i128 7469, { i64, i64 } (i64, i64, i128*)* @foo17469, [8 x i8] undef }, %struct.S { i128 7471, { i64, i64 } (i64, i64, i128*)* @foo17471, [8 x i8] undef }, %struct.S { i128 7473, { i64, i64 } (i64, i64, i128*)* @foo17473, [8 x i8] undef }, %struct.S { i128 7475, { i64, i64 } (i64, i64, i128*)* @foo17475, [8 x i8] undef }, %struct.S { i128 7477, { i64, i64 } (i64, i64, i128*)* @foo17477, [8 x i8] undef }, %struct.S { i128 7479, { i64, i64 } (i64, i64, i128*)* @foo17479, [8 x i8] undef }, %struct.S { i128 7481, { i64, i64 } (i64, i64, i128*)* @foo17481, [8 x i8] undef }, %struct.S { i128 7483, { i64, i64 } (i64, i64, i128*)* @foo17483, [8 x i8] undef }, %struct.S { i128 7485, { i64, i64 } (i64, i64, i128*)* @foo17485, [8 x i8] undef }, %struct.S { i128 7487, { i64, i64 } (i64, i64, i128*)* @foo17487, [8 x i8] undef }, %struct.S { i128 7489, { i64, i64 } (i64, i64, i128*)* @foo17489, [8 x i8] undef }, %struct.S { i128 7491, { i64, i64 } (i64, i64, i128*)* @foo17491, [8 x i8] undef }, %struct.S { i128 7493, { i64, i64 } (i64, i64, i128*)* @foo17493, [8 x i8] undef }, %struct.S { i128 7495, { i64, i64 } (i64, i64, i128*)* @foo17495, [8 x i8] undef }, %struct.S { i128 7497, { i64, i64 } (i64, i64, i128*)* @foo17497, [8 x i8] undef }, %struct.S { i128 7499, { i64, i64 } (i64, i64, i128*)* @foo17499, [8 x i8] undef }, %struct.S { i128 7901, { i64, i64 } (i64, i64, i128*)* @foo17901, [8 x i8] undef }, %struct.S { i128 7903, { i64, i64 } (i64, i64, i128*)* @foo17903, [8 x i8] undef }, %struct.S { i128 7905, { i64, i64 } (i64, i64, i128*)* @foo17905, [8 x i8] undef }, %struct.S { i128 7907, { i64, i64 } (i64, i64, i128*)* @foo17907, [8 x i8] undef }, %struct.S { i128 7909, { i64, i64 } (i64, i64, i128*)* @foo17909, [8 x i8] undef }, %struct.S { i128 7911, { i64, i64 } (i64, i64, i128*)* @foo17911, [8 x i8] undef }, %struct.S { i128 7913, { i64, i64 } (i64, i64, i128*)* @foo17913, [8 x i8] undef }, %struct.S { i128 7915, { i64, i64 } (i64, i64, i128*)* @foo17915, [8 x i8] undef }, %struct.S { i128 7917, { i64, i64 } (i64, i64, i128*)* @foo17917, [8 x i8] undef }, %struct.S { i128 7919, { i64, i64 } (i64, i64, i128*)* @foo17919, [8 x i8] undef }, %struct.S { i128 7921, { i64, i64 } (i64, i64, i128*)* @foo17921, [8 x i8] undef }, %struct.S { i128 7923, { i64, i64 } (i64, i64, i128*)* @foo17923, [8 x i8] undef }, %struct.S { i128 7925, { i64, i64 } (i64, i64, i128*)* @foo17925, [8 x i8] undef }, %struct.S { i128 7927, { i64, i64 } (i64, i64, i128*)* @foo17927, [8 x i8] undef }, %struct.S { i128 7929, { i64, i64 } (i64, i64, i128*)* @foo17929, [8 x i8] undef }, %struct.S { i128 7931, { i64, i64 } (i64, i64, i128*)* @foo17931, [8 x i8] undef }, %struct.S { i128 7933, { i64, i64 } (i64, i64, i128*)* @foo17933, [8 x i8] undef }, %struct.S { i128 7935, { i64, i64 } (i64, i64, i128*)* @foo17935, [8 x i8] undef }, %struct.S { i128 7937, { i64, i64 } (i64, i64, i128*)* @foo17937, [8 x i8] undef }, %struct.S { i128 7939, { i64, i64 } (i64, i64, i128*)* @foo17939, [8 x i8] undef }, %struct.S { i128 7941, { i64, i64 } (i64, i64, i128*)* @foo17941, [8 x i8] undef }, %struct.S { i128 7943, { i64, i64 } (i64, i64, i128*)* @foo17943, [8 x i8] undef }, %struct.S { i128 7945, { i64, i64 } (i64, i64, i128*)* @foo17945, [8 x i8] undef }, %struct.S { i128 7947, { i64, i64 } (i64, i64, i128*)* @foo17947, [8 x i8] undef }, %struct.S { i128 7949, { i64, i64 } (i64, i64, i128*)* @foo17949, [8 x i8] undef }, %struct.S { i128 7951, { i64, i64 } (i64, i64, i128*)* @foo17951, [8 x i8] undef }, %struct.S { i128 7953, { i64, i64 } (i64, i64, i128*)* @foo17953, [8 x i8] undef }, %struct.S { i128 7955, { i64, i64 } (i64, i64, i128*)* @foo17955, [8 x i8] undef }, %struct.S { i128 7957, { i64, i64 } (i64, i64, i128*)* @foo17957, [8 x i8] undef }, %struct.S { i128 7959, { i64, i64 } (i64, i64, i128*)* @foo17959, [8 x i8] undef }, %struct.S { i128 7961, { i64, i64 } (i64, i64, i128*)* @foo17961, [8 x i8] undef }, %struct.S { i128 7963, { i64, i64 } (i64, i64, i128*)* @foo17963, [8 x i8] undef }, %struct.S { i128 7965, { i64, i64 } (i64, i64, i128*)* @foo17965, [8 x i8] undef }, %struct.S { i128 7967, { i64, i64 } (i64, i64, i128*)* @foo17967, [8 x i8] undef }, %struct.S { i128 7969, { i64, i64 } (i64, i64, i128*)* @foo17969, [8 x i8] undef }, %struct.S { i128 7971, { i64, i64 } (i64, i64, i128*)* @foo17971, [8 x i8] undef }, %struct.S { i128 7973, { i64, i64 } (i64, i64, i128*)* @foo17973, [8 x i8] undef }, %struct.S { i128 7975, { i64, i64 } (i64, i64, i128*)* @foo17975, [8 x i8] undef }, %struct.S { i128 7977, { i64, i64 } (i64, i64, i128*)* @foo17977, [8 x i8] undef }, %struct.S { i128 7979, { i64, i64 } (i64, i64, i128*)* @foo17979, [8 x i8] undef }, %struct.S { i128 7981, { i64, i64 } (i64, i64, i128*)* @foo17981, [8 x i8] undef }, %struct.S { i128 7983, { i64, i64 } (i64, i64, i128*)* @foo17983, [8 x i8] undef }, %struct.S { i128 7985, { i64, i64 } (i64, i64, i128*)* @foo17985, [8 x i8] undef }, %struct.S { i128 7987, { i64, i64 } (i64, i64, i128*)* @foo17987, [8 x i8] undef }, %struct.S { i128 7989, { i64, i64 } (i64, i64, i128*)* @foo17989, [8 x i8] undef }, %struct.S { i128 7991, { i64, i64 } (i64, i64, i128*)* @foo17991, [8 x i8] undef }, %struct.S { i128 7993, { i64, i64 } (i64, i64, i128*)* @foo17993, [8 x i8] undef }, %struct.S { i128 7995, { i64, i64 } (i64, i64, i128*)* @foo17995, [8 x i8] undef }, %struct.S { i128 7997, { i64, i64 } (i64, i64, i128*)* @foo17997, [8 x i8] undef }, %struct.S { i128 7999, { i64, i64 } (i64, i64, i128*)* @foo17999, [8 x i8] undef }, %struct.S { i128 90101, { i64, i64 } (i64, i64, i128*)* @foo100101, [8 x i8] undef }, %struct.S { i128 90103, { i64, i64 } (i64, i64, i128*)* @foo100103, [8 x i8] undef }, %struct.S { i128 90105, { i64, i64 } (i64, i64, i128*)* @foo100105, [8 x i8] undef }, %struct.S { i128 90107, { i64, i64 } (i64, i64, i128*)* @foo100107, [8 x i8] undef }, %struct.S { i128 90109, { i64, i64 } (i64, i64, i128*)* @foo100109, [8 x i8] undef }, %struct.S { i128 90121, { i64, i64 } (i64, i64, i128*)* @foo100121, [8 x i8] undef }, %struct.S { i128 90123, { i64, i64 } (i64, i64, i128*)* @foo100123, [8 x i8] undef }, %struct.S { i128 90125, { i64, i64 } (i64, i64, i128*)* @foo100125, [8 x i8] undef }, %struct.S { i128 90127, { i64, i64 } (i64, i64, i128*)* @foo100127, [8 x i8] undef }, %struct.S { i128 90129, { i64, i64 } (i64, i64, i128*)* @foo100129, [8 x i8] undef }, %struct.S { i128 151441, { i64, i64 } (i64, i64, i128*)* @foo161441, [8 x i8] undef }, %struct.S { i128 151443, { i64, i64 } (i64, i64, i128*)* @foo161443, [8 x i8] undef }, %struct.S { i128 151445, { i64, i64 } (i64, i64, i128*)* @foo161445, [8 x i8] undef }, %struct.S { i128 151447, { i64, i64 } (i64, i64, i128*)* @foo161447, [8 x i8] undef }, %struct.S { i128 151449, { i64, i64 } (i64, i64, i128*)* @foo161449, [8 x i8] undef }, %struct.S { i128 0, { i64, i64 } (i64, i64, i128*)* null, [8 x i8] undef }], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo(i64 %x.coerce0, i64 %x.coerce1, i64 %n.coerce0, i64 %n.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %n = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %n.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  %3 = bitcast i128* %n to { i64, i64 }*
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  store i64 %n.coerce0, i64* %4, align 16
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  store i64 %n.coerce1, i64* %5, align 8
  %n2 = load i128, i128* %n, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128 %n2, i128* %n.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %6 = load i128, i128* %x.addr, align 16
  %7 = load i128, i128* %n.addr, align 16
  %rem = urem i128 %6, %7
  %8 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %8, align 16
  %9 = load i128, i128* %x.addr, align 16
  %10 = load i128, i128* %n.addr, align 16
  %div = udiv i128 %9, %10
  store i128 %div, i128* %retval, align 16
  %11 = bitcast i128* %retval to { i64, i64 }*
  %12 = load { i64, i64 }, { i64, i64 }* %11, align 16
  ret { i64, i64 } %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10001(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 1
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 1
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10003(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10005(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 5
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 5
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10007(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10009(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 9
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 9
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10011(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 11
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 11
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10013(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 13
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 13
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10015(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 15
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 15
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10017(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 17
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 17
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10019(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 19
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 19
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10021(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 21
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 21
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10023(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 23
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 23
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10025(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 25
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 25
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10027(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 27
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 27
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10029(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 29
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 29
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10031(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 31
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 31
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10033(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 33
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 33
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10035(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 35
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 35
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10037(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 37
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 37
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10039(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 39
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 39
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10041(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 41
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 41
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10043(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 43
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 43
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10045(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 45
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 45
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10047(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 47
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 47
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10049(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 49
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 49
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10051(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 51
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 51
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10053(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 53
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 53
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10055(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 55
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 55
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10057(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 57
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 57
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10059(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 59
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 59
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10061(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 61
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 61
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10063(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 63
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 63
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10065(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 65
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 65
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10067(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 67
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 67
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10069(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 69
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 69
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10071(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 71
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 71
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10073(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 73
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 73
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10075(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 75
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 75
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10077(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 77
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 77
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10079(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 79
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 79
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10081(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 81
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 81
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10083(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 83
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 83
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10085(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 85
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 85
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10087(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 87
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 87
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10089(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 89
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 89
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10091(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 91
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 91
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10093(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 93
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 93
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10095(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 95
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 95
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10097(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 97
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 97
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10099(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 99
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 99
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10401(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 401
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 401
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10403(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 403
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 403
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10405(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 405
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 405
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10407(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 407
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 407
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10409(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 409
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 409
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10411(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 411
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 411
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10413(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 413
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 413
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10415(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 415
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 415
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10417(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 417
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 417
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10419(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 419
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 419
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10421(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 421
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 421
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10423(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 423
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 423
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10425(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 425
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 425
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10427(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 427
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 427
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10429(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 429
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 429
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10431(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 431
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 431
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10433(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 433
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 433
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10435(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 435
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 435
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10437(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 437
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 437
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10439(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 439
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 439
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10441(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 441
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 441
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10443(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 443
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 443
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10445(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 445
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 445
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10447(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 447
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 447
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10449(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 449
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 449
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10451(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 451
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 451
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10453(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 453
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 453
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10455(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 455
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 455
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10457(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 457
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 457
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10459(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 459
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 459
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10461(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 461
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 461
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10463(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 463
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 463
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10465(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 465
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 465
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10467(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 467
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 467
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10469(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 469
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 469
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10471(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 471
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 471
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10473(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 473
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 473
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10475(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 475
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 475
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10477(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 477
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 477
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10479(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 479
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 479
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10481(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 481
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 481
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10483(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 483
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 483
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10485(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 485
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 485
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10487(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 487
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 487
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10489(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 489
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 489
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10491(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 491
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 491
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10493(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 493
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 493
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10495(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 495
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 495
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10497(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 497
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 497
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10499(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 499
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 499
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10901(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 901
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 901
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10903(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 903
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 903
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10905(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 905
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 905
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10907(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 907
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 907
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10909(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 909
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 909
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10911(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 911
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 911
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10913(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 913
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 913
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10915(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 915
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 915
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10917(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 917
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 917
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10919(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 919
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 919
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10921(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 921
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 921
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10923(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 923
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 923
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10925(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 925
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 925
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10927(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 927
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 927
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10929(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 929
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 929
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10931(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 931
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 931
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10933(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 933
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 933
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10935(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 935
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 935
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10937(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 937
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 937
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10939(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 939
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 939
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10941(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 941
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 941
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10943(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 943
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 943
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10945(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 945
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 945
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10947(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 947
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 947
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10949(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 949
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 949
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10951(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 951
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 951
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10953(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 953
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 953
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10955(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 955
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 955
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10957(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 957
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 957
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10959(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 959
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 959
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10961(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 961
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 961
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10963(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 963
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 963
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10965(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 965
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 965
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10967(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 967
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 967
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10969(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 969
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 969
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10971(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 971
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 971
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10973(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 973
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 973
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10975(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 975
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 975
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10977(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 977
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 977
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10979(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 979
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 979
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10981(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 981
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 981
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10983(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 983
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 983
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10985(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 985
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 985
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10987(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 987
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 987
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10989(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 989
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 989
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10991(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 991
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 991
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10993(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 993
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 993
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10995(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 995
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 995
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10997(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 997
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 997
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo10999(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 999
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 999
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13001(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3001
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3001
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13003(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3003
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3003
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13005(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3005
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3005
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13007(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3007
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3007
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13009(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3009
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3009
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13011(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3011
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3011
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13013(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3013
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3013
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13015(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3015
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3015
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13017(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3017
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3017
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13019(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3019
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3019
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13021(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3021
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3021
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13023(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3023
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3023
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13025(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3025
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3025
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13027(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3027
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3027
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13029(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3029
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3029
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13031(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3031
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3031
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13033(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3033
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3033
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13035(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3035
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3035
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13037(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3037
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3037
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13039(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3039
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3039
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13041(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3041
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3041
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13043(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3043
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3043
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13045(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3045
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3045
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13047(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3047
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3047
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13049(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3049
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3049
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13051(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3051
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3051
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13053(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3053
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3053
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13055(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3055
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3055
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13057(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3057
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3057
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13059(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3059
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3059
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13061(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3061
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3061
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13063(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3063
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3063
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13065(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3065
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3065
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13067(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3067
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3067
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13069(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3069
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3069
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13071(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3071
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3071
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13073(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3073
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3073
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13075(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3075
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3075
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13077(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3077
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3077
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13079(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3079
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3079
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13081(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3081
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3081
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13083(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3083
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3083
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13085(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3085
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3085
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13087(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3087
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3087
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13089(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3089
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3089
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13091(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3091
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3091
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13093(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3093
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3093
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13095(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3095
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3095
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13097(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3097
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3097
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13099(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3099
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3099
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13401(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3401
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3401
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13403(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3403
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3403
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13405(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3405
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3405
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13407(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3407
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3407
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13409(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3409
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3409
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13411(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3411
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3411
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13413(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3413
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3413
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13415(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3415
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3415
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13417(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3417
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3417
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13419(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3419
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3419
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13421(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3421
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3421
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13423(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3423
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3423
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13425(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3425
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3425
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13427(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3427
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3427
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13429(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3429
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3429
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13431(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3431
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3431
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13433(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3433
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3433
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13435(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3435
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3435
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13437(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3437
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3437
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13439(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3439
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3439
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13441(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3441
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3441
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13443(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3443
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3443
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13445(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3445
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3445
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13447(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3447
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3447
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13449(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3449
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3449
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13451(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3451
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3451
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13453(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3453
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3453
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13455(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3455
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3455
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13457(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3457
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3457
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13459(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3459
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3459
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13461(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3461
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3461
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13463(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3463
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3463
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13465(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3465
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3465
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13467(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3467
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3467
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13469(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3469
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3469
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13471(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3471
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3471
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13473(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3473
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3473
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13475(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3475
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3475
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13477(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3477
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3477
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13479(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3479
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3479
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13481(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3481
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3481
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13483(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3483
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3483
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13485(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3485
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3485
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13487(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3487
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3487
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13489(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3489
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3489
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13491(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3491
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3491
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13493(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3493
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3493
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13495(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3495
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3495
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13497(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3497
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3497
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13499(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3499
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3499
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13901(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3901
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3901
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13903(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3903
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3903
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13905(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3905
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3905
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13907(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3907
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3907
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13909(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3909
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3909
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13911(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3911
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3911
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13913(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3913
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3913
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13915(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3915
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3915
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13917(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3917
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3917
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13919(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3919
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3919
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13921(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3921
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3921
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13923(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3923
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3923
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13925(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3925
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3925
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13927(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3927
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3927
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13929(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3929
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3929
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13931(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3931
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3931
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13933(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3933
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3933
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13935(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3935
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3935
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13937(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3937
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3937
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13939(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3939
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3939
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13941(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3941
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3941
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13943(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3943
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3943
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13945(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3945
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3945
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13947(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3947
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3947
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13949(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3949
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3949
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13951(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3951
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3951
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13953(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3953
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3953
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13955(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3955
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3955
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13957(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3957
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3957
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13959(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3959
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3959
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13961(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3961
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3961
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13963(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3963
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3963
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13965(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3965
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3965
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13967(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3967
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3967
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13969(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3969
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3969
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13971(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3971
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3971
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13973(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3973
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3973
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13975(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3975
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3975
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13977(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3977
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3977
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13979(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3979
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3979
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13981(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3981
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3981
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13983(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3983
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3983
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13985(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3985
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3985
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13987(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3987
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3987
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13989(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3989
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3989
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13991(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3991
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3991
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13993(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3993
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3993
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13995(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3995
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3995
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13997(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3997
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3997
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo13999(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 3999
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 3999
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17001(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7001
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7001
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17003(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7003
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7003
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17005(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7005
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7005
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17007(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7007
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7007
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17009(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7009
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7009
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17011(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7011
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7011
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17013(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7013
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7013
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17015(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7015
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7015
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17017(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7017
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7017
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17019(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7019
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7019
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17021(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7021
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7021
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17023(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7023
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7023
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17025(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7025
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7025
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17027(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7027
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7027
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17029(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7029
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7029
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17031(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7031
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7031
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17033(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7033
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7033
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17035(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7035
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7035
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17037(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7037
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7037
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17039(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7039
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7039
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17041(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7041
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7041
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17043(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7043
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7043
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17045(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7045
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7045
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17047(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7047
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7047
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17049(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7049
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7049
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17051(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7051
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7051
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17053(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7053
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7053
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17055(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7055
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7055
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17057(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7057
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7057
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17059(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7059
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7059
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17061(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7061
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7061
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17063(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7063
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7063
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17065(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7065
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7065
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17067(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7067
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7067
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17069(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7069
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7069
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17071(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7071
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7071
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17073(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7073
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7073
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17075(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7075
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7075
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17077(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7077
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7077
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17079(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7079
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7079
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17081(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7081
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7081
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17083(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7083
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7083
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17085(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7085
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7085
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17087(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7087
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7087
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17089(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7089
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7089
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17091(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7091
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7091
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17093(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7093
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7093
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17095(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7095
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7095
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17097(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7097
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7097
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17099(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7099
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7099
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17401(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7401
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7401
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17403(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7403
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7403
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17405(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7405
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7405
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17407(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7407
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7407
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17409(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7409
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7409
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17411(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7411
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7411
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17413(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7413
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7413
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17415(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7415
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7415
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17417(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7417
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7417
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17419(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7419
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7419
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17421(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7421
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7421
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17423(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7423
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7423
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17425(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7425
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7425
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17427(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7427
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7427
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17429(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7429
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7429
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17431(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7431
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7431
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17433(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7433
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7433
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17435(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7435
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7435
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17437(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7437
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7437
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17439(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7439
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7439
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17441(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7441
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7441
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17443(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7443
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7443
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17445(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7445
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7445
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17447(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7447
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7447
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17449(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7449
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7449
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17451(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7451
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7451
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17453(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7453
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7453
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17455(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7455
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7455
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17457(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7457
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7457
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17459(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7459
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7459
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17461(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7461
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7461
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17463(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7463
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7463
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17465(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7465
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7465
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17467(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7467
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7467
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17469(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7469
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7469
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17471(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7471
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7471
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17473(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7473
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7473
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17475(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7475
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7475
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17477(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7477
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7477
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17479(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7479
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7479
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17481(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7481
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7481
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17483(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7483
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7483
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17485(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7485
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7485
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17487(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7487
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7487
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17489(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7489
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7489
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17491(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7491
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7491
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17493(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7493
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7493
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17495(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7495
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7495
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17497(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7497
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7497
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17499(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7499
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7499
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17901(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7901
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7901
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17903(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7903
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7903
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17905(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7905
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7905
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17907(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7907
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7907
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17909(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7909
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7909
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17911(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7911
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7911
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17913(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7913
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7913
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17915(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7915
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7915
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17917(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7917
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7917
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17919(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7919
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7919
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17921(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7921
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7921
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17923(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7923
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7923
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17925(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7925
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7925
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17927(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7927
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7927
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17929(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7929
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7929
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17931(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7931
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7931
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17933(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7933
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7933
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17935(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7935
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7935
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17937(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7937
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7937
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17939(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7939
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7939
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17941(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7941
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7941
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17943(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7943
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7943
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17945(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7945
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7945
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17947(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7947
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7947
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17949(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7949
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7949
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17951(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7951
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7951
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17953(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7953
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7953
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17955(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7955
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7955
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17957(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7957
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7957
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17959(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7959
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7959
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17961(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7961
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7961
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17963(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7963
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7963
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17965(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7965
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7965
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17967(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7967
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7967
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17969(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7969
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7969
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17971(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7971
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7971
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17973(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7973
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7973
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17975(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7975
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7975
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17977(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7977
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7977
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17979(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7979
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7979
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17981(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7981
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7981
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17983(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7983
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7983
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17985(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7985
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7985
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17987(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7987
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7987
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17989(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7989
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7989
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17991(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7991
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7991
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17993(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7993
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7993
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17995(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7995
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7995
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17997(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7997
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7997
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo17999(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 7999
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 7999
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo100101(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 90101
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 90101
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo100103(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 90103
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 90103
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo100105(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 90105
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 90105
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo100107(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 90107
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 90107
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo100109(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 90109
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 90109
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo100121(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 90121
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 90121
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo100123(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 90123
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 90123
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo100125(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 90125
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 90125
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo100127(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 90127
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 90127
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo100129(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 90129
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 90129
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo161441(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 151441
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 151441
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo161443(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 151443
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 151443
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo161445(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 151445
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 151445
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo161447(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 151447
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 151447
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @foo161449(i64 %x.coerce0, i64 %x.coerce1, i128* %r) #0 {
entry:
  %retval = alloca i128, align 16
  %x = alloca i128, align 16
  %x.addr = alloca i128, align 16
  %r.addr = alloca i128*, align 8
  %0 = bitcast i128* %x to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %x.coerce0, i64* %1, align 16
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %x.coerce1, i64* %2, align 8
  %x1 = load i128, i128* %x, align 16
  store i128 %x1, i128* %x.addr, align 16
  store i128* %r, i128** %r.addr, align 8
  %3 = load i128, i128* %x.addr, align 16
  %rem = urem i128 %3, 151449
  %4 = load i128*, i128** %r.addr, align 8
  store i128 %rem, i128* %4, align 16
  %5 = load i128, i128* %x.addr, align 16
  %div = udiv i128 %5, 151449
  store i128 %div, i128* %retval, align 16
  %6 = bitcast i128* %retval to { i64, i64 }*
  %7 = load { i64, i64 }, { i64, i64 }* %6, align 16
  ret { i64, i64 } %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %x8 = alloca i128, align 16
  %r1 = alloca i128, align 16
  %r2 = alloca i128, align 16
  %coerce = alloca i128, align 16
  %coerce13 = alloca i128, align 16
  %coerce14 = alloca i128, align 16
  %coerce17 = alloca i128, align 16
  %coerce19 = alloca i128, align 16
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %0 = load i32, i32* %k, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [466 x %struct.S], [466 x %struct.S]* @tests, i64 0, i64 %idxprom
  %x = getelementptr inbounds %struct.S, %struct.S* %arrayidx, i32 0, i32 0
  %1 = load i128, i128* %x, align 16
  %tobool = icmp ne i128 %1, 0
  br i1 %tobool, label %for.body, label %for.end29

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc24, %for.body
  %2 = load i32, i32* %i, align 4
  %conv = sext i32 %2 to i64
  %cmp = icmp ult i64 %conv, 128
  br i1 %cmp, label %for.body3, label %for.end26

for.body3:                                        ; preds = %for.cond1
  store i32 -5, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %3 = load i32, i32* %j, align 4
  %cmp5 = icmp sle i32 %3, 5
  br i1 %cmp5, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond4
  %4 = load i32, i32* %i, align 4
  %sh_prom = zext i32 %4 to i128
  %shl = shl i128 1, %sh_prom
  %5 = load i32, i32* %j, align 4
  %conv9 = sext i32 %5 to i128
  %add = add i128 %shl, %conv9
  store i128 %add, i128* %x8, align 16
  %6 = load i128, i128* %x8, align 16
  %7 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [466 x %struct.S], [466 x %struct.S]* @tests, i64 0, i64 %idxprom10
  %x12 = getelementptr inbounds %struct.S, %struct.S* %arrayidx11, i32 0, i32 0
  %8 = load i128, i128* %x12, align 16
  store i128 %6, i128* %coerce, align 16
  %9 = bitcast i128* %coerce to { i64, i64 }*
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 16
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i128 %8, i128* %coerce13, align 16
  %14 = bitcast i128* %coerce13 to { i64, i64 }*
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 16
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %call = call { i64, i64 } @foo(i64 %11, i64 %13, i64 %16, i64 %18, i128* %r1)
  %19 = bitcast i128* %coerce14 to { i64, i64 }*
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 0
  %21 = extractvalue { i64, i64 } %call, 0
  store i64 %21, i64* %20, align 16
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 1
  %23 = extractvalue { i64, i64 } %call, 1
  store i64 %23, i64* %22, align 8
  %24 = load i128, i128* %coerce14, align 16
  %25 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %25 to i64
  %arrayidx16 = getelementptr inbounds [466 x %struct.S], [466 x %struct.S]* @tests, i64 0, i64 %idxprom15
  %foo = getelementptr inbounds %struct.S, %struct.S* %arrayidx16, i32 0, i32 1
  %26 = load { i64, i64 } (i64, i64, i128*)*, { i64, i64 } (i64, i64, i128*)** %foo, align 16
  %27 = load i128, i128* %x8, align 16
  store i128 %27, i128* %coerce17, align 16
  %28 = bitcast i128* %coerce17 to { i64, i64 }*
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 16
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %28, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %call18 = call { i64, i64 } %26(i64 %30, i64 %32, i128* %r2)
  %33 = bitcast i128* %coerce19 to { i64, i64 }*
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 0
  %35 = extractvalue { i64, i64 } %call18, 0
  store i64 %35, i64* %34, align 16
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 1
  %37 = extractvalue { i64, i64 } %call18, 1
  store i64 %37, i64* %36, align 8
  %38 = load i128, i128* %coerce19, align 16
  %cmp20 = icmp ne i128 %24, %38
  br i1 %cmp20, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body7
  %39 = load i128, i128* %r1, align 16
  %40 = load i128, i128* %r2, align 16
  %cmp22 = icmp ne i128 %39, %40
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body7
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %41 = load i32, i32* %j, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond4, !llvm.loop !4

for.end:                                          ; preds = %for.cond4
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %42 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %42, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond1, !llvm.loop !6

for.end26:                                        ; preds = %for.cond1
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %43 = load i32, i32* %k, align 4
  %inc28 = add nsw i32 %43, 1
  store i32 %inc28, i32* %k, align 4
  br label %for.cond, !llvm.loop !7

for.end29:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
