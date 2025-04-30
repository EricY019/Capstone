; ModuleID = 'code/184-31887whirl.c'
source_filename = "code/184-31887whirl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@T0 = dso_local global [256 x [8 x i32]] zeroinitializer, align 16
@T1 = dso_local global [256 x [8 x i32]] zeroinitializer, align 16
@T2 = dso_local global [256 x [8 x i32]] zeroinitializer, align 16
@T3 = dso_local global [256 x [8 x i32]] zeroinitializer, align 16
@T4 = dso_local global [256 x [8 x i32]] zeroinitializer, align 16
@T5 = dso_local global [256 x [8 x i32]] zeroinitializer, align 16
@T6 = dso_local global [256 x [8 x i32]] zeroinitializer, align 16
@T7 = dso_local global [256 x [8 x i32]] zeroinitializer, align 16
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [9 x i8] c"ZOINX !\0A\00", align 1
@Sbox = internal global [256 x i32] [i32 24, i32 35, i32 198, i32 232, i32 135, i32 184, i32 1, i32 79, i32 54, i32 166, i32 210, i32 245, i32 121, i32 111, i32 145, i32 82, i32 96, i32 188, i32 155, i32 142, i32 163, i32 12, i32 123, i32 53, i32 29, i32 224, i32 215, i32 194, i32 46, i32 75, i32 254, i32 87, i32 21, i32 119, i32 55, i32 229, i32 159, i32 240, i32 74, i32 218, i32 88, i32 201, i32 41, i32 10, i32 177, i32 160, i32 107, i32 133, i32 189, i32 93, i32 16, i32 244, i32 203, i32 62, i32 5, i32 103, i32 228, i32 39, i32 65, i32 139, i32 167, i32 125, i32 149, i32 216, i32 251, i32 238, i32 124, i32 102, i32 221, i32 23, i32 71, i32 158, i32 202, i32 45, i32 191, i32 7, i32 173, i32 90, i32 131, i32 51, i32 99, i32 2, i32 170, i32 113, i32 200, i32 25, i32 73, i32 217, i32 242, i32 227, i32 91, i32 136, i32 154, i32 38, i32 50, i32 176, i32 233, i32 15, i32 213, i32 128, i32 190, i32 205, i32 52, i32 72, i32 255, i32 122, i32 144, i32 95, i32 32, i32 104, i32 26, i32 174, i32 180, i32 84, i32 147, i32 34, i32 100, i32 241, i32 115, i32 18, i32 64, i32 8, i32 195, i32 236, i32 219, i32 161, i32 141, i32 61, i32 151, i32 0, i32 207, i32 43, i32 118, i32 130, i32 214, i32 27, i32 181, i32 175, i32 106, i32 80, i32 69, i32 243, i32 48, i32 239, i32 63, i32 85, i32 162, i32 234, i32 101, i32 186, i32 47, i32 192, i32 222, i32 28, i32 253, i32 77, i32 146, i32 117, i32 6, i32 138, i32 178, i32 230, i32 14, i32 31, i32 98, i32 212, i32 168, i32 150, i32 249, i32 197, i32 37, i32 89, i32 132, i32 114, i32 57, i32 76, i32 94, i32 120, i32 56, i32 140, i32 209, i32 165, i32 226, i32 97, i32 179, i32 33, i32 156, i32 30, i32 67, i32 199, i32 252, i32 4, i32 81, i32 153, i32 109, i32 13, i32 250, i32 223, i32 126, i32 36, i32 59, i32 171, i32 206, i32 17, i32 143, i32 78, i32 183, i32 235, i32 60, i32 129, i32 148, i32 247, i32 185, i32 19, i32 44, i32 211, i32 231, i32 110, i32 196, i32 3, i32 86, i32 68, i32 127, i32 169, i32 42, i32 187, i32 193, i32 83, i32 220, i32 11, i32 157, i32 108, i32 49, i32 116, i32 246, i32 70, i32 172, i32 137, i32 20, i32 225, i32 22, i32 58, i32 105, i32 9, i32 112, i32 182, i32 208, i32 237, i32 204, i32 66, i32 152, i32 164, i32 40, i32 92, i32 248, i32 134], align 16
@mds_matrix = internal global [8 x [8 x i32]] [[8 x i32] [i32 1, i32 1, i32 4, i32 1, i32 8, i32 5, i32 2, i32 9], [8 x i32] [i32 9, i32 1, i32 1, i32 4, i32 1, i32 8, i32 5, i32 2], [8 x i32] [i32 2, i32 9, i32 1, i32 1, i32 4, i32 1, i32 8, i32 5], [8 x i32] [i32 5, i32 2, i32 9, i32 1, i32 1, i32 4, i32 1, i32 8], [8 x i32] [i32 8, i32 5, i32 2, i32 9, i32 1, i32 1, i32 4, i32 1], [8 x i32] [i32 1, i32 8, i32 5, i32 2, i32 9, i32 1, i32 1, i32 4], [8 x i32] [i32 4, i32 1, i32 8, i32 5, i32 2, i32 9, i32 1, i32 1], [8 x i32] [i32 1, i32 4, i32 1, i32 8, i32 5, i32 2, i32 9, i32 1]], align 16
@.str.1 = private unnamed_addr constant [35 x i8] c"static const sph_u64 T%d[256] = {\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"\09SPH_C64(0x%02X%02X%02X%02X%02X%02X%02X%02X)\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c", SPH_C64(0x%02X%02X%02X%02X%02X%02X%02X%02X)\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\0A};\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"static const sph_u64 RC[10] = {\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"\09SPH_C64(0x\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c")\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca [8 x [8 x i32]], align 16
  %b = alloca [8 x [8 x i32]], align 16
  %c = alloca [8 x [8 x i32]], align 16
  %s = alloca [8 x i32], align 16
  store i32 0, i32* %retval, align 4
  call void @fill_table([8 x i32]* getelementptr inbounds ([256 x [8 x i32]], [256 x [8 x i32]]* @T0, i64 0, i64 0), i32 0)
  call void @fill_table([8 x i32]* getelementptr inbounds ([256 x [8 x i32]], [256 x [8 x i32]]* @T1, i64 0, i64 0), i32 1)
  call void @fill_table([8 x i32]* getelementptr inbounds ([256 x [8 x i32]], [256 x [8 x i32]]* @T2, i64 0, i64 0), i32 2)
  call void @fill_table([8 x i32]* getelementptr inbounds ([256 x [8 x i32]], [256 x [8 x i32]]* @T3, i64 0, i64 0), i32 3)
  call void @fill_table([8 x i32]* getelementptr inbounds ([256 x [8 x i32]], [256 x [8 x i32]]* @T4, i64 0, i64 0), i32 4)
  call void @fill_table([8 x i32]* getelementptr inbounds ([256 x [8 x i32]], [256 x [8 x i32]]* @T5, i64 0, i64 0), i32 5)
  call void @fill_table([8 x i32]* getelementptr inbounds ([256 x [8 x i32]], [256 x [8 x i32]]* @T6, i64 0, i64 0), i32 6)
  call void @fill_table([8 x i32]* getelementptr inbounds ([256 x [8 x i32]], [256 x [8 x i32]]* @T7, i64 0, i64 0), i32 7)
  call void @srandom(i32 0) #5
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc168, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end170

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc9, %for.body
  %1 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %1, 8
  br i1 %cmp2, label %for.body3, label %for.end11

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, i32* %j, align 4
  %cmp5 = icmp slt i32 %2, 8
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %call = call i64 @random() #5
  %and = and i64 %call, 255
  %conv = trunc i64 %and to i32
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %a, i64 0, i64 %idxprom
  %4 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx, i64 0, i64 %idxprom7
  store i32 %conv, i32* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %5 = load i32, i32* %j, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond4, !llvm.loop !4

