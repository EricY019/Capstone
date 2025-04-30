; ModuleID = './code/016-2344nbcd_abcd_sbcd.c'
source_filename = "./code/016-2344nbcd_abcd_sbcd.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.output_t = type { i8, i32, i32, i32, i32, i32 }
%struct.input_t = type { i8, i8, i32, i32, i32 }

@test_failed = global i32 0, align 4
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

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @uae_nbcd(ptr dead_on_unwind noalias writable sret(%struct.output_t) align 4 %agg.result, [2 x i64] %in.coerce) #0 {
entry:
  %in = alloca %struct.input_t, align 4
  %src = alloca i8, align 1
  %newv_lo = alloca i16, align 2
  %newv_hi = alloca i16, align 2
  %newv = alloca i16, align 2
  %cflg = alloca i32, align 4
  store [2 x i64] %in.coerce, ptr %in, align 4
  %dst = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 1
  %0 = load i8, ptr %dst, align 1
  store i8 %0, ptr %src, align 1
  %1 = load i8, ptr %src, align 1
  %conv = sext i8 %1 to i32
  %and = and i32 %conv, 15
  %sub = sub nsw i32 0, %and
  %x = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 2
  %2 = load i32, ptr %x, align 4
  %sub1 = sub i32 %sub, %2
  %conv2 = trunc i32 %sub1 to i16
  store i16 %conv2, ptr %newv_lo, align 2
  %3 = load i8, ptr %src, align 1
  %conv3 = sext i8 %3 to i32
  %and4 = and i32 %conv3, 240
  %sub5 = sub nsw i32 0, %and4
  %conv6 = trunc i32 %sub5 to i16
  store i16 %conv6, ptr %newv_hi, align 2
  %4 = load i16, ptr %newv_lo, align 2
  %conv7 = zext i16 %4 to i32
  %cmp = icmp sgt i32 %conv7, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i16, ptr %newv_lo, align 2
  %conv9 = zext i16 %5 to i32
  %sub10 = sub nsw i32 %conv9, 6
  %conv11 = trunc i32 %sub10 to i16
  store i16 %conv11, ptr %newv_lo, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i16, ptr %newv_hi, align 2
  %conv12 = zext i16 %6 to i32
  %7 = load i16, ptr %newv_lo, align 2
  %conv13 = zext i16 %7 to i32
  %add = add nsw i32 %conv12, %conv13
  %conv14 = trunc i32 %add to i16
  store i16 %conv14, ptr %newv, align 2
  %8 = load i16, ptr %newv, align 2
  %conv15 = zext i16 %8 to i32
  %and16 = and i32 %conv15, 496
  %cmp17 = icmp sgt i32 %and16, 144
  %conv18 = zext i1 %cmp17 to i32
  store i32 %conv18, ptr %cflg, align 4
  %9 = load i32, ptr %cflg, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end
  %10 = load i16, ptr %newv, align 2
  %conv20 = zext i16 %10 to i32
  %sub21 = sub nsw i32 %conv20, 96
  %conv22 = trunc i32 %sub21 to i16
  store i16 %conv22, ptr %newv, align 2
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end
  %11 = load i32, ptr %cflg, align 4
  %tobool24 = icmp ne i32 %11, 0
  %12 = zext i1 %tobool24 to i64
  %cond = select i1 %tobool24, i32 1, i32 0
  %c = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 1
  store i32 %cond, ptr %c, align 4
  %c25 = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 1
  %13 = load i32, ptr %c25, align 4
  %x26 = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 5
  store i32 %13, ptr %x26, align 4
  %z = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 3
  %14 = load i32, ptr %z, align 4
  %15 = load i16, ptr %newv, align 2
  %conv27 = trunc i16 %15 to i8
  %conv28 = sext i8 %conv27 to i32
  %cmp29 = icmp eq i32 %conv28, 0
  %16 = zext i1 %cmp29 to i64
  %cond31 = select i1 %cmp29, i32 1, i32 0
  %and32 = and i32 %14, %cond31
  %z33 = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 3
  store i32 %and32, ptr %z33, align 4
  %17 = load i16, ptr %newv, align 2
  %conv34 = trunc i16 %17 to i8
  %conv35 = sext i8 %conv34 to i32
  %cmp36 = icmp slt i32 %conv35, 0
  %18 = zext i1 %cmp36 to i64
  %cond38 = select i1 %cmp36, i32 1, i32 0
  %n = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 4
  store i32 %cond38, ptr %n, align 4
  %v = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 4
  %19 = load i32, ptr %v, align 4
  %v39 = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 2
  store i32 %19, ptr %v39, align 4
  %20 = load i16, ptr %newv, align 2
  %conv40 = zext i16 %20 to i32
  %and41 = and i32 %conv40, 255
  %conv42 = trunc i32 %and41 to i8
  %result = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 0
  store i8 %conv42, ptr %result, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @verilog_nbcd(ptr dead_on_unwind noalias writable sret(%struct.output_t) align 4 %agg.result, [2 x i64] %in.coerce) #0 {
entry:
  %in = alloca %struct.input_t, align 4
  %l = alloca i8, align 1
  %h = alloca i8, align 1
  store [2 x i64] %in.coerce, ptr %in, align 4
  %dst = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 1
  %0 = load i8, ptr %dst, align 1
  %conv = zext i8 %0 to i32
  %and = and i32 %conv, 15
  %sub = sub nsw i32 25, %and
  %conv1 = trunc i32 %sub to i8
  store i8 %conv1, ptr %l, align 1
  %dst2 = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 1
  %1 = load i8, ptr %dst2, align 1
  %conv3 = zext i8 %1 to i32
  %and4 = and i32 %conv3, 240
  %shr = ashr i32 %and4, 4
  %sub5 = sub nsw i32 25, %shr
  %conv6 = trunc i32 %sub5 to i8
  store i8 %conv6, ptr %h, align 1
  %dst7 = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 1
  %2 = load i8, ptr %dst7, align 1
  %conv8 = zext i8 %2 to i32
  %and9 = and i32 %conv8, 15
  %cmp = icmp sgt i32 %and9, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8, ptr %h, align 1
  %conv11 = zext i8 %3 to i32
  %sub12 = sub nsw i32 %conv11, 1
  %conv13 = trunc i32 %sub12 to i8
  store i8 %conv13, ptr %h, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8, ptr %l, align 1
  %conv14 = zext i8 %4 to i32
  %and15 = and i32 %conv14, 15
  %conv16 = trunc i32 %and15 to i8
  store i8 %conv16, ptr %l, align 1
  %5 = load i8, ptr %h, align 1
  %conv17 = zext i8 %5 to i32
  %and18 = and i32 %conv17, 15
  %conv19 = trunc i32 %and18 to i8
  store i8 %conv19, ptr %h, align 1
  %x = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 2
  %6 = load i32, ptr %x, align 4
  %cmp20 = icmp eq i32 %6, 0
  br i1 %cmp20, label %if.then22, label %if.end45

