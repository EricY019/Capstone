; ModuleID = './code/312-13860Euler_Problem-034.c'
source_filename = "./code/312-13860Euler_Problem-034.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [216 x i8] c"v{ }  L>1:00p1*:10p2*:20p3*:30p4*:40p5*:v{ }  +vp110$p09:*9p08:*8p07:*7p06:*6p05<{ }  1v_v#{ }  ::-1<p11 <>90g7*>::0\\>:55+%0g\\55+/:#v_>+#<\\:#<_+-|    +    >3-.$@ |:/+55\\g0%+55: <{ }  ,>:11g^    ^g11<  >{ }  0^{ }  0\00", align 1
@_g = global ptr @.str, align 8
@t = global i32 0, align 4
@z = global i32 0, align 4
@g = global [315 x i64] zeroinitializer, align 8
@q = global i32 16384, align 4
@y = global i32 0, align 4
@s = global ptr null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%lld \00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @d() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca i32, align 4
  %w = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %h = alloca i32, align 4
  %0 = load i32, ptr @z, align 4
  store i32 %0, ptr %h, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc66, %entry
  %1 = load i32, ptr @t, align 4
  %cmp = icmp slt i32 %1, 215
  br i1 %cmp, label %for.body, label %for.end68

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr @_g, align 8
  %3 = load i32, ptr @t, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 59
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr @_g, align 8
  %6 = load i32, ptr @t, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr @t, align 4
  %idxprom3 = sext i32 %inc to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %5, i64 %idxprom3
  %7 = load i8, ptr %arrayidx4, align 1
  %conv5 = sext i8 %7 to i64
  %8 = load i32, ptr @z, align 4
  %inc6 = add nsw i32 %8, 1
  store i32 %inc6, ptr @z, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [315 x i64], ptr @g, i64 0, i64 %idxprom7
  store i64 %conv5, ptr %arrayidx8, align 8
  br label %if.end65

if.else:                                          ; preds = %for.body
  %9 = load ptr, ptr @_g, align 8
  %10 = load i32, ptr @t, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %9, i64 %idxprom9
  %11 = load i8, ptr %arrayidx10, align 1
  %conv11 = sext i8 %11 to i32
  %cmp12 = icmp eq i32 %conv11, 125
  br i1 %cmp12, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else
  %12 = load i32, ptr @z, align 4
  %13 = load i32, ptr %h, align 4
  %sub = sub nsw i32 %12, %13
  store i32 %sub, ptr %retval, align 4
  br label %return

if.else15:                                        ; preds = %if.else
  %14 = load ptr, ptr @_g, align 8
  %15 = load i32, ptr @t, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds i8, ptr %14, i64 %idxprom16
  %16 = load i8, ptr %arrayidx17, align 1
  %conv18 = sext i8 %16 to i32
  %cmp19 = icmp eq i32 %conv18, 123
  br i1 %cmp19, label %if.then21, label %if.else57

if.then21:                                        ; preds = %if.else15
  %17 = load i32, ptr @t, align 4
  %inc22 = add nsw i32 %17, 1
  store i32 %inc22, ptr @t, align 4
  %18 = load i32, ptr @z, align 4
  store i32 %18, ptr %s, align 4
  %call = call i32 @d()
  store i32 %call, ptr %w, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc53, %if.then21
  %19 = load i32, ptr %i, align 4
  %20 = load ptr, ptr @_g, align 8
  %21 = load i32, ptr @t, align 4
  %add = add nsw i32 %21, 1
  %idxprom24 = sext i32 %add to i64
  %arrayidx25 = getelementptr inbounds i8, ptr %20, i64 %idxprom24
  %22 = load i8, ptr %arrayidx25, align 1
  %conv26 = sext i8 %22 to i32
  %mul = mul nsw i32 %conv26, 9025
  %23 = load ptr, ptr @_g, align 8
  %24 = load i32, ptr @t, align 4
  %add27 = add nsw i32 %24, 2
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %23, i64 %idxprom28
  %25 = load i8, ptr %arrayidx29, align 1
  %conv30 = sext i8 %25 to i32
  %mul31 = mul nsw i32 %conv30, 95
  %add32 = add nsw i32 %mul, %mul31
  %26 = load ptr, ptr @_g, align 8
  %27 = load i32, ptr @t, align 4
  %add33 = add nsw i32 %27, 3
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds i8, ptr %26, i64 %idxprom34
  %28 = load i8, ptr %arrayidx35, align 1
  %conv36 = sext i8 %28 to i32
  %add37 = add nsw i32 %add32, %conv36
  %sub38 = sub nsw i32 %add37, 291872
  %cmp39 = icmp slt i32 %19, %sub38
  br i1 %cmp39, label %for.body41, label %for.end55

