; ModuleID = './code/184-31887whirl.c'
source_filename = "./code/184-31887whirl.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@T0 = global [256 x [8 x i32]] zeroinitializer, align 4
@T1 = global [256 x [8 x i32]] zeroinitializer, align 4
@T2 = global [256 x [8 x i32]] zeroinitializer, align 4
@T3 = global [256 x [8 x i32]] zeroinitializer, align 4
@T4 = global [256 x [8 x i32]] zeroinitializer, align 4
@T5 = global [256 x [8 x i32]] zeroinitializer, align 4
@T6 = global [256 x [8 x i32]] zeroinitializer, align 4
@T7 = global [256 x [8 x i32]] zeroinitializer, align 4
@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"ZOINX !\0A\00", align 1
@Sbox = internal global [256 x i32] [i32 24, i32 35, i32 198, i32 232, i32 135, i32 184, i32 1, i32 79, i32 54, i32 166, i32 210, i32 245, i32 121, i32 111, i32 145, i32 82, i32 96, i32 188, i32 155, i32 142, i32 163, i32 12, i32 123, i32 53, i32 29, i32 224, i32 215, i32 194, i32 46, i32 75, i32 254, i32 87, i32 21, i32 119, i32 55, i32 229, i32 159, i32 240, i32 74, i32 218, i32 88, i32 201, i32 41, i32 10, i32 177, i32 160, i32 107, i32 133, i32 189, i32 93, i32 16, i32 244, i32 203, i32 62, i32 5, i32 103, i32 228, i32 39, i32 65, i32 139, i32 167, i32 125, i32 149, i32 216, i32 251, i32 238, i32 124, i32 102, i32 221, i32 23, i32 71, i32 158, i32 202, i32 45, i32 191, i32 7, i32 173, i32 90, i32 131, i32 51, i32 99, i32 2, i32 170, i32 113, i32 200, i32 25, i32 73, i32 217, i32 242, i32 227, i32 91, i32 136, i32 154, i32 38, i32 50, i32 176, i32 233, i32 15, i32 213, i32 128, i32 190, i32 205, i32 52, i32 72, i32 255, i32 122, i32 144, i32 95, i32 32, i32 104, i32 26, i32 174, i32 180, i32 84, i32 147, i32 34, i32 100, i32 241, i32 115, i32 18, i32 64, i32 8, i32 195, i32 236, i32 219, i32 161, i32 141, i32 61, i32 151, i32 0, i32 207, i32 43, i32 118, i32 130, i32 214, i32 27, i32 181, i32 175, i32 106, i32 80, i32 69, i32 243, i32 48, i32 239, i32 63, i32 85, i32 162, i32 234, i32 101, i32 186, i32 47, i32 192, i32 222, i32 28, i32 253, i32 77, i32 146, i32 117, i32 6, i32 138, i32 178, i32 230, i32 14, i32 31, i32 98, i32 212, i32 168, i32 150, i32 249, i32 197, i32 37, i32 89, i32 132, i32 114, i32 57, i32 76, i32 94, i32 120, i32 56, i32 140, i32 209, i32 165, i32 226, i32 97, i32 179, i32 33, i32 156, i32 30, i32 67, i32 199, i32 252, i32 4, i32 81, i32 153, i32 109, i32 13, i32 250, i32 223, i32 126, i32 36, i32 59, i32 171, i32 206, i32 17, i32 143, i32 78, i32 183, i32 235, i32 60, i32 129, i32 148, i32 247, i32 185, i32 19, i32 44, i32 211, i32 231, i32 110, i32 196, i32 3, i32 86, i32 68, i32 127, i32 169, i32 42, i32 187, i32 193, i32 83, i32 220, i32 11, i32 157, i32 108, i32 49, i32 116, i32 246, i32 70, i32 172, i32 137, i32 20, i32 225, i32 22, i32 58, i32 105, i32 9, i32 112, i32 182, i32 208, i32 237, i32 204, i32 66, i32 152, i32 164, i32 40, i32 92, i32 248, i32 134], align 4
@mds_matrix = internal global [8 x [8 x i32]] [[8 x i32] [i32 1, i32 1, i32 4, i32 1, i32 8, i32 5, i32 2, i32 9], [8 x i32] [i32 9, i32 1, i32 1, i32 4, i32 1, i32 8, i32 5, i32 2], [8 x i32] [i32 2, i32 9, i32 1, i32 1, i32 4, i32 1, i32 8, i32 5], [8 x i32] [i32 5, i32 2, i32 9, i32 1, i32 1, i32 4, i32 1, i32 8], [8 x i32] [i32 8, i32 5, i32 2, i32 9, i32 1, i32 1, i32 4, i32 1], [8 x i32] [i32 1, i32 8, i32 5, i32 2, i32 9, i32 1, i32 1, i32 4], [8 x i32] [i32 4, i32 1, i32 8, i32 5, i32 2, i32 9, i32 1, i32 1], [8 x i32] [i32 1, i32 4, i32 1, i32 8, i32 5, i32 2, i32 9, i32 1]], align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"static const sph_u64 T%d[256] = {\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"\09SPH_C64(0x%02X%02X%02X%02X%02X%02X%02X%02X)\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c", SPH_C64(0x%02X%02X%02X%02X%02X%02X%02X%02X)\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\0A};\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"static const sph_u64 RC[10] = {\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"\09SPH_C64(0x\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c")\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca [8 x [8 x i32]], align 4
  %b = alloca [8 x [8 x i32]], align 4
  %c = alloca [8 x [8 x i32]], align 4
  %s = alloca [8 x i32], align 4
  store i32 0, ptr %retval, align 4
  call void @fill_table(ptr noundef @T0, i32 noundef 0)
  call void @fill_table(ptr noundef @T1, i32 noundef 1)
  call void @fill_table(ptr noundef @T2, i32 noundef 2)
  call void @fill_table(ptr noundef @T3, i32 noundef 3)
  call void @fill_table(ptr noundef @T4, i32 noundef 4)
  call void @fill_table(ptr noundef @T5, i32 noundef 5)
  call void @fill_table(ptr noundef @T6, i32 noundef 6)
  call void @fill_table(ptr noundef @T7, i32 noundef 7)
  call void @srandom(i32 noundef 0)
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc168, %entry
  %0 = load i32, ptr %k, align 4
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end170

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc9, %for.body
  %1 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %1, 8
  br i1 %cmp2, label %for.body3, label %for.end11

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, ptr %j, align 4
  %cmp5 = icmp slt i32 %2, 8
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %call = call i64 @random()
  %and = and i64 %call, 255
  %conv = trunc i64 %and to i32
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom
  %4 = load i32, ptr %j, align 4
  %idxprom7 = sext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  store i32 %conv, ptr %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %5 = load i32, ptr %j, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond4, !llvm.loop !5