if.then22:                                        ; preds = %if.end
  %7 = load i8, ptr %l, align 1
  %conv23 = zext i8 %7 to i32
  %cmp24 = icmp eq i32 %conv23, 9
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.then22
  store i8 0, ptr %l, align 1
  %8 = load i8, ptr %h, align 1
  %conv27 = zext i8 %8 to i32
  %cmp28 = icmp eq i32 %conv27, 9
  br i1 %cmp28, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then26
  br label %cond.end

cond.false:                                       ; preds = %if.then26
  %9 = load i8, ptr %h, align 1
  %conv30 = zext i8 %9 to i32
  %add = add nsw i32 %conv30, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %add, %cond.false ]
  %conv31 = trunc i32 %cond to i8
  store i8 %conv31, ptr %h, align 1
  br label %if.end44

if.else:                                          ; preds = %if.then22
  %10 = load i8, ptr %l, align 1
  %conv32 = zext i8 %10 to i32
  %cmp33 = icmp eq i32 %conv32, 15
  br i1 %cmp33, label %if.then35, label %if.else39

if.then35:                                        ; preds = %if.else
  store i8 0, ptr %l, align 1
  %11 = load i8, ptr %h, align 1
  %conv36 = zext i8 %11 to i32
  %add37 = add nsw i32 %conv36, 1
  %conv38 = trunc i32 %add37 to i8
  store i8 %conv38, ptr %h, align 1
  br label %if.end43

if.else39:                                        ; preds = %if.else
  %12 = load i8, ptr %l, align 1
  %conv40 = zext i8 %12 to i32
  %add41 = add nsw i32 %conv40, 1
  %conv42 = trunc i32 %add41 to i8
  store i8 %conv42, ptr %l, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.else39, %if.then35
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %cond.end
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end
  %13 = load i8, ptr %l, align 1
  %conv46 = zext i8 %13 to i32
  %and47 = and i32 %conv46, 15
  %conv48 = trunc i32 %and47 to i8
  store i8 %conv48, ptr %l, align 1
  %14 = load i8, ptr %h, align 1
  %conv49 = zext i8 %14 to i32
  %and50 = and i32 %conv49, 15
  %conv51 = trunc i32 %and50 to i8
  store i8 %conv51, ptr %h, align 1
  %15 = load i8, ptr %h, align 1
  %conv52 = zext i8 %15 to i32
  %shl = shl i32 %conv52, 4
  %16 = load i8, ptr %l, align 1
  %conv53 = zext i8 %16 to i32
  %add54 = add nsw i32 %shl, %conv53
  %conv55 = trunc i32 %add54 to i8
  %result = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 0
  store i8 %conv55, ptr %result, align 4
  %v = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 4
  %17 = load i32, ptr %v, align 4
  %v56 = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 2
  store i32 %17, ptr %v56, align 4
  %z = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 3
  %18 = load i32, ptr %z, align 4
  %result57 = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 0
  %19 = load i8, ptr %result57, align 4
  %conv58 = zext i8 %19 to i32
  %cmp59 = icmp eq i32 %conv58, 0
  %20 = zext i1 %cmp59 to i64
  %cond61 = select i1 %cmp59, i32 1, i32 0
  %and62 = and i32 %18, %cond61
  %z63 = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 3
  store i32 %and62, ptr %z63, align 4
  %dst64 = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 1
  %21 = load i8, ptr %dst64, align 1
  %conv65 = zext i8 %21 to i32
  %cmp66 = icmp eq i32 %conv65, 0
  br i1 %cmp66, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end45
  %x68 = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 2
  %22 = load i32, ptr %x68, align 4
  %cmp69 = icmp eq i32 %22, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end45
  %23 = phi i1 [ false, %if.end45 ], [ %cmp69, %land.rhs ]
  %24 = zext i1 %23 to i64
  %cond71 = select i1 %23, i32 0, i32 1
  %x72 = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 5
  store i32 %cond71, ptr %x72, align 4
  %c = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 1
  store i32 %cond71, ptr %c, align 4
  %result73 = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 0
  %25 = load i8, ptr %result73, align 4
  %conv74 = zext i8 %25 to i32
  %and75 = and i32 %conv74, 128
  %cmp76 = icmp eq i32 %and75, 0
  %26 = zext i1 %cmp76 to i64
  %cond78 = select i1 %cmp76, i32 0, i32 1
  %n = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 4
  store i32 %cond78, ptr %n, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @uae_abcd(ptr dead_on_unwind noalias writable sret(%struct.output_t) align 4 %agg.result, [2 x i64] %in.coerce) #0 {
