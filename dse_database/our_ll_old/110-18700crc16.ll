; ModuleID = './code/110-18700crc16.c'
source_filename = "./code/110-18700crc16.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@crc16_table = constant [256 x i16] [i16 0, i16 -16191, i16 -15999, i16 320, i16 -15615, i16 960, i16 640, i16 -15807, i16 -14847, i16 1728, i16 1920, i16 -14527, i16 1280, i16 -14911, i16 -15231, i16 1088, i16 -13311, i16 3264, i16 3456, i16 -12991, i16 3840, i16 -12351, i16 -12671, i16 3648, i16 2560, i16 -13631, i16 -13439, i16 2880, i16 -14079, i16 2496, i16 2176, i16 -14271, i16 -10239, i16 6336, i16 6528, i16 -9919, i16 6912, i16 -9279, i16 -9599, i16 6720, i16 7680, i16 -8511, i16 -8319, i16 8000, i16 -8959, i16 7616, i16 7296, i16 -9151, i16 5120, i16 -11071, i16 -10879, i16 5440, i16 -10495, i16 6080, i16 5760, i16 -10687, i16 -11775, i16 4800, i16 4992, i16 -11455, i16 4352, i16 -11839, i16 -12159, i16 4160, i16 -4095, i16 12480, i16 12672, i16 -3775, i16 13056, i16 -3135, i16 -3455, i16 12864, i16 13824, i16 -2367, i16 -2175, i16 14144, i16 -2815, i16 13760, i16 13440, i16 -3007, i16 15360, i16 -831, i16 -639, i16 15680, i16 -255, i16 16320, i16 16000, i16 -447, i16 -1535, i16 15040, i16 15232, i16 -1215, i16 14592, i16 -1599, i16 -1919, i16 14400, i16 10240, i16 -5951, i16 -5759, i16 10560, i16 -5375, i16 11200, i16 10880, i16 -5567, i16 -4607, i16 11968, i16 12160, i16 -4287, i16 11520, i16 -4671, i16 -4991, i16 11328, i16 -7167, i16 9408, i16 9600, i16 -6847, i16 9984, i16 -6207, i16 -6527, i16 9792, i16 8704, i16 -7487, i16 -7295, i16 9024, i16 -7935, i16 8640, i16 8320, i16 -8127, i16 -24575, i16 24768, i16 24960, i16 -24255, i16 25344, i16 -23615, i16 -23935, i16 25152, i16 26112, i16 -22847, i16 -22655, i16 26432, i16 -23295, i16 26048, i16 25728, i16 -23487, i16 27648, i16 -21311, i16 -21119, i16 27968, i16 -20735, i16 28608, i16 28288, i16 -20927, i16 -22015, i16 27328, i16 27520, i16 -21695, i16 26880, i16 -22079, i16 -22399, i16 26688, i16 30720, i16 -18239, i16 -18047, i16 31040, i16 -17663, i16 31680, i16 31360, i16 -17855, i16 -16895, i16 32448, i16 32640, i16 -16575, i16 32000, i16 -16959, i16 -17279, i16 31808, i16 -19455, i16 29888, i16 30080, i16 -19135, i16 30464, i16 -18495, i16 -18815, i16 30272, i16 29184, i16 -19775, i16 -19583, i16 29504, i16 -20223, i16 29120, i16 28800, i16 -20415, i16 20480, i16 -28479, i16 -28287, i16 20800, i16 -27903, i16 21440, i16 21120, i16 -28095, i16 -27135, i16 22208, i16 22400, i16 -26815, i16 21760, i16 -27199, i16 -27519, i16 21568, i16 -25599, i16 23744, i16 23936, i16 -25279, i16 24320, i16 -24639, i16 -24959, i16 24128, i16 23040, i16 -25919, i16 -25727, i16 23360, i16 -26367, i16 22976, i16 22656, i16 -26559, i16 -30719, i16 18624, i16 18816, i16 -30399, i16 19200, i16 -29759, i16 -30079, i16 19008, i16 19968, i16 -28991, i16 -28799, i16 20288, i16 -29439, i16 19904, i16 19584, i16 -29631, i16 17408, i16 -31551, i16 -31359, i16 17728, i16 -30975, i16 18368, i16 18048, i16 -31167, i16 -32255, i16 17088, i16 17280, i16 -31935, i16 16640, i16 -32319, i16 -32639, i16 16448], align 2
@crc16tbl_ = internal constant [256 x i16] [i16 0, i16 -16191, i16 -15999, i16 320, i16 -15615, i16 960, i16 640, i16 -15807, i16 -14847, i16 1728, i16 1920, i16 -14527, i16 1280, i16 -14911, i16 -15231, i16 1088, i16 -13311, i16 3264, i16 3456, i16 -12991, i16 3840, i16 -12351, i16 -12671, i16 3648, i16 2560, i16 -13631, i16 -13439, i16 2880, i16 -14079, i16 2496, i16 2176, i16 -14271, i16 -10239, i16 6336, i16 6528, i16 -9919, i16 6912, i16 -9279, i16 -9599, i16 6720, i16 7680, i16 -8511, i16 -8319, i16 8000, i16 -8959, i16 7616, i16 7296, i16 -9151, i16 5120, i16 -11071, i16 -10879, i16 5440, i16 -10495, i16 6080, i16 5760, i16 -10687, i16 -11775, i16 4800, i16 4992, i16 -11455, i16 4352, i16 -11839, i16 -12159, i16 4160, i16 -4095, i16 12480, i16 12672, i16 -3775, i16 13056, i16 -3135, i16 -3455, i16 12864, i16 13824, i16 -2367, i16 -2175, i16 14144, i16 -2815, i16 13760, i16 13440, i16 -3007, i16 15360, i16 -831, i16 -639, i16 15680, i16 -255, i16 16320, i16 16000, i16 -447, i16 -1535, i16 15040, i16 15232, i16 -1215, i16 14592, i16 -1599, i16 -1919, i16 14400, i16 10240, i16 -5951, i16 -5759, i16 10560, i16 -5375, i16 11200, i16 10880, i16 -5567, i16 -4607, i16 11968, i16 12160, i16 -4287, i16 11520, i16 -4671, i16 -4991, i16 11328, i16 -7167, i16 9408, i16 9600, i16 -6847, i16 9984, i16 -6207, i16 -6527, i16 9792, i16 8704, i16 -7487, i16 -7295, i16 9024, i16 -7935, i16 8640, i16 8320, i16 -8127, i16 -24575, i16 24768, i16 24960, i16 -24255, i16 25344, i16 -23615, i16 -23935, i16 25152, i16 26112, i16 -22847, i16 -22655, i16 26432, i16 -23295, i16 26048, i16 25728, i16 -23487, i16 27648, i16 -21311, i16 -21119, i16 27968, i16 -20735, i16 28608, i16 28288, i16 -20927, i16 -22015, i16 27328, i16 27520, i16 -21695, i16 26880, i16 -22079, i16 -22399, i16 26688, i16 30720, i16 -18239, i16 -18047, i16 31040, i16 -17663, i16 31680, i16 31360, i16 -17855, i16 -16895, i16 32448, i16 32640, i16 -16575, i16 32000, i16 -16959, i16 -17279, i16 31808, i16 -19455, i16 29888, i16 30080, i16 -19135, i16 30464, i16 -18495, i16 -18815, i16 30272, i16 29184, i16 -19775, i16 -19583, i16 29504, i16 -20223, i16 29120, i16 28800, i16 -20415, i16 20480, i16 -28479, i16 -28287, i16 20800, i16 -27903, i16 21440, i16 21120, i16 -28095, i16 -27135, i16 22208, i16 22400, i16 -26815, i16 21760, i16 -27199, i16 -27519, i16 21568, i16 -25599, i16 23744, i16 23936, i16 -25279, i16 24320, i16 -24639, i16 -24959, i16 24128, i16 23040, i16 -25919, i16 -25727, i16 23360, i16 -26367, i16 22976, i16 22656, i16 -26559, i16 -30719, i16 18624, i16 18816, i16 -30399, i16 19200, i16 -29759, i16 -30079, i16 19008, i16 19968, i16 -28991, i16 -28799, i16 20288, i16 -29439, i16 19904, i16 19584, i16 -29631, i16 17408, i16 -31551, i16 -31359, i16 17728, i16 -30975, i16 18368, i16 18048, i16 -31167, i16 -32255, i16 17088, i16 17280, i16 -31935, i16 16640, i16 -32319, i16 -32639, i16 16448], align 2
@ccitt_table = internal global [256 x i16] [i16 0, i16 4129, i16 8258, i16 12387, i16 16516, i16 20645, i16 24774, i16 28903, i16 -32504, i16 -28375, i16 -24246, i16 -20117, i16 -15988, i16 -11859, i16 -7730, i16 -3601, i16 4657, i16 528, i16 12915, i16 8786, i16 21173, i16 17044, i16 29431, i16 25302, i16 -27847, i16 -31976, i16 -19589, i16 -23718, i16 -11331, i16 -15460, i16 -3073, i16 -7202, i16 9314, i16 13379, i16 1056, i16 5121, i16 25830, i16 29895, i16 17572, i16 21637, i16 -23190, i16 -19125, i16 -31448, i16 -27383, i16 -6674, i16 -2609, i16 -14932, i16 -10867, i16 13907, i16 9842, i16 5649, i16 1584, i16 30423, i16 26358, i16 22165, i16 18100, i16 -18597, i16 -22662, i16 -26855, i16 -30920, i16 -2081, i16 -6146, i16 -10339, i16 -14404, i16 18628, i16 22757, i16 26758, i16 30887, i16 2112, i16 6241, i16 10242, i16 14371, i16 -13876, i16 -9747, i16 -5746, i16 -1617, i16 -30392, i16 -26263, i16 -22262, i16 -18133, i16 23285, i16 19156, i16 31415, i16 27286, i16 6769, i16 2640, i16 14899, i16 10770, i16 -9219, i16 -13348, i16 -1089, i16 -5218, i16 -25735, i16 -29864, i16 -17605, i16 -21734, i16 27814, i16 31879, i16 19684, i16 23749, i16 11298, i16 15363, i16 3168, i16 7233, i16 -4690, i16 -625, i16 -12820, i16 -8755, i16 -21206, i16 -17141, i16 -29336, i16 -25271, i16 32407, i16 28342, i16 24277, i16 20212, i16 15891, i16 11826, i16 7761, i16 3696, i16 -97, i16 -4162, i16 -8227, i16 -12292, i16 -16613, i16 -20678, i16 -24743, i16 -28808, i16 -28280, i16 -32343, i16 -20022, i16 -24085, i16 -12020, i16 -16083, i16 -3762, i16 -7825, i16 4224, i16 161, i16 12482, i16 8419, i16 20484, i16 16421, i16 28742, i16 24679, i16 -31815, i16 -27752, i16 -23557, i16 -19494, i16 -15555, i16 -11492, i16 -7297, i16 -3234, i16 689, i16 4752, i16 8947, i16 13010, i16 16949, i16 21012, i16 25207, i16 29270, i16 -18966, i16 -23093, i16 -27224, i16 -31351, i16 -2706, i16 -6833, i16 -10964, i16 -15091, i16 13538, i16 9411, i16 5280, i16 1153, i16 29798, i16 25671, i16 21540, i16 17413, i16 -22565, i16 -18438, i16 -30823, i16 -26696, i16 -6305, i16 -2178, i16 -14563, i16 -10436, i16 9939, i16 14066, i16 1681, i16 5808, i16 26199, i16 30326, i16 17941, i16 22068, i16 -9908, i16 -13971, i16 -1778, i16 -5841, i16 -26168, i16 -30231, i16 -18038, i16 -22101, i16 22596, i16 18533, i16 30726, i16 26663, i16 6336, i16 2273, i16 14466, i16 10403, i16 -13443, i16 -9380, i16 -5313, i16 -1250, i16 -29703, i16 -25640, i16 -21573, i16 -17510, i16 19061, i16 23124, i16 27191, i16 31254, i16 2801, i16 6864, i16 10931, i16 14994, i16 -722, i16 -4849, i16 -8852, i16 -12979, i16 -16982, i16 -21109, i16 -25112, i16 -29239, i16 31782, i16 27655, i16 23652, i16 19525, i16 15522, i16 11395, i16 7392, i16 3265, i16 -4321, i16 -194, i16 -12451, i16 -8324, i16 -20581, i16 -16454, i16 -28711, i16 -24584, i16 28183, i16 32310, i16 20053, i16 24180, i16 11923, i16 16050, i16 3793, i16 7920], align 2
@__const.main.buf = private unnamed_addr constant [20 x i8] c"E\00\00\83\00\00@\00@\11\00\00\0AD\0C\03\FF\FF\FF\FF", align 1
@.str = private unnamed_addr constant [15 x i8] c"crc16_1: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"crc16_2: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"crc16_3: 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"crc16_4: 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"crc16_5: 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"crc16_6: 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"crc16_7: 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"crc16_8: 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"crc16_9: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define zeroext i16 @crc16_fast(ptr noundef %buf, i32 noundef %len) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %Y = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 65535, ptr %Y, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %len.addr, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %Y, align 4
  %shr = lshr i32 %2, 8
  %3 = load i32, ptr %Y, align 4
  %and = and i32 %3, 255
  %4 = load ptr, ptr %buf.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %xor = xor i32 %and, %conv
  %idxprom1 = zext i32 %xor to i64
  %arrayidx2 = getelementptr inbounds [256 x i16], ptr @crc16tbl_, i64 0, i64 %idxprom1
  %7 = load i16, ptr %arrayidx2, align 2
  %conv3 = zext i16 %7 to i32
  %xor4 = xor i32 %shr, %conv3
  store i32 %xor4, ptr %Y, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %Y, align 4
  %and5 = and i32 %9, 255
  %shl = shl i32 %and5, 8
  %10 = load i32, ptr %Y, align 4
  %shr6 = lshr i32 %10, 8
  %or = or i32 %shl, %shr6
  %conv7 = trunc i32 %or to i16
  ret i16 %conv7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define zeroext i16 @crc16_(ptr noundef %buf, i32 noundef %len) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %Y = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 65535, ptr %Y, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %len.addr, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %buf.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = load i32, ptr %Y, align 4
  %xor = xor i32 %5, %conv
  store i32 %xor, ptr %Y, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %j, align 4
  %cmp2 = icmp ne i32 %6, 8
  br i1 %cmp2, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond1
  %7 = load i32, ptr %Y, align 4
  %and = and i32 %7, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body4
  %8 = load i32, ptr %Y, align 4
  %shr = lshr i32 %8, 1
  %xor5 = xor i32 %shr, 40961
  store i32 %xor5, ptr %Y, align 4
  br label %if.end

