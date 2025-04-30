; ModuleID = './code/114-20038PRESENT.c'
source_filename = "./code/114-20038PRESENT.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.key_t = type { [10 x i8] }
%union.block_t = type { i64 }

@sbox = constant [16 x i8] c"\0C\05\06\0B\09\00\0A\0D\03\0E\0F\08\04\07\01\02", align 1
@inverse_sbox = constant [16 x i8] c"\05\0E\0F\08\0C\01\02\0D\0B\04\06\03\00\07\09\0A", align 1
@active_sbox = global ptr null, align 8
@key = global %struct.key_t zeroinitializer, align 1
@round_counter = global i32 0, align 4
@state = global %union.block_t zeroinitializer, align 8
@.str = private unnamed_addr constant [35 x i8] c"%02x%02x%02x%02x %02x%02x%02x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"%02x%02x%02x%02x %02x%02x%02x%02x %02x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Key:        \00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Plaintext:  \00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Ciphertext: \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @rotate_left_i(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %newkey = alloca %struct.key_t, align 1
  %bit = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  %bytes = getelementptr inbounds %struct.key_t, ptr %newkey, i32 0, i32 0
  %arraydecay = getelementptr inbounds [10 x i8], ptr %bytes, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %arraydecay, i8 0, i64 10, i1 false)
  store i32 0, ptr %bit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %bit, align 4
  %cmp = icmp ult i32 %0, 80
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %bit, align 4
  %div = udiv i32 %1, 8
  %conv = zext i32 %div to i64
  %sub = sub i64 9, %conv
  %arrayidx = getelementptr inbounds [10 x i8], ptr @key, i64 0, i64 %sub
  %2 = load i8, ptr %arrayidx, align 1
  %conv1 = zext i8 %2 to i32
  %3 = load i32, ptr %bit, align 4
  %rem = urem i32 %3, 8
  %shl = shl i32 1, %rem
  %and = and i32 %conv1, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %bit, align 4
  %5 = load i32, ptr %i.addr, align 4
  %add = add i32 %4, %5
  %rem2 = urem i32 %add, 80
  %rem3 = urem i32 %rem2, 8
  %shl4 = shl i32 1, %rem3
  %bytes5 = getelementptr inbounds %struct.key_t, ptr %newkey, i32 0, i32 0
  %6 = load i32, ptr %bit, align 4
  %7 = load i32, ptr %i.addr, align 4
  %add6 = add i32 %6, %7
  %rem7 = urem i32 %add6, 80
  %div8 = udiv i32 %rem7, 8
  %conv9 = zext i32 %div8 to i64
  %sub10 = sub i64 9, %conv9
  %arrayidx11 = getelementptr inbounds [10 x i8], ptr %bytes5, i64 0, i64 %sub10
  %8 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %8 to i32
  %or = or i32 %conv12, %shl4
  %conv13 = trunc i32 %or to i8
  store i8 %conv13, ptr %arrayidx11, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %bit, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %bit, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %bytes14 = getelementptr inbounds %struct.key_t, ptr %newkey, i32 0, i32 0
  %arraydecay15 = getelementptr inbounds [10 x i8], ptr %bytes14, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 @key, ptr align 1 %arraydecay15, i64 10, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @schedule_key() #0 {
entry:
  %0 = load i32, ptr @round_counter, align 4
  %shl = shl i32 %0, 2
  %1 = load i8, ptr getelementptr inbounds ([10 x i8], ptr @key, i64 0, i64 5), align 1
  %conv = zext i8 %1 to i32
  %xor = xor i32 %conv, %shl
  %conv1 = trunc i32 %xor to i8
  store i8 %conv1, ptr getelementptr inbounds ([10 x i8], ptr @key, i64 0, i64 5), align 1
  call void @rotate_left_i(i32 noundef 61)
  %2 = load i8, ptr @key, align 1
  %conv2 = zext i8 %2 to i32
  %shr = ashr i32 %conv2, 4
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr @sbox, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %3 to i32
  %shl4 = shl i32 %conv3, 4
  %4 = load i8, ptr @key, align 1
  %conv5 = zext i8 %4 to i32
  %and = and i32 %conv5, 15
  %or = or i32 %shl4, %and
  %conv6 = trunc i32 %or to i8
  store i8 %conv6, ptr @key, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @addRoundKey() #0 {
