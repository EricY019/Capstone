; ModuleID = 'code/114-20038PRESENT.c'
source_filename = "code/114-20038PRESENT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_t = type { [10 x i8] }
%union.block_t = type { i64 }

@sbox = dso_local constant [16 x i8] c"\0C\05\06\0B\09\00\0A\0D\03\0E\0F\08\04\07\01\02", align 16
@inverse_sbox = dso_local constant [16 x i8] c"\05\0E\0F\08\0C\01\02\0D\0B\04\06\03\00\07\09\0A", align 16
@active_sbox = dso_local global i8* null, align 8
@key = dso_local global %struct.key_t zeroinitializer, align 1
@round_counter = dso_local global i32 0, align 4
@state = dso_local global %union.block_t zeroinitializer, align 8
@.str = private unnamed_addr constant [35 x i8] c"%02x%02x%02x%02x %02x%02x%02x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"%02x%02x%02x%02x %02x%02x%02x%02x %02x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Key:        \00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Plaintext:  \00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Ciphertext: \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rotate_left_i(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %newkey = alloca %struct.key_t, align 1
  %bit = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %bytes = getelementptr inbounds %struct.key_t, %struct.key_t* %newkey, i32 0, i32 0
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %bytes, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 1 %arraydecay, i8 0, i64 10, i1 false)
  store i32 0, i32* %bit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %bit, align 4
  %cmp = icmp ult i32 %0, 80
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %bit, align 4
  %div = udiv i32 %1, 8
  %conv = zext i32 %div to i64
  %sub = sub i64 9, %conv
  %arrayidx = getelementptr inbounds [10 x i8], [10 x i8]* getelementptr inbounds (%struct.key_t, %struct.key_t* @key, i32 0, i32 0), i64 0, i64 %sub
  %2 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %2 to i32
  %3 = load i32, i32* %bit, align 4
  %rem = urem i32 %3, 8
  %shl = shl i32 1, %rem
  %and = and i32 %conv1, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %bit, align 4
  %5 = load i32, i32* %i.addr, align 4
  %add = add i32 %4, %5
  %rem2 = urem i32 %add, 80
  %rem3 = urem i32 %rem2, 8
  %shl4 = shl i32 1, %rem3
  %bytes5 = getelementptr inbounds %struct.key_t, %struct.key_t* %newkey, i32 0, i32 0
  %6 = load i32, i32* %bit, align 4
  %7 = load i32, i32* %i.addr, align 4
  %add6 = add i32 %6, %7
  %rem7 = urem i32 %add6, 80
  %div8 = udiv i32 %rem7, 8
  %conv9 = zext i32 %div8 to i64
  %sub10 = sub i64 9, %conv9
  %arrayidx11 = getelementptr inbounds [10 x i8], [10 x i8]* %bytes5, i64 0, i64 %sub10
  %8 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %8 to i32
  %or = or i32 %conv12, %shl4
  %conv13 = trunc i32 %or to i8
  store i8 %conv13, i8* %arrayidx11, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %bit, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %bit, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %bytes14 = getelementptr inbounds %struct.key_t, %struct.key_t* %newkey, i32 0, i32 0
  %arraydecay15 = getelementptr inbounds [10 x i8], [10 x i8]* %bytes14, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds (%struct.key_t, %struct.key_t* @key, i32 0, i32 0, i64 0), i8* align 1 %arraydecay15, i64 10, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @schedule_key() #0 {
entry:
  %0 = load i32, i32* @round_counter, align 4
  %shl = shl i32 %0, 2
  %1 = load i8, i8* getelementptr inbounds (%struct.key_t, %struct.key_t* @key, i32 0, i32 0, i64 5), align 1
  %conv = zext i8 %1 to i32
  %xor = xor i32 %conv, %shl
  %conv1 = trunc i32 %xor to i8
  store i8 %conv1, i8* getelementptr inbounds (%struct.key_t, %struct.key_t* @key, i32 0, i32 0, i64 5), align 1
  call void @rotate_left_i(i32 61)
  %2 = load i8, i8* getelementptr inbounds (%struct.key_t, %struct.key_t* @key, i32 0, i32 0, i64 0), align 1
  %conv2 = zext i8 %2 to i32
  %shr = ashr i32 %conv2, 4
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* @sbox, i64 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv3 = zext i8 %3 to i32
  %shl4 = shl i32 %conv3, 4
  %4 = load i8, i8* getelementptr inbounds (%struct.key_t, %struct.key_t* @key, i32 0, i32 0, i64 0), align 1
  %conv5 = zext i8 %4 to i32
  %and = and i32 %conv5, 15
  %or = or i32 %shl4, %and
  %conv6 = trunc i32 %or to i8
  store i8 %conv6, i8* getelementptr inbounds (%struct.key_t, %struct.key_t* @key, i32 0, i32 0, i64 0), align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addRoundKey() #0 {