for.body41:                                       ; preds = %for.cond23
  store i32 0, ptr %j, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc, %for.body41
  %29 = load i32, ptr %j, align 4
  %30 = load i32, ptr %w, align 4
  %cmp43 = icmp slt i32 %29, %30
  br i1 %cmp43, label %for.body45, label %for.end

for.body45:                                       ; preds = %for.cond42
  br label %for.inc

for.inc:                                          ; preds = %for.body45
  %31 = load i32, ptr %s, align 4
  %32 = load i32, ptr %j, align 4
  %inc46 = add nsw i32 %32, 1
  store i32 %inc46, ptr %j, align 4
  %add47 = add nsw i32 %31, %32
  %idxprom48 = sext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds [315 x i64], ptr @g, i64 0, i64 %idxprom48
  %33 = load i64, ptr %arrayidx49, align 8
  %34 = load i32, ptr @z, align 4
  %inc50 = add nsw i32 %34, 1
  store i32 %inc50, ptr @z, align 4
  %idxprom51 = sext i32 %34 to i64
  %arrayidx52 = getelementptr inbounds [315 x i64], ptr @g, i64 0, i64 %idxprom51
  store i64 %33, ptr %arrayidx52, align 8
  br label %for.cond42, !llvm.loop !5

for.end:                                          ; preds = %for.cond42
  br label %for.inc53

for.inc53:                                        ; preds = %for.end
  %35 = load i32, ptr %i, align 4
  %inc54 = add nsw i32 %35, 1
  store i32 %inc54, ptr %i, align 4
  br label %for.cond23, !llvm.loop !7

for.end55:                                        ; preds = %for.cond23
  %36 = load i32, ptr @t, align 4
  %add56 = add nsw i32 %36, 3
  store i32 %add56, ptr @t, align 4
  br label %if.end

if.else57:                                        ; preds = %if.else15
  %37 = load ptr, ptr @_g, align 8
  %38 = load i32, ptr @t, align 4
  %idxprom58 = sext i32 %38 to i64
  %arrayidx59 = getelementptr inbounds i8, ptr %37, i64 %idxprom58
  %39 = load i8, ptr %arrayidx59, align 1
  %conv60 = sext i8 %39 to i64
  %40 = load i32, ptr @z, align 4
  %inc61 = add nsw i32 %40, 1
  store i32 %inc61, ptr @z, align 4
  %idxprom62 = sext i32 %40 to i64
  %arrayidx63 = getelementptr inbounds [315 x i64], ptr @g, i64 0, i64 %idxprom62
  store i64 %conv60, ptr %arrayidx63, align 8
  br label %if.end

if.end:                                           ; preds = %if.else57, %for.end55
  br label %if.end64

if.end64:                                         ; preds = %if.end
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then
  br label %for.inc66

for.inc66:                                        ; preds = %if.end65
  %41 = load i32, ptr @t, align 4
  %inc67 = add nsw i32 %41, 1
  store i32 %inc67, ptr @t, align 4
  br label %for.cond, !llvm.loop !8

for.end68:                                        ; preds = %for.cond
  %42 = load i32, ptr @z, align 4
  %43 = load i32, ptr %h, align 4
  %sub69 = sub nsw i32 %42, %43
  store i32 %sub69, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end68, %if.then14
  %44 = load i32, ptr %retval, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @gr(i64 noundef %x, i64 noundef %y) #0 {
entry:
  %retval = alloca i64, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  %0 = load i64, ptr %x.addr, align 8
  %cmp = icmp sge i64 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, ptr %y.addr, align 8
  %cmp1 = icmp sge i64 %1, 0
  br i1 %cmp1, label %land.lhs.true2, label %if.else

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i64, ptr %x.addr, align 8
  %cmp3 = icmp slt i64 %2, 45
  br i1 %cmp3, label %land.lhs.true4, label %if.else

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i64, ptr %y.addr, align 8
  %cmp5 = icmp slt i64 %3, 7
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true4
  %4 = load i64, ptr %y.addr, align 8
  %mul = mul nsw i64 %4, 45
  %5 = load i64, ptr %x.addr, align 8
  %add = add nsw i64 %mul, %5
  %arrayidx = getelementptr inbounds [315 x i64], ptr @g, i64 0, i64 %add
  %6 = load i64, ptr %arrayidx, align 8
  store i64 %6, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  store i64 0, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load i64, ptr %retval, align 8
  ret i64 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @gw(i64 noundef %x, i64 noundef %y, i64 noundef %v) #0 {
