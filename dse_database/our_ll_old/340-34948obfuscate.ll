; ModuleID = './code/340-34948obfuscate.c'
source_filename = "./code/340-34948obfuscate.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.obfuscate.nl = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.obfuscate.tb = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@__const.obfuscate.cr = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"String too long\0A\00", align 1
@deobfuscate.d = internal global [256 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Usage: %s <string>\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"unsigned char obf_string[] = \22\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\\x\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"\22; // \22%s\22\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Deobfuscated string: \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @str_replace(ptr noundef %search, ptr noundef %replace, ptr noundef %subject) #0 {
entry:
  %search.addr = alloca ptr, align 8
  %replace.addr = alloca ptr, align 8
  %subject.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %old = alloca ptr, align 8
  %new_subject = alloca ptr, align 8
  %c = alloca i32, align 4
  %search_size = alloca i32, align 4
  store ptr %search, ptr %search.addr, align 8
  store ptr %replace, ptr %replace.addr, align 8
  store ptr %subject, ptr %subject.addr, align 8
  store ptr null, ptr %p, align 8
  store ptr null, ptr %old, align 8
  store ptr null, ptr %new_subject, align 8
  store i32 0, ptr %c, align 4
  %0 = load ptr, ptr %search.addr, align 8
  %call = call i64 @strlen(ptr noundef %0) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %search_size, align 4
  %1 = load ptr, ptr %subject.addr, align 8
  %2 = load ptr, ptr %search.addr, align 8
  %call1 = call ptr @strstr(ptr noundef %1, ptr noundef %2) #6
  store ptr %call1, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %p, align 8
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %c, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %c, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load ptr, ptr %p, align 8
  %6 = load i32, ptr %search_size, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %idx.ext
  %7 = load ptr, ptr %search.addr, align 8
  %call3 = call ptr @strstr(ptr noundef %add.ptr, ptr noundef %7) #6
  store ptr %call3, ptr %p, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %replace.addr, align 8
  %call4 = call i64 @strlen(ptr noundef %8) #6
  %9 = load i32, ptr %search_size, align 4
  %conv5 = sext i32 %9 to i64
  %sub = sub i64 %call4, %conv5
  %10 = load i32, ptr %c, align 4
  %conv6 = sext i32 %10 to i64
  %mul = mul i64 %sub, %conv6
  %11 = load ptr, ptr %subject.addr, align 8
  %call7 = call i64 @strlen(ptr noundef %11) #6
  %add = add i64 %mul, %call7
  %conv8 = trunc i64 %add to i32
  store i32 %conv8, ptr %c, align 4
  %12 = load i32, ptr %c, align 4
  %conv9 = sext i32 %12 to i64
  %call10 = call ptr @malloc(i64 noundef %conv9) #7
  store ptr %call10, ptr %new_subject, align 8
  %13 = load ptr, ptr %new_subject, align 8
  %14 = load ptr, ptr %new_subject, align 8
  %15 = call i64 @llvm.objectsize.i64.p0(ptr %14, i1 false, i1 true, i1 false)
  %call11 = call ptr @__strcpy_chk(ptr noundef %13, ptr noundef @.str, i64 noundef %15) #6
  %16 = load ptr, ptr %subject.addr, align 8
  store ptr %16, ptr %old, align 8
  %17 = load ptr, ptr %subject.addr, align 8
  %18 = load ptr, ptr %search.addr, align 8
  %call12 = call ptr @strstr(ptr noundef %17, ptr noundef %18) #6
  store ptr %call12, ptr %p, align 8
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc25, %for.end
  %19 = load ptr, ptr %p, align 8
  %cmp14 = icmp ne ptr %19, null
  br i1 %cmp14, label %for.body16, label %for.end29

for.body16:                                       ; preds = %for.cond13
  %20 = load ptr, ptr %new_subject, align 8
  %21 = load ptr, ptr %new_subject, align 8
  %call17 = call i64 @strlen(ptr noundef %21) #6
  %add.ptr18 = getelementptr inbounds i8, ptr %20, i64 %call17
  %22 = load ptr, ptr %old, align 8
  %23 = load ptr, ptr %p, align 8
  %24 = load ptr, ptr %old, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %23 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call19 = call ptr @__strncpy_chk(ptr noundef %add.ptr18, ptr noundef %22, i64 noundef %sub.ptr.sub, i64 noundef -1) #6
  %25 = load ptr, ptr %new_subject, align 8
  %26 = load ptr, ptr %new_subject, align 8
  %call20 = call i64 @strlen(ptr noundef %26) #6
  %add.ptr21 = getelementptr inbounds i8, ptr %25, i64 %call20
  %27 = load ptr, ptr %replace.addr, align 8
  %call22 = call ptr @__strcpy_chk(ptr noundef %add.ptr21, ptr noundef %27, i64 noundef -1) #6
  %28 = load ptr, ptr %p, align 8
  %29 = load i32, ptr %search_size, align 4
  %idx.ext23 = sext i32 %29 to i64
  %add.ptr24 = getelementptr inbounds i8, ptr %28, i64 %idx.ext23
  store ptr %add.ptr24, ptr %old, align 8
  br label %for.inc25

for.inc25:                                        ; preds = %for.body16
  %30 = load ptr, ptr %p, align 8
  %31 = load i32, ptr %search_size, align 4
  %idx.ext26 = sext i32 %31 to i64
  %add.ptr27 = getelementptr inbounds i8, ptr %30, i64 %idx.ext26
  %32 = load ptr, ptr %search.addr, align 8
  %call28 = call ptr @strstr(ptr noundef %add.ptr27, ptr noundef %32) #6
  store ptr %call28, ptr %p, align 8
  br label %for.cond13, !llvm.loop !7

for.end29:                                        ; preds = %for.cond13
  %33 = load ptr, ptr %new_subject, align 8
  %34 = load ptr, ptr %new_subject, align 8
  %call30 = call i64 @strlen(ptr noundef %34) #6
  %add.ptr31 = getelementptr inbounds i8, ptr %33, i64 %call30
  %35 = load ptr, ptr %old, align 8
  %call32 = call ptr @__strcpy_chk(ptr noundef %add.ptr31, ptr noundef %35, i64 noundef -1) #6
  %36 = load ptr, ptr %new_subject, align 8
  ret ptr %36
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #1

; Function Attrs: nounwind
declare ptr @strstr(ptr noundef, ptr noundef) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: nounwind
declare ptr @__strncpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @obfuscate(ptr noundef %s, ptr noundef %d) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  %seed = alloca i32, align 4
  %key = alloca i8, align 1
  %mod = alloca i8, align 1
  %rep = alloca ptr, align 8
  %nl = alloca [2 x i8], align 1
  %tb = alloca [2 x i8], align 1
  %cr = alloca [2 x i8], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store ptr %d, ptr %d.addr, align 8
  store ptr null, ptr %rep, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nl, ptr align 1 @__const.obfuscate.nl, i64 2, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %tb, ptr align 1 @__const.obfuscate.tb, i64 2, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cr, ptr align 1 @__const.obfuscate.cr, i64 2, i1 false)
  %call = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call to i32
  call void @srandom(i32 noundef %conv)
  %call1 = call i64 @random()
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, ptr %seed, align 4
  %0 = load i32, ptr %seed, align 4
  %and = and i32 %0, 255
  %conv3 = trunc i32 %and to i8
  store i8 %conv3, ptr %key, align 1
  %1 = load i32, ptr %seed, align 4
  %and4 = and i32 %1, 65280
  %shr = lshr i32 %and4, 8
  %conv5 = trunc i32 %shr to i8
  store i8 %conv5, ptr %mod, align 1
  %arraydecay = getelementptr inbounds [2 x i8], ptr %nl, i64 0, i64 0
  %2 = load ptr, ptr %s.addr, align 8
  %call6 = call ptr @str_replace(ptr noundef @.str.1, ptr noundef %arraydecay, ptr noundef %2)
  store ptr %call6, ptr %rep, align 8
  %arraydecay7 = getelementptr inbounds [2 x i8], ptr %tb, i64 0, i64 0
  %3 = load ptr, ptr %rep, align 8
  %call8 = call ptr @str_replace(ptr noundef @.str.2, ptr noundef %arraydecay7, ptr noundef %3)
  store ptr %call8, ptr %rep, align 8
  %arraydecay9 = getelementptr inbounds [2 x i8], ptr %cr, i64 0, i64 0
  %4 = load ptr, ptr %rep, align 8
  %call10 = call ptr @str_replace(ptr noundef @.str.3, ptr noundef %arraydecay9, ptr noundef %4)
  store ptr %call10, ptr %rep, align 8
  %5 = load ptr, ptr %rep, align 8
  %call11 = call i64 @strlen(ptr noundef %5) #6
  %conv12 = trunc i64 %call11 to i32
  store i32 %conv12, ptr %len, align 4
  %6 = load i32, ptr %len, align 4
  %cmp = icmp sgt i32 %6, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i8, ptr %key, align 1
  %8 = load ptr, ptr %d.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 0
  store i8 %7, ptr %arrayidx, align 1
  %9 = load i8, ptr %mod, align 1
  %10 = load ptr, ptr %d.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 %9, ptr %arrayidx15, align 1
  %11 = load i32, ptr %len, align 4
  %conv16 = trunc i32 %11 to i8
  %conv17 = zext i8 %conv16 to i32
  %12 = load i8, ptr %key, align 1
  %conv18 = zext i8 %12 to i32
  %xor = xor i32 %conv17, %conv18
  %13 = load i8, ptr %mod, align 1
  %conv19 = zext i8 %13 to i32
  %xor20 = xor i32 %xor, %conv19
  %conv21 = trunc i32 %xor20 to i8
  %14 = load ptr, ptr %d.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, ptr %14, i64 2
  store i8 %conv21, ptr %arrayidx22, align 1
  store i32 0, ptr %i, align 4
  store i32 3, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load i32, ptr %i, align 4
  %16 = load i32, ptr %len, align 4
  %cmp23 = icmp slt i32 %15, %16
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %rep, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx25 = getelementptr inbounds i8, ptr %17, i64 %idxprom
  %19 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %19 to i32
  %20 = load i8, ptr %key, align 1
  %conv27 = zext i8 %20 to i32
  %xor28 = xor i32 %conv26, %conv27
  %conv29 = trunc i32 %xor28 to i8
  %21 = load ptr, ptr %d.addr, align 8
  %22 = load i32, ptr %j, align 4
  %idxprom30 = sext i32 %22 to i64
  %arrayidx31 = getelementptr inbounds i8, ptr %21, i64 %idxprom30
  store i8 %conv29, ptr %arrayidx31, align 1
  %23 = load i8, ptr %mod, align 1
  %conv32 = zext i8 %23 to i32
  %24 = load ptr, ptr %d.addr, align 8
  %25 = load i32, ptr %j, align 4
  %idxprom33 = sext i32 %25 to i64
  %arrayidx34 = getelementptr inbounds i8, ptr %24, i64 %idxprom33
  %26 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %26 to i32
  %add = add nsw i32 %conv35, %conv32
  %conv36 = trunc i32 %add to i8
  store i8 %conv36, ptr %arrayidx34, align 1
  %27 = load i8, ptr %mod, align 1
  %conv37 = zext i8 %27 to i32
  %28 = load ptr, ptr %d.addr, align 8
  %29 = load i32, ptr %j, align 4
  %idxprom38 = sext i32 %29 to i64
  %arrayidx39 = getelementptr inbounds i8, ptr %28, i64 %idxprom38
  %30 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %30 to i32
  %xor41 = xor i32 %conv40, %conv37
  %conv42 = trunc i32 %xor41 to i8
  store i8 %conv42, ptr %arrayidx39, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, ptr %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %i, align 4
  %32 = load i32, ptr %j, align 4
  %inc43 = add nsw i32 %32, 1
  store i32 %inc43, ptr %j, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %33 = load i32, ptr %len, align 4
  store i32 %33, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %34 = load i32, ptr %retval, align 4
  ret i32 %34
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @srandom(i32 noundef) #5