entry:
  %roundkey = alloca %union.block_t, align 8
  %arraydecay = getelementptr inbounds [8 x i8], ptr %roundkey, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay, ptr align 1 @key, i64 8, i1 false)
  %0 = load i64, ptr %roundkey, align 8
  %1 = load i64, ptr @state, align 8
  %xor = xor i64 %1, %0
  store i64 %xor, ptr @state, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @sBoxLayer() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp ult i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr @active_sbox, align 8
  %2 = load i32, ptr %i, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i8], ptr @state, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shr = ashr i32 %conv, 4
  %idxprom1 = sext i32 %shr to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %1, i64 %idxprom1
  %4 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %4 to i32
  %shl = shl i32 %conv3, 4
  %5 = load ptr, ptr @active_sbox, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom4 = zext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [8 x i8], ptr @state, i64 0, i64 %idxprom4
  %7 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %7 to i32
  %and = and i32 %conv6, 15
  %idxprom7 = sext i32 %and to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %5, i64 %idxprom7
  %8 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %8 to i32
  %or = or i32 %shl, %conv9
  %conv10 = trunc i32 %or to i8
  %9 = load i32, ptr %i, align 4
  %idxprom11 = zext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [8 x i8], ptr @state, i64 0, i64 %idxprom11
  store i8 %conv10, ptr %arrayidx12, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @pLayer() #0 {
entry:
  %newstate = alloca %union.block_t, align 8
  %bit = alloca i32, align 4
  store i64 0, ptr %newstate, align 8
  store i32 0, ptr %bit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %bit, align 4
  %cmp = icmp ult i32 %0, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %bit, align 4
  %div = udiv i32 %1, 8
  %conv = zext i32 %div to i64
  %sub = sub i64 7, %conv
  %arrayidx = getelementptr inbounds [8 x i8], ptr @state, i64 0, i64 %sub
  %2 = load i8, ptr %arrayidx, align 1
  %conv1 = zext i8 %2 to i32
  %3 = load i32, ptr %bit, align 4
  %rem = urem i32 %3, 8
  %shl = shl i32 1, %rem
  %and = and i32 %conv1, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %bit, align 4
  %rem2 = urem i32 %4, 4
  %mul = mul i32 16, %rem2
  %5 = load i32, ptr %bit, align 4
  %div3 = udiv i32 %5, 4
  %add = add i32 %mul, %div3
  %rem4 = urem i32 %add, 8
  %shl5 = shl i32 1, %rem4
  %6 = load i32, ptr %bit, align 4
  %rem6 = urem i32 %6, 4
  %mul7 = mul i32 16, %rem6
  %7 = load i32, ptr %bit, align 4
  %div8 = udiv i32 %7, 4
  %add9 = add i32 %mul7, %div8
  %div10 = udiv i32 %add9, 8
  %conv11 = zext i32 %div10 to i64
  %sub12 = sub i64 7, %conv11
  %arrayidx13 = getelementptr inbounds [8 x i8], ptr %newstate, i64 0, i64 %sub12
  %8 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %8 to i32
  %or = or i32 %conv14, %shl5
  %conv15 = trunc i32 %or to i8
  store i8 %conv15, ptr %arrayidx13, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %bit, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %bit, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %10 = load i64, ptr %newstate, align 8
  store i64 %10, ptr @state, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @setup(ptr noundef %statebytes, ptr noundef %keybytes) #0 {
