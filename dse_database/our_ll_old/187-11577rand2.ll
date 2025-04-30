; ModuleID = './code/187-11577rand2.c'
source_filename = "./code/187-11577rand2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@print_hash_value = global i32 1, align 4
@g_8 = internal global i8 117, align 1
@.str = private unnamed_addr constant [4 x i8] c"g_8\00", align 1
@g_22 = internal global i8 -1, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"g_22\00", align 1
@g_64 = internal global i32 1, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"g_64\00", align 1
@g_75 = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"g_75\00", align 1
@g_91 = internal global i32 -621723469, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"g_91\00", align 1
@g_105 = internal global i32 741304952, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"g_105\00", align 1
@g_179 = internal global i32 601890575, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"g_179\00", align 1
@g_354 = internal global i32 -1876220226, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"g_354\00", align 1
@g_385 = internal global i32 -681280140, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"g_385\00", align 1
@g_432 = internal global i8 8, align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"g_432\00", align 1
@g_606 = internal global i32 -1579322345, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"g_606\00", align 1
@g_624 = internal global i32 1, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"g_624\00", align 1
@g_652 = internal global i16 0, align 2
@.str.12 = private unnamed_addr constant [6 x i8] c"g_652\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"before stmt(%d): checksum = %X\0A\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 4
@.str.14 = private unnamed_addr constant [35 x i8] c"...checksum after hashing %s : %X\0A\00", align 1
@g_103 = internal global ptr @g_104, align 8
@g_67 = internal global ptr @g_68, align 8
@g_102 = internal global ptr @g_103, align 8
@g_143 = internal global ptr @g_75, align 8
@g_68 = internal global ptr @g_64, align 8
@g_104 = internal global ptr @g_105, align 8
@g_397 = internal global ptr @g_103, align 8
@.str.15 = private unnamed_addr constant [15 x i8] c"checksum = %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @csmith_compute_hash() #0 {
entry:
  %0 = load i8, ptr @g_8, align 1
  %conv = sext i8 %0 to i32
  %1 = load i32, ptr @print_hash_value, align 4
  call void @transparent_crc(i32 noundef %conv, ptr noundef @.str, i32 noundef %1)
  %2 = load i8, ptr @g_22, align 1
  %conv1 = sext i8 %2 to i32
  %3 = load i32, ptr @print_hash_value, align 4
  call void @transparent_crc(i32 noundef %conv1, ptr noundef @.str.1, i32 noundef %3)
  %4 = load i32, ptr @g_64, align 4
  %5 = load i32, ptr @print_hash_value, align 4
  call void @transparent_crc(i32 noundef %4, ptr noundef @.str.2, i32 noundef %5)
  %6 = load i32, ptr @g_75, align 4
  %7 = load i32, ptr @print_hash_value, align 4
  call void @transparent_crc(i32 noundef %6, ptr noundef @.str.3, i32 noundef %7)
  %8 = load i32, ptr @g_91, align 4
  %9 = load i32, ptr @print_hash_value, align 4
  call void @transparent_crc(i32 noundef %8, ptr noundef @.str.4, i32 noundef %9)
  %10 = load i32, ptr @g_105, align 4
  %11 = load i32, ptr @print_hash_value, align 4
  call void @transparent_crc(i32 noundef %10, ptr noundef @.str.5, i32 noundef %11)
  %12 = load i32, ptr @g_179, align 4
  %13 = load i32, ptr @print_hash_value, align 4
  call void @transparent_crc(i32 noundef %12, ptr noundef @.str.6, i32 noundef %13)
  %14 = load i32, ptr @g_354, align 4
  %15 = load i32, ptr @print_hash_value, align 4
  call void @transparent_crc(i32 noundef %14, ptr noundef @.str.7, i32 noundef %15)
  %16 = load i32, ptr @g_385, align 4
  %17 = load i32, ptr @print_hash_value, align 4
  call void @transparent_crc(i32 noundef %16, ptr noundef @.str.8, i32 noundef %17)
  %18 = load i8, ptr @g_432, align 1
  %conv2 = zext i8 %18 to i32
  %19 = load i32, ptr @print_hash_value, align 4
  call void @transparent_crc(i32 noundef %conv2, ptr noundef @.str.9, i32 noundef %19)
  %20 = load i32, ptr @g_606, align 4
  %21 = load i32, ptr @print_hash_value, align 4
  call void @transparent_crc(i32 noundef %20, ptr noundef @.str.10, i32 noundef %21)
  %22 = load i32, ptr @g_624, align 4
  %23 = load i32, ptr @print_hash_value, align 4
  call void @transparent_crc(i32 noundef %22, ptr noundef @.str.11, i32 noundef %23)
  %24 = load i16, ptr @g_652, align 2
  %conv3 = sext i16 %24 to i32
  %25 = load i32, ptr @print_hash_value, align 4
  call void @transparent_crc(i32 noundef %conv3, ptr noundef @.str.12, i32 noundef %25)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @transparent_crc(i32 noundef %val, ptr noundef %vname, i32 noundef %flag) #0 {
entry:
  %val.addr = alloca i32, align 4
  %vname.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  store ptr %vname, ptr %vname.addr, align 8
  store i32 %flag, ptr %flag.addr, align 4
  %0 = load i32, ptr %val.addr, align 4
  call void @crc32_8bytes(i32 noundef %0)
  %1 = load i32, ptr %flag.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %vname.addr, align 8
  %3 = load i32, ptr @crc32_context, align 4
  %xor = xor i32 %3, -1
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.14, ptr noundef %2, i32 noundef %xor)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @step_hash(i32 noundef %stmt_id) #0 {
entry:
  %stmt_id.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %stmt_id, ptr %stmt_id.addr, align 4
  store i32 0, ptr %i, align 4
  call void @csmith_compute_hash()
  %0 = load i32, ptr %stmt_id.addr, align 4
  %1 = load i32, ptr @crc32_context, align 4
  %conv = zext i32 %1 to i64
  %xor = xor i64 %conv, 4294967295
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %0, i64 noundef %xor)
  store i32 -1, ptr @crc32_context, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  call void @crc32_gentab()
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @crc32_gentab() #0 {
entry:
  %crc = alloca i32, align 4
  %poly = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 -306674912, ptr %poly, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  store i32 %1, ptr %crc, align 4
  store i32 8, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4
  %cmp2 = icmp sgt i32 %2, 0
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, ptr %crc, align 4
  %and = and i32 %3, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  %4 = load i32, ptr %crc, align 4
  %shr = lshr i32 %4, 1
  %5 = load i32, ptr %poly, align 4
  %xor = xor i32 %shr, %5
  store i32 %xor, ptr %crc, align 4
  br label %if.end

if.else:                                          ; preds = %for.body3
  %6 = load i32, ptr %crc, align 4
  %shr4 = lshr i32 %6, 1
  store i32 %shr4, ptr %crc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %j, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond1, !llvm.loop !7

for.end:                                          ; preds = %for.cond1
  %8 = load i32, ptr %crc, align 4
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom
  store i32 %8, ptr %arrayidx, align 4
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end6:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %print_hash_value = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %print_hash_value, align 4
  call void @platform_main_begin()
  call void @crc32_gentab()
  %call = call signext i16 @func_1()
  call void @csmith_compute_hash()
  %0 = load i32, ptr @crc32_context, align 4
  %conv = zext i32 %0 to i64
  %xor = xor i64 %conv, 4294967295
  %conv1 = trunc i64 %xor to i32
  %1 = load i32, ptr %print_hash_value, align 4
  call void @platform_main_end(i32 noundef %conv1, i32 noundef %1)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @platform_main_begin() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal signext i16 @func_1() #0 {
entry:
  %retval = alloca i16, align 2
  %l_215 = alloca i8, align 1
  %l_274 = alloca ptr, align 8
  %l_306 = alloca ptr, align 8
  %l_307 = alloca i32, align 4
  %l_332 = alloca i16, align 2
  %l_337 = alloca i32, align 4
  %l_353 = alloca i32, align 4
  %l_386 = alloca i32, align 4
  %l_398 = alloca i32, align 4
  %l_454 = alloca i16, align 2
  %l_468 = alloca i16, align 2
  %l_495 = alloca i32, align 4
  %l_525 = alloca i32, align 4
  %l_582 = alloca ptr, align 8
  %l_625 = alloca ptr, align 8
  %l_715 = alloca i16, align 2
  %l_718 = alloca i8, align 1
  %l_719 = alloca ptr, align 8
  %l_249 = alloca ptr, align 8
  %l_305 = alloca i16, align 2
  %l_236 = alloca i8, align 1
  %l_259 = alloca i32, align 4
  %l_280 = alloca i8, align 1
  %l_250 = alloca i8, align 1
  %l_277 = alloca i16, align 2
  %l_281 = alloca ptr, align 8
  %l_284 = alloca i8, align 1
  %l_287 = alloca i32, align 4
  %l_294 = alloca ptr, align 8
  %l_352 = alloca i32, align 4
  %l_367 = alloca i8, align 1
  %l_374 = alloca i32, align 4
  %l_414 = alloca i32, align 4
  %l_467 = alloca ptr, align 8
  %l_536 = alloca i8, align 1
  %l_630 = alloca i32, align 4
  %l_635 = alloca ptr, align 8
  %l_361 = alloca i8, align 1
  %l_375 = alloca i32, align 4
  %l_366 = alloca i16, align 2
  %l_369 = alloca ptr, align 8
  %l_396 = alloca ptr, align 8
  %l_368 = alloca i16, align 2
  %l_382 = alloca ptr, align 8
  %l_388 = alloca i16, align 2
  %l_395 = alloca ptr, align 8
  %l_399 = alloca i32, align 4
  %l_419 = alloca i16, align 2
  %l_429 = alloca i32, align 4
  %l_426 = alloca i16, align 2
  %l_441 = alloca ptr, align 8
  %l_481 = alloca i32, align 4
  %l_522 = alloca i16, align 2
  %l_440 = alloca ptr, align 8
  %l_437 = alloca i32, align 4
  %l_448 = alloca i8, align 1
  %l_451 = alloca ptr, align 8
  %l_455 = alloca i32, align 4
  %l_456 = alloca i32, align 4
  %l_478 = alloca i32, align 4
  %l_484 = alloca ptr, align 8
  %l_513 = alloca ptr, align 8
  %l_523 = alloca ptr, align 8
  %l_524 = alloca i8, align 1
  %l_469 = alloca i16, align 2
  %l_496 = alloca ptr, align 8
  %l_530 = alloca i8, align 1
  %l_531 = alloca ptr, align 8
  %l_583 = alloca ptr, align 8
  %l_588 = alloca i8, align 1
  %l_653 = alloca i32, align 4
  %l_661 = alloca i32, align 4
  %l_662 = alloca ptr, align 8
  %l_548 = alloca i16, align 2
  %l_571 = alloca ptr, align 8
  %l_549 = alloca i32, align 4
  %l_554 = alloca i8, align 1
  %l_567 = alloca ptr, align 8
  %l_568 = alloca ptr, align 8
  %l_605 = alloca ptr, align 8
  %l_654 = alloca i32, align 4
  %l_657 = alloca ptr, align 8
  %l_658 = alloca ptr, align 8
  %l_702 = alloca i32, align 4
  %l_663 = alloca i8, align 1
  %l_696 = alloca i8, align 1
  %l_697 = alloca ptr, align 8
  store i8 -1, ptr %l_215, align 1
  store ptr @g_103, ptr %l_274, align 8
  store ptr null, ptr %l_306, align 8
  store i32 1599730774, ptr %l_307, align 4
  store i16 2, ptr %l_332, align 2
  store i32 2, ptr %l_337, align 4
  store i32 -421254442, ptr %l_353, align 4
  store i32 182326333, ptr %l_386, align 4
  store i32 365336779, ptr %l_398, align 4
  store i16 -8, ptr %l_454, align 2
  store i16 -4, ptr %l_468, align 2
  store i32 -1983801334, ptr %l_495, align 4
  store i32 0, ptr %l_525, align 4
  store ptr @g_91, ptr %l_582, align 8
  store ptr @g_103, ptr %l_625, align 8
  store i16 -1, ptr %l_715, align 2
  store i8 1, ptr %l_718, align 1
  store ptr null, ptr %l_719, align 8
  call void @step_hash(i32 noundef 486)
  %0 = load i8, ptr @g_8, align 1
  %conv = sext i8 %0 to i16
  %1 = load i8, ptr @g_8, align 1
  %conv1 = sext i8 %1 to i32
  %call = call i32 @func_9(i32 noundef %conv1)
  %conv2 = zext i32 %call to i64
  %cmp = icmp sgt i64 %conv2, 0
  %conv3 = zext i1 %cmp to i32
  %2 = load i32, ptr @g_91, align 4
  %add = add i32 %2, 5
  %3 = load i8, ptr %l_215, align 1
  %conv4 = sext i8 %3 to i32
  %div = sdiv i32 0, %conv4
  %tobool = icmp ne i32 %div, 0
  %lor.ext = zext i1 %tobool to i32
  %conv5 = trunc i32 %lor.ext to i16
  %conv6 = zext i16 %conv5 to i32
  %rem = srem i32 %conv6, 5788
  %and = and i32 %add, %rem
  %tobool7 = icmp ne i32 %and, 0
  br i1 %tobool7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load i32, ptr @g_91, align 4
  %tobool8 = icmp ne i32 %4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %tobool8, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  %6 = load i8, ptr %l_215, align 1
  %conv9 = zext i8 %6 to i32
  %or = or i32 %land.ext, %conv9
  %call10 = call signext i16 @func_26(i32 noundef %or)
  %conv11 = sext i16 %call10 to i32
  %7 = load i32, ptr @g_75, align 4
  %cmp12 = icmp eq i32 %conv11, %7
  %conv13 = zext i1 %cmp12 to i32
  %conv14 = trunc i32 %conv13 to i16
  %call15 = call zeroext i8 @func_38(i16 noundef signext %conv14)
  %conv16 = zext i8 %call15 to i32
  %8 = load i32, ptr @g_179, align 4
  %9 = load i8, ptr @g_22, align 1
  %conv17 = sext i8 %9 to i16
  %10 = load i8, ptr %l_215, align 1
  %conv18 = zext i8 %10 to i32
  %11 = load i8, ptr %l_215, align 1
  %conv19 = zext i8 %11 to i16
  %call20 = call i32 @func_15(i32 noundef %conv16, i32 noundef %8, i16 noundef zeroext %conv17, i32 noundef %conv18, i16 noundef zeroext %conv19)
  %conv21 = trunc i32 %call20 to i8
  %conv22 = sext i8 %conv21 to i32
  %add23 = add nsw i32 34, %conv22
  %cmp24 = icmp sle i32 %conv3, %add23
  %conv25 = zext i1 %cmp24 to i32
  %12 = load i32, ptr @g_179, align 4
  %13 = load i8, ptr @g_22, align 1
  %14 = load i8, ptr %l_215, align 1
  %conv26 = zext i8 %14 to i16
  %call27 = call i32 @func_2(i16 noundef signext %conv, i32 noundef %conv25, i32 noundef %12, i8 noundef zeroext %13, i16 noundef signext %conv26)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then, label %if.else219

if.then:                                          ; preds = %land.end
  store ptr @g_103, ptr %l_249, align 8
  store i16 26674, ptr %l_305, align 2
  call void @step_hash(i32 noundef 235)
  store i32 17, ptr @g_64, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc202, %if.then
  %15 = load i32, ptr @g_64, align 4
  %cmp29 = icmp eq i32 %15, 27
  br i1 %cmp29, label %for.body, label %for.end204

for.body:                                         ; preds = %for.cond
  store i8 89, ptr %l_236, align 1
  call void @step_hash(i32 noundef 188)
  %16 = load i8, ptr %l_215, align 1
  %tobool31 = icmp ne i8 %16, 0
  %lnot = xor i1 %tobool31, true
  %lnot.ext = zext i1 %lnot to i32
  %conv32 = trunc i32 %lnot.ext to i16
  %conv33 = sext i16 %conv32 to i32
  %shl = shl i32 2709, %conv33
  %call34 = call i32 @func_9(i32 noundef %shl)
  %conv35 = trunc i32 %call34 to i8
  %conv36 = zext i8 %conv35 to i32
  %shl37 = shl i32 %conv36, 5
  %17 = load i8, ptr %l_236, align 1
  %conv38 = zext i8 %17 to i32
  %call39 = call signext i16 @func_26(i32 noundef %conv38)
  %conv40 = sext i16 %call39 to i32
  %18 = load i8, ptr %l_215, align 1
  %conv41 = zext i8 %18 to i32
  %19 = load i8, ptr %l_236, align 1
  %conv42 = zext i8 %19 to i32
  %20 = load i8, ptr @g_22, align 1
  %conv43 = sext i8 %20 to i32
  %add44 = add i32 %conv42, %conv43
  %xor = xor i32 %conv41, %add44
  %conv45 = trunc i32 %xor to i8
  %conv46 = zext i8 %conv45 to i32
  %21 = load i8, ptr @g_8, align 1
  %conv47 = zext i8 %21 to i32
  %mul = mul nsw i32 %conv46, %conv47
  %or48 = or i32 %conv40, %mul
  %22 = load i32, ptr @g_91, align 4
  %cmp49 = icmp eq i32 %or48, %22
  %conv50 = zext i1 %cmp49 to i32
  %cmp51 = icmp ne i32 %shl37, %conv50
  %conv52 = zext i1 %cmp51 to i32
  %23 = load ptr, ptr @g_103, align 8
  %24 = load ptr, ptr %23, align 8
  store i32 %conv52, ptr %24, align 4
  call void @step_hash(i32 noundef 233)
  store i32 0, ptr @g_91, align 4
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc196, %for.body
  %25 = load i32, ptr @g_91, align 4
  %cmp54 = icmp eq i32 %25, -10
  br i1 %cmp54, label %for.body56, label %for.end198

for.body56:                                       ; preds = %for.cond53
  store i32 6, ptr %l_259, align 4
  store i8 -35, ptr %l_280, align 1
  call void @step_hash(i32 noundef 201)
  store i32 0, ptr @g_75, align 4
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc98, %for.body56
  %26 = load i32, ptr @g_75, align 4
  %cmp58 = icmp slt i32 %26, 22
  br i1 %cmp58, label %for.body60, label %for.end99

for.body60:                                       ; preds = %for.cond57
  store i8 13, ptr %l_250, align 1
  call void @step_hash(i32 noundef 195)
  %27 = load i8, ptr @g_8, align 1
  %conv61 = sext i8 %27 to i32
  %28 = load ptr, ptr %l_249, align 8
  %cmp62 = icmp ne ptr %28, @g_67
  %conv63 = zext i1 %cmp62 to i32
  %conv64 = trunc i32 %conv63 to i8
  %conv65 = zext i8 %conv64 to i32
  %29 = load i8, ptr @g_22, align 1
  %conv66 = zext i8 %29 to i32
  %add67 = add nsw i32 %conv65, %conv66
  %conv68 = trunc i32 %add67 to i8
  %conv69 = sext i8 %conv68 to i32
  %rem70 = srem i32 %conv61, %conv69
  %30 = load i8, ptr %l_250, align 1
  %conv71 = zext i8 %30 to i32
  %call72 = call signext i16 @func_26(i32 noundef %conv71)
  %conv73 = sext i16 %call72 to i32
  %31 = load i8, ptr %l_236, align 1
  %conv74 = zext i8 %31 to i16
  %conv75 = sext i16 %conv74 to i32
  %32 = load i32, ptr @g_179, align 4
  %33 = load i32, ptr %l_259, align 4
  %cmp76 = icmp ule i32 %32, %33
  br i1 %cmp76, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body60
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body60
  %34 = phi i1 [ true, %for.body60 ], [ true, %lor.rhs ]
  %lor.ext78 = zext i1 %34 to i32
  %sub = sub nsw i32 -1, %lor.ext78
  %35 = load ptr, ptr @g_67, align 8
  %36 = load ptr, ptr %35, align 8
  %37 = load i32, ptr %36, align 4
  %add79 = add i32 %sub, %37
  %not = xor i32 %add79, -1
  %conv80 = trunc i32 %not to i16
  %conv81 = sext i16 %conv80 to i32
  %shr = ashr i32 %conv75, %conv81
  %conv82 = trunc i32 %shr to i16
  %conv83 = zext i16 %conv82 to i32
  %shl84 = shl i32 %conv83, 1
  %cmp85 = icmp sle i32 %conv73, %shl84
  %conv86 = zext i1 %cmp85 to i32
  %cmp87 = icmp sge i32 %rem70, %conv86
  %conv88 = zext i1 %cmp87 to i32
  %38 = load ptr, ptr @g_103, align 8
  %39 = load ptr, ptr %38, align 8
  store i32 %conv88, ptr %39, align 4
  call void @step_hash(i32 noundef 200)
  store i8 0, ptr %l_250, align 1
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc, %lor.end
  %40 = load i8, ptr %l_250, align 1
  %conv90 = zext i8 %40 to i32
  %cmp91 = icmp ne i32 %conv90, 10
  br i1 %cmp91, label %for.body93, label %for.end

for.body93:                                       ; preds = %for.cond89
  call void @step_hash(i32 noundef 199)
  %41 = load i8, ptr %l_250, align 1
  %conv94 = zext i8 %41 to i32
  %42 = load ptr, ptr @g_103, align 8
  %43 = load ptr, ptr %42, align 8
  store i32 %conv94, ptr %43, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body93
  %44 = load i8, ptr %l_250, align 1
  %conv95 = zext i8 %44 to i32
  %add96 = add nsw i32 %conv95, 2
  %conv97 = trunc i32 %add96 to i8
  store i8 %conv97, ptr %l_250, align 1
  br label %for.cond89, !llvm.loop !9

for.end:                                          ; preds = %for.cond89
  br label %for.inc98

for.inc98:                                        ; preds = %for.end
  %45 = load i32, ptr @g_75, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, ptr @g_75, align 4
  br label %for.cond57, !llvm.loop !10