for.end:                                          ; preds = %for.cond4
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %6 = load i32, ptr %i, align 4
  %inc10 = add nsw i32 %6, 1
  store i32 %inc10, ptr %i, align 4
  br label %for.cond1, !llvm.loop !7

for.end11:                                        ; preds = %for.cond1
  %arraydecay = getelementptr inbounds [8 x [8 x i32]], ptr %b, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arraydecay, ptr align 4 %arraydecay12, i64 256, i1 false)
  %arraydecay13 = getelementptr inbounds [8 x [8 x i32]], ptr %b, i64 0, i64 0
  call void @apply_comb(ptr noundef %arraydecay13)
  store i32 0, ptr %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc140, %for.end11
  %7 = load i32, ptr %i, align 4
  %cmp15 = icmp slt i32 %7, 8
  br i1 %cmp15, label %for.body17, label %for.end142

for.body17:                                       ; preds = %for.cond14
  %arraydecay18 = getelementptr inbounds [8 x i32], ptr %s, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 4 %arraydecay18, i8 0, i64 32, i1 false)
  store i32 0, ptr %j, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc124, %for.body17
  %8 = load i32, ptr %j, align 4
  %cmp20 = icmp slt i32 %8, 8
  br i1 %cmp20, label %for.body22, label %for.end126