if.else:                                          ; preds = %for.body4
  %9 = load i32, ptr %Y, align 4
  %shr6 = lshr i32 %9, 1
  store i32 %shr6, ptr %Y, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !7

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %11 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %11, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end9:                                         ; preds = %for.cond
  %12 = load i32, ptr %Y, align 4
  %and10 = and i32 %12, 255
  %shl = shl i32 %and10, 8
  %13 = load i32, ptr %Y, align 4
  %shr11 = lshr i32 %13, 8
  %or = or i32 %shl, %shr11
  %conv12 = trunc i32 %or to i16
  ret i16 %conv12
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define zeroext i16 @crc16_4(ptr noundef %buf, i16 noundef zeroext %length) #0 {
entry:
  %buf.addr = alloca ptr, align 8
  %length.addr = alloca i16, align 2
  %shift = alloca i16, align 2
  %data = alloca i16, align 2
  %val = alloca i16, align 2
  %i = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  store i16 %length, ptr %length.addr, align 2
  store i16 -1, ptr %shift, align 2
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i16, ptr %length.addr, align 2
  %conv = zext i16 %1 to i32
  %cmp = icmp slt i32 %0, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %rem = srem i32 %2, 8
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load ptr, ptr %buf.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %buf.addr, align 8
  %4 = load i8, ptr %3, align 1
  %conv4 = zext i8 %4 to i32
  %shl = shl i32 %conv4, 8
  %conv5 = trunc i32 %shl to i16
  store i16 %conv5, ptr %data, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %5 = load i16, ptr %shift, align 2
  %conv6 = zext i16 %5 to i32
  %6 = load i16, ptr %data, align 2
  %conv7 = zext i16 %6 to i32
  %xor = xor i32 %conv6, %conv7
  %conv8 = trunc i32 %xor to i16
  store i16 %conv8, ptr %val, align 2
  %7 = load i16, ptr %shift, align 2
  %conv9 = zext i16 %7 to i32
  %shl10 = shl i32 %conv9, 1
  %conv11 = trunc i32 %shl10 to i16
  store i16 %conv11, ptr %shift, align 2
  %8 = load i16, ptr %data, align 2
  %conv12 = zext i16 %8 to i32
  %shl13 = shl i32 %conv12, 1
  %conv14 = trunc i32 %shl13 to i16
  store i16 %conv14, ptr %data, align 2
  %9 = load i16, ptr %val, align 2
  %conv15 = zext i16 %9 to i32
  %and = and i32 %conv15, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end
  %10 = load i16, ptr %shift, align 2
  %conv17 = zext i16 %10 to i32
  %xor18 = xor i32 %conv17, 4129
  %conv19 = trunc i32 %xor18 to i16
  store i16 %conv19, ptr %shift, align 2
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %12 = load i16, ptr %shift, align 2
  ret i16 %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define zeroext i16 @crc_ccitt(ptr noundef %q, i32 noundef %len) #0 {