entry:
  %statebytes.addr = alloca ptr, align 8
  %keybytes.addr = alloca ptr, align 8
  store ptr %statebytes, ptr %statebytes.addr, align 8
  store ptr %keybytes, ptr %keybytes.addr, align 8
  store ptr @sbox, ptr @active_sbox, align 8
  %0 = load ptr, ptr %statebytes.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 @state, ptr align 1 %0, i64 8, i1 false)
  %1 = load ptr, ptr %keybytes.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 @key, ptr align 1 %1, i64 10, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @encrypt(ptr noundef %statebytes, ptr noundef %keybytes) #0 {
entry:
  %statebytes.addr = alloca ptr, align 8
  %keybytes.addr = alloca ptr, align 8
  store ptr %statebytes, ptr %statebytes.addr, align 8
  store ptr %keybytes, ptr %keybytes.addr, align 8
  %0 = load ptr, ptr %statebytes.addr, align 8
  %1 = load ptr, ptr %keybytes.addr, align 8
  call void @setup(ptr noundef %0, ptr noundef %1)
  store i32 1, ptr @round_counter, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr @round_counter, align 4
  %cmp = icmp ult i32 %2, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @addRoundKey()
  call void @sBoxLayer()
  call void @pLayer()
  call void @schedule_key()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr @round_counter, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr @round_counter, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @addRoundKey()
  %4 = load ptr, ptr %statebytes.addr, align 8
  %5 = load ptr, ptr %statebytes.addr, align 8
  %6 = call i64 @llvm.objectsize.i64.p0(ptr %5, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %4, ptr noundef @state, i64 noundef 8, i64 noundef %6) #6
  ret void
}

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @decrypt(ptr noundef %statebytes, ptr noundef %keybytes) #0 {
entry:
  %statebytes.addr = alloca ptr, align 8
  %keybytes.addr = alloca ptr, align 8
  store ptr %statebytes, ptr %statebytes.addr, align 8
  store ptr %keybytes, ptr %keybytes.addr, align 8
  %0 = load ptr, ptr %statebytes.addr, align 8
  %1 = load ptr, ptr %keybytes.addr, align 8
  call void @setup(ptr noundef %0, ptr noundef %1)
  store i32 1, ptr @round_counter, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr @round_counter, align 4
  %cmp = icmp ult i32 %2, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @schedule_key()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr @round_counter, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr @round_counter, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store ptr @inverse_sbox, ptr @active_sbox, align 8
  store i32 31, ptr @round_counter, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.end
  %4 = load i32, ptr @round_counter, align 4
  %cmp2 = icmp ugt i32 %4, 0
  br i1 %cmp2, label %for.body3, label %for.end11

for.body3:                                        ; preds = %for.cond1
  call void @addRoundKey()
  call void @pLayer()
  call void @pLayer()
  call void @sBoxLayer()
  br label %inverse_schedule_key

inverse_schedule_key:                             ; preds = %for.body3
  %5 = load i8, ptr @key, align 1
  %conv = zext i8 %5 to i32
  %shr = ashr i32 %conv, 4
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds [16 x i8], ptr @inverse_sbox, i64 0, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1
  %conv4 = zext i8 %6 to i32
  %shl = shl i32 %conv4, 4
  %7 = load i8, ptr @key, align 1
  %conv5 = zext i8 %7 to i32
  %and = and i32 %conv5, 15
  %or = or i32 %shl, %and
  %conv6 = trunc i32 %or to i8
  store i8 %conv6, ptr @key, align 1
  call void @rotate_left_i(i32 noundef 19)
  %8 = load i32, ptr @round_counter, align 4
  %shl7 = shl i32 %8, 2
  %9 = load i8, ptr getelementptr inbounds ([10 x i8], ptr @key, i64 0, i64 5), align 1
  %conv8 = zext i8 %9 to i32
  %xor = xor i32 %conv8, %shl7
  %conv9 = trunc i32 %xor to i8
  store i8 %conv9, ptr getelementptr inbounds ([10 x i8], ptr @key, i64 0, i64 5), align 1
  br label %for.inc10

