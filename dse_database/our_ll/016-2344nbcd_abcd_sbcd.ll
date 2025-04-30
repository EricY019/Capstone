; ModuleID = 'code/016-2344nbcd_abcd_sbcd.c'
source_filename = "code/016-2344nbcd_abcd_sbcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output_t = type { i8, i32, i32, i32, i32, i32 }
%struct.input_t = type { i8, i8, i32, i32, i32 }

@test_failed = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"[Mismatch: in.dst: %hhx, in.src: %hhx, in.x: %x] \00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"result: %hhx != %hhx | \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"c: %x != %x | \00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"v: %x != %x | \00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"z: %x != %x | \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"n: %x != %x | \00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"x: %x != %x | \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Test FAILED.\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Test OK.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uae_nbcd(%struct.output_t* noalias sret(%struct.output_t) align 4 %agg.result, i64 %in.coerce0, i64 %in.coerce1) #0 {
entry:
  %in = alloca %struct.input_t, align 4
  %src = alloca i8, align 1
  %newv_lo = alloca i16, align 2
  %newv_hi = alloca i16, align 2
  %newv = alloca i16, align 2
  %cflg = alloca i32, align 4
  %0 = bitcast %struct.input_t* %in to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %in.coerce0, i64* %1, align 4
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %in.coerce1, i64* %2, align 4
  %dst = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 1
  %3 = load i8, i8* %dst, align 1
  store i8 %3, i8* %src, align 1
  %4 = load i8, i8* %src, align 1
  %conv = sext i8 %4 to i32
  %and = and i32 %conv, 15
  %sub = sub nsw i32 0, %and
  %x = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 2
  %5 = load i32, i32* %x, align 4
  %sub1 = sub i32 %sub, %5
  %conv2 = trunc i32 %sub1 to i16
  store i16 %conv2, i16* %newv_lo, align 2
  %6 = load i8, i8* %src, align 1
  %conv3 = sext i8 %6 to i32
  %and4 = and i32 %conv3, 240
  %sub5 = sub nsw i32 0, %and4
  %conv6 = trunc i32 %sub5 to i16
  store i16 %conv6, i16* %newv_hi, align 2
  %7 = load i16, i16* %newv_lo, align 2
  %conv7 = zext i16 %7 to i32
  %cmp = icmp sgt i32 %conv7, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i16, i16* %newv_lo, align 2
  %conv9 = zext i16 %8 to i32
  %sub10 = sub nsw i32 %conv9, 6
  %conv11 = trunc i32 %sub10 to i16
  store i16 %conv11, i16* %newv_lo, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i16, i16* %newv_hi, align 2
  %conv12 = zext i16 %9 to i32
  %10 = load i16, i16* %newv_lo, align 2
  %conv13 = zext i16 %10 to i32
  %add = add nsw i32 %conv12, %conv13
  %conv14 = trunc i32 %add to i16
  store i16 %conv14, i16* %newv, align 2
  %11 = load i16, i16* %newv, align 2
  %conv15 = zext i16 %11 to i32
  %and16 = and i32 %conv15, 496
  %cmp17 = icmp sgt i32 %and16, 144
  %conv18 = zext i1 %cmp17 to i32
  store i32 %conv18, i32* %cflg, align 4
  %12 = load i32, i32* %cflg, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end
  %13 = load i16, i16* %newv, align 2
  %conv20 = zext i16 %13 to i32
  %sub21 = sub nsw i32 %conv20, 96
  %conv22 = trunc i32 %sub21 to i16
  store i16 %conv22, i16* %newv, align 2
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end
  %14 = load i32, i32* %cflg, align 4
  %tobool24 = icmp ne i32 %14, 0
  %15 = zext i1 %tobool24 to i64
  %cond = select i1 %tobool24, i32 1, i32 0
  %c = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 1
  store i32 %cond, i32* %c, align 4
  %c25 = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 1
  %16 = load i32, i32* %c25, align 4
  %x26 = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 5
  store i32 %16, i32* %x26, align 4
  %z = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 3
  %17 = load i32, i32* %z, align 4
  %18 = load i16, i16* %newv, align 2
  %conv27 = trunc i16 %18 to i8
  %conv28 = sext i8 %conv27 to i32
  %cmp29 = icmp eq i32 %conv28, 0
  %19 = zext i1 %cmp29 to i64
  %cond31 = select i1 %cmp29, i32 1, i32 0
  %and32 = and i32 %17, %cond31
  %z33 = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 3
  store i32 %and32, i32* %z33, align 4
  %20 = load i16, i16* %newv, align 2
  %conv34 = trunc i16 %20 to i8
  %conv35 = sext i8 %conv34 to i32
  %cmp36 = icmp slt i32 %conv35, 0
  %21 = zext i1 %cmp36 to i64
  %cond38 = select i1 %cmp36, i32 1, i32 0
  %n = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 4
  store i32 %cond38, i32* %n, align 4
  %v = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 4
  %22 = load i32, i32* %v, align 4
  %v39 = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 2
  store i32 %22, i32* %v39, align 4
  %23 = load i16, i16* %newv, align 2
  %conv40 = zext i16 %23 to i32
  %and41 = and i32 %conv40, 255
  %conv42 = trunc i32 %and41 to i8
  %result = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 0
  store i8 %conv42, i8* %result, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @verilog_nbcd(%struct.output_t* noalias sret(%struct.output_t) align 4 %agg.result, i64 %in.coerce0, i64 %in.coerce1) #0 {
entry:
  %in = alloca %struct.input_t, align 4
  %l = alloca i8, align 1
  %h = alloca i8, align 1
  %0 = bitcast %struct.input_t* %in to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %in.coerce0, i64* %1, align 4
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %in.coerce1, i64* %2, align 4
  %dst = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 1
  %3 = load i8, i8* %dst, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 15
  %sub = sub nsw i32 25, %and
  %conv1 = trunc i32 %sub to i8
  store i8 %conv1, i8* %l, align 1
  %dst2 = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 1
  %4 = load i8, i8* %dst2, align 1
  %conv3 = zext i8 %4 to i32
  %and4 = and i32 %conv3, 240
  %shr = ashr i32 %and4, 4
  %sub5 = sub nsw i32 25, %shr
  %conv6 = trunc i32 %sub5 to i8
  store i8 %conv6, i8* %h, align 1
  %dst7 = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 1
  %5 = load i8, i8* %dst7, align 1
  %conv8 = zext i8 %5 to i32
  %and9 = and i32 %conv8, 15
  %cmp = icmp sgt i32 %and9, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i8, i8* %h, align 1
  %conv11 = zext i8 %6 to i32
  %sub12 = sub nsw i32 %conv11, 1
  %conv13 = trunc i32 %sub12 to i8
  store i8 %conv13, i8* %h, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8, i8* %l, align 1
  %conv14 = zext i8 %7 to i32
  %and15 = and i32 %conv14, 15
  %conv16 = trunc i32 %and15 to i8
  store i8 %conv16, i8* %l, align 1
  %8 = load i8, i8* %h, align 1
  %conv17 = zext i8 %8 to i32
  %and18 = and i32 %conv17, 15
  %conv19 = trunc i32 %and18 to i8
  store i8 %conv19, i8* %h, align 1
  %x = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 2
  %9 = load i32, i32* %x, align 4
  %cmp20 = icmp eq i32 %9, 0
  br i1 %cmp20, label %if.then22, label %if.end45