entry:
  %q.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %crc = alloca i16, align 2
  store ptr %q, ptr %q.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i16 0, ptr %crc, align 2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %len.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %len.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i16, ptr %crc, align 2
  %conv = zext i16 %1 to i32
  %shr = ashr i32 %conv, 8
  %2 = load ptr, ptr %q.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %q.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv1 = zext i8 %3 to i32
  %xor = xor i32 %shr, %conv1
  %and = and i32 %xor, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i16], ptr @ccitt_table, i64 0, i64 %idxprom
  %4 = load i16, ptr %arrayidx, align 2
  %conv2 = zext i16 %4 to i32
  %5 = load i16, ptr %crc, align 2
  %conv3 = zext i16 %5 to i32
  %shl = shl i32 %conv3, 8
  %xor4 = xor i32 %conv2, %shl
  %conv5 = trunc i32 %xor4 to i16
  store i16 %conv5, ptr %crc, align 2
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %6 = load i16, ptr %crc, align 2
  %conv6 = zext i16 %6 to i32
  %not = xor i32 %conv6, -1
  %conv7 = trunc i32 %not to i16
  ret i16 %conv7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define zeroext i16 @crc_dsp(i16 noundef zeroext %reg, i8 noundef zeroext %data_crc) #0 {
entry:
  %reg.addr = alloca i16, align 2
  %data_crc.addr = alloca i8, align 1
  %msb = alloca i16, align 2
  %data = alloca i16, align 2
  %gx = alloca i16, align 2
  %i = alloca i16, align 2
  store i16 %reg, ptr %reg.addr, align 2
  store i8 %data_crc, ptr %data_crc.addr, align 1
  store i16 -32763, ptr %gx, align 2
  store i16 0, ptr %i, align 2
  %0 = load i8, ptr %data_crc.addr, align 1
  %conv = zext i8 %0 to i16
  store i16 %conv, ptr %data, align 2
  %1 = load i16, ptr %data, align 2
  %conv1 = zext i16 %1 to i32
  %shl = shl i32 %conv1, 8
  %conv2 = trunc i32 %shl to i16
  store i16 %conv2, ptr %data, align 2
  %2 = load i16, ptr %reg.addr, align 2
  %conv3 = zext i16 %2 to i32
  %3 = load i16, ptr %data, align 2
  %conv4 = zext i16 %3 to i32
  %xor = xor i32 %conv3, %conv4
  %conv5 = trunc i32 %xor to i16
  store i16 %conv5, ptr %reg.addr, align 2
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %4 = load i16, ptr %reg.addr, align 2
  %conv6 = zext i16 %4 to i32
  %and = and i32 %conv6, 32768
  %conv7 = trunc i32 %and to i16
  store i16 %conv7, ptr %msb, align 2
  %5 = load i16, ptr %reg.addr, align 2
  %conv8 = zext i16 %5 to i32
  %shl9 = shl i32 %conv8, 1
  %conv10 = trunc i32 %shl9 to i16
  store i16 %conv10, ptr %reg.addr, align 2
  %6 = load i16, ptr %msb, align 2
  %conv11 = zext i16 %6 to i32
  %cmp = icmp eq i32 %conv11, 32768
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %7 = load i16, ptr %reg.addr, align 2
  %conv13 = zext i16 %7 to i32
  %8 = load i16, ptr %gx, align 2
  %conv14 = zext i16 %8 to i32
  %xor15 = xor i32 %conv13, %conv14
  %conv16 = trunc i32 %xor15 to i16
  store i16 %conv16, ptr %reg.addr, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %9 = load i16, ptr %i, align 2
  %inc = add i16 %9, 1
  store i16 %inc, ptr %i, align 2
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %10 = load i16, ptr %i, align 2
  %conv17 = zext i16 %10 to i32
  %cmp18 = icmp slt i32 %conv17, 8
  br i1 %cmp18, label %do.body, label %do.end, !llvm.loop !11