for.body22:                                       ; preds = %for.cond19
  %9 = load i32, ptr %i, align 4
  %add = add nsw i32 8, %9
  %sub = sub nsw i32 %add, 0
  %and23 = and i32 %sub, 7
  %idxprom24 = sext i32 %and23 to i64
  %arrayidx25 = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom24
  %arrayidx26 = getelementptr inbounds [8 x i32], ptr %arrayidx25, i64 0, i64 0
  %10 = load i32, ptr %arrayidx26, align 4
  %idxprom27 = zext i32 %10 to i64
  %arrayidx28 = getelementptr inbounds [256 x [8 x i32]], ptr @T0, i64 0, i64 %idxprom27
  %11 = load i32, ptr %j, align 4
  %idxprom29 = sext i32 %11 to i64
  %arrayidx30 = getelementptr inbounds [8 x i32], ptr %arrayidx28, i64 0, i64 %idxprom29
  %12 = load i32, ptr %arrayidx30, align 4
  %13 = load i32, ptr %j, align 4
  %idxprom31 = sext i32 %13 to i64
  %arrayidx32 = getelementptr inbounds [8 x i32], ptr %s, i64 0, i64 %idxprom31
  %14 = load i32, ptr %arrayidx32, align 4
  %xor = xor i32 %14, %12
  store i32 %xor, ptr %arrayidx32, align 4
  %15 = load i32, ptr %i, align 4
  %add33 = add nsw i32 8, %15
  %sub34 = sub nsw i32 %add33, 1
  %and35 = and i32 %sub34, 7
  %idxprom36 = sext i32 %and35 to i64
  %arrayidx37 = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom36
  %arrayidx38 = getelementptr inbounds [8 x i32], ptr %arrayidx37, i64 0, i64 1
  %16 = load i32, ptr %arrayidx38, align 4
  %idxprom39 = zext i32 %16 to i64
  %arrayidx40 = getelementptr inbounds [256 x [8 x i32]], ptr @T1, i64 0, i64 %idxprom39
  %17 = load i32, ptr %j, align 4
  %idxprom41 = sext i32 %17 to i64
  %arrayidx42 = getelementptr inbounds [8 x i32], ptr %arrayidx40, i64 0, i64 %idxprom41
  %18 = load i32, ptr %arrayidx42, align 4
  %19 = load i32, ptr %j, align 4
  %idxprom43 = sext i32 %19 to i64
  %arrayidx44 = getelementptr inbounds [8 x i32], ptr %s, i64 0, i64 %idxprom43
  %20 = load i32, ptr %arrayidx44, align 4
  %xor45 = xor i32 %20, %18
  store i32 %xor45, ptr %arrayidx44, align 4
  %21 = load i32, ptr %i, align 4
  %add46 = add nsw i32 8, %21
  %sub47 = sub nsw i32 %add46, 2
  %and48 = and i32 %sub47, 7
  %idxprom49 = sext i32 %and48 to i64
  %arrayidx50 = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom49
  %arrayidx51 = getelementptr inbounds [8 x i32], ptr %arrayidx50, i64 0, i64 2
  %22 = load i32, ptr %arrayidx51, align 4
  %idxprom52 = zext i32 %22 to i64
  %arrayidx53 = getelementptr inbounds [256 x [8 x i32]], ptr @T2, i64 0, i64 %idxprom52
  %23 = load i32, ptr %j, align 4
  %idxprom54 = sext i32 %23 to i64
  %arrayidx55 = getelementptr inbounds [8 x i32], ptr %arrayidx53, i64 0, i64 %idxprom54
  %24 = load i32, ptr %arrayidx55, align 4
  %25 = load i32, ptr %j, align 4
  %idxprom56 = sext i32 %25 to i64
  %arrayidx57 = getelementptr inbounds [8 x i32], ptr %s, i64 0, i64 %idxprom56
  %26 = load i32, ptr %arrayidx57, align 4
  %xor58 = xor i32 %26, %24
  store i32 %xor58, ptr %arrayidx57, align 4
  %27 = load i32, ptr %i, align 4
  %add59 = add nsw i32 8, %27
  %sub60 = sub nsw i32 %add59, 3
  %and61 = and i32 %sub60, 7
  %idxprom62 = sext i32 %and61 to i64
  %arrayidx63 = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom62
  %arrayidx64 = getelementptr inbounds [8 x i32], ptr %arrayidx63, i64 0, i64 3
  %28 = load i32, ptr %arrayidx64, align 4
  %idxprom65 = zext i32 %28 to i64
  %arrayidx66 = getelementptr inbounds [256 x [8 x i32]], ptr @T3, i64 0, i64 %idxprom65
  %29 = load i32, ptr %j, align 4
  %idxprom67 = sext i32 %29 to i64
  %arrayidx68 = getelementptr inbounds [8 x i32], ptr %arrayidx66, i64 0, i64 %idxprom67
  %30 = load i32, ptr %arrayidx68, align 4
  %31 = load i32, ptr %j, align 4
  %idxprom69 = sext i32 %31 to i64
  %arrayidx70 = getelementptr inbounds [8 x i32], ptr %s, i64 0, i64 %idxprom69
  %32 = load i32, ptr %arrayidx70, align 4
  %xor71 = xor i32 %32, %30
  store i32 %xor71, ptr %arrayidx70, align 4
  %33 = load i32, ptr %i, align 4
  %add72 = add nsw i32 8, %33
  %sub73 = sub nsw i32 %add72, 4
  %and74 = and i32 %sub73, 7
  %idxprom75 = sext i32 %and74 to i64
  %arrayidx76 = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom75
  %arrayidx77 = getelementptr inbounds [8 x i32], ptr %arrayidx76, i64 0, i64 4
  %34 = load i32, ptr %arrayidx77, align 4
  %idxprom78 = zext i32 %34 to i64
  %arrayidx79 = getelementptr inbounds [256 x [8 x i32]], ptr @T4, i64 0, i64 %idxprom78
  %35 = load i32, ptr %j, align 4
  %idxprom80 = sext i32 %35 to i64
  %arrayidx81 = getelementptr inbounds [8 x i32], ptr %arrayidx79, i64 0, i64 %idxprom80
  %36 = load i32, ptr %arrayidx81, align 4
  %37 = load i32, ptr %j, align 4
  %idxprom82 = sext i32 %37 to i64
  %arrayidx83 = getelementptr inbounds [8 x i32], ptr %s, i64 0, i64 %idxprom82
  %38 = load i32, ptr %arrayidx83, align 4
  %xor84 = xor i32 %38, %36
  store i32 %xor84, ptr %arrayidx83, align 4
  %39 = load i32, ptr %i, align 4
  %add85 = add nsw i32 8, %39
  %sub86 = sub nsw i32 %add85, 5
  %and87 = and i32 %sub86, 7
  %idxprom88 = sext i32 %and87 to i64
  %arrayidx89 = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom88
  %arrayidx90 = getelementptr inbounds [8 x i32], ptr %arrayidx89, i64 0, i64 5
  %40 = load i32, ptr %arrayidx90, align 4
  %idxprom91 = zext i32 %40 to i64
  %arrayidx92 = getelementptr inbounds [256 x [8 x i32]], ptr @T5, i64 0, i64 %idxprom91
  %41 = load i32, ptr %j, align 4
  %idxprom93 = sext i32 %41 to i64
  %arrayidx94 = getelementptr inbounds [8 x i32], ptr %arrayidx92, i64 0, i64 %idxprom93
  %42 = load i32, ptr %arrayidx94, align 4
  %43 = load i32, ptr %j, align 4
  %idxprom95 = sext i32 %43 to i64
  %arrayidx96 = getelementptr inbounds [8 x i32], ptr %s, i64 0, i64 %idxprom95
  %44 = load i32, ptr %arrayidx96, align 4
  %xor97 = xor i32 %44, %42
  store i32 %xor97, ptr %arrayidx96, align 4
  %45 = load i32, ptr %i, align 4
  %add98 = add nsw i32 8, %45
  %sub99 = sub nsw i32 %add98, 6
  %and100 = and i32 %sub99, 7
  %idxprom101 = sext i32 %and100 to i64
  %arrayidx102 = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom101
  %arrayidx103 = getelementptr inbounds [8 x i32], ptr %arrayidx102, i64 0, i64 6
  %46 = load i32, ptr %arrayidx103, align 4
  %idxprom104 = zext i32 %46 to i64
  %arrayidx105 = getelementptr inbounds [256 x [8 x i32]], ptr @T6, i64 0, i64 %idxprom104
  %47 = load i32, ptr %j, align 4
  %idxprom106 = sext i32 %47 to i64
  %arrayidx107 = getelementptr inbounds [8 x i32], ptr %arrayidx105, i64 0, i64 %idxprom106
  %48 = load i32, ptr %arrayidx107, align 4
  %49 = load i32, ptr %j, align 4
  %idxprom108 = sext i32 %49 to i64
  %arrayidx109 = getelementptr inbounds [8 x i32], ptr %s, i64 0, i64 %idxprom108
  %50 = load i32, ptr %arrayidx109, align 4
  %xor110 = xor i32 %50, %48
  store i32 %xor110, ptr %arrayidx109, align 4
  %51 = load i32, ptr %i, align 4
  %add111 = add nsw i32 8, %51
  %sub112 = sub nsw i32 %add111, 7
  %and113 = and i32 %sub112, 7
  %idxprom114 = sext i32 %and113 to i64
  %arrayidx115 = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom114
  %arrayidx116 = getelementptr inbounds [8 x i32], ptr %arrayidx115, i64 0, i64 7
  %52 = load i32, ptr %arrayidx116, align 4
  %idxprom117 = zext i32 %52 to i64
  %arrayidx118 = getelementptr inbounds [256 x [8 x i32]], ptr @T7, i64 0, i64 %idxprom117
  %53 = load i32, ptr %j, align 4
  %idxprom119 = sext i32 %53 to i64
  %arrayidx120 = getelementptr inbounds [8 x i32], ptr %arrayidx118, i64 0, i64 %idxprom119
  %54 = load i32, ptr %arrayidx120, align 4
  %55 = load i32, ptr %j, align 4
  %idxprom121 = sext i32 %55 to i64
  %arrayidx122 = getelementptr inbounds [8 x i32], ptr %s, i64 0, i64 %idxprom121
  %56 = load i32, ptr %arrayidx122, align 4
  %xor123 = xor i32 %56, %54
  store i32 %xor123, ptr %arrayidx122, align 4
  br label %for.inc124