for.end99:                                        ; preds = %for.cond57
  call void @step_hash(i32 noundef 232)
  %46 = load i32, ptr @g_91, align 4
  %tobool100 = icmp ne i32 %46, 0
  br i1 %tobool100, label %lor.end117, label %lor.rhs101

lor.rhs101:                                       ; preds = %for.end99
  %47 = load i32, ptr %l_259, align 4
  %conv102 = trunc i32 %47 to i16
  %conv103 = zext i16 %conv102 to i32
  %48 = load i8, ptr %l_236, align 1
  %conv104 = zext i8 %48 to i32
  %49 = load ptr, ptr @g_102, align 8
  %50 = load ptr, ptr %49, align 8
  %51 = load ptr, ptr @g_102, align 8
  %52 = load ptr, ptr %51, align 8
  %cmp105 = icmp eq ptr %50, %52
  %conv106 = zext i1 %cmp105 to i32
  %conv107 = trunc i32 %conv106 to i16
  %conv108 = sext i16 %conv107 to i32
  %shl109 = shl i32 %conv108, 3
  %53 = load i32, ptr @g_179, align 4
  %cmp110 = icmp ne i32 %shl109, %53
  %conv111 = zext i1 %cmp110 to i32
  %sub112 = sub nsw i32 %conv104, %conv111
  %conv113 = trunc i32 %sub112 to i16
  %conv114 = zext i16 %conv113 to i32
  %shr115 = ashr i32 %conv103, %conv114
  %tobool116 = icmp ne i32 %shr115, 0
  br label %lor.end117

lor.end117:                                       ; preds = %lor.rhs101, %for.end99
  %54 = phi i1 [ true, %for.end99 ], [ %tobool116, %lor.rhs101 ]
  %lor.ext118 = zext i1 %54 to i32
  %conv119 = trunc i32 %lor.ext118 to i16
  %conv120 = sext i16 %conv119 to i32
  %shr121 = ashr i32 %conv120, 6
  %conv122 = trunc i32 %shr121 to i8
  %conv123 = zext i8 %conv122 to i32
  %55 = load i8, ptr %l_215, align 1
  %conv124 = zext i8 %55 to i32
  %call125 = call signext i16 @func_26(i32 noundef %conv124)
  %conv126 = trunc i16 %call125 to i8
  %conv127 = zext i8 %conv126 to i32
  %sub128 = sub nsw i32 %conv123, %conv127
  %conv129 = trunc i32 %sub128 to i8
  %conv130 = sext i8 %conv129 to i32
  %56 = load ptr, ptr %l_274, align 8
  %57 = load ptr, ptr %l_274, align 8
  %cmp131 = icmp ne ptr %56, %57
  %conv132 = zext i1 %cmp131 to i32
  %58 = load i32, ptr @g_91, align 4
  %or133 = or i32 %conv132, %58
  %conv134 = trunc i32 %or133 to i8
  %conv135 = sext i8 %conv134 to i32
  %mul136 = mul nsw i32 %conv130, %conv135
  %tobool137 = icmp ne i32 %mul136, 0
  br i1 %tobool137, label %if.then138, label %if.else

if.then138:                                       ; preds = %lor.end117
  store i16 -1, ptr %l_277, align 2
  call void @step_hash(i32 noundef 203)
  %59 = load ptr, ptr @g_103, align 8
  %60 = load ptr, ptr %59, align 8
  %61 = load ptr, ptr %l_274, align 8
  %62 = load ptr, ptr %61, align 8
  store ptr %60, ptr %62, align 8
  call void @step_hash(i32 noundef 210)
  store i32 -2, ptr @g_105, align 4
  br label %for.cond139

for.cond139:                                      ; preds = %for.inc147, %if.then138
  %63 = load i32, ptr @g_105, align 4
  %cmp140 = icmp sge i32 %63, -26
  br i1 %cmp140, label %for.body142, label %for.end148

for.body142:                                      ; preds = %for.cond139
  call void @step_hash(i32 noundef 207)
  %64 = load ptr, ptr @g_143, align 8
  %65 = load i32, ptr %64, align 4
  %66 = load ptr, ptr @g_143, align 8
  store i32 %65, ptr %66, align 4
  call void @step_hash(i32 noundef 208)
  %67 = load i16, ptr %l_277, align 2
  %tobool143 = icmp ne i16 %67, 0
  br i1 %tobool143, label %if.then144, label %if.end

if.then144:                                       ; preds = %for.body142
  br label %for.inc147

if.end:                                           ; preds = %for.body142
  call void @step_hash(i32 noundef 209)
  %68 = load ptr, ptr @g_102, align 8
  %69 = load ptr, ptr %68, align 8
  %70 = load ptr, ptr %69, align 8
  %cmp145 = icmp eq ptr null, %70
  %conv146 = zext i1 %cmp145 to i32
  %71 = load ptr, ptr @g_143, align 8
  store i32 %conv146, ptr %71, align 4
  br label %for.inc147

for.inc147:                                       ; preds = %if.end, %if.then144
  %72 = load i32, ptr @g_105, align 4
  %dec = add nsw i32 %72, -1
  store i32 %dec, ptr @g_105, align 4
  br label %for.cond139, !llvm.loop !11

for.end148:                                       ; preds = %for.cond139
  br label %if.end195

if.else:                                          ; preds = %lor.end117
  store ptr @g_179, ptr %l_281, align 8
  call void @step_hash(i32 noundef 212)
  %73 = load i8, ptr %l_280, align 1
  %conv149 = zext i8 %73 to i16
  %conv150 = sext i16 %conv149 to i32
  %74 = load i32, ptr @g_75, align 4
  %call151 = call signext i16 @func_26(i32 noundef %74)
  %conv152 = sext i16 %call151 to i32
  %rem153 = srem i32 %conv150, %conv152
  %75 = load ptr, ptr %l_281, align 8
  %76 = load i32, ptr %75, align 4
  %and154 = and i32 %76, %rem153
  store i32 %and154, ptr %75, align 4
  call void @step_hash(i32 noundef 220)
  store i32 0, ptr @g_75, align 4
  br label %for.cond155

for.cond155:                                      ; preds = %for.inc169, %if.else
  %77 = load i32, ptr @g_75, align 4
  %cmp156 = icmp sle i32 %77, 20
  br i1 %cmp156, label %for.body158, label %for.end171

for.body158:                                      ; preds = %for.cond155
  store i8 -49, ptr %l_284, align 1
  call void @step_hash(i32 noundef 216)
  %78 = load ptr, ptr %l_274, align 8
  %79 = load ptr, ptr %78, align 8
  %80 = load ptr, ptr %79, align 8
  %81 = load i32, ptr %80, align 4
  %tobool159 = icmp ne i32 %81, 0
  br i1 %tobool159, label %if.then160, label %if.end161

if.then160:                                       ; preds = %for.body158
  br label %for.end171

if.end161:                                        ; preds = %for.body158
  call void @step_hash(i32 noundef 217)
  %82 = load ptr, ptr @g_102, align 8
  %83 = load ptr, ptr %82, align 8
  %84 = load ptr, ptr %83, align 8
  %cmp162 = icmp eq ptr null, %84
  %conv163 = zext i1 %cmp162 to i32
  %85 = load ptr, ptr @g_103, align 8
  %86 = load ptr, ptr %85, align 8
  store i32 %conv163, ptr %86, align 4
  call void @step_hash(i32 noundef 218)
  %87 = load ptr, ptr %l_281, align 8
  %88 = load ptr, ptr %l_249, align 8
  %89 = load ptr, ptr %88, align 8
  store ptr %87, ptr %89, align 8
  call void @step_hash(i32 noundef 219)
  %90 = load i32, ptr %l_259, align 4
  %conv164 = zext i32 %90 to i64
  %xor165 = xor i64 59443, %conv164
  %91 = load i8, ptr %l_284, align 1
  %conv166 = sext i8 %91 to i64
  %xor167 = xor i64 %xor165, %conv166
  %conv168 = trunc i64 %xor167 to i32
  %92 = load ptr, ptr %l_274, align 8
  %93 = load ptr, ptr %92, align 8
  %94 = load ptr, ptr %93, align 8
  store i32 %conv168, ptr %94, align 4
  br label %for.inc169

for.inc169:                                       ; preds = %if.end161
  %95 = load i32, ptr @g_75, align 4
  %inc170 = add nsw i32 %95, 1
  store i32 %inc170, ptr @g_75, align 4
  br label %for.cond155, !llvm.loop !12

for.end171:                                       ; preds = %if.then160, %for.cond155
  call void @step_hash(i32 noundef 226)
  store i8 0, ptr %l_215, align 1
  br label %for.cond172

for.cond172:                                      ; preds = %for.inc181, %for.end171
  %96 = load i8, ptr %l_215, align 1
  %conv173 = zext i8 %96 to i32
  %cmp174 = icmp sle i32 %conv173, 39
  br i1 %cmp174, label %for.body176, label %for.end185

for.body176:                                      ; preds = %for.cond172
  store i32 63588364, ptr %l_287, align 4
  call void @step_hash(i32 noundef 224)
  %97 = load i32, ptr @g_179, align 4
  %call177 = call signext i16 @func_26(i32 noundef %97)
  %conv178 = sext i16 %call177 to i32
  %call179 = call i32 @func_9(i32 noundef %conv178)
  store i32 %call179, ptr %l_287, align 4
  call void @step_hash(i32 noundef 225)
  %98 = load i32, ptr %l_287, align 4
  %conv180 = trunc i32 %98 to i16
  store i16 %conv180, ptr %retval, align 2
  br label %return

for.inc181:                                       ; No predecessors!
  %99 = load i8, ptr %l_215, align 1
  %conv182 = zext i8 %99 to i32
  %add183 = add nsw i32 %conv182, 2
  %conv184 = trunc i32 %add183 to i8
  store i8 %conv184, ptr %l_215, align 1
  br label %for.cond172, !llvm.loop !13

for.end185:                                       ; preds = %for.cond172
  call void @step_hash(i32 noundef 231)
  store i32 14, ptr %l_259, align 4
  br label %for.cond186

for.cond186:                                      ; preds = %for.inc192, %for.end185
  %100 = load i32, ptr %l_259, align 4
  %cmp187 = icmp ult i32 %100, 6
  br i1 %cmp187, label %for.body189, label %for.end194

for.body189:                                      ; preds = %for.cond186
  call void @step_hash(i32 noundef 230)
  %101 = load ptr, ptr @g_102, align 8
  %102 = load ptr, ptr %101, align 8
  %cmp190 = icmp ne ptr null, %102
  %conv191 = zext i1 %cmp190 to i32
  %103 = load ptr, ptr %l_249, align 8
  %104 = load ptr, ptr %103, align 8
  %105 = load ptr, ptr %104, align 8
  store i32 %conv191, ptr %105, align 4
  br label %for.inc192

for.inc192:                                       ; preds = %for.body189
  %106 = load i32, ptr %l_259, align 4
  %dec193 = add i32 %106, -1
  store i32 %dec193, ptr %l_259, align 4
  br label %for.cond186, !llvm.loop !14

for.end194:                                       ; preds = %for.cond186
  br label %if.end195

if.end195:                                        ; preds = %for.end194, %for.end148
  br label %for.inc196

for.inc196:                                       ; preds = %if.end195
  %107 = load i32, ptr @g_91, align 4
  %sub197 = sub nsw i32 %107, 9
  store i32 %sub197, ptr @g_91, align 4
  br label %for.cond53, !llvm.loop !15

for.end198:                                       ; preds = %for.cond53
  call void @step_hash(i32 noundef 234)
  %108 = load i8, ptr %l_236, align 1
  %tobool199 = icmp ne i8 %108, 0
  br i1 %tobool199, label %if.then200, label %if.end201

if.then200:                                       ; preds = %for.end198
  br label %for.inc202

if.end201:                                        ; preds = %for.end198
  br label %for.inc202

for.inc202:                                       ; preds = %if.end201, %if.then200
  %109 = load i32, ptr @g_64, align 4
  %inc203 = add nsw i32 %109, 1
  store i32 %inc203, ptr @g_64, align 4
  br label %for.cond, !llvm.loop !16

for.end204:                                       ; preds = %for.cond
  call void @step_hash(i32 noundef 236)
  %110 = load ptr, ptr %l_274, align 8
  %111 = load ptr, ptr %110, align 8
  %112 = load ptr, ptr %111, align 8
  %113 = load i32, ptr %112, align 4
  %114 = load ptr, ptr @g_68, align 8
  %115 = load i32, ptr %114, align 4
  %and205 = and i32 %115, %113
  store i32 %and205, ptr %114, align 4
  call void @step_hash(i32 noundef 276)
  store i8 -16, ptr @g_8, align 1
  br label %for.cond206

for.cond206:                                      ; preds = %for.inc214, %for.end204
  %116 = load i8, ptr @g_8, align 1
  %conv207 = sext i8 %116 to i32
  %cmp208 = icmp sgt i32 %conv207, -23
  br i1 %cmp208, label %for.body210, label %for.end218

for.body210:                                      ; preds = %for.cond206
  store ptr @g_75, ptr %l_294, align 8
  store i32 -1417304957, ptr %l_352, align 4
  call void @step_hash(i32 noundef 240)
  %117 = load ptr, ptr @g_104, align 8
  %118 = load i32, ptr %117, align 4
  %tobool211 = icmp ne i32 %118, 0
  br i1 %tobool211, label %if.then212, label %if.end213

if.then212:                                       ; preds = %for.body210
  br label %for.end218

if.end213:                                        ; preds = %for.body210
  br label %for.inc214

for.inc214:                                       ; preds = %if.end213
  %119 = load i8, ptr @g_8, align 1
  %conv215 = sext i8 %119 to i32
  %sub216 = sub nsw i32 %conv215, 9
  %conv217 = trunc i32 %sub216 to i8
  store i8 %conv217, ptr @g_8, align 1
  br label %for.cond206, !llvm.loop !17

for.end218:                                       ; preds = %if.then212, %for.cond206
  br label %if.end1209

if.else219:                                       ; preds = %land.end
  store i8 -57, ptr %l_367, align 1
  store i32 -3, ptr %l_374, align 4
  store i32 1, ptr %l_414, align 4
  store ptr @g_67, ptr %l_467, align 8
  store i8 0, ptr %l_536, align 1
  store i32 9, ptr %l_630, align 4
  store ptr %l_414, ptr %l_635, align 8
  call void @step_hash(i32 noundef 326)
  store i32 -15, ptr @g_91, align 4
  br label %for.cond220

for.cond220:                                      ; preds = %for.inc405, %if.else219
  %120 = load i32, ptr @g_91, align 4
  %cmp221 = icmp sle i32 %120, 14
  br i1 %cmp221, label %for.body223, label %for.end407

for.body223:                                      ; preds = %for.cond220
  store i8 1, ptr %l_361, align 1
  store i32 840393166, ptr %l_375, align 4
  call void @step_hash(i32 noundef 281)
  %121 = load ptr, ptr @g_67, align 8
  %122 = load ptr, ptr %121, align 8
  %123 = load i32, ptr %122, align 4
  %124 = load ptr, ptr %l_274, align 8
  %125 = load ptr, ptr %124, align 8
  %126 = load ptr, ptr %125, align 8
  %127 = load i32, ptr %126, align 4
  %and224 = and i32 %127, %123
  store i32 %and224, ptr %126, align 4
  call void @step_hash(i32 noundef 282)
  %128 = load ptr, ptr @g_67, align 8
  %129 = load ptr, ptr %128, align 8
  %130 = load ptr, ptr @g_67, align 8
  store ptr %129, ptr %130, align 8
  call void @step_hash(i32 noundef 290)
  store i16 0, ptr %l_332, align 2
  br label %for.cond225

for.cond225:                                      ; preds = %for.inc243, %for.body223
  %131 = load i16, ptr %l_332, align 2
  %conv226 = sext i16 %131 to i32
  %cmp227 = icmp sgt i32 %conv226, 24
  br i1 %cmp227, label %for.body229, label %for.end247

for.body229:                                      ; preds = %for.cond225
  call void @step_hash(i32 noundef 286)
  %132 = load i32, ptr @g_179, align 4
  %conv230 = trunc i32 %132 to i16
  %conv231 = sext i16 %conv230 to i32
  %133 = load i32, ptr @g_91, align 4
  %134 = load i8, ptr @g_8, align 1
  %conv232 = sext i8 %134 to i32
  %or233 = or i32 %133, %conv232
  %conv234 = trunc i32 %or233 to i16
  %conv235 = sext i16 %conv234 to i32
  %rem236 = srem i32 %conv231, %conv235
  %call237 = call i32 @func_9(i32 noundef %rem236)
  %135 = load ptr, ptr @g_104, align 8
  store i32 %call237, ptr %135, align 4
  call void @step_hash(i32 noundef 287)
  %136 = load i8, ptr %l_361, align 1
  %tobool238 = icmp ne i8 %136, 0
  br i1 %tobool238, label %if.then239, label %if.end240

if.then239:                                       ; preds = %for.body229
  br label %for.end247

if.end240:                                        ; preds = %for.body229
  call void @step_hash(i32 noundef 288)
  %137 = load ptr, ptr @g_68, align 8
  %138 = load i32, ptr %137, align 4
  %139 = load ptr, ptr @g_103, align 8
  %140 = load ptr, ptr %139, align 8
  %141 = load i32, ptr %140, align 4
  %xor241 = xor i32 %141, %138
  store i32 %xor241, ptr %140, align 4
  call void @step_hash(i32 noundef 289)
  %142 = load ptr, ptr @g_103, align 8
  %143 = load ptr, ptr %142, align 8
  %144 = load i32, ptr %143, align 4
  %145 = load ptr, ptr @g_143, align 8
  %146 = load i32, ptr %145, align 4
  %xor242 = xor i32 %146, %144
  store i32 %xor242, ptr %145, align 4
  br label %for.inc243

for.inc243:                                       ; preds = %if.end240
  %147 = load i16, ptr %l_332, align 2
  %conv244 = sext i16 %147 to i32
  %add245 = add nsw i32 %conv244, 1
  %conv246 = trunc i32 %add245 to i16
  store i16 %conv246, ptr %l_332, align 2
  br label %for.cond225, !llvm.loop !18

for.end247:                                       ; preds = %if.then239, %for.cond225
  call void @step_hash(i32 noundef 325)
  store i32 -18, ptr %l_337, align 4
  br label %for.cond248

for.cond248:                                      ; preds = %for.inc402, %for.end247
  %148 = load i32, ptr %l_337, align 4
  %cmp249 = icmp sge i32 %148, -24
  br i1 %cmp249, label %for.body251, label %for.end404

for.body251:                                      ; preds = %for.cond248
  store i16 630, ptr %l_366, align 2
  store ptr @g_64, ptr %l_369, align 8
  store ptr null, ptr %l_396, align 8
  call void @step_hash(i32 noundef 306)
  %149 = load i32, ptr @g_354, align 4
  %conv252 = trunc i32 %149 to i16
  %conv253 = zext i16 %conv252 to i32
  %div254 = sdiv i32 %conv253, 37299
  %tobool255 = icmp ne i32 %div254, 0
  br i1 %tobool255, label %if.then256, label %if.else284

if.then256:                                       ; preds = %for.body251
  store i16 8873, ptr %l_368, align 2
  call void @step_hash(i32 noundef 302)
  %150 = load ptr, ptr %l_274, align 8
  %151 = load ptr, ptr %150, align 8
  %152 = load ptr, ptr %151, align 8
  %153 = load i32, ptr %152, align 4
  %call257 = call signext i16 @func_26(i32 noundef %153)
  %conv258 = sext i16 %call257 to i32
  %154 = load i16, ptr %l_366, align 2
  %conv259 = zext i16 %154 to i32
  %cmp260 = icmp sle i32 %conv258, %conv259
  %conv261 = zext i1 %cmp260 to i32
  %conv262 = sext i32 %conv261 to i64
  %xor263 = xor i64 -1, %conv262
  %155 = load i8, ptr %l_367, align 1
  %conv264 = sext i8 %155 to i64
  %cmp265 = icmp eq i64 %xor263, %conv264
  %conv266 = zext i1 %cmp265 to i32
  %cmp267 = icmp eq i32 0, %conv266
  %conv268 = zext i1 %cmp267 to i32
  %156 = load ptr, ptr @g_143, align 8
  %157 = load i32, ptr %156, align 4
  %cmp269 = icmp sle i32 %conv268, %157
  br i1 %cmp269, label %if.then271, label %if.else276

if.then271:                                       ; preds = %if.then256
  call void @step_hash(i32 noundef 296)
  %158 = load ptr, ptr @g_103, align 8
  %159 = load ptr, ptr %158, align 8
  %160 = load i32, ptr %159, align 4
  %conv272 = sext i32 %160 to i64
  %or273 = or i64 %conv272, 1
  %conv274 = trunc i64 %or273 to i32
  store i32 %conv274, ptr %159, align 4
  call void @step_hash(i32 noundef 297)
  %161 = load ptr, ptr @g_143, align 8
  %162 = load i32, ptr %161, align 4
  %163 = load ptr, ptr @g_102, align 8
  %164 = load ptr, ptr %163, align 8
  %165 = load ptr, ptr %164, align 8
  %166 = load i32, ptr %165, align 4
  %and275 = and i32 %166, %162
  store i32 %and275, ptr %165, align 4
  call void @step_hash(i32 noundef 298)
  %167 = load ptr, ptr @g_103, align 8
  %168 = load ptr, ptr %167, align 8
  %169 = load ptr, ptr %l_274, align 8
  %170 = load ptr, ptr %169, align 8
  store ptr %168, ptr %170, align 8
  br label %if.end283

if.else276:                                       ; preds = %if.then256
  call void @step_hash(i32 noundef 300)
  %171 = load ptr, ptr @g_103, align 8
  %172 = load ptr, ptr %171, align 8
  %173 = load i32, ptr %172, align 4
  %tobool277 = icmp ne i32 %173, 0
  br i1 %tobool277, label %if.then278, label %if.end279