do.end:                                           ; preds = %do.cond
  %11 = load i16, ptr %reg.addr, align 2
  ret i16 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define zeroext i16 @crc_16(ptr noundef %data, i32 noundef %len) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %crc = alloca i16, align 2
  %p = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i16 -1, ptr %crc, align 2
  %0 = load ptr, ptr %data.addr, align 8
  store ptr %0, ptr %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, ptr %len.addr, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %len.addr, align 4
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i16, ptr %crc, align 2
  %3 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  %4 = load i8, ptr %3, align 1
  %call = call zeroext i16 @crc_dsp(i16 noundef zeroext %2, i8 noundef zeroext %4)
  store i16 %call, ptr %crc, align 2
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %5 = load i16, ptr %crc, align 2
  ret i16 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define zeroext i16 @UpdateCRC16(i16 noundef zeroext %crcIn, i8 noundef zeroext %byte) #0 {
entry:
  %crcIn.addr = alloca i16, align 2
  %byte.addr = alloca i8, align 1
  %crc = alloca i32, align 4
  %in = alloca i32, align 4
  store i16 %crcIn, ptr %crcIn.addr, align 2
  store i8 %byte, ptr %byte.addr, align 1
  %0 = load i16, ptr %crcIn.addr, align 2
  %conv = zext i16 %0 to i32
  store i32 %conv, ptr %crc, align 4
  %1 = load i8, ptr %byte.addr, align 1
  %conv1 = zext i8 %1 to i32
  %or = or i32 %conv1, 256
  store i32 %or, ptr %in, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load i32, ptr %crc, align 4
  %shl = shl i32 %2, 1
  store i32 %shl, ptr %crc, align 4
  %3 = load i32, ptr %in, align 4
  %shl2 = shl i32 %3, 1
  store i32 %shl2, ptr %in, align 4
  %4 = load i32, ptr %in, align 4
  %and = and i32 %4, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %5 = load i32, ptr %crc, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %crc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %6 = load i32, ptr %crc, align 4
  %and3 = and i32 %6, 65536
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %7 = load i32, ptr %crc, align 4
  %xor = xor i32 %7, 4129
  store i32 %xor, ptr %crc, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end6
  %8 = load i32, ptr %in, align 4
  %and7 = and i32 %8, 65536
  %tobool8 = icmp ne i32 %and7, 0
  %lnot = xor i1 %tobool8, true
  br i1 %lnot, label %do.body, label %do.end, !llvm.loop !13

