; ModuleID = 'code/340-34948obfuscate.c'
source_filename = "code/340-34948obfuscate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.obfuscate.nl = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.obfuscate.tb = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@__const.obfuscate.cr = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"String too long\0A\00", align 1
@deobfuscate.d = internal global [256 x i8] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [20 x i8] c"Usage: %s <string>\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"unsigned char obf_string[] = \22\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\\x\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"\22; // \22%s\22\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Deobfuscated string: \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @str_replace(i8* %search, i8* %replace, i8* %subject) #0 {
entry:
  %search.addr = alloca i8*, align 8
  %replace.addr = alloca i8*, align 8
  %subject.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %old = alloca i8*, align 8
  %new_subject = alloca i8*, align 8
  %c = alloca i32, align 4
  %search_size = alloca i32, align 4
  store i8* %search, i8** %search.addr, align 8
  store i8* %replace, i8** %replace.addr, align 8
  store i8* %subject, i8** %subject.addr, align 8
  store i8* null, i8** %p, align 8
  store i8* null, i8** %old, align 8
  store i8* null, i8** %new_subject, align 8
  store i32 0, i32* %c, align 4
  %0 = load i8*, i8** %search.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %search_size, align 4
  %1 = load i8*, i8** %subject.addr, align 8
  %2 = load i8*, i8** %search.addr, align 8
  %call1 = call i8* @strstr(i8* %1, i8* %2) #6
  store i8* %call1, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i8*, i8** %p, align 8
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %c, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %c, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i8*, i8** %p, align 8
  %6 = load i32, i32* %search_size, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  %7 = load i8*, i8** %search.addr, align 8
  %call3 = call i8* @strstr(i8* %add.ptr, i8* %7) #6
  store i8* %call3, i8** %p, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %8 = load i8*, i8** %replace.addr, align 8
  %call4 = call i64 @strlen(i8* %8) #6
  %9 = load i32, i32* %search_size, align 4
  %conv5 = sext i32 %9 to i64
  %sub = sub i64 %call4, %conv5
  %10 = load i32, i32* %c, align 4
  %conv6 = sext i32 %10 to i64
  %mul = mul i64 %sub, %conv6
  %11 = load i8*, i8** %subject.addr, align 8
  %call7 = call i64 @strlen(i8* %11) #6
  %add = add i64 %mul, %call7
  %conv8 = trunc i64 %add to i32
  store i32 %conv8, i32* %c, align 4
  %12 = load i32, i32* %c, align 4
  %conv9 = sext i32 %12 to i64
  %call10 = call noalias align 16 i8* @malloc(i64 %conv9) #7
  store i8* %call10, i8** %new_subject, align 8
  %13 = load i8*, i8** %new_subject, align 8
  %call11 = call i8* @strcpy(i8* %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #7
  %14 = load i8*, i8** %subject.addr, align 8
  store i8* %14, i8** %old, align 8
  %15 = load i8*, i8** %subject.addr, align 8
  %16 = load i8*, i8** %search.addr, align 8
  %call12 = call i8* @strstr(i8* %15, i8* %16) #6
  store i8* %call12, i8** %p, align 8
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc25, %for.end
  %17 = load i8*, i8** %p, align 8
  %cmp14 = icmp ne i8* %17, null
  br i1 %cmp14, label %for.body16, label %for.end29

for.body16:                                       ; preds = %for.cond13
  %18 = load i8*, i8** %new_subject, align 8
  %19 = load i8*, i8** %new_subject, align 8
  %call17 = call i64 @strlen(i8* %19) #6
  %add.ptr18 = getelementptr inbounds i8, i8* %18, i64 %call17
  %20 = load i8*, i8** %old, align 8
  %21 = load i8*, i8** %p, align 8
  %22 = load i8*, i8** %old, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call19 = call i8* @strncpy(i8* %add.ptr18, i8* %20, i64 %sub.ptr.sub) #7
  %23 = load i8*, i8** %new_subject, align 8
  %24 = load i8*, i8** %new_subject, align 8
  %call20 = call i64 @strlen(i8* %24) #6
  %add.ptr21 = getelementptr inbounds i8, i8* %23, i64 %call20
  %25 = load i8*, i8** %replace.addr, align 8
  %call22 = call i8* @strcpy(i8* %add.ptr21, i8* %25) #7
  %26 = load i8*, i8** %p, align 8
  %27 = load i32, i32* %search_size, align 4
  %idx.ext23 = sext i32 %27 to i64
  %add.ptr24 = getelementptr inbounds i8, i8* %26, i64 %idx.ext23
  store i8* %add.ptr24, i8** %old, align 8
  br label %for.inc25

for.inc25:                                        ; preds = %for.body16
  %28 = load i8*, i8** %p, align 8
  %29 = load i32, i32* %search_size, align 4
  %idx.ext26 = sext i32 %29 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %28, i64 %idx.ext26
  %30 = load i8*, i8** %search.addr, align 8
  %call28 = call i8* @strstr(i8* %add.ptr27, i8* %30) #6
  store i8* %call28, i8** %p, align 8
  br label %for.cond13, !llvm.loop !6

for.end29:                                        ; preds = %for.cond13
  %31 = load i8*, i8** %new_subject, align 8
  %32 = load i8*, i8** %new_subject, align 8
  %call30 = call i64 @strlen(i8* %32) #6
  %add.ptr31 = getelementptr inbounds i8, i8* %31, i64 %call30
  %33 = load i8*, i8** %old, align 8
  %call32 = call i8* @strcpy(i8* %add.ptr31, i8* %33) #7
  %34 = load i8*, i8** %new_subject, align 8
  ret i8* %34
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strstr(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @obfuscate(i8* %s, i8* %d) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %d.addr = alloca i8*, align 8
  %seed = alloca i32, align 4
  %key = alloca i8, align 1
  %mod = alloca i8, align 1
  %rep = alloca i8*, align 8
  %nl = alloca [2 x i8], align 1
  %tb = alloca [2 x i8], align 1
  %cr = alloca [2 x i8], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %len = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i8* %d, i8** %d.addr, align 8
  store i8* null, i8** %rep, align 8
  %0 = bitcast [2 x i8]* %nl to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.obfuscate.nl, i32 0, i32 0), i64 2, i1 false)
  %1 = bitcast [2 x i8]* %tb to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.obfuscate.tb, i32 0, i32 0), i64 2, i1 false)
  %2 = bitcast [2 x i8]* %cr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.obfuscate.cr, i32 0, i32 0), i64 2, i1 false)
  %call = call i64 @time(i64* null) #7
  %conv = trunc i64 %call to i32
  call void @srandom(i32 %conv) #7
  %call1 = call i64 @random() #7
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %seed, align 4
  %3 = load i32, i32* %seed, align 4
  %and = and i32 %3, 255
  %conv3 = trunc i32 %and to i8
  store i8 %conv3, i8* %key, align 1
  %4 = load i32, i32* %seed, align 4
  %and4 = and i32 %4, 65280
  %shr = lshr i32 %and4, 8
  %conv5 = trunc i32 %shr to i8
  store i8 %conv5, i8* %mod, align 1
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %nl, i64 0, i64 0
  %5 = load i8*, i8** %s.addr, align 8
  %call6 = call i8* @str_replace(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay, i8* %5)
  store i8* %call6, i8** %rep, align 8
  %arraydecay7 = getelementptr inbounds [2 x i8], [2 x i8]* %tb, i64 0, i64 0
  %6 = load i8*, i8** %rep, align 8
  %call8 = call i8* @str_replace(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay7, i8* %6)
  store i8* %call8, i8** %rep, align 8
  %arraydecay9 = getelementptr inbounds [2 x i8], [2 x i8]* %cr, i64 0, i64 0
  %7 = load i8*, i8** %rep, align 8
  %call10 = call i8* @str_replace(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %arraydecay9, i8* %7)
  store i8* %call10, i8** %rep, align 8
  %8 = load i8*, i8** %rep, align 8
  %call11 = call i64 @strlen(i8* %8) #6
  %conv12 = trunc i64 %call11 to i32
  store i32 %conv12, i32* %len, align 4
  %9 = load i32, i32* %len, align 4
  %cmp = icmp sgt i32 %9, 255
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %10 = load i8, i8* %key, align 1
  %11 = load i8*, i8** %d.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 0
  store i8 %10, i8* %arrayidx, align 1
  %12 = load i8, i8* %mod, align 1
  %13 = load i8*, i8** %d.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 %12, i8* %arrayidx15, align 1
  %14 = load i32, i32* %len, align 4
  %conv16 = trunc i32 %14 to i8
  %conv17 = zext i8 %conv16 to i32
  %15 = load i8, i8* %key, align 1
  %conv18 = zext i8 %15 to i32
  %xor = xor i32 %conv17, %conv18
  %16 = load i8, i8* %mod, align 1
  %conv19 = zext i8 %16 to i32
  %xor20 = xor i32 %xor, %conv19
  %conv21 = trunc i32 %xor20 to i8
  %17 = load i8*, i8** %d.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %17, i64 2
  store i8 %conv21, i8* %arrayidx22, align 1
  store i32 0, i32* %i, align 4
  store i32 3, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %len, align 4
  %cmp23 = icmp slt i32 %18, %19
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i8*, i8** %rep, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx25 = getelementptr inbounds i8, i8* %20, i64 %idxprom
  %22 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %22 to i32
  %23 = load i8, i8* %key, align 1
  %conv27 = zext i8 %23 to i32
  %xor28 = xor i32 %conv26, %conv27
  %conv29 = trunc i32 %xor28 to i8
  %24 = load i8*, i8** %d.addr, align 8
  %25 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %25 to i64
  %arrayidx31 = getelementptr inbounds i8, i8* %24, i64 %idxprom30
  store i8 %conv29, i8* %arrayidx31, align 1
  %26 = load i8, i8* %mod, align 1
  %conv32 = zext i8 %26 to i32
  %27 = load i8*, i8** %d.addr, align 8
  %28 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %28 to i64
  %arrayidx34 = getelementptr inbounds i8, i8* %27, i64 %idxprom33
  %29 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %29 to i32
  %add = add nsw i32 %conv35, %conv32
  %conv36 = trunc i32 %add to i8
  store i8 %conv36, i8* %arrayidx34, align 1
  %30 = load i8, i8* %mod, align 1
  %conv37 = zext i8 %30 to i32
  %31 = load i8*, i8** %d.addr, align 8
  %32 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %32 to i64
  %arrayidx39 = getelementptr inbounds i8, i8* %31, i64 %idxprom38
  %33 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %33 to i32
  %xor41 = xor i32 %conv40, %conv37
  %conv42 = trunc i32 %xor41 to i8
  store i8 %conv42, i8* %arrayidx39, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %i, align 4
  %35 = load i32, i32* %j, align 4
  %inc43 = add nsw i32 %35, 1
  store i32 %inc43, i32* %j, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %36 = load i32, i32* %len, align 4
  store i32 %36, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %37 = load i32, i32* %retval, align 4
  ret i32 %37
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare dso_local void @srandom(i32) #2

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