declare i64 @time(ptr noundef) #5

declare i64 @random() #5

declare i32 @printf(ptr noundef, ...) #5

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @deobfuscate(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %key = alloca i8, align 1
  %mod = alloca i8, align 1
  %len = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  %1 = load i8, ptr %arrayidx, align 1
  store i8 %1, ptr %key, align 1
  %2 = load ptr, ptr %s.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load i8, ptr %arrayidx1, align 1
  store i8 %3, ptr %mod, align 1
  %4 = load ptr, ptr %s.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %4, i64 2
  %5 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %5 to i32
  %6 = load i8, ptr %key, align 1
  %conv3 = zext i8 %6 to i32
  %xor = xor i32 %conv, %conv3
  %7 = load i8, ptr %mod, align 1
  %conv4 = zext i8 %7 to i32
  %xor5 = xor i32 %xor, %conv4
  %conv6 = trunc i32 %xor5 to i8
  store i8 %conv6, ptr %len, align 1
  %8 = load i8, ptr %len, align 1
  %conv7 = zext i8 %8 to i32
  %add = add nsw i32 %conv7, 1
  %conv8 = sext i32 %add to i64
  %call = call ptr @__memset_chk(ptr noundef @deobfuscate.d, i32 noundef 0, i64 noundef %conv8, i64 noundef 256) #6
  store i32 0, ptr %i, align 4
  store i32 3, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, ptr %i, align 4
  %10 = load i8, ptr %len, align 1
  %conv9 = zext i8 %10 to i32
  %cmp = icmp slt i32 %9, %conv9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %s.addr, align 8
  %12 = load i32, ptr %j, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %11, i64 %idxprom
  %13 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %13 to i32
  %14 = load i8, ptr %mod, align 1
  %conv13 = zext i8 %14 to i32
  %xor14 = xor i32 %conv12, %conv13
  %conv15 = trunc i32 %xor14 to i8
  %15 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [256 x i8], ptr @deobfuscate.d, i64 0, i64 %idxprom16
  store i8 %conv15, ptr %arrayidx17, align 1
  %16 = load i8, ptr %mod, align 1
  %conv18 = zext i8 %16 to i32
  %17 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds [256 x i8], ptr @deobfuscate.d, i64 0, i64 %idxprom19
  %18 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %18 to i32
  %sub = sub nsw i32 %conv21, %conv18
  %conv22 = trunc i32 %sub to i8
  store i8 %conv22, ptr %arrayidx20, align 1
  %19 = load i8, ptr %key, align 1
  %conv23 = zext i8 %19 to i32
  %20 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %20 to i64
  %arrayidx25 = getelementptr inbounds [256 x i8], ptr @deobfuscate.d, i64 0, i64 %idxprom24
  %21 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %21 to i32
  %xor27 = xor i32 %conv26, %conv23
  %conv28 = trunc i32 %xor27 to i8
  store i8 %conv28, ptr %arrayidx25, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, ptr %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %i, align 4
  %23 = load i32, ptr %j, align 4
  %inc29 = add nsw i32 %23, 1
  store i32 %inc29, ptr %j, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %24 = load i8, ptr %len, align 1
  %idxprom30 = zext i8 %24 to i64
  %arrayidx31 = getelementptr inbounds [256 x i8], ptr @deobfuscate.d, i64 0, i64 %idxprom30
  store i8 0, ptr %arrayidx31, align 1
  ret ptr @deobfuscate.d
}

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %test = alloca ptr, align 8
  %i = alloca i32, align 4
  %obf_len = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.5, ptr noundef %2)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %3, i64 1
  %4 = load ptr, ptr %arrayidx1, align 8
  %call2 = call i64 @strlen(ptr noundef %4) #6
  %cmp3 = icmp ugt i64 %call2, 255
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %5 = load ptr, ptr %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %5, i64 1
  %6 = load ptr, ptr %arrayidx7, align 8
  %call8 = call i64 @strlen(ptr noundef %6) #6
  %add = add i64 %call8, 3
  %conv = trunc i64 %add to i32
  store i32 %conv, ptr %obf_len, align 4
  %7 = load i32, ptr %obf_len, align 4
  %conv9 = sext i32 %7 to i64
  %call10 = call ptr @malloc(i64 noundef %conv9) #7
  store ptr %call10, ptr %buf, align 8
  %8 = load ptr, ptr %buf, align 8
  %9 = load i32, ptr %obf_len, align 4
  %conv11 = sext i32 %9 to i64
  %10 = load ptr, ptr %buf, align 8
  %11 = call i64 @llvm.objectsize.i64.p0(ptr %10, i1 false, i1 true, i1 false)
  %call12 = call ptr @__memset_chk(ptr noundef %8, i32 noundef 0, i64 noundef %conv11, i64 noundef %11) #6
  %12 = load ptr, ptr %argv.addr, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %12, i64 1
  %13 = load ptr, ptr %arrayidx13, align 8
  %14 = load ptr, ptr %buf, align 8
  %call14 = call i32 @obfuscate(ptr noundef %13, ptr noundef %14)
  store i32 %call14, ptr %obf_len, align 4
  %15 = load i32, ptr %obf_len, align 4
  %add15 = add nsw i32 %15, 3
  store i32 %add15, ptr %obf_len, align 4
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %16 = load i32, ptr %i, align 4
  %17 = load i32, ptr %obf_len, align 4
  %cmp17 = icmp slt i32 %16, %17
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %18 = load ptr, ptr %buf, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %18, i64 %idxprom
  %20 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %20 to i32
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %conv21)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %argv.addr, align 8
  %arrayidx23 = getelementptr inbounds ptr, ptr %22, i64 1
  %23 = load ptr, ptr %arrayidx23, align 8
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, ptr noundef %23)
  %24 = load ptr, ptr %buf, align 8
  %call25 = call ptr @deobfuscate(ptr noundef %24)
  store ptr %call25, ptr %test, align 8
  %25 = load ptr, ptr %test, align 8
  %call26 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, ptr noundef %25)
  %26 = load ptr, ptr %buf, align 8
  call void @free(ptr noundef %26)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then4, %if.then
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

declare void @free(ptr noundef) #5

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #6 = { nounwind }
attributes #7 = { allocsize(0) }

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