if.then22:                                        ; preds = %if.end
  %10 = load i8, i8* %l, align 1
  %conv23 = zext i8 %10 to i32
  %cmp24 = icmp eq i32 %conv23, 9
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.then22
  store i8 0, i8* %l, align 1
  %11 = load i8, i8* %h, align 1
  %conv27 = zext i8 %11 to i32
  %cmp28 = icmp eq i32 %conv27, 9
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then26
  br label %cond.end

cond.false:                                       ; preds = %if.then26
  %12 = load i8, i8* %h, align 1
  %conv30 = zext i8 %12 to i32
  %add = add nsw i32 %conv30, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %add, %cond.false ]
  %conv31 = trunc i32 %cond to i8
  store i8 %conv31, i8* %h, align 1
  br label %if.end44

if.else:                                          ; preds = %if.then22
  %13 = load i8, i8* %l, align 1
  %conv32 = zext i8 %13 to i32
  %cmp33 = icmp eq i32 %conv32, 15
  br i1 %cmp33, label %if.then35, label %if.else39

if.then35:                                        ; preds = %if.else
  store i8 0, i8* %l, align 1
  %14 = load i8, i8* %h, align 1
  %conv36 = zext i8 %14 to i32
  %add37 = add nsw i32 %conv36, 1
  %conv38 = trunc i32 %add37 to i8
  store i8 %conv38, i8* %h, align 1
  br label %if.end43

if.else39:                                        ; preds = %if.else
  %15 = load i8, i8* %l, align 1
  %conv40 = zext i8 %15 to i32
  %add41 = add nsw i32 %conv40, 1
  %conv42 = trunc i32 %add41 to i8
  store i8 %conv42, i8* %l, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.else39, %if.then35
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %cond.end
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end
  %16 = load i8, i8* %l, align 1
  %conv46 = zext i8 %16 to i32
  %and47 = and i32 %conv46, 15
  %conv48 = trunc i32 %and47 to i8
  store i8 %conv48, i8* %l, align 1
  %17 = load i8, i8* %h, align 1
  %conv49 = zext i8 %17 to i32
  %and50 = and i32 %conv49, 15
  %conv51 = trunc i32 %and50 to i8
  store i8 %conv51, i8* %h, align 1
  %18 = load i8, i8* %h, align 1
  %conv52 = zext i8 %18 to i32
  %shl = shl i32 %conv52, 4
  %19 = load i8, i8* %l, align 1
  %conv53 = zext i8 %19 to i32
  %add54 = add nsw i32 %shl, %conv53
  %conv55 = trunc i32 %add54 to i8
  %result = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 0
  store i8 %conv55, i8* %result, align 4
  %v = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 4
  %20 = load i32, i32* %v, align 4
  %v56 = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 2
  store i32 %20, i32* %v56, align 4
  %z = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 3
  %21 = load i32, i32* %z, align 4
  %result57 = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 0
  %22 = load i8, i8* %result57, align 4
  %conv58 = zext i8 %22 to i32
  %cmp59 = icmp eq i32 %conv58, 0
  %23 = zext i1 %cmp59 to i64
  %cond61 = select i1 %cmp59, i32 1, i32 0
  %and62 = and i32 %21, %cond61
  %z63 = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 3
  store i32 %and62, i32* %z63, align 4
  %dst64 = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 1
  %24 = load i8, i8* %dst64, align 1
  %conv65 = zext i8 %24 to i32
  %cmp66 = icmp eq i32 %conv65, 0
  br i1 %cmp66, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end45
  %x68 = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 2
  %25 = load i32, i32* %x68, align 4
  %cmp69 = icmp eq i32 %25, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end45
  %26 = phi i1 [ false, %if.end45 ], [ %cmp69, %land.rhs ]
  %27 = zext i1 %26 to i64
  %cond71 = select i1 %26, i32 0, i32 1
  %x72 = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 5
  store i32 %cond71, i32* %x72, align 4
  %c = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 1
  store i32 %cond71, i32* %c, align 4
  %result73 = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 0
  %28 = load i8, i8* %result73, align 4
  %conv74 = zext i8 %28 to i32
  %and75 = and i32 %conv74, 128
  %cmp76 = icmp eq i32 %and75, 0
  %29 = zext i1 %cmp76 to i64
  %cond78 = select i1 %cmp76, i32 0, i32 1
  %n = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 4
  store i32 %cond78, i32* %n, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uae_abcd(%struct.output_t* noalias sret(%struct.output_t) align 4 %agg.result, i64 %in.coerce0, i64 %in.coerce1) #0 {