for.end:                                          ; preds = %for.cond4
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %6 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %6, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond1, !llvm.loop !6

for.end11:                                        ; preds = %for.cond1
  %arraydecay = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %b, i64 0, i64 0
  %7 = bitcast [8 x i32]* %arraydecay to i8*
  %arraydecay12 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %a, i64 0, i64 0
  %8 = bitcast [8 x i32]* %arraydecay12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 %8, i64 256, i1 false)
  %arraydecay13 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %b, i64 0, i64 0
  call void @apply_comb([8 x i32]* %arraydecay13)
  store i32 0, i32* %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc140, %for.end11
  %9 = load i32, i32* %i, align 4
  %cmp15 = icmp slt i32 %9, 8
  br i1 %cmp15, label %for.body17, label %for.end142

for.body17:                                       ; preds = %for.cond14
  %arraydecay18 = getelementptr inbounds [8 x i32], [8 x i32]* %s, i64 0, i64 0
  %10 = bitcast i32* %arraydecay18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 32, i1 false)
  store i32 0, i32* %j, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc124, %for.body17
  %11 = load i32, i32* %j, align 4
  %cmp20 = icmp slt i32 %11, 8
  br i1 %cmp20, label %for.body22, label %for.end126

for.body22:                                       ; preds = %for.cond19
  %12 = load i32, i32* %i, align 4
  %add = add nsw i32 8, %12
  %sub = sub nsw i32 %add, 0
  %and23 = and i32 %sub, 7
  %idxprom24 = sext i32 %and23 to i64
  %arrayidx25 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %a, i64 0, i64 %idxprom24
  %arrayidx26 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx25, i64 0, i64 0
  %13 = load i32, i32* %arrayidx26, align 16
  %idxprom27 = zext i32 %13 to i64
  %arrayidx28 = getelementptr inbounds [256 x [8 x i32]], [256 x [8 x i32]]* @T0, i64 0, i64 %idxprom27
  %14 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %14 to i64
  %arrayidx30 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx28, i64 0, i64 %idxprom29
  %15 = load i32, i32* %arrayidx30, align 4
  %16 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %16 to i64
  %arrayidx32 = getelementptr inbounds [8 x i32], [8 x i32]* %s, i64 0, i64 %idxprom31
  %17 = load i32, i32* %arrayidx32, align 4
  %xor = xor i32 %17, %15
  store i32 %xor, i32* %arrayidx32, align 4
  %18 = load i32, i32* %i, align 4
  %add33 = add nsw i32 8, %18
  %sub34 = sub nsw i32 %add33, 1
  %and35 = and i32 %sub34, 7
  %idxprom36 = sext i32 %and35 to i64
  %arrayidx37 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %a, i64 0, i64 %idxprom36
  %arrayidx38 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx37, i64 0, i64 1
  %19 = load i32, i32* %arrayidx38, align 4
  %idxprom39 = zext i32 %19 to i64
  %arrayidx40 = getelementptr inbounds [256 x [8 x i32]], [256 x [8 x i32]]* @T1, i64 0, i64 %idxprom39
  %20 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %20 to i64
  %arrayidx42 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx40, i64 0, i64 %idxprom41
  %21 = load i32, i32* %arrayidx42, align 4
  %22 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %22 to i64
  %arrayidx44 = getelementptr inbounds [8 x i32], [8 x i32]* %s, i64 0, i64 %idxprom43
  %23 = load i32, i32* %arrayidx44, align 4
  %xor45 = xor i32 %23, %21
  store i32 %xor45, i32* %arrayidx44, align 4
  %24 = load i32, i32* %i, align 4
  %add46 = add nsw i32 8, %24
  %sub47 = sub nsw i32 %add46, 2
  %and48 = and i32 %sub47, 7
  %idxprom49 = sext i32 %and48 to i64
  %arrayidx50 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %a, i64 0, i64 %idxprom49
  %arrayidx51 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx50, i64 0, i64 2
  %25 = load i32, i32* %arrayidx51, align 8
  %idxprom52 = zext i32 %25 to i64
  %arrayidx53 = getelementptr inbounds [256 x [8 x i32]], [256 x [8 x i32]]* @T2, i64 0, i64 %idxprom52
  %26 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %26 to i64
  %arrayidx55 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx53, i64 0, i64 %idxprom54
  %27 = load i32, i32* %arrayidx55, align 4
  %28 = load i32, i32* %j, align 4
  %idxprom56 = sext i32 %28 to i64
  %arrayidx57 = getelementptr inbounds [8 x i32], [8 x i32]* %s, i64 0, i64 %idxprom56
  %29 = load i32, i32* %arrayidx57, align 4
  %xor58 = xor i32 %29, %27
  store i32 %xor58, i32* %arrayidx57, align 4
  %30 = load i32, i32* %i, align 4
  %add59 = add nsw i32 8, %30
  %sub60 = sub nsw i32 %add59, 3
  %and61 = and i32 %sub60, 7
  %idxprom62 = sext i32 %and61 to i64
  %arrayidx63 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %a, i64 0, i64 %idxprom62
  %arrayidx64 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx63, i64 0, i64 3
  %31 = load i32, i32* %arrayidx64, align 4
  %idxprom65 = zext i32 %31 to i64
  %arrayidx66 = getelementptr inbounds [256 x [8 x i32]], [256 x [8 x i32]]* @T3, i64 0, i64 %idxprom65
  %32 = load i32, i32* %j, align 4
  %idxprom67 = sext i32 %32 to i64
  %arrayidx68 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx66, i64 0, i64 %idxprom67
  %33 = load i32, i32* %arrayidx68, align 4
  %34 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %34 to i64
  %arrayidx70 = getelementptr inbounds [8 x i32], [8 x i32]* %s, i64 0, i64 %idxprom69
  %35 = load i32, i32* %arrayidx70, align 4
  %xor71 = xor i32 %35, %33
  store i32 %xor71, i32* %arrayidx70, align 4
  %36 = load i32, i32* %i, align 4
  %add72 = add nsw i32 8, %36
  %sub73 = sub nsw i32 %add72, 4
  %and74 = and i32 %sub73, 7
  %idxprom75 = sext i32 %and74 to i64
  %arrayidx76 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %a, i64 0, i64 %idxprom75
  %arrayidx77 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx76, i64 0, i64 4
  %37 = load i32, i32* %arrayidx77, align 16
  %idxprom78 = zext i32 %37 to i64
  %arrayidx79 = getelementptr inbounds [256 x [8 x i32]], [256 x [8 x i32]]* @T4, i64 0, i64 %idxprom78
  %38 = load i32, i32* %j, align 4
  %idxprom80 = sext i32 %38 to i64
  %arrayidx81 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx79, i64 0, i64 %idxprom80
  %39 = load i32, i32* %arrayidx81, align 4
  %40 = load i32, i32* %j, align 4
  %idxprom82 = sext i32 %40 to i64
  %arrayidx83 = getelementptr inbounds [8 x i32], [8 x i32]* %s, i64 0, i64 %idxprom82
  %41 = load i32, i32* %arrayidx83, align 4
  %xor84 = xor i32 %41, %39
  store i32 %xor84, i32* %arrayidx83, align 4
  %42 = load i32, i32* %i, align 4
  %add85 = add nsw i32 8, %42
  %sub86 = sub nsw i32 %add85, 5
  %and87 = and i32 %sub86, 7
  %idxprom88 = sext i32 %and87 to i64
  %arrayidx89 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %a, i64 0, i64 %idxprom88
  %arrayidx90 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx89, i64 0, i64 5
  %43 = load i32, i32* %arrayidx90, align 4
  %idxprom91 = zext i32 %43 to i64
  %arrayidx92 = getelementptr inbounds [256 x [8 x i32]], [256 x [8 x i32]]* @T5, i64 0, i64 %idxprom91
  %44 = load i32, i32* %j, align 4
  %idxprom93 = sext i32 %44 to i64
  %arrayidx94 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx92, i64 0, i64 %idxprom93
  %45 = load i32, i32* %arrayidx94, align 4
  %46 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %46 to i64
  %arrayidx96 = getelementptr inbounds [8 x i32], [8 x i32]* %s, i64 0, i64 %idxprom95
  %47 = load i32, i32* %arrayidx96, align 4
  %xor97 = xor i32 %47, %45
  store i32 %xor97, i32* %arrayidx96, align 4
  %48 = load i32, i32* %i, align 4
  %add98 = add nsw i32 8, %48
  %sub99 = sub nsw i32 %add98, 6
  %and100 = and i32 %sub99, 7
  %idxprom101 = sext i32 %and100 to i64
  %arrayidx102 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %a, i64 0, i64 %idxprom101
  %arrayidx103 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx102, i64 0, i64 6
  %49 = load i32, i32* %arrayidx103, align 8
  %idxprom104 = zext i32 %49 to i64
  %arrayidx105 = getelementptr inbounds [256 x [8 x i32]], [256 x [8 x i32]]* @T6, i64 0, i64 %idxprom104
  %50 = load i32, i32* %j, align 4
  %idxprom106 = sext i32 %50 to i64
  %arrayidx107 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx105, i64 0, i64 %idxprom106
  %51 = load i32, i32* %arrayidx107, align 4
  %52 = load i32, i32* %j, align 4
  %idxprom108 = sext i32 %52 to i64
  %arrayidx109 = getelementptr inbounds [8 x i32], [8 x i32]* %s, i64 0, i64 %idxprom108
  %53 = load i32, i32* %arrayidx109, align 4
  %xor110 = xor i32 %53, %51
  store i32 %xor110, i32* %arrayidx109, align 4
  %54 = load i32, i32* %i, align 4
  %add111 = add nsw i32 8, %54
  %sub112 = sub nsw i32 %add111, 7
  %and113 = and i32 %sub112, 7
  %idxprom114 = sext i32 %and113 to i64
  %arrayidx115 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %a, i64 0, i64 %idxprom114
  %arrayidx116 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx115, i64 0, i64 7
  %55 = load i32, i32* %arrayidx116, align 4
  %idxprom117 = zext i32 %55 to i64
  %arrayidx118 = getelementptr inbounds [256 x [8 x i32]], [256 x [8 x i32]]* @T7, i64 0, i64 %idxprom117
  %56 = load i32, i32* %j, align 4
  %idxprom119 = sext i32 %56 to i64
  %arrayidx120 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx118, i64 0, i64 %idxprom119
  %57 = load i32, i32* %arrayidx120, align 4
  %58 = load i32, i32* %j, align 4
  %idxprom121 = sext i32 %58 to i64
  %arrayidx122 = getelementptr inbounds [8 x i32], [8 x i32]* %s, i64 0, i64 %idxprom121
  %59 = load i32, i32* %arrayidx122, align 4
  %xor123 = xor i32 %59, %57
  store i32 %xor123, i32* %arrayidx122, align 4
  br label %for.inc124