if.then278:                                       ; preds = %if.else276
  br label %for.end404

if.end279:                                        ; preds = %if.else276
  call void @step_hash(i32 noundef 301)
  %174 = load ptr, ptr @g_103, align 8
  %175 = load ptr, ptr %174, align 8
  %176 = load i32, ptr %175, align 4
  %tobool280 = icmp ne i32 %176, 0
  br i1 %tobool280, label %if.then281, label %if.end282

if.then281:                                       ; preds = %if.end279
  br label %for.inc402

if.end282:                                        ; preds = %if.end279
  br label %if.end283

if.end283:                                        ; preds = %if.end282, %if.then271
  call void @step_hash(i32 noundef 303)
  store i16 -1, ptr %l_368, align 2
  br label %if.end286

if.else284:                                       ; preds = %for.body251
  call void @step_hash(i32 noundef 305)
  %177 = load ptr, ptr @g_104, align 8
  %178 = load i32, ptr %177, align 4
  %and285 = and i32 %178, 0
  store i32 %and285, ptr %177, align 4
  br label %if.end286

if.end286:                                        ; preds = %if.else284, %if.end283
  call void @step_hash(i32 noundef 307)
  %179 = load ptr, ptr %l_369, align 8
  %180 = load ptr, ptr @g_67, align 8
  store ptr %179, ptr %180, align 8
  call void @step_hash(i32 noundef 323)
  %181 = load i8, ptr %l_361, align 1
  %conv287 = zext i8 %181 to i64
  %cmp288 = icmp eq i64 %conv287, 3793317292
  %conv289 = zext i1 %cmp288 to i32
  %182 = load i32, ptr @g_75, align 4
  %183 = load i8, ptr %l_361, align 1
  %conv290 = zext i8 %183 to i16
  %conv291 = zext i16 %conv290 to i32
  %mul292 = mul nsw i32 1, %conv291
  %184 = load ptr, ptr %l_274, align 8
  %185 = load ptr, ptr %184, align 8
  %186 = load ptr, ptr %185, align 8
  %187 = load i32, ptr %186, align 4
  %conv293 = trunc i32 %187 to i16
  %188 = load i32, ptr %l_374, align 4
  %189 = load ptr, ptr %l_369, align 8
  %190 = load i32, ptr %189, align 4
  %191 = load i32, ptr @g_64, align 4
  %conv294 = trunc i32 %191 to i16
  %192 = load ptr, ptr @g_67, align 8
  %193 = load ptr, ptr %192, align 8
  %194 = load i32, ptr %193, align 4
  %195 = load i8, ptr @g_8, align 1
  %conv295 = sext i8 %195 to i16
  %call296 = call i32 @func_15(i32 noundef %188, i32 noundef %190, i16 noundef zeroext %conv294, i32 noundef %194, i16 noundef zeroext %conv295)
  %196 = load i32, ptr @g_75, align 4
  %conv297 = trunc i32 %196 to i16
  %call298 = call i32 @func_15(i32 noundef %182, i32 noundef %mul292, i16 noundef zeroext %conv293, i32 noundef %call296, i16 noundef zeroext %conv297)
  %conv299 = trunc i32 %call298 to i16
  %conv300 = zext i16 %conv299 to i32
  %197 = load i32, ptr @g_354, align 4
  %conv301 = trunc i32 %197 to i16
  %conv302 = zext i16 %conv301 to i32
  %shl303 = shl i32 %conv300, %conv302
  %cmp304 = icmp slt i32 %conv289, %shl303
  %conv305 = zext i1 %cmp304 to i32
  %198 = load i32, ptr %l_375, align 4
  %cmp306 = icmp sgt i32 %conv305, %198
  br i1 %cmp306, label %if.then308, label %if.else370

if.then308:                                       ; preds = %if.end286
  store ptr @g_67, ptr %l_382, align 8
  call void @step_hash(i32 noundef 309)
  %199 = load ptr, ptr @g_67, align 8
  %200 = load ptr, ptr %199, align 8
  %201 = load ptr, ptr %l_274, align 8
  %202 = load ptr, ptr %201, align 8
  %203 = load ptr, ptr %202, align 8
  %204 = load ptr, ptr @g_103, align 8
  %205 = load ptr, ptr %204, align 8
  %call309 = call zeroext i16 @func_59(ptr noundef %200, ptr noundef %203, ptr noundef %205)
  %conv310 = zext i16 %call309 to i32
  %206 = load ptr, ptr @g_68, align 8
  store i32 %conv310, ptr %206, align 4
  call void @step_hash(i32 noundef 310)
  %207 = load i32, ptr %l_375, align 4
  %208 = load ptr, ptr %l_369, align 8
  store i32 %207, ptr %208, align 4
  call void @step_hash(i32 noundef 311)
  %209 = load i32, ptr @g_64, align 4
  %210 = load ptr, ptr %l_382, align 8
  %cmp311 = icmp eq ptr %210, null
  %conv312 = zext i1 %cmp311 to i32
  %call313 = call signext i16 @func_26(i32 noundef %conv312)
  %conv314 = sext i16 %call313 to i32
  %tobool315 = icmp ne i32 %conv314, 0
  br i1 %tobool315, label %lor.end317, label %lor.rhs316

lor.rhs316:                                       ; preds = %if.then308
  br label %lor.end317

lor.end317:                                       ; preds = %lor.rhs316, %if.then308
  %211 = phi i1 [ true, %if.then308 ], [ true, %lor.rhs316 ]
  %lor.ext318 = zext i1 %211 to i32
  %212 = load i32, ptr @g_75, align 4
  %213 = load i8, ptr @g_8, align 1
  %tobool319 = icmp ne i8 %213, 0
  %lnot320 = xor i1 %tobool319, true
  %lnot.ext321 = zext i1 %lnot320 to i32
  %and322 = and i32 %212, %lnot.ext321
  %call323 = call i32 @func_9(i32 noundef %and322)
  %214 = load i32, ptr @g_91, align 4
  %conv324 = sext i32 %214 to i64
  %cmp325 = icmp eq i64 %conv324, 40
  %conv326 = zext i1 %cmp325 to i32
  %cmp327 = icmp ule i32 %call323, %conv326
  %conv328 = zext i1 %cmp327 to i32
  %215 = load ptr, ptr %l_369, align 8
  %216 = load i32, ptr %215, align 4
  %cmp329 = icmp sgt i32 %conv328, %216
  %conv330 = zext i1 %cmp329 to i32
  %conv331 = sext i32 %conv330 to i64
  %and332 = and i64 %conv331, 64518
  %217 = load i32, ptr @g_64, align 4
  %conv333 = sext i32 %217 to i64
  %or334 = or i64 %and332, %conv333
  %conv335 = trunc i64 %or334 to i16
  %conv336 = sext i16 %conv335 to i32
  %218 = load i32, ptr @g_75, align 4
  %conv337 = trunc i32 %218 to i16
  %conv338 = sext i16 %conv337 to i32
  %div339 = sdiv i32 %conv336, %conv338
  %219 = load ptr, ptr @g_68, align 8
  %220 = load i32, ptr %219, align 4
  %cmp340 = icmp sge i32 %div339, %220
  %conv341 = zext i1 %cmp340 to i32
  %or342 = or i32 %lor.ext318, %conv341
  %tobool343 = icmp ne i32 %or342, 0
  %lnot344 = xor i1 %tobool343, true
  %lnot.ext345 = zext i1 %lnot344 to i32
  %conv346 = sext i32 %lnot.ext345 to i64
  %xor347 = xor i64 %conv346, 0
  %conv348 = trunc i64 %xor347 to i32
  %221 = load i32, ptr @g_91, align 4
  %conv349 = trunc i32 %221 to i16
  %222 = load ptr, ptr %l_369, align 8
  %223 = load i32, ptr %222, align 4
  %224 = load i32, ptr %l_374, align 4
  %conv350 = trunc i32 %224 to i16
  %call351 = call i32 @func_15(i32 noundef %209, i32 noundef %conv348, i16 noundef zeroext %conv349, i32 noundef %223, i16 noundef zeroext %conv350)
  %tobool352 = icmp ne i32 %call351, 0
  %lnot353 = xor i1 %tobool352, true
  %lnot.ext354 = zext i1 %lnot353 to i32
  %conv355 = trunc i32 %lnot.ext354 to i16
  %conv356 = sext i16 %conv355 to i32
  %225 = load i32, ptr @g_91, align 4
  %conv357 = trunc i32 %225 to i16
  %conv358 = sext i16 %conv357 to i32
  %rem359 = srem i32 %conv356, %conv358
  %conv360 = trunc i32 %rem359 to i16
  %conv361 = zext i16 %conv360 to i32
  %shl362 = shl i32 %conv361, 4
  %226 = load i32, ptr @g_385, align 4
  %rem363 = srem i32 %shl362, %226
  %tobool364 = icmp ne i32 %rem363, 0
  br i1 %tobool364, label %land.rhs365, label %land.end367

land.rhs365:                                      ; preds = %lor.end317
  %227 = load ptr, ptr %l_369, align 8
  %228 = load i32, ptr %227, align 4
  %tobool366 = icmp ne i32 %228, 0
  br label %land.end367

land.end367:                                      ; preds = %land.rhs365, %lor.end317
  %229 = phi i1 [ false, %lor.end317 ], [ %tobool366, %land.rhs365 ]
  %land.ext368 = zext i1 %229 to i32
  %230 = load i32, ptr %l_386, align 4
  %and369 = and i32 %230, %land.ext368
  store i32 %and369, ptr %l_386, align 4
  br label %if.end401

if.else370:                                       ; preds = %if.end286
  store i16 4, ptr %l_388, align 2
  store ptr null, ptr %l_395, align 8
  call void @step_hash(i32 noundef 322)
  %231 = load ptr, ptr %l_274, align 8
  %232 = load ptr, ptr %231, align 8
  %cmp371 = icmp ne ptr null, %232
  br i1 %cmp371, label %if.then373, label %if.else396

if.then373:                                       ; preds = %if.else370
  store i32 985449846, ptr %l_399, align 4
  call void @step_hash(i32 noundef 314)
  %233 = load i8, ptr @g_8, align 1
  %conv374 = sext i8 %233 to i32
  %cmp375 = icmp ne i32 0, %conv374
  %conv376 = zext i1 %cmp375 to i32
  %234 = load ptr, ptr @g_104, align 8
  store i32 %conv376, ptr %234, align 4
  call void @step_hash(i32 noundef 315)
  %235 = load i16, ptr %l_388, align 2
  %conv377 = trunc i16 %235 to i8
  %conv378 = zext i8 %conv377 to i32
  %sub379 = sub nsw i32 0, %conv378
  %236 = load i32, ptr %l_398, align 4
  %div380 = udiv i32 0, %236
  %237 = load i16, ptr %l_388, align 2
  %conv381 = sext i16 %237 to i32
  %cmp382 = icmp ne i32 %div380, %conv381
  %conv383 = zext i1 %cmp382 to i32
  %not384 = xor i32 %conv383, -1
  %238 = load i32, ptr %l_399, align 4
  %239 = load i32, ptr %l_375, align 4
  %conv385 = trunc i32 %239 to i16
  %240 = load ptr, ptr @g_143, align 8
  %241 = load i32, ptr %240, align 4
  %242 = load i8, ptr %l_367, align 1
  %conv386 = sext i8 %242 to i16
  %call387 = call i32 @func_15(i32 noundef %not384, i32 noundef %238, i16 noundef zeroext %conv385, i32 noundef %241, i16 noundef zeroext %conv386)
  %xor388 = xor i32 %sub379, %call387
  %tobool389 = icmp ne i32 %xor388, 0
  br i1 %tobool389, label %land.rhs390, label %land.end391

land.rhs390:                                      ; preds = %if.then373
  br label %land.end391

land.end391:                                      ; preds = %land.rhs390, %if.then373
  %243 = phi i1 [ false, %if.then373 ], [ true, %land.rhs390 ]
  %land.ext392 = zext i1 %243 to i32
  %244 = load ptr, ptr @g_103, align 8
  %245 = load ptr, ptr %244, align 8
  store i32 %land.ext392, ptr %245, align 4
  call void @step_hash(i32 noundef 316)
  %246 = load i32, ptr @g_64, align 4
  %247 = load i32, ptr @g_179, align 4
  %call393 = call signext i16 @func_26(i32 noundef %247)
  %conv394 = sext i16 %call393 to i32
  %xor395 = xor i32 %246, %conv394
  %248 = load ptr, ptr %l_369, align 8
  store i32 %xor395, ptr %248, align 4
  call void @step_hash(i32 noundef 317)
  %249 = load ptr, ptr @g_103, align 8
  %250 = load ptr, ptr %249, align 8
  store i32 -732619205, ptr %250, align 4
  br label %if.end400

if.else396:                                       ; preds = %if.else370
  call void @step_hash(i32 noundef 319)
  %251 = load ptr, ptr %l_274, align 8
  %252 = load ptr, ptr %251, align 8
  %253 = load ptr, ptr %252, align 8
  %254 = load i32, ptr %253, align 4
  %tobool397 = icmp ne i32 %254, 0
  br i1 %tobool397, label %if.then398, label %if.end399

if.then398:                                       ; preds = %if.else396
  br label %for.end404

if.end399:                                        ; preds = %if.else396
  call void @step_hash(i32 noundef 320)
  %255 = load ptr, ptr @g_397, align 8
  %256 = load ptr, ptr %255, align 8
  %257 = load ptr, ptr %256, align 8
  %258 = load ptr, ptr @g_102, align 8
  %259 = load ptr, ptr %258, align 8
  store ptr %257, ptr %259, align 8
  call void @step_hash(i32 noundef 321)
  %260 = load i32, ptr %l_375, align 4
  %261 = load ptr, ptr @g_397, align 8
  %262 = load ptr, ptr %261, align 8
  %263 = load ptr, ptr %262, align 8
  store i32 %260, ptr %263, align 4
  br label %if.end400

if.end400:                                        ; preds = %if.end399, %land.end391
  br label %if.end401

if.end401:                                        ; preds = %if.end400, %land.end367
  call void @step_hash(i32 noundef 324)
  %264 = load ptr, ptr @g_397, align 8
  %265 = load ptr, ptr %264, align 8
  %266 = load ptr, ptr %265, align 8
  %267 = load ptr, ptr %l_274, align 8
  %268 = load ptr, ptr %267, align 8
  store ptr %266, ptr %268, align 8
  br label %for.inc402

for.inc402:                                       ; preds = %if.end401, %if.then281
  %269 = load i32, ptr %l_337, align 4
  %sub403 = sub nsw i32 %269, 1
  store i32 %sub403, ptr %l_337, align 4
  br label %for.cond248, !llvm.loop !19

for.end404:                                       ; preds = %if.then398, %if.then278, %for.cond248
  br label %for.inc405

for.inc405:                                       ; preds = %for.end404
  %270 = load i32, ptr @g_91, align 4
  %inc406 = add nsw i32 %270, 1
  store i32 %inc406, ptr @g_91, align 4
  br label %for.cond220, !llvm.loop !20

for.end407:                                       ; preds = %for.cond220
  call void @step_hash(i32 noundef 327)
  %271 = load ptr, ptr @g_68, align 8
  %272 = load i32, ptr %271, align 4
  %273 = load i32, ptr @g_105, align 4
  %274 = load i32, ptr @g_385, align 4
  %or408 = or i32 %273, %274
  %cmp409 = icmp sgt i32 %272, %or408
  %conv410 = zext i1 %cmp409 to i32
  %275 = load i32, ptr @g_385, align 4
  %conv411 = trunc i32 %275 to i8
  %conv412 = sext i8 %conv411 to i32
  %276 = load ptr, ptr @g_67, align 8
  %277 = load ptr, ptr %276, align 8
  %278 = load ptr, ptr @g_397, align 8
  %279 = load ptr, ptr %278, align 8
  %280 = load ptr, ptr %279, align 8
  %cmp413 = icmp eq ptr %277, %280
  %conv414 = zext i1 %cmp413 to i32
  %conv415 = trunc i32 %conv414 to i8
  %conv416 = sext i8 %conv415 to i32
  %shr417 = ashr i32 %conv412, %conv416
  %sub418 = sub nsw i32 0, %shr417
  %or419 = or i32 %conv410, %sub418
  %281 = load i8, ptr %l_367, align 1
  %conv420 = sext i8 %281 to i32
  %add421 = add nsw i32 %or419, %conv420
  %conv422 = trunc i32 %add421 to i16
  %conv423 = sext i16 %conv422 to i32
  %shr424 = ashr i32 %conv423, 9
  %cmp425 = icmp eq i32 0, %shr424
  %conv426 = zext i1 %cmp425 to i32
  %conv427 = trunc i32 %conv426 to i8
  %conv428 = sext i8 %conv427 to i32
  %282 = load i32, ptr @g_354, align 4
  %conv429 = trunc i32 %282 to i8
  %conv430 = sext i8 %conv429 to i32
  %rem431 = srem i32 %conv428, %conv430
  %283 = load i32, ptr @g_91, align 4
  %284 = load i8, ptr @g_22, align 1
  %conv432 = sext i8 %284 to i16
  %285 = load ptr, ptr %l_274, align 8
  %286 = load ptr, ptr %285, align 8
  %287 = load ptr, ptr %286, align 8
  %288 = load i32, ptr %287, align 4
  %289 = load i32, ptr @g_385, align 4
  %conv433 = trunc i32 %289 to i16
  %call434 = call i32 @func_15(i32 noundef %rem431, i32 noundef %283, i16 noundef zeroext %conv432, i32 noundef %288, i16 noundef zeroext %conv433)
  %tobool435 = icmp ne i32 %call434, 0
  br i1 %tobool435, label %land.rhs436, label %land.end437

land.rhs436:                                      ; preds = %for.end407
  br label %land.end437

land.end437:                                      ; preds = %land.rhs436, %for.end407
  %290 = phi i1 [ false, %for.end407 ], [ true, %land.rhs436 ]
  %land.ext438 = zext i1 %290 to i32
  %291 = load i32, ptr %l_414, align 4
  %xor439 = xor i32 %291, %land.ext438
  store i32 %xor439, ptr %l_414, align 4
  call void @step_hash(i32 noundef 428)
  %292 = load i32, ptr @g_385, align 4
  %cmp440 = icmp slt i32 0, %292
  br i1 %cmp440, label %if.then442, label %if.else511

if.then442:                                       ; preds = %land.end437
  store i16 0, ptr %l_419, align 2
  store i32 -771755005, ptr %l_429, align 4
  call void @step_hash(i32 noundef 329)
  %293 = load i32, ptr @g_105, align 4
  %tobool443 = icmp ne i32 %293, 0
  br i1 %tobool443, label %lor.end459, label %lor.rhs444

lor.rhs444:                                       ; preds = %if.then442
  %294 = load i32, ptr %l_414, align 4
  %tobool445 = icmp ne i32 %294, 0
  br i1 %tobool445, label %land.rhs446, label %land.end457

land.rhs446:                                      ; preds = %lor.rhs444
  %295 = load i16, ptr %l_419, align 2
  %conv447 = sext i16 %295 to i32
  %296 = load ptr, ptr @g_397, align 8
  %297 = load ptr, ptr %296, align 8
  %298 = load ptr, ptr @g_397, align 8
  %299 = load ptr, ptr %298, align 8
  %cmp448 = icmp ne ptr %297, %299
  %conv449 = zext i1 %cmp448 to i32
  %cmp450 = icmp sle i32 %conv447, %conv449
  %conv451 = zext i1 %cmp450 to i32
  %conv452 = trunc i32 %conv451 to i16
  %conv453 = zext i16 %conv452 to i32
  %300 = load i16, ptr %l_419, align 2
  %conv454 = zext i16 %300 to i32
  %rem455 = srem i32 %conv453, %conv454
  %tobool456 = icmp ne i32 %rem455, 0
  br label %land.end457

land.end457:                                      ; preds = %land.rhs446, %lor.rhs444
  %301 = phi i1 [ false, %lor.rhs444 ], [ %tobool456, %land.rhs446 ]
  br label %lor.end459

lor.end459:                                       ; preds = %land.end457, %if.then442
  %302 = phi i1 [ true, %if.then442 ], [ %301, %land.end457 ]
  %lor.ext460 = zext i1 %302 to i32
  %not461 = xor i32 %lor.ext460, -1
  %303 = load ptr, ptr @g_143, align 8
  %304 = load i32, ptr %303, align 4
  %and462 = and i32 %304, %not461
  store i32 %and462, ptr %303, align 4
  call void @step_hash(i32 noundef 365)
  store i32 0, ptr @g_75, align 4
  br label %for.cond463

for.cond463:                                      ; preds = %for.inc508, %lor.end459
  %305 = load i32, ptr @g_75, align 4
  %cmp464 = icmp eq i32 %305, 19
  br i1 %cmp464, label %for.body466, label %for.end510

for.body466:                                      ; preds = %for.cond463
  store i16 -5659, ptr %l_426, align 2
  call void @step_hash(i32 noundef 333)
  %306 = load ptr, ptr %l_274, align 8
  %307 = load ptr, ptr %306, align 8
  %308 = load ptr, ptr %307, align 8
  %309 = load i32, ptr %308, align 4
  %310 = load i8, ptr @g_22, align 1
  %conv467 = sext i8 %310 to i32
  %cmp468 = icmp eq i32 %309, %conv467
  %conv469 = zext i1 %cmp468 to i32
  %311 = load ptr, ptr @g_67, align 8
  %312 = load ptr, ptr %311, align 8
  %313 = load i32, ptr %312, align 4
  %and470 = and i32 %313, %conv469
  store i32 %and470, ptr %312, align 4
  call void @step_hash(i32 noundef 344)
  store i32 2, ptr %l_353, align 4
  br label %for.cond471

for.cond471:                                      ; preds = %for.inc497, %for.body466
  %314 = load i32, ptr %l_353, align 4
  %cmp472 = icmp ugt i32 %314, 14
  br i1 %cmp472, label %for.body474, label %for.end499