for.inc10:                                        ; preds = %inverse_schedule_key
  %10 = load i32, ptr @round_counter, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr @round_counter, align 4
  br label %for.cond1, !llvm.loop !11

for.end11:                                        ; preds = %for.cond1
  call void @addRoundKey()
  %11 = load ptr, ptr %statebytes.addr, align 8
  %12 = load ptr, ptr %statebytes.addr, align 8
  %13 = call i64 @llvm.objectsize.i64.p0(ptr %12, i1 false, i1 true, i1 false)
  %call = call ptr @__memcpy_chk(ptr noundef %11, ptr noundef @state, i64 noundef 8, i64 noundef %13) #6
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_block(i64 %block.coerce) #0 {
entry:
  %block = alloca %union.block_t, align 8
  %coerce.dive = getelementptr inbounds %union.block_t, ptr %block, i32 0, i32 0
  store i64 %block.coerce, ptr %coerce.dive, align 8
  %arrayidx = getelementptr inbounds [8 x i8], ptr %block, i64 0, i64 0
  %0 = load i8, ptr %arrayidx, align 8
  %conv = zext i8 %0 to i32
  %arrayidx1 = getelementptr inbounds [8 x i8], ptr %block, i64 0, i64 1
  %1 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %1 to i32
  %arrayidx3 = getelementptr inbounds [8 x i8], ptr %block, i64 0, i64 2
  %2 = load i8, ptr %arrayidx3, align 2
  %conv4 = zext i8 %2 to i32
  %arrayidx5 = getelementptr inbounds [8 x i8], ptr %block, i64 0, i64 3
  %3 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %3 to i32
  %arrayidx7 = getelementptr inbounds [8 x i8], ptr %block, i64 0, i64 4
  %4 = load i8, ptr %arrayidx7, align 4
  %conv8 = zext i8 %4 to i32
  %arrayidx9 = getelementptr inbounds [8 x i8], ptr %block, i64 0, i64 5
  %5 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %5 to i32
  %arrayidx11 = getelementptr inbounds [8 x i8], ptr %block, i64 0, i64 6
  %6 = load i8, ptr %arrayidx11, align 2
  %conv12 = zext i8 %6 to i32
  %arrayidx13 = getelementptr inbounds [8 x i8], ptr %block, i64 0, i64 7
  %7 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %7 to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv4, i32 noundef %conv6, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %conv14)
  ret void
}

declare i32 @printf(ptr noundef, ...) #5

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_key([2 x i64] %key.coerce) #0 {
entry:
  %key = alloca %struct.key_t, align 1
  %tmp.coerce = alloca [2 x i64], align 8
  %coerce.dive = getelementptr inbounds %struct.key_t, ptr %key, i32 0, i32 0
  store [2 x i64] %key.coerce, ptr %tmp.coerce, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %coerce.dive, ptr align 8 %tmp.coerce, i64 10, i1 false)
  %bytes = getelementptr inbounds %struct.key_t, ptr %key, i32 0, i32 0
  %arrayidx = getelementptr inbounds [10 x i8], ptr %bytes, i64 0, i64 0
  %0 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %0 to i32
  %bytes1 = getelementptr inbounds %struct.key_t, ptr %key, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [10 x i8], ptr %bytes1, i64 0, i64 1
  %1 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %1 to i32
  %bytes4 = getelementptr inbounds %struct.key_t, ptr %key, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [10 x i8], ptr %bytes4, i64 0, i64 2
  %2 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %2 to i32
  %bytes7 = getelementptr inbounds %struct.key_t, ptr %key, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [10 x i8], ptr %bytes7, i64 0, i64 3
  %3 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %3 to i32
  %bytes10 = getelementptr inbounds %struct.key_t, ptr %key, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [10 x i8], ptr %bytes10, i64 0, i64 4
  %4 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %4 to i32
  %bytes13 = getelementptr inbounds %struct.key_t, ptr %key, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [10 x i8], ptr %bytes13, i64 0, i64 5
  %5 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %5 to i32
  %bytes16 = getelementptr inbounds %struct.key_t, ptr %key, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [10 x i8], ptr %bytes16, i64 0, i64 6
  %6 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %6 to i32
  %bytes19 = getelementptr inbounds %struct.key_t, ptr %key, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [10 x i8], ptr %bytes19, i64 0, i64 7
  %7 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %7 to i32
  %bytes22 = getelementptr inbounds %struct.key_t, ptr %key, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [10 x i8], ptr %bytes22, i64 0, i64 8
  %8 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %8 to i32
  %bytes25 = getelementptr inbounds %struct.key_t, ptr %key, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [10 x i8], ptr %bytes25, i64 0, i64 9
  %9 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %9 to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv6, i32 noundef %conv9, i32 noundef %conv12, i32 noundef %conv15, i32 noundef %conv18, i32 noundef %conv21, i32 noundef %conv24, i32 noundef %conv27)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test(i32 noundef %keyval, i32 noundef %input) #0 {