do.end:                                           ; preds = %do.cond
  %9 = load i32, ptr %crc, align 4
  %and9 = and i32 %9, 65535
  %conv10 = trunc i32 %and9 to i16
  ret i16 %conv10
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define zeroext i16 @Cal_CRC16(ptr noundef %data, i32 noundef %size) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %crc = alloca i32, align 4
  %dataEnd = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  store i32 0, ptr %crc, align 4
  %0 = load ptr, ptr %data.addr, align 8
  %1 = load i32, ptr %size.addr, align 4
  %idx.ext = zext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %idx.ext
  store ptr %add.ptr, ptr %dataEnd, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %data.addr, align 8
  %3 = load ptr, ptr %dataEnd, align 8
  %cmp = icmp ult ptr %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %crc, align 4
  %conv = trunc i32 %4 to i16
  %5 = load ptr, ptr %data.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %data.addr, align 8
  %6 = load i8, ptr %5, align 1
  %call = call zeroext i16 @UpdateCRC16(i16 noundef zeroext %conv, i8 noundef zeroext %6)
  %conv1 = zext i16 %call to i32
  store i32 %conv1, ptr %crc, align 4
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  %7 = load i32, ptr %crc, align 4
  %conv2 = trunc i32 %7 to i16
  %call3 = call zeroext i16 @UpdateCRC16(i16 noundef zeroext %conv2, i8 noundef zeroext 0)
  %conv4 = zext i16 %call3 to i32
  store i32 %conv4, ptr %crc, align 4
  %8 = load i32, ptr %crc, align 4
  %conv5 = trunc i32 %8 to i16
  %call6 = call zeroext i16 @UpdateCRC16(i16 noundef zeroext %conv5, i8 noundef zeroext 0)
  %conv7 = zext i16 %call6 to i32
  store i32 %conv7, ptr %crc, align 4
  %9 = load i32, ptr %crc, align 4
  %and = and i32 %9, 65535
  %conv8 = trunc i32 %and to i16
  ret i16 %conv8
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define zeroext i16 @csum(ptr noundef %addr, i32 noundef %count) #0 {
entry:
  %addr.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %sum = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  store i32 %count, ptr %count.addr, align 4
  store i64 0, ptr %sum, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %count.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %addr.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %addr.addr, align 8
  %2 = load i16, ptr %1, align 2
  %conv = zext i16 %2 to i64
  %3 = load i64, ptr %sum, align 8
  %add = add i64 %3, %conv
  store i64 %add, ptr %sum, align 8
  %4 = load i32, ptr %count.addr, align 4
  %sub = sub nsw i32 %4, 2
  store i32 %sub, ptr %count.addr, align 4
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %5 = load i32, ptr %count.addr, align 4
  %cmp1 = icmp sgt i32 %5, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %6 = load ptr, ptr %addr.addr, align 8
  %7 = load i8, ptr %6, align 1
  %conv3 = zext i8 %7 to i64
  %8 = load i64, ptr %sum, align 8
  %add4 = add i64 %8, %conv3
  store i64 %add4, ptr %sum, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  br label %while.cond5