for.inc124:                                       ; preds = %for.body22
  %60 = load i32, i32* %j, align 4
  %inc125 = add nsw i32 %60, 1
  store i32 %inc125, i32* %j, align 4
  br label %for.cond19, !llvm.loop !7

for.end126:                                       ; preds = %for.cond19
  store i32 0, i32* %j, align 4
  br label %for.cond127

for.cond127:                                      ; preds = %for.inc137, %for.end126
  %61 = load i32, i32* %j, align 4
  %cmp128 = icmp slt i32 %61, 8
  br i1 %cmp128, label %for.body130, label %for.end139

for.body130:                                      ; preds = %for.cond127
  %62 = load i32, i32* %j, align 4
  %idxprom131 = sext i32 %62 to i64
  %arrayidx132 = getelementptr inbounds [8 x i32], [8 x i32]* %s, i64 0, i64 %idxprom131
  %63 = load i32, i32* %arrayidx132, align 4
  %64 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %64 to i64
  %arrayidx134 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %c, i64 0, i64 %idxprom133
  %65 = load i32, i32* %j, align 4
  %idxprom135 = sext i32 %65 to i64
  %arrayidx136 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx134, i64 0, i64 %idxprom135
  store i32 %63, i32* %arrayidx136, align 4
  br label %for.inc137