entry:
  %roundkey = alloca %union.block_t, align 8
  %bytes = bitcast %union.block_t* %roundkey to [8 x i8]*
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %bytes, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %arraydecay, i8* align 1 getelementptr inbounds (%struct.key_t, %struct.key_t* @key, i32 0, i32 0, i64 0), i64 8, i1 false)
  %value = bitcast %union.block_t* %roundkey to i64*
  %0 = load i64, i64* %value, align 8
  %1 = load i64, i64* getelementptr inbounds (%union.block_t, %union.block_t* @state, i32 0, i32 0), align 8
  %xor = xor i64 %1, %0
  store i64 %xor, i64* getelementptr inbounds (%union.block_t, %union.block_t* @state, i32 0, i32 0), align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sBoxLayer() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** @active_sbox, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* bitcast (%union.block_t* @state to [8 x i8]*), i64 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shr = ashr i32 %conv, 4
  %idxprom1 = sext i32 %shr to i64
  %arrayidx2 = getelementptr inbounds i8, i8* %1, i64 %idxprom1
  %4 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %4 to i32
  %shl = shl i32 %conv3, 4
  %5 = load i8*, i8** @active_sbox, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom4 = zext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [8 x i8], [8 x i8]* bitcast (%union.block_t* @state to [8 x i8]*), i64 0, i64 %idxprom4
  %7 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %7 to i32
  %and = and i32 %conv6, 15
  %idxprom7 = sext i32 %and to i64
  %arrayidx8 = getelementptr inbounds i8, i8* %5, i64 %idxprom7
  %8 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %8 to i32
  %or = or i32 %shl, %conv9
  %conv10 = trunc i32 %or to i8
  %9 = load i32, i32* %i, align 4
  %idxprom11 = zext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [8 x i8], [8 x i8]* bitcast (%union.block_t* @state to [8 x i8]*), i64 0, i64 %idxprom11
  store i8 %conv10, i8* %arrayidx12, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pLayer() #0 {
entry:
  %newstate = alloca %union.block_t, align 8
  %bit = alloca i32, align 4
  %value = bitcast %union.block_t* %newstate to i64*
  store i64 0, i64* %value, align 8
  store i32 0, i32* %bit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %bit, align 4
  %cmp = icmp ult i32 %0, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %bit, align 4
  %div = udiv i32 %1, 8
  %conv = zext i32 %div to i64
  %sub = sub i64 7, %conv
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* bitcast (%union.block_t* @state to [8 x i8]*), i64 0, i64 %sub
  %2 = load i8, i8* %arrayidx, align 1
  %conv1 = zext i8 %2 to i32
  %3 = load i32, i32* %bit, align 4
  %rem = urem i32 %3, 8
  %shl = shl i32 1, %rem
  %and = and i32 %conv1, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %bit, align 4
  %rem2 = urem i32 %4, 4
  %mul = mul i32 16, %rem2
  %5 = load i32, i32* %bit, align 4
  %div3 = udiv i32 %5, 4
  %add = add i32 %mul, %div3
  %rem4 = urem i32 %add, 8
  %shl5 = shl i32 1, %rem4
  %bytes = bitcast %union.block_t* %newstate to [8 x i8]*
  %6 = load i32, i32* %bit, align 4
  %rem6 = urem i32 %6, 4
  %mul7 = mul i32 16, %rem6
  %7 = load i32, i32* %bit, align 4
  %div8 = udiv i32 %7, 4
  %add9 = add i32 %mul7, %div8
  %div10 = udiv i32 %add9, 8
  %conv11 = zext i32 %div10 to i64
  %sub12 = sub i64 7, %conv11
  %arrayidx13 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes, i64 0, i64 %sub12
  %8 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %8 to i32
  %or = or i32 %conv14, %shl5
  %conv15 = trunc i32 %or to i8
  store i8 %conv15, i8* %arrayidx13, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %bit, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %bit, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %value16 = bitcast %union.block_t* %newstate to i64*
  %10 = load i64, i64* %value16, align 8
  store i64 %10, i64* getelementptr inbounds (%union.block_t, %union.block_t* @state, i32 0, i32 0), align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup(i8* %statebytes, i8* %keybytes) #0 {