entry:
  %in = alloca %struct.input_t, align 4
  %src = alloca i8, align 1
  %dst = alloca i8, align 1
  %newv_lo = alloca i16, align 2
  %newv_hi = alloca i16, align 2
  %newv = alloca i16, align 2
  %tmp_newv = alloca i16, align 2
  %cflg = alloca i32, align 4
  store [2 x i64] %in.coerce, ptr %in, align 4
  %src1 = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 0
  %0 = load i8, ptr %src1, align 4
  store i8 %0, ptr %src, align 1
  %dst2 = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 1
  %1 = load i8, ptr %dst2, align 1
  store i8 %1, ptr %dst, align 1
  %2 = load i8, ptr %src, align 1
  %conv = sext i8 %2 to i32
  %and = and i32 %conv, 15
  %3 = load i8, ptr %dst, align 1
  %conv3 = sext i8 %3 to i32
  %and4 = and i32 %conv3, 15
  %add = add nsw i32 %and, %and4
  %x = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 2
  %4 = load i32, ptr %x, align 4
  %tobool = icmp ne i32 %4, 0
  %5 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  %add5 = add nsw i32 %add, %cond
  %conv6 = trunc i32 %add5 to i16
  store i16 %conv6, ptr %newv_lo, align 2
  %6 = load i8, ptr %src, align 1
  %conv7 = sext i8 %6 to i32
  %and8 = and i32 %conv7, 240
  %7 = load i8, ptr %dst, align 1
  %conv9 = sext i8 %7 to i32
  %and10 = and i32 %conv9, 240
  %add11 = add nsw i32 %and8, %and10
  %conv12 = trunc i32 %add11 to i16
  store i16 %conv12, ptr %newv_hi, align 2
  %8 = load i16, ptr %newv_hi, align 2
  %conv13 = zext i16 %8 to i32
  %9 = load i16, ptr %newv_lo, align 2
  %conv14 = zext i16 %9 to i32
  %add15 = add nsw i32 %conv13, %conv14
  %conv16 = trunc i32 %add15 to i16
  store i16 %conv16, ptr %tmp_newv, align 2
  store i16 %conv16, ptr %newv, align 2
  %10 = load i16, ptr %newv_lo, align 2
  %conv17 = zext i16 %10 to i32
  %cmp = icmp sgt i32 %conv17, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i16, ptr %newv, align 2
  %conv19 = zext i16 %11 to i32
  %add20 = add nsw i32 %conv19, 6
  %conv21 = trunc i32 %add20 to i16
  store i16 %conv21, ptr %newv, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i16, ptr %newv, align 2
  %conv22 = zext i16 %12 to i32
  %and23 = and i32 %conv22, 1008
  %cmp24 = icmp sgt i32 %and23, 144
  %conv25 = zext i1 %cmp24 to i32
  store i32 %conv25, ptr %cflg, align 4
  %13 = load i32, ptr %cflg, align 4
  %tobool26 = icmp ne i32 %13, 0
  br i1 %tobool26, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end
  %14 = load i16, ptr %newv, align 2
  %conv28 = zext i16 %14 to i32
  %add29 = add nsw i32 %conv28, 96
  %conv30 = trunc i32 %add29 to i16
  store i16 %conv30, ptr %newv, align 2
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end
  %15 = load i32, ptr %cflg, align 4
  %c = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 1
  store i32 %15, ptr %c, align 4
  %c32 = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 1
  %16 = load i32, ptr %c32, align 4
  %x33 = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 5
  store i32 %16, ptr %x33, align 4
  %z = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 3
  %17 = load i32, ptr %z, align 4
  %18 = load i16, ptr %newv, align 2
  %conv34 = trunc i16 %18 to i8
  %conv35 = sext i8 %conv34 to i32
  %cmp36 = icmp eq i32 %conv35, 0
  %conv37 = zext i1 %cmp36 to i32
  %and38 = and i32 %17, %conv37
  %z39 = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 3
  store i32 %and38, ptr %z39, align 4
  %19 = load i16, ptr %newv, align 2
  %conv40 = trunc i16 %19 to i8
  %conv41 = sext i8 %conv40 to i32
  %cmp42 = icmp slt i32 %conv41, 0
  %conv43 = zext i1 %cmp42 to i32
  %n = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 4
  store i32 %conv43, ptr %n, align 4
  %20 = load i16, ptr %tmp_newv, align 2
  %conv44 = zext i16 %20 to i32
  %and45 = and i32 %conv44, 128
  %cmp46 = icmp eq i32 %and45, 0
  br i1 %cmp46, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end31
  %21 = load i16, ptr %newv, align 2
  %conv48 = zext i16 %21 to i32
  %and49 = and i32 %conv48, 128
  %cmp50 = icmp ne i32 %and49, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end31
  %22 = phi i1 [ false, %if.end31 ], [ %cmp50, %land.rhs ]
  %land.ext = zext i1 %22 to i32
  %v = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 2
  store i32 %land.ext, ptr %v, align 4
  %23 = load i16, ptr %newv, align 2
  %conv52 = zext i16 %23 to i32
  %and53 = and i32 %conv52, 255
  %conv54 = trunc i32 %and53 to i8
  %result = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 0
  store i8 %conv54, ptr %result, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @verilog_abcd(ptr dead_on_unwind noalias writable sret(%struct.output_t) align 4 %agg.result, [2 x i64] %in.coerce) #0 {
entry:
  %in = alloca %struct.input_t, align 4
  %l = alloca i8, align 1
  %h = alloca i8, align 1
  %tmp = alloca i32, align 4
  store [2 x i64] %in.coerce, ptr %in, align 4
  %src = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 0
  %0 = load i8, ptr %src, align 4
  %conv = zext i8 %0 to i32
  %and = and i32 %conv, 15
  %dst = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 1
  %1 = load i8, ptr %dst, align 1
  %conv1 = zext i8 %1 to i32
  %and2 = and i32 %conv1, 15
  %add = add nsw i32 %and, %and2
  %x = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 2
  %2 = load i32, ptr %x, align 4
  %add3 = add i32 %add, %2
  %conv4 = trunc i32 %add3 to i8
  store i8 %conv4, ptr %l, align 1
  %src5 = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 0
  %3 = load i8, ptr %src5, align 4
  %conv6 = zext i8 %3 to i32
  %and7 = and i32 %conv6, 240
  %shr = ashr i32 %and7, 4
  %dst8 = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 1
  %4 = load i8, ptr %dst8, align 1
  %conv9 = zext i8 %4 to i32
  %and10 = and i32 %conv9, 240
  %shr11 = ashr i32 %and10, 4
  %add12 = add nsw i32 %shr, %shr11
  %conv13 = trunc i32 %add12 to i8
  store i8 %conv13, ptr %h, align 1
  %src14 = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 0
  %5 = load i8, ptr %src14, align 4
  %conv15 = zext i8 %5 to i32
  %dst16 = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 1
  %6 = load i8, ptr %dst16, align 1
  %conv17 = zext i8 %6 to i32
  %add18 = add nsw i32 %conv15, %conv17
  %x19 = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 2
  %7 = load i32, ptr %x19, align 4
  %add20 = add i32 %add18, %7
  %and21 = and i32 %add20, 128
  store i32 %and21, ptr %tmp, align 4
  %8 = load i8, ptr %l, align 1
  %conv22 = zext i8 %8 to i32
  %cmp = icmp sgt i32 %conv22, 9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load i8, ptr %l, align 1
  %conv24 = zext i8 %9 to i32
  %add25 = add nsw i32 %conv24, 6
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load i8, ptr %l, align 1
  %conv26 = zext i8 %10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add25, %cond.true ], [ %conv26, %cond.false ]
  %conv27 = trunc i32 %cond to i8
  store i8 %conv27, ptr %l, align 1
  %11 = load i8, ptr %l, align 1
  %conv28 = zext i8 %11 to i32
  %cmp29 = icmp sgt i32 %conv28, 31
  br i1 %cmp29, label %cond.true31, label %cond.false34

cond.true31:                                      ; preds = %cond.end
  %12 = load i8, ptr %h, align 1
  %conv32 = zext i8 %12 to i32
  %add33 = add nsw i32 %conv32, 2
  br label %cond.end45

cond.false34:                                     ; preds = %cond.end
  %13 = load i8, ptr %l, align 1
  %conv35 = zext i8 %13 to i32
  %cmp36 = icmp sgt i32 %conv35, 15
  br i1 %cmp36, label %cond.true38, label %cond.false41

cond.true38:                                      ; preds = %cond.false34
  %14 = load i8, ptr %h, align 1
  %conv39 = zext i8 %14 to i32
  %add40 = add nsw i32 %conv39, 1
  br label %cond.end43