for.body474:                                      ; preds = %for.cond471
  call void @step_hash(i32 noundef 343)
  store i8 0, ptr @g_22, align 1
  br label %for.cond475

for.cond475:                                      ; preds = %for.inc492, %for.body474
  %315 = load i8, ptr @g_22, align 1
  %conv476 = sext i8 %315 to i32
  %cmp477 = icmp eq i32 %conv476, -7
  br i1 %cmp477, label %for.body479, label %for.end496

for.body479:                                      ; preds = %for.cond475
  call void @step_hash(i32 noundef 340)
  %316 = load i16, ptr %l_419, align 2
  %tobool480 = icmp ne i16 %316, 0
  br i1 %tobool480, label %if.then481, label %if.end482

if.then481:                                       ; preds = %for.body479
  br label %for.end496

if.end482:                                        ; preds = %for.body479
  call void @step_hash(i32 noundef 341)
  %317 = load i16, ptr %l_426, align 2
  %conv483 = zext i16 %317 to i32
  %tobool484 = icmp ne i32 %conv483, 0
  br i1 %tobool484, label %lor.end487, label %lor.rhs485

lor.rhs485:                                       ; preds = %if.end482
  %318 = load i32, ptr @g_179, align 4
  %tobool486 = icmp ne i32 %318, 0
  br label %lor.end487

lor.end487:                                       ; preds = %lor.rhs485, %if.end482
  %319 = phi i1 [ true, %if.end482 ], [ %tobool486, %lor.rhs485 ]
  %lor.ext488 = zext i1 %319 to i32
  %320 = load ptr, ptr @g_103, align 8
  %321 = load ptr, ptr %320, align 8
  store i32 %lor.ext488, ptr %321, align 4
  call void @step_hash(i32 noundef 342)
  %322 = load ptr, ptr @g_68, align 8
  %323 = load i32, ptr %322, align 4
  %tobool489 = icmp ne i32 %323, 0
  br i1 %tobool489, label %if.then490, label %if.end491

if.then490:                                       ; preds = %lor.end487
  br label %for.end496

if.end491:                                        ; preds = %lor.end487
  br label %for.inc492

for.inc492:                                       ; preds = %if.end491
  %324 = load i8, ptr @g_22, align 1
  %conv493 = sext i8 %324 to i32
  %sub494 = sub nsw i32 %conv493, 3
  %conv495 = trunc i32 %sub494 to i8
  store i8 %conv495, ptr @g_22, align 1
  br label %for.cond475, !llvm.loop !21

for.end496:                                       ; preds = %if.then490, %if.then481, %for.cond475
  br label %for.inc497

for.inc497:                                       ; preds = %for.end496
  %325 = load i32, ptr %l_353, align 4
  %inc498 = add i32 %325, 1
  store i32 %inc498, ptr %l_353, align 4
  br label %for.cond471, !llvm.loop !22

for.end499:                                       ; preds = %for.cond471
  call void @step_hash(i32 noundef 363)
  store i32 0, ptr @g_91, align 4
  br label %for.cond500

for.cond500:                                      ; preds = %for.inc504, %for.end499
  %326 = load i32, ptr @g_91, align 4
  %cmp501 = icmp ne i32 %326, -13
  br i1 %cmp501, label %for.body503, label %for.end506

for.body503:                                      ; preds = %for.cond500
  br label %for.inc504

for.inc504:                                       ; preds = %for.body503
  %327 = load i32, ptr @g_91, align 4
  %dec505 = add nsw i32 %327, -1
  store i32 %dec505, ptr @g_91, align 4
  br label %for.cond500, !llvm.loop !23

for.end506:                                       ; preds = %for.cond500
  call void @step_hash(i32 noundef 364)
  %328 = load i32, ptr %l_374, align 4
  %conv507 = trunc i32 %328 to i16
  store i16 %conv507, ptr %retval, align 2
  br label %return

for.inc508:                                       ; No predecessors!
  %329 = load i32, ptr @g_75, align 4
  %inc509 = add nsw i32 %329, 1
  store i32 %inc509, ptr @g_75, align 4
  br label %for.cond463, !llvm.loop !24

for.end510:                                       ; preds = %for.cond463
  br label %if.end853

if.else511:                                       ; preds = %land.end437
  store ptr %l_306, ptr %l_441, align 8
  store i32 1595500979, ptr %l_481, align 4
  store i16 -2, ptr %l_522, align 2
  call void @step_hash(i32 noundef 405)
  store i32 0, ptr @g_105, align 4
  br label %for.cond512

for.cond512:                                      ; preds = %for.inc634, %if.else511
  %330 = load i32, ptr @g_105, align 4
  %cmp513 = icmp sle i32 %330, 8
  br i1 %cmp513, label %for.body515, label %for.end636

for.body515:                                      ; preds = %for.cond512
  store ptr null, ptr %l_440, align 8
  call void @step_hash(i32 noundef 370)
  %331 = load ptr, ptr @g_143, align 8
  %332 = load i32, ptr %331, align 4
  %tobool516 = icmp ne i32 %332, 0
  br i1 %tobool516, label %if.then517, label %if.end518

if.then517:                                       ; preds = %for.body515
  br label %for.end636

if.end518:                                        ; preds = %for.body515
  call void @step_hash(i32 noundef 375)
  store i8 0, ptr @g_432, align 1
  br label %for.cond519

for.cond519:                                      ; preds = %for.inc525, %if.end518
  %333 = load i8, ptr @g_432, align 1
  %conv520 = zext i8 %333 to i32
  %cmp521 = icmp sle i32 %conv520, 8
  br i1 %cmp521, label %for.body523, label %for.end527

for.body523:                                      ; preds = %for.cond519
  store i32 1892611075, ptr %l_437, align 4
  call void @step_hash(i32 noundef 374)
  %334 = load i32, ptr %l_437, align 4
  %conv524 = trunc i32 %334 to i16
  store i16 %conv524, ptr %retval, align 2
  br label %return

for.inc525:                                       ; No predecessors!
  %335 = load i8, ptr @g_432, align 1
  %inc526 = add i8 %335, 1
  store i8 %inc526, ptr @g_432, align 1
  br label %for.cond519, !llvm.loop !25

for.end527:                                       ; preds = %for.cond519
  call void @step_hash(i32 noundef 393)
  store i32 26, ptr @g_354, align 4
  br label %for.cond528

for.cond528:                                      ; preds = %for.inc583, %for.end527
  %336 = load i32, ptr @g_354, align 4
  %cmp529 = icmp ne i32 %336, 0
  br i1 %cmp529, label %for.body531, label %for.end585

for.body531:                                      ; preds = %for.cond528
  call void @step_hash(i32 noundef 385)
  %337 = load ptr, ptr %l_440, align 8
  %cmp532 = icmp eq ptr null, %337
  br i1 %cmp532, label %if.then534, label %if.else538

if.then534:                                       ; preds = %for.body531
  call void @step_hash(i32 noundef 380)
  %338 = load ptr, ptr %l_441, align 8
  %339 = load ptr, ptr @g_102, align 8
  store ptr %338, ptr %339, align 8
  call void @step_hash(i32 noundef 381)
  %340 = load i32, ptr %l_374, align 4
  %tobool535 = icmp ne i32 %340, 0
  br i1 %tobool535, label %if.then536, label %if.end537

if.then536:                                       ; preds = %if.then534
  br label %for.end585

if.end537:                                        ; preds = %if.then534
  br label %if.end542

if.else538:                                       ; preds = %for.body531
  call void @step_hash(i32 noundef 383)
  %341 = load ptr, ptr @g_102, align 8
  %342 = load ptr, ptr %341, align 8
  %343 = load ptr, ptr %342, align 8
  %344 = load ptr, ptr @g_102, align 8
  %345 = load ptr, ptr %344, align 8
  store ptr %343, ptr %345, align 8
  call void @step_hash(i32 noundef 384)
  %346 = load ptr, ptr @g_67, align 8
  %347 = load ptr, ptr %346, align 8
  %348 = load i32, ptr %347, align 4
  %tobool539 = icmp ne i32 %348, 0
  br i1 %tobool539, label %if.then540, label %if.end541

if.then540:                                       ; preds = %if.else538
  br label %for.end585

if.end541:                                        ; preds = %if.else538
  br label %if.end542

if.end542:                                        ; preds = %if.end541, %if.end537
  call void @step_hash(i32 noundef 386)
  %349 = load i32, ptr @g_385, align 4
  %call543 = call i32 @func_9(i32 noundef %349)
  %conv544 = zext i32 %call543 to i64
  %350 = load ptr, ptr @g_67, align 8
  %351 = load ptr, ptr %350, align 8
  %352 = load i32, ptr %351, align 4
  %353 = load ptr, ptr @g_397, align 8
  %354 = load ptr, ptr %353, align 8
  %355 = load ptr, ptr %l_441, align 8
  %cmp545 = icmp eq ptr %354, %355
  %conv546 = zext i1 %cmp545 to i32
  %cmp547 = icmp eq i32 %352, %conv546
  %conv548 = zext i1 %cmp547 to i32
  %cmp549 = icmp slt i32 %conv548, 0
  %conv550 = zext i1 %cmp549 to i32
  %conv551 = sext i32 %conv550 to i64
  %and552 = and i64 %conv551, 184
  %and553 = and i64 %conv544, %and552
  %conv554 = trunc i64 %and553 to i32
  %rem555 = srem i32 0, %conv554
  %356 = load ptr, ptr @g_67, align 8
  %357 = load ptr, ptr %356, align 8
  store i32 %rem555, ptr %357, align 4
  call void @step_hash(i32 noundef 392)
  store i32 0, ptr @g_91, align 4
  br label %for.cond556

for.cond556:                                      ; preds = %for.inc580, %if.end542
  %358 = load i32, ptr @g_91, align 4
  %cmp557 = icmp sgt i32 %358, -22
  br i1 %cmp557, label %for.body559, label %for.end582

for.body559:                                      ; preds = %for.cond556
  store i8 84, ptr %l_448, align 1
  call void @step_hash(i32 noundef 390)
  %359 = load i8, ptr @g_8, align 1
  %conv560 = sext i8 %359 to i32
  %360 = load i8, ptr %l_448, align 1
  %conv561 = sext i8 %360 to i32
  %cmp562 = icmp ne i32 %conv560, %conv561
  %conv563 = zext i1 %cmp562 to i32
  %conv564 = sext i32 %conv563 to i64
  %cmp565 = icmp sge i64 %conv564, 29255
  %conv566 = zext i1 %cmp565 to i32
  %361 = load i32, ptr @g_75, align 4
  %cmp567 = icmp sgt i32 %conv566, %361
  %conv568 = zext i1 %cmp567 to i32
  %362 = load i32, ptr %l_374, align 4
  %cmp569 = icmp eq i32 %conv568, %362
  %conv570 = zext i1 %cmp569 to i32
  %363 = load i8, ptr %l_448, align 1
  %conv571 = sext i8 %363 to i32
  %364 = load i32, ptr @g_64, align 4
  %cmp572 = icmp sgt i32 %conv571, %364
  %conv573 = zext i1 %cmp572 to i32
  %365 = load i32, ptr %l_414, align 4
  %call574 = call i32 @func_9(i32 noundef %365)
  %cmp575 = icmp ugt i32 %conv573, %call574
  %conv576 = zext i1 %cmp575 to i32
  %cmp577 = icmp sge i32 %conv570, %conv576
  %conv578 = zext i1 %cmp577 to i32
  %366 = load ptr, ptr @g_67, align 8
  %367 = load ptr, ptr %366, align 8
  store i32 %conv578, ptr %367, align 4
  call void @step_hash(i32 noundef 391)
  %368 = load ptr, ptr @g_67, align 8
  %369 = load ptr, ptr %368, align 8
  %370 = load i32, ptr %369, align 4
  %371 = load ptr, ptr @g_143, align 8
  %372 = load i32, ptr %371, align 4
  %and579 = and i32 %372, %370
  store i32 %and579, ptr %371, align 4
  br label %for.inc580

for.inc580:                                       ; preds = %for.body559
  %373 = load i32, ptr @g_91, align 4
  %dec581 = add nsw i32 %373, -1
  store i32 %dec581, ptr @g_91, align 4
  br label %for.cond556, !llvm.loop !26

for.end582:                                       ; preds = %for.cond556
  br label %for.inc583

for.inc583:                                       ; preds = %for.end582
  %374 = load i32, ptr @g_354, align 4
  %dec584 = add nsw i32 %374, -1
  store i32 %dec584, ptr @g_354, align 4
  br label %for.cond528, !llvm.loop !27

for.end585:                                       ; preds = %if.then540, %if.then536, %for.cond528
  call void @step_hash(i32 noundef 404)
  store i8 21, ptr %l_215, align 1
  br label %for.cond586

for.cond586:                                      ; preds = %for.inc631, %for.end585
  %375 = load i8, ptr %l_215, align 1
  %conv587 = zext i8 %375 to i32
  %cmp588 = icmp ne i32 %conv587, 57
  br i1 %cmp588, label %for.body590, label %for.end633

for.body590:                                      ; preds = %for.cond586
  store ptr @g_143, ptr %l_451, align 8
  store i32 0, ptr %l_455, align 4
  store i32 -1, ptr %l_456, align 4
  call void @step_hash(i32 noundef 397)
  store ptr null, ptr %l_451, align 8
  call void @step_hash(i32 noundef 403)
  store i8 0, ptr @g_432, align 1
  br label %for.cond591

for.cond591:                                      ; preds = %for.inc628, %for.body590
  %376 = load i8, ptr @g_432, align 1
  %conv592 = zext i8 %376 to i32
  %cmp593 = icmp sle i32 %conv592, 49
  br i1 %cmp593, label %for.body595, label %for.end630

for.body595:                                      ; preds = %for.cond591
  call void @step_hash(i32 noundef 401)
  %377 = load ptr, ptr @g_397, align 8
  %378 = load ptr, ptr %377, align 8
  %379 = load ptr, ptr %378, align 8
  %380 = load ptr, ptr @g_102, align 8
  %381 = load ptr, ptr %380, align 8
  store ptr %379, ptr %381, align 8
  call void @step_hash(i32 noundef 402)
  %382 = load ptr, ptr @g_102, align 8
  %383 = load ptr, ptr %382, align 8
  %384 = load ptr, ptr %383, align 8
  %385 = load ptr, ptr @g_103, align 8
  %386 = load ptr, ptr %385, align 8
  %cmp596 = icmp ne ptr %384, %386
  %conv597 = zext i1 %cmp596 to i32
  %387 = load i16, ptr %l_454, align 2
  %conv598 = zext i16 %387 to i32
  %cmp599 = icmp slt i32 %conv597, %conv598
  br i1 %cmp599, label %land.rhs601, label %land.end617

land.rhs601:                                      ; preds = %for.body595
  %388 = load i32, ptr @g_91, align 4
  %389 = load i32, ptr @g_105, align 4
  %390 = load i32, ptr @g_385, align 4
  %391 = load i32, ptr @g_91, align 4
  %cmp602 = icmp eq i32 %390, %391
  %conv603 = zext i1 %cmp602 to i32
  %392 = load ptr, ptr %l_274, align 8
  %393 = load ptr, ptr %392, align 8
  %394 = load ptr, ptr %393, align 8
  %cmp604 = icmp ne ptr null, %394
  %conv605 = zext i1 %cmp604 to i32
  %395 = load i32, ptr @g_354, align 4
  %cmp606 = icmp eq i32 %conv605, %395
  %conv607 = zext i1 %cmp606 to i32
  %and608 = and i32 %conv603, %conv607
  %cmp609 = icmp sle i32 %389, %and608
  %conv610 = zext i1 %cmp609 to i32
  %and611 = and i32 %388, %conv610
  %conv612 = sext i32 %and611 to i64
  %cmp613 = icmp sle i64 1618703162, %conv612
  %conv614 = zext i1 %cmp613 to i32
  %396 = load i32, ptr %l_455, align 4
  %cmp615 = icmp sge i32 %conv614, %396
  br label %land.end617

land.end617:                                      ; preds = %land.rhs601, %for.body595
  %397 = phi i1 [ false, %for.body595 ], [ %cmp615, %land.rhs601 ]
  %land.ext618 = zext i1 %397 to i32
  %398 = load i32, ptr %l_456, align 4
  %cmp619 = icmp ule i32 %land.ext618, %398
  %conv620 = zext i1 %cmp619 to i32
  %conv621 = sext i32 %conv620 to i64
  %cmp622 = icmp sle i64 %conv621, 8
  br i1 %cmp622, label %land.rhs624, label %land.end625

land.rhs624:                                      ; preds = %land.end617
  br label %land.end625

land.end625:                                      ; preds = %land.rhs624, %land.end617
  %399 = phi i1 [ false, %land.end617 ], [ true, %land.rhs624 ]
  %land.ext626 = zext i1 %399 to i32
  %400 = load i32, ptr %l_414, align 4
  %and627 = and i32 %400, %land.ext626
  store i32 %and627, ptr %l_414, align 4
  br label %for.inc628

for.inc628:                                       ; preds = %land.end625
  %401 = load i8, ptr @g_432, align 1
  %inc629 = add i8 %401, 1
  store i8 %inc629, ptr @g_432, align 1
  br label %for.cond591, !llvm.loop !28

for.end630:                                       ; preds = %for.cond591
  br label %for.inc631

for.inc631:                                       ; preds = %for.end630
  %402 = load i8, ptr %l_215, align 1
  %inc632 = add i8 %402, 1
  store i8 %inc632, ptr %l_215, align 1
  br label %for.cond586, !llvm.loop !29

for.end633:                                       ; preds = %for.cond586
  br label %for.inc634

for.inc634:                                       ; preds = %for.end633
  %403 = load i32, ptr @g_105, align 4
  %add635 = add nsw i32 %403, 5
  store i32 %add635, ptr @g_105, align 4
  br label %for.cond512, !llvm.loop !30

for.end636:                                       ; preds = %if.then517, %for.cond512
  call void @step_hash(i32 noundef 406)
  %404 = load ptr, ptr @g_143, align 8
  %405 = load i32, ptr %404, align 4
  %406 = load ptr, ptr @g_143, align 8
  store i32 %405, ptr %406, align 4
  call void @step_hash(i32 noundef 426)
  store i32 0, ptr %l_337, align 4
  br label %for.cond637

for.cond637:                                      ; preds = %for.inc842, %for.end636
  %407 = load i32, ptr %l_337, align 4
  %cmp638 = icmp sgt i32 %407, -24
  br i1 %cmp638, label %for.body640, label %for.end844

for.body640:                                      ; preds = %for.cond637
  store i32 -6, ptr %l_478, align 4
  store ptr null, ptr %l_484, align 8
  store ptr %l_306, ptr %l_513, align 8
  store ptr @g_385, ptr %l_523, align 8
  store i8 0, ptr %l_524, align 1
  call void @step_hash(i32 noundef 422)
  %408 = load i8, ptr @g_22, align 1
  %conv641 = sext i8 %408 to i32
  %tobool642 = icmp ne i32 %conv641, 0
  %land.ext643 = zext i1 %tobool642 to i32
  %conv644 = trunc i32 %land.ext643 to i16
  %conv645 = sext i16 %conv644 to i32
  %409 = load ptr, ptr %l_467, align 8
  %410 = load ptr, ptr %409, align 8
  %411 = load ptr, ptr %410, align 8
  %412 = load ptr, ptr %l_441, align 8
  %413 = load ptr, ptr %412, align 8
  %414 = load ptr, ptr %l_441, align 8
  %415 = load ptr, ptr %414, align 8
  %call646 = call zeroext i16 @func_59(ptr noundef %411, ptr noundef %413, ptr noundef %415)
  %conv647 = sext i16 %call646 to i32
  %shr648 = ashr i32 %conv647, 6
  %416 = load i32, ptr @g_354, align 4
  %and649 = and i32 %shr648, %416
  %417 = load i32, ptr @g_179, align 4
  %cmp650 = icmp eq i32 %and649, %417
  %conv651 = zext i1 %cmp650 to i32
  %418 = load i32, ptr @g_179, align 4
  %sub652 = sub i32 %conv651, %418
  %conv653 = trunc i32 %sub652 to i16
  %conv654 = sext i16 %conv653 to i32
  %mul655 = mul nsw i32 %conv645, %conv654
  %conv656 = sext i32 %mul655 to i64
  %cmp657 = icmp eq i64 %conv656, 65535
  %conv658 = zext i1 %cmp657 to i32
  %conv659 = sext i32 %conv658 to i64
  %cmp660 = icmp eq i64 176, %conv659
  %conv661 = zext i1 %cmp660 to i32
  %conv662 = trunc i32 %conv661 to i16
  %conv663 = zext i16 %conv662 to i32
  %419 = load i8, ptr @g_22, align 1
  %conv664 = sext i8 %419 to i16
  %conv665 = zext i16 %conv664 to i32
  %sub666 = sub nsw i32 %conv663, %conv665
  %tobool667 = icmp ne i32 %sub666, 0
  br i1 %tobool667, label %if.then668, label %if.else718

if.then668:                                       ; preds = %for.body640
  store i16 0, ptr %l_469, align 2
  call void @step_hash(i32 noundef 411)
  %420 = load i8, ptr @g_432, align 1
  %conv669 = zext i8 %420 to i32
  %421 = load i16, ptr %l_469, align 2
  %conv670 = zext i16 %421 to i32
  %cmp671 = icmp sgt i32 %conv669, %conv670
  %conv672 = zext i1 %cmp671 to i32
  %422 = load ptr, ptr @g_68, align 8
  %423 = load i32, ptr %422, align 4
  %xor673 = xor i32 %423, %conv672
  store i32 %xor673, ptr %422, align 4
  call void @step_hash(i32 noundef 412)
  %424 = load i8, ptr @g_8, align 1
  %conv674 = sext i8 %424 to i32
  %425 = load i32, ptr %l_478, align 4
  %conv675 = trunc i32 %425 to i8
  %conv676 = sext i8 %conv675 to i32
  %sub677 = sub nsw i32 16, %conv676
  %sub678 = sub i32 %conv674, %sub677
  %426 = load i32, ptr %l_481, align 4
  %conv679 = sext i32 %426 to i64
  %cmp680 = icmp sgt i64 %conv679, 2650001701
  %lnot682 = xor i1 %cmp680, true
  %lnot.ext683 = zext i1 %lnot682 to i32
  %conv684 = trunc i32 %lnot.ext683 to i8
  %conv685 = sext i8 %conv684 to i32
  %shr686 = ashr i32 %conv685, 4
  %tobool687 = icmp ne i32 %shr686, 0
  br i1 %tobool687, label %lor.end692, label %lor.rhs688