entry:
  %in = alloca %struct.input_t, align 4
  %src = alloca i8, align 1
  %dst = alloca i8, align 1
  %newv_lo = alloca i16, align 2
  %newv_hi = alloca i16, align 2
  %newv = alloca i16, align 2
  %tmp_newv = alloca i16, align 2
  %cflg = alloca i32, align 4
  %0 = bitcast %struct.input_t* %in to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %in.coerce0, i64* %1, align 4
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %in.coerce1, i64* %2, align 4
  %src1 = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 0
  %3 = load i8, i8* %src1, align 4
  store i8 %3, i8* %src, align 1
  %dst2 = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 1
  %4 = load i8, i8* %dst2, align 1
  store i8 %4, i8* %dst, align 1
  %5 = load i8, i8* %src, align 1
  %conv = sext i8 %5 to i32
  %and = and i32 %conv, 15
  %6 = load i8, i8* %dst, align 1
  %conv3 = sext i8 %6 to i32
  %and4 = and i32 %conv3, 15
  %add = add nsw i32 %and, %and4
  %x = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 2
  %7 = load i32, i32* %x, align 4
  %tobool = icmp ne i32 %7, 0
  %8 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  %add5 = add nsw i32 %add, %cond
  %conv6 = trunc i32 %add5 to i16
  store i16 %conv6, i16* %newv_lo, align 2
  %9 = load i8, i8* %src, align 1
  %conv7 = sext i8 %9 to i32
  %and8 = and i32 %conv7, 240
  %10 = load i8, i8* %dst, align 1
  %conv9 = sext i8 %10 to i32
  %and10 = and i32 %conv9, 240
  %add11 = add nsw i32 %and8, %and10
  %conv12 = trunc i32 %add11 to i16
  store i16 %conv12, i16* %newv_hi, align 2
  %11 = load i16, i16* %newv_hi, align 2
  %conv13 = zext i16 %11 to i32
  %12 = load i16, i16* %newv_lo, align 2
  %conv14 = zext i16 %12 to i32
  %add15 = add nsw i32 %conv13, %conv14
  %conv16 = trunc i32 %add15 to i16
  store i16 %conv16, i16* %tmp_newv, align 2
  store i16 %conv16, i16* %newv, align 2
  %13 = load i16, i16* %newv_lo, align 2
  %conv17 = zext i16 %13 to i32
  %cmp = icmp sgt i32 %conv17, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i16, i16* %newv, align 2
  %conv19 = zext i16 %14 to i32
  %add20 = add nsw i32 %conv19, 6
  %conv21 = trunc i32 %add20 to i16
  store i16 %conv21, i16* %newv, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i16, i16* %newv, align 2
  %conv22 = zext i16 %15 to i32
  %and23 = and i32 %conv22, 1008
  %cmp24 = icmp sgt i32 %and23, 144
  %conv25 = zext i1 %cmp24 to i32
  store i32 %conv25, i32* %cflg, align 4
  %16 = load i32, i32* %cflg, align 4
  %tobool26 = icmp ne i32 %16, 0
  br i1 %tobool26, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end
  %17 = load i16, i16* %newv, align 2
  %conv28 = zext i16 %17 to i32
  %add29 = add nsw i32 %conv28, 96
  %conv30 = trunc i32 %add29 to i16
  store i16 %conv30, i16* %newv, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end
  %18 = load i32, i32* %cflg, align 4
  %c = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 1
  store i32 %18, i32* %c, align 4
  %c32 = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 1
  %19 = load i32, i32* %c32, align 4
  %x33 = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 5
  store i32 %19, i32* %x33, align 4
  %z = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 3
  %20 = load i32, i32* %z, align 4
  %21 = load i16, i16* %newv, align 2
  %conv34 = trunc i16 %21 to i8
  %conv35 = sext i8 %conv34 to i32
  %cmp36 = icmp eq i32 %conv35, 0
  %conv37 = zext i1 %cmp36 to i32
  %and38 = and i32 %20, %conv37
  %z39 = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 3
  store i32 %and38, i32* %z39, align 4
  %22 = load i16, i16* %newv, align 2
  %conv40 = trunc i16 %22 to i8
  %conv41 = sext i8 %conv40 to i32
  %cmp42 = icmp slt i32 %conv41, 0
  %conv43 = zext i1 %cmp42 to i32
  %n = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 4
  store i32 %conv43, i32* %n, align 4
  %23 = load i16, i16* %tmp_newv, align 2
  %conv44 = zext i16 %23 to i32
  %and45 = and i32 %conv44, 128
  %cmp46 = icmp eq i32 %and45, 0
  br i1 %cmp46, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end31
  %24 = load i16, i16* %newv, align 2
  %conv48 = zext i16 %24 to i32
  %and49 = and i32 %conv48, 128
  %cmp50 = icmp ne i32 %and49, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end31
  %25 = phi i1 [ false, %if.end31 ], [ %cmp50, %land.rhs ]
  %land.ext = zext i1 %25 to i32
  %v = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 2
  store i32 %land.ext, i32* %v, align 4
  %26 = load i16, i16* %newv, align 2
  %conv52 = zext i16 %26 to i32
  %and53 = and i32 %conv52, 255
  %conv54 = trunc i32 %and53 to i8
  %result = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 0
  store i8 %conv54, i8* %result, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @verilog_abcd(%struct.output_t* noalias sret(%struct.output_t) align 4 %agg.result, i64 %in.coerce0, i64 %in.coerce1) #0 {
entry:
  %in = alloca %struct.input_t, align 4
  %l = alloca i8, align 1
  %h = alloca i8, align 1
  %tmp = alloca i32, align 4
  %0 = bitcast %struct.input_t* %in to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %in.coerce0, i64* %1, align 4
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %in.coerce1, i64* %2, align 4
  %src = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 0
  %3 = load i8, i8* %src, align 4
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 15
  %dst = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 1
  %4 = load i8, i8* %dst, align 1
  %conv1 = zext i8 %4 to i32
  %and2 = and i32 %conv1, 15
  %add = add nsw i32 %and, %and2
  %x = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 2
  %5 = load i32, i32* %x, align 4
  %add3 = add i32 %add, %5
  %conv4 = trunc i32 %add3 to i8
  store i8 %conv4, i8* %l, align 1
  %src5 = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 0
  %6 = load i8, i8* %src5, align 4
  %conv6 = zext i8 %6 to i32
  %and7 = and i32 %conv6, 240
  %shr = ashr i32 %and7, 4
  %dst8 = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 1
  %7 = load i8, i8* %dst8, align 1
  %conv9 = zext i8 %7 to i32
  %and10 = and i32 %conv9, 240
  %shr11 = ashr i32 %and10, 4
  %add12 = add nsw i32 %shr, %shr11
  %conv13 = trunc i32 %add12 to i8
  store i8 %conv13, i8* %h, align 1
  %src14 = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 0
  %8 = load i8, i8* %src14, align 4
  %conv15 = zext i8 %8 to i32
  %dst16 = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 1
  %9 = load i8, i8* %dst16, align 1
  %conv17 = zext i8 %9 to i32
  %add18 = add nsw i32 %conv15, %conv17
  %x19 = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 2
  %10 = load i32, i32* %x19, align 4
  %add20 = add i32 %add18, %10
  %and21 = and i32 %add20, 128
  store i32 %and21, i32* %tmp, align 4
  %11 = load i8, i8* %l, align 1
  %conv22 = zext i8 %11 to i32
  %cmp = icmp sgt i32 %conv22, 9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %12 = load i8, i8* %l, align 1
  %conv24 = zext i8 %12 to i32
  %add25 = add nsw i32 %conv24, 6
  br label %cond.end

cond.false:                                       ; preds = %entry
  %13 = load i8, i8* %l, align 1
  %conv26 = zext i8 %13 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add25, %cond.true ], [ %conv26, %cond.false ]
  %conv27 = trunc i32 %cond to i8
  store i8 %conv27, i8* %l, align 1
  %14 = load i8, i8* %l, align 1
  %conv28 = zext i8 %14 to i32
  %cmp29 = icmp sgt i32 %conv28, 31
  br i1 %cmp29, label %cond.true31, label %cond.false34

cond.true31:                                      ; preds = %cond.end
  %15 = load i8, i8* %h, align 1
  %conv32 = zext i8 %15 to i32
  %add33 = add nsw i32 %conv32, 2
  br label %cond.end45

cond.false34:                                     ; preds = %cond.end
  %16 = load i8, i8* %l, align 1
  %conv35 = zext i8 %16 to i32
  %cmp36 = icmp sgt i32 %conv35, 15
  br i1 %cmp36, label %cond.true38, label %cond.false41

cond.true38:                                      ; preds = %cond.false34
  %17 = load i8, i8* %h, align 1
  %conv39 = zext i8 %17 to i32
  %add40 = add nsw i32 %conv39, 1
  br label %cond.end43