cond.false41:                                     ; preds = %cond.false34
  %15 = load i8, ptr %h, align 1
  %conv42 = zext i8 %15 to i32
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true38
  %cond44 = phi i32 [ %add40, %cond.true38 ], [ %conv42, %cond.false41 ]
  br label %cond.end45

cond.end45:                                       ; preds = %cond.end43, %cond.true31
  %cond46 = phi i32 [ %add33, %cond.true31 ], [ %cond44, %cond.end43 ]
  %conv47 = trunc i32 %cond46 to i8
  store i8 %conv47, ptr %h, align 1
  %16 = load i8, ptr %h, align 1
  %conv48 = zext i8 %16 to i32
  %cmp49 = icmp sgt i32 %conv48, 9
  br i1 %cmp49, label %cond.true51, label %cond.false54

cond.true51:                                      ; preds = %cond.end45
  %17 = load i8, ptr %h, align 1
  %conv52 = zext i8 %17 to i32
  %add53 = add nsw i32 %conv52, 6
  br label %cond.end56

cond.false54:                                     ; preds = %cond.end45
  %18 = load i8, ptr %h, align 1
  %conv55 = zext i8 %18 to i32
  br label %cond.end56

cond.end56:                                       ; preds = %cond.false54, %cond.true51
  %cond57 = phi i32 [ %add53, %cond.true51 ], [ %conv55, %cond.false54 ]
  %conv58 = trunc i32 %cond57 to i8
  store i8 %conv58, ptr %h, align 1
  %19 = load i8, ptr %h, align 1
  %conv59 = zext i8 %19 to i32
  %cmp60 = icmp sgt i32 %conv59, 9
  %20 = zext i1 %cmp60 to i64
  %cond62 = select i1 %cmp60, i32 1, i32 0
  %c = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 1
  store i32 %cond62, ptr %c, align 4
  %c63 = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 1
  %21 = load i32, ptr %c63, align 4
  %x64 = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 5
  store i32 %21, ptr %x64, align 4
  %22 = load i8, ptr %l, align 1
  %conv65 = zext i8 %22 to i32
  %and66 = and i32 %conv65, 15
  %conv67 = trunc i32 %and66 to i8
  store i8 %conv67, ptr %l, align 1
  %23 = load i8, ptr %h, align 1
  %conv68 = zext i8 %23 to i32
  %and69 = and i32 %conv68, 15
  %conv70 = trunc i32 %and69 to i8
  store i8 %conv70, ptr %h, align 1
  %24 = load i8, ptr %h, align 1
  %conv71 = zext i8 %24 to i32
  %shl = shl i32 %conv71, 4
  %25 = load i8, ptr %l, align 1
  %conv72 = zext i8 %25 to i32
  %add73 = add nsw i32 %shl, %conv72
  %conv74 = trunc i32 %add73 to i8
  %result = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 0
  store i8 %conv74, ptr %result, align 4
  %z = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 3
  %26 = load i32, ptr %z, align 4
  %result75 = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 0
  %27 = load i8, ptr %result75, align 4
  %conv76 = zext i8 %27 to i32
  %cmp77 = icmp eq i32 %conv76, 0
  %conv78 = zext i1 %cmp77 to i32
  %and79 = and i32 %26, %conv78
  %z80 = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 3
  store i32 %and79, ptr %z80, align 4
  %result81 = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 0
  %28 = load i8, ptr %result81, align 4
  %conv82 = zext i8 %28 to i32
  %and83 = and i32 %conv82, 128
  %cmp84 = icmp eq i32 %and83, 128
  %29 = zext i1 %cmp84 to i64
  %cond86 = select i1 %cmp84, i32 1, i32 0
  %n = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 4
  store i32 %cond86, ptr %n, align 4
  %30 = load i32, ptr %tmp, align 4
  %cmp87 = icmp eq i32 %30, 0
  br i1 %cmp87, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end56
  %result89 = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 0
  %31 = load i8, ptr %result89, align 4
  %conv90 = zext i8 %31 to i32
  %and91 = and i32 %conv90, 128
  %cmp92 = icmp ne i32 %and91, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end56
  %32 = phi i1 [ false, %cond.end56 ], [ %cmp92, %land.rhs ]
  %land.ext = zext i1 %32 to i32
  %v = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 2
  store i32 %land.ext, ptr %v, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @uae_sbcd(ptr dead_on_unwind noalias writable sret(%struct.output_t) align 4 %agg.result, [2 x i64] %in.coerce) #0 {
entry:
  %in = alloca %struct.input_t, align 4
  %src = alloca i8, align 1
  %dst = alloca i8, align 1
  %newv_lo = alloca i16, align 2
  %newv_hi = alloca i16, align 2
  %newv = alloca i16, align 2
  %tmp_newv = alloca i16, align 2
  %bcd = alloca i32, align 4
  store [2 x i64] %in.coerce, ptr %in, align 4
  %src1 = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 0
  %0 = load i8, ptr %src1, align 4
  store i8 %0, ptr %src, align 1
  %dst2 = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 1
  %1 = load i8, ptr %dst2, align 1
  store i8 %1, ptr %dst, align 1
  %2 = load i8, ptr %dst, align 1
  %conv = sext i8 %2 to i32
  %and = and i32 %conv, 15
  %3 = load i8, ptr %src, align 1
  %conv3 = sext i8 %3 to i32
  %and4 = and i32 %conv3, 15
  %sub = sub nsw i32 %and, %and4
  %x = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 2
  %4 = load i32, ptr %x, align 4
  %tobool = icmp ne i32 %4, 0
  %5 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 1, i32 0
  %sub5 = sub nsw i32 %sub, %cond
  %conv6 = trunc i32 %sub5 to i16
  store i16 %conv6, ptr %newv_lo, align 2
  %6 = load i8, ptr %dst, align 1
  %conv7 = sext i8 %6 to i32
  %and8 = and i32 %conv7, 240
  %7 = load i8, ptr %src, align 1
  %conv9 = sext i8 %7 to i32
  %and10 = and i32 %conv9, 240
  %sub11 = sub nsw i32 %and8, %and10
  %conv12 = trunc i32 %sub11 to i16
  store i16 %conv12, ptr %newv_hi, align 2
  store i32 0, ptr %bcd, align 4
  %8 = load i16, ptr %newv_hi, align 2
  %conv13 = zext i16 %8 to i32
  %9 = load i16, ptr %newv_lo, align 2
  %conv14 = zext i16 %9 to i32
  %add = add nsw i32 %conv13, %conv14
  %conv15 = trunc i32 %add to i16
  store i16 %conv15, ptr %tmp_newv, align 2
  store i16 %conv15, ptr %newv, align 2
  %10 = load i16, ptr %newv_lo, align 2
  %conv16 = zext i16 %10 to i32
  %and17 = and i32 %conv16, 240
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i16, ptr %newv, align 2
  %conv19 = zext i16 %11 to i32
  %sub20 = sub nsw i32 %conv19, 6
  %conv21 = trunc i32 %sub20 to i16
  store i16 %conv21, ptr %newv, align 2
  store i32 6, ptr %bcd, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i8, ptr %dst, align 1
  %conv22 = sext i8 %12 to i32
  %and23 = and i32 %conv22, 255
  %13 = load i8, ptr %src, align 1
  %conv24 = sext i8 %13 to i32
  %and25 = and i32 %conv24, 255
  %sub26 = sub nsw i32 %and23, %and25
  %x27 = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 2
  %14 = load i32, ptr %x27, align 4
  %tobool28 = icmp ne i32 %14, 0
  %15 = zext i1 %tobool28 to i64
  %cond29 = select i1 %tobool28, i32 1, i32 0
  %sub30 = sub nsw i32 %sub26, %cond29
  %and31 = and i32 %sub30, 256
  %cmp = icmp sgt i32 %and31, 255
  br i1 %cmp, label %if.then33, label %if.end37