for.inc124:                                       ; preds = %for.body22
  %57 = load i32, ptr %j, align 4
  %inc125 = add nsw i32 %57, 1
  store i32 %inc125, ptr %j, align 4
  br label %for.cond19, !llvm.loop !8

for.end126:                                       ; preds = %for.cond19
  store i32 0, ptr %j, align 4
  br label %for.cond127

for.cond127:                                      ; preds = %for.inc137, %for.end126
  %58 = load i32, ptr %j, align 4
  %cmp128 = icmp slt i32 %58, 8
  br i1 %cmp128, label %for.body130, label %for.end139

for.body130:                                      ; preds = %for.cond127
  %59 = load i32, ptr %j, align 4
  %idxprom131 = sext i32 %59 to i64
  %arrayidx132 = getelementptr inbounds [8 x i32], ptr %s, i64 0, i64 %idxprom131
  %60 = load i32, ptr %arrayidx132, align 4
  %61 = load i32, ptr %i, align 4
  %idxprom133 = sext i32 %61 to i64
  %arrayidx134 = getelementptr inbounds [8 x [8 x i32]], ptr %c, i64 0, i64 %idxprom133
  %62 = load i32, ptr %j, align 4
  %idxprom135 = sext i32 %62 to i64
  %arrayidx136 = getelementptr inbounds [8 x i32], ptr %arrayidx134, i64 0, i64 %idxprom135
  store i32 %60, ptr %arrayidx136, align 4
  br label %for.inc137