cond.false41:                                     ; preds = %cond.false34
  %18 = load i8, i8* %h, align 1
  %conv42 = zext i8 %18 to i32
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true38
  %cond44 = phi i32 [ %add40, %cond.true38 ], [ %conv42, %cond.false41 ]
  br label %cond.end45

cond.end45:                                       ; preds = %cond.end43, %cond.true31
  %cond46 = phi i32 [ %add33, %cond.true31 ], [ %cond44, %cond.end43 ]
  %conv47 = trunc i32 %cond46 to i8
  store i8 %conv47, i8* %h, align 1
  %19 = load i8, i8* %h, align 1
  %conv48 = zext i8 %19 to i32
  %cmp49 = icmp sgt i32 %conv48, 9
  br i1 %cmp49, label %cond.true51, label %cond.false54

cond.true51:                                      ; preds = %cond.end45
  %20 = load i8, i8* %h, align 1
  %conv52 = zext i8 %20 to i32
  %add53 = add nsw i32 %conv52, 6
  br label %cond.end56

cond.false54:                                     ; preds = %cond.end45
  %21 = load i8, i8* %h, align 1
  %conv55 = zext i8 %21 to i32
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false54, %cond.true51
  %cond57 = phi i32 [ %add53, %cond.true51 ], [ %conv55, %cond.false54 ]
  %conv58 = trunc i32 %cond57 to i8
  store i8 %conv58, i8* %h, align 1
  %22 = load i8, i8* %h, align 1
  %conv59 = zext i8 %22 to i32
  %cmp60 = icmp sgt i32 %conv59, 9
  %23 = zext i1 %cmp60 to i64
  %cond62 = select i1 %cmp60, i32 1, i32 0
  %c = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 1
  store i32 %cond62, i32* %c, align 4
  %c63 = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 1
  %24 = load i32, i32* %c63, align 4
  %x64 = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 5
  store i32 %24, i32* %x64, align 4
  %25 = load i8, i8* %l, align 1
  %conv65 = zext i8 %25 to i32
  %and66 = and i32 %conv65, 15
  %conv67 = trunc i32 %and66 to i8
  store i8 %conv67, i8* %l, align 1
  %26 = load i8, i8* %h, align 1
  %conv68 = zext i8 %26 to i32
  %and69 = and i32 %conv68, 15
  %conv70 = trunc i32 %and69 to i8
  store i8 %conv70, i8* %h, align 1
  %27 = load i8, i8* %h, align 1
  %conv71 = zext i8 %27 to i32
  %shl = shl i32 %conv71, 4
  %28 = load i8, i8* %l, align 1
  %conv72 = zext i8 %28 to i32
  %add73 = add nsw i32 %shl, %conv72
  %conv74 = trunc i32 %add73 to i8
  %result = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 0
  store i8 %conv74, i8* %result, align 4
  %z = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 3
  %29 = load i32, i32* %z, align 4
  %result75 = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 0
  %30 = load i8, i8* %result75, align 4
  %conv76 = zext i8 %30 to i32
  %cmp77 = icmp eq i32 %conv76, 0
  %conv78 = zext i1 %cmp77 to i32
  %and79 = and i32 %29, %conv78
  %z80 = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 3
  store i32 %and79, i32* %z80, align 4
  %result81 = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 0
  %31 = load i8, i8* %result81, align 4
  %conv82 = zext i8 %31 to i32
  %and83 = and i32 %conv82, 128
  %cmp84 = icmp eq i32 %and83, 128
  %32 = zext i1 %cmp84 to i64
  %cond86 = select i1 %cmp84, i32 1, i32 0
  %n = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 4
  store i32 %cond86, i32* %n, align 4
  %33 = load i32, i32* %tmp, align 4
  %cmp87 = icmp eq i32 %33, 0
  br i1 %cmp87, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end56
  %result89 = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 0
  %34 = load i8, i8* %result89, align 4
  %conv90 = zext i8 %34 to i32
  %and91 = and i32 %conv90, 128
  %cmp92 = icmp ne i32 %and91, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end56
  %35 = phi i1 [ false, %cond.end56 ], [ %cmp92, %land.rhs ]
  %land.ext = zext i1 %35 to i32
  %v = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 2
  store i32 %land.ext, i32* %v, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uae_sbcd(%struct.output_t* noalias sret(%struct.output_t) align 4 %agg.result, i64 %in.coerce0, i64 %in.coerce1) #0 {
entry:
  %in = alloca %struct.input_t, align 4
  %src = alloca i8, align 1
  %dst = alloca i8, align 1
  %newv_lo = alloca i16, align 2
  %newv_hi = alloca i16, align 2
  %newv = alloca i16, align 2
  %tmp_newv = alloca i16, align 2
  %bcd = alloca i32, align 4
  %0 = bitcast %struct.input_t* %in to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %in.coerce0, i64* %1, align 4
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %in.coerce1, i64* %2, align 4
  %src1 = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 0
  %3 = load i8, i8* %src1, align 4
  store i8 %3, i8* %src, align 1
  %dst2 = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 1
  %4 = load i8, i8* %dst2, align 1
  store i8 %4, i8* %dst, align 1
  %5 = load i8, i8* %dst, align 1
  %conv = sext i8 %5 to i32
  %and = and i32 %conv, 15
  %6 = load i8, i8* %src, align 1
  %conv3 = sext i8 %6 to i32
  %and4 = and i32 %conv3, 15
  %sub = sub nsw i32 %and, %and4
  %x = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 2
  %7 = load i32, i32* %x, align 4
  %tobool = icmp ne i32 %7, 0
  %8 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  %sub5 = sub nsw i32 %sub, %cond
  %conv6 = trunc i32 %sub5 to i16
  store i16 %conv6, i16* %newv_lo, align 2
  %9 = load i8, i8* %dst, align 1
  %conv7 = sext i8 %9 to i32
  %and8 = and i32 %conv7, 240
  %10 = load i8, i8* %src, align 1
  %conv9 = sext i8 %10 to i32
  %and10 = and i32 %conv9, 240
  %sub11 = sub nsw i32 %and8, %and10
  %conv12 = trunc i32 %sub11 to i16
  store i16 %conv12, i16* %newv_hi, align 2
  store i32 0, i32* %bcd, align 4
  %11 = load i16, i16* %newv_hi, align 2
  %conv13 = zext i16 %11 to i32
  %12 = load i16, i16* %newv_lo, align 2
  %conv14 = zext i16 %12 to i32
  %add = add nsw i32 %conv13, %conv14
  %conv15 = trunc i32 %add to i16
  store i16 %conv15, i16* %tmp_newv, align 2
  store i16 %conv15, i16* %newv, align 2
  %13 = load i16, i16* %newv_lo, align 2
  %conv16 = zext i16 %13 to i32
  %and17 = and i32 %conv16, 240
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load i16, i16* %newv, align 2
  %conv19 = zext i16 %14 to i32
  %sub20 = sub nsw i32 %conv19, 6
  %conv21 = trunc i32 %sub20 to i16
  store i16 %conv21, i16* %newv, align 2
  store i32 6, i32* %bcd, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i8, i8* %dst, align 1
  %conv22 = sext i8 %15 to i32
  %and23 = and i32 %conv22, 255
  %16 = load i8, i8* %src, align 1
  %conv24 = sext i8 %16 to i32
  %and25 = and i32 %conv24, 255
  %sub26 = sub nsw i32 %and23, %and25
  %x27 = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 2
  %17 = load i32, i32* %x27, align 4
  %tobool28 = icmp ne i32 %17, 0
  %18 = zext i1 %tobool28 to i64
  %cond29 = select i1 %tobool28, i32 1, i32 0
  %sub30 = sub nsw i32 %sub26, %cond29
  %and31 = and i32 %sub30, 256
  %cmp = icmp sgt i32 %and31, 255
  br i1 %cmp, label %if.then33, label %if.end37