entry:
  %statebytes.addr = alloca i8*, align 8
  %keybytes.addr = alloca i8*, align 8
  store i8* %statebytes, i8** %statebytes.addr, align 8
  store i8* %keybytes, i8** %keybytes.addr, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @sbox, i64 0, i64 0), i8** @active_sbox, align 8
  %0 = load i8*, i8** %statebytes.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 getelementptr inbounds ([8 x i8], [8 x i8]* bitcast (%union.block_t* @state to [8 x i8]*), i64 0, i64 0), i8* align 1 %0, i64 8, i1 false)
  %1 = load i8*, i8** %keybytes.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 getelementptr inbounds (%struct.key_t, %struct.key_t* @key, i32 0, i32 0, i64 0), i8* align 1 %1, i64 10, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encrypt(i8* %statebytes, i8* %keybytes) #0 {
entry:
  %statebytes.addr = alloca i8*, align 8
  %keybytes.addr = alloca i8*, align 8
  store i8* %statebytes, i8** %statebytes.addr, align 8
  store i8* %keybytes, i8** %keybytes.addr, align 8
  %0 = load i8*, i8** %statebytes.addr, align 8
  %1 = load i8*, i8** %keybytes.addr, align 8
  call void @setup(i8* %0, i8* %1)
  store i32 1, i32* @round_counter, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* @round_counter, align 4
  %cmp = icmp ult i32 %2, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @addRoundKey()
  call void @sBoxLayer()
  call void @pLayer()
  call void @schedule_key()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* @round_counter, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* @round_counter, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  call void @addRoundKey()
  %4 = load i8*, i8** %statebytes.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 8 getelementptr inbounds ([8 x i8], [8 x i8]* bitcast (%union.block_t* @state to [8 x i8]*), i64 0, i64 0), i64 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decrypt(i8* %statebytes, i8* %keybytes) #0 {
entry:
  %statebytes.addr = alloca i8*, align 8
  %keybytes.addr = alloca i8*, align 8
  store i8* %statebytes, i8** %statebytes.addr, align 8
  store i8* %keybytes, i8** %keybytes.addr, align 8
  %0 = load i8*, i8** %statebytes.addr, align 8
  %1 = load i8*, i8** %keybytes.addr, align 8
  call void @setup(i8* %0, i8* %1)
  store i32 1, i32* @round_counter, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* @round_counter, align 4
  %cmp = icmp ult i32 %2, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @schedule_key()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* @round_counter, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* @round_counter, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @inverse_sbox, i64 0, i64 0), i8** @active_sbox, align 8
  store i32 31, i32* @round_counter, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.end
  %4 = load i32, i32* @round_counter, align 4
  %cmp2 = icmp ugt i32 %4, 0
  br i1 %cmp2, label %for.body3, label %for.end11

for.body3:                                        ; preds = %for.cond1
  call void @addRoundKey()
  call void @pLayer()
  call void @pLayer()
  call void @sBoxLayer()
  br label %inverse_schedule_key

inverse_schedule_key:                             ; preds = %for.body3
  %5 = load i8, i8* getelementptr inbounds (%struct.key_t, %struct.key_t* @key, i32 0, i32 0, i64 0), align 1
  %conv = zext i8 %5 to i32
  %shr = ashr i32 %conv, 4
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* @inverse_sbox, i64 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv4 = zext i8 %6 to i32
  %shl = shl i32 %conv4, 4
  %7 = load i8, i8* getelementptr inbounds (%struct.key_t, %struct.key_t* @key, i32 0, i32 0, i64 0), align 1
  %conv5 = zext i8 %7 to i32
  %and = and i32 %conv5, 15
  %or = or i32 %shl, %and
  %conv6 = trunc i32 %or to i8
  store i8 %conv6, i8* getelementptr inbounds (%struct.key_t, %struct.key_t* @key, i32 0, i32 0, i64 0), align 1
  call void @rotate_left_i(i32 19)
  %8 = load i32, i32* @round_counter, align 4
  %shl7 = shl i32 %8, 2
  %9 = load i8, i8* getelementptr inbounds (%struct.key_t, %struct.key_t* @key, i32 0, i32 0, i64 5), align 1
  %conv8 = zext i8 %9 to i32
  %xor = xor i32 %conv8, %shl7
  %conv9 = trunc i32 %xor to i8
  store i8 %conv9, i8* getelementptr inbounds (%struct.key_t, %struct.key_t* @key, i32 0, i32 0, i64 5), align 1
  br label %for.inc10