while.cond5:                                      ; preds = %while.body6, %if.end
  %9 = load i64, ptr %sum, align 8
  %shr = lshr i64 %9, 16
  %tobool = icmp ne i64 %shr, 0
  br i1 %tobool, label %while.body6, label %while.end9

while.body6:                                      ; preds = %while.cond5
  %10 = load i64, ptr %sum, align 8
  %and = and i64 %10, 65535
  %11 = load i64, ptr %sum, align 8
  %shr7 = lshr i64 %11, 16
  %add8 = add i64 %and, %shr7
  store i64 %add8, ptr %sum, align 8
  br label %while.cond5, !llvm.loop !16

while.end9:                                       ; preds = %while.cond5
  %12 = load i64, ptr %sum, align 8
  %not = xor i64 %12, -1
  %conv10 = trunc i64 %not to i16
  ret i16 %conv10
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %buf = alloca [20 x i8], align 1
  %len = alloca i32, align 4
  %cksum1 = alloca i16, align 2
  %cksum2 = alloca i16, align 2
  %cksum3 = alloca i16, align 2
  %cksum4 = alloca i16, align 2
  %cksum5 = alloca i16, align 2
  %cksum6 = alloca i16, align 2
  %cksum7 = alloca i16, align 2
  %cksum8 = alloca i16, align 2
  %cksum9 = alloca i16, align 2
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %buf, ptr align 1 @__const.main.buf, i64 20, i1 false)
  store i32 20, ptr %len, align 4
  %arraydecay = getelementptr inbounds [20 x i8], ptr %buf, i64 0, i64 0
  %0 = load i32, ptr %len, align 4
  %call = call zeroext i16 @crc16_(ptr noundef %arraydecay, i32 noundef %0)
  store i16 %call, ptr %cksum1, align 2
  %arraydecay1 = getelementptr inbounds [20 x i8], ptr %buf, i64 0, i64 0
  %1 = load i32, ptr %len, align 4
  %call2 = call zeroext i16 @crc16_fast(ptr noundef %arraydecay1, i32 noundef %1)
  store i16 %call2, ptr %cksum2, align 2
  %arraydecay3 = getelementptr inbounds [20 x i8], ptr %buf, i64 0, i64 0
  %2 = load i32, ptr %len, align 4
  %conv = zext i32 %2 to i64
  %call4 = call zeroext i16 @crc16(i16 noundef zeroext -1, ptr noundef %arraydecay3, i64 noundef %conv)
  store i16 %call4, ptr %cksum3, align 2
  %arraydecay5 = getelementptr inbounds [20 x i8], ptr %buf, i64 0, i64 0
  %3 = load i32, ptr %len, align 4
  %conv6 = trunc i32 %3 to i16
  %call7 = call zeroext i16 @crc16_4(ptr noundef %arraydecay5, i16 noundef zeroext %conv6)
  store i16 %call7, ptr %cksum4, align 2
  %arraydecay8 = getelementptr inbounds [20 x i8], ptr %buf, i64 0, i64 0
  %4 = load i32, ptr %len, align 4
  %call9 = call zeroext i16 @crc_ccitt(ptr noundef %arraydecay8, i32 noundef %4)
  store i16 %call9, ptr %cksum5, align 2
  %arraydecay10 = getelementptr inbounds [20 x i8], ptr %buf, i64 0, i64 0
  %5 = load i32, ptr %len, align 4
  %call11 = call zeroext i16 @crc_16(ptr noundef %arraydecay10, i32 noundef %5)
  store i16 %call11, ptr %cksum6, align 2
  %arraydecay12 = getelementptr inbounds [20 x i8], ptr %buf, i64 0, i64 0
  %6 = load i32, ptr %len, align 4
  %call13 = call zeroext i16 @Cal_CRC16(ptr noundef %arraydecay12, i32 noundef %6)
  store i16 %call13, ptr %cksum7, align 2
  %arraydecay14 = getelementptr inbounds [20 x i8], ptr %buf, i64 0, i64 0
  %7 = load i32, ptr %len, align 4
  %call15 = call i32 @crc16_area(ptr noundef %arraydecay14, i32 noundef %7, i32 noundef -1)
  %conv16 = trunc i32 %call15 to i16
  store i16 %conv16, ptr %cksum8, align 2
  %arraydecay17 = getelementptr inbounds [20 x i8], ptr %buf, i64 0, i64 0
  %8 = load i32, ptr %len, align 4
  %call18 = call zeroext i16 @csum(ptr noundef %arraydecay17, i32 noundef %8)
  store i16 %call18, ptr %cksum9, align 2
  %9 = load i16, ptr %cksum1, align 2
  %conv19 = zext i16 %9 to i32
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv19)
  %10 = load i16, ptr %cksum2, align 2
  %conv21 = zext i16 %10 to i32
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv21)
  %11 = load i16, ptr %cksum3, align 2
  %conv23 = zext i16 %11 to i32
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %conv23)
  %12 = load i16, ptr %cksum4, align 2
  %conv25 = zext i16 %12 to i32
  %call26 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %conv25)
  %13 = load i16, ptr %cksum5, align 2
  %conv27 = zext i16 %13 to i32
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %conv27)
  %14 = load i16, ptr %cksum6, align 2
  %conv29 = zext i16 %14 to i32
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %conv29)
  %15 = load i16, ptr %cksum7, align 2
  %conv31 = zext i16 %15 to i32
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %conv31)
  %16 = load i16, ptr %cksum8, align 2
  %conv33 = zext i16 %16 to i32
  %call34 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef %conv33)
  %17 = load i16, ptr %cksum9, align 2
  %conv35 = zext i16 %17 to i32
  %call36 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %conv35)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal zeroext i16 @crc16(i16 noundef zeroext %crc, ptr noundef %buffer, i64 noundef %len) #0 {