lor.rhs688:                                       ; preds = %if.then668
  %427 = load ptr, ptr %l_467, align 8
  %428 = load ptr, ptr %427, align 8
  %429 = load ptr, ptr %428, align 8
  %430 = load i32, ptr %429, align 4
  %conv689 = sext i32 %430 to i64
  %or690 = or i64 %conv689, 4153599151
  %tobool691 = icmp ne i64 %or690, 0
  br label %lor.end692

lor.end692:                                       ; preds = %lor.rhs688, %if.then668
  %431 = phi i1 [ true, %if.then668 ], [ %tobool691, %lor.rhs688 ]
  %lor.ext693 = zext i1 %431 to i32
  %432 = load i8, ptr @g_22, align 1
  %conv694 = sext i8 %432 to i32
  %cmp695 = icmp eq i32 %lor.ext693, %conv694
  %conv696 = zext i1 %cmp695 to i32
  %cmp697 = icmp ugt i32 %sub678, %conv696
  %conv698 = zext i1 %cmp697 to i32
  %conv699 = trunc i32 %conv698 to i16
  %conv700 = sext i16 %conv699 to i32
  %433 = load i32, ptr @g_354, align 4
  %conv701 = trunc i32 %433 to i16
  %conv702 = sext i16 %conv701 to i32
  %shr703 = ashr i32 %conv700, %conv702
  %conv704 = trunc i32 %shr703 to i8
  %conv705 = sext i8 %conv704 to i32
  %434 = load i32, ptr @g_91, align 4
  %conv706 = trunc i32 %434 to i8
  %conv707 = sext i8 %conv706 to i32
  %shr708 = ashr i32 %conv705, %conv707
  %435 = load ptr, ptr @g_143, align 8
  store i32 %shr708, ptr %435, align 4
  call void @step_hash(i32 noundef 417)
  %436 = load i32, ptr %l_478, align 4
  %tobool709 = icmp ne i32 %436, 0
  br i1 %tobool709, label %if.then710, label %if.else716

if.then710:                                       ; preds = %lor.end692
  call void @step_hash(i32 noundef 414)
  %437 = load ptr, ptr %l_484, align 8
  %cmp711 = icmp ne ptr %437, null
  %conv712 = zext i1 %cmp711 to i32
  %conv713 = trunc i32 %conv712 to i16
  %conv714 = sext i16 %conv713 to i32
  %add715 = add nsw i32 5, %conv714
  %438 = load ptr, ptr @g_67, align 8
  %439 = load ptr, ptr %438, align 8
  store i32 %add715, ptr %439, align 4
  br label %if.end717

if.else716:                                       ; preds = %lor.end692
  call void @step_hash(i32 noundef 416)
  %440 = load ptr, ptr @g_103, align 8
  %441 = load ptr, ptr %440, align 8
  %442 = load ptr, ptr %l_274, align 8
  %443 = load ptr, ptr %442, align 8
  store ptr %441, ptr %443, align 8
  br label %if.end717

if.end717:                                        ; preds = %if.else716, %if.then710
  br label %if.end805

if.else718:                                       ; preds = %for.body640
  store ptr @g_179, ptr %l_496, align 8
  call void @step_hash(i32 noundef 419)
  %444 = load ptr, ptr @g_143, align 8
  %445 = load i32, ptr %444, align 4
  %tobool719 = icmp ne i32 %445, 0
  br i1 %tobool719, label %if.then720, label %if.end721

if.then720:                                       ; preds = %if.else718
  br label %for.end844

if.end721:                                        ; preds = %if.else718
  call void @step_hash(i32 noundef 420)
  %446 = load ptr, ptr @g_102, align 8
  %447 = load ptr, ptr %446, align 8
  %cmp722 = icmp eq ptr %447, null
  %lnot724 = xor i1 %cmp722, true
  %lnot.ext725 = zext i1 %lnot724 to i32
  %conv726 = sext i32 %lnot.ext725 to i64
  %and727 = and i64 10362, %conv726
  %448 = load i32, ptr @g_354, align 4
  %conv728 = sext i32 %448 to i64
  %or729 = or i64 %and727, %conv728
  %conv730 = trunc i64 %or729 to i32
  %449 = load i32, ptr @g_385, align 4
  %conv731 = trunc i32 %449 to i16
  %conv732 = sext i16 %conv731 to i32
  %450 = load ptr, ptr %l_467, align 8
  %451 = load ptr, ptr %450, align 8
  %452 = load ptr, ptr %451, align 8
  %453 = load i32, ptr %452, align 4
  %454 = load i32, ptr @g_354, align 4
  %tobool733 = icmp ne i32 %454, 0
  br i1 %tobool733, label %land.rhs734, label %land.end738

land.rhs734:                                      ; preds = %if.end721
  %455 = load i32, ptr %l_495, align 4
  %call735 = call signext i16 @func_26(i32 noundef %455)
  %conv736 = sext i16 %call735 to i32
  %tobool737 = icmp ne i32 %conv736, 0
  br label %land.end738

land.end738:                                      ; preds = %land.rhs734, %if.end721
  %456 = phi i1 [ false, %if.end721 ], [ %tobool737, %land.rhs734 ]
  %land.ext739 = zext i1 %456 to i32
  %and740 = and i32 %453, %land.ext739
  %conv741 = trunc i32 %and740 to i16
  %conv742 = zext i16 %conv741 to i32
  %rem743 = srem i32 %conv742, 64063
  %conv744 = trunc i32 %rem743 to i16
  %conv745 = sext i16 %conv744 to i32
  %shl746 = shl i32 %conv732, %conv745
  %conv747 = trunc i32 %shl746 to i16
  %457 = load i32, ptr @g_354, align 4
  %conv748 = trunc i32 %457 to i16
  %call749 = call i32 @func_52(i16 noundef zeroext %conv747, i16 noundef zeroext %conv748)
  %conv750 = trunc i32 %call749 to i16
  %conv751 = zext i16 %conv750 to i32
  %458 = load i8, ptr @g_432, align 1
  %conv752 = zext i8 %458 to i16
  %conv753 = zext i16 %conv752 to i32
  %div754 = sdiv i32 %conv751, %conv753
  %conv755 = sext i32 %div754 to i64
  %cmp756 = icmp ne i64 %conv755, -1
  %conv757 = zext i1 %cmp756 to i32
  %conv758 = trunc i32 %conv757 to i16
  %conv759 = zext i16 %conv758 to i32
  %459 = load i32, ptr @g_385, align 4
  %conv760 = trunc i32 %459 to i16
  %conv761 = zext i16 %conv760 to i32
  %div762 = sdiv i32 %conv759, %conv761
  %rem763 = urem i32 %conv730, %div762
  %tobool764 = icmp ne i32 %rem763, 0
  br i1 %tobool764, label %land.rhs765, label %land.end767

land.rhs765:                                      ; preds = %land.end738
  %460 = load ptr, ptr %l_467, align 8
  %461 = load ptr, ptr %460, align 8
  %462 = load ptr, ptr %461, align 8
  %463 = load i32, ptr %462, align 4
  %tobool766 = icmp ne i32 %463, 0
  br label %land.end767

land.end767:                                      ; preds = %land.rhs765, %land.end738
  %464 = phi i1 [ false, %land.end738 ], [ %tobool766, %land.rhs765 ]
  %land.ext768 = zext i1 %464 to i32
  %465 = load ptr, ptr %l_496, align 8
  %466 = load i32, ptr %465, align 4
  %xor769 = xor i32 %466, %land.ext768
  store i32 %xor769, ptr %465, align 4
  call void @step_hash(i32 noundef 421)
  %467 = load i32, ptr @g_64, align 4
  %tobool770 = icmp ne i32 %467, 0
  br i1 %tobool770, label %lor.end772, label %lor.rhs771

lor.rhs771:                                       ; preds = %land.end767
  br label %lor.end772

lor.end772:                                       ; preds = %lor.rhs771, %land.end767
  %468 = phi i1 [ true, %land.end767 ], [ true, %lor.rhs771 ]
  %lor.ext773 = zext i1 %468 to i32
  %conv774 = trunc i32 %lor.ext773 to i8
  %conv775 = zext i8 %conv774 to i32
  %469 = load ptr, ptr %l_496, align 8
  %470 = load i32, ptr %469, align 4
  %conv776 = trunc i32 %470 to i8
  %conv777 = zext i8 %conv776 to i32
  %shr778 = ashr i32 %conv777, 1
  %471 = load i32, ptr %l_481, align 4
  %call779 = call i32 @func_9(i32 noundef %471)
  %rem780 = srem i32 %shr778, %call779
  %tobool781 = icmp ne i32 %rem780, 0
  br i1 %tobool781, label %land.rhs782, label %land.end796

land.rhs782:                                      ; preds = %lor.end772
  %472 = load i32, ptr @g_91, align 4
  %473 = load i32, ptr @g_385, align 4
  %cmp783 = icmp sge i32 %472, %473
  %conv784 = zext i1 %cmp783 to i32
  %474 = load ptr, ptr @g_143, align 8
  %475 = load i32, ptr %474, align 4
  %cmp785 = icmp sgt i32 %conv784, %475
  %conv786 = zext i1 %cmp785 to i32
  %cmp787 = icmp eq i32 -336, %conv786
  %conv788 = zext i1 %cmp787 to i32
  %conv789 = sext i32 %conv788 to i64
  %cmp790 = icmp sle i64 1, %conv789
  %conv791 = zext i1 %cmp790 to i32
  %conv792 = trunc i32 %conv791 to i8
  %conv793 = zext i8 %conv792 to i32
  %sub794 = sub nsw i32 %conv793, 201
  %tobool795 = icmp ne i32 %sub794, 0
  br label %land.end796

land.end796:                                      ; preds = %land.rhs782, %lor.end772
  %476 = phi i1 [ false, %lor.end772 ], [ %tobool795, %land.rhs782 ]
  %land.ext797 = zext i1 %476 to i32
  %conv798 = trunc i32 %land.ext797 to i8
  %conv799 = zext i8 %conv798 to i32
  %mul800 = mul nsw i32 %conv775, %conv799
  %add801 = add nsw i32 1, %mul800
  %conv802 = trunc i32 %add801 to i16
  %conv803 = sext i16 %conv802 to i32
  %shl804 = shl i32 %conv803, 4
  %477 = load ptr, ptr %l_467, align 8
  %478 = load ptr, ptr %477, align 8
  %479 = load ptr, ptr %478, align 8
  store i32 %shl804, ptr %479, align 4
  br label %if.end805

if.end805:                                        ; preds = %land.end796, %if.end717
  call void @step_hash(i32 noundef 423)
  %480 = load i32, ptr @g_75, align 4
  %call806 = call i32 @func_9(i32 noundef %480)
  %xor807 = xor i32 1, %call806
  %481 = load ptr, ptr %l_513, align 8
  %cmp808 = icmp ne ptr %481, null
  %conv809 = zext i1 %cmp808 to i32
  %482 = load i32, ptr @g_64, align 4
  %conv810 = trunc i32 %482 to i16
  %conv811 = zext i16 %conv810 to i32
  %shl812 = shl i32 %conv811, 3
  %sub813 = sub nsw i32 %conv809, %shl812
  %and814 = and i32 %xor807, %sub813
  %483 = load ptr, ptr @g_143, align 8
  %484 = load i32, ptr %483, align 4
  %485 = load ptr, ptr @g_67, align 8
  %486 = load ptr, ptr %485, align 8
  %487 = load i32, ptr %486, align 4
  %sub815 = sub nsw i32 -6, %487
  %call816 = call signext i16 @func_26(i32 noundef %sub815)
  %conv817 = sext i16 %call816 to i32
  %tobool818 = icmp ne i32 %conv817, 0
  br i1 %tobool818, label %land.lhs.true, label %lor.rhs820

land.lhs.true:                                    ; preds = %if.end805
  %488 = load i32, ptr %l_481, align 4
  %tobool819 = icmp ne i32 %488, 0
  br i1 %tobool819, label %lor.end823, label %lor.rhs820

lor.rhs820:                                       ; preds = %land.lhs.true, %if.end805
  %489 = load i8, ptr @g_8, align 1
  %conv821 = sext i8 %489 to i32
  %tobool822 = icmp ne i32 %conv821, 0
  br label %lor.end823

lor.end823:                                       ; preds = %lor.rhs820, %land.lhs.true
  %490 = phi i1 [ true, %land.lhs.true ], [ %tobool822, %lor.rhs820 ]
  %lor.ext824 = zext i1 %490 to i32
  %cmp825 = icmp sge i32 %484, %lor.ext824
  %conv826 = zext i1 %cmp825 to i32
  %conv827 = trunc i32 %conv826 to i16
  %conv828 = zext i16 %conv827 to i32
  %491 = load i16, ptr %l_522, align 2
  %conv829 = zext i16 %491 to i32
  %sub830 = sub nsw i32 %conv828, %conv829
  %conv831 = trunc i32 %sub830 to i16
  %conv832 = zext i16 %conv831 to i32
  %mul833 = mul nsw i32 %conv832, 65531
  %and834 = and i32 %and814, %mul833
  %492 = load ptr, ptr %l_523, align 8
  %493 = load i32, ptr %492, align 4
  %or835 = or i32 %493, %and834
  store i32 %or835, ptr %492, align 4
  call void @step_hash(i32 noundef 424)
  %494 = load i8, ptr %l_524, align 1
  %tobool836 = icmp ne i8 %494, 0
  br i1 %tobool836, label %if.then837, label %if.end838

if.then837:                                       ; preds = %lor.end823
  br label %for.inc842

if.end838:                                        ; preds = %lor.end823
  call void @step_hash(i32 noundef 425)
  %495 = load i32, ptr %l_525, align 4
  %tobool839 = icmp ne i32 %495, 0
  br i1 %tobool839, label %if.then840, label %if.end841

if.then840:                                       ; preds = %if.end838
  br label %for.inc842

if.end841:                                        ; preds = %if.end838
  br label %for.inc842

for.inc842:                                       ; preds = %if.end841, %if.then840, %if.then837
  %496 = load i32, ptr %l_337, align 4
  %sub843 = sub nsw i32 %496, 7
  store i32 %sub843, ptr %l_337, align 4
  br label %for.cond637, !llvm.loop !31

for.end844:                                       ; preds = %if.then720, %for.cond637
  call void @step_hash(i32 noundef 427)
  %497 = load i32, ptr @g_354, align 4
  %conv845 = trunc i32 %497 to i16
  %conv846 = zext i16 %conv845 to i32
  %498 = load ptr, ptr %l_467, align 8
  %499 = load ptr, ptr %498, align 8
  %500 = load ptr, ptr %499, align 8
  %501 = load i32, ptr %500, align 4
  %conv847 = sext i32 %501 to i64
  %or848 = or i64 %conv847, 23
  %conv849 = trunc i64 %or848 to i16
  %conv850 = zext i16 %conv849 to i32
  %add851 = add nsw i32 %conv846, %conv850
  %502 = load ptr, ptr @g_143, align 8
  %503 = load i32, ptr %502, align 4
  %or852 = or i32 %503, %add851
  store i32 %or852, ptr %502, align 4
  br label %if.end853

if.end853:                                        ; preds = %for.end844, %for.end510
  call void @step_hash(i32 noundef 485)
  store i32 -13, ptr %l_307, align 4
  br label %for.cond854

for.cond854:                                      ; preds = %for.inc1206, %if.end853
  %504 = load i32, ptr %l_307, align 4
  %cmp855 = icmp eq i32 %504, 9
  br i1 %cmp855, label %for.body857, label %for.end1208

for.body857:                                      ; preds = %for.cond854
  store i8 -17, ptr %l_530, align 1
  store ptr %l_414, ptr %l_531, align 8
  store ptr @g_91, ptr %l_583, align 8
  store i8 -95, ptr %l_588, align 1
  store i32 1632671234, ptr %l_653, align 4
  store i32 -2, ptr %l_661, align 4
  store ptr null, ptr %l_662, align 8
  call void @step_hash(i32 noundef 432)
  %505 = load i8, ptr %l_530, align 1
  %conv858 = zext i8 %505 to i32
  %506 = load ptr, ptr @g_143, align 8
  %507 = load i32, ptr %506, align 4
  %cmp859 = icmp eq i32 %conv858, %507
  %conv860 = zext i1 %cmp859 to i32
  %508 = load i32, ptr @g_91, align 4
  %call861 = call i32 @func_9(i32 noundef %508)
  %cmp862 = icmp ne i32 %conv860, %call861
  %conv863 = zext i1 %cmp862 to i32
  %conv864 = trunc i32 %conv863 to i16
  %509 = load ptr, ptr %l_531, align 8
  %510 = load i8, ptr @g_432, align 1
  %conv865 = zext i8 %510 to i32
  %call866 = call ptr @func_55(i16 noundef signext %conv864, ptr noundef %509, i32 noundef %conv865)
  %511 = load ptr, ptr @g_67, align 8
  store ptr %call866, ptr %511, align 8
  call void @step_hash(i32 noundef 484)
  %512 = load ptr, ptr %l_467, align 8
  %513 = load ptr, ptr %512, align 8
  %514 = load ptr, ptr %513, align 8
  %515 = load i32, ptr %514, align 4
  %conv867 = trunc i32 %515 to i8
  %conv868 = sext i8 %conv867 to i32
  %shr869 = ashr i32 %conv868, 4
  %tobool870 = icmp ne i32 %shr869, 0
  br i1 %tobool870, label %if.then871, label %if.else1015

if.then871:                                       ; preds = %for.body857
  store i16 16540, ptr %l_548, align 2
  store ptr @g_68, ptr %l_571, align 8
  call void @step_hash(i32 noundef 447)
  store i8 0, ptr %l_215, align 1
  br label %for.cond872

for.cond872:                                      ; preds = %for.inc1003, %if.then871
  %516 = load i8, ptr %l_215, align 1
  %conv873 = zext i8 %516 to i32
  %cmp874 = icmp ne i32 %conv873, 51
  br i1 %cmp874, label %for.body876, label %for.end1005

for.body876:                                      ; preds = %for.cond872
  store i32 1436024439, ptr %l_549, align 4
  call void @step_hash(i32 noundef 437)
  %517 = load i8, ptr %l_536, align 1
  %conv877 = zext i8 %517 to i32
  %518 = load ptr, ptr @g_67, align 8
  %519 = load ptr, ptr %518, align 8
  %520 = load i32, ptr %519, align 4
  %and878 = and i32 %520, %conv877
  store i32 %and878, ptr %519, align 4
  call void @step_hash(i32 noundef 438)
  %521 = load ptr, ptr @g_67, align 8
  %522 = load ptr, ptr %521, align 8
  %523 = load i32, ptr %522, align 4
  %tobool879 = icmp ne i32 %523, 0
  br i1 %tobool879, label %if.then880, label %if.end881

if.then880:                                       ; preds = %for.body876
  br label %for.inc1003

if.end881:                                        ; preds = %for.body876
  call void @step_hash(i32 noundef 445)
  %524 = load i32, ptr @g_385, align 4
  %conv882 = trunc i32 %524 to i16
  %conv883 = zext i16 %conv882 to i32
  %add884 = add nsw i32 %conv883, 50342
  %conv885 = trunc i32 %add884 to i16
  %525 = load i32, ptr @g_354, align 4
  %conv886 = trunc i32 %525 to i16
  %conv887 = sext i16 %conv886 to i32
  %sub888 = sub nsw i32 0, %conv887
  %526 = load ptr, ptr %l_467, align 8
  %527 = load ptr, ptr %526, align 8
  %528 = load ptr, ptr %527, align 8
  %529 = load i32, ptr %528, align 4
  %sub889 = sub nsw i32 %sub888, %529
  %530 = load ptr, ptr %l_531, align 8
  %531 = load i32, ptr %530, align 4
  %cmp890 = icmp eq i32 %sub889, %531
  %conv891 = zext i1 %cmp890 to i32
  %532 = load ptr, ptr @g_67, align 8
  %533 = load ptr, ptr %532, align 8
  %534 = load i32, ptr %533, align 4
  %conv892 = sext i32 %534 to i64
  %and893 = and i64 %conv892, 3897396727
  %conv894 = trunc i64 %and893 to i16
  %conv895 = sext i16 %conv894 to i32
  %535 = load i32, ptr @g_105, align 4
  %conv896 = trunc i32 %535 to i16
  %conv897 = sext i16 %conv896 to i32
  %mul898 = mul nsw i32 %conv895, %conv897
  %tobool899 = icmp ne i32 %mul898, 0
  %lnot900 = xor i1 %tobool899, true
  %lnot.ext901 = zext i1 %lnot900 to i32
  %536 = load ptr, ptr %l_531, align 8
  %537 = load i32, ptr %536, align 4
  %conv902 = trunc i32 %537 to i16
  %538 = load ptr, ptr @g_143, align 8
  %539 = load i32, ptr %538, align 4
  %540 = load ptr, ptr %l_467, align 8
  %541 = load ptr, ptr %540, align 8
  %542 = load ptr, ptr %541, align 8
  %543 = load i32, ptr %542, align 4
  %conv903 = trunc i32 %543 to i16
  %call904 = call i32 @func_15(i32 noundef %conv891, i32 noundef %lnot.ext901, i16 noundef zeroext %conv902, i32 noundef %539, i16 noundef zeroext %conv903)
  %conv905 = trunc i32 %call904 to i16
  %conv906 = zext i16 %conv905 to i32
  %544 = load i16, ptr %l_548, align 2
  %conv907 = zext i16 %544 to i32
  %mul908 = mul nsw i32 %conv906, %conv907
  %545 = load ptr, ptr @g_143, align 8
  %546 = load i32, ptr %545, align 4
  %cmp909 = icmp eq i32 %mul908, %546
  %conv910 = zext i1 %cmp909 to i32
  %547 = load i32, ptr %l_549, align 4
  %548 = load i8, ptr @g_432, align 1
  %549 = load i32, ptr @g_385, align 4
  %conv911 = trunc i32 %549 to i16
  %call912 = call i32 @func_2(i16 noundef signext %conv885, i32 noundef %conv910, i32 noundef %547, i8 noundef zeroext %548, i16 noundef signext %conv911)
  %550 = load i32, ptr @g_105, align 4
  %cmp913 = icmp sle i32 %call912, %550
  %conv914 = zext i1 %cmp913 to i32
  %conv915 = sext i32 %conv914 to i64
  %cmp916 = icmp ne i64 189, %conv915
  br i1 %cmp916, label %lor.end919, label %lor.rhs918