if.then33:                                        ; preds = %if.end
  %16 = load i16, ptr %newv, align 2
  %conv34 = zext i16 %16 to i32
  %sub35 = sub nsw i32 %conv34, 96
  %conv36 = trunc i32 %sub35 to i16
  store i16 %conv36, ptr %newv, align 2
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end
  %17 = load i8, ptr %dst, align 1
  %conv38 = sext i8 %17 to i32
  %and39 = and i32 %conv38, 255
  %18 = load i8, ptr %src, align 1
  %conv40 = sext i8 %18 to i32
  %and41 = and i32 %conv40, 255
  %sub42 = sub nsw i32 %and39, %and41
  %19 = load i32, ptr %bcd, align 4
  %sub43 = sub nsw i32 %sub42, %19
  %x44 = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 2
  %20 = load i32, ptr %x44, align 4
  %tobool45 = icmp ne i32 %20, 0
  %21 = zext i1 %tobool45 to i64
  %cond46 = select i1 %tobool45, i32 1, i32 0
  %sub47 = sub nsw i32 %sub43, %cond46
  %and48 = and i32 %sub47, 768
  %cmp49 = icmp sgt i32 %and48, 255
  %conv50 = zext i1 %cmp49 to i32
  %c = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 1
  store i32 %conv50, ptr %c, align 4
  %c51 = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 1
  %22 = load i32, ptr %c51, align 4
  %x52 = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 5
  store i32 %22, ptr %x52, align 4
  %z = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 3
  %23 = load i32, ptr %z, align 4
  %24 = load i16, ptr %newv, align 2
  %conv53 = trunc i16 %24 to i8
  %conv54 = sext i8 %conv53 to i32
  %cmp55 = icmp eq i32 %conv54, 0
  %conv56 = zext i1 %cmp55 to i32
  %and57 = and i32 %23, %conv56
  %z58 = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 3
  store i32 %and57, ptr %z58, align 4
  %25 = load i16, ptr %newv, align 2
  %conv59 = trunc i16 %25 to i8
  %conv60 = sext i8 %conv59 to i32
  %cmp61 = icmp slt i32 %conv60, 0
  %conv62 = zext i1 %cmp61 to i32
  %n = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 4
  store i32 %conv62, ptr %n, align 4
  %26 = load i16, ptr %tmp_newv, align 2
  %conv63 = zext i16 %26 to i32
  %and64 = and i32 %conv63, 128
  %cmp65 = icmp ne i32 %and64, 0
  br i1 %cmp65, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end37
  %27 = load i16, ptr %newv, align 2
  %conv67 = zext i16 %27 to i32
  %and68 = and i32 %conv67, 128
  %cmp69 = icmp eq i32 %and68, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end37
  %28 = phi i1 [ false, %if.end37 ], [ %cmp69, %land.rhs ]
  %land.ext = zext i1 %28 to i32
  %v = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 2
  store i32 %land.ext, ptr %v, align 4
  %29 = load i16, ptr %newv, align 2
  %conv71 = zext i16 %29 to i32
  %and72 = and i32 %conv71, 255
  %conv73 = trunc i32 %and72 to i8
  %result = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 0
  store i8 %conv73, ptr %result, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @verilog_sbcd(ptr dead_on_unwind noalias writable sret(%struct.output_t) align 4 %agg.result, [2 x i64] %in.coerce) #0 {
entry:
  %in = alloca %struct.input_t, align 4
  %l = alloca i8, align 1
  %h = alloca i8, align 1
  %tmp = alloca i32, align 4
  store [2 x i64] %in.coerce, ptr %in, align 4
  %dst = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 1
  %0 = load i8, ptr %dst, align 1
  %conv = zext i8 %0 to i32
  %and = and i32 %conv, 15
  %add = add nsw i32 32, %and
  %src = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 0
  %1 = load i8, ptr %src, align 4
  %conv1 = zext i8 %1 to i32
  %and2 = and i32 %conv1, 15
  %sub = sub nsw i32 %add, %and2
  %x = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 2
  %2 = load i32, ptr %x, align 4
  %sub3 = sub i32 %sub, %2
  %conv4 = trunc i32 %sub3 to i8
  store i8 %conv4, ptr %l, align 1
  %dst5 = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 1
  %3 = load i8, ptr %dst5, align 1
  %conv6 = zext i8 %3 to i32
  %and7 = and i32 %conv6, 240
  %shr = ashr i32 %and7, 4
  %add8 = add nsw i32 32, %shr
  %src9 = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 0
  %4 = load i8, ptr %src9, align 4
  %conv10 = zext i8 %4 to i32
  %and11 = and i32 %conv10, 240
  %shr12 = ashr i32 %and11, 4
  %sub13 = sub nsw i32 %add8, %shr12
  %conv14 = trunc i32 %sub13 to i8
  store i8 %conv14, ptr %h, align 1
  %dst15 = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 1
  %5 = load i8, ptr %dst15, align 1
  %conv16 = zext i8 %5 to i32
  %src17 = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 0
  %6 = load i8, ptr %src17, align 4
  %conv18 = zext i8 %6 to i32
  %sub19 = sub nsw i32 %conv16, %conv18
  %x20 = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 2
  %7 = load i32, ptr %x20, align 4
  %sub21 = sub i32 %sub19, %7
  store i32 %sub21, ptr %tmp, align 4
  %8 = load i8, ptr %l, align 1
  %conv22 = zext i8 %8 to i32
  %cmp = icmp slt i32 %conv22, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load i8, ptr %l, align 1
  %conv24 = zext i8 %9 to i32
  %sub25 = sub nsw i32 %conv24, 6
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load i8, ptr %l, align 1
  %conv26 = zext i8 %10 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub25, %cond.true ], [ %conv26, %cond.false ]
  %conv27 = trunc i32 %cond to i8
  store i8 %conv27, ptr %l, align 1
  %11 = load i8, ptr %l, align 1
  %conv28 = zext i8 %11 to i32
  %cmp29 = icmp slt i32 %conv28, 16
  br i1 %cmp29, label %cond.true31, label %cond.false34