entry:
  %crc.addr = alloca i16, align 2
  %buffer.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store i16 %crc, ptr %crc.addr, align 2
  store ptr %buffer, ptr %buffer.addr, align 8
  store i64 %len, ptr %len.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %len.addr, align 8
  %dec = add i64 %0, -1
  store i64 %dec, ptr %len.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i16, ptr %crc.addr, align 2
  %2 = load ptr, ptr %buffer.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %buffer.addr, align 8
  %3 = load i8, ptr %2, align 1
  %call = call zeroext i16 @crc16_byte(i16 noundef zeroext %1, i8 noundef zeroext %3)
  store i16 %call, ptr %crc.addr, align 2
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  %4 = load i16, ptr %crc.addr, align 2
  ret i16 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @crc16_area(ptr noundef %dbs, i32 noundef %size, i32 noundef %crc) #0 {
entry:
  %dbs.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %crc.addr = alloca i32, align 4
  store ptr %dbs, ptr %dbs.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  store i32 %crc, ptr %crc.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %size.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %size.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %dbs.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %dbs.addr, align 8
  %2 = load i8, ptr %1, align 1
  call void @crc16_b(ptr noundef %crc.addr, i8 noundef zeroext %2)
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %while.cond
  %3 = load i32, ptr %crc.addr, align 4
  ret i32 %3
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal zeroext i16 @crc16_byte(i16 noundef zeroext %crc, i8 noundef zeroext %data) #0 {
entry:
  %crc.addr = alloca i16, align 2
  %data.addr = alloca i8, align 1
  store i16 %crc, ptr %crc.addr, align 2
  store i8 %data, ptr %data.addr, align 1
  %0 = load i16, ptr %crc.addr, align 2
  %conv = zext i16 %0 to i32
  %shr = ashr i32 %conv, 8
  %1 = load i16, ptr %crc.addr, align 2
  %conv1 = zext i16 %1 to i32
  %2 = load i8, ptr %data.addr, align 1
  %conv2 = zext i8 %2 to i32
  %xor = xor i32 %conv1, %conv2
  %and = and i32 %xor, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i16], ptr @crc16_table, i64 0, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2
  %conv3 = zext i16 %3 to i32
  %xor4 = xor i32 %shr, %conv3
  %conv5 = trunc i32 %xor4 to i16
  ret i16 %conv5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @crc16_b(ptr noundef %crc, i8 noundef zeroext %db) #0 {