lor.rhs918:                                       ; preds = %if.end881
  br label %lor.end919

lor.end919:                                       ; preds = %lor.rhs918, %if.end881
  %551 = phi i1 [ true, %if.end881 ], [ true, %lor.rhs918 ]
  %lor.ext920 = zext i1 %551 to i32
  %552 = load i32, ptr @g_105, align 4
  %add921 = add i32 %lor.ext920, %552
  %tobool922 = icmp ne i32 %add921, 0
  br i1 %tobool922, label %if.then923, label %if.else992

if.then923:                                       ; preds = %lor.end919
  store i8 -2, ptr %l_554, align 1
  store ptr %l_531, ptr %l_567, align 8
  store ptr null, ptr %l_568, align 8
  call void @step_hash(i32 noundef 440)
  %553 = load ptr, ptr %l_531, align 8
  %554 = load i32, ptr %553, align 4
  %conv924 = trunc i32 %554 to i16
  %conv925 = zext i16 %conv924 to i32
  %555 = load i8, ptr %l_554, align 1
  %conv926 = zext i8 %555 to i16
  %conv927 = zext i16 %conv926 to i32
  %rem928 = srem i32 %conv925, %conv927
  %556 = load ptr, ptr @g_102, align 8
  %557 = load ptr, ptr %556, align 8
  %558 = load ptr, ptr %557, align 8
  %cmp929 = icmp eq ptr %l_549, %558
  %conv930 = zext i1 %cmp929 to i32
  %conv931 = trunc i32 %conv930 to i16
  %conv932 = zext i16 %conv931 to i32
  %559 = load i16, ptr %l_548, align 2
  %conv933 = zext i16 %559 to i32
  %div934 = sdiv i32 %conv932, %conv933
  %conv935 = sext i32 %div934 to i64
  %cmp936 = icmp sge i64 24846, %conv935
  %conv937 = zext i1 %cmp936 to i32
  %or938 = or i32 %rem928, %conv937
  %560 = load i32, ptr %l_549, align 4
  %cmp939 = icmp eq i32 %or938, %560
  %conv940 = zext i1 %cmp939 to i32
  %561 = load i32, ptr %l_549, align 4
  %tobool941 = icmp ne i32 %561, 0
  %lnot942 = xor i1 %tobool941, true
  %lnot.ext943 = zext i1 %lnot942 to i32
  %cmp944 = icmp slt i32 %conv940, %lnot.ext943
  %conv945 = zext i1 %cmp944 to i32
  %562 = load i32, ptr @g_179, align 4
  %conv946 = sext i32 %562 to i64
  %cmp947 = icmp ne i64 %conv946, 26485
  %conv948 = zext i1 %cmp947 to i32
  %cmp949 = icmp eq i32 %conv945, %conv948
  %conv950 = zext i1 %cmp949 to i32
  %563 = load ptr, ptr @g_67, align 8
  %564 = load ptr, ptr %563, align 8
  %565 = load i32, ptr %564, align 4
  %cmp951 = icmp sgt i32 %conv950, %565
  %conv952 = zext i1 %cmp951 to i32
  %566 = load ptr, ptr @g_143, align 8
  %567 = load i32, ptr %566, align 4
  %or953 = or i32 %567, %conv952
  store i32 %or953, ptr %566, align 4
  call void @step_hash(i32 noundef 441)
  %568 = load i32, ptr %l_549, align 4
  %569 = load ptr, ptr %l_531, align 8
  %570 = load i32, ptr %569, align 4
  %xor954 = xor i32 %570, %568
  store i32 %xor954, ptr %569, align 4
  call void @step_hash(i32 noundef 442)
  %571 = load i8, ptr %l_554, align 1
  %conv955 = zext i8 %571 to i16
  %conv956 = zext i16 %conv955 to i32
  %572 = load i32, ptr @g_105, align 4
  %conv957 = trunc i32 %572 to i16
  %573 = load i32, ptr %l_549, align 4
  %conv958 = trunc i32 %573 to i16
  %call959 = call i32 @func_52(i16 noundef zeroext %conv957, i16 noundef zeroext %conv958)
  %574 = load ptr, ptr %l_531, align 8
  %575 = load i32, ptr %574, align 4
  %cmp960 = icmp ne i32 %call959, %575
  %conv961 = zext i1 %cmp960 to i32
  %576 = load ptr, ptr %l_567, align 8
  %577 = load ptr, ptr %l_568, align 8
  %cmp962 = icmp ne ptr %576, %577
  %conv963 = zext i1 %cmp962 to i32
  %conv964 = sext i32 %conv963 to i64
  %cmp965 = icmp ne i64 3034712203, %conv964
  %conv966 = zext i1 %cmp965 to i32
  %cmp967 = icmp ne i32 %conv961, %conv966
  %conv968 = zext i1 %cmp967 to i32
  %conv969 = trunc i32 %conv968 to i16
  %conv970 = zext i16 %conv969 to i32
  %div971 = sdiv i32 %conv970, 65533
  %conv972 = sext i32 %div971 to i64
  %cmp973 = icmp ne i64 %conv972, 136
  %conv974 = zext i1 %cmp973 to i32
  %conv975 = sext i32 %conv974 to i64
  %cmp976 = icmp sle i64 %conv975, 31816
  %conv977 = zext i1 %cmp976 to i32
  %conv978 = trunc i32 %conv977 to i16
  %conv979 = zext i16 %conv978 to i32
  %add980 = add nsw i32 %conv956, %conv979
  %conv981 = trunc i32 %add980 to i8
  %conv982 = zext i8 %conv981 to i32
  %div983 = sdiv i32 52, %conv982
  %conv984 = trunc i32 %div983 to i16
  %conv985 = sext i16 %conv984 to i32
  %shr986 = ashr i32 %conv985, 6
  %tobool987 = icmp ne i32 %shr986, 0
  br i1 %tobool987, label %lor.end990, label %lor.rhs988

lor.rhs988:                                       ; preds = %if.then923
  %578 = load i32, ptr @g_105, align 4
  %tobool989 = icmp ne i32 %578, 0
  br label %lor.end990

lor.end990:                                       ; preds = %lor.rhs988, %if.then923
  %579 = phi i1 [ true, %if.then923 ], [ %tobool989, %lor.rhs988 ]
  %lor.ext991 = zext i1 %579 to i32
  %580 = load ptr, ptr %l_567, align 8
  %581 = load ptr, ptr %580, align 8
  store i32 %lor.ext991, ptr %581, align 4
  br label %if.end993

if.else992:                                       ; preds = %lor.end919
  call void @step_hash(i32 noundef 444)
  %582 = load ptr, ptr %l_531, align 8
  %583 = load i32, ptr %582, align 4
  %584 = load ptr, ptr @g_68, align 8
  store i32 %583, ptr %584, align 4
  br label %if.end993

if.end993:                                        ; preds = %if.else992, %lor.end990
  call void @step_hash(i32 noundef 446)
  %585 = load ptr, ptr @g_102, align 8
  %586 = load ptr, ptr %585, align 8
  %cmp994 = icmp ne ptr %l_531, %586
  %conv995 = zext i1 %cmp994 to i32
  %conv996 = trunc i32 %conv995 to i8
  %conv997 = sext i8 %conv996 to i32
  %shr998 = ashr i32 %conv997, 3
  %587 = load ptr, ptr %l_571, align 8
  %588 = load ptr, ptr %l_571, align 8
  %cmp999 = icmp eq ptr %587, %588
  %conv1000 = zext i1 %cmp999 to i32
  %cmp1001 = icmp sge i32 %shr998, %conv1000
  %conv1002 = zext i1 %cmp1001 to i32
  %589 = load ptr, ptr %l_467, align 8
  %590 = load ptr, ptr %589, align 8
  %591 = load ptr, ptr %590, align 8
  store i32 %conv1002, ptr %591, align 4
  br label %for.inc1003

for.inc1003:                                      ; preds = %if.end993, %if.then880
  %592 = load i8, ptr %l_215, align 1
  %inc1004 = add i8 %592, 1
  store i8 %inc1004, ptr %l_215, align 1
  br label %for.cond872, !llvm.loop !32

for.end1005:                                      ; preds = %for.cond872
  call void @step_hash(i32 noundef 448)
  %593 = load ptr, ptr @g_102, align 8
  %594 = load ptr, ptr %593, align 8
  %cmp1006 = icmp eq ptr %l_531, %594
  %conv1007 = zext i1 %cmp1006 to i32
  %595 = load ptr, ptr %l_531, align 8
  store i32 %conv1007, ptr %595, align 4
  call void @step_hash(i32 noundef 466)
  store i32 -5, ptr @g_354, align 4
  br label %for.cond1008

for.cond1008:                                     ; preds = %for.inc1012, %for.end1005
  %596 = load i32, ptr @g_354, align 4
  %cmp1009 = icmp slt i32 %596, -15
  br i1 %cmp1009, label %for.body1011, label %for.end1014

for.body1011:                                     ; preds = %for.cond1008
  store ptr @g_67, ptr %l_605, align 8
  br label %for.inc1012

for.inc1012:                                      ; preds = %for.body1011
  %597 = load i32, ptr @g_354, align 4
  %sub1013 = sub nsw i32 %597, 8
  store i32 %sub1013, ptr @g_354, align 4
  br label %for.cond1008, !llvm.loop !33

for.end1014:                                      ; preds = %for.cond1008
  br label %if.end1205

if.else1015:                                      ; preds = %for.body857
  store i32 -1741072011, ptr %l_654, align 4
  store ptr null, ptr %l_657, align 8
  call void @step_hash(i32 noundef 468)
  %598 = load i32, ptr @g_105, align 4
  %conv1016 = trunc i32 %598 to i8
  %conv1017 = sext i8 %conv1016 to i32
  %599 = load ptr, ptr %l_274, align 8
  %600 = load ptr, ptr %599, align 8
  %cmp1018 = icmp ne ptr null, %600
  %conv1019 = zext i1 %cmp1018 to i32
  %601 = load i8, ptr @g_432, align 1
  %conv1020 = zext i8 %601 to i32
  %602 = load ptr, ptr @g_67, align 8
  %603 = load ptr, ptr %602, align 8
  %604 = load i32, ptr %603, align 4
  %and1021 = and i32 %conv1020, %604
  %tobool1022 = icmp ne i32 %and1021, 0
  br i1 %tobool1022, label %lor.end1028, label %lor.rhs1023

lor.rhs1023:                                      ; preds = %if.else1015
  %605 = load ptr, ptr %l_467, align 8
  %606 = load ptr, ptr %605, align 8
  %607 = load ptr, ptr %606, align 8
  %608 = load i32, ptr %607, align 4
  %conv1024 = trunc i32 %608 to i8
  %conv1025 = zext i8 %conv1024 to i32
  %mul1026 = mul nsw i32 136, %conv1025
  %tobool1027 = icmp ne i32 %mul1026, 0
  br label %lor.end1028

lor.end1028:                                      ; preds = %lor.rhs1023, %if.else1015
  %609 = phi i1 [ true, %if.else1015 ], [ %tobool1027, %lor.rhs1023 ]
  %lor.ext1029 = zext i1 %609 to i32
  %conv1030 = trunc i32 %lor.ext1029 to i8
  %conv1031 = zext i8 %conv1030 to i32
  %610 = load i32, ptr @g_624, align 4
  %conv1032 = trunc i32 %610 to i8
  %conv1033 = zext i8 %conv1032 to i32
  %sub1034 = sub nsw i32 %conv1031, %conv1033
  %611 = load i32, ptr @g_385, align 4
  %cmp1035 = icmp ne i32 %sub1034, %611
  %conv1036 = zext i1 %cmp1035 to i32
  %or1037 = or i32 %conv1019, %conv1036
  %conv1038 = sext i32 %or1037 to i64
  %cmp1039 = icmp sge i64 %conv1038, 16763
  %conv1040 = zext i1 %cmp1039 to i32
  %conv1041 = trunc i32 %conv1040 to i16
  %conv1042 = sext i16 %conv1041 to i32
  %612 = load i16, ptr @g_652, align 2
  %conv1043 = sext i16 %612 to i32
  %shl1044 = shl i32 %conv1042, %conv1043
  %conv1045 = sext i32 %shl1044 to i64
  %cmp1046 = icmp sgt i64 %conv1045, -1
  %conv1047 = zext i1 %cmp1046 to i32
  %conv1048 = sext i32 %conv1047 to i64
  %cmp1049 = icmp sge i64 %conv1048, 1
  %conv1050 = zext i1 %cmp1049 to i32
  %613 = load i32, ptr @g_179, align 4
  %cmp1051 = icmp eq i32 %conv1050, %613
  %conv1052 = zext i1 %cmp1051 to i32
  %conv1053 = trunc i32 %conv1052 to i16
  %conv1054 = zext i16 %conv1053 to i32
  %614 = load i32, ptr %l_653, align 4
  %conv1055 = trunc i32 %614 to i16
  %conv1056 = zext i16 %conv1055 to i32
  %add1057 = add nsw i32 %conv1054, %conv1056
  %conv1058 = trunc i32 %add1057 to i16
  %conv1059 = zext i16 %conv1058 to i32
  %615 = load i32, ptr %l_654, align 4
  %conv1060 = trunc i32 %615 to i16
  %conv1061 = zext i16 %conv1060 to i32
  %add1062 = add nsw i32 %conv1059, %conv1061
  %conv1063 = trunc i32 %add1062 to i8
  %conv1064 = sext i8 %conv1063 to i32
  %sub1065 = sub nsw i32 %conv1017, %conv1064
  %616 = load i32, ptr @g_606, align 4
  %xor1066 = xor i32 %sub1065, %616
  %617 = load i16, ptr @g_652, align 2
  %conv1067 = sext i16 %617 to i32
  %618 = load i32, ptr %l_654, align 4
  %conv1068 = trunc i32 %618 to i16
  %619 = load ptr, ptr %l_635, align 8
  %620 = load i32, ptr %619, align 4
  %621 = load i32, ptr %l_654, align 4
  %conv1069 = trunc i32 %621 to i16
  %call1070 = call i32 @func_15(i32 noundef %xor1066, i32 noundef %conv1067, i16 noundef zeroext %conv1068, i32 noundef %620, i16 noundef zeroext %conv1069)
  %conv1071 = trunc i32 %call1070 to i16
  %conv1072 = sext i16 %conv1071 to i32
  %rem1073 = srem i32 17734, %conv1072
  %622 = load ptr, ptr %l_582, align 8
  %623 = load i32, ptr %622, align 4
  %or1074 = or i32 %623, %rem1073
  store i32 %or1074, ptr %622, align 4
  call void @step_hash(i32 noundef 482)
  %624 = load ptr, ptr @g_68, align 8
  %625 = load i32, ptr %624, align 4
  %tobool1075 = icmp ne i32 %625, 0
  br i1 %tobool1075, label %if.then1076, label %if.else1200

if.then1076:                                      ; preds = %lor.end1028
  store ptr null, ptr %l_658, align 8
  store i32 -1, ptr %l_702, align 4
  call void @step_hash(i32 noundef 476)
  store i8 18, ptr @g_22, align 1
  br label %for.cond1077

for.cond1077:                                     ; preds = %for.inc1174, %if.then1076
  %626 = load i8, ptr @g_22, align 1
  %conv1078 = sext i8 %626 to i32
  %cmp1079 = icmp sge i32 %conv1078, 7
  br i1 %cmp1079, label %for.body1081, label %for.end1176

for.body1081:                                     ; preds = %for.cond1077
  store i8 0, ptr %l_663, align 1
  store i8 -26, ptr %l_696, align 1
  store ptr %l_386, ptr %l_697, align 8
  call void @step_hash(i32 noundef 473)
  %627 = load ptr, ptr %l_662, align 8
  %628 = load ptr, ptr %l_274, align 8
  %629 = load ptr, ptr %628, align 8
  store ptr %627, ptr %629, align 8
  call void @step_hash(i32 noundef 474)
  %630 = load i32, ptr @g_179, align 4
  %631 = load i8, ptr %l_663, align 1
  %conv1082 = zext i8 %631 to i32
  %632 = load i8, ptr %l_663, align 1
  %conv1083 = zext i8 %632 to i32
  %633 = load i8, ptr %l_663, align 1
  %conv1084 = zext i8 %633 to i32
  %634 = load i32, ptr @g_624, align 4
  %tobool1085 = icmp ne i32 %634, 0
  br i1 %tobool1085, label %lor.end1087, label %lor.rhs1086

lor.rhs1086:                                      ; preds = %for.body1081
  br label %lor.end1087

lor.end1087:                                      ; preds = %lor.rhs1086, %for.body1081
  %635 = phi i1 [ true, %for.body1081 ], [ false, %lor.rhs1086 ]
  %lor.ext1088 = zext i1 %635 to i32
  %sub1089 = sub i32 0, %lor.ext1088
  %and1090 = and i32 %conv1084, %sub1089
  %rem1091 = srem i32 %conv1083, %and1090
  %636 = load ptr, ptr %l_635, align 8
  %637 = load i32, ptr %636, align 4
  %cmp1092 = icmp sle i32 %rem1091, %637
  br i1 %cmp1092, label %land.rhs1094, label %land.end1096

land.rhs1094:                                     ; preds = %lor.end1087
  %638 = load ptr, ptr %l_467, align 8
  %639 = load ptr, ptr %638, align 8
  %640 = load ptr, ptr %639, align 8
  %641 = load i32, ptr %640, align 4
  %tobool1095 = icmp ne i32 %641, 0
  br label %land.end1096

land.end1096:                                     ; preds = %land.rhs1094, %lor.end1087
  %642 = phi i1 [ false, %lor.end1087 ], [ %tobool1095, %land.rhs1094 ]
  %land.ext1097 = zext i1 %642 to i32
  %643 = load i32, ptr @g_354, align 4
  %tobool1098 = icmp ne i32 %643, 0
  br i1 %tobool1098, label %land.rhs1099, label %land.end1101

land.rhs1099:                                     ; preds = %land.end1096
  %644 = load i32, ptr @g_105, align 4
  %tobool1100 = icmp ne i32 %644, 0
  br label %land.end1101

