; ModuleID = 'code/344-20592pr57233.c'
source_filename = "code/344-20592pr57233.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global <4 x i32> zeroinitializer, align 16
@b = dso_local global <4 x i32> zeroinitializer, align 16
@c = dso_local global <8 x i32> zeroinitializer, align 32
@d = dso_local global <8 x i32> zeroinitializer, align 32
@e = dso_local global <16 x i32> zeroinitializer, align 64
@f = dso_local global <16 x i32> zeroinitializer, align 64
@r.x = internal global i32 -559038737, align 4
@r.y = internal global i32 305428052, align 4
@r.z = internal global i32 439041101, align 4
@r.w = internal global i32 -2023406815, align 4
@g = dso_local global <4 x i32> zeroinitializer, align 16
@h = dso_local global <8 x i32> zeroinitializer, align 32
@j = dso_local global <16 x i32> zeroinitializer, align 64

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f1() #0 {
entry:
  %0 = load <4 x i32>, <4 x i32>* @a, align 16
  %shl = shl <4 x i32> %0, <i32 2, i32 2, i32 2, i32 2>
  %1 = load <4 x i32>, <4 x i32>* @a, align 16
  %shr = lshr <4 x i32> %1, <i32 30, i32 30, i32 30, i32 30>
  %or = or <4 x i32> %shl, %shr
  store <4 x i32> %or, <4 x i32>* @a, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2() #0 {
entry:
  %0 = load <4 x i32>, <4 x i32>* @a, align 16
  %shl = shl <4 x i32> %0, <i32 30, i32 30, i32 30, i32 30>
  %1 = load <4 x i32>, <4 x i32>* @a, align 16
  %shr = lshr <4 x i32> %1, <i32 2, i32 2, i32 2, i32 2>
  %or = or <4 x i32> %shl, %shr
  store <4 x i32> %or, <4 x i32>* @a, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f3() #0 {