cond.true31:                                      ; preds = %cond.end
  %12 = load i8, ptr %h, align 1
  %conv32 = zext i8 %12 to i32
  %sub33 = sub nsw i32 %conv32, 2
  br label %cond.end45

cond.false34:                                     ; preds = %cond.end
  %13 = load i8, ptr %l, align 1
  %conv35 = zext i8 %13 to i32
  %cmp36 = icmp slt i32 %conv35, 32
  br i1 %cmp36, label %cond.true38, label %cond.false41

cond.true38:                                      ; preds = %cond.false34
  %14 = load i8, ptr %h, align 1
  %conv39 = zext i8 %14 to i32
  %sub40 = sub nsw i32 %conv39, 1
  br label %cond.end43

cond.false41:                                     ; preds = %cond.false34
  %15 = load i8, ptr %h, align 1
  %conv42 = zext i8 %15 to i32
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false41, %cond.true38
  %cond44 = phi i32 [ %sub40, %cond.true38 ], [ %conv42, %cond.false41 ]
  br label %cond.end45

cond.end45:                                       ; preds = %cond.end43, %cond.true31
  %cond46 = phi i32 [ %sub33, %cond.true31 ], [ %cond44, %cond.end43 ]
  %conv47 = trunc i32 %cond46 to i8
  store i8 %conv47, ptr %h, align 1
  %16 = load i8, ptr %h, align 1
  %conv48 = zext i8 %16 to i32
  %cmp49 = icmp slt i32 %conv48, 32
  br i1 %cmp49, label %land.lhs.true, label %cond.false57

land.lhs.true:                                    ; preds = %cond.end45
  %17 = load i32, ptr %tmp, align 4
  %and51 = and i32 %17, 256
  %cmp52 = icmp sgt i32 %and51, 255
  br i1 %cmp52, label %cond.true54, label %cond.false57

cond.true54:                                      ; preds = %land.lhs.true
  %18 = load i8, ptr %h, align 1
  %conv55 = zext i8 %18 to i32
  %sub56 = sub nsw i32 %conv55, 6
  br label %cond.end59

cond.false57:                                     ; preds = %land.lhs.true, %cond.end45
  %19 = load i8, ptr %h, align 1
  %conv58 = zext i8 %19 to i32
  br label %cond.end59

cond.end59:                                       ; preds = %cond.false57, %cond.true54
  %cond60 = phi i32 [ %sub56, %cond.true54 ], [ %conv58, %cond.false57 ]
  %conv61 = trunc i32 %cond60 to i8
  store i8 %conv61, ptr %h, align 1
  %20 = load i8, ptr %h, align 1
  %conv62 = zext i8 %20 to i32
  %cmp63 = icmp slt i32 %conv62, 32
  %21 = zext i1 %cmp63 to i64
  %cond65 = select i1 %cmp63, i32 1, i32 0
  %c = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 1
  store i32 %cond65, ptr %c, align 4
  %c66 = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 1
  %22 = load i32, ptr %c66, align 4
  %x67 = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 5
  store i32 %22, ptr %x67, align 4
  %23 = load i8, ptr %l, align 1
  %conv68 = zext i8 %23 to i32
  %and69 = and i32 %conv68, 15
  %conv70 = trunc i32 %and69 to i8
  store i8 %conv70, ptr %l, align 1
  %24 = load i8, ptr %h, align 1
  %conv71 = zext i8 %24 to i32
  %and72 = and i32 %conv71, 15
  %conv73 = trunc i32 %and72 to i8
  store i8 %conv73, ptr %h, align 1
  %25 = load i8, ptr %h, align 1
  %conv74 = zext i8 %25 to i32
  %shl = shl i32 %conv74, 4
  %26 = load i8, ptr %l, align 1
  %conv75 = zext i8 %26 to i32
  %add76 = add nsw i32 %shl, %conv75
  %conv77 = trunc i32 %add76 to i8
  %result = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 0
  store i8 %conv77, ptr %result, align 4
  %z = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 3
  %27 = load i32, ptr %z, align 4
  %result78 = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 0
  %28 = load i8, ptr %result78, align 4
  %conv79 = zext i8 %28 to i32
  %cmp80 = icmp eq i32 %conv79, 0
  %conv81 = zext i1 %cmp80 to i32
  %and82 = and i32 %27, %conv81
  %z83 = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 3
  store i32 %and82, ptr %z83, align 4
  %result84 = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 0
  %29 = load i8, ptr %result84, align 4
  %conv85 = zext i8 %29 to i32
  %and86 = and i32 %conv85, 128
  %cmp87 = icmp eq i32 %and86, 128
  %30 = zext i1 %cmp87 to i64
  %cond89 = select i1 %cmp87, i32 1, i32 0
  %n = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 4
  store i32 %cond89, ptr %n, align 4
  %31 = load i32, ptr %tmp, align 4
  %and90 = and i32 %31, 128
  %cmp91 = icmp ne i32 %and90, 0
  br i1 %cmp91, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end59
  %result93 = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 0
  %32 = load i8, ptr %result93, align 4
  %conv94 = zext i8 %32 to i32
  %and95 = and i32 %conv94, 128
  %cmp96 = icmp eq i32 %and95, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end59
  %33 = phi i1 [ false, %cond.end59 ], [ %cmp96, %land.rhs ]
  %land.ext = zext i1 %33 to i32
  %v = getelementptr inbounds %struct.output_t, ptr %agg.result, i32 0, i32 2
  store i32 %land.ext, ptr %v, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @compare([2 x i64] %in.coerce, ptr noundef %uae, ptr noundef %verilog) #0 {
entry:
  %in = alloca %struct.input_t, align 4
  %uae.indirect_addr = alloca ptr, align 8
  %verilog.indirect_addr = alloca ptr, align 8
  store [2 x i64] %in.coerce, ptr %in, align 4
  store ptr %uae, ptr %uae.indirect_addr, align 8
  store ptr %verilog, ptr %verilog.indirect_addr, align 8
  %result = getelementptr inbounds %struct.output_t, ptr %uae, i32 0, i32 0
  %0 = load i8, ptr %result, align 4
  %conv = zext i8 %0 to i32
  %result1 = getelementptr inbounds %struct.output_t, ptr %verilog, i32 0, i32 0
  %1 = load i8, ptr %result1, align 4
  %conv2 = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, %conv2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %c = getelementptr inbounds %struct.output_t, ptr %uae, i32 0, i32 1
  %2 = load i32, ptr %c, align 4
  %c4 = getelementptr inbounds %struct.output_t, ptr %verilog, i32 0, i32 1
  %3 = load i32, ptr %c4, align 4
  %cmp5 = icmp eq i32 %2, %3
  br i1 %cmp5, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %v = getelementptr inbounds %struct.output_t, ptr %uae, i32 0, i32 2
  %4 = load i32, ptr %v, align 4
  %v8 = getelementptr inbounds %struct.output_t, ptr %verilog, i32 0, i32 2
  %5 = load i32, ptr %v8, align 4
  %cmp9 = icmp eq i32 %4, %5
  br i1 %cmp9, label %land.lhs.true11, label %if.end