land.end1101:                                     ; preds = %land.rhs1099, %land.end1096
  %645 = phi i1 [ false, %land.end1096 ], [ %tobool1100, %land.rhs1099 ]
  %land.ext1102 = zext i1 %645 to i32
  %call1103 = call signext i16 @func_26(i32 noundef %land.ext1102)
  %conv1104 = trunc i16 %call1103 to i8
  %conv1105 = sext i8 %conv1104 to i32
  %646 = load i32, ptr @g_91, align 4
  %conv1106 = trunc i32 %646 to i8
  %conv1107 = sext i8 %conv1106 to i32
  %rem1108 = srem i32 %conv1105, %conv1107
  %cmp1109 = icmp slt i32 %land.ext1097, %rem1108
  %conv1110 = zext i1 %cmp1109 to i32
  %conv1111 = trunc i32 %conv1110 to i8
  %conv1112 = sext i8 %conv1111 to i32
  %sub1113 = sub nsw i32 0, %conv1112
  %conv1114 = trunc i32 %sub1113 to i16
  %647 = load i8, ptr %l_663, align 1
  %conv1115 = zext i8 %647 to i32
  %648 = load i32, ptr @g_91, align 4
  %conv1116 = trunc i32 %648 to i16
  %call1117 = call i32 @func_15(i32 noundef %630, i32 noundef %conv1082, i16 noundef zeroext %conv1114, i32 noundef %conv1115, i16 noundef zeroext %conv1116)
  %tobool1118 = icmp ne i32 %call1117, 0
  %lnot1119 = xor i1 %tobool1118, true
  %lnot.ext1120 = zext i1 %lnot1119 to i32
  %649 = load i8, ptr @g_22, align 1
  %conv1121 = sext i8 %649 to i32
  %and1122 = and i32 %lnot.ext1120, %conv1121
  %650 = load i8, ptr %l_663, align 1
  %conv1123 = zext i8 %650 to i32
  %cmp1124 = icmp sge i32 %and1122, %conv1123
  %conv1125 = zext i1 %cmp1124 to i32
  %651 = load i32, ptr @g_385, align 4
  %cmp1126 = icmp sge i32 %conv1125, %651
  %conv1127 = zext i1 %cmp1126 to i32
  %652 = load ptr, ptr %l_635, align 8
  store i32 %conv1127, ptr %652, align 4
  call void @step_hash(i32 noundef 475)
  %653 = load ptr, ptr @g_102, align 8
  %654 = load ptr, ptr %653, align 8
  %655 = load ptr, ptr %654, align 8
  %656 = load ptr, ptr %l_697, align 8
  %657 = load ptr, ptr %l_658, align 8
  %call1128 = call zeroext i16 @func_59(ptr noundef %655, ptr noundef %656, ptr noundef %657)
  %conv1129 = zext i16 %call1128 to i32
  %658 = load ptr, ptr @g_143, align 8
  %659 = load i32, ptr %658, align 4
  %cmp1130 = icmp sgt i32 %conv1129, %659
  %conv1131 = zext i1 %cmp1130 to i32
  %conv1132 = trunc i32 %conv1131 to i8
  %conv1133 = sext i8 %conv1132 to i32
  %660 = load ptr, ptr %l_531, align 8
  %661 = load i32, ptr %660, align 4
  %conv1134 = trunc i32 %661 to i8
  %conv1135 = sext i8 %conv1134 to i32
  %add1136 = add nsw i32 %conv1133, %conv1135
  %conv1137 = sext i32 %add1136 to i64
  %cmp1138 = icmp ne i64 %conv1137, 0
  %conv1139 = zext i1 %cmp1138 to i32
  %conv1140 = trunc i32 %conv1139 to i8
  %conv1141 = sext i8 %conv1140 to i32
  %shr1142 = ashr i32 %conv1141, 7
  %conv1143 = trunc i32 %shr1142 to i16
  %662 = load i32, ptr @g_606, align 4
  %663 = load i32, ptr @g_354, align 4
  %664 = load ptr, ptr %l_635, align 8
  %665 = load i32, ptr %664, align 4
  %conv1144 = trunc i32 %665 to i8
  %666 = load i32, ptr @g_606, align 4
  %conv1145 = trunc i32 %666 to i16
  %call1146 = call i32 @func_2(i16 noundef signext %conv1143, i32 noundef %662, i32 noundef %663, i8 noundef zeroext %conv1144, i16 noundef signext %conv1145)
  %667 = load ptr, ptr %l_582, align 8
  %668 = load i32, ptr %667, align 4
  %cmp1147 = icmp eq i32 %call1146, %668
  %conv1148 = zext i1 %cmp1147 to i32
  %conv1149 = trunc i32 %conv1148 to i16
  %conv1150 = sext i16 %conv1149 to i32
  %669 = load i16, ptr @g_652, align 2
  %conv1151 = sext i16 %669 to i32
  %rem1152 = srem i32 %conv1150, %conv1151
  %conv1153 = trunc i32 %rem1152 to i8
  %conv1154 = zext i8 %conv1153 to i32
  %670 = load i32, ptr @g_606, align 4
  %conv1155 = trunc i32 %670 to i8
  %conv1156 = zext i8 %conv1155 to i32
  %rem1157 = srem i32 %conv1154, %conv1156
  %conv1158 = sext i32 %rem1157 to i64
  %cmp1159 = icmp uge i64 %conv1158, 2
  %conv1160 = zext i1 %cmp1159 to i32
  %conv1161 = trunc i32 %conv1160 to i8
  %conv1162 = sext i8 %conv1161 to i32
  %671 = load i32, ptr @g_91, align 4
  %conv1163 = trunc i32 %671 to i8
  %conv1164 = sext i8 %conv1163 to i32
  %shl1165 = shl i32 %conv1162, %conv1164
  %conv1166 = sext i32 %shl1165 to i64
  %or1167 = or i64 3475920376, %conv1166
  %672 = load i32, ptr @g_606, align 4
  %conv1168 = sext i32 %672 to i64
  %cmp1169 = icmp slt i64 %or1167, %conv1168
  %conv1170 = zext i1 %cmp1169 to i32
  %673 = load i32, ptr @g_385, align 4
  %cmp1171 = icmp eq i32 %conv1170, %673
  %conv1172 = zext i1 %cmp1171 to i32
  %sub1173 = sub i32 -9, %conv1172
  %674 = load ptr, ptr @g_143, align 8
  store i32 %sub1173, ptr %674, align 4
  br label %for.inc1174

for.inc1174:                                      ; preds = %land.end1101
  %675 = load i8, ptr @g_22, align 1
  %dec1175 = add i8 %675, -1
  store i8 %dec1175, ptr @g_22, align 1
  br label %for.cond1077, !llvm.loop !34

for.end1176:                                      ; preds = %for.cond1077
  call void @step_hash(i32 noundef 477)
  %676 = load i16, ptr @g_652, align 2
  %conv1177 = sext i16 %676 to i32
  %677 = load ptr, ptr %l_531, align 8
  %678 = load i32, ptr %677, align 4
  %call1178 = call signext i16 @func_26(i32 noundef %678)
  %conv1179 = sext i16 %call1178 to i32
  %tobool1180 = icmp ne i32 %conv1179, 0
  %land.ext1181 = zext i1 %tobool1180 to i32
  %cmp1182 = icmp sle i32 %conv1177, %land.ext1181
  %conv1183 = zext i1 %cmp1182 to i32
  %679 = load ptr, ptr %l_467, align 8
  %680 = load ptr, ptr %679, align 8
  %681 = load ptr, ptr %680, align 8
  store i32 %conv1183, ptr %681, align 4
  call void @step_hash(i32 noundef 478)
  %682 = load ptr, ptr @g_68, align 8
  %683 = load i32, ptr %682, align 4
  %tobool1184 = icmp ne i32 %683, 0
  br i1 %tobool1184, label %if.then1185, label %if.end1186

if.then1185:                                      ; preds = %for.end1176
  br label %for.inc1206

if.end1186:                                       ; preds = %for.end1176
  call void @step_hash(i32 noundef 479)
  %684 = load i32, ptr @g_105, align 4
  %685 = load i32, ptr @g_75, align 4
  %conv1187 = trunc i32 %685 to i8
  %conv1188 = zext i8 %conv1187 to i32
  %shl1189 = shl i32 %conv1188, 7
  %cmp1190 = icmp slt i32 %684, %shl1189
  %conv1191 = zext i1 %cmp1190 to i32
  %686 = load i32, ptr @g_91, align 4
  %687 = load ptr, ptr @g_102, align 8
  %688 = load ptr, ptr %687, align 8
  %689 = load ptr, ptr %688, align 8
  %690 = load ptr, ptr %l_658, align 8
  %691 = load ptr, ptr %l_625, align 8
  %692 = load ptr, ptr %691, align 8
  %693 = load ptr, ptr %692, align 8
  %call1192 = call zeroext i16 @func_59(ptr noundef %689, ptr noundef %690, ptr noundef %693)
  %conv1193 = zext i16 %call1192 to i32
  %cmp1194 = icmp slt i32 %686, %conv1193
  %conv1195 = zext i1 %cmp1194 to i32
  %call1196 = call i32 @func_9(i32 noundef %conv1195)
  %694 = load i32, ptr %l_702, align 4
  %cmp1197 = icmp ugt i32 %call1196, %694
  %conv1198 = zext i1 %cmp1197 to i32
  %and1199 = and i32 %conv1191, %conv1198
  %695 = load ptr, ptr @g_143, align 8
  store i32 %and1199, ptr %695, align 4
  br label %if.end1202

if.else1200:                                      ; preds = %lor.end1028
  call void @step_hash(i32 noundef 481)
  %696 = load i32, ptr @g_91, align 4
  %conv1201 = trunc i32 %696 to i16
  store i16 %conv1201, ptr %retval, align 2
  br label %return

if.end1202:                                       ; preds = %if.end1186
  call void @step_hash(i32 noundef 483)
  %697 = load ptr, ptr %l_635, align 8
  %698 = load i32, ptr %697, align 4
  %call1203 = call signext i16 @func_26(i32 noundef %698)
  %conv1204 = sext i16 %call1203 to i32
  %699 = load ptr, ptr %l_467, align 8
  %700 = load ptr, ptr %699, align 8
  %701 = load ptr, ptr %700, align 8
  store i32 %conv1204, ptr %701, align 4
  br label %if.end1205

if.end1205:                                       ; preds = %if.end1202, %for.end1014
  br label %for.inc1206

for.inc1206:                                      ; preds = %if.end1205, %if.then1185
  %702 = load i32, ptr %l_307, align 4
  %add1207 = add nsw i32 %702, 2
  store i32 %add1207, ptr %l_307, align 4
  br label %for.cond854, !llvm.loop !35

for.end1208:                                      ; preds = %for.cond854
  br label %if.end1209

if.end1209:                                       ; preds = %for.end1208, %for.end218
  call void @step_hash(i32 noundef 487)
  %703 = load i32, ptr @g_624, align 4
  %704 = load ptr, ptr @g_143, align 8
  %705 = load i32, ptr %704, align 4
  %706 = load ptr, ptr %l_582, align 8
  %707 = load i32, ptr %706, align 4
  %708 = load ptr, ptr @g_102, align 8
  %709 = load ptr, ptr %708, align 8
  %710 = load ptr, ptr %709, align 8
  %cmp1210 = icmp eq ptr %710, null
  %conv1211 = zext i1 %cmp1210 to i32
  %sub1212 = sub nsw i32 %707, %conv1211
  %cmp1213 = icmp ne i32 %705, %sub1212
  %conv1214 = zext i1 %cmp1213 to i32
  %conv1215 = trunc i32 %conv1214 to i16
  %conv1216 = zext i16 %conv1215 to i32
  %711 = load i32, ptr @g_179, align 4
  %712 = load ptr, ptr %l_582, align 8
  %713 = load i32, ptr %712, align 4
  %conv1217 = trunc i32 %713 to i16
  %conv1218 = sext i16 %conv1217 to i32
  %shr1219 = ashr i32 %conv1218, 10
  %tobool1220 = icmp ne i32 %shr1219, 0
  br i1 %tobool1220, label %land.rhs1221, label %land.end1224

land.rhs1221:                                     ; preds = %if.end1209
  %714 = load i32, ptr @g_91, align 4
  %cmp1222 = icmp eq i32 0, %714
  br label %land.end1224

land.end1224:                                     ; preds = %land.rhs1221, %if.end1209
  %715 = phi i1 [ false, %if.end1209 ], [ %cmp1222, %land.rhs1221 ]
  %land.ext1225 = zext i1 %715 to i32
  %716 = load i16, ptr %l_715, align 2
  %conv1226 = zext i16 %716 to i32
  %cmp1227 = icmp sle i32 %land.ext1225, %conv1226
  %conv1228 = zext i1 %cmp1227 to i32
  %cmp1229 = icmp sle i32 %711, %conv1228
  %conv1230 = zext i1 %cmp1229 to i32
  %717 = load i32, ptr @g_64, align 4
  %cmp1231 = icmp ne i32 %conv1230, %717
  %conv1232 = zext i1 %cmp1231 to i32
  %conv1233 = trunc i32 %conv1232 to i16
  %conv1234 = sext i16 %conv1233 to i32
  %shl1235 = shl i32 %conv1234, 15
  %conv1236 = trunc i32 %shl1235 to i16
  %conv1237 = zext i16 %conv1236 to i32
  %shr1238 = ashr i32 %conv1216, %conv1237
  %cmp1239 = icmp sle i32 %703, %shr1238
  %conv1240 = zext i1 %cmp1239 to i32
  %conv1241 = trunc i32 %conv1240 to i8
  %conv1242 = zext i8 %conv1241 to i32
  %sub1243 = sub nsw i32 %conv1242, 0
  %718 = load ptr, ptr %l_582, align 8
  store i32 %sub1243, ptr %718, align 4
  call void @step_hash(i32 noundef 488)
  %719 = load ptr, ptr %l_274, align 8
  %cmp1244 = icmp eq ptr @g_103, %719
  %conv1245 = zext i1 %cmp1244 to i32
  %conv1246 = trunc i32 %conv1245 to i16
  %conv1247 = sext i16 %conv1246 to i32
  %720 = load i8, ptr %l_718, align 1
  %conv1248 = sext i8 %720 to i16
  %conv1249 = sext i16 %conv1248 to i32
  %mul1250 = mul nsw i32 %conv1247, %conv1249
  %721 = load ptr, ptr %l_582, align 8
  store i32 %mul1250, ptr %721, align 4
  call void @step_hash(i32 noundef 489)
  %722 = load ptr, ptr @g_397, align 8
  %723 = load ptr, ptr %722, align 8
  %724 = load ptr, ptr %723, align 8
  %725 = load ptr, ptr @g_102, align 8
  %726 = load ptr, ptr %725, align 8
  store ptr %724, ptr %726, align 8
  call void @step_hash(i32 noundef 490)
  %727 = load i32, ptr @g_354, align 4
  %conv1251 = trunc i32 %727 to i16
  store i16 %conv1251, ptr %retval, align 2
  br label %return

return:                                           ; preds = %land.end1224, %if.else1200, %for.body523, %for.end506, %for.body176
  %728 = load i16, ptr %retval, align 2
  ret i16 %728
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @platform_main_end(i32 noundef %x, i32 noundef %flag) #0 {
entry:
  %x.addr = alloca i32, align 4
  %flag.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %flag, ptr %flag.addr, align 4
  %0 = load i32, ptr %flag.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i32 noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @crc32_8bytes(i32 noundef %val) #0 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  %0 = load i32, ptr %val.addr, align 4
  %shr = lshr i32 %0, 0
  %and = and i32 %shr, 255
  %conv = trunc i32 %and to i8
  call void @crc32_byte(i8 noundef zeroext %conv)
  %1 = load i32, ptr %val.addr, align 4
  %shr1 = lshr i32 %1, 8
  %and2 = and i32 %shr1, 255
  %conv3 = trunc i32 %and2 to i8
  call void @crc32_byte(i8 noundef zeroext %conv3)
  %2 = load i32, ptr %val.addr, align 4
  %shr4 = lshr i32 %2, 16
  %and5 = and i32 %shr4, 255
  %conv6 = trunc i32 %and5 to i8
  call void @crc32_byte(i8 noundef zeroext %conv6)
  %3 = load i32, ptr %val.addr, align 4
  %shr7 = lshr i32 %3, 24
  %and8 = and i32 %shr7, 255
  %conv9 = trunc i32 %and8 to i8
  call void @crc32_byte(i8 noundef zeroext %conv9)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @crc32_byte(i8 noundef zeroext %b) #0 {
