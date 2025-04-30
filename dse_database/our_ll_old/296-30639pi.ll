; ModuleID = './code/296-30639pi.c'
source_filename = "./code/296-30639pi.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@N4 = global i32 0, align 4
@N = global i32 0, align 4
@__stdoutp = external global ptr, align 8
@a = global [10240 x i8] zeroinitializer, align 1
@b = global [10240 x i8] zeroinitializer, align 1
@c = global [10240 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" \0A3.\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"    <%d>\0A\0A   \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\0A   \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@string = global [100 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @LONGDIV(ptr noundef %x, i32 noundef %n) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %q = alloca i32, align 4
  %r = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i64, align 8
  store ptr %x, ptr %x.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, 6553
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %r, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, ptr %k, align 4
  %2 = load i32, ptr @N4, align 4
  %cmp1 = icmp sle i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %r, align 4
  %mul = mul i32 %3, 10
  %4 = load ptr, ptr %x.addr, align 8
  %5 = load i32, ptr %k, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %add = add i32 %mul, %conv
  store i32 %add, ptr %u, align 4
  %7 = load i32, ptr %u, align 4
  %8 = load i32, ptr %n.addr, align 4
  %div = udiv i32 %7, %8
  store i32 %div, ptr %q, align 4
  %9 = load i32, ptr %u, align 4
  %10 = load i32, ptr %q, align 4
  %11 = load i32, ptr %n.addr, align 4
  %mul2 = mul i32 %10, %11
  %sub = sub i32 %9, %mul2
  store i32 %sub, ptr %r, align 4
  %12 = load i32, ptr %q, align 4
  %conv3 = trunc i32 %12 to i8
  %13 = load ptr, ptr %x.addr, align 8
  %14 = load i32, ptr %k, align 4
  %idxprom4 = sext i32 %14 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %13, i64 %idxprom4
  store i8 %conv3, ptr %arrayidx5, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %k, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %if.end41

if.else:                                          ; preds = %entry
  store i32 0, ptr %r, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc38, %if.else
  %16 = load i32, ptr %k, align 4
  %17 = load i32, ptr @N4, align 4
  %cmp7 = icmp sle i32 %16, %17
  br i1 %cmp7, label %for.body9, label %for.end40

for.body9:                                        ; preds = %for.cond6
  %18 = load i32, ptr %r, align 4
  %cmp10 = icmp ult i32 %18, 6553
  br i1 %cmp10, label %if.then12, label %if.else21

if.then12:                                        ; preds = %for.body9
  %19 = load i32, ptr %r, align 4
  %mul13 = mul i32 %19, 10
  %20 = load ptr, ptr %x.addr, align 8
  %21 = load i32, ptr %k, align 4
  %idxprom14 = sext i32 %21 to i64
  %arrayidx15 = getelementptr inbounds i8, ptr %20, i64 %idxprom14
  %22 = load i8, ptr %arrayidx15, align 1
  %conv16 = sext i8 %22 to i32
  %add17 = add i32 %mul13, %conv16
  store i32 %add17, ptr %u, align 4
  %23 = load i32, ptr %u, align 4
  %24 = load i32, ptr %n.addr, align 4
  %div18 = udiv i32 %23, %24
  store i32 %div18, ptr %q, align 4
  %25 = load i32, ptr %u, align 4
  %26 = load i32, ptr %q, align 4
  %27 = load i32, ptr %n.addr, align 4
  %mul19 = mul i32 %26, %27
  %sub20 = sub i32 %25, %mul19
  store i32 %sub20, ptr %r, align 4
  br label %if.end

if.else21:                                        ; preds = %for.body9
  %28 = load i32, ptr %r, align 4
  %conv22 = zext i32 %28 to i64
  %mul23 = mul nsw i64 %conv22, 10
  %29 = load ptr, ptr %x.addr, align 8
  %30 = load i32, ptr %k, align 4
  %idxprom24 = sext i32 %30 to i64
  %arrayidx25 = getelementptr inbounds i8, ptr %29, i64 %idxprom24
  %31 = load i8, ptr %arrayidx25, align 1
  %conv26 = sext i8 %31 to i64
  %add27 = add nsw i64 %mul23, %conv26
  store i64 %add27, ptr %v, align 8
  %32 = load i64, ptr %v, align 8
  %33 = load i32, ptr %n.addr, align 4
  %conv28 = sext i32 %33 to i64
  %div29 = sdiv i64 %32, %conv28
  %conv30 = trunc i64 %div29 to i32
  store i32 %conv30, ptr %q, align 4
  %34 = load i64, ptr %v, align 8
  %35 = load i32, ptr %q, align 4
  %36 = load i32, ptr %n.addr, align 4
  %mul31 = mul i32 %35, %36
  %conv32 = zext i32 %mul31 to i64
  %sub33 = sub nsw i64 %34, %conv32
  %conv34 = trunc i64 %sub33 to i32
  store i32 %conv34, ptr %r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else21, %if.then12
  %37 = load i32, ptr %q, align 4
  %conv35 = trunc i32 %37 to i8
  %38 = load ptr, ptr %x.addr, align 8
  %39 = load i32, ptr %k, align 4
  %idxprom36 = sext i32 %39 to i64
  %arrayidx37 = getelementptr inbounds i8, ptr %38, i64 %idxprom36
  store i8 %conv35, ptr %arrayidx37, align 1
  br label %for.inc38

for.inc38:                                        ; preds = %if.end
  %40 = load i32, ptr %k, align 4
  %inc39 = add nsw i32 %40, 1
  store i32 %inc39, ptr %k, align 4
  br label %for.cond6, !llvm.loop !7

for.end40:                                        ; preds = %for.cond6
  br label %if.end41

if.end41:                                         ; preds = %for.end40, %for.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @MULTIPLY(ptr noundef %x, i32 noundef %n) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %q = alloca i32, align 4
  %r = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i64, align 8
  store ptr %x, ptr %x.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store i32 0, ptr %r, align 4
  %0 = load i32, ptr @N4, align 4
  store i32 %0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %k, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %n.addr, align 4
  %3 = load ptr, ptr %x.addr, align 8
  %4 = load i32, ptr %k, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %mul = mul nsw i32 %2, %conv
  %6 = load i32, ptr %r, align 4
  %add = add i32 %mul, %6
  store i32 %add, ptr %q, align 4
  %7 = load i32, ptr %q, align 4
  %div = udiv i32 %7, 10
  store i32 %div, ptr %r, align 4
  %8 = load i32, ptr %q, align 4
  %9 = load i32, ptr %r, align 4
  %mul1 = mul i32 %9, 10
  %sub = sub i32 %8, %mul1
  %conv2 = trunc i32 %sub to i8
  %10 = load ptr, ptr %x.addr, align 8
  %11 = load i32, ptr %k, align 4
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %10, i64 %idxprom3
  store i8 %conv2, ptr %arrayidx4, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %k, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, ptr %k, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @SET(ptr noundef %x, i32 noundef %n) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %x.addr, align 8
  %1 = load i32, ptr @N4, align 4
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  %2 = load ptr, ptr %x.addr, align 8
  %3 = call i64 @llvm.objectsize.i64.p0(ptr %2, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %0, i32 noundef 0, i64 noundef %conv, i64 noundef %3) #4
  %4 = load i32, ptr %n.addr, align 4
  %conv1 = trunc i32 %4 to i8
  %5 = load ptr, ptr %x.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 0
  store i8 %conv1, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @SUBTRACT(ptr noundef %x, ptr noundef %y, ptr noundef %z) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %z.addr = alloca ptr, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %q = alloca i32, align 4
  %r = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i64, align 8
  store ptr %x, ptr %x.addr, align 8
  store ptr %y, ptr %y.addr, align 8
  store ptr %z, ptr %z.addr, align 8
  %0 = load i32, ptr @N4, align 4
  store i32 %0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %k, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %y.addr, align 8
  %3 = load i32, ptr %k, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %5 = load ptr, ptr %z.addr, align 8
  %6 = load i32, ptr %k, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %5, i64 %idxprom1
  %7 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %7 to i32
  %sub = sub nsw i32 %conv, %conv3
  %conv4 = trunc i32 %sub to i8
  %8 = load ptr, ptr %x.addr, align 8
  %9 = load i32, ptr %k, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %8, i64 %idxprom5
  store i8 %conv4, ptr %arrayidx6, align 1
  %conv7 = sext i8 %conv4 to i32
  %cmp8 = icmp slt i32 %conv7, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %x.addr, align 8
  %11 = load i32, ptr %k, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %10, i64 %idxprom10
  %12 = load i8, ptr %arrayidx11, align 1
  %conv12 = sext i8 %12 to i32
  %add = add nsw i32 %conv12, 10
  %conv13 = trunc i32 %add to i8
  store i8 %conv13, ptr %arrayidx11, align 1
  %13 = load ptr, ptr %z.addr, align 8
  %14 = load i32, ptr %k, align 4
  %sub14 = sub nsw i32 %14, 1
  %idxprom15 = sext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %13, i64 %idxprom15
  %15 = load i8, ptr %arrayidx16, align 1
  %inc = add i8 %15, 1
  store i8 %inc, ptr %arrayidx16, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, ptr %k, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, ptr %k, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
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
  store i32 10000, ptr @N, align 4
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @atoi(ptr noundef %2)
  store i32 %call, ptr @N, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr @__stdoutp, align 8
  call void @setbuf(ptr noundef %3, ptr noundef null)
  call void @calculate()
  call void @epilog()
  ret i32 0
}

declare i32 @atoi(ptr noundef) #3

declare void @setbuf(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @calculate() #0 {
entry:
  %j = alloca i32, align 4
  %j2 = alloca i32, align 4
  %k = alloca i32, align 4
  %q = alloca i32, align 4
  %r = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i64, align 8
  %j12 = alloca i32, align 4
  %k13 = alloca i32, align 4
  %q14 = alloca i32, align 4
  %r15 = alloca i32, align 4
  %u16 = alloca i32, align 4
  %v17 = alloca i64, align 8
  %j36 = alloca i32, align 4
  %k37 = alloca i32, align 4
  %q38 = alloca i32, align 4
  %r39 = alloca i32, align 4
  %u40 = alloca i32, align 4
  %v41 = alloca i64, align 8
  %j63 = alloca i32, align 4
  %k64 = alloca i32, align 4
  %q65 = alloca i32, align 4
  %r66 = alloca i32, align 4
  %u67 = alloca i32, align 4
  %v68 = alloca i64, align 8
  %j87 = alloca i32, align 4
  %k88 = alloca i32, align 4
  %q89 = alloca i32, align 4
  %r90 = alloca i32, align 4
  %u91 = alloca i32, align 4
  %v92 = alloca i64, align 8
  %0 = load i32, ptr @N, align 4
  %add = add nsw i32 %0, 4
  store i32 %add, ptr @N4, align 4
  call void @SET(ptr noundef @a, i32 noundef 0)
  call void @SET(ptr noundef @b, i32 noundef 0)
  %1 = load i32, ptr @N4, align 4
  %mul = mul nsw i32 2, %1
  %add1 = add nsw i32 %mul, 1
  store i32 %add1, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc60, %entry
  %2 = load i32, ptr %j, align 4
  %cmp = icmp sge i32 %2, 3
  br i1 %cmp, label %for.body, label %for.end62

for.body:                                         ; preds = %for.cond
  call void @SET(ptr noundef @c, i32 noundef 1)
  %3 = load i32, ptr %j, align 4
  call void @LONGDIV(ptr noundef @c, i32 noundef %3)
  call void @SUBTRACT(ptr noundef @a, ptr noundef @c, ptr noundef @a)
  store i32 0, ptr %r, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %k, align 4
  %5 = load i32, ptr @N4, align 4
  %cmp4 = icmp sle i32 %4, %5
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %6 = load i32, ptr %r, align 4
  %mul6 = mul i32 %6, 10
  %7 = load i32, ptr %k, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [10240 x i8], ptr @a, i64 0, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %add7 = add i32 %mul6, %conv
  store i32 %add7, ptr %u, align 4
  %9 = load i32, ptr %u, align 4
  %div = udiv i32 %9, 25
  store i32 %div, ptr %q, align 4
  %10 = load i32, ptr %u, align 4
  %11 = load i32, ptr %q, align 4
  %mul8 = mul i32 %11, 25
  %sub = sub i32 %10, %mul8
  store i32 %sub, ptr %r, align 4
  %12 = load i32, ptr %q, align 4
  %conv9 = trunc i32 %12 to i8
  %13 = load i32, ptr %k, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [10240 x i8], ptr @a, i64 0, i64 %idxprom10
  store i8 %conv9, ptr %arrayidx11, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %14 = load i32, ptr %k, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond3, !llvm.loop !10

for.end:                                          ; preds = %for.cond3
  call void @SUBTRACT(ptr noundef @b, ptr noundef @c, ptr noundef @b)
  store i32 0, ptr %r15, align 4
  store i32 0, ptr %k13, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc33, %for.end
  %15 = load i32, ptr %k13, align 4
  %16 = load i32, ptr @N4, align 4
  %cmp19 = icmp sle i32 %15, %16
  br i1 %cmp19, label %for.body21, label %for.end35

for.body21:                                       ; preds = %for.cond18
  %17 = load i32, ptr %r15, align 4
  %mul22 = mul i32 %17, 10
  %18 = load i32, ptr %k13, align 4
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds [10240 x i8], ptr @b, i64 0, i64 %idxprom23
  %19 = load i8, ptr %arrayidx24, align 1
  %conv25 = sext i8 %19 to i32
  %add26 = add i32 %mul22, %conv25
  store i32 %add26, ptr %u16, align 4
  %20 = load i32, ptr %u16, align 4
  %div27 = udiv i32 %20, 239
  store i32 %div27, ptr %q14, align 4
  %21 = load i32, ptr %u16, align 4
  %22 = load i32, ptr %q14, align 4
  %mul28 = mul i32 %22, 239
  %sub29 = sub i32 %21, %mul28
  store i32 %sub29, ptr %r15, align 4
  %23 = load i32, ptr %q14, align 4
  %conv30 = trunc i32 %23 to i8
  %24 = load i32, ptr %k13, align 4
  %idxprom31 = sext i32 %24 to i64
  %arrayidx32 = getelementptr inbounds [10240 x i8], ptr @b, i64 0, i64 %idxprom31
  store i8 %conv30, ptr %arrayidx32, align 1
  br label %for.inc33

for.inc33:                                        ; preds = %for.body21
  %25 = load i32, ptr %k13, align 4
  %inc34 = add nsw i32 %25, 1
  store i32 %inc34, ptr %k13, align 4
  br label %for.cond18, !llvm.loop !11

for.end35:                                        ; preds = %for.cond18
  store i32 0, ptr %r39, align 4
  store i32 0, ptr %k37, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc57, %for.end35
  %26 = load i32, ptr %k37, align 4
  %27 = load i32, ptr @N4, align 4
  %cmp43 = icmp sle i32 %26, %27
  br i1 %cmp43, label %for.body45, label %for.end59

for.body45:                                       ; preds = %for.cond42
  %28 = load i32, ptr %r39, align 4
  %mul46 = mul i32 %28, 10
  %29 = load i32, ptr %k37, align 4
  %idxprom47 = sext i32 %29 to i64
  %arrayidx48 = getelementptr inbounds [10240 x i8], ptr @b, i64 0, i64 %idxprom47
  %30 = load i8, ptr %arrayidx48, align 1
  %conv49 = sext i8 %30 to i32
  %add50 = add i32 %mul46, %conv49
  store i32 %add50, ptr %u40, align 4
  %31 = load i32, ptr %u40, align 4
  %div51 = udiv i32 %31, 239
  store i32 %div51, ptr %q38, align 4
  %32 = load i32, ptr %u40, align 4
  %33 = load i32, ptr %q38, align 4
  %mul52 = mul i32 %33, 239
  %sub53 = sub i32 %32, %mul52
  store i32 %sub53, ptr %r39, align 4
  %34 = load i32, ptr %q38, align 4
  %conv54 = trunc i32 %34 to i8
  %35 = load i32, ptr %k37, align 4
  %idxprom55 = sext i32 %35 to i64
  %arrayidx56 = getelementptr inbounds [10240 x i8], ptr @b, i64 0, i64 %idxprom55
  store i8 %conv54, ptr %arrayidx56, align 1
  br label %for.inc57

for.inc57:                                        ; preds = %for.body45
  %36 = load i32, ptr %k37, align 4
  %inc58 = add nsw i32 %36, 1
  store i32 %inc58, ptr %k37, align 4
  br label %for.cond42, !llvm.loop !12

for.end59:                                        ; preds = %for.cond42
  call void @progress()
  br label %for.inc60

for.inc60:                                        ; preds = %for.end59
  %37 = load i32, ptr %j, align 4
  %sub61 = sub nsw i32 %37, 2
  store i32 %sub61, ptr %j, align 4
  br label %for.cond, !llvm.loop !13

for.end62:                                        ; preds = %for.cond
  call void @SET(ptr noundef @c, i32 noundef 1)
  call void @SUBTRACT(ptr noundef @a, ptr noundef @c, ptr noundef @a)
  store i32 0, ptr %r66, align 4
  store i32 0, ptr %k64, align 4
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc84, %for.end62
  %38 = load i32, ptr %k64, align 4
  %39 = load i32, ptr @N4, align 4
  %cmp70 = icmp sle i32 %38, %39
  br i1 %cmp70, label %for.body72, label %for.end86

for.body72:                                       ; preds = %for.cond69
  %40 = load i32, ptr %r66, align 4
  %mul73 = mul i32 %40, 10
  %41 = load i32, ptr %k64, align 4
  %idxprom74 = sext i32 %41 to i64
  %arrayidx75 = getelementptr inbounds [10240 x i8], ptr @a, i64 0, i64 %idxprom74
  %42 = load i8, ptr %arrayidx75, align 1
  %conv76 = sext i8 %42 to i32
  %add77 = add i32 %mul73, %conv76
  store i32 %add77, ptr %u67, align 4
  %43 = load i32, ptr %u67, align 4
  %div78 = udiv i32 %43, 5
  store i32 %div78, ptr %q65, align 4
  %44 = load i32, ptr %u67, align 4
  %45 = load i32, ptr %q65, align 4
  %mul79 = mul i32 %45, 5
  %sub80 = sub i32 %44, %mul79
  store i32 %sub80, ptr %r66, align 4
  %46 = load i32, ptr %q65, align 4
  %conv81 = trunc i32 %46 to i8
  %47 = load i32, ptr %k64, align 4
  %idxprom82 = sext i32 %47 to i64
  %arrayidx83 = getelementptr inbounds [10240 x i8], ptr @a, i64 0, i64 %idxprom82
  store i8 %conv81, ptr %arrayidx83, align 1
  br label %for.inc84

for.inc84:                                        ; preds = %for.body72
  %48 = load i32, ptr %k64, align 4
  %inc85 = add nsw i32 %48, 1
  store i32 %inc85, ptr %k64, align 4
  br label %for.cond69, !llvm.loop !14

for.end86:                                        ; preds = %for.cond69
  call void @SUBTRACT(ptr noundef @b, ptr noundef @c, ptr noundef @b)
  store i32 0, ptr %r90, align 4
  store i32 0, ptr %k88, align 4
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc108, %for.end86
  %49 = load i32, ptr %k88, align 4
  %50 = load i32, ptr @N4, align 4
  %cmp94 = icmp sle i32 %49, %50
  br i1 %cmp94, label %for.body96, label %for.end110

for.body96:                                       ; preds = %for.cond93
  %51 = load i32, ptr %r90, align 4
  %mul97 = mul i32 %51, 10
  %52 = load i32, ptr %k88, align 4
  %idxprom98 = sext i32 %52 to i64
  %arrayidx99 = getelementptr inbounds [10240 x i8], ptr @b, i64 0, i64 %idxprom98
  %53 = load i8, ptr %arrayidx99, align 1
  %conv100 = sext i8 %53 to i32
  %add101 = add i32 %mul97, %conv100
  store i32 %add101, ptr %u91, align 4
  %54 = load i32, ptr %u91, align 4
  %div102 = udiv i32 %54, 239
  store i32 %div102, ptr %q89, align 4
  %55 = load i32, ptr %u91, align 4
  %56 = load i32, ptr %q89, align 4
  %mul103 = mul i32 %56, 239
  %sub104 = sub i32 %55, %mul103
  store i32 %sub104, ptr %r90, align 4
  %57 = load i32, ptr %q89, align 4
  %conv105 = trunc i32 %57 to i8
  %58 = load i32, ptr %k88, align 4
  %idxprom106 = sext i32 %58 to i64
  %arrayidx107 = getelementptr inbounds [10240 x i8], ptr @b, i64 0, i64 %idxprom106
  store i8 %conv105, ptr %arrayidx107, align 1
  br label %for.inc108

for.inc108:                                       ; preds = %for.body96
  %59 = load i32, ptr %k88, align 4
  %inc109 = add nsw i32 %59, 1
  store i32 %inc109, ptr %k88, align 4
  br label %for.cond93, !llvm.loop !15

for.end110:                                       ; preds = %for.cond93
  call void @MULTIPLY(ptr noundef @a, i32 noundef 4)
  call void @SUBTRACT(ptr noundef @a, ptr noundef @a, ptr noundef @b)
  call void @MULTIPLY(ptr noundef @a, i32 noundef 4)
  call void @progress()
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @epilog() #0 {
entry:
  %j = alloca i32, align 4
  %0 = load ptr, ptr @__stdoutp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.1) #4
  store i32 1, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %j, align 4
  %2 = load i32, ptr @N, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr @__stdoutp, align 8
  %4 = load i32, ptr %j, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [10240 x i8], ptr @a, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.2, i32 noundef %conv) #4
  %6 = load i32, ptr %j, align 4
  %rem = srem i32 %6, 5
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then, label %if.end17

if.then:                                          ; preds = %for.body
  %7 = load i32, ptr %j, align 4
  %rem4 = srem i32 %7, 50
  %cmp5 = icmp eq i32 %rem4, 0
  br i1 %cmp5, label %if.then7, label %if.else14

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %j, align 4
  %rem8 = srem i32 %8, 250
  %cmp9 = icmp eq i32 %rem8, 0
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then7
  %9 = load ptr, ptr @__stdoutp, align 8
  %10 = load i32, ptr %j, align 4
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.3, i32 noundef %10) #4
  br label %if.end

if.else:                                          ; preds = %if.then7
  %11 = load ptr, ptr @__stdoutp, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.4) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then11
  br label %if.end16

if.else14:                                        ; preds = %if.then
  %12 = load ptr, ptr @__stdoutp, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.5) #4
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %13 = load i32, ptr %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @progress() #0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret void
}

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind }

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