for.inc137:                                       ; preds = %for.body130
  %66 = load i32, i32* %j, align 4
  %inc138 = add nsw i32 %66, 1
  store i32 %inc138, i32* %j, align 4
  br label %for.cond127, !llvm.loop !8

for.end139:                                       ; preds = %for.cond127
  br label %for.inc140

for.inc140:                                       ; preds = %for.end139
  %67 = load i32, i32* %i, align 4
  %inc141 = add nsw i32 %67, 1
  store i32 %inc141, i32* %i, align 4
  br label %for.cond14, !llvm.loop !9

for.end142:                                       ; preds = %for.cond14
  store i32 0, i32* %i, align 4
  br label %for.cond143

for.cond143:                                      ; preds = %for.inc165, %for.end142
  %68 = load i32, i32* %i, align 4
  %cmp144 = icmp slt i32 %68, 8
  br i1 %cmp144, label %for.body146, label %for.end167

for.body146:                                      ; preds = %for.cond143
  store i32 0, i32* %j, align 4
  br label %for.cond147

for.cond147:                                      ; preds = %for.inc162, %for.body146
  %69 = load i32, i32* %j, align 4
  %cmp148 = icmp slt i32 %69, 8
  br i1 %cmp148, label %for.body150, label %for.end164

for.body150:                                      ; preds = %for.cond147
  %70 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %70 to i64
  %arrayidx152 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %b, i64 0, i64 %idxprom151
  %71 = load i32, i32* %j, align 4
  %idxprom153 = sext i32 %71 to i64
  %arrayidx154 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx152, i64 0, i64 %idxprom153
  %72 = load i32, i32* %arrayidx154, align 4
  %73 = load i32, i32* %i, align 4
  %idxprom155 = sext i32 %73 to i64
  %arrayidx156 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %c, i64 0, i64 %idxprom155
  %74 = load i32, i32* %j, align 4
  %idxprom157 = sext i32 %74 to i64
  %arrayidx158 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx156, i64 0, i64 %idxprom157
  %75 = load i32, i32* %arrayidx158, align 4
  %cmp159 = icmp ne i32 %72, %75
  br i1 %cmp159, label %if.then, label %if.end

