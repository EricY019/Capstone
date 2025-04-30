; ModuleID = 'code/268-16751pi_original.c'
source_filename = "code/268-16751pi_original.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@N4 = dso_local global i32 0, align 4
@N = dso_local global i32 0, align 4
@stdout = external dso_local global %struct._IO_FILE*, align 8
@a = dso_local global [10240 x i8] zeroinitializer, align 16
@b = dso_local global [10240 x i8] zeroinitializer, align 16
@c = dso_local global [10240 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" \0A3.\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"    <%d>\0A\0A   \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\0A   \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@string = dso_local global [100 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DIVIDE(i8* %x, i32 %n) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %q = alloca i32, align 4
  %r = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i64, align 8
  store i8* %x, i8** %x.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %r, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* @N4, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %r, align 4
  %mul = mul i32 %2, 10
  %3 = load i8*, i8** %x.addr, align 8
  %4 = load i32, i32* %k, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %add = add i32 %mul, %conv
  store i32 %add, i32* %u, align 4
  %6 = load i32, i32* %u, align 4
  %7 = load i32, i32* %n.addr, align 4
  %div = udiv i32 %6, %7
  store i32 %div, i32* %q, align 4
  %8 = load i32, i32* %u, align 4
  %9 = load i32, i32* %q, align 4
  %10 = load i32, i32* %n.addr, align 4
  %mul1 = mul i32 %9, %10
  %sub = sub i32 %8, %mul1
  store i32 %sub, i32* %r, align 4
  %11 = load i32, i32* %q, align 4
  %conv2 = trunc i32 %11 to i8
  %12 = load i8*, i8** %x.addr, align 8
  %13 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %13 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 %idxprom3
  store i8 %conv2, i8* %arrayidx4, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %k, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LONGDIV(i8* %x, i32 %n) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %q = alloca i32, align 4
  %r = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i64, align 8
  store i8* %x, i8** %x.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 6553
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %r, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %k, align 4
  %2 = load i32, i32* @N4, align 4
  %cmp1 = icmp sle i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %r, align 4
  %mul = mul i32 %3, 10
  %4 = load i8*, i8** %x.addr, align 8
  %5 = load i32, i32* %k, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %add = add i32 %mul, %conv
  store i32 %add, i32* %u, align 4
  %7 = load i32, i32* %u, align 4
  %8 = load i32, i32* %n.addr, align 4
  %div = udiv i32 %7, %8
  store i32 %div, i32* %q, align 4
  %9 = load i32, i32* %u, align 4
  %10 = load i32, i32* %q, align 4
  %11 = load i32, i32* %n.addr, align 4
  %mul2 = mul i32 %10, %11
  %sub = sub i32 %9, %mul2
  store i32 %sub, i32* %r, align 4
  %12 = load i32, i32* %q, align 4
  %conv3 = trunc i32 %12 to i8
  %13 = load i8*, i8** %x.addr, align 8
  %14 = load i32, i32* %k, align 4
  %idxprom4 = sext i32 %14 to i64
  %arrayidx5 = getelementptr inbounds i8, i8* %13, i64 %idxprom4
  store i8 %conv3, i8* %arrayidx5, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %k, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end41

if.else:                                          ; preds = %entry
  store i32 0, i32* %r, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc38, %if.else
  %16 = load i32, i32* %k, align 4
  %17 = load i32, i32* @N4, align 4
  %cmp7 = icmp sle i32 %16, %17
  br i1 %cmp7, label %for.body9, label %for.end40

for.body9:                                        ; preds = %for.cond6
  %18 = load i32, i32* %r, align 4
  %cmp10 = icmp ult i32 %18, 6553
  br i1 %cmp10, label %if.then12, label %if.else21

if.then12:                                        ; preds = %for.body9
  %19 = load i32, i32* %r, align 4
  %mul13 = mul i32 %19, 10
  %20 = load i8*, i8** %x.addr, align 8
  %21 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %21 to i64
  %arrayidx15 = getelementptr inbounds i8, i8* %20, i64 %idxprom14
  %22 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %22 to i32
  %add17 = add i32 %mul13, %conv16
  store i32 %add17, i32* %u, align 4
  %23 = load i32, i32* %u, align 4
  %24 = load i32, i32* %n.addr, align 4
  %div18 = udiv i32 %23, %24
  store i32 %div18, i32* %q, align 4
  %25 = load i32, i32* %u, align 4
  %26 = load i32, i32* %q, align 4
  %27 = load i32, i32* %n.addr, align 4
  %mul19 = mul i32 %26, %27
  %sub20 = sub i32 %25, %mul19
  store i32 %sub20, i32* %r, align 4
  br label %if.end

if.else21:                                        ; preds = %for.body9
  %28 = load i32, i32* %r, align 4
  %conv22 = zext i32 %28 to i64
  %mul23 = mul nsw i64 %conv22, 10
  %29 = load i8*, i8** %x.addr, align 8
  %30 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %30 to i64
  %arrayidx25 = getelementptr inbounds i8, i8* %29, i64 %idxprom24
  %31 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %31 to i64
  %add27 = add nsw i64 %mul23, %conv26
  store i64 %add27, i64* %v, align 8
  %32 = load i64, i64* %v, align 8
  %33 = load i32, i32* %n.addr, align 4
  %conv28 = sext i32 %33 to i64
  %div29 = sdiv i64 %32, %conv28
  %conv30 = trunc i64 %div29 to i32
  store i32 %conv30, i32* %q, align 4
  %34 = load i64, i64* %v, align 8
  %35 = load i32, i32* %q, align 4
  %36 = load i32, i32* %n.addr, align 4
  %mul31 = mul i32 %35, %36
  %conv32 = zext i32 %mul31 to i64
  %sub33 = sub nsw i64 %34, %conv32
  %conv34 = trunc i64 %sub33 to i32
  store i32 %conv34, i32* %r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else21, %if.then12
  %37 = load i32, i32* %q, align 4
  %conv35 = trunc i32 %37 to i8
  %38 = load i8*, i8** %x.addr, align 8
  %39 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %39 to i64
  %arrayidx37 = getelementptr inbounds i8, i8* %38, i64 %idxprom36
  store i8 %conv35, i8* %arrayidx37, align 1
  br label %for.inc38

for.inc38:                                        ; preds = %if.end
  %40 = load i32, i32* %k, align 4
  %inc39 = add nsw i32 %40, 1
  store i32 %inc39, i32* %k, align 4
  br label %for.cond6, !llvm.loop !7

for.end40:                                        ; preds = %for.cond6
  br label %if.end41

if.end41:                                         ; preds = %for.end40, %for.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MULTIPLY(i8* %x, i32 %n) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %q = alloca i32, align 4
  %r = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i64, align 8
  store i8* %x, i8** %x.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %r, align 4
  %0 = load i32, i32* @N4, align 4
  store i32 %0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %n.addr, align 4
  %3 = load i8*, i8** %x.addr, align 8
  %4 = load i32, i32* %k, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %mul = mul nsw i32 %2, %conv
  %6 = load i32, i32* %r, align 4
  %add = add i32 %mul, %6
  store i32 %add, i32* %q, align 4
  %7 = load i32, i32* %q, align 4
  %div = udiv i32 %7, 10
  store i32 %div, i32* %r, align 4
  %8 = load i32, i32* %q, align 4
  %9 = load i32, i32* %r, align 4
  %mul1 = mul i32 %9, 10
  %sub = sub i32 %8, %mul1
  %conv2 = trunc i32 %sub to i8
  %10 = load i8*, i8** %x.addr, align 8
  %11 = load i32, i32* %k, align 4
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %10, i64 %idxprom3
  store i8 %conv2, i8* %arrayidx4, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %k, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SET(i8* %x, i32 %n) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  store i8* %x, i8** %x.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i8*, i8** %x.addr, align 8
  %1 = load i32, i32* @N4, align 4
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 %conv, i1 false)
  %2 = load i32, i32* %n.addr, align 4
  %conv1 = trunc i32 %2 to i8
  %3 = load i8*, i8** %x.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  store i8 %conv1, i8* %arrayidx, align 1
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SUBTRACT(i8* %x, i8* %y, i8* %z) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  %z.addr = alloca i8*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %q = alloca i32, align 4
  %r = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i64, align 8
  store i8* %x, i8** %x.addr, align 8
  store i8* %y, i8** %y.addr, align 8
  store i8* %z, i8** %z.addr, align 8
  %0 = load i32, i32* @N4, align 4
  store i32 %0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %k, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %y.addr, align 8
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %5 = load i8*, i8** %z.addr, align 8
  %6 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 %idxprom1
  %7 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %7 to i32
  %sub = sub nsw i32 %conv, %conv3
  %conv4 = trunc i32 %sub to i8
  %8 = load i8*, i8** %x.addr, align 8
  %9 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds i8, i8* %8, i64 %idxprom5
  store i8 %conv4, i8* %arrayidx6, align 1
  %conv7 = sext i8 %conv4 to i32
  %cmp8 = icmp slt i32 %conv7, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i8*, i8** %x.addr, align 8
  %11 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds i8, i8* %10, i64 %idxprom10
  %12 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %12 to i32
  %add = add nsw i32 %conv12, 10
  %conv13 = trunc i32 %add to i8
  store i8 %conv13, i8* %arrayidx11, align 1
  %13 = load i8*, i8** %z.addr, align 8
  %14 = load i32, i32* %k, align 4
  %sub14 = sub nsw i32 %14, 1
  %idxprom15 = sext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %idxprom15
  %15 = load i8, i8* %arrayidx16, align 1
  %inc = add i8 %15, 1
  store i8 %inc, i8* %arrayidx16, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %k, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
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
  store i32 10000, i32* @N, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #5
  store i32 %call, i32* @N, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @setbuf(%struct._IO_FILE* %3, i8* null) #6
  call void @calculate()
  call void @epilog()
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare dso_local void @setbuf(%struct._IO_FILE*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calculate() #0 {
entry:
  %j = alloca i32, align 4
  %0 = load i32, i32* @N, align 4
  %add = add nsw i32 %0, 4
  store i32 %add, i32* @N4, align 4
  call void @SET(i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @a, i64 0, i64 0), i32 0)
  call void @SET(i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @b, i64 0, i64 0), i32 0)
  %1 = load i32, i32* @N4, align 4
  %mul = mul nsw i32 2, %1
  %add1 = add nsw i32 %mul, 1
  store i32 %add1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %j, align 4
  %cmp = icmp sge i32 %2, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @SET(i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @c, i64 0, i64 0), i32 1)
  %3 = load i32, i32* %j, align 4
  call void @LONGDIV(i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @c, i64 0, i64 0), i32 %3)
  call void @SUBTRACT(i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @a, i64 0, i64 0), i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @c, i64 0, i64 0), i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @a, i64 0, i64 0))
  call void @DIVIDE(i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @a, i64 0, i64 0), i32 25)
  call void @SUBTRACT(i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @b, i64 0, i64 0), i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @c, i64 0, i64 0), i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @b, i64 0, i64 0))
  call void @DIVIDE(i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @b, i64 0, i64 0), i32 239)
  call void @DIVIDE(i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @b, i64 0, i64 0), i32 239)
  call void @progress()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %4, 2
  store i32 %sub, i32* %j, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  call void @SET(i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @c, i64 0, i64 0), i32 1)
  call void @SUBTRACT(i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @a, i64 0, i64 0), i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @c, i64 0, i64 0), i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @a, i64 0, i64 0))
  call void @DIVIDE(i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @a, i64 0, i64 0), i32 5)
  call void @SUBTRACT(i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @b, i64 0, i64 0), i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @c, i64 0, i64 0), i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @b, i64 0, i64 0))
  call void @DIVIDE(i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @b, i64 0, i64 0), i32 239)
  call void @MULTIPLY(i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @a, i64 0, i64 0), i32 4)
  call void @SUBTRACT(i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @a, i64 0, i64 0), i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @a, i64 0, i64 0), i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @b, i64 0, i64 0))
  call void @MULTIPLY(i8* getelementptr inbounds ([10240 x i8], [10240 x i8]* @a, i64 0, i64 0), i32 4)
  call void @progress()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @epilog() #0 {
entry:
  %j = alloca i32, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* @N, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [10240 x i8], [10240 x i8]* @a, i64 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %conv)
  %6 = load i32, i32* %j, align 4
  %rem = srem i32 %6, 5
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then, label %if.end17

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %j, align 4
  %rem4 = srem i32 %7, 50
  %cmp5 = icmp eq i32 %rem4, 0
  br i1 %cmp5, label %if.then7, label %if.else14

if.then7:                                         ; preds = %if.then
  %8 = load i32, i32* %j, align 4
  %rem8 = srem i32 %8, 250
  %cmp9 = icmp eq i32 %rem8, 0
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then7
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %10 = load i32, i32* %j, align 4
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %10)
  br label %if.end

if.else:                                          ; preds = %if.then7
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then11
  br label %if.end16

if.else14:                                        ; preds = %if.then
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @progress() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #4

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }

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
