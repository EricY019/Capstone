; ModuleID = './code/344-20592pr57233.c'
source_filename = "./code/344-20592pr57233.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@a = global <4 x i32> zeroinitializer, align 16
@b = global <4 x i32> zeroinitializer, align 16
@c = global <8 x i32> zeroinitializer, align 16
@d = global <8 x i32> zeroinitializer, align 16
@e = global <16 x i32> zeroinitializer, align 16
@f = global <16 x i32> zeroinitializer, align 16
@r.x = internal global i32 -559038737, align 4
@r.y = internal global i32 305428052, align 4
@r.z = internal global i32 439041101, align 4
@r.w = internal global i32 -2023406815, align 4
@g = global <4 x i32> zeroinitializer, align 16
@h = global <8 x i32> zeroinitializer, align 16
@j = global <16 x i32> zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f1() #0 {
entry:
  %0 = load <4 x i32>, ptr @a, align 16
  %shl = shl <4 x i32> %0, <i32 2, i32 2, i32 2, i32 2>
  %1 = load <4 x i32>, ptr @a, align 16
  %shr = lshr <4 x i32> %1, <i32 30, i32 30, i32 30, i32 30>
  %or = or <4 x i32> %shl, %shr
  store <4 x i32> %or, ptr @a, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f2() #0 {
entry:
  %0 = load <4 x i32>, ptr @a, align 16
  %shl = shl <4 x i32> %0, <i32 30, i32 30, i32 30, i32 30>
  %1 = load <4 x i32>, ptr @a, align 16
  %shr = lshr <4 x i32> %1, <i32 2, i32 2, i32 2, i32 2>
  %or = or <4 x i32> %shl, %shr
  store <4 x i32> %or, ptr @a, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f3() #0 {