for.inc137:                                       ; preds = %for.body130
  %63 = load i32, ptr %j, align 4
  %inc138 = add nsw i32 %63, 1
  store i32 %inc138, ptr %j, align 4
  br label %for.cond127, !llvm.loop !9

for.end139:                                       ; preds = %for.cond127
  br label %for.inc140

for.inc140:                                       ; preds = %for.end139
  %64 = load i32, ptr %i, align 4
  %inc141 = add nsw i32 %64, 1
  store i32 %inc141, ptr %i, align 4
  br label %for.cond14, !llvm.loop !10

for.end142:                                       ; preds = %for.cond14
  store i32 0, ptr %i, align 4
  br label %for.cond143

for.cond143:                                      ; preds = %for.inc165, %for.end142
  %65 = load i32, ptr %i, align 4
  %cmp144 = icmp slt i32 %65, 8
  br i1 %cmp144, label %for.body146, label %for.end167

for.body146:                                      ; preds = %for.cond143
  store i32 0, ptr %j, align 4
  br label %for.cond147

for.cond147:                                      ; preds = %for.inc162, %for.body146
  %66 = load i32, ptr %j, align 4
  %cmp148 = icmp slt i32 %66, 8
  br i1 %cmp148, label %for.body150, label %for.end164

for.body150:                                      ; preds = %for.cond147
  %67 = load i32, ptr %i, align 4
  %idxprom151 = sext i32 %67 to i64
  %arrayidx152 = getelementptr inbounds [8 x [8 x i32]], ptr %b, i64 0, i64 %idxprom151
  %68 = load i32, ptr %j, align 4
  %idxprom153 = sext i32 %68 to i64
  %arrayidx154 = getelementptr inbounds [8 x i32], ptr %arrayidx152, i64 0, i64 %idxprom153
  %69 = load i32, ptr %arrayidx154, align 4
  %70 = load i32, ptr %i, align 4
  %idxprom155 = sext i32 %70 to i64
  %arrayidx156 = getelementptr inbounds [8 x [8 x i32]], ptr %c, i64 0, i64 %idxprom155
  %71 = load i32, ptr %j, align 4
  %idxprom157 = sext i32 %71 to i64
  %arrayidx158 = getelementptr inbounds [8 x i32], ptr %arrayidx156, i64 0, i64 %idxprom157
  %72 = load i32, ptr %arrayidx158, align 4
  %cmp159 = icmp ne i32 %69, %72
  br i1 %cmp159, label %if.then, label %if.end

if.then:                                          ; preds = %for.body150
  %73 = load ptr, ptr @__stderrp, align 8
  %call161 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef @.str) #6
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body150
  br label %for.inc162

for.inc162:                                       ; preds = %if.end
  %74 = load i32, ptr %j, align 4
  %inc163 = add nsw i32 %74, 1
  store i32 %inc163, ptr %j, align 4
  br label %for.cond147, !llvm.loop !11

for.end164:                                       ; preds = %for.cond147
  br label %for.inc165

for.inc165:                                       ; preds = %for.end164
  %75 = load i32, ptr %i, align 4
  %inc166 = add nsw i32 %75, 1
  store i32 %inc166, ptr %i, align 4
  br label %for.cond143, !llvm.loop !12

for.end167:                                       ; preds = %for.cond143
  br label %for.inc168

for.inc168:                                       ; preds = %for.end167
  %76 = load i32, ptr %k, align 4
  %inc169 = add nsw i32 %76, 1
  store i32 %inc169, ptr %k, align 4
  br label %for.cond, !llvm.loop !13

for.end170:                                       ; preds = %for.cond
  call void @print_table(ptr noundef @T0, i32 noundef 0)
  call void @print_table(ptr noundef @T1, i32 noundef 1)
  call void @print_table(ptr noundef @T2, i32 noundef 2)
  call void @print_table(ptr noundef @T3, i32 noundef 3)
  call void @print_table(ptr noundef @T4, i32 noundef 4)
  call void @print_table(ptr noundef @T5, i32 noundef 5)
  call void @print_table(ptr noundef @T6, i32 noundef 6)
  call void @print_table(ptr noundef @T7, i32 noundef 7)
  call void @print_round_constants()
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end170, %if.then
  %77 = load i32, ptr %retval, align 4
  ret i32 %77
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @fill_table(ptr noundef %C, i32 noundef %rank) #0 {
entry:
  %C.addr = alloca ptr, align 8
  %rank.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %C, ptr %C.addr, align 8
  store i32 %rank, ptr %rank.addr, align 4
  store i32 0, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i32, ptr %x, align 4
  %cmp = icmp ult i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %1, 8
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %x, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [256 x i32], ptr @Sbox, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %4 = load i32, ptr %rank.addr, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [8 x [8 x i32]], ptr @mds_matrix, i64 0, i64 %idxprom4
  %5 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [8 x i32], ptr %arrayidx5, i64 0, i64 %idxprom6
  %6 = load i32, ptr %arrayidx7, align 4
  %call = call i32 @mul(i32 noundef %3, i32 noundef %6)
  %7 = load ptr, ptr %C.addr, align 8
  %8 = load i32, ptr %x, align 4
  %idxprom8 = zext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [8 x i32], ptr %7, i64 %idxprom8
  %9 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], ptr %arrayidx9, i64 0, i64 %idxprom10
  store i32 %call, ptr %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond1, !llvm.loop !14