entry:
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %v.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  store i64 %y, ptr %y.addr, align 8
  store i64 %v, ptr %v.addr, align 8
  %0 = load i64, ptr %x.addr, align 8
  %cmp = icmp sge i64 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, ptr %y.addr, align 8
  %cmp1 = icmp sge i64 %1, 0
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i64, ptr %x.addr, align 8
  %cmp3 = icmp slt i64 %2, 45
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i64, ptr %y.addr, align 8
  %cmp5 = icmp slt i64 %3, 7
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true4
  %4 = load i64, ptr %v.addr, align 8
  %5 = load i64, ptr %y.addr, align 8
  %mul = mul nsw i64 %5, 45
  %6 = load i64, ptr %x.addr, align 8
  %add = add nsw i64 %mul, %6
  %arrayidx = getelementptr inbounds [315 x i64], ptr @g, i64 0, i64 %add
  store i64 %4, ptr %arrayidx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @td(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  store i64 %b, ptr %b.addr, align 8
  %0 = load i64, ptr %b.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i64, ptr %a.addr, align 8
  %2 = load i64, ptr %b.addr, align 8
  %div = sdiv i64 %1, %2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %div, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @tm(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  store i64 %b, ptr %b.addr, align 8
  %0 = load i64, ptr %b.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i64, ptr %a.addr, align 8
  %2 = load i64, ptr %b.addr, align 8
  %rem = srem i64 %1, %2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %rem, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @sp() #0 {
entry:
  %retval = alloca i64, align 8
  %0 = load i32, ptr @y, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @s, align 8
  %2 = load i32, ptr @y, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr @y, align 4
  %idxprom = sext i32 %dec to i64
  %arrayidx = getelementptr inbounds i64, ptr %1, i64 %idxprom
  %3 = load i64, ptr %arrayidx, align 8
  store i64 %3, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i64, ptr %retval, align 8
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @sa(i64 noundef %v) #0 {
entry:
  %v.addr = alloca i64, align 8
  store i64 %v, ptr %v.addr, align 8
  %0 = load i32, ptr @q, align 4
  %1 = load i32, ptr @y, align 4
  %sub = sub nsw i32 %0, %1
  %cmp = icmp slt i32 %sub, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @s, align 8
  %3 = load i32, ptr @q, align 4
  %mul = mul nsw i32 %3, 2
  store i32 %mul, ptr @q, align 4
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 8
  %call = call ptr @realloc(ptr noundef %2, i64 noundef %mul1) #4
  store ptr %call, ptr @s, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, ptr %v.addr, align 8
  %5 = load ptr, ptr @s, align 8
  %6 = load i32, ptr @y, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr @y, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i64, ptr %5, i64 %idxprom
  store i64 %4, ptr %arrayidx, align 8
  ret void
}

; Function Attrs: allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @sr() #0 {
entry:
  %retval = alloca i64, align 8
  %0 = load i32, ptr @y, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @s, align 8
  %2 = load i32, ptr @y, align 4
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i64, ptr %1, i64 %idxprom
  %3 = load i64, ptr %arrayidx, align 8
  store i64 %3, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i64, ptr %retval, align 8
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %t0 = alloca i64, align 8
  %t1 = alloca i64, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %v030 = alloca i64, align 8
  %v132 = alloca i64, align 8
  %v060 = alloca i64, align 8
  %v162 = alloca i64, align 8
  %v067 = alloca i64, align 8
  %v169 = alloca i64, align 8
  %v083 = alloca i64, align 8
  %v185 = alloca i64, align 8
  %v090 = alloca i64, align 8
  %v192 = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  %call = call i32 @d()
  %0 = load i32, ptr @q, align 4
  %conv = sext i32 %0 to i64
  %call1 = call ptr @calloc(i64 noundef %conv, i64 noundef 8) #5
  store ptr %call1, ptr @s, align 8
  call void @gw(i64 noundef 0, i64 noundef 0, i64 noundef 1)
  call void @gw(i64 noundef 1, i64 noundef 0, i64 noundef 1)
  call void @gw(i64 noundef 2, i64 noundef 0, i64 noundef 2)
  call void @gw(i64 noundef 3, i64 noundef 0, i64 noundef 6)
  call void @gw(i64 noundef 4, i64 noundef 0, i64 noundef 24)
  call void @gw(i64 noundef 5, i64 noundef 0, i64 noundef 120)
  call void @gw(i64 noundef 6, i64 noundef 0, i64 noundef 720)
  call void @gw(i64 noundef 7, i64 noundef 0, i64 noundef 5040)
  call void @gw(i64 noundef 8, i64 noundef 0, i64 noundef 40320)
  call void @gw(i64 noundef 9, i64 noundef 0, i64 noundef 362880)
  call void @gw(i64 noundef 1, i64 noundef 1, i64 noundef 0)
  store i64 362880, ptr %t0, align 8
  %call2 = call i64 @gr(i64 noundef 9, i64 noundef 0)
  %mul = mul nsw i64 %call2, 7
  call void @sa(i64 noundef %mul)
  %call3 = call i64 @gr(i64 noundef 9, i64 noundef 0)
  %mul4 = mul nsw i64 %call3, 7
  call void @sa(i64 noundef %mul4)
  call void @sa(i64 noundef 0)
  %call5 = call i64 @gr(i64 noundef 9, i64 noundef 0)
  %mul6 = mul nsw i64 %call5, 7
  %rem = srem i64 %mul6, 10
  %call7 = call i64 @gr(i64 noundef %rem, i64 noundef 0)
  call void @sa(i64 noundef %call7)
  %call8 = call i64 @gr(i64 noundef 9, i64 noundef 0)
  %mul9 = mul nsw i64 %call8, 7
  %div = sdiv i64 %mul9, 10
  call void @sa(i64 noundef %div)
  %call10 = call i64 @gr(i64 noundef 9, i64 noundef 0)
  %mul11 = mul nsw i64 %call10, 7
  %div12 = sdiv i64 %mul11, 10
  call void @sa(i64 noundef %div12)
  br label %_1

_1:                                               ; preds = %_10, %_6, %entry
  %call13 = call i64 @sp()
  %cmp = icmp ne i64 %call13, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %_1
  br label %_2

if.else:                                          ; preds = %_1
  br label %_3

_2:                                               ; preds = %if.then
  %call15 = call i64 @sr()
  %rem16 = srem i64 %call15, 10
  %call17 = call i64 @gr(i64 noundef %rem16, i64 noundef 0)
  call void @sa(i64 noundef %call17)
  %call18 = call i64 @sp()
  store i64 %call18, ptr %v0, align 8
  %call19 = call i64 @sp()
  store i64 %call19, ptr %v1, align 8
  %1 = load i64, ptr %v0, align 8
  call void @sa(i64 noundef %1)
  %2 = load i64, ptr %v1, align 8
  call void @sa(i64 noundef %2)
  %call20 = call i64 @sp()
  %div21 = sdiv i64 %call20, 10
  call void @sa(i64 noundef %div21)
  %call22 = call i64 @sr()
  call void @sa(i64 noundef %call22)
  %call23 = call i64 @sp()
  %cmp24 = icmp ne i64 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.else27

if.then26:                                        ; preds = %_2
  br label %_10

if.else27:                                        ; preds = %_2
  br label %_3

_3:                                               ; preds = %_9, %if.else27, %if.else
  %call28 = call i64 @sp()
  %call29 = call i64 @sp()
  %add = add nsw i64 %call28, %call29
  call void @sa(i64 noundef %add)
  %call31 = call i64 @sp()
  store i64 %call31, ptr %v030, align 8
  %call33 = call i64 @sp()
  store i64 %call33, ptr %v132, align 8
  %3 = load i64, ptr %v030, align 8
  call void @sa(i64 noundef %3)
  %4 = load i64, ptr %v132, align 8
  call void @sa(i64 noundef %4)
  %call34 = call i64 @sr()
  call void @sa(i64 noundef %call34)
  %call35 = call i64 @sp()
  %cmp36 = icmp ne i64 %call35, 0
  br i1 %cmp36, label %if.then38, label %if.else39

if.then38:                                        ; preds = %_3
  br label %_9

if.else39:                                        ; preds = %_3
  br label %_4

_4:                                               ; preds = %if.else39
  %call40 = call i64 @sp()
  %call41 = call i64 @sp()
  %add42 = add nsw i64 %call40, %call41
  call void @sa(i64 noundef %add42)
  %call43 = call i64 @sp()
  store i64 %call43, ptr %t0, align 8
  %call44 = call i64 @sp()
  %5 = load i64, ptr %t0, align 8
  %sub = sub nsw i64 %call44, %5
  call void @sa(i64 noundef %sub)
  %call45 = call i64 @sp()
  store i64 %call45, ptr %t1, align 8
  %6 = load i64, ptr %t1, align 8
  %cmp46 = icmp ne i64 %6, 0
  br i1 %cmp46, label %if.then48, label %if.else49

if.then48:                                        ; preds = %_4
  br label %_5

if.else49:                                        ; preds = %_4
  br label %_8

_5:                                               ; preds = %_8, %if.then48
  %call50 = call i64 @sp()
  %sub51 = sub nsw i64 %call50, 1
  call void @sa(i64 noundef %sub51)
  %call52 = call i64 @sr()
  call void @sa(i64 noundef %call52)
  %call53 = call i64 @sp()
  %cmp54 = icmp ne i64 %call53, 0
  br i1 %cmp54, label %if.then56, label %if.else57

if.then56:                                        ; preds = %_5
  br label %_6

if.else57:                                        ; preds = %_5
  br label %_7

_6:                                               ; preds = %if.then56
  %call58 = call i64 @sr()
  call void @sa(i64 noundef %call58)
  %call59 = call i64 @sr()
  call void @sa(i64 noundef %call59)
  call void @sa(i64 noundef 0)
  %call61 = call i64 @sp()
  store i64 %call61, ptr %v060, align 8
  %call63 = call i64 @sp()
  store i64 %call63, ptr %v162, align 8
  %7 = load i64, ptr %v060, align 8
  call void @sa(i64 noundef %7)
  %8 = load i64, ptr %v162, align 8
  call void @sa(i64 noundef %8)
  %call64 = call i64 @sr()
  %rem65 = srem i64 %call64, 10
  %call66 = call i64 @gr(i64 noundef %rem65, i64 noundef 0)
  call void @sa(i64 noundef %call66)
  %call68 = call i64 @sp()
  store i64 %call68, ptr %v067, align 8
  %call70 = call i64 @sp()
  store i64 %call70, ptr %v169, align 8
  %9 = load i64, ptr %v067, align 8
  call void @sa(i64 noundef %9)
  %10 = load i64, ptr %v169, align 8
  call void @sa(i64 noundef %10)
  %call71 = call i64 @sp()
  %div72 = sdiv i64 %call71, 10
  call void @sa(i64 noundef %div72)
  %call73 = call i64 @sr()
  call void @sa(i64 noundef %call73)
  br label %_1

_7:                                               ; preds = %if.else57
  %call74 = call i64 @gr(i64 noundef 1, i64 noundef 1)
  %sub75 = sub nsw i64 %call74, 3
  %call76 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %sub75)
  %call77 = call i64 @sr()
  call void @sa(i64 noundef %call77)
  %call78 = call i64 @sp()
  %call79 = call i64 @sp()
  ret i32 0