entry:
  %0 = load <4 x i32>, ptr @a, align 16
  %1 = load <4 x i32>, ptr @b, align 16
  %shl = shl <4 x i32> %0, %1
  %2 = load <4 x i32>, ptr @a, align 16
  %3 = load <4 x i32>, ptr @b, align 16
  %sub = sub <4 x i32> <i32 32, i32 32, i32 32, i32 32>, %3
  %shr = lshr <4 x i32> %2, %sub
  %or = or <4 x i32> %shl, %shr
  store <4 x i32> %or, ptr @a, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f4(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load <4 x i32>, ptr @a, align 16
  %1 = load i32, ptr %x.addr, align 4
  %splat.splatinsert = insertelement <4 x i32> poison, i32 %1, i64 0
  %splat.splat = shufflevector <4 x i32> %splat.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %shl = shl <4 x i32> %0, %splat.splat
  %2 = load <4 x i32>, ptr @a, align 16
  %3 = load i32, ptr %x.addr, align 4
  %sub = sub nsw i32 32, %3
  %splat.splatinsert1 = insertelement <4 x i32> poison, i32 %sub, i64 0
  %splat.splat2 = shufflevector <4 x i32> %splat.splatinsert1, <4 x i32> poison, <4 x i32> zeroinitializer
  %shr = lshr <4 x i32> %2, %splat.splat2
  %or = or <4 x i32> %shl, %shr
  store <4 x i32> %or, ptr @a, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f5() #0 {
entry:
  %0 = load <8 x i32>, ptr @c, align 16
  %shl = shl <8 x i32> %0, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %1 = load <8 x i32>, ptr @c, align 16
  %shr = lshr <8 x i32> %1, <i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30>
  %or = or <8 x i32> %shl, %shr
  store <8 x i32> %or, ptr @c, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f6() #0 {
entry:
  %0 = load <8 x i32>, ptr @c, align 16
  %shl = shl <8 x i32> %0, <i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30>
  %1 = load <8 x i32>, ptr @c, align 16
  %shr = lshr <8 x i32> %1, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %or = or <8 x i32> %shl, %shr
  store <8 x i32> %or, ptr @c, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f7() #0 {
entry:
  %0 = load <8 x i32>, ptr @c, align 16
  %1 = load <8 x i32>, ptr @d, align 16
  %shl = shl <8 x i32> %0, %1
  %2 = load <8 x i32>, ptr @c, align 16
  %3 = load <8 x i32>, ptr @d, align 16
  %sub = sub <8 x i32> <i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32>, %3
  %shr = lshr <8 x i32> %2, %sub
  %or = or <8 x i32> %shl, %shr
  store <8 x i32> %or, ptr @c, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f8(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load <8 x i32>, ptr @c, align 16
  %1 = load i32, ptr %x.addr, align 4
  %splat.splatinsert = insertelement <8 x i32> poison, i32 %1, i64 0
  %splat.splat = shufflevector <8 x i32> %splat.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %shl = shl <8 x i32> %0, %splat.splat
  %2 = load <8 x i32>, ptr @c, align 16
  %3 = load i32, ptr %x.addr, align 4
  %sub = sub nsw i32 32, %3
  %splat.splatinsert1 = insertelement <8 x i32> poison, i32 %sub, i64 0
  %splat.splat2 = shufflevector <8 x i32> %splat.splatinsert1, <8 x i32> poison, <8 x i32> zeroinitializer
  %shr = lshr <8 x i32> %2, %splat.splat2
  %or = or <8 x i32> %shl, %shr
  store <8 x i32> %or, ptr @c, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f9() #0 {
entry:
  %0 = load <16 x i32>, ptr @e, align 16
  %shl = shl <16 x i32> %0, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %1 = load <16 x i32>, ptr @e, align 16
  %shr = lshr <16 x i32> %1, <i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30>
  %or = or <16 x i32> %shl, %shr
  store <16 x i32> %or, ptr @e, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f10() #0 {
entry:
  %0 = load <16 x i32>, ptr @e, align 16
  %shl = shl <16 x i32> %0, <i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30, i32 30>
  %1 = load <16 x i32>, ptr @e, align 16
  %shr = lshr <16 x i32> %1, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %or = or <16 x i32> %shl, %shr
  store <16 x i32> %or, ptr @e, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f11() #0 {
entry:
  %0 = load <16 x i32>, ptr @e, align 16
  %1 = load <16 x i32>, ptr @f, align 16
  %shl = shl <16 x i32> %0, %1
  %2 = load <16 x i32>, ptr @e, align 16
  %3 = load <16 x i32>, ptr @f, align 16
  %sub = sub <16 x i32> <i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32>, %3
  %shr = lshr <16 x i32> %2, %sub
  %or = or <16 x i32> %shl, %shr
  store <16 x i32> %or, ptr @e, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f12(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load <16 x i32>, ptr @e, align 16
  %1 = load i32, ptr %x.addr, align 4
  %splat.splatinsert = insertelement <16 x i32> poison, i32 %1, i64 0
  %splat.splat = shufflevector <16 x i32> %splat.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %shl = shl <16 x i32> %0, %splat.splat
  %2 = load <16 x i32>, ptr @e, align 16
  %3 = load i32, ptr %x.addr, align 4
  %sub = sub nsw i32 32, %3
  %splat.splatinsert1 = insertelement <16 x i32> poison, i32 %sub, i64 0
  %splat.splat2 = shufflevector <16 x i32> %splat.splatinsert1, <16 x i32> poison, <16 x i32> zeroinitializer
  %shr = lshr <16 x i32> %2, %splat.splat2
  %or = or <16 x i32> %shl, %shr
  store <16 x i32> %or, ptr @e, align 16
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @r() #0 {
entry:
  %t = alloca i32, align 4
  %0 = load i32, ptr @r.x, align 4
  %1 = load i32, ptr @r.x, align 4
  %shl = shl i32 %1, 11
  %xor = xor i32 %0, %shl
  store i32 %xor, ptr %t, align 4
  %2 = load i32, ptr @r.y, align 4
  store i32 %2, ptr @r.x, align 4
  %3 = load i32, ptr @r.z, align 4
  store i32 %3, ptr @r.y, align 4
  %4 = load i32, ptr @r.w, align 4
  store i32 %4, ptr @r.z, align 4
  %5 = load i32, ptr @r.w, align 4
  %6 = load i32, ptr @r.w, align 4
  %shr = lshr i32 %6, 19
  %xor1 = xor i32 %5, %shr
  %7 = load i32, ptr %t, align 4
  %xor2 = xor i32 %xor1, %7
  %8 = load i32, ptr %t, align 4
  %shr3 = lshr i32 %8, 8
  %xor4 = xor i32 %xor2, %shr3
  store i32 %xor4, ptr @r.w, align 4
  %9 = load i32, ptr @r.w, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @init(ptr noundef %p, i32 noundef %count, i32 noundef %mod) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %mod.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %v = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %count, ptr %count.addr, align 4
  store i32 %mod, ptr %mod.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %count.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @r()
  store i32 %call, ptr %v, align 4
  %2 = load i32, ptr %mod.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %v, align 4
  %rem = urem i32 %3, 31
  %add = add i32 %rem, 1
  store i32 %add, ptr %v, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load i32, ptr %v, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  store i32 %4, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @check(ptr noundef %p, ptr noundef %q, i32 noundef %count, ptr noundef %s, i32 noundef %ss) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %ss.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %q, ptr %q.addr, align 8
  store i32 %count, ptr %count.addr, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 %ss, ptr %ss.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %count.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %s.addr, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load ptr, ptr %s.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  store i32 %5, ptr %ss.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %6 = load ptr, ptr %p.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %6, i64 %idxprom1
  %8 = load i32, ptr %arrayidx2, align 4
  %9 = load ptr, ptr %q.addr, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %9, i64 %idxprom3
  %11 = load i32, ptr %arrayidx4, align 4
  %12 = load i32, ptr %ss.addr, align 4
  %shl = shl i32 %11, %12
  %13 = load ptr, ptr %q.addr, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %13, i64 %idxprom5
  %15 = load i32, ptr %arrayidx6, align 4
  %16 = load i32, ptr %ss.addr, align 4
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
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @init(ptr noundef @a, i32 noundef 4, i32 noundef 0)
  call void @init(ptr noundef @b, i32 noundef 4, i32 noundef 1)
  call void @init(ptr noundef @c, i32 noundef 8, i32 noundef 0)
  call void @init(ptr noundef @d, i32 noundef 8, i32 noundef 1)
  call void @init(ptr noundef @e, i32 noundef 16, i32 noundef 0)
  call void @init(ptr noundef @f, i32 noundef 16, i32 noundef 1)
  %0 = load <4 x i32>, ptr @a, align 16
  store <4 x i32> %0, ptr @g, align 16
  %1 = load <8 x i32>, ptr @c, align 16
  store <8 x i32> %1, ptr @h, align 16
  %2 = load <16 x i32>, ptr @e, align 16
  store <16 x i32> %2, ptr @j, align 16
  call void @f1()
  call void @f5()
  call void @f9()
  call void @check(ptr noundef @a, ptr noundef @g, i32 noundef 4, ptr noundef null, i32 noundef 2)
  call void @check(ptr noundef @c, ptr noundef @h, i32 noundef 8, ptr noundef null, i32 noundef 2)
  call void @check(ptr noundef @e, ptr noundef @j, i32 noundef 16, ptr noundef null, i32 noundef 2)
  %3 = load <4 x i32>, ptr @a, align 16
  store <4 x i32> %3, ptr @g, align 16
  %4 = load <8 x i32>, ptr @c, align 16
  store <8 x i32> %4, ptr @h, align 16
  %5 = load <16 x i32>, ptr @e, align 16
  store <16 x i32> %5, ptr @j, align 16
  call void @f2()
  call void @f6()
  call void @f10()
  call void @check(ptr noundef @a, ptr noundef @g, i32 noundef 4, ptr noundef null, i32 noundef 30)
  call void @check(ptr noundef @c, ptr noundef @h, i32 noundef 8, ptr noundef null, i32 noundef 30)
  call void @check(ptr noundef @e, ptr noundef @j, i32 noundef 16, ptr noundef null, i32 noundef 30)
  %6 = load <4 x i32>, ptr @a, align 16
  store <4 x i32> %6, ptr @g, align 16
  %7 = load <8 x i32>, ptr @c, align 16
  store <8 x i32> %7, ptr @h, align 16
  %8 = load <16 x i32>, ptr @e, align 16
  store <16 x i32> %8, ptr @j, align 16
  call void @f3()
  call void @f7()
  call void @f11()
  call void @check(ptr noundef @a, ptr noundef @g, i32 noundef 4, ptr noundef @b, i32 noundef 0)
  call void @check(ptr noundef @c, ptr noundef @h, i32 noundef 8, ptr noundef @d, i32 noundef 0)
  call void @check(ptr noundef @e, ptr noundef @j, i32 noundef 16, ptr noundef @f, i32 noundef 0)
  %9 = load <4 x i32>, ptr @a, align 16
  store <4 x i32> %9, ptr @g, align 16
  %10 = load <8 x i32>, ptr @c, align 16
  store <8 x i32> %10, ptr @h, align 16
  %11 = load <16 x i32>, ptr @e, align 16
  store <16 x i32> %11, ptr @j, align 16
  call void @f4(i32 noundef 5)
  call void @f8(i32 noundef 5)
  call void @f12(i32 noundef 5)
  call void @check(ptr noundef @a, ptr noundef @g, i32 noundef 4, ptr noundef null, i32 noundef 5)
  call void @check(ptr noundef @c, ptr noundef @h, i32 noundef 8, ptr noundef null, i32 noundef 5)
  call void @check(ptr noundef @e, ptr noundef @j, i32 noundef 16, ptr noundef null, i32 noundef 5)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { noreturn nounwind }

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