if.then33:                                        ; preds = %if.end
  %19 = load i16, i16* %newv, align 2
  %conv34 = zext i16 %19 to i32
  %sub35 = sub nsw i32 %conv34, 96
  %conv36 = trunc i32 %sub35 to i16
  store i16 %conv36, i16* %newv, align 2
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end
  %20 = load i8, i8* %dst, align 1
  %conv38 = sext i8 %20 to i32
  %and39 = and i32 %conv38, 255
  %21 = load i8, i8* %src, align 1
  %conv40 = sext i8 %21 to i32
  %and41 = and i32 %conv40, 255
  %sub42 = sub nsw i32 %and39, %and41
  %22 = load i32, i32* %bcd, align 4
  %sub43 = sub nsw i32 %sub42, %22
  %x44 = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 2
  %23 = load i32, i32* %x44, align 4
  %tobool45 = icmp ne i32 %23, 0
  %24 = zext i1 %tobool45 to i64
  %cond46 = select i1 %tobool45, i32 1, i32 0
  %sub47 = sub nsw i32 %sub43, %cond46
  %and48 = and i32 %sub47, 768
  %cmp49 = icmp sgt i32 %and48, 255
  %conv50 = zext i1 %cmp49 to i32
  %c = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 1
  store i32 %conv50, i32* %c, align 4
  %c51 = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 1
  %25 = load i32, i32* %c51, align 4
  %x52 = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 5
  store i32 %25, i32* %x52, align 4
  %z = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 3
  %26 = load i32, i32* %z, align 4
  %27 = load i16, i16* %newv, align 2
  %conv53 = trunc i16 %27 to i8
  %conv54 = sext i8 %conv53 to i32
  %cmp55 = icmp eq i32 %conv54, 0
  %conv56 = zext i1 %cmp55 to i32
  %and57 = and i32 %26, %conv56
  %z58 = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 3
  store i32 %and57, i32* %z58, align 4
  %28 = load i16, i16* %newv, align 2
  %conv59 = trunc i16 %28 to i8
  %conv60 = sext i8 %conv59 to i32
  %cmp61 = icmp slt i32 %conv60, 0
  %conv62 = zext i1 %cmp61 to i32
  %n = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 4
  store i32 %conv62, i32* %n, align 4
  %29 = load i16, i16* %tmp_newv, align 2
  %conv63 = zext i16 %29 to i32
  %and64 = and i32 %conv63, 128
  %cmp65 = icmp ne i32 %and64, 0
  br i1 %cmp65, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end37
  %30 = load i16, i16* %newv, align 2
  %conv67 = zext i16 %30 to i32
  %and68 = and i32 %conv67, 128
  %cmp69 = icmp eq i32 %and68, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end37
  %31 = phi i1 [ false, %if.end37 ], [ %cmp69, %land.rhs ]
  %land.ext = zext i1 %31 to i32
  %v = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 2
  store i32 %land.ext, i32* %v, align 4
  %32 = load i16, i16* %newv, align 2
  %conv71 = zext i16 %32 to i32
  %and72 = and i32 %conv71, 255
  %conv73 = trunc i32 %and72 to i8
  %result = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 0
  store i8 %conv73, i8* %result, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @verilog_sbcd(%struct.output_t* noalias sret(%struct.output_t) align 4 %agg.result, i64 %in.coerce0, i64 %in.coerce1) #0 {
entry:
  %in = alloca %struct.input_t, align 4
  %l = alloca i8, align 1
  %h = alloca i8, align 1
  %tmp = alloca i32, align 4
  %0 = bitcast %struct.input_t* %in to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %in.coerce0, i64* %1, align 4
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %in.coerce1, i64* %2, align 4
  %dst = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 1
  %3 = load i8, i8* %dst, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 15
  %add = add nsw i32 32, %and
  %src = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 0
  %4 = load i8, i8* %src, align 4
  %conv1 = zext i8 %4 to i32
  %and2 = and i32 %conv1, 15
  %sub = sub nsw i32 %add, %and2
  %x = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 2
  %5 = load i32, i32* %x, align 4
  %sub3 = sub i32 %sub, %5
  %conv4 = trunc i32 %sub3 to i8
  store i8 %conv4, i8* %l, align 1
  %dst5 = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 1
  %6 = load i8, i8* %dst5, align 1
  %conv6 = zext i8 %6 to i32
  %and7 = and i32 %conv6, 240
  %shr = ashr i32 %and7, 4
  %add8 = add nsw i32 32, %shr
  %src9 = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 0
  %7 = load i8, i8* %src9, align 4
  %conv10 = zext i8 %7 to i32
  %and11 = and i32 %conv10, 240
  %shr12 = ashr i32 %and11, 4
  %sub13 = sub nsw i32 %add8, %shr12
  %conv14 = trunc i32 %sub13 to i8
  store i8 %conv14, i8* %h, align 1
  %dst15 = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 1
  %8 = load i8, i8* %dst15, align 1
  %conv16 = zext i8 %8 to i32
  %src17 = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 0
  %9 = load i8, i8* %src17, align 4
  %conv18 = zext i8 %9 to i32
  %sub19 = sub nsw i32 %conv16, %conv18
  %x20 = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 2
  %10 = load i32, i32* %x20, align 4
  %sub21 = sub i32 %sub19, %10
  store i32 %sub21, i32* %tmp, align 4
  %11 = load i8, i8* %l, align 1
  %conv22 = zext i8 %11 to i32
  %cmp = icmp slt i32 %conv22, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %12 = load i8, i8* %l, align 1
  %conv24 = zext i8 %12 to i32
  %sub25 = sub nsw i32 %conv24, 6
  br label %cond.end

cond.false:                                       ; preds = %entry
  %13 = load i8, i8* %l, align 1
  %conv26 = zext i8 %13 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub25, %cond.true ], [ %conv26, %cond.false ]
  %conv27 = trunc i32 %cond to i8
  store i8 %conv27, i8* %l, align 1
  %14 = load i8, i8* %l, align 1
  %conv28 = zext i8 %14 to i32
  %cmp29 = icmp slt i32 %conv28, 16
  br i1 %cmp29, label %cond.true31, label %cond.false34