entry:
  %crc.addr = alloca ptr, align 8
  %db.addr = alloca i8, align 1
  %i = alloca i32, align 4
  store ptr %crc, ptr %crc.addr, align 8
  store i8 %db, ptr %db.addr, align 1
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %crc.addr, align 8
  %2 = load i32, ptr %1, align 4
  %shl = shl i32 %2, 1
  store i32 %shl, ptr %1, align 4
  %3 = load i8, ptr %db.addr, align 1
  %conv = zext i8 %3 to i32
  %4 = load ptr, ptr %crc.addr, align 8
  %5 = load i32, ptr %4, align 4
  %shr = lshr i32 %5, 16
  %xor = xor i32 %conv, %shr
  %and = and i32 %xor, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %crc.addr, align 8
  %7 = load i32, ptr %6, align 4
  %xor1 = xor i32 %7, 32773
  store i32 %xor1, ptr %6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %8 = load i8, ptr %db.addr, align 1
  %conv2 = zext i8 %8 to i32
  %shr3 = ashr i32 %conv2, 1
  %conv4 = trunc i32 %shr3 to i8
  store i8 %conv4, ptr %db.addr, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %crc.addr, align 8
  %11 = load i32, ptr %10, align 4
  %and5 = and i32 %11, 65535
  store i32 %and5, ptr %10, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