entry:
  %b.addr = alloca i8, align 1
  store i8 %b, ptr %b.addr, align 1
  %0 = load i32, ptr @crc32_context, align 4
  %shr = lshr i32 %0, 8
  %and = and i32 %shr, 16777215
  %1 = load i32, ptr @crc32_context, align 4
  %2 = load i8, ptr %b.addr, align 1
  %conv = zext i8 %2 to i32
  %xor = xor i32 %1, %conv
  %and1 = and i32 %xor, 255
  %idxprom = zext i32 %and1 to i64
  %arrayidx = getelementptr inbounds [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %xor2 = xor i32 %and, %3
  store i32 %xor2, ptr @crc32_context, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @func_2(i16 noundef signext %p_3, i32 noundef %p_4, i32 noundef %p_5, i8 noundef zeroext %p_6, i16 noundef signext %p_7) #0 {
entry:
  %p_3.addr = alloca i16, align 2
  %p_4.addr = alloca i32, align 4
  %p_5.addr = alloca i32, align 4
  %p_6.addr = alloca i8, align 1
  %p_7.addr = alloca i16, align 2
  %l_216 = alloca i32, align 4
  %l_228 = alloca i32, align 4
  %l_229 = alloca i32, align 4
  %l_223 = alloca ptr, align 8
  store i16 %p_3, ptr %p_3.addr, align 2
  store i32 %p_4, ptr %p_4.addr, align 4
  store i32 %p_5, ptr %p_5.addr, align 4
  store i8 %p_6, ptr %p_6.addr, align 1
  store i16 %p_7, ptr %p_7.addr, align 2
  store i32 1, ptr %l_216, align 4
  store i32 0, ptr %l_228, align 4
  store i32 1275145341, ptr %l_229, align 4
  call void @step_hash(i32 noundef 181)
  %0 = load i16, ptr %p_3.addr, align 2
  %tobool = icmp ne i16 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @step_hash(i32 noundef 163)
  %1 = load i16, ptr %p_7.addr, align 2
  %conv = sext i16 %1 to i32
  %2 = load i32, ptr %l_216, align 4
  %or = or i32 %2, %conv
  store i32 %or, ptr %l_216, align 4
  br label %if.end30

if.else:                                          ; preds = %entry
  call void @step_hash(i32 noundef 179)
  %3 = load ptr, ptr @g_67, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = load i32, ptr %4, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then2, label %if.else10

if.then2:                                         ; preds = %if.else
  call void @step_hash(i32 noundef 171)
  store i16 6, ptr %p_7.addr, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then2
  %6 = load i16, ptr %p_7.addr, align 2
  %conv3 = sext i16 %6 to i32
  %cmp = icmp eq i32 %conv3, -27
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store ptr null, ptr %l_223, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i16, ptr %p_7.addr, align 2
  %conv5 = sext i16 %7 to i32
  %sub = sub nsw i32 %conv5, 1
  %conv6 = trunc i32 %sub to i16
  store i16 %conv6, ptr %p_7.addr, align 2
  br label %for.cond, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  call void @step_hash(i32 noundef 172)
  %8 = load ptr, ptr @g_67, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load i32, ptr %9, align 4
  %conv7 = sext i32 %10 to i64
  %or8 = or i64 %conv7, -5
  %conv9 = trunc i64 %or8 to i32
  store i32 %conv9, ptr %9, align 4
  br label %if.end

if.else10:                                        ; preds = %if.else
  call void @step_hash(i32 noundef 178)
  store i16 0, ptr %p_7.addr, align 2
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc19, %if.else10
  %11 = load i16, ptr %p_7.addr, align 2
  %conv12 = sext i16 %11 to i32
  %cmp13 = icmp sgt i32 %conv12, -14
  br i1 %cmp13, label %for.body15, label %for.end23

for.body15:                                       ; preds = %for.cond11
  call void @step_hash(i32 noundef 177)
  %12 = load i32, ptr %p_4.addr, align 4
  %13 = load i8, ptr @g_8, align 1
  %conv16 = sext i8 %13 to i32
  %cmp17 = icmp ugt i32 %12, %conv16
  %conv18 = zext i1 %cmp17 to i32
  %14 = load ptr, ptr @g_143, align 8
  %15 = load i32, ptr %14, align 4
  %and = and i32 %15, %conv18
  store i32 %and, ptr %14, align 4
  br label %for.inc19

for.inc19:                                        ; preds = %for.body15
  %16 = load i16, ptr %p_7.addr, align 2
  %conv20 = sext i16 %16 to i32
  %sub21 = sub nsw i32 %conv20, 6
  %conv22 = trunc i32 %sub21 to i16
  store i16 %conv22, ptr %p_7.addr, align 2
  br label %for.cond11, !llvm.loop !37

for.end23:                                        ; preds = %for.cond11
  br label %if.end

if.end:                                           ; preds = %for.end23, %for.end
  call void @step_hash(i32 noundef 180)
  %17 = load i8, ptr %p_6.addr, align 1
  %conv24 = zext i8 %17 to i64
  %18 = load i32, ptr @g_179, align 4
  %conv25 = sext i32 %18 to i64
  %xor = xor i64 %conv25, 63609
  %cmp26 = icmp sgt i64 %conv24, %xor
  %conv27 = zext i1 %cmp26 to i32
  %19 = load i16, ptr %p_7.addr, align 2
  %conv28 = sext i16 %19 to i32
  %and29 = and i32 %conv27, %conv28
  %20 = load ptr, ptr @g_67, align 8
  %21 = load ptr, ptr %20, align 8
  store i32 %and29, ptr %21, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end, %if.then
  call void @step_hash(i32 noundef 182)
  %22 = load i32, ptr %l_216, align 4
  %23 = load i32, ptr %l_228, align 4
  %cmp31 = icmp ne i32 %22, %23
  %conv32 = zext i1 %cmp31 to i32
  store i32 %conv32, ptr %l_229, align 4
  call void @step_hash(i32 noundef 183)
  %24 = load i32, ptr %p_5.addr, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @func_9(i32 noundef %p_10) #0 {
entry:
  %p_10.addr = alloca i32, align 4
  %l_25 = alloca i32, align 4
  %l_204 = alloca i32, align 4
  %l_21 = alloca i8, align 1
  %l_202 = alloca ptr, align 8
  store i32 %p_10, ptr %p_10.addr, align 4
  store i32 1, ptr %l_25, align 4
  store i32 -4, ptr %l_204, align 4
  call void @step_hash(i32 noundef 159)
  store i32 -6, ptr %p_10.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %p_10.addr, align 4
  %cmp = icmp ne i32 %0, 23
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i8 6, ptr %l_21, align 1
  store ptr @g_105, ptr %l_202, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, ptr %p_10.addr, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %p_10.addr, align 4
  br label %for.cond, !llvm.loop !38

for.end:                                          ; preds = %for.cond
  call void @step_hash(i32 noundef 160)
  %2 = load i32, ptr %l_25, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @func_15(i32 noundef %p_16, i32 noundef %p_17, i16 noundef zeroext %p_18, i32 noundef %p_19, i16 noundef zeroext %p_20) #0 {
entry:
  %p_16.addr = alloca i32, align 4
  %p_17.addr = alloca i32, align 4
  %p_18.addr = alloca i16, align 2
  %p_19.addr = alloca i32, align 4
  %p_20.addr = alloca i16, align 2
  %l_184 = alloca i16, align 2
  %l_193 = alloca ptr, align 8
  store i32 %p_16, ptr %p_16.addr, align 4
  store i32 %p_17, ptr %p_17.addr, align 4
  store i16 %p_18, ptr %p_18.addr, align 2
  store i32 %p_19, ptr %p_19.addr, align 4
  store i16 %p_20, ptr %p_20.addr, align 2
  store i16 5531, ptr %l_184, align 2
  store ptr @g_105, ptr %l_193, align 8
  call void @step_hash(i32 noundef 145)
  %0 = load i16, ptr %l_184, align 2
  %conv = zext i16 %0 to i32
  %1 = load i16, ptr %l_184, align 2
  %conv1 = zext i16 %1 to i32
  %sub = sub nsw i32 %conv, %conv1
  %2 = load i16, ptr %l_184, align 2
  %conv2 = zext i16 %2 to i32
  %3 = load i32, ptr %p_19.addr, align 4
  %conv3 = trunc i32 %3 to i8
  %conv4 = sext i8 %conv3 to i32
  %4 = load i32, ptr @g_64, align 4
  %conv5 = trunc i32 %4 to i16
  %conv6 = sext i16 %conv5 to i32
  %5 = load i32, ptr %p_16.addr, align 4
  %6 = load i16, ptr %l_184, align 2
  %conv7 = zext i16 %6 to i32
  %cmp = icmp eq i32 %5, %conv7
  %conv8 = zext i1 %cmp to i32
  %conv9 = trunc i32 %conv8 to i16
  %conv10 = sext i16 %conv9 to i32
  %mul = mul nsw i32 %conv6, %conv10
  %conv11 = trunc i32 %mul to i8
  %conv12 = sext i8 %conv11 to i32
  %shr = ashr i32 %conv4, %conv12
  %cmp13 = icmp slt i32 %shr, 1
  %conv14 = zext i1 %cmp13 to i32
  %or = or i32 %conv2, %conv14
  %cmp15 = icmp sgt i32 %sub, %or
  %conv16 = zext i1 %cmp15 to i32
  %7 = load ptr, ptr @g_67, align 8
  %8 = load ptr, ptr %7, align 8
  store i32 %conv16, ptr %8, align 4
  call void @step_hash(i32 noundef 146)
  %9 = load ptr, ptr %l_193, align 8
  store ptr %9, ptr %l_193, align 8
  call void @step_hash(i32 noundef 147)
  %10 = load i32, ptr @g_64, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal zeroext i8 @func_38(i16 noundef signext %p_39) #0 {
entry:
  %retval = alloca i8, align 1
  %p_39.addr = alloca i16, align 2
  %l_49 = alloca i8, align 1
  %l_42 = alloca i16, align 2
  %l_106 = alloca i32, align 4
  store i16 %p_39, ptr %p_39.addr, align 2
  store i8 48, ptr %l_49, align 1
  call void @step_hash(i32 noundef 15)
  store i16 -30, ptr %p_39.addr, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, ptr %p_39.addr, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp sle i32 %conv, 26
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i16 1, ptr %l_42, align 2
  call void @step_hash(i32 noundef 14)
  %1 = load i16, ptr %l_42, align 2
  %tobool = icmp ne i16 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %2 = load i16, ptr %p_39.addr, align 2
  %conv2 = sext i16 %2 to i32
  %add = add nsw i32 %conv2, 1
  %conv3 = trunc i32 %add to i16
  store i16 %conv3, ptr %p_39.addr, align 2
  br label %for.cond, !llvm.loop !39

for.end:                                          ; preds = %if.then, %for.cond
  call void @step_hash(i32 noundef 73)
  %3 = load i8, ptr %l_49, align 1
  %conv4 = sext i8 %3 to i16
  %conv5 = zext i16 %conv4 to i32
  %4 = load i8, ptr %l_49, align 1
  %conv6 = sext i8 %4 to i16
  %conv7 = zext i16 %conv6 to i32
  %shr = ashr i32 %conv5, %conv7
  %5 = load i16, ptr %p_39.addr, align 2
  %6 = load i8, ptr @g_8, align 1
  %conv8 = sext i8 %6 to i16
  %call = call i32 @func_52(i16 noundef zeroext %5, i16 noundef zeroext %conv8)
  %7 = load ptr, ptr @g_102, align 8
  %cmp9 = icmp ne ptr null, %7
  %conv10 = zext i1 %cmp9 to i32
  %conv11 = trunc i32 %conv10 to i16
  %conv12 = zext i16 %conv11 to i32
  %8 = load i32, ptr @g_105, align 4
  %conv13 = trunc i32 %8 to i16
  %conv14 = zext i16 %conv13 to i32
  %shl = shl i32 %conv12, %conv14
  %div = sdiv i32 %call, %shl
  %9 = load ptr, ptr @g_103, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = load i32, ptr %10, align 4
  %cmp15 = icmp sle i32 %div, %11
  %conv16 = zext i1 %cmp15 to i32
  %cmp17 = icmp ne i32 %shr, %conv16
  %conv18 = zext i1 %cmp17 to i32
  %conv19 = sext i32 %conv18 to i64
  %cmp20 = icmp sgt i64 %conv19, -1
  %conv21 = zext i1 %cmp20 to i32
  %conv22 = trunc i32 %conv21 to i8
  %conv23 = sext i8 %conv22 to i32
  %rem = srem i32 %conv23, 25
  %tobool24 = icmp ne i32 %rem, 0
  %lor.ext = zext i1 %tobool24 to i32
  %12 = load i8, ptr %l_49, align 1
  %conv25 = sext i8 %12 to i32
  %and = and i32 %lor.ext, %conv25
  %13 = load i8, ptr %l_49, align 1
  %conv26 = sext i8 %13 to i32
  %cmp27 = icmp sge i32 %and, %conv26
  %conv28 = zext i1 %cmp27 to i32
  %conv29 = trunc i32 %conv28 to i16
  %conv30 = zext i16 %conv29 to i32
  %14 = load i8, ptr @g_22, align 1
  %conv31 = sext i8 %14 to i16
  %conv32 = zext i16 %conv31 to i32
  %mul = mul nsw i32 %conv30, %conv32
  %tobool33 = icmp ne i32 %mul, 0
  br i1 %tobool33, label %if.then34, label %if.else

if.then34:                                        ; preds = %for.end
  store i32 0, ptr %l_106, align 4
  call void @step_hash(i32 noundef 69)
  %15 = load ptr, ptr @g_68, align 8
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr @g_103, align 8
  %18 = load ptr, ptr %17, align 8
  %19 = load i32, ptr %18, align 4
  %and35 = and i32 %19, %16
  store i32 %and35, ptr %18, align 4
  call void @step_hash(i32 noundef 70)
  %20 = load ptr, ptr @g_67, align 8
  %21 = load ptr, ptr %20, align 8
  %22 = load i32, ptr %21, align 4
  %tobool36 = icmp ne i32 %22, 0
  %lnot = xor i1 %tobool36, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %l_106, align 4
  br label %if.end38

if.else:                                          ; preds = %for.end
  call void @step_hash(i32 noundef 72)
  %23 = load i32, ptr @g_105, align 4
  %conv37 = trunc i32 %23 to i8
  store i8 %conv37, ptr %retval, align 1
  br label %return

if.end38:                                         ; preds = %if.then34
  call void @step_hash(i32 noundef 74)
  %24 = load i16, ptr %p_39.addr, align 2
  %conv39 = trunc i16 %24 to i8
  store i8 %conv39, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end38, %if.else
  %25 = load i8, ptr %retval, align 1
  ret i8 %25
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal signext i16 @func_26(i32 noundef %p_27) #0 {
entry:
  %retval = alloca i16, align 2
  %p_27.addr = alloca i32, align 4
  %l_32 = alloca i16, align 2
  %l_176 = alloca ptr, align 8
  %l_177 = alloca ptr, align 8
  %l_178 = alloca ptr, align 8
  store i32 %p_27, ptr %p_27.addr, align 4
  store i16 -21668, ptr %l_32, align 2
  call void @step_hash(i32 noundef 137)
  store i32 0, ptr %p_27.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %p_27.addr, align 4
  %cmp = icmp slt i32 %0, -23
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store ptr null, ptr %l_176, align 8
  store ptr null, ptr %l_177, align 8
  store ptr @g_179, ptr %l_178, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, ptr %p_27.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %p_27.addr, align 4
  br label %for.cond, !llvm.loop !40

for.end:                                          ; preds = %for.cond
  call void @step_hash(i32 noundef 142)
  store i32 0, ptr @g_105, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc4, %for.end
  %2 = load i32, ptr @g_105, align 4
  %cmp2 = icmp sge i32 %2, -2
  br i1 %cmp2, label %for.body3, label %for.end6

for.body3:                                        ; preds = %for.cond1
  call void @step_hash(i32 noundef 141)
  %3 = load i8, ptr @g_22, align 1
  %conv = sext i8 %3 to i16
  store i16 %conv, ptr %retval, align 2
  br label %return

for.inc4:                                         ; No predecessors!
  %4 = load i32, ptr @g_105, align 4
  %dec5 = add nsw i32 %4, -1
  store i32 %dec5, ptr @g_105, align 4
  br label %for.cond1, !llvm.loop !41

for.end6:                                         ; preds = %for.cond1
  call void @step_hash(i32 noundef 143)
  %5 = load i8, ptr @g_22, align 1
  %conv7 = sext i8 %5 to i16
  store i16 %conv7, ptr %retval, align 2
  br label %return

return:                                           ; preds = %for.end6, %for.body3
  %6 = load i16, ptr %retval, align 2
  ret i16 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal zeroext i16 @func_59(ptr noundef %p_60, ptr noundef %p_61, ptr noundef %p_62) #0 {
entry:
  %p_60.addr = alloca ptr, align 8
  %p_61.addr = alloca ptr, align 8
  %p_62.addr = alloca ptr, align 8
  %l_69 = alloca ptr, align 8
  store ptr %p_60, ptr %p_60.addr, align 8
  store ptr %p_61, ptr %p_61.addr, align 8
  store ptr %p_62, ptr %p_62.addr, align 8
  call void @step_hash(i32 noundef 22)
  store i32 6, ptr @g_64, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr @g_64, align 4
  %cmp = icmp sle i32 %0, -28
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store ptr @g_67, ptr %l_69, align 8
  call void @step_hash(i32 noundef 21)
  %1 = load ptr, ptr @g_67, align 8
  %2 = load ptr, ptr %l_69, align 8
  store ptr %1, ptr %2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr @g_64, align 4
  %sub = sub nsw i32 %3, 7
  store i32 %sub, ptr @g_64, align 4
  br label %for.cond, !llvm.loop !42

for.end:                                          ; preds = %for.cond
  call void @step_hash(i32 noundef 23)
  %4 = load i32, ptr @g_64, align 4
  %conv = trunc i32 %4 to i16
  ret i16 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @func_52(i16 noundef zeroext %p_53, i16 noundef zeroext %p_54) #0 {
entry:
  %p_53.addr = alloca i16, align 2
  %p_54.addr = alloca i16, align 2
  %l_63 = alloca ptr, align 8
  %l_92 = alloca ptr, align 8
  %l_99 = alloca ptr, align 8
  store i16 %p_53, ptr %p_53.addr, align 2
  store i16 %p_54, ptr %p_54.addr, align 2
  store ptr @g_64, ptr %l_63, align 8
  store ptr %l_63, ptr %l_92, align 8
  call void @step_hash(i32 noundef 58)
  %0 = load i16, ptr %p_53.addr, align 2
  %conv = zext i16 %0 to i32
  %1 = load i16, ptr %p_54.addr, align 2
  %conv1 = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, %conv1
  %conv2 = zext i1 %cmp to i32
  %2 = load i8, ptr @g_8, align 1
  %conv3 = sext i8 %2 to i32
  %not = xor i32 %conv3, -1
  %cmp4 = icmp ne i32 %conv2, %not
  br i1 %cmp4, label %lor.end18, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %3 = load ptr, ptr %l_63, align 8
  %call = call zeroext i16 @func_59(ptr noundef %3, ptr noundef @g_64, ptr noundef @g_64)
  %conv6 = zext i16 %call to i32
  %tobool = icmp ne i32 %conv6, 0
  br i1 %tobool, label %lor.end, label %lor.rhs7

lor.rhs7:                                         ; preds = %lor.rhs
  %4 = load i32, ptr @g_64, align 4
  %5 = load i8, ptr @g_8, align 1
  %conv8 = sext i8 %5 to i64
  %cmp9 = icmp ne i64 14940, %conv8
  %conv10 = zext i1 %cmp9 to i32
  %sub = sub i32 %4, %conv10
  %tobool11 = icmp ne i32 %sub, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs7, %lor.rhs
  %6 = phi i1 [ true, %lor.rhs ], [ %tobool11, %lor.rhs7 ]
  %lor.ext = zext i1 %6 to i32
  %7 = load i8, ptr @g_8, align 1
  %conv12 = sext i8 %7 to i32
  %cmp13 = icmp slt i32 %lor.ext, %conv12
  %conv14 = zext i1 %cmp13 to i32
  %conv15 = sext i32 %conv14 to i64
  %cmp16 = icmp eq i64 %conv15, 0
  br label %lor.end18

lor.end18:                                        ; preds = %lor.end, %entry
  %8 = phi i1 [ true, %entry ], [ %cmp16, %lor.end ]
  %lor.ext19 = zext i1 %8 to i32
  %conv20 = trunc i32 %lor.ext19 to i16
  %9 = load ptr, ptr %l_63, align 8
  %10 = load i8, ptr @g_22, align 1
  %conv21 = sext i8 %10 to i32
  %call22 = call ptr @func_55(i16 noundef signext %conv20, ptr noundef %9, i32 noundef %conv21)
  %11 = load ptr, ptr %l_92, align 8
  store ptr %call22, ptr %11, align 8
  call void @step_hash(i32 noundef 66)
  store i32 -12, ptr @g_64, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %lor.end18
  %12 = load i32, ptr @g_64, align 4
  %cmp23 = icmp sgt i32 %12, -29
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store ptr @g_91, ptr %l_99, align 8
  call void @step_hash(i32 noundef 62)
  %13 = load ptr, ptr @g_67, align 8
  %14 = load ptr, ptr %13, align 8
  %15 = load ptr, ptr %l_92, align 8
  store ptr %14, ptr %15, align 8
  call void @step_hash(i32 noundef 63)
  %16 = load i16, ptr %p_54.addr, align 2
  %conv25 = zext i16 %16 to i32
  %sub26 = sub nsw i32 1, %conv25
  %17 = load ptr, ptr %l_99, align 8
  store i32 %sub26, ptr %17, align 4
  call void @step_hash(i32 noundef 64)
  %18 = load ptr, ptr @g_67, align 8
  %19 = load ptr, ptr %18, align 8
  %20 = load i32, ptr %19, align 4
  %tobool27 = icmp ne i32 %20, 0
  br i1 %tobool27, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @step_hash(i32 noundef 65)
  %21 = load ptr, ptr %l_99, align 8
  %22 = load i32, ptr %21, align 4
  %conv28 = sext i32 %22 to i64
  %or = or i64 %conv28, 1151159311
  %conv29 = trunc i64 %or to i32
  store i32 %conv29, ptr %21, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %23 = load i32, ptr @g_64, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, ptr @g_64, align 4
  br label %for.cond, !llvm.loop !43

for.end:                                          ; preds = %for.cond
  call void @step_hash(i32 noundef 67)
  %24 = load ptr, ptr %l_92, align 8
  %25 = load ptr, ptr %24, align 8
  %26 = load i32, ptr %25, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal ptr @func_55(i16 noundef signext %p_56, ptr noundef %p_57, i32 noundef %p_58) #0 {
entry:
  %retval = alloca ptr, align 8
  %p_56.addr = alloca i16, align 2
  %p_57.addr = alloca ptr, align 8
  %p_58.addr = alloca i32, align 4
  %l_80 = alloca i8, align 1
  %l_88 = alloca i32, align 4
  %l_74 = alloca ptr, align 8
  %l_81 = alloca i16, align 2
  %l_89 = alloca i8, align 1
  %l_90 = alloca ptr, align 8
  store i16 %p_56, ptr %p_56.addr, align 2
  store ptr %p_57, ptr %p_57.addr, align 8
  store i32 %p_58, ptr %p_58.addr, align 4
  store i8 -78, ptr %l_80, align 1
  store i32 0, ptr %l_88, align 4
  call void @step_hash(i32 noundef 56)
  store i32 0, ptr @g_64, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc36, %entry
  %0 = load i32, ptr @g_64, align 4
  %cmp = icmp sle i32 %0, -15
  br i1 %cmp, label %for.body, label %for.end37

for.body:                                         ; preds = %for.cond
  store ptr @g_75, ptr %l_74, align 8
  call void @step_hash(i32 noundef 28)
  %1 = load ptr, ptr @g_68, align 8
  %2 = load i32, ptr %1, align 4
  %3 = load ptr, ptr %l_74, align 8
  store i32 %2, ptr %3, align 4
  call void @step_hash(i32 noundef 39)
  %4 = load ptr, ptr %p_57.addr, align 8
  %5 = load i32, ptr %4, align 4
  %conv = sext i32 %5 to i64
  %cmp1 = icmp sge i64 2729783056, %conv
  %conv2 = zext i1 %cmp1 to i32
  %conv3 = sext i32 %conv2 to i64
  %cmp4 = icmp eq i64 59, %conv3
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i16 6, ptr %l_81, align 2
  call void @step_hash(i32 noundef 36)
  store i16 27, ptr %p_56.addr, align 2
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %if.then
  %6 = load i16, ptr %p_56.addr, align 2
  %conv7 = sext i16 %6 to i32
  %cmp8 = icmp sge i32 %conv7, -27
  br i1 %cmp8, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond6
  call void @step_hash(i32 noundef 33)
  %7 = load i8, ptr %l_80, align 1
  %conv11 = sext i8 %7 to i32
  %shr = ashr i32 %conv11, 2
  %8 = load i16, ptr %l_81, align 2
  %conv12 = zext i16 %8 to i32
  %xor = xor i32 %conv12, %shr
  %conv13 = trunc i32 %xor to i16
  store i16 %conv13, ptr %l_81, align 2
  call void @step_hash(i32 noundef 34)
  %9 = load ptr, ptr %p_57.addr, align 8
  store ptr %9, ptr %p_57.addr, align 8
  call void @step_hash(i32 noundef 35)
  %10 = load ptr, ptr @g_67, align 8
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr @g_67, align 8
  store ptr %11, ptr %12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %13 = load i16, ptr %p_56.addr, align 2
  %dec = add i16 %13, -1
  store i16 %dec, ptr %p_56.addr, align 2
  br label %for.cond6, !llvm.loop !44

for.end:                                          ; preds = %for.cond6
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @step_hash(i32 noundef 38)
  %14 = load ptr, ptr %p_57.addr, align 8
  %15 = load ptr, ptr @g_67, align 8
  store ptr %14, ptr %15, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  call void @step_hash(i32 noundef 54)
  store i32 0, ptr %p_58.addr, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc34, %if.end
  %16 = load i32, ptr %p_58.addr, align 4
  %cmp15 = icmp ule i32 %16, 14
  br i1 %cmp15, label %for.body17, label %for.end35

for.body17:                                       ; preds = %for.cond14
  call void @step_hash(i32 noundef 53)
  store i32 0, ptr @g_75, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc32, %for.body17
  %17 = load i32, ptr @g_75, align 4
  %cmp19 = icmp sge i32 %17, 13
  br i1 %cmp19, label %for.body21, label %for.end33

for.body21:                                       ; preds = %for.cond18
  store i8 3, ptr %l_89, align 1
  store ptr @g_91, ptr %l_90, align 8
  call void @step_hash(i32 noundef 50)
  %18 = load i32, ptr %l_88, align 4
  %conv22 = zext i32 %18 to i64
  %19 = load i8, ptr %l_89, align 1
  %conv23 = zext i8 %19 to i64
  %xor24 = xor i64 %conv23, 1
  %or = or i64 %conv22, %xor24
  %conv25 = trunc i64 %or to i8
  %conv26 = sext i8 %conv25 to i32
  %shr27 = ashr i32 %conv26, 7
  %tobool = icmp ne i32 %shr27, 0
  br i1 %tobool, label %if.then28, label %if.else29

if.then28:                                        ; preds = %for.body21
  call void @step_hash(i32 noundef 47)
  %20 = load ptr, ptr @g_67, align 8
  %21 = load ptr, ptr %20, align 8
  %22 = load ptr, ptr @g_67, align 8
  store ptr %21, ptr %22, align 8
  br label %if.end30

if.else29:                                        ; preds = %for.body21
  call void @step_hash(i32 noundef 49)
  %23 = load ptr, ptr %p_57.addr, align 8
  store ptr %23, ptr %retval, align 8
  br label %return

if.end30:                                         ; preds = %if.then28
  call void @step_hash(i32 noundef 51)
  %24 = load ptr, ptr %l_90, align 8
  store i32 1512919895, ptr %24, align 4
  call void @step_hash(i32 noundef 52)
  %25 = load ptr, ptr %l_90, align 8
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr @g_64, align 4
  %xor31 = xor i32 %26, %27
  store i32 %xor31, ptr @g_91, align 4
  br label %for.inc32

for.inc32:                                        ; preds = %if.end30
  %28 = load i32, ptr @g_75, align 4
  %add = add nsw i32 %28, 2
  store i32 %add, ptr @g_75, align 4
  br label %for.cond18, !llvm.loop !45

for.end33:                                        ; preds = %for.cond18
  br label %for.inc34

for.inc34:                                        ; preds = %for.end33
  %29 = load i32, ptr %p_58.addr, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %p_58.addr, align 4
  br label %for.cond14, !llvm.loop !46

for.end35:                                        ; preds = %for.cond14
  call void @step_hash(i32 noundef 55)
  %30 = load ptr, ptr %p_57.addr, align 8
  %31 = load ptr, ptr @g_67, align 8
  store ptr %30, ptr %31, align 8
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %32 = load i32, ptr @g_64, align 4
  %sub = sub nsw i32 %32, 8
  store i32 %sub, ptr @g_64, align 4
  br label %for.cond, !llvm.loop !47

for.end37:                                        ; preds = %for.cond
  call void @step_hash(i32 noundef 57)
  %33 = load ptr, ptr @g_67, align 8
  %34 = load ptr, ptr %33, align 8
  store ptr %34, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end37, %if.else29
  %35 = load ptr, ptr %retval, align 8
  ret ptr %35
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
!29 = distinct !{!29, !6}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
!34 = distinct !{!34, !6}
!35 = distinct !{!35, !6}
!36 = distinct !{!36, !6}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6}
!40 = distinct !{!40, !6}
!41 = distinct !{!41, !6}
!42 = distinct !{!42, !6}
!43 = distinct !{!43, !6}
!44 = distinct !{!44, !6}
!45 = distinct !{!45, !6}
!46 = distinct !{!46, !6}
!47 = distinct !{!47, !6}