for.inc10:                                        ; preds = %inverse_schedule_key
  %10 = load i32, i32* @round_counter, align 4
  %dec = add i32 %10, -1
  store i32 %dec, i32* @round_counter, align 4
  br label %for.cond1, !llvm.loop !10

for.end11:                                        ; preds = %for.cond1
  call void @addRoundKey()
  %11 = load i8*, i8** %statebytes.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 8 getelementptr inbounds ([8 x i8], [8 x i8]* bitcast (%union.block_t* @state to [8 x i8]*), i64 0, i64 0), i64 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_block(i64 %block.coerce) #0 {
entry:
  %block = alloca %union.block_t, align 8
  %coerce.dive = getelementptr inbounds %union.block_t, %union.block_t* %block, i32 0, i32 0
  store i64 %block.coerce, i64* %coerce.dive, align 8
  %bytes = bitcast %union.block_t* %block to [8 x i8]*
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %bytes, i64 0, i64 0
  %0 = load i8, i8* %arrayidx, align 8
  %conv = zext i8 %0 to i32
  %bytes1 = bitcast %union.block_t* %block to [8 x i8]*
  %arrayidx2 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes1, i64 0, i64 1
  %1 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %1 to i32
  %bytes4 = bitcast %union.block_t* %block to [8 x i8]*
  %arrayidx5 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes4, i64 0, i64 2
  %2 = load i8, i8* %arrayidx5, align 2
  %conv6 = zext i8 %2 to i32
  %bytes7 = bitcast %union.block_t* %block to [8 x i8]*
  %arrayidx8 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes7, i64 0, i64 3
  %3 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %3 to i32
  %bytes10 = bitcast %union.block_t* %block to [8 x i8]*
  %arrayidx11 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes10, i64 0, i64 4
  %4 = load i8, i8* %arrayidx11, align 4
  %conv12 = zext i8 %4 to i32
  %bytes13 = bitcast %union.block_t* %block to [8 x i8]*
  %arrayidx14 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes13, i64 0, i64 5
  %5 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %5 to i32
  %bytes16 = bitcast %union.block_t* %block to [8 x i8]*
  %arrayidx17 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes16, i64 0, i64 6
  %6 = load i8, i8* %arrayidx17, align 2
  %conv18 = zext i8 %6 to i32
  %bytes19 = bitcast %union.block_t* %block to [8 x i8]*
  %arrayidx20 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes19, i64 0, i64 7
  %7 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %7 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %conv, i32 %conv3, i32 %conv6, i32 %conv9, i32 %conv12, i32 %conv15, i32 %conv18, i32 %conv21)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_key(i64 %key.coerce0, i16 %key.coerce1) #0 {
entry:
  %key = alloca %struct.key_t, align 1
  %coerce = alloca { i64, i16 }, align 1
  %0 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %coerce, i32 0, i32 0
  store i64 %key.coerce0, i64* %0, align 1
  %1 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %coerce, i32 0, i32 1
  store i16 %key.coerce1, i16* %1, align 1
  %2 = bitcast %struct.key_t* %key to i8*
  %3 = bitcast { i64, i16 }* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %3, i64 10, i1 false)
  %bytes = getelementptr inbounds %struct.key_t, %struct.key_t* %key, i32 0, i32 0
  %arrayidx = getelementptr inbounds [10 x i8], [10 x i8]* %bytes, i64 0, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %bytes1 = getelementptr inbounds %struct.key_t, %struct.key_t* %key, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [10 x i8], [10 x i8]* %bytes1, i64 0, i64 1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %5 to i32
  %bytes4 = getelementptr inbounds %struct.key_t, %struct.key_t* %key, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [10 x i8], [10 x i8]* %bytes4, i64 0, i64 2
  %6 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %6 to i32
  %bytes7 = getelementptr inbounds %struct.key_t, %struct.key_t* %key, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [10 x i8], [10 x i8]* %bytes7, i64 0, i64 3
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %bytes10 = getelementptr inbounds %struct.key_t, %struct.key_t* %key, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [10 x i8], [10 x i8]* %bytes10, i64 0, i64 4
  %8 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %8 to i32
  %bytes13 = getelementptr inbounds %struct.key_t, %struct.key_t* %key, i32 0, i32 0
  %arrayidx14 = getelementptr inbounds [10 x i8], [10 x i8]* %bytes13, i64 0, i64 5
  %9 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %9 to i32
  %bytes16 = getelementptr inbounds %struct.key_t, %struct.key_t* %key, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [10 x i8], [10 x i8]* %bytes16, i64 0, i64 6
  %10 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %10 to i32
  %bytes19 = getelementptr inbounds %struct.key_t, %struct.key_t* %key, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [10 x i8], [10 x i8]* %bytes19, i64 0, i64 7
  %11 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %11 to i32
  %bytes22 = getelementptr inbounds %struct.key_t, %struct.key_t* %key, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [10 x i8], [10 x i8]* %bytes22, i64 0, i64 8
  %12 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %12 to i32
  %bytes25 = getelementptr inbounds %struct.key_t, %struct.key_t* %key, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [10 x i8], [10 x i8]* %bytes25, i64 0, i64 9
  %13 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %13 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %conv, i32 %conv3, i32 %conv6, i32 %conv9, i32 %conv12, i32 %conv15, i32 %conv18, i32 %conv21, i32 %conv24, i32 %conv27)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test(i32 %keyval, i32 %input) #0 {