; Function Attrs: nounwind
declare dso_local i64 @random() #2

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @deobfuscate(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %key = alloca i8, align 1
  %mod = alloca i8, align 1
  %len = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  store i8 %1, i8* %key, align 1
  %2 = load i8*, i8** %s.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  store i8 %3, i8* %mod, align 1
  %4 = load i8*, i8** %s.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %5 to i32
  %6 = load i8, i8* %key, align 1
  %conv3 = zext i8 %6 to i32
  %xor = xor i32 %conv, %conv3
  %7 = load i8, i8* %mod, align 1
  %conv4 = zext i8 %7 to i32
  %xor5 = xor i32 %xor, %conv4
  %conv6 = trunc i32 %xor5 to i8
  store i8 %conv6, i8* %len, align 1
  %8 = load i8, i8* %len, align 1
  %conv7 = zext i8 %8 to i32
  %add = add nsw i32 %conv7, 1
  %conv8 = sext i32 %add to i64
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([256 x i8], [256 x i8]* @deobfuscate.d, i64 0, i64 0), i8 0, i64 %conv8, i1 false)
  store i32 0, i32* %i, align 4
  store i32 3, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4
  %10 = load i8, i8* %len, align 1
  %conv9 = zext i8 %10 to i32
  %cmp = icmp slt i32 %9, %conv9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8*, i8** %s.addr, align 8
  %12 = load i32, i32* %j, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds i8, i8* %11, i64 %idxprom
  %13 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %13 to i32
  %14 = load i8, i8* %mod, align 1
  %conv13 = zext i8 %14 to i32
  %xor14 = xor i32 %conv12, %conv13
  %conv15 = trunc i32 %xor14 to i8
  %15 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [256 x i8], [256 x i8]* @deobfuscate.d, i64 0, i64 %idxprom16
  store i8 %conv15, i8* %arrayidx17, align 1
  %16 = load i8, i8* %mod, align 1
  %conv18 = zext i8 %16 to i32
  %17 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds [256 x i8], [256 x i8]* @deobfuscate.d, i64 0, i64 %idxprom19
  %18 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %18 to i32
  %sub = sub nsw i32 %conv21, %conv18
  %conv22 = trunc i32 %sub to i8
  store i8 %conv22, i8* %arrayidx20, align 1
  %19 = load i8, i8* %key, align 1
  %conv23 = zext i8 %19 to i32
  %20 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %20 to i64
  %arrayidx25 = getelementptr inbounds [256 x i8], [256 x i8]* @deobfuscate.d, i64 0, i64 %idxprom24
  %21 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %21 to i32
  %xor27 = xor i32 %conv26, %conv23
  %conv28 = trunc i32 %xor27 to i8
  store i8 %conv28, i8* %arrayidx25, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  %23 = load i32, i32* %j, align 4
  %inc29 = add nsw i32 %23, 1
  store i32 %inc29, i32* %j, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %24 = load i8, i8* %len, align 1
  %idxprom30 = zext i8 %24 to i64
  %arrayidx31 = getelementptr inbounds [256 x i8], [256 x i8]* @deobfuscate.d, i64 0, i64 %idxprom30
  store i8 0, i8* %arrayidx31, align 1
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @deobfuscate.d, i64 0, i64 0)
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %buf = alloca i8*, align 8
  %test = alloca i8*, align 8
  %i = alloca i32, align 4
  %obf_len = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %2)
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 1
  %4 = load i8*, i8** %arrayidx1, align 8
  %call2 = call i64 @strlen(i8* %4) #6
  %cmp3 = icmp ugt i64 %call2, 255
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %5, i64 1
  %6 = load i8*, i8** %arrayidx7, align 8
  %call8 = call i64 @strlen(i8* %6) #6
  %add = add i64 %call8, 3
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %obf_len, align 4
  %7 = load i32, i32* %obf_len, align 4
  %conv9 = sext i32 %7 to i64
  %call10 = call noalias align 16 i8* @malloc(i64 %conv9) #7
  store i8* %call10, i8** %buf, align 8
  %8 = load i8*, i8** %buf, align 8
  %9 = load i32, i32* %obf_len, align 4
  %conv11 = sext i32 %9 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %8, i8 0, i64 %conv11, i1 false)
  %10 = load i8**, i8*** %argv.addr, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %10, i64 1
  %11 = load i8*, i8** %arrayidx12, align 8
  %12 = load i8*, i8** %buf, align 8
  %call13 = call i32 @obfuscate(i8* %11, i8* %12)
  store i32 %call13, i32* %obf_len, align 4
  %13 = load i32, i32* %obf_len, align 4
  %add14 = add nsw i32 %13, 3
  store i32 %add14, i32* %obf_len, align 4
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %obf_len, align 4
  %cmp16 = icmp slt i32 %14, %15
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %16 = load i8*, i8** %buf, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx19 = getelementptr inbounds i8, i8* %16, i64 %idxprom
  %18 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %18 to i32
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %conv20)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %20 = load i8**, i8*** %argv.addr, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %20, i64 1
  %21 = load i8*, i8** %arrayidx22, align 8
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* %21)
  %22 = load i8*, i8** %buf, align 8
  %call24 = call i8* @deobfuscate(i8* %22)
  store i8* %call24, i8** %test, align 8
  %23 = load i8*, i8** %test, align 8
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8* %23)
  %24 = load i8*, i8** %buf, align 8
  call void @free(i8* %24) #7
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then4, %if.then
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

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