for.end:                                          ; preds = %for.cond1
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %11 = load i32, ptr %x, align 4
  %inc13 = add i32 %11, 1
  store i32 %inc13, ptr %x, align 4
  br label %for.cond, !llvm.loop !15

for.end14:                                        ; preds = %for.cond
  ret void
}

declare void @srandom(i32 noundef) #1

declare i64 @random() #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @apply_comb(ptr noundef %m) #0 {
entry:
  %m.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  %0 = load ptr, ptr %m.addr, align 8
  call void @apply_gamma(ptr noundef %0)
  %1 = load ptr, ptr %m.addr, align 8
  call void @apply_pi(ptr noundef %1)
  %2 = load ptr, ptr %m.addr, align 8
  call void @apply_theta(ptr noundef %2)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @print_table(ptr noundef %T, i32 noundef %rank) #0 {
entry:
  %T.addr = alloca ptr, align 8
  %rank.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store ptr %T, ptr %T.addr, align 8
  store i32 %rank, ptr %rank.addr, align 4
  %0 = load i32, ptr %rank.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %0)
  store i32 0, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %x, align 4
  %cmp = icmp ult i32 %1, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %x, align 4
  %cmp1 = icmp ne i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = load ptr, ptr %T.addr, align 8
  %4 = load i32, ptr %x, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [8 x i32], ptr %3, i64 %idxprom
  %arrayidx3 = getelementptr inbounds [8 x i32], ptr %arrayidx, i64 0, i64 7
  %5 = load i32, ptr %arrayidx3, align 4
  %6 = load ptr, ptr %T.addr, align 8
  %7 = load i32, ptr %x, align 4
  %idxprom4 = zext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], ptr %6, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [8 x i32], ptr %arrayidx5, i64 0, i64 6
  %8 = load i32, ptr %arrayidx6, align 4
  %9 = load ptr, ptr %T.addr, align 8
  %10 = load i32, ptr %x, align 4
  %idxprom7 = zext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], ptr %9, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [8 x i32], ptr %arrayidx8, i64 0, i64 5
  %11 = load i32, ptr %arrayidx9, align 4
  %12 = load ptr, ptr %T.addr, align 8
  %13 = load i32, ptr %x, align 4
  %idxprom10 = zext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], ptr %12, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [8 x i32], ptr %arrayidx11, i64 0, i64 4
  %14 = load i32, ptr %arrayidx12, align 4
  %15 = load ptr, ptr %T.addr, align 8
  %16 = load i32, ptr %x, align 4
  %idxprom13 = zext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [8 x i32], ptr %15, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [8 x i32], ptr %arrayidx14, i64 0, i64 3
  %17 = load i32, ptr %arrayidx15, align 4
  %18 = load ptr, ptr %T.addr, align 8
  %19 = load i32, ptr %x, align 4
  %idxprom16 = zext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds [8 x i32], ptr %18, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [8 x i32], ptr %arrayidx17, i64 0, i64 2
  %20 = load i32, ptr %arrayidx18, align 4
  %21 = load ptr, ptr %T.addr, align 8
  %22 = load i32, ptr %x, align 4
  %idxprom19 = zext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds [8 x i32], ptr %21, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [8 x i32], ptr %arrayidx20, i64 0, i64 1
  %23 = load i32, ptr %arrayidx21, align 4
  %24 = load ptr, ptr %T.addr, align 8
  %25 = load i32, ptr %x, align 4
  %idxprom22 = zext i32 %25 to i64
  %arrayidx23 = getelementptr inbounds [8 x i32], ptr %24, i64 %idxprom22
  %arrayidx24 = getelementptr inbounds [8 x i32], ptr %arrayidx23, i64 0, i64 0
  %26 = load i32, ptr %arrayidx24, align 4
  %call25 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %5, i32 noundef %8, i32 noundef %11, i32 noundef %14, i32 noundef %17, i32 noundef %20, i32 noundef %23, i32 noundef %26)
  %27 = load ptr, ptr %T.addr, align 8
  %28 = load i32, ptr %x, align 4
  %add = add i32 %28, 1
  %idxprom26 = zext i32 %add to i64
  %arrayidx27 = getelementptr inbounds [8 x i32], ptr %27, i64 %idxprom26
  %arrayidx28 = getelementptr inbounds [8 x i32], ptr %arrayidx27, i64 0, i64 7
  %29 = load i32, ptr %arrayidx28, align 4
  %30 = load ptr, ptr %T.addr, align 8
  %31 = load i32, ptr %x, align 4
  %add29 = add i32 %31, 1
  %idxprom30 = zext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds [8 x i32], ptr %30, i64 %idxprom30
  %arrayidx32 = getelementptr inbounds [8 x i32], ptr %arrayidx31, i64 0, i64 6
  %32 = load i32, ptr %arrayidx32, align 4
  %33 = load ptr, ptr %T.addr, align 8
  %34 = load i32, ptr %x, align 4
  %add33 = add i32 %34, 1
  %idxprom34 = zext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds [8 x i32], ptr %33, i64 %idxprom34
  %arrayidx36 = getelementptr inbounds [8 x i32], ptr %arrayidx35, i64 0, i64 5
  %35 = load i32, ptr %arrayidx36, align 4
  %36 = load ptr, ptr %T.addr, align 8
  %37 = load i32, ptr %x, align 4
  %add37 = add i32 %37, 1
  %idxprom38 = zext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds [8 x i32], ptr %36, i64 %idxprom38
  %arrayidx40 = getelementptr inbounds [8 x i32], ptr %arrayidx39, i64 0, i64 4
  %38 = load i32, ptr %arrayidx40, align 4
  %39 = load ptr, ptr %T.addr, align 8
  %40 = load i32, ptr %x, align 4
  %add41 = add i32 %40, 1
  %idxprom42 = zext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds [8 x i32], ptr %39, i64 %idxprom42
  %arrayidx44 = getelementptr inbounds [8 x i32], ptr %arrayidx43, i64 0, i64 3
  %41 = load i32, ptr %arrayidx44, align 4
  %42 = load ptr, ptr %T.addr, align 8
  %43 = load i32, ptr %x, align 4
  %add45 = add i32 %43, 1
  %idxprom46 = zext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds [8 x i32], ptr %42, i64 %idxprom46
  %arrayidx48 = getelementptr inbounds [8 x i32], ptr %arrayidx47, i64 0, i64 2
  %44 = load i32, ptr %arrayidx48, align 4
  %45 = load ptr, ptr %T.addr, align 8
  %46 = load i32, ptr %x, align 4
  %add49 = add i32 %46, 1
  %idxprom50 = zext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds [8 x i32], ptr %45, i64 %idxprom50
  %arrayidx52 = getelementptr inbounds [8 x i32], ptr %arrayidx51, i64 0, i64 1
  %47 = load i32, ptr %arrayidx52, align 4
  %48 = load ptr, ptr %T.addr, align 8
  %49 = load i32, ptr %x, align 4
  %add53 = add i32 %49, 1
  %idxprom54 = zext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds [8 x i32], ptr %48, i64 %idxprom54
  %arrayidx56 = getelementptr inbounds [8 x i32], ptr %arrayidx55, i64 0, i64 0
  %50 = load i32, ptr %arrayidx56, align 4
  %call57 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %29, i32 noundef %32, i32 noundef %35, i32 noundef %38, i32 noundef %41, i32 noundef %44, i32 noundef %47, i32 noundef %50)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %51 = load i32, ptr %x, align 4
  %add58 = add i32 %51, 2
  store i32 %add58, ptr %x, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %call59 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @print_round_constants() #0 {