land.lhs.true11:                                  ; preds = %land.lhs.true7
  %z = getelementptr inbounds %struct.output_t, ptr %uae, i32 0, i32 3
  %6 = load i32, ptr %z, align 4
  %z12 = getelementptr inbounds %struct.output_t, ptr %verilog, i32 0, i32 3
  %7 = load i32, ptr %z12, align 4
  %cmp13 = icmp eq i32 %6, %7
  br i1 %cmp13, label %land.lhs.true15, label %if.end

land.lhs.true15:                                  ; preds = %land.lhs.true11
  %n = getelementptr inbounds %struct.output_t, ptr %uae, i32 0, i32 4
  %8 = load i32, ptr %n, align 4
  %n16 = getelementptr inbounds %struct.output_t, ptr %verilog, i32 0, i32 4
  %9 = load i32, ptr %n16, align 4
  %cmp17 = icmp eq i32 %8, %9
  br i1 %cmp17, label %land.lhs.true19, label %if.end

land.lhs.true19:                                  ; preds = %land.lhs.true15
  %x = getelementptr inbounds %struct.output_t, ptr %uae, i32 0, i32 5
  %10 = load i32, ptr %x, align 4
  %x20 = getelementptr inbounds %struct.output_t, ptr %verilog, i32 0, i32 5
  %11 = load i32, ptr %x20, align 4
  %cmp21 = icmp eq i32 %10, %11
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true19
  br label %return

if.end:                                           ; preds = %land.lhs.true19, %land.lhs.true15, %land.lhs.true11, %land.lhs.true7, %land.lhs.true, %entry
  %dst = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 1
  %12 = load i8, ptr %dst, align 1
  %conv23 = zext i8 %12 to i32
  %src = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 0
  %13 = load i8, ptr %src, align 4
  %conv24 = zext i8 %13 to i32
  %x25 = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 2
  %14 = load i32, ptr %x25, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv23, i32 noundef %conv24, i32 noundef %14)
  %result26 = getelementptr inbounds %struct.output_t, ptr %uae, i32 0, i32 0
  %15 = load i8, ptr %result26, align 4
  %conv27 = zext i8 %15 to i32
  %result28 = getelementptr inbounds %struct.output_t, ptr %verilog, i32 0, i32 0
  %16 = load i8, ptr %result28, align 4
  %conv29 = zext i8 %16 to i32
  %cmp30 = icmp ne i32 %conv27, %conv29
  br i1 %cmp30, label %if.then32, label %if.end38

if.then32:                                        ; preds = %if.end
  %result33 = getelementptr inbounds %struct.output_t, ptr %uae, i32 0, i32 0
  %17 = load i8, ptr %result33, align 4
  %conv34 = zext i8 %17 to i32
  %result35 = getelementptr inbounds %struct.output_t, ptr %verilog, i32 0, i32 0
  %18 = load i8, ptr %result35, align 4
  %conv36 = zext i8 %18 to i32
  %call37 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv34, i32 noundef %conv36)
  br label %if.end38

if.end38:                                         ; preds = %if.then32, %if.end
  %c39 = getelementptr inbounds %struct.output_t, ptr %uae, i32 0, i32 1
  %19 = load i32, ptr %c39, align 4
  %c40 = getelementptr inbounds %struct.output_t, ptr %verilog, i32 0, i32 1
  %20 = load i32, ptr %c40, align 4
  %cmp41 = icmp ne i32 %19, %20
  br i1 %cmp41, label %if.then43, label %if.end47

if.then43:                                        ; preds = %if.end38
  %c44 = getelementptr inbounds %struct.output_t, ptr %uae, i32 0, i32 1
  %21 = load i32, ptr %c44, align 4
  %c45 = getelementptr inbounds %struct.output_t, ptr %verilog, i32 0, i32 1
  %22 = load i32, ptr %c45, align 4
  %call46 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %21, i32 noundef %22)
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.end38
  %v48 = getelementptr inbounds %struct.output_t, ptr %uae, i32 0, i32 2
  %23 = load i32, ptr %v48, align 4
  %v49 = getelementptr inbounds %struct.output_t, ptr %verilog, i32 0, i32 2
  %24 = load i32, ptr %v49, align 4
  %cmp50 = icmp ne i32 %23, %24
  br i1 %cmp50, label %if.then52, label %if.end56

if.then52:                                        ; preds = %if.end47
  %v53 = getelementptr inbounds %struct.output_t, ptr %uae, i32 0, i32 2
  %25 = load i32, ptr %v53, align 4
  %v54 = getelementptr inbounds %struct.output_t, ptr %verilog, i32 0, i32 2
  %26 = load i32, ptr %v54, align 4
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %25, i32 noundef %26)
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.end47
  %z57 = getelementptr inbounds %struct.output_t, ptr %uae, i32 0, i32 3
  %27 = load i32, ptr %z57, align 4
  %z58 = getelementptr inbounds %struct.output_t, ptr %verilog, i32 0, i32 3
  %28 = load i32, ptr %z58, align 4
  %cmp59 = icmp ne i32 %27, %28
  br i1 %cmp59, label %if.then61, label %if.end65

if.then61:                                        ; preds = %if.end56
  %z62 = getelementptr inbounds %struct.output_t, ptr %uae, i32 0, i32 3
  %29 = load i32, ptr %z62, align 4
  %z63 = getelementptr inbounds %struct.output_t, ptr %verilog, i32 0, i32 3
  %30 = load i32, ptr %z63, align 4
  %call64 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %29, i32 noundef %30)
  br label %if.end65

if.end65:                                         ; preds = %if.then61, %if.end56
  %n66 = getelementptr inbounds %struct.output_t, ptr %uae, i32 0, i32 4
  %31 = load i32, ptr %n66, align 4
  %n67 = getelementptr inbounds %struct.output_t, ptr %verilog, i32 0, i32 4
  %32 = load i32, ptr %n67, align 4
  %cmp68 = icmp ne i32 %31, %32
  br i1 %cmp68, label %if.then70, label %if.end74