cond.true31:                                      ; preds = %cond.end
  %15 = load i8, i8* %h, align 1
  %conv32 = zext i8 %15 to i32
  %sub33 = sub nsw i32 %conv32, 2
  br label %cond.end45

cond.false34:                                     ; preds = %cond.end
  %16 = load i8, i8* %l, align 1
  %conv35 = zext i8 %16 to i32
  %cmp36 = icmp slt i32 %conv35, 32
  br i1 %cmp36, label %cond.true38, label %cond.false41

cond.true38:                                      ; preds = %cond.false34
  %17 = load i8, i8* %h, align 1
  %conv39 = zext i8 %17 to i32
  %sub40 = sub nsw i32 %conv39, 1
  br label %cond.end43

cond.false41:                                     ; preds = %cond.false34
  %18 = load i8, i8* %h, align 1
  %conv42 = zext i8 %18 to i32
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true38
  %cond44 = phi i32 [ %sub40, %cond.true38 ], [ %conv42, %cond.false41 ]
  br label %cond.end45

cond.end45:                                       ; preds = %cond.end43, %cond.true31
  %cond46 = phi i32 [ %sub33, %cond.true31 ], [ %cond44, %cond.end43 ]
  %conv47 = trunc i32 %cond46 to i8
  store i8 %conv47, i8* %h, align 1
  %19 = load i8, i8* %h, align 1
  %conv48 = zext i8 %19 to i32
  %cmp49 = icmp slt i32 %conv48, 32
  br i1 %cmp49, label %land.lhs.true, label %cond.false57

land.lhs.true:                                    ; preds = %cond.end45
  %20 = load i32, i32* %tmp, align 4
  %and51 = and i32 %20, 256
  %cmp52 = icmp sgt i32 %and51, 255
  br i1 %cmp52, label %cond.true54, label %cond.false57

cond.true54:                                      ; preds = %land.lhs.true
  %21 = load i8, i8* %h, align 1
  %conv55 = zext i8 %21 to i32
  %sub56 = sub nsw i32 %conv55, 6
  br label %cond.end59

cond.false57:                                     ; preds = %land.lhs.true, %cond.end45
  %22 = load i8, i8* %h, align 1
  %conv58 = zext i8 %22 to i32
  br label %cond.end59

cond.end59:                                       ; preds = %cond.false57, %cond.true54
  %cond60 = phi i32 [ %sub56, %cond.true54 ], [ %conv58, %cond.false57 ]
  %conv61 = trunc i32 %cond60 to i8
  store i8 %conv61, i8* %h, align 1
  %23 = load i8, i8* %h, align 1
  %conv62 = zext i8 %23 to i32
  %cmp63 = icmp slt i32 %conv62, 32
  %24 = zext i1 %cmp63 to i64
  %cond65 = select i1 %cmp63, i32 1, i32 0
  %c = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 1
  store i32 %cond65, i32* %c, align 4
  %c66 = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 1
  %25 = load i32, i32* %c66, align 4
  %x67 = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 5
  store i32 %25, i32* %x67, align 4
  %26 = load i8, i8* %l, align 1
  %conv68 = zext i8 %26 to i32
  %and69 = and i32 %conv68, 15
  %conv70 = trunc i32 %and69 to i8
  store i8 %conv70, i8* %l, align 1
  %27 = load i8, i8* %h, align 1
  %conv71 = zext i8 %27 to i32
  %and72 = and i32 %conv71, 15
  %conv73 = trunc i32 %and72 to i8
  store i8 %conv73, i8* %h, align 1
  %28 = load i8, i8* %h, align 1
  %conv74 = zext i8 %28 to i32
  %shl = shl i32 %conv74, 4
  %29 = load i8, i8* %l, align 1
  %conv75 = zext i8 %29 to i32
  %add76 = add nsw i32 %shl, %conv75
  %conv77 = trunc i32 %add76 to i8
  %result = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 0
  store i8 %conv77, i8* %result, align 4
  %z = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 3
  %30 = load i32, i32* %z, align 4
  %result78 = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 0
  %31 = load i8, i8* %result78, align 4
  %conv79 = zext i8 %31 to i32
  %cmp80 = icmp eq i32 %conv79, 0
  %conv81 = zext i1 %cmp80 to i32
  %and82 = and i32 %30, %conv81
  %z83 = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 3
  store i32 %and82, i32* %z83, align 4
  %result84 = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 0
  %32 = load i8, i8* %result84, align 4
  %conv85 = zext i8 %32 to i32
  %and86 = and i32 %conv85, 128
  %cmp87 = icmp eq i32 %and86, 128
  %33 = zext i1 %cmp87 to i64
  %cond89 = select i1 %cmp87, i32 1, i32 0
  %n = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 4
  store i32 %cond89, i32* %n, align 4
  %34 = load i32, i32* %tmp, align 4
  %and90 = and i32 %34, 128
  %cmp91 = icmp ne i32 %and90, 0
  br i1 %cmp91, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end59
  %result93 = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 0
  %35 = load i8, i8* %result93, align 4
  %conv94 = zext i8 %35 to i32
  %and95 = and i32 %conv94, 128
  %cmp96 = icmp eq i32 %and95, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end59
  %36 = phi i1 [ false, %cond.end59 ], [ %cmp96, %land.rhs ]
  %land.ext = zext i1 %36 to i32
  %v = getelementptr inbounds %struct.output_t, %struct.output_t* %agg.result, i32 0, i32 2
  store i32 %land.ext, i32* %v, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compare(i64 %in.coerce0, i64 %in.coerce1, %struct.output_t* byval(%struct.output_t) align 8 %uae, %struct.output_t* byval(%struct.output_t) align 8 %verilog) #0 {
entry:
  %in = alloca %struct.input_t, align 4
  %0 = bitcast %struct.input_t* %in to { i64, i64 }*
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %in.coerce0, i64* %1, align 4
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %in.coerce1, i64* %2, align 4
  %result = getelementptr inbounds %struct.output_t, %struct.output_t* %uae, i32 0, i32 0
  %3 = load i8, i8* %result, align 8
  %conv = zext i8 %3 to i32
  %result1 = getelementptr inbounds %struct.output_t, %struct.output_t* %verilog, i32 0, i32 0
  %4 = load i8, i8* %result1, align 8
  %conv2 = zext i8 %4 to i32
  %cmp = icmp eq i32 %conv, %conv2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %c = getelementptr inbounds %struct.output_t, %struct.output_t* %uae, i32 0, i32 1
  %5 = load i32, i32* %c, align 4
  %c4 = getelementptr inbounds %struct.output_t, %struct.output_t* %verilog, i32 0, i32 1
  %6 = load i32, i32* %c4, align 4
  %cmp5 = icmp eq i32 %5, %6
  br i1 %cmp5, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %v = getelementptr inbounds %struct.output_t, %struct.output_t* %uae, i32 0, i32 2
  %7 = load i32, i32* %v, align 8
  %v8 = getelementptr inbounds %struct.output_t, %struct.output_t* %verilog, i32 0, i32 2
  %8 = load i32, i32* %v8, align 8
  %cmp9 = icmp eq i32 %7, %8
  br i1 %cmp9, label %land.lhs.true11, label %if.end

