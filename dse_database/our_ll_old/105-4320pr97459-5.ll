; ModuleID = './code/105-4320pr97459-5.c'
source_filename = "./code/105-4320pr97459-5.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.S = type { i128, ptr }

@tests = global [466 x %struct.S] [%struct.S { i128 1, ptr @foo10001 }, %struct.S { i128 3, ptr @foo10003 }, %struct.S { i128 5, ptr @foo10005 }, %struct.S { i128 7, ptr @foo10007 }, %struct.S { i128 9, ptr @foo10009 }, %struct.S { i128 11, ptr @foo10011 }, %struct.S { i128 13, ptr @foo10013 }, %struct.S { i128 15, ptr @foo10015 }, %struct.S { i128 17, ptr @foo10017 }, %struct.S { i128 19, ptr @foo10019 }, %struct.S { i128 21, ptr @foo10021 }, %struct.S { i128 23, ptr @foo10023 }, %struct.S { i128 25, ptr @foo10025 }, %struct.S { i128 27, ptr @foo10027 }, %struct.S { i128 29, ptr @foo10029 }, %struct.S { i128 31, ptr @foo10031 }, %struct.S { i128 33, ptr @foo10033 }, %struct.S { i128 35, ptr @foo10035 }, %struct.S { i128 37, ptr @foo10037 }, %struct.S { i128 39, ptr @foo10039 }, %struct.S { i128 41, ptr @foo10041 }, %struct.S { i128 43, ptr @foo10043 }, %struct.S { i128 45, ptr @foo10045 }, %struct.S { i128 47, ptr @foo10047 }, %struct.S { i128 49, ptr @foo10049 }, %struct.S { i128 51, ptr @foo10051 }, %struct.S { i128 53, ptr @foo10053 }, %struct.S { i128 55, ptr @foo10055 }, %struct.S { i128 57, ptr @foo10057 }, %struct.S { i128 59, ptr @foo10059 }, %struct.S { i128 61, ptr @foo10061 }, %struct.S { i128 63, ptr @foo10063 }, %struct.S { i128 65, ptr @foo10065 }, %struct.S { i128 67, ptr @foo10067 }, %struct.S { i128 69, ptr @foo10069 }, %struct.S { i128 71, ptr @foo10071 }, %struct.S { i128 73, ptr @foo10073 }, %struct.S { i128 75, ptr @foo10075 }, %struct.S { i128 77, ptr @foo10077 }, %struct.S { i128 79, ptr @foo10079 }, %struct.S { i128 81, ptr @foo10081 }, %struct.S { i128 83, ptr @foo10083 }, %struct.S { i128 85, ptr @foo10085 }, %struct.S { i128 87, ptr @foo10087 }, %struct.S { i128 89, ptr @foo10089 }, %struct.S { i128 91, ptr @foo10091 }, %struct.S { i128 93, ptr @foo10093 }, %struct.S { i128 95, ptr @foo10095 }, %struct.S { i128 97, ptr @foo10097 }, %struct.S { i128 99, ptr @foo10099 }, %struct.S { i128 401, ptr @foo10401 }, %struct.S { i128 403, ptr @foo10403 }, %struct.S { i128 405, ptr @foo10405 }, %struct.S { i128 407, ptr @foo10407 }, %struct.S { i128 409, ptr @foo10409 }, %struct.S { i128 411, ptr @foo10411 }, %struct.S { i128 413, ptr @foo10413 }, %struct.S { i128 415, ptr @foo10415 }, %struct.S { i128 417, ptr @foo10417 }, %struct.S { i128 419, ptr @foo10419 }, %struct.S { i128 421, ptr @foo10421 }, %struct.S { i128 423, ptr @foo10423 }, %struct.S { i128 425, ptr @foo10425 }, %struct.S { i128 427, ptr @foo10427 }, %struct.S { i128 429, ptr @foo10429 }, %struct.S { i128 431, ptr @foo10431 }, %struct.S { i128 433, ptr @foo10433 }, %struct.S { i128 435, ptr @foo10435 }, %struct.S { i128 437, ptr @foo10437 }, %struct.S { i128 439, ptr @foo10439 }, %struct.S { i128 441, ptr @foo10441 }, %struct.S { i128 443, ptr @foo10443 }, %struct.S { i128 445, ptr @foo10445 }, %struct.S { i128 447, ptr @foo10447 }, %struct.S { i128 449, ptr @foo10449 }, %struct.S { i128 451, ptr @foo10451 }, %struct.S { i128 453, ptr @foo10453 }, %struct.S { i128 455, ptr @foo10455 }, %struct.S { i128 457, ptr @foo10457 }, %struct.S { i128 459, ptr @foo10459 }, %struct.S { i128 461, ptr @foo10461 }, %struct.S { i128 463, ptr @foo10463 }, %struct.S { i128 465, ptr @foo10465 }, %struct.S { i128 467, ptr @foo10467 }, %struct.S { i128 469, ptr @foo10469 }, %struct.S { i128 471, ptr @foo10471 }, %struct.S { i128 473, ptr @foo10473 }, %struct.S { i128 475, ptr @foo10475 }, %struct.S { i128 477, ptr @foo10477 }, %struct.S { i128 479, ptr @foo10479 }, %struct.S { i128 481, ptr @foo10481 }, %struct.S { i128 483, ptr @foo10483 }, %struct.S { i128 485, ptr @foo10485 }, %struct.S { i128 487, ptr @foo10487 }, %struct.S { i128 489, ptr @foo10489 }, %struct.S { i128 491, ptr @foo10491 }, %struct.S { i128 493, ptr @foo10493 }, %struct.S { i128 495, ptr @foo10495 }, %struct.S { i128 497, ptr @foo10497 }, %struct.S { i128 499, ptr @foo10499 }, %struct.S { i128 901, ptr @foo10901 }, %struct.S { i128 903, ptr @foo10903 }, %struct.S { i128 905, ptr @foo10905 }, %struct.S { i128 907, ptr @foo10907 }, %struct.S { i128 909, ptr @foo10909 }, %struct.S { i128 911, ptr @foo10911 }, %struct.S { i128 913, ptr @foo10913 }, %struct.S { i128 915, ptr @foo10915 }, %struct.S { i128 917, ptr @foo10917 }, %struct.S { i128 919, ptr @foo10919 }, %struct.S { i128 921, ptr @foo10921 }, %struct.S { i128 923, ptr @foo10923 }, %struct.S { i128 925, ptr @foo10925 }, %struct.S { i128 927, ptr @foo10927 }, %struct.S { i128 929, ptr @foo10929 }, %struct.S { i128 931, ptr @foo10931 }, %struct.S { i128 933, ptr @foo10933 }, %struct.S { i128 935, ptr @foo10935 }, %struct.S { i128 937, ptr @foo10937 }, %struct.S { i128 939, ptr @foo10939 }, %struct.S { i128 941, ptr @foo10941 }, %struct.S { i128 943, ptr @foo10943 }, %struct.S { i128 945, ptr @foo10945 }, %struct.S { i128 947, ptr @foo10947 }, %struct.S { i128 949, ptr @foo10949 }, %struct.S { i128 951, ptr @foo10951 }, %struct.S { i128 953, ptr @foo10953 }, %struct.S { i128 955, ptr @foo10955 }, %struct.S { i128 957, ptr @foo10957 }, %struct.S { i128 959, ptr @foo10959 }, %struct.S { i128 961, ptr @foo10961 }, %struct.S { i128 963, ptr @foo10963 }, %struct.S { i128 965, ptr @foo10965 }, %struct.S { i128 967, ptr @foo10967 }, %struct.S { i128 969, ptr @foo10969 }, %struct.S { i128 971, ptr @foo10971 }, %struct.S { i128 973, ptr @foo10973 }, %struct.S { i128 975, ptr @foo10975 }, %struct.S { i128 977, ptr @foo10977 }, %struct.S { i128 979, ptr @foo10979 }, %struct.S { i128 981, ptr @foo10981 }, %struct.S { i128 983, ptr @foo10983 }, %struct.S { i128 985, ptr @foo10985 }, %struct.S { i128 987, ptr @foo10987 }, %struct.S { i128 989, ptr @foo10989 }, %struct.S { i128 991, ptr @foo10991 }, %struct.S { i128 993, ptr @foo10993 }, %struct.S { i128 995, ptr @foo10995 }, %struct.S { i128 997, ptr @foo10997 }, %struct.S { i128 999, ptr @foo10999 }, %struct.S { i128 3001, ptr @foo13001 }, %struct.S { i128 3003, ptr @foo13003 }, %struct.S { i128 3005, ptr @foo13005 }, %struct.S { i128 3007, ptr @foo13007 }, %struct.S { i128 3009, ptr @foo13009 }, %struct.S { i128 3011, ptr @foo13011 }, %struct.S { i128 3013, ptr @foo13013 }, %struct.S { i128 3015, ptr @foo13015 }, %struct.S { i128 3017, ptr @foo13017 }, %struct.S { i128 3019, ptr @foo13019 }, %struct.S { i128 3021, ptr @foo13021 }, %struct.S { i128 3023, ptr @foo13023 }, %struct.S { i128 3025, ptr @foo13025 }, %struct.S { i128 3027, ptr @foo13027 }, %struct.S { i128 3029, ptr @foo13029 }, %struct.S { i128 3031, ptr @foo13031 }, %struct.S { i128 3033, ptr @foo13033 }, %struct.S { i128 3035, ptr @foo13035 }, %struct.S { i128 3037, ptr @foo13037 }, %struct.S { i128 3039, ptr @foo13039 }, %struct.S { i128 3041, ptr @foo13041 }, %struct.S { i128 3043, ptr @foo13043 }, %struct.S { i128 3045, ptr @foo13045 }, %struct.S { i128 3047, ptr @foo13047 }, %struct.S { i128 3049, ptr @foo13049 }, %struct.S { i128 3051, ptr @foo13051 }, %struct.S { i128 3053, ptr @foo13053 }, %struct.S { i128 3055, ptr @foo13055 }, %struct.S { i128 3057, ptr @foo13057 }, %struct.S { i128 3059, ptr @foo13059 }, %struct.S { i128 3061, ptr @foo13061 }, %struct.S { i128 3063, ptr @foo13063 }, %struct.S { i128 3065, ptr @foo13065 }, %struct.S { i128 3067, ptr @foo13067 }, %struct.S { i128 3069, ptr @foo13069 }, %struct.S { i128 3071, ptr @foo13071 }, %struct.S { i128 3073, ptr @foo13073 }, %struct.S { i128 3075, ptr @foo13075 }, %struct.S { i128 3077, ptr @foo13077 }, %struct.S { i128 3079, ptr @foo13079 }, %struct.S { i128 3081, ptr @foo13081 }, %struct.S { i128 3083, ptr @foo13083 }, %struct.S { i128 3085, ptr @foo13085 }, %struct.S { i128 3087, ptr @foo13087 }, %struct.S { i128 3089, ptr @foo13089 }, %struct.S { i128 3091, ptr @foo13091 }, %struct.S { i128 3093, ptr @foo13093 }, %struct.S { i128 3095, ptr @foo13095 }, %struct.S { i128 3097, ptr @foo13097 }, %struct.S { i128 3099, ptr @foo13099 }, %struct.S { i128 3401, ptr @foo13401 }, %struct.S { i128 3403, ptr @foo13403 }, %struct.S { i128 3405, ptr @foo13405 }, %struct.S { i128 3407, ptr @foo13407 }, %struct.S { i128 3409, ptr @foo13409 }, %struct.S { i128 3411, ptr @foo13411 }, %struct.S { i128 3413, ptr @foo13413 }, %struct.S { i128 3415, ptr @foo13415 }, %struct.S { i128 3417, ptr @foo13417 }, %struct.S { i128 3419, ptr @foo13419 }, %struct.S { i128 3421, ptr @foo13421 }, %struct.S { i128 3423, ptr @foo13423 }, %struct.S { i128 3425, ptr @foo13425 }, %struct.S { i128 3427, ptr @foo13427 }, %struct.S { i128 3429, ptr @foo13429 }, %struct.S { i128 3431, ptr @foo13431 }, %struct.S { i128 3433, ptr @foo13433 }, %struct.S { i128 3435, ptr @foo13435 }, %struct.S { i128 3437, ptr @foo13437 }, %struct.S { i128 3439, ptr @foo13439 }, %struct.S { i128 3441, ptr @foo13441 }, %struct.S { i128 3443, ptr @foo13443 }, %struct.S { i128 3445, ptr @foo13445 }, %struct.S { i128 3447, ptr @foo13447 }, %struct.S { i128 3449, ptr @foo13449 }, %struct.S { i128 3451, ptr @foo13451 }, %struct.S { i128 3453, ptr @foo13453 }, %struct.S { i128 3455, ptr @foo13455 }, %struct.S { i128 3457, ptr @foo13457 }, %struct.S { i128 3459, ptr @foo13459 }, %struct.S { i128 3461, ptr @foo13461 }, %struct.S { i128 3463, ptr @foo13463 }, %struct.S { i128 3465, ptr @foo13465 }, %struct.S { i128 3467, ptr @foo13467 }, %struct.S { i128 3469, ptr @foo13469 }, %struct.S { i128 3471, ptr @foo13471 }, %struct.S { i128 3473, ptr @foo13473 }, %struct.S { i128 3475, ptr @foo13475 }, %struct.S { i128 3477, ptr @foo13477 }, %struct.S { i128 3479, ptr @foo13479 }, %struct.S { i128 3481, ptr @foo13481 }, %struct.S { i128 3483, ptr @foo13483 }, %struct.S { i128 3485, ptr @foo13485 }, %struct.S { i128 3487, ptr @foo13487 }, %struct.S { i128 3489, ptr @foo13489 }, %struct.S { i128 3491, ptr @foo13491 }, %struct.S { i128 3493, ptr @foo13493 }, %struct.S { i128 3495, ptr @foo13495 }, %struct.S { i128 3497, ptr @foo13497 }, %struct.S { i128 3499, ptr @foo13499 }, %struct.S { i128 3901, ptr @foo13901 }, %struct.S { i128 3903, ptr @foo13903 }, %struct.S { i128 3905, ptr @foo13905 }, %struct.S { i128 3907, ptr @foo13907 }, %struct.S { i128 3909, ptr @foo13909 }, %struct.S { i128 3911, ptr @foo13911 }, %struct.S { i128 3913, ptr @foo13913 }, %struct.S { i128 3915, ptr @foo13915 }, %struct.S { i128 3917, ptr @foo13917 }, %struct.S { i128 3919, ptr @foo13919 }, %struct.S { i128 3921, ptr @foo13921 }, %struct.S { i128 3923, ptr @foo13923 }, %struct.S { i128 3925, ptr @foo13925 }, %struct.S { i128 3927, ptr @foo13927 }, %struct.S { i128 3929, ptr @foo13929 }, %struct.S { i128 3931, ptr @foo13931 }, %struct.S { i128 3933, ptr @foo13933 }, %struct.S { i128 3935, ptr @foo13935 }, %struct.S { i128 3937, ptr @foo13937 }, %struct.S { i128 3939, ptr @foo13939 }, %struct.S { i128 3941, ptr @foo13941 }, %struct.S { i128 3943, ptr @foo13943 }, %struct.S { i128 3945, ptr @foo13945 }, %struct.S { i128 3947, ptr @foo13947 }, %struct.S { i128 3949, ptr @foo13949 }, %struct.S { i128 3951, ptr @foo13951 }, %struct.S { i128 3953, ptr @foo13953 }, %struct.S { i128 3955, ptr @foo13955 }, %struct.S { i128 3957, ptr @foo13957 }, %struct.S { i128 3959, ptr @foo13959 }, %struct.S { i128 3961, ptr @foo13961 }, %struct.S { i128 3963, ptr @foo13963 }, %struct.S { i128 3965, ptr @foo13965 }, %struct.S { i128 3967, ptr @foo13967 }, %struct.S { i128 3969, ptr @foo13969 }, %struct.S { i128 3971, ptr @foo13971 }, %struct.S { i128 3973, ptr @foo13973 }, %struct.S { i128 3975, ptr @foo13975 }, %struct.S { i128 3977, ptr @foo13977 }, %struct.S { i128 3979, ptr @foo13979 }, %struct.S { i128 3981, ptr @foo13981 }, %struct.S { i128 3983, ptr @foo13983 }, %struct.S { i128 3985, ptr @foo13985 }, %struct.S { i128 3987, ptr @foo13987 }, %struct.S { i128 3989, ptr @foo13989 }, %struct.S { i128 3991, ptr @foo13991 }, %struct.S { i128 3993, ptr @foo13993 }, %struct.S { i128 3995, ptr @foo13995 }, %struct.S { i128 3997, ptr @foo13997 }, %struct.S { i128 3999, ptr @foo13999 }, %struct.S { i128 7001, ptr @foo17001 }, %struct.S { i128 7003, ptr @foo17003 }, %struct.S { i128 7005, ptr @foo17005 }, %struct.S { i128 7007, ptr @foo17007 }, %struct.S { i128 7009, ptr @foo17009 }, %struct.S { i128 7011, ptr @foo17011 }, %struct.S { i128 7013, ptr @foo17013 }, %struct.S { i128 7015, ptr @foo17015 }, %struct.S { i128 7017, ptr @foo17017 }, %struct.S { i128 7019, ptr @foo17019 }, %struct.S { i128 7021, ptr @foo17021 }, %struct.S { i128 7023, ptr @foo17023 }, %struct.S { i128 7025, ptr @foo17025 }, %struct.S { i128 7027, ptr @foo17027 }, %struct.S { i128 7029, ptr @foo17029 }, %struct.S { i128 7031, ptr @foo17031 }, %struct.S { i128 7033, ptr @foo17033 }, %struct.S { i128 7035, ptr @foo17035 }, %struct.S { i128 7037, ptr @foo17037 }, %struct.S { i128 7039, ptr @foo17039 }, %struct.S { i128 7041, ptr @foo17041 }, %struct.S { i128 7043, ptr @foo17043 }, %struct.S { i128 7045, ptr @foo17045 }, %struct.S { i128 7047, ptr @foo17047 }, %struct.S { i128 7049, ptr @foo17049 }, %struct.S { i128 7051, ptr @foo17051 }, %struct.S { i128 7053, ptr @foo17053 }, %struct.S { i128 7055, ptr @foo17055 }, %struct.S { i128 7057, ptr @foo17057 }, %struct.S { i128 7059, ptr @foo17059 }, %struct.S { i128 7061, ptr @foo17061 }, %struct.S { i128 7063, ptr @foo17063 }, %struct.S { i128 7065, ptr @foo17065 }, %struct.S { i128 7067, ptr @foo17067 }, %struct.S { i128 7069, ptr @foo17069 }, %struct.S { i128 7071, ptr @foo17071 }, %struct.S { i128 7073, ptr @foo17073 }, %struct.S { i128 7075, ptr @foo17075 }, %struct.S { i128 7077, ptr @foo17077 }, %struct.S { i128 7079, ptr @foo17079 }, %struct.S { i128 7081, ptr @foo17081 }, %struct.S { i128 7083, ptr @foo17083 }, %struct.S { i128 7085, ptr @foo17085 }, %struct.S { i128 7087, ptr @foo17087 }, %struct.S { i128 7089, ptr @foo17089 }, %struct.S { i128 7091, ptr @foo17091 }, %struct.S { i128 7093, ptr @foo17093 }, %struct.S { i128 7095, ptr @foo17095 }, %struct.S { i128 7097, ptr @foo17097 }, %struct.S { i128 7099, ptr @foo17099 }, %struct.S { i128 7401, ptr @foo17401 }, %struct.S { i128 7403, ptr @foo17403 }, %struct.S { i128 7405, ptr @foo17405 }, %struct.S { i128 7407, ptr @foo17407 }, %struct.S { i128 7409, ptr @foo17409 }, %struct.S { i128 7411, ptr @foo17411 }, %struct.S { i128 7413, ptr @foo17413 }, %struct.S { i128 7415, ptr @foo17415 }, %struct.S { i128 7417, ptr @foo17417 }, %struct.S { i128 7419, ptr @foo17419 }, %struct.S { i128 7421, ptr @foo17421 }, %struct.S { i128 7423, ptr @foo17423 }, %struct.S { i128 7425, ptr @foo17425 }, %struct.S { i128 7427, ptr @foo17427 }, %struct.S { i128 7429, ptr @foo17429 }, %struct.S { i128 7431, ptr @foo17431 }, %struct.S { i128 7433, ptr @foo17433 }, %struct.S { i128 7435, ptr @foo17435 }, %struct.S { i128 7437, ptr @foo17437 }, %struct.S { i128 7439, ptr @foo17439 }, %struct.S { i128 7441, ptr @foo17441 }, %struct.S { i128 7443, ptr @foo17443 }, %struct.S { i128 7445, ptr @foo17445 }, %struct.S { i128 7447, ptr @foo17447 }, %struct.S { i128 7449, ptr @foo17449 }, %struct.S { i128 7451, ptr @foo17451 }, %struct.S { i128 7453, ptr @foo17453 }, %struct.S { i128 7455, ptr @foo17455 }, %struct.S { i128 7457, ptr @foo17457 }, %struct.S { i128 7459, ptr @foo17459 }, %struct.S { i128 7461, ptr @foo17461 }, %struct.S { i128 7463, ptr @foo17463 }, %struct.S { i128 7465, ptr @foo17465 }, %struct.S { i128 7467, ptr @foo17467 }, %struct.S { i128 7469, ptr @foo17469 }, %struct.S { i128 7471, ptr @foo17471 }, %struct.S { i128 7473, ptr @foo17473 }, %struct.S { i128 7475, ptr @foo17475 }, %struct.S { i128 7477, ptr @foo17477 }, %struct.S { i128 7479, ptr @foo17479 }, %struct.S { i128 7481, ptr @foo17481 }, %struct.S { i128 7483, ptr @foo17483 }, %struct.S { i128 7485, ptr @foo17485 }, %struct.S { i128 7487, ptr @foo17487 }, %struct.S { i128 7489, ptr @foo17489 }, %struct.S { i128 7491, ptr @foo17491 }, %struct.S { i128 7493, ptr @foo17493 }, %struct.S { i128 7495, ptr @foo17495 }, %struct.S { i128 7497, ptr @foo17497 }, %struct.S { i128 7499, ptr @foo17499 }, %struct.S { i128 7901, ptr @foo17901 }, %struct.S { i128 7903, ptr @foo17903 }, %struct.S { i128 7905, ptr @foo17905 }, %struct.S { i128 7907, ptr @foo17907 }, %struct.S { i128 7909, ptr @foo17909 }, %struct.S { i128 7911, ptr @foo17911 }, %struct.S { i128 7913, ptr @foo17913 }, %struct.S { i128 7915, ptr @foo17915 }, %struct.S { i128 7917, ptr @foo17917 }, %struct.S { i128 7919, ptr @foo17919 }, %struct.S { i128 7921, ptr @foo17921 }, %struct.S { i128 7923, ptr @foo17923 }, %struct.S { i128 7925, ptr @foo17925 }, %struct.S { i128 7927, ptr @foo17927 }, %struct.S { i128 7929, ptr @foo17929 }, %struct.S { i128 7931, ptr @foo17931 }, %struct.S { i128 7933, ptr @foo17933 }, %struct.S { i128 7935, ptr @foo17935 }, %struct.S { i128 7937, ptr @foo17937 }, %struct.S { i128 7939, ptr @foo17939 }, %struct.S { i128 7941, ptr @foo17941 }, %struct.S { i128 7943, ptr @foo17943 }, %struct.S { i128 7945, ptr @foo17945 }, %struct.S { i128 7947, ptr @foo17947 }, %struct.S { i128 7949, ptr @foo17949 }, %struct.S { i128 7951, ptr @foo17951 }, %struct.S { i128 7953, ptr @foo17953 }, %struct.S { i128 7955, ptr @foo17955 }, %struct.S { i128 7957, ptr @foo17957 }, %struct.S { i128 7959, ptr @foo17959 }, %struct.S { i128 7961, ptr @foo17961 }, %struct.S { i128 7963, ptr @foo17963 }, %struct.S { i128 7965, ptr @foo17965 }, %struct.S { i128 7967, ptr @foo17967 }, %struct.S { i128 7969, ptr @foo17969 }, %struct.S { i128 7971, ptr @foo17971 }, %struct.S { i128 7973, ptr @foo17973 }, %struct.S { i128 7975, ptr @foo17975 }, %struct.S { i128 7977, ptr @foo17977 }, %struct.S { i128 7979, ptr @foo17979 }, %struct.S { i128 7981, ptr @foo17981 }, %struct.S { i128 7983, ptr @foo17983 }, %struct.S { i128 7985, ptr @foo17985 }, %struct.S { i128 7987, ptr @foo17987 }, %struct.S { i128 7989, ptr @foo17989 }, %struct.S { i128 7991, ptr @foo17991 }, %struct.S { i128 7993, ptr @foo17993 }, %struct.S { i128 7995, ptr @foo17995 }, %struct.S { i128 7997, ptr @foo17997 }, %struct.S { i128 7999, ptr @foo17999 }, %struct.S { i128 90101, ptr @foo100101 }, %struct.S { i128 90103, ptr @foo100103 }, %struct.S { i128 90105, ptr @foo100105 }, %struct.S { i128 90107, ptr @foo100107 }, %struct.S { i128 90109, ptr @foo100109 }, %struct.S { i128 90121, ptr @foo100121 }, %struct.S { i128 90123, ptr @foo100123 }, %struct.S { i128 90125, ptr @foo100125 }, %struct.S { i128 90127, ptr @foo100127 }, %struct.S { i128 90129, ptr @foo100129 }, %struct.S { i128 151441, ptr @foo161441 }, %struct.S { i128 151443, ptr @foo161443 }, %struct.S { i128 151445, ptr @foo161445 }, %struct.S { i128 151447, ptr @foo161447 }, %struct.S { i128 151449, ptr @foo161449 }, %struct.S zeroinitializer], align 16

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo(i128 noundef %x, i128 noundef %n, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %n.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store i128 %n, ptr %n.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %1 = load i128, ptr %n.addr, align 16
  %rem = urem i128 %0, %1
  %2 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %2, align 16
  %3 = load i128, ptr %x.addr, align 16
  %4 = load i128, ptr %n.addr, align 16
  %div = udiv i128 %3, %4
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10001(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 1
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 1
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10003(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10005(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 5
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 5
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10007(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10009(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 9
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 9
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10011(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 11
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 11
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10013(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 13
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 13
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10015(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 15
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 15
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10017(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 17
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 17
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10019(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 19
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 19
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10021(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 21
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 21
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10023(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 23
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 23
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10025(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 25
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 25
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10027(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 27
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 27
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10029(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 29
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 29
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10031(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 31
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 31
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10033(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 33
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 33
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10035(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 35
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 35
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10037(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 37
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 37
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10039(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 39
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 39
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10041(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 41
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 41
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10043(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 43
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 43
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10045(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 45
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 45
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10047(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 47
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 47
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10049(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 49
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 49
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10051(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 51
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 51
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10053(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 53
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 53
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10055(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 55
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 55
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10057(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 57
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 57
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10059(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 59
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 59
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10061(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 61
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 61
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10063(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 63
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 63
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10065(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 65
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 65
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10067(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 67
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 67
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10069(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 69
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 69
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10071(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 71
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 71
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10073(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 73
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 73
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10075(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 75
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 75
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10077(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 77
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 77
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10079(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 79
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 79
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10081(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 81
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 81
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10083(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 83
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 83
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10085(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 85
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 85
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10087(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 87
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 87
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10089(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 89
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 89
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10091(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 91
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 91
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10093(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 93
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 93
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10095(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 95
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 95
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10097(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 97
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 97
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10099(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 99
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 99
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10401(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 401
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 401
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10403(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 403
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 403
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10405(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 405
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 405
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10407(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 407
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 407
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10409(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 409
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 409
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10411(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 411
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 411
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10413(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 413
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 413
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10415(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 415
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 415
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10417(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 417
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 417
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10419(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 419
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 419
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10421(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 421
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 421
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10423(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 423
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 423
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10425(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 425
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 425
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10427(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 427
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 427
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10429(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 429
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 429
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10431(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 431
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 431
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10433(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 433
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 433
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10435(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 435
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 435
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10437(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 437
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 437
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10439(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 439
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 439
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10441(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 441
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 441
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10443(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 443
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 443
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10445(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 445
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 445
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10447(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 447
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 447
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10449(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 449
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 449
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10451(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 451
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 451
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10453(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 453
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 453
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10455(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 455
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 455
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10457(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 457
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 457
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10459(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 459
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 459
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10461(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 461
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 461
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10463(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 463
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 463
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10465(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 465
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 465
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10467(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 467
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 467
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10469(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 469
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 469
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10471(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 471
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 471
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10473(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 473
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 473
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10475(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 475
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 475
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10477(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 477
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 477
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10479(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 479
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 479
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10481(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 481
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 481
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10483(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 483
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 483
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10485(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 485
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 485
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10487(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 487
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 487
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10489(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 489
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 489
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10491(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 491
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 491
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10493(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 493
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 493
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10495(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 495
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 495
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10497(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 497
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 497
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10499(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 499
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 499
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10901(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 901
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 901
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10903(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 903
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 903
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10905(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 905
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 905
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10907(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 907
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 907
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10909(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 909
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 909
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10911(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 911
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 911
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10913(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 913
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 913
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10915(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 915
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 915
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10917(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 917
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 917
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10919(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 919
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 919
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10921(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 921
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 921
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10923(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 923
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 923
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10925(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 925
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 925
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10927(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 927
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 927
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10929(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 929
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 929
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10931(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 931
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 931
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10933(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 933
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 933
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10935(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 935
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 935
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10937(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 937
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 937
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10939(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 939
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 939
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10941(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 941
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 941
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10943(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 943
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 943
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10945(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 945
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 945
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10947(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 947
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 947
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10949(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 949
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 949
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10951(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 951
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 951
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10953(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 953
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 953
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10955(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 955
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 955
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10957(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 957
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 957
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10959(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 959
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 959
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10961(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 961
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 961
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10963(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 963
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 963
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10965(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 965
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 965
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10967(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 967
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 967
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10969(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 969
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 969
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10971(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 971
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 971
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10973(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 973
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 973
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10975(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 975
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 975
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10977(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 977
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 977
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10979(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 979
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 979
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10981(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 981
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 981
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10983(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 983
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 983
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10985(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 985
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 985
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10987(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 987
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 987
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10989(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 989
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 989
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10991(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 991
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 991
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10993(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 993
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 993
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10995(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 995
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 995
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10997(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 997
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 997
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo10999(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 999
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 999
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13001(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3001
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3001
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13003(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3003
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3003
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13005(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3005
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3005
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13007(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3007
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3007
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13009(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3009
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3009
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13011(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3011
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3011
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13013(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3013
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3013
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13015(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3015
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3015
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13017(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3017
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3017
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13019(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3019
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3019
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13021(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3021
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3021
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13023(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3023
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3023
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13025(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3025
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3025
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13027(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3027
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3027
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13029(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3029
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3029
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13031(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3031
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3031
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13033(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3033
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3033
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13035(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3035
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3035
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13037(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3037
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3037
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13039(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3039
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3039
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13041(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3041
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3041
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13043(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3043
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3043
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13045(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3045
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3045
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13047(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3047
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3047
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13049(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3049
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3049
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13051(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3051
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3051
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13053(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3053
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3053
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13055(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3055
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3055
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13057(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3057
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3057
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13059(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3059
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3059
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13061(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3061
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3061
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13063(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3063
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3063
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13065(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3065
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3065
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13067(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3067
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3067
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13069(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3069
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3069
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13071(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3071
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3071
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13073(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3073
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3073
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13075(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3075
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3075
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13077(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3077
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3077
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13079(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3079
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3079
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13081(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3081
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3081
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13083(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3083
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3083
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13085(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3085
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3085
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13087(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3087
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3087
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13089(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3089
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3089
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13091(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3091
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3091
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13093(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3093
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3093
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13095(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3095
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3095
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13097(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3097
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3097
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13099(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3099
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3099
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13401(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3401
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3401
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13403(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3403
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3403
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13405(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3405
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3405
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13407(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3407
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3407
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13409(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3409
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3409
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13411(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3411
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3411
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13413(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3413
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3413
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13415(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3415
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3415
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13417(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3417
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3417
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13419(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3419
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3419
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13421(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3421
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3421
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13423(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3423
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3423
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13425(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3425
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3425
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13427(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3427
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3427
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13429(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3429
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3429
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13431(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3431
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3431
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13433(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3433
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3433
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13435(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3435
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3435
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13437(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3437
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3437
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13439(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3439
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3439
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13441(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3441
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3441
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13443(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3443
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3443
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13445(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3445
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3445
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13447(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3447
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3447
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13449(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3449
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3449
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13451(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3451
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3451
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13453(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3453
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3453
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13455(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3455
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3455
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13457(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3457
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3457
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13459(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3459
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3459
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13461(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3461
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3461
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13463(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3463
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3463
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13465(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3465
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3465
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13467(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3467
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3467
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13469(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3469
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3469
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13471(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3471
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3471
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13473(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3473
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3473
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13475(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3475
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3475
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13477(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3477
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3477
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13479(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3479
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3479
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13481(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3481
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3481
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13483(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3483
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3483
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13485(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3485
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3485
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13487(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3487
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3487
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13489(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3489
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3489
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13491(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3491
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3491
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13493(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3493
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3493
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13495(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3495
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3495
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13497(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3497
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3497
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13499(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3499
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3499
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13901(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3901
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3901
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13903(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3903
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3903
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13905(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3905
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3905
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13907(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3907
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3907
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13909(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3909
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3909
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13911(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3911
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3911
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13913(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3913
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3913
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13915(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3915
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3915
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13917(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3917
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3917
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13919(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3919
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3919
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13921(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3921
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3921
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13923(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3923
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3923
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13925(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3925
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3925
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13927(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3927
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3927
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13929(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3929
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3929
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13931(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3931
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3931
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13933(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3933
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3933
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13935(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3935
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3935
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13937(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3937
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3937
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13939(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3939
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3939
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13941(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3941
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3941
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13943(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3943
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3943
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13945(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3945
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3945
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13947(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3947
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3947
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13949(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3949
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3949
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13951(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3951
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3951
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13953(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3953
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3953
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13955(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3955
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3955
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13957(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3957
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3957
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13959(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3959
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3959
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13961(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3961
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3961
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13963(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3963
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3963
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13965(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3965
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3965
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13967(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3967
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3967
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13969(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3969
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3969
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13971(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3971
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3971
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13973(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3973
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3973
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13975(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3975
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3975
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13977(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3977
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3977
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13979(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3979
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3979
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13981(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3981
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3981
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13983(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3983
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3983
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13985(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3985
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3985
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13987(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3987
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3987
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13989(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3989
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3989
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13991(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3991
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3991
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13993(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3993
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3993
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13995(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3995
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3995
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13997(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3997
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3997
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo13999(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 3999
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 3999
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17001(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7001
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7001
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17003(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7003
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7003
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17005(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7005
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7005
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17007(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7007
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7007
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17009(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7009
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7009
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17011(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7011
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7011
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17013(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7013
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7013
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17015(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7015
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7015
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17017(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7017
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7017
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17019(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7019
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7019
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17021(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7021
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7021
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17023(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7023
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7023
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17025(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7025
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7025
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17027(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7027
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7027
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17029(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7029
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7029
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17031(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7031
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7031
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17033(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7033
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7033
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17035(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7035
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7035
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17037(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7037
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7037
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17039(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7039
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7039
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17041(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7041
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7041
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17043(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7043
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7043
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17045(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7045
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7045
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17047(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7047
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7047
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17049(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7049
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7049
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17051(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7051
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7051
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17053(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7053
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7053
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17055(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7055
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7055
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17057(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7057
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7057
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17059(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7059
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7059
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17061(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7061
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7061
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17063(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7063
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7063
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17065(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7065
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7065
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17067(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7067
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7067
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17069(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7069
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7069
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17071(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7071
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7071
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17073(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7073
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7073
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17075(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7075
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7075
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17077(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7077
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7077
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17079(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7079
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7079
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17081(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7081
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7081
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17083(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7083
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7083
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17085(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7085
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7085
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17087(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7087
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7087
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17089(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7089
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7089
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17091(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7091
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7091
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17093(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7093
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7093
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17095(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7095
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7095
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17097(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7097
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7097
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17099(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7099
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7099
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17401(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7401
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7401
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17403(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7403
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7403
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17405(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7405
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7405
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17407(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7407
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7407
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17409(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7409
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7409
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17411(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7411
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7411
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17413(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7413
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7413
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17415(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7415
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7415
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17417(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7417
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7417
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17419(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7419
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7419
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17421(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7421
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7421
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17423(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7423
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7423
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17425(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7425
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7425
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17427(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7427
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7427
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17429(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7429
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7429
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17431(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7431
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7431
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17433(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7433
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7433
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17435(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7435
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7435
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17437(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7437
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7437
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17439(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7439
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7439
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17441(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7441
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7441
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17443(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7443
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7443
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17445(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7445
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7445
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17447(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7447
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7447
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17449(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7449
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7449
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17451(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7451
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7451
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17453(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7453
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7453
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17455(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7455
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7455
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17457(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7457
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7457
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17459(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7459
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7459
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17461(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7461
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7461
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17463(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7463
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7463
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17465(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7465
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7465
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17467(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7467
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7467
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17469(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7469
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7469
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17471(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7471
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7471
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17473(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7473
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7473
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17475(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7475
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7475
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17477(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7477
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7477
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17479(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7479
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7479
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17481(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7481
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7481
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17483(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7483
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7483
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17485(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7485
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7485
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17487(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7487
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7487
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17489(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7489
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7489
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17491(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7491
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7491
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17493(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7493
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7493
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17495(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7495
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7495
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17497(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7497
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7497
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17499(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7499
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7499
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17901(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7901
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7901
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17903(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7903
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7903
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17905(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7905
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7905
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17907(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7907
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7907
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17909(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7909
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7909
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17911(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7911
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7911
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17913(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7913
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7913
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17915(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7915
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7915
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17917(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7917
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7917
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17919(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7919
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7919
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17921(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7921
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7921
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17923(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7923
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7923
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17925(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7925
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7925
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17927(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7927
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7927
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17929(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7929
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7929
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17931(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7931
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7931
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17933(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7933
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7933
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17935(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7935
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7935
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17937(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7937
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7937
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17939(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7939
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7939
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17941(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7941
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7941
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17943(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7943
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7943
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17945(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7945
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7945
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17947(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7947
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7947
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17949(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7949
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7949
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17951(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7951
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7951
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17953(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7953
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7953
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17955(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7955
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7955
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17957(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7957
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7957
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17959(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7959
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7959
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17961(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7961
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7961
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17963(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7963
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7963
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17965(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7965
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7965
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17967(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7967
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7967
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17969(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7969
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7969
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17971(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7971
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7971
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17973(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7973
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7973
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17975(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7975
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7975
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17977(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7977
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7977
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17979(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7979
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7979
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17981(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7981
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7981
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17983(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7983
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7983
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17985(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7985
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7985
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17987(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7987
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7987
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17989(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7989
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7989
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17991(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7991
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7991
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17993(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7993
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7993
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17995(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7995
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7995
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17997(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7997
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7997
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo17999(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 7999
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 7999
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo100101(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 90101
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 90101
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo100103(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 90103
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 90103
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo100105(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 90105
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 90105
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo100107(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 90107
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 90107
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo100109(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 90109
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 90109
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo100121(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 90121
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 90121
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo100123(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 90123
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 90123
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo100125(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 90125
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 90125
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo100127(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 90127
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 90127
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo100129(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 90129
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 90129
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo161441(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 151441
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 151441
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo161443(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 151443
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 151443
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo161445(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 151445
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 151445
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo161447(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 151447
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 151447
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i128 @foo161449(i128 noundef %x, ptr noundef %r) #0 {
entry:
  %x.addr = alloca i128, align 16
  %r.addr = alloca ptr, align 8
  store i128 %x, ptr %x.addr, align 16
  store ptr %r, ptr %r.addr, align 8
  %0 = load i128, ptr %x.addr, align 16
  %rem = urem i128 %0, 151449
  %1 = load ptr, ptr %r.addr, align 8
  store i128 %rem, ptr %1, align 16
  %2 = load i128, ptr %x.addr, align 16
  %div = udiv i128 %2, 151449
  ret i128 %div
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %x8 = alloca i128, align 16
  %r1 = alloca i128, align 16
  %r2 = alloca i128, align 16
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %0 = load i32, ptr %k, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [466 x %struct.S], ptr @tests, i64 0, i64 %idxprom
  %x = getelementptr inbounds %struct.S, ptr %arrayidx, i32 0, i32 0
  %1 = load i128, ptr %x, align 16
  %tobool = icmp ne i128 %1, 0
  br i1 %tobool, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc20, %for.body
  %2 = load i32, ptr %i, align 4
  %conv = sext i32 %2 to i64
  %cmp = icmp ult i64 %conv, 128
  br i1 %cmp, label %for.body3, label %for.end22

for.body3:                                        ; preds = %for.cond1
  store i32 -5, ptr %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %3 = load i32, ptr %j, align 4
  %cmp5 = icmp sle i32 %3, 5
  br i1 %cmp5, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond4
  %4 = load i32, ptr %i, align 4
  %sh_prom = zext i32 %4 to i128
  %shl = shl i128 1, %sh_prom
  %5 = load i32, ptr %j, align 4
  %conv9 = sext i32 %5 to i128
  %add = add i128 %shl, %conv9
  store i128 %add, ptr %x8, align 16
  %6 = load i128, ptr %x8, align 16
  %7 = load i32, ptr %k, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [466 x %struct.S], ptr @tests, i64 0, i64 %idxprom10
  %x12 = getelementptr inbounds %struct.S, ptr %arrayidx11, i32 0, i32 0
  %8 = load i128, ptr %x12, align 16
  %call = call i128 @foo(i128 noundef %6, i128 noundef %8, ptr noundef %r1)
  %9 = load i32, ptr %k, align 4
  %idxprom13 = sext i32 %9 to i64
  %arrayidx14 = getelementptr inbounds [466 x %struct.S], ptr @tests, i64 0, i64 %idxprom13
  %foo = getelementptr inbounds %struct.S, ptr %arrayidx14, i32 0, i32 1
  %10 = load ptr, ptr %foo, align 16
  %11 = load i128, ptr %x8, align 16
  %call15 = call i128 %10(i128 noundef %11, ptr noundef %r2)
  %cmp16 = icmp ne i128 %call, %call15
  br i1 %cmp16, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body7
  %12 = load i128, ptr %r1, align 16
  %13 = load i128, ptr %r2, align 16
  %cmp18 = icmp ne i128 %12, %13
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body7
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond4, !llvm.loop !5

for.end:                                          ; preds = %for.cond4
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %15 = load i32, ptr %i, align 4
  %inc21 = add nsw i32 %15, 1
  store i32 %inc21, ptr %i, align 4
  br label %for.cond1, !llvm.loop !7

for.end22:                                        ; preds = %for.cond1
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %16 = load i32, ptr %k, align 4
  %inc24 = add nsw i32 %16, 1
  store i32 %inc24, ptr %k, align 4
  br label %for.cond, !llvm.loop !8

for.end25:                                        ; preds = %for.cond
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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