if.then70:                                        ; preds = %if.end65
  %n71 = getelementptr inbounds %struct.output_t, ptr %uae, i32 0, i32 4
  %33 = load i32, ptr %n71, align 4
  %n72 = getelementptr inbounds %struct.output_t, ptr %verilog, i32 0, i32 4
  %34 = load i32, ptr %n72, align 4
  %call73 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %33, i32 noundef %34)
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %if.end65
  %x75 = getelementptr inbounds %struct.output_t, ptr %uae, i32 0, i32 5
  %35 = load i32, ptr %x75, align 4
  %x76 = getelementptr inbounds %struct.output_t, ptr %verilog, i32 0, i32 5
  %36 = load i32, ptr %x76, align 4
  %cmp77 = icmp ne i32 %35, %36
  br i1 %cmp77, label %if.then79, label %if.end83

if.then79:                                        ; preds = %if.end74
  %x80 = getelementptr inbounds %struct.output_t, ptr %uae, i32 0, i32 5
  %37 = load i32, ptr %x80, align 4
  %x81 = getelementptr inbounds %struct.output_t, ptr %verilog, i32 0, i32 5
  %38 = load i32, ptr %x81, align 4
  %call82 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %37, i32 noundef %38)
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %if.end74
  %call84 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  store i32 1, ptr @test_failed, align 4
  br label %return

return:                                           ; preds = %if.end83, %if.then
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %in = alloca %struct.input_t, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %uae0 = alloca %struct.output_t, align 4
  %verilog0 = alloca %struct.output_t, align 4
  %byval-temp = alloca %struct.output_t, align 4
  %byval-temp14 = alloca %struct.output_t, align 4
  %uae1 = alloca %struct.output_t, align 4
  %verilog1 = alloca %struct.output_t, align 4
  %byval-temp15 = alloca %struct.output_t, align 4
  %byval-temp16 = alloca %struct.output_t, align 4
  %uae2 = alloca %struct.output_t, align 4
  %verilog2 = alloca %struct.output_t, align 4
  %byval-temp17 = alloca %struct.output_t, align 4
  %byval-temp18 = alloca %struct.output_t, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc25, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 256
  br i1 %cmp2, label %for.body3, label %for.end27

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc22, %for.body3
  %2 = load i32, ptr %k, align 4
  %cmp5 = icmp slt i32 %2, 2
  br i1 %cmp5, label %for.body6, label %for.end24

for.body6:                                        ; preds = %for.cond4
  store i32 0, ptr %l, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc19, %for.body6
  %3 = load i32, ptr %l, align 4
  %cmp8 = icmp slt i32 %3, 2
  br i1 %cmp8, label %for.body9, label %for.end21

for.body9:                                        ; preds = %for.cond7
  store i32 0, ptr %m, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body9
  %4 = load i32, ptr %m, align 4
  %cmp11 = icmp slt i32 %4, 2
  br i1 %cmp11, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond10
  %5 = load i32, ptr %i, align 4
  %conv = trunc i32 %5 to i8
  %src = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 0
  store i8 %conv, ptr %src, align 4
  %6 = load i32, ptr %j, align 4
  %conv13 = trunc i32 %6 to i8
  %dst = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 1
  store i8 %conv13, ptr %dst, align 1
  %7 = load i32, ptr %k, align 4
  %x = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 2
  store i32 %7, ptr %x, align 4
  %8 = load i32, ptr %l, align 4
  %z = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 3
  store i32 %8, ptr %z, align 4
  %9 = load i32, ptr %m, align 4
  %v = getelementptr inbounds %struct.input_t, ptr %in, i32 0, i32 4
  store i32 %9, ptr %v, align 4
  %10 = load [2 x i64], ptr %in, align 4
  call void @uae_nbcd(ptr dead_on_unwind writable sret(%struct.output_t) align 4 %uae0, [2 x i64] %10)
  %11 = load [2 x i64], ptr %in, align 4
  call void @verilog_nbcd(ptr dead_on_unwind writable sret(%struct.output_t) align 4 %verilog0, [2 x i64] %11)
  %12 = load [2 x i64], ptr %in, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %byval-temp, ptr align 4 %uae0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %byval-temp14, ptr align 4 %verilog0, i64 24, i1 false)
  call void @compare([2 x i64] %12, ptr noundef %byval-temp, ptr noundef %byval-temp14)
  %13 = load [2 x i64], ptr %in, align 4
  call void @uae_abcd(ptr dead_on_unwind writable sret(%struct.output_t) align 4 %uae1, [2 x i64] %13)
  %14 = load [2 x i64], ptr %in, align 4
  call void @verilog_abcd(ptr dead_on_unwind writable sret(%struct.output_t) align 4 %verilog1, [2 x i64] %14)
  %15 = load [2 x i64], ptr %in, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %byval-temp15, ptr align 4 %uae1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %byval-temp16, ptr align 4 %verilog1, i64 24, i1 false)
  call void @compare([2 x i64] %15, ptr noundef %byval-temp15, ptr noundef %byval-temp16)
  %16 = load [2 x i64], ptr %in, align 4
  call void @uae_sbcd(ptr dead_on_unwind writable sret(%struct.output_t) align 4 %uae2, [2 x i64] %16)
  %17 = load [2 x i64], ptr %in, align 4
  call void @verilog_sbcd(ptr dead_on_unwind writable sret(%struct.output_t) align 4 %verilog2, [2 x i64] %17)
  %18 = load [2 x i64], ptr %in, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %byval-temp17, ptr align 4 %uae2, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %byval-temp18, ptr align 4 %verilog2, i64 24, i1 false)
  call void @compare([2 x i64] %18, ptr noundef %byval-temp17, ptr noundef %byval-temp18)
  br label %for.inc

for.inc:                                          ; preds = %for.body12
  %19 = load i32, ptr %m, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %m, align 4
  br label %for.cond10, !llvm.loop !5

for.end:                                          ; preds = %for.cond10
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %20 = load i32, ptr %l, align 4
  %inc20 = add nsw i32 %20, 1
  store i32 %inc20, ptr %l, align 4
  br label %for.cond7, !llvm.loop !7

for.end21:                                        ; preds = %for.cond7
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %21 = load i32, ptr %k, align 4
  %inc23 = add nsw i32 %21, 1
  store i32 %inc23, ptr %k, align 4
  br label %for.cond4, !llvm.loop !8

for.end24:                                        ; preds = %for.cond4
  br label %for.inc25

for.inc25:                                        ; preds = %for.end24
  %22 = load i32, ptr %j, align 4
  %inc26 = add nsw i32 %22, 1
  store i32 %inc26, ptr %j, align 4
  br label %for.cond1, !llvm.loop !9

for.end27:                                        ; preds = %for.cond1
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %23 = load i32, ptr %i, align 4
  %inc29 = add nsw i32 %23, 1
  store i32 %inc29, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end30:                                        ; preds = %for.cond
  %24 = load i32, ptr @test_failed, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.end30
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  br label %if.end

if.else:                                          ; preds = %for.end30
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