if.then:                                          ; preds = %for.body150
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call161 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body150
  br label %for.inc162

for.inc162:                                       ; preds = %if.end
  %77 = load i32, i32* %j, align 4
  %inc163 = add nsw i32 %77, 1
  store i32 %inc163, i32* %j, align 4
  br label %for.cond147, !llvm.loop !10

for.end164:                                       ; preds = %for.cond147
  br label %for.inc165

for.inc165:                                       ; preds = %for.end164
  %78 = load i32, i32* %i, align 4
  %inc166 = add nsw i32 %78, 1
  store i32 %inc166, i32* %i, align 4
  br label %for.cond143, !llvm.loop !11

for.end167:                                       ; preds = %for.cond143
  br label %for.inc168

for.inc168:                                       ; preds = %for.end167
  %79 = load i32, i32* %k, align 4
  %inc169 = add nsw i32 %79, 1
  store i32 %inc169, i32* %k, align 4
  br label %for.cond, !llvm.loop !12

for.end170:                                       ; preds = %for.cond
  call void @print_table([8 x i32]* getelementptr inbounds ([256 x [8 x i32]], [256 x [8 x i32]]* @T0, i64 0, i64 0), i32 0)
  call void @print_table([8 x i32]* getelementptr inbounds ([256 x [8 x i32]], [256 x [8 x i32]]* @T1, i64 0, i64 0), i32 1)
  call void @print_table([8 x i32]* getelementptr inbounds ([256 x [8 x i32]], [256 x [8 x i32]]* @T2, i64 0, i64 0), i32 2)
  call void @print_table([8 x i32]* getelementptr inbounds ([256 x [8 x i32]], [256 x [8 x i32]]* @T3, i64 0, i64 0), i32 3)
  call void @print_table([8 x i32]* getelementptr inbounds ([256 x [8 x i32]], [256 x [8 x i32]]* @T4, i64 0, i64 0), i32 4)
  call void @print_table([8 x i32]* getelementptr inbounds ([256 x [8 x i32]], [256 x [8 x i32]]* @T5, i64 0, i64 0), i32 5)
  call void @print_table([8 x i32]* getelementptr inbounds ([256 x [8 x i32]], [256 x [8 x i32]]* @T6, i64 0, i64 0), i32 6)
  call void @print_table([8 x i32]* getelementptr inbounds ([256 x [8 x i32]], [256 x [8 x i32]]* @T7, i64 0, i64 0), i32 7)
  call void @print_round_constants()
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end170, %if.then
  %80 = load i32, i32* %retval, align 4
  ret i32 %80
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_table([8 x i32]* %C, i32 %rank) #0 {
entry:
  %C.addr = alloca [8 x i32]*, align 8
  %rank.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  store [8 x i32]* %C, [8 x i32]** %C.addr, align 8
  store i32 %rank, i32* %rank.addr, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i32, i32* %x, align 4
  %cmp = icmp ult i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %1, 8
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %x, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @Sbox, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %rank.addr, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @mds_matrix, i64 0, i64 %idxprom4
  %5 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx5, i64 0, i64 %idxprom6
  %6 = load i32, i32* %arrayidx7, align 4
  %call = call i32 @mul(i32 %3, i32 %6)
  %7 = load [8 x i32]*, [8 x i32]** %C.addr, align 8
  %8 = load i32, i32* %x, align 4
  %idxprom8 = zext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 %idxprom8
  %9 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx9, i64 0, i64 %idxprom10
  store i32 %call, i32* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1, !llvm.loop !13