entry:
  %0 = load <4 x i32>, <4 x i32>* @a, align 16
  %1 = load <4 x i32>, <4 x i32>* @b, align 16
  %shl = shl <4 x i32> %0, %1
  %2 = load <4 x i32>, <4 x i32>* @a, align 16
  %3 = load <4 x i32>, <4 x i32>* @b, align 16
  %sub = sub <4 x i32> <i32 32, i32 32, i32 32, i32 32>, %3
  %shr = lshr <4 x i32> %2, %sub
  %or = or <4 x i32> %shl, %shr
  store <4 x i32> %or, <4 x i32>* @a, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f4(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load <4 x i32>, <4 x i32>* @a, align 16
  %1 = load i32, i32* %x.addr, align 4
  %splat.splatinsert = insertelement <4 x i32> poison, i32 %1, i32 0
  %splat.splat = shufflevector <4 x i32> %splat.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %shl = shl <4 x i32> %0, %splat.splat
  %2 = load <4 x i32>, <4 x i32>* @a, align 16
  %3 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 32, %3
  %splat.splatinsert1 = insertelement <4 x i32> poison, i32 %sub, i32 0
  %splat.splat2 = shufflevector <4 x i32> %splat.splatinsert1, <4 x i32> poison, <4 x i32> zeroinitializer
  %shr = lshr <4 x i32> %2, %splat.splat2
  %or = or <4 x i32> %shl, %shr
  store <4 x i32> %or, <4 x i32>* @a, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f5() #0 {
entry:
  %0 = load <8 x i32>, <8 x i32>* @c, align 32
  %shl = shl <8 x i32> %0, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %1 = load <8 x i32>, <8 x i32>* @c, align 32
  %shr = lshr <8 x i32> %1, <i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30>
  %or = or <8 x i32> %shl, %shr
  store <8 x i32> %or, <8 x i32>* @c, align 32
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f6() #0 {
entry:
  %0 = load <8 x i32>, <8 x i32>* @c, align 32
  %shl = shl <8 x i32> %0, <i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30>
  %1 = load <8 x i32>, <8 x i32>* @c, align 32
  %shr = lshr <8 x i32> %1, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %or = or <8 x i32> %shl, %shr
  store <8 x i32> %or, <8 x i32>* @c, align 32
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f7() #0 {
entry:
  %0 = load <8 x i32>, <8 x i32>* @c, align 32
  %1 = load <8 x i32>, <8 x i32>* @d, align 32
  %shl = shl <8 x i32> %0, %1
  %2 = load <8 x i32>, <8 x i32>* @c, align 32
  %3 = load <8 x i32>, <8 x i32>* @d, align 32
  %sub = sub <8 x i32> <i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32>, %3
  %shr = lshr <8 x i32> %2, %sub
  %or = or <8 x i32> %shl, %shr
  store <8 x i32> %or, <8 x i32>* @c, align 32
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f8(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load <8 x i32>, <8 x i32>* @c, align 32
  %1 = load i32, i32* %x.addr, align 4
  %splat.splatinsert = insertelement <8 x i32> poison, i32 %1, i32 0
  %splat.splat = shufflevector <8 x i32> %splat.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %shl = shl <8 x i32> %0, %splat.splat
  %2 = load <8 x i32>, <8 x i32>* @c, align 32
  %3 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 32, %3
  %splat.splatinsert1 = insertelement <8 x i32> poison, i32 %sub, i32 0
  %splat.splat2 = shufflevector <8 x i32> %splat.splatinsert1, <8 x i32> poison, <8 x i32> zeroinitializer
  %shr = lshr <8 x i32> %2, %splat.splat2
  %or = or <8 x i32> %shl, %shr
  store <8 x i32> %or, <8 x i32>* @c, align 32
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f9() #0 {
entry:
  %0 = load <16 x i32>, <16 x i32>* @e, align 64
  %shl = shl <16 x i32> %0, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %1 = load <16 x i32>, <16 x i32>* @e, align 64
  %shr = lshr <16 x i32> %1, <i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30>
  %or = or <16 x i32> %shl, %shr
  store <16 x i32> %or, <16 x i32>* @e, align 64
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f10() #0 {
entry:
  %0 = load <16 x i32>, <16 x i32>* @e, align 64
  %shl = shl <16 x i32> %0, <i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30>
  %1 = load <16 x i32>, <16 x i32>* @e, align 64
  %shr = lshr <16 x i32> %1, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %or = or <16 x i32> %shl, %shr
  store <16 x i32> %or, <16 x i32>* @e, align 64
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f11() #0 {
entry:
  %0 = load <16 x i32>, <16 x i32>* @e, align 64
  %1 = load <16 x i32>, <16 x i32>* @f, align 64
  %shl = shl <16 x i32> %0, %1
  %2 = load <16 x i32>, <16 x i32>* @e, align 64
  %3 = load <16 x i32>, <16 x i32>* @f, align 64
  %sub = sub <16 x i32> <i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32>, %3
  %shr = lshr <16 x i32> %2, %sub
  %or = or <16 x i32> %shl, %shr
  store <16 x i32> %or, <16 x i32>* @e, align 64
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f12(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load <16 x i32>, <16 x i32>* @e, align 64
  %1 = load i32, i32* %x.addr, align 4
  %splat.splatinsert = insertelement <16 x i32> poison, i32 %1, i32 0
  %splat.splat = shufflevector <16 x i32> %splat.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %shl = shl <16 x i32> %0, %splat.splat
  %2 = load <16 x i32>, <16 x i32>* @e, align 64
  %3 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 32, %3
  %splat.splatinsert1 = insertelement <16 x i32> poison, i32 %sub, i32 0
  %splat.splat2 = shufflevector <16 x i32> %splat.splatinsert1, <16 x i32> poison, <16 x i32> zeroinitializer
  %shr = lshr <16 x i32> %2, %splat.splat2
  %or = or <16 x i32> %shl, %shr
  store <16 x i32> %or, <16 x i32>* @e, align 64
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r() #0 {
entry:
  %t = alloca i32, align 4
  %0 = load i32, i32* @r.x, align 4
  %1 = load i32, i32* @r.x, align 4
  %shl = shl i32 %1, 11
  %xor = xor i32 %0, %shl
  store i32 %xor, i32* %t, align 4
  %2 = load i32, i32* @r.y, align 4
  store i32 %2, i32* @r.x, align 4
  %3 = load i32, i32* @r.z, align 4
  store i32 %3, i32* @r.y, align 4
  %4 = load i32, i32* @r.w, align 4
  store i32 %4, i32* @r.z, align 4
  %5 = load i32, i32* @r.w, align 4
  %6 = load i32, i32* @r.w, align 4
  %shr = lshr i32 %6, 19
  %xor1 = xor i32 %5, %shr
  %7 = load i32, i32* %t, align 4
  %xor2 = xor i32 %xor1, %7
  %8 = load i32, i32* %t, align 4
  %shr3 = lshr i32 %8, 8
  %xor4 = xor i32 %xor2, %shr3
  store i32 %xor4, i32* @r.w, align 4
  %9 = load i32, i32* @r.w, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init(i32* %p, i32 %count, i32 %mod) #0 {
entry:
  %p.addr = alloca i32*, align 8
  %count.addr = alloca i32, align 4
  %mod.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %v = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32 %mod, i32* %mod.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %count.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @r()
  store i32 %call, i32* %v, align 4
  %2 = load i32, i32* %mod.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %v, align 4
  %rem = urem i32 %3, 31
  %add = add i32 %rem, 1
  store i32 %add, i32* %v, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load i32, i32* %v, align 4
  %5 = load i32*, i32** %p.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 %4, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check(i32* %p, i32* %q, i32 %count, i32* %s, i32 %ss) #0 {
entry:
  %p.addr = alloca i32*, align 8
  %q.addr = alloca i32*, align 8
  %count.addr = alloca i32, align 4
  %s.addr = alloca i32*, align 8
  %ss.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  store i32* %q, i32** %q.addr, align 8
  store i32 %count, i32* %count.addr, align 4
  store i32* %s, i32** %s.addr, align 8
  store i32 %ss, i32* %ss.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %count.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %s.addr, align 8
  %tobool = icmp ne i32* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32*, i32** %s.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* %ss.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %6 = load i32*, i32** %p.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 %idxprom1
  %8 = load i32, i32* %arrayidx2, align 4
  %9 = load i32*, i32** %q.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %9, i64 %idxprom3
  %11 = load i32, i32* %arrayidx4, align 4
  %12 = load i32, i32* %ss.addr, align 4
  %shl = shl i32 %11, %12
  %13 = load i32*, i32** %q.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %13, i64 %idxprom5
  %15 = load i32, i32* %arrayidx6, align 4
  %16 = load i32, i32* %ss.addr, align 4
  %sub = sub nsw i32 32, %16
  %shr = lshr i32 %15, %sub
  %or = or i32 %shl, %shr
  %cmp7 = icmp ne i32 %8, %or
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  call void @abort() #2
  unreachable

if.end9:                                          ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @init(i32* getelementptr inbounds (<4 x i32>, <4 x i32>* @a, i32 0, i32 0), i32 4, i32 0)
  call void @init(i32* getelementptr inbounds (<4 x i32>, <4 x i32>* @b, i32 0, i32 0), i32 4, i32 1)
  call void @init(i32* getelementptr inbounds (<8 x i32>, <8 x i32>* @c, i32 0, i32 0), i32 8, i32 0)
  call void @init(i32* getelementptr inbounds (<8 x i32>, <8 x i32>* @d, i32 0, i32 0), i32 8, i32 1)
  call void @init(i32* getelementptr inbounds (<16 x i32>, <16 x i32>* @e, i32 0, i32 0), i32 16, i32 0)
  call void @init(i32* getelementptr inbounds (<16 x i32>, <16 x i32>* @f, i32 0, i32 0), i32 16, i32 1)
  %0 = load <4 x i32>, <4 x i32>* @a, align 16
  store <4 x i32> %0, <4 x i32>* @g, align 16
  %1 = load <8 x i32>, <8 x i32>* @c, align 32
  store <8 x i32> %1, <8 x i32>* @h, align 32
  %2 = load <16 x i32>, <16 x i32>* @e, align 64
  store <16 x i32> %2, <16 x i32>* @j, align 64
  call void @f1()
  call void @f5()
  call void @f9()
  call void @check(i32* getelementptr inbounds (<4 x i32>, <4 x i32>* @a, i32 0, i32 0), i32* getelementptr inbounds (<4 x i32>, <4 x i32>* @g, i32 0, i32 0), i32 4, i32* null, i32 2)
  call void @check(i32* getelementptr inbounds (<8 x i32>, <8 x i32>* @c, i32 0, i32 0), i32* getelementptr inbounds (<8 x i32>, <8 x i32>* @h, i32 0, i32 0), i32 8, i32* null, i32 2)
  call void @check(i32* getelementptr inbounds (<16 x i32>, <16 x i32>* @e, i32 0, i32 0), i32* getelementptr inbounds (<16 x i32>, <16 x i32>* @j, i32 0, i32 0), i32 16, i32* null, i32 2)
  %3 = load <4 x i32>, <4 x i32>* @a, align 16
  store <4 x i32> %3, <4 x i32>* @g, align 16
  %4 = load <8 x i32>, <8 x i32>* @c, align 32
  store <8 x i32> %4, <8 x i32>* @h, align 32
  %5 = load <16 x i32>, <16 x i32>* @e, align 64
  store <16 x i32> %5, <16 x i32>* @j, align 64
  call void @f2()
  call void @f6()
  call void @f10()
  call void @check(i32* getelementptr inbounds (<4 x i32>, <4 x i32>* @a, i32 0, i32 0), i32* getelementptr inbounds (<4 x i32>, <4 x i32>* @g, i32 0, i32 0), i32 4, i32* null, i32 30)
  call void @check(i32* getelementptr inbounds (<8 x i32>, <8 x i32>* @c, i32 0, i32 0), i32* getelementptr inbounds (<8 x i32>, <8 x i32>* @h, i32 0, i32 0), i32 8, i32* null, i32 30)
  call void @check(i32* getelementptr inbounds (<16 x i32>, <16 x i32>* @e, i32 0, i32 0), i32* getelementptr inbounds (<16 x i32>, <16 x i32>* @j, i32 0, i32 0), i32 16, i32* null, i32 30)
  %6 = load <4 x i32>, <4 x i32>* @a, align 16
  store <4 x i32> %6, <4 x i32>* @g, align 16
  %7 = load <8 x i32>, <8 x i32>* @c, align 32
  store <8 x i32> %7, <8 x i32>* @h, align 32
  %8 = load <16 x i32>, <16 x i32>* @e, align 64
  store <16 x i32> %8, <16 x i32>* @j, align 64
  call void @f3()
  call void @f7()
  call void @f11()
  call void @check(i32* getelementptr inbounds (<4 x i32>, <4 x i32>* @a, i32 0, i32 0), i32* getelementptr inbounds (<4 x i32>, <4 x i32>* @g, i32 0, i32 0), i32 4, i32* getelementptr inbounds (<4 x i32>, <4 x i32>* @b, i32 0, i32 0), i32 0)
  call void @check(i32* getelementptr inbounds (<8 x i32>, <8 x i32>* @c, i32 0, i32 0), i32* getelementptr inbounds (<8 x i32>, <8 x i32>* @h, i32 0, i32 0), i32 8, i32* getelementptr inbounds (<8 x i32>, <8 x i32>* @d, i32 0, i32 0), i32 0)
  call void @check(i32* getelementptr inbounds (<16 x i32>, <16 x i32>* @e, i32 0, i32 0), i32* getelementptr inbounds (<16 x i32>, <16 x i32>* @j, i32 0, i32 0), i32 16, i32* getelementptr inbounds (<16 x i32>, <16 x i32>* @f, i32 0, i32 0), i32 0)
  %9 = load <4 x i32>, <4 x i32>* @a, align 16
  store <4 x i32> %9, <4 x i32>* @g, align 16
  %10 = load <8 x i32>, <8 x i32>* @c, align 32
  store <8 x i32> %10, <8 x i32>* @h, align 32
  %11 = load <16 x i32>, <16 x i32>* @e, align 64
  store <16 x i32> %11, <16 x i32>* @j, align 64
  call void @f4(i32 5)
  call void @f8(i32 5)
  call void @f12(i32 5)
  call void @check(i32* getelementptr inbounds (<4 x i32>, <4 x i32>* @a, i32 0, i32 0), i32* getelementptr inbounds (<4 x i32>, <4 x i32>* @g, i32 0, i32 0), i32 4, i32* null, i32 5)
  call void @check(i32* getelementptr inbounds (<8 x i32>, <8 x i32>* @c, i32 0, i32 0), i32* getelementptr inbounds (<8 x i32>, <8 x i32>* @h, i32 0, i32 0), i32 8, i32* null, i32 5)
  call void @check(i32* getelementptr inbounds (<16 x i32>, <16 x i32>* @e, i32 0, i32 0), i32* getelementptr inbounds (<16 x i32>, <16 x i32>* @j, i32 0, i32 0), i32 16, i32* null, i32 5)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