_8:                                               ; preds = %if.else49
  %call80 = call i64 @sr()
  %call81 = call i64 @gr(i64 noundef 1, i64 noundef 1)
  %add82 = add nsw i64 %call80, %call81
  call void @gw(i64 noundef 1, i64 noundef 1, i64 noundef %add82)
  br label %_5

_9:                                               ; preds = %if.then38
  %call84 = call i64 @sp()
  store i64 %call84, ptr %v083, align 8
  %call86 = call i64 @sp()
  store i64 %call86, ptr %v185, align 8
  %11 = load i64, ptr %v083, align 8
  call void @sa(i64 noundef %11)
  %12 = load i64, ptr %v185, align 8
  call void @sa(i64 noundef %12)
  br label %_3

_10:                                              ; preds = %if.then26
  %call87 = call i64 @sr()
  %rem88 = srem i64 %call87, 10
  %call89 = call i64 @gr(i64 noundef %rem88, i64 noundef 0)
  call void @sa(i64 noundef %call89)
  %call91 = call i64 @sp()
  store i64 %call91, ptr %v090, align 8
  %call93 = call i64 @sp()
  store i64 %call93, ptr %v192, align 8
  %13 = load i64, ptr %v090, align 8
  call void @sa(i64 noundef %13)
  %14 = load i64, ptr %v192, align 8
  call void @sa(i64 noundef %14)
  %call94 = call i64 @sp()
  %div95 = sdiv i64 %call94, 10
  call void @sa(i64 noundef %div95)
  %call96 = call i64 @sr()
  call void @sa(i64 noundef %call96)
  br label %_1
}

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #2

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { allocsize(1) }
attributes #5 = { allocsize(0,1) }

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