for.end:                                          ; preds = %for.cond1
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %11 = load i32, i32* %x, align 4
  %inc13 = add i32 %11, 1
  store i32 %inc13, i32* %x, align 4
  br label %for.cond, !llvm.loop !14

for.end14:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare dso_local void @srandom(i32) #1

; Function Attrs: nounwind
declare dso_local i64 @random() #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_comb([8 x i32]* %m) #0 {
entry:
  %m.addr = alloca [8 x i32]*, align 8
  store [8 x i32]* %m, [8 x i32]** %m.addr, align 8
  %0 = load [8 x i32]*, [8 x i32]** %m.addr, align 8
  call void @apply_gamma([8 x i32]* %0)
  %1 = load [8 x i32]*, [8 x i32]** %m.addr, align 8
  call void @apply_pi([8 x i32]* %1)
  %2 = load [8 x i32]*, [8 x i32]** %m.addr, align 8
  call void @apply_theta([8 x i32]* %2)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_table([8 x i32]* %T, i32 %rank) #0 {
entry:
  %T.addr = alloca [8 x i32]*, align 8
  %rank.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store [8 x i32]* %T, [8 x i32]** %T.addr, align 8
  store i32 %rank, i32* %rank.addr, align 4
  %0 = load i32, i32* %rank.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %0)
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %x, align 4
  %cmp = icmp ult i32 %1, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x, align 4
  %cmp1 = icmp ne i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = load [8 x i32]*, [8 x i32]** %T.addr, align 8
  %4 = load i32, i32* %x, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 %idxprom
  %arrayidx3 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx, i64 0, i64 7
  %5 = load i32, i32* %arrayidx3, align 4
  %6 = load [8 x i32]*, [8 x i32]** %T.addr, align 8
  %7 = load i32, i32* %x, align 4
  %idxprom4 = zext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx5, i64 0, i64 6
  %8 = load i32, i32* %arrayidx6, align 4
  %9 = load [8 x i32]*, [8 x i32]** %T.addr, align 8
  %10 = load i32, i32* %x, align 4
  %idxprom7 = zext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx8, i64 0, i64 5
  %11 = load i32, i32* %arrayidx9, align 4
  %12 = load [8 x i32]*, [8 x i32]** %T.addr, align 8
  %13 = load i32, i32* %x, align 4
  %idxprom10 = zext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx11, i64 0, i64 4
  %14 = load i32, i32* %arrayidx12, align 4
  %15 = load [8 x i32]*, [8 x i32]** %T.addr, align 8
  %16 = load i32, i32* %x, align 4
  %idxprom13 = zext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx14, i64 0, i64 3
  %17 = load i32, i32* %arrayidx15, align 4
  %18 = load [8 x i32]*, [8 x i32]** %T.addr, align 8
  %19 = load i32, i32* %x, align 4
  %idxprom16 = zext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* %18, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx17, i64 0, i64 2
  %20 = load i32, i32* %arrayidx18, align 4
  %21 = load [8 x i32]*, [8 x i32]** %T.addr, align 8
  %22 = load i32, i32* %x, align 4
  %idxprom19 = zext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx20, i64 0, i64 1
  %23 = load i32, i32* %arrayidx21, align 4
  %24 = load [8 x i32]*, [8 x i32]** %T.addr, align 8
  %25 = load i32, i32* %x, align 4
  %idxprom22 = zext i32 %25 to i64
  %arrayidx23 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 %idxprom22
  %arrayidx24 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx23, i64 0, i64 0
  %26 = load i32, i32* %arrayidx24, align 4
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %5, i32 %8, i32 %11, i32 %14, i32 %17, i32 %20, i32 %23, i32 %26)
  %27 = load [8 x i32]*, [8 x i32]** %T.addr, align 8
  %28 = load i32, i32* %x, align 4
  %add = add i32 %28, 1
  %idxprom26 = zext i32 %add to i64
  %arrayidx27 = getelementptr inbounds [8 x i32], [8 x i32]* %27, i64 %idxprom26
  %arrayidx28 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx27, i64 0, i64 7
  %29 = load i32, i32* %arrayidx28, align 4
  %30 = load [8 x i32]*, [8 x i32]** %T.addr, align 8
  %31 = load i32, i32* %x, align 4
  %add29 = add i32 %31, 1
  %idxprom30 = zext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds [8 x i32], [8 x i32]* %30, i64 %idxprom30
  %arrayidx32 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx31, i64 0, i64 6
  %32 = load i32, i32* %arrayidx32, align 4
  %33 = load [8 x i32]*, [8 x i32]** %T.addr, align 8
  %34 = load i32, i32* %x, align 4
  %add33 = add i32 %34, 1
  %idxprom34 = zext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds [8 x i32], [8 x i32]* %33, i64 %idxprom34
  %arrayidx36 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx35, i64 0, i64 5
  %35 = load i32, i32* %arrayidx36, align 4
  %36 = load [8 x i32]*, [8 x i32]** %T.addr, align 8
  %37 = load i32, i32* %x, align 4
  %add37 = add i32 %37, 1
  %idxprom38 = zext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds [8 x i32], [8 x i32]* %36, i64 %idxprom38
  %arrayidx40 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx39, i64 0, i64 4
  %38 = load i32, i32* %arrayidx40, align 4
  %39 = load [8 x i32]*, [8 x i32]** %T.addr, align 8
  %40 = load i32, i32* %x, align 4
  %add41 = add i32 %40, 1
  %idxprom42 = zext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds [8 x i32], [8 x i32]* %39, i64 %idxprom42
  %arrayidx44 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx43, i64 0, i64 3
  %41 = load i32, i32* %arrayidx44, align 4
  %42 = load [8 x i32]*, [8 x i32]** %T.addr, align 8
  %43 = load i32, i32* %x, align 4
  %add45 = add i32 %43, 1
  %idxprom46 = zext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds [8 x i32], [8 x i32]* %42, i64 %idxprom46
  %arrayidx48 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx47, i64 0, i64 2
  %44 = load i32, i32* %arrayidx48, align 4
  %45 = load [8 x i32]*, [8 x i32]** %T.addr, align 8
  %46 = load i32, i32* %x, align 4
  %add49 = add i32 %46, 1
  %idxprom50 = zext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds [8 x i32], [8 x i32]* %45, i64 %idxprom50
  %arrayidx52 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx51, i64 0, i64 1
  %47 = load i32, i32* %arrayidx52, align 4
  %48 = load [8 x i32]*, [8 x i32]** %T.addr, align 8
  %49 = load i32, i32* %x, align 4
  %add53 = add i32 %49, 1
  %idxprom54 = zext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds [8 x i32], [8 x i32]* %48, i64 %idxprom54
  %arrayidx56 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx55, i64 0, i64 0
  %50 = load i32, i32* %arrayidx56, align 4
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %29, i32 %32, i32 %35, i32 %38, i32 %41, i32 %44, i32 %47, i32 %50)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %51 = load i32, i32* %x, align 4
  %add58 = add i32 %51, 2
  store i32 %add58, i32* %x, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_round_constants() #0 {