entry:
  %keyval.addr = alloca i32, align 4
  %input.addr = alloca i32, align 4
  %test_state = alloca %union.block_t, align 8
  %test_key = alloca %struct.key_t, align 1
  %coerce.dive.coerce = alloca [2 x i64], align 8
  store i32 %keyval, ptr %keyval.addr, align 4
  store i32 %input, ptr %input.addr, align 4
  %bytes = getelementptr inbounds %struct.key_t, ptr %test_key, i32 0, i32 0
  %arraydecay = getelementptr inbounds [10 x i8], ptr %bytes, i64 0, i64 0
  %0 = load i32, ptr %keyval.addr, align 4
  %1 = trunc i32 %0 to i8
  call void @llvm.memset.p0.i64(ptr align 1 %arraydecay, i8 %1, i64 10, i1 false)
  %2 = load i32, ptr %input.addr, align 4
  %conv = sext i32 %2 to i64
  store i64 %conv, ptr %test_state, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %coerce.dive = getelementptr inbounds %struct.key_t, ptr %test_key, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %coerce.dive.coerce, ptr align 1 %coerce.dive, i64 10, i1 false)
  %3 = load [2 x i64], ptr %coerce.dive.coerce, align 8
  call void @print_key([2 x i64] %3)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %coerce.dive2 = getelementptr inbounds %union.block_t, ptr %test_state, i32 0, i32 0
  %4 = load i64, ptr %coerce.dive2, align 8
  call void @print_block(i64 %4)
  %arraydecay3 = getelementptr inbounds [8 x i8], ptr %test_state, i64 0, i64 0
  %bytes4 = getelementptr inbounds %struct.key_t, ptr %test_key, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [10 x i8], ptr %bytes4, i64 0, i64 0
  call void @encrypt(ptr noundef %arraydecay3, ptr noundef %arraydecay5)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %coerce.dive7 = getelementptr inbounds %union.block_t, ptr %test_state, i32 0, i32 0
  %5 = load i64, ptr %coerce.dive7, align 8
  call void @print_block(i64 %5)
  %arraydecay8 = getelementptr inbounds [8 x i8], ptr %test_state, i64 0, i64 0
  %bytes9 = getelementptr inbounds %struct.key_t, ptr %test_key, i32 0, i32 0
  %arraydecay10 = getelementptr inbounds [10 x i8], ptr %bytes9, i64 0, i64 0
  call void @decrypt(ptr noundef %arraydecay8, ptr noundef %arraydecay10)
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %coerce.dive12 = getelementptr inbounds %union.block_t, ptr %test_state, i32 0, i32 0
  %6 = load i64, ptr %coerce.dive12, align 8
  call void @print_block(i64 %6)
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @test(i32 noundef 0, i32 noundef 0)
  call void @test(i32 noundef -1, i32 noundef 0)
  call void @test(i32 noundef 0, i32 noundef -1)
  call void @test(i32 noundef -1, i32 noundef -1)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
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