land.lhs.true11:                                  ; preds = %land.lhs.true7
  %z = getelementptr inbounds %struct.output_t, %struct.output_t* %uae, i32 0, i32 3
  %9 = load i32, i32* %z, align 4
  %z12 = getelementptr inbounds %struct.output_t, %struct.output_t* %verilog, i32 0, i32 3
  %10 = load i32, i32* %z12, align 4
  %cmp13 = icmp eq i32 %9, %10
  br i1 %cmp13, label %land.lhs.true15, label %if.end

land.lhs.true15:                                  ; preds = %land.lhs.true11
  %n = getelementptr inbounds %struct.output_t, %struct.output_t* %uae, i32 0, i32 4
  %11 = load i32, i32* %n, align 8
  %n16 = getelementptr inbounds %struct.output_t, %struct.output_t* %verilog, i32 0, i32 4
  %12 = load i32, i32* %n16, align 8
  %cmp17 = icmp eq i32 %11, %12
  br i1 %cmp17, label %land.lhs.true19, label %if.end

land.lhs.true19:                                  ; preds = %land.lhs.true15
  %x = getelementptr inbounds %struct.output_t, %struct.output_t* %uae, i32 0, i32 5
  %13 = load i32, i32* %x, align 4
  %x20 = getelementptr inbounds %struct.output_t, %struct.output_t* %verilog, i32 0, i32 5
  %14 = load i32, i32* %x20, align 4
  %cmp21 = icmp eq i32 %13, %14
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true19
  br label %return

if.end:                                           ; preds = %land.lhs.true19, %land.lhs.true15, %land.lhs.true11, %land.lhs.true7, %land.lhs.true, %entry
  %dst = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 1
  %15 = load i8, i8* %dst, align 1
  %conv23 = zext i8 %15 to i32
  %src = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 0
  %16 = load i8, i8* %src, align 4
  %conv24 = zext i8 %16 to i32
  %x25 = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 2
  %17 = load i32, i32* %x25, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %conv23, i32 %conv24, i32 %17)
  %result26 = getelementptr inbounds %struct.output_t, %struct.output_t* %uae, i32 0, i32 0
  %18 = load i8, i8* %result26, align 8
  %conv27 = zext i8 %18 to i32
  %result28 = getelementptr inbounds %struct.output_t, %struct.output_t* %verilog, i32 0, i32 0
  %19 = load i8, i8* %result28, align 8
  %conv29 = zext i8 %19 to i32
  %cmp30 = icmp ne i32 %conv27, %conv29
  br i1 %cmp30, label %if.then32, label %if.end38

if.then32:                                        ; preds = %if.end
  %result33 = getelementptr inbounds %struct.output_t, %struct.output_t* %uae, i32 0, i32 0
  %20 = load i8, i8* %result33, align 8
  %conv34 = zext i8 %20 to i32
  %result35 = getelementptr inbounds %struct.output_t, %struct.output_t* %verilog, i32 0, i32 0
  %21 = load i8, i8* %result35, align 8
  %conv36 = zext i8 %21 to i32
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %conv34, i32 %conv36)
  br label %if.end38

if.end38:                                         ; preds = %if.then32, %if.end
  %c39 = getelementptr inbounds %struct.output_t, %struct.output_t* %uae, i32 0, i32 1
  %22 = load i32, i32* %c39, align 4
  %c40 = getelementptr inbounds %struct.output_t, %struct.output_t* %verilog, i32 0, i32 1
  %23 = load i32, i32* %c40, align 4
  %cmp41 = icmp ne i32 %22, %23
  br i1 %cmp41, label %if.then43, label %if.end47

if.then43:                                        ; preds = %if.end38
  %c44 = getelementptr inbounds %struct.output_t, %struct.output_t* %uae, i32 0, i32 1
  %24 = load i32, i32* %c44, align 4
  %c45 = getelementptr inbounds %struct.output_t, %struct.output_t* %verilog, i32 0, i32 1
  %25 = load i32, i32* %c45, align 4
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32 %25)
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.end38
  %v48 = getelementptr inbounds %struct.output_t, %struct.output_t* %uae, i32 0, i32 2
  %26 = load i32, i32* %v48, align 8
  %v49 = getelementptr inbounds %struct.output_t, %struct.output_t* %verilog, i32 0, i32 2
  %27 = load i32, i32* %v49, align 8
  %cmp50 = icmp ne i32 %26, %27
  br i1 %cmp50, label %if.then52, label %if.end56

if.then52:                                        ; preds = %if.end47
  %v53 = getelementptr inbounds %struct.output_t, %struct.output_t* %uae, i32 0, i32 2
  %28 = load i32, i32* %v53, align 8
  %v54 = getelementptr inbounds %struct.output_t, %struct.output_t* %verilog, i32 0, i32 2
  %29 = load i32, i32* %v54, align 8
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %28, i32 %29)
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.end47
  %z57 = getelementptr inbounds %struct.output_t, %struct.output_t* %uae, i32 0, i32 3
  %30 = load i32, i32* %z57, align 4
  %z58 = getelementptr inbounds %struct.output_t, %struct.output_t* %verilog, i32 0, i32 3
  %31 = load i32, i32* %z58, align 4
  %cmp59 = icmp ne i32 %30, %31
  br i1 %cmp59, label %if.then61, label %if.end65

if.then61:                                        ; preds = %if.end56
  %z62 = getelementptr inbounds %struct.output_t, %struct.output_t* %uae, i32 0, i32 3
  %32 = load i32, i32* %z62, align 4
  %z63 = getelementptr inbounds %struct.output_t, %struct.output_t* %verilog, i32 0, i32 3
  %33 = load i32, i32* %z63, align 4
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %32, i32 %33)
  br label %if.end65

if.end65:                                         ; preds = %if.then61, %if.end56
  %n66 = getelementptr inbounds %struct.output_t, %struct.output_t* %uae, i32 0, i32 4
  %34 = load i32, i32* %n66, align 8
  %n67 = getelementptr inbounds %struct.output_t, %struct.output_t* %verilog, i32 0, i32 4
  %35 = load i32, i32* %n67, align 8
  %cmp68 = icmp ne i32 %34, %35
  br i1 %cmp68, label %if.then70, label %if.end74