entry:
  %keyval.addr = alloca i32, align 4
  %input.addr = alloca i32, align 4
  %test_state = alloca %union.block_t, align 8
  %test_key = alloca %struct.key_t, align 1
  %test_key.coerce = alloca { i64, i16 }, align 1
  store i32 %keyval, i32* %keyval.addr, align 4
  store i32 %input, i32* %input.addr, align 4
  %bytes = getelementptr inbounds %struct.key_t, %struct.key_t* %test_key, i32 0, i32 0
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %bytes, i64 0, i64 0
  %0 = load i32, i32* %keyval.addr, align 4
  %1 = trunc i32 %0 to i8
  call void @llvm.memset.p0i8.i64(i8* align 1 %arraydecay, i8 %1, i64 10, i1 false)
  %2 = load i32, i32* %input.addr, align 4
  %conv = sext i32 %2 to i64
  %value = bitcast %union.block_t* %test_state to i64*
  store i64 %conv, i64* %value, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %3 = bitcast { i64, i16 }* %test_key.coerce to i8*
  %4 = bitcast %struct.key_t* %test_key to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %4, i64 10, i1 false)
  %5 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %test_key.coerce, i32 0, i32 0
  %6 = load i64, i64* %5, align 1
  %7 = getelementptr inbounds { i64, i16 }, { i64, i16 }* %test_key.coerce, i32 0, i32 1
  %8 = load i16, i16* %7, align 1
  call void @print_key(i64 %6, i16 %8)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %coerce.dive = getelementptr inbounds %union.block_t, %union.block_t* %test_state, i32 0, i32 0
  %9 = load i64, i64* %coerce.dive, align 8
  call void @print_block(i64 %9)
  %bytes2 = bitcast %union.block_t* %test_state to [8 x i8]*
  %arraydecay3 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes2, i64 0, i64 0
  %bytes4 = getelementptr inbounds %struct.key_t, %struct.key_t* %test_key, i32 0, i32 0
  %arraydecay5 = getelementptr inbounds [10 x i8], [10 x i8]* %bytes4, i64 0, i64 0
  call void @encrypt(i8* %arraydecay3, i8* %arraydecay5)
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %coerce.dive7 = getelementptr inbounds %union.block_t, %union.block_t* %test_state, i32 0, i32 0
  %10 = load i64, i64* %coerce.dive7, align 8
  call void @print_block(i64 %10)
  %bytes8 = bitcast %union.block_t* %test_state to [8 x i8]*
  %arraydecay9 = getelementptr inbounds [8 x i8], [8 x i8]* %bytes8, i64 0, i64 0
  %bytes10 = getelementptr inbounds %struct.key_t, %struct.key_t* %test_key, i32 0, i32 0
  %arraydecay11 = getelementptr inbounds [10 x i8], [10 x i8]* %bytes10, i64 0, i64 0
  call void @decrypt(i8* %arraydecay9, i8* %arraydecay11)
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %coerce.dive13 = getelementptr inbounds %union.block_t, %union.block_t* %test_state, i32 0, i32 0
  %11 = load i64, i64* %coerce.dive13, align 8
  call void @print_block(i64 %11)
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  call void @test(i32 0, i32 0)
  call void @test(i32 -1, i32 0)
  call void @test(i32 0, i32 -1)
  call void @test(i32 -1, i32 -1)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