entry:
  %r = alloca i32, align 4
  %j = alloca i32, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %0 = load i32, i32* %r, align 4
  %cmp = icmp sle i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %r, align 4
  %cmp1 = icmp sgt i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  store i32 7, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %if.end
  %2 = load i32, i32* %j, align 4
  %cmp5 = icmp sge i32 %2, 0
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %3 = load i32, i32* %r, align 4
  %sub = sub nsw i32 %3, 1
  %mul = mul nsw i32 8, %sub
  %4 = load i32, i32* %j, align 4
  %add = add nsw i32 %mul, %4
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @Sbox, i64 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %6 = load i32, i32* %j, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond4, !llvm.loop !16

for.end:                                          ; preds = %for.cond4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %7 = load i32, i32* %r, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %r, align 4
  br label %for.cond, !llvm.loop !17

for.end10:                                        ; preds = %for.cond
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mul(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %v = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 0, i32* %v, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %b.addr, align 4
  %2 = load i32, i32* %i, align 4
  %shl = shl i32 1, %2
  %and = and i32 %1, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %a.addr, align 4
  %4 = load i32, i32* %v, align 4
  %xor = xor i32 %4, %3
  store i32 %xor, i32* %v, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %5 = load i32, i32* %a.addr, align 4
  %call = call i32 @mulX(i32 %5)
  store i32 %call, i32* %a.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !18

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %v, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mulX(i32 %v) #0 {
entry:
  %v.addr = alloca i32, align 4
  store i32 %v, i32* %v.addr, align 4
  %0 = load i32, i32* %v.addr, align 4
  %shl = shl i32 %0, 1
  store i32 %shl, i32* %v.addr, align 4
  %1 = load i32, i32* %v.addr, align 4
  %cmp = icmp ugt i32 %1, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %v.addr, align 4
  %xor = xor i32 %2, 285
  store i32 %xor, i32* %v.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %v.addr, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_gamma([8 x i32]* %m) #0 {
entry:
  %m.addr = alloca [8 x i32]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store [8 x i32]* %m, [8 x i32]** %m.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 8
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load [8 x i32]*, [8 x i32]** %m.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 %idxprom
  %4 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx, i64 0, i64 %idxprom4
  %5 = load i32, i32* %arrayidx5, align 4
  %idxprom6 = zext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [256 x i32], [256 x i32]* @Sbox, i64 0, i64 %idxprom6
  %6 = load i32, i32* %arrayidx7, align 4
  %7 = load [8 x i32]*, [8 x i32]** %m.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 %idxprom8
  %9 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx9, i64 0, i64 %idxprom10
  store i32 %6, i32* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !19

for.end:                                          ; preds = %for.cond1
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %11, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond, !llvm.loop !20

for.end14:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_pi([8 x i32]* %m) #0 {
entry:
  %m.addr = alloca [8 x i32]*, align 8
  %t = alloca [8 x [8 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store [8 x i32]* %m, [8 x i32]** %m.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 8
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load [8 x i32]*, [8 x i32]** %m.addr, align 8
  %3 = load i32, i32* %i, align 4
  %add = add nsw i32 8, %3
  %4 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %add, %4
  %and = and i32 %sub, 7
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 %idxprom
  %5 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx, i64 0, i64 %idxprom4
  %6 = load i32, i32* %arrayidx5, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %t, i64 0, i64 %idxprom6
  %8 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx7, i64 0, i64 %idxprom8
  store i32 %6, i32* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !21

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %10 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond, !llvm.loop !22

for.end12:                                        ; preds = %for.cond
  %11 = load [8 x i32]*, [8 x i32]** %m.addr, align 8
  %12 = bitcast [8 x i32]* %11 to i8*
  %arraydecay = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %t, i64 0, i64 0
  %13 = bitcast [8 x i32]* %arraydecay to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 16 %13, i64 256, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_theta([8 x i32]* %m) #0 {
entry:
  %m.addr = alloca [8 x i32]*, align 8
  %t = alloca [8 x [8 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %s = alloca i32, align 4
  store [8 x i32]* %m, [8 x i32]** %m.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc17, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 8
  br i1 %cmp2, label %for.body3, label %for.end19

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %s, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %2, 8
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %3 = load [8 x i32]*, [8 x i32]** %m.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 %idxprom
  %5 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx, i64 0, i64 %idxprom7
  %6 = load i32, i32* %arrayidx8, align 4
  %7 = load i32, i32* %k, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @mds_matrix, i64 0, i64 %idxprom9
  %8 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx10, i64 0, i64 %idxprom11
  %9 = load i32, i32* %arrayidx12, align 4
  %call = call i32 @mul(i32 %6, i32 %9)
  %10 = load i32, i32* %s, align 4
  %xor = xor i32 %10, %call
  store i32 %xor, i32* %s, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %11 = load i32, i32* %k, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond4, !llvm.loop !23

for.end:                                          ; preds = %for.cond4
  %12 = load i32, i32* %s, align 4
  %13 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %t, i64 0, i64 %idxprom13
  %14 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx14, i64 0, i64 %idxprom15
  store i32 %12, i32* %arrayidx16, align 4
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %15 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %15, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond1, !llvm.loop !24

for.end19:                                        ; preds = %for.cond1
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %16 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %16, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond, !llvm.loop !25

for.end22:                                        ; preds = %for.cond
  %17 = load [8 x i32]*, [8 x i32]** %m.addr, align 8
  %18 = bitcast [8 x i32]* %17 to i8*
  %arraydecay = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* %t, i64 0, i64 0
  %19 = bitcast [8 x i32]* %arraydecay to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 16 %19, i64 256, i1 false)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