if.then70:                                        ; preds = %if.end65
  %n71 = getelementptr inbounds %struct.output_t, %struct.output_t* %uae, i32 0, i32 4
  %36 = load i32, i32* %n71, align 8
  %n72 = getelementptr inbounds %struct.output_t, %struct.output_t* %verilog, i32 0, i32 4
  %37 = load i32, i32* %n72, align 8
  %call73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %36, i32 %37)
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %if.end65
  %x75 = getelementptr inbounds %struct.output_t, %struct.output_t* %uae, i32 0, i32 5
  %38 = load i32, i32* %x75, align 4
  %x76 = getelementptr inbounds %struct.output_t, %struct.output_t* %verilog, i32 0, i32 5
  %39 = load i32, i32* %x76, align 4
  %cmp77 = icmp ne i32 %38, %39
  br i1 %cmp77, label %if.then79, label %if.end83

if.then79:                                        ; preds = %if.end74
  %x80 = getelementptr inbounds %struct.output_t, %struct.output_t* %uae, i32 0, i32 5
  %40 = load i32, i32* %x80, align 4
  %x81 = getelementptr inbounds %struct.output_t, %struct.output_t* %verilog, i32 0, i32 5
  %41 = load i32, i32* %x81, align 4
  %call82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %40, i32 %41)
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %if.end74
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* @test_failed, align 4
  br label %return

return:                                           ; preds = %if.end83, %if.then
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %in = alloca %struct.input_t, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %uae0 = alloca %struct.output_t, align 8
  %verilog0 = alloca %struct.output_t, align 8
  %uae1 = alloca %struct.output_t, align 8
  %verilog1 = alloca %struct.output_t, align 8
  %uae2 = alloca %struct.output_t, align 8
  %verilog2 = alloca %struct.output_t, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc20, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 256
  br i1 %cmp2, label %for.body3, label %for.end22

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc17, %for.body3
  %2 = load i32, i32* %k, align 4
  %cmp5 = icmp slt i32 %2, 2
  br i1 %cmp5, label %for.body6, label %for.end19

for.body6:                                        ; preds = %for.cond4
  store i32 0, i32* %l, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc14, %for.body6
  %3 = load i32, i32* %l, align 4
  %cmp8 = icmp slt i32 %3, 2
  br i1 %cmp8, label %for.body9, label %for.end16

for.body9:                                        ; preds = %for.cond7
  store i32 0, i32* %m, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body9
  %4 = load i32, i32* %m, align 4
  %cmp11 = icmp slt i32 %4, 2
  br i1 %cmp11, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond10
  %5 = load i32, i32* %i, align 4
  %conv = trunc i32 %5 to i8
  %src = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 0
  store i8 %conv, i8* %src, align 4
  %6 = load i32, i32* %j, align 4
  %conv13 = trunc i32 %6 to i8
  %dst = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 1
  store i8 %conv13, i8* %dst, align 1
  %7 = load i32, i32* %k, align 4
  %x = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 2
  store i32 %7, i32* %x, align 4
  %8 = load i32, i32* %l, align 4
  %z = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 3
  store i32 %8, i32* %z, align 4
  %9 = load i32, i32* %m, align 4
  %v = getelementptr inbounds %struct.input_t, %struct.input_t* %in, i32 0, i32 4
  store i32 %9, i32* %v, align 4
  %10 = bitcast %struct.input_t* %in to { i64, i64 }*
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 4
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  %14 = load i64, i64* %13, align 4
  call void @uae_nbcd(%struct.output_t* sret(%struct.output_t) align 4 %uae0, i64 %12, i64 %14)
  %15 = bitcast %struct.input_t* %in to { i64, i64 }*
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 4
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1
  %19 = load i64, i64* %18, align 4
  call void @verilog_nbcd(%struct.output_t* sret(%struct.output_t) align 4 %verilog0, i64 %17, i64 %19)
  %20 = bitcast %struct.input_t* %in to { i64, i64 }*
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 4
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1
  %24 = load i64, i64* %23, align 4
  call void @compare(i64 %22, i64 %24, %struct.output_t* byval(%struct.output_t) align 8 %uae0, %struct.output_t* byval(%struct.output_t) align 8 %verilog0)
  %25 = bitcast %struct.input_t* %in to { i64, i64 }*
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 4
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 1
  %29 = load i64, i64* %28, align 4
  call void @uae_abcd(%struct.output_t* sret(%struct.output_t) align 4 %uae1, i64 %27, i64 %29)
  %30 = bitcast %struct.input_t* %in to { i64, i64 }*
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 4
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 1
  %34 = load i64, i64* %33, align 4
  call void @verilog_abcd(%struct.output_t* sret(%struct.output_t) align 4 %verilog1, i64 %32, i64 %34)
  %35 = bitcast %struct.input_t* %in to { i64, i64 }*
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 4
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %35, i32 0, i32 1
  %39 = load i64, i64* %38, align 4
  call void @compare(i64 %37, i64 %39, %struct.output_t* byval(%struct.output_t) align 8 %uae1, %struct.output_t* byval(%struct.output_t) align 8 %verilog1)
  %40 = bitcast %struct.input_t* %in to { i64, i64 }*
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 4
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 1
  %44 = load i64, i64* %43, align 4
  call void @uae_sbcd(%struct.output_t* sret(%struct.output_t) align 4 %uae2, i64 %42, i64 %44)
  %45 = bitcast %struct.input_t* %in to { i64, i64 }*
  %46 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 4
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %45, i32 0, i32 1
  %49 = load i64, i64* %48, align 4
  call void @verilog_sbcd(%struct.output_t* sret(%struct.output_t) align 4 %verilog2, i64 %47, i64 %49)
  %50 = bitcast %struct.input_t* %in to { i64, i64 }*
  %51 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 4
  %53 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %50, i32 0, i32 1
  %54 = load i64, i64* %53, align 4
  call void @compare(i64 %52, i64 %54, %struct.output_t* byval(%struct.output_t) align 8 %uae2, %struct.output_t* byval(%struct.output_t) align 8 %verilog2)
  br label %for.inc

for.inc:                                          ; preds = %for.body12
  %55 = load i32, i32* %m, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %m, align 4
  br label %for.cond10, !llvm.loop !4

for.end:                                          ; preds = %for.cond10
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %56 = load i32, i32* %l, align 4
  %inc15 = add nsw i32 %56, 1
  store i32 %inc15, i32* %l, align 4
  br label %for.cond7, !llvm.loop !6

for.end16:                                        ; preds = %for.cond7
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %57 = load i32, i32* %k, align 4
  %inc18 = add nsw i32 %57, 1
  store i32 %inc18, i32* %k, align 4
  br label %for.cond4, !llvm.loop !7

for.end19:                                        ; preds = %for.cond4
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %58 = load i32, i32* %j, align 4
  %inc21 = add nsw i32 %58, 1
  store i32 %inc21, i32* %j, align 4
  br label %for.cond1, !llvm.loop !8

for.end22:                                        ; preds = %for.cond1
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %59 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %59, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end25:                                        ; preds = %for.cond
  %60 = load i32, i32* @test_failed, align 4
  %tobool = icmp ne i32 %60, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.end25
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %if.end

if.else:                                          ; preds = %for.end25
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