entry:
  %r = alloca i32, align 4
  %j = alloca i32, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  store i32 1, ptr %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %0 = load i32, ptr %r, align 4
  %cmp = icmp sle i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %r, align 4
  %cmp1 = icmp sgt i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  store i32 7, ptr %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %if.end
  %2 = load i32, ptr %j, align 4
  %cmp5 = icmp sge i32 %2, 0
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %3 = load i32, ptr %r, align 4
  %sub = sub nsw i32 %3, 1
  %mul = mul nsw i32 8, %sub
  %4 = load i32, ptr %j, align 4
  %add = add nsw i32 %mul, %4
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [256 x i32], ptr @Sbox, i64 0, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %6 = load i32, ptr %j, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond4, !llvm.loop !17

for.end:                                          ; preds = %for.cond4
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %7 = load i32, ptr %r, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %r, align 4
  br label %for.cond, !llvm.loop !18

for.end10:                                        ; preds = %for.cond
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @mul(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %v = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  store i32 0, ptr %v, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %b.addr, align 4
  %2 = load i32, ptr %i, align 4
  %shl = shl i32 1, %2
  %and = and i32 %1, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %a.addr, align 4
  %4 = load i32, ptr %v, align 4
  %xor = xor i32 %4, %3
  store i32 %xor, ptr %v, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %5 = load i32, ptr %a.addr, align 4
  %call = call i32 @mulX(i32 noundef %5)
  store i32 %call, ptr %a.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %v, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @mulX(i32 noundef %v) #0 {
entry:
  %v.addr = alloca i32, align 4
  store i32 %v, ptr %v.addr, align 4
  %0 = load i32, ptr %v.addr, align 4
  %shl = shl i32 %0, 1
  store i32 %shl, ptr %v.addr, align 4
  %1 = load i32, ptr %v.addr, align 4
  %cmp = icmp ugt i32 %1, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %v.addr, align 4
  %xor = xor i32 %2, 285
  store i32 %xor, ptr %v.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %v.addr, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @apply_gamma(ptr noundef %m) #0 {
entry:
  %m.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 8
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load ptr, ptr %m.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x i32], ptr %2, i64 %idxprom
  %4 = load i32, ptr %j, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %5 = load i32, ptr %arrayidx5, align 4
  %idxprom6 = zext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [256 x i32], ptr @Sbox, i64 0, i64 %idxprom6
  %6 = load i32, ptr %arrayidx7, align 4
  %7 = load ptr, ptr %m.addr, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [8 x i32], ptr %7, i64 %idxprom8
  %9 = load i32, ptr %j, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], ptr %arrayidx9, i64 0, i64 %idxprom10
  store i32 %6, ptr %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %10 = load i32, ptr %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !20

for.end:                                          ; preds = %for.cond1
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %11 = load i32, ptr %i, align 4
  %inc13 = add nsw i32 %11, 1
  store i32 %inc13, ptr %i, align 4
  br label %for.cond, !llvm.loop !21

for.end14:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @apply_pi(ptr noundef %m) #0 {
entry:
  %m.addr = alloca ptr, align 8
  %t = alloca [8 x [8 x i32]], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 8
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load ptr, ptr %m.addr, align 8
  %3 = load i32, ptr %i, align 4
  %add = add nsw i32 8, %3
  %4 = load i32, ptr %j, align 4
  %sub = sub nsw i32 %add, %4
  %and = and i32 %sub, 7
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [8 x i32], ptr %2, i64 %idxprom
  %5 = load i32, ptr %j, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %6 = load i32, ptr %arrayidx5, align 4
  %7 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [8 x [8 x i32]], ptr %t, i64 0, i64 %idxprom6
  %8 = load i32, ptr %j, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [8 x i32], ptr %arrayidx7, i64 0, i64 %idxprom8
  store i32 %6, ptr %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %9 = load i32, ptr %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !22

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %10 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond, !llvm.loop !23

for.end12:                                        ; preds = %for.cond
  %11 = load ptr, ptr %m.addr, align 8
  %arraydecay = getelementptr inbounds [8 x [8 x i32]], ptr %t, i64 0, i64 0
  %12 = load ptr, ptr %m.addr, align 8
  %13 = call i64 @llvm.objectsize.i64.p0(ptr %12, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %11, ptr noundef %arraydecay, i64 noundef 256, i64 noundef %13) #6
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @apply_theta(ptr noundef %m) #0 {
entry:
  %m.addr = alloca ptr, align 8
  %t = alloca [8 x [8 x i32]], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %s = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc17, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 8
  br i1 %cmp2, label %for.body3, label %for.end19

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %s, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, ptr %k, align 4
  %cmp5 = icmp slt i32 %2, 8
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %3 = load ptr, ptr %m.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [8 x i32], ptr %3, i64 %idxprom
  %5 = load i32, ptr %k, align 4
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %6 = load i32, ptr %arrayidx8, align 4
  %7 = load i32, ptr %k, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [8 x [8 x i32]], ptr @mds_matrix, i64 0, i64 %idxprom9
  %8 = load i32, ptr %j, align 4
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [8 x i32], ptr %arrayidx10, i64 0, i64 %idxprom11
  %9 = load i32, ptr %arrayidx12, align 4
  %call = call i32 @mul(i32 noundef %6, i32 noundef %9)
  %10 = load i32, ptr %s, align 4
  %xor = xor i32 %10, %call
  store i32 %xor, ptr %s, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %11 = load i32, ptr %k, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond4, !llvm.loop !24

for.end:                                          ; preds = %for.cond4
  %12 = load i32, ptr %s, align 4
  %13 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [8 x [8 x i32]], ptr %t, i64 0, i64 %idxprom13
  %14 = load i32, ptr %j, align 4
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds [8 x i32], ptr %arrayidx14, i64 0, i64 %idxprom15
  store i32 %12, ptr %arrayidx16, align 4
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %15 = load i32, ptr %j, align 4
  %inc18 = add nsw i32 %15, 1
  store i32 %inc18, ptr %j, align 4
  br label %for.cond1, !llvm.loop !25

for.end19:                                        ; preds = %for.cond1
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %16 = load i32, ptr %i, align 4
  %inc21 = add nsw i32 %16, 1
  store i32 %inc21, ptr %i, align 4
  br label %for.cond, !llvm.loop !26

for.end22:                                        ; preds = %for.cond
  %17 = load ptr, ptr %m.addr, align 8
  %arraydecay = getelementptr inbounds [8 x [8 x i32]], ptr %t, i64 0, i64 0
  %18 = load ptr, ptr %m.addr, align 8
  %19 = call i64 @llvm.objectsize.i64.p0(ptr %18, i1 false, i1 true, i1 false)
  %call23 = call ptr @__memcpy_chk(ptr noundef %17, ptr noundef %arraydecay, i64 noundef 256, i64 noundef %19) #6
  ret void
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #5

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
