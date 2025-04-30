; ModuleID = 'code/364-17399Euler_Problem-012.c'
source_filename = "code/364-17399Euler_Problem-012.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [857 x i8] c"v     // Project Euler - Problem 12{ } ?4{#}0Zz{ } +@v  p03+1g03 p04+1g04   p +3/g01\\%g01:g04 g03 <{ } )6>\22d\2255+*:10p3\222\22*:20p*00p230p\22 \22:03p13p{ }  ,v{ }  .>130p040p  > 30g:10g%\\10g/3+g\22 \22- 00g30g` !#v_{ }  *|{ } )6v{ }  R<{ }  -_^#`g03g00 <^{ }  8p03+1g03{ }  ,<{ } )6> \22X\22 30g:10g%\\10g/3+p30g >30g+ : 00g\\`     #v_$>30g1+:30p:10g%\\10g/3+g\22 \22- |{ } )~^p+3/g01\\%g01:\\\22 \22:<  ^{ }  ;<{ } *(v{ }  \\+1$<{ } )]>:1+2/>:01p31p111p0>::10g%\\10g/3+g::*01g`#v_121p>:31g\\%{ }  )!#v_11g21g*11p31g1-|{ } * v{ }  (<    ^p13/\\g13:p12+1g12<{ } )jv{ }  6<{ }  *vp21<*2g11$$<^g11$${ }  B<{ } )M>2 212p222p >:2%|{ }  =>12g22g*\22d\225*` #v_1+    1v{ } *-|{ }  C<{ }  70+1$<{ } )]>:1+  >:01p31p111p0>::10g%\\10g/3+g::*01g`#v_121p>:31g\\%{ }  )!#v_11g21g*11p31g1-|{ } ){#   v{ }  (<  v ^p13/\\g13:p12+1g12<{ } *-^p22<*2g11$$<^g11$${ }  B<{ } *,>$$:1+*2/.@{ } )h^{ } !%$p05-1g04<{ } )B\00", align 1
@_g = dso_local global i8* getelementptr inbounds ([857 x i8], [857 x i8]* @.str, i32 0, i32 0), align 8
@t = dso_local global i32 0, align 4
@z = dso_local global i32 0, align 4
@g = dso_local global [170000 x i64] zeroinitializer, align 16
@q = dso_local global i32 16384, align 4
@y = dso_local global i32 0, align 4
@s = dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%lld \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca i32, align 4
  %w = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %h = alloca i32, align 4
  %0 = load i32, i32* @z, align 4
  store i32 %0, i32* %h, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc66, %entry
  %1 = load i32, i32* @t, align 4
  %cmp = icmp slt i32 %1, 856
  br i1 %cmp, label %for.body, label %for.end68

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** @_g, align 8
  %3 = load i32, i32* @t, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 59
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load i8*, i8** @_g, align 8
  %6 = load i32, i32* @t, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* @t, align 4
  %idxprom3 = sext i32 %inc to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 %idxprom3
  %7 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %7 to i64
  %8 = load i32, i32* @z, align 4
  %inc6 = add nsw i32 %8, 1
  store i32 %inc6, i32* @z, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [170000 x i64], [170000 x i64]* @g, i64 0, i64 %idxprom7
  store i64 %conv5, i64* %arrayidx8, align 8
  br label %if.end65

if.else:                                          ; preds = %for.body
  %9 = load i8*, i8** @_g, align 8
  %10 = load i32, i32* @t, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds i8, i8* %9, i64 %idxprom9
  %11 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %11 to i32
  %cmp12 = icmp eq i32 %conv11, 125
  br i1 %cmp12, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else
  %12 = load i32, i32* @z, align 4
  %13 = load i32, i32* %h, align 4
  %sub = sub nsw i32 %12, %13
  store i32 %sub, i32* %retval, align 4
  br label %return

if.else15:                                        ; preds = %if.else
  %14 = load i8*, i8** @_g, align 8
  %15 = load i32, i32* @t, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds i8, i8* %14, i64 %idxprom16
  %16 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %16 to i32
  %cmp19 = icmp eq i32 %conv18, 123
  br i1 %cmp19, label %if.then21, label %if.else57

if.then21:                                        ; preds = %if.else15
  %17 = load i32, i32* @t, align 4
  %inc22 = add nsw i32 %17, 1
  store i32 %inc22, i32* @t, align 4
  %18 = load i32, i32* @z, align 4
  store i32 %18, i32* %s, align 4
  %call = call i32 @d()
  store i32 %call, i32* %w, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc53, %if.then21
  %19 = load i32, i32* %i, align 4
  %20 = load i8*, i8** @_g, align 8
  %21 = load i32, i32* @t, align 4
  %add = add nsw i32 %21, 1
  %idxprom24 = sext i32 %add to i64
  %arrayidx25 = getelementptr inbounds i8, i8* %20, i64 %idxprom24
  %22 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %22 to i32
  %mul = mul nsw i32 %conv26, 9025
  %23 = load i8*, i8** @_g, align 8
  %24 = load i32, i32* @t, align 4
  %add27 = add nsw i32 %24, 2
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds i8, i8* %23, i64 %idxprom28
  %25 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %25 to i32
  %mul31 = mul nsw i32 %conv30, 95
  %add32 = add nsw i32 %mul, %mul31
  %26 = load i8*, i8** @_g, align 8
  %27 = load i32, i32* @t, align 4
  %add33 = add nsw i32 %27, 3
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds i8, i8* %26, i64 %idxprom34
  %28 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %28 to i32
  %add37 = add nsw i32 %add32, %conv36
  %sub38 = sub nsw i32 %add37, 291872
  %cmp39 = icmp slt i32 %19, %sub38
  br i1 %cmp39, label %for.body41, label %for.end55

for.body41:                                       ; preds = %for.cond23
  store i32 0, i32* %j, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc, %for.body41
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %w, align 4
  %cmp43 = icmp slt i32 %29, %30
  br i1 %cmp43, label %for.body45, label %for.end

for.body45:                                       ; preds = %for.cond42
  br label %for.inc

for.inc:                                          ; preds = %for.body45
  %31 = load i32, i32* %s, align 4
  %32 = load i32, i32* %j, align 4
  %inc46 = add nsw i32 %32, 1
  store i32 %inc46, i32* %j, align 4
  %add47 = add nsw i32 %31, %32
  %idxprom48 = sext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds [170000 x i64], [170000 x i64]* @g, i64 0, i64 %idxprom48
  %33 = load i64, i64* %arrayidx49, align 8
  %34 = load i32, i32* @z, align 4
  %inc50 = add nsw i32 %34, 1
  store i32 %inc50, i32* @z, align 4
  %idxprom51 = sext i32 %34 to i64
  %arrayidx52 = getelementptr inbounds [170000 x i64], [170000 x i64]* @g, i64 0, i64 %idxprom51
  store i64 %33, i64* %arrayidx52, align 8
  br label %for.cond42, !llvm.loop !4

for.end:                                          ; preds = %for.cond42
  br label %for.inc53

for.inc53:                                        ; preds = %for.end
  %35 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %35, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond23, !llvm.loop !6

for.end55:                                        ; preds = %for.cond23
  %36 = load i32, i32* @t, align 4
  %add56 = add nsw i32 %36, 3
  store i32 %add56, i32* @t, align 4
  br label %if.end

if.else57:                                        ; preds = %if.else15
  %37 = load i8*, i8** @_g, align 8
  %38 = load i32, i32* @t, align 4
  %idxprom58 = sext i32 %38 to i64
  %arrayidx59 = getelementptr inbounds i8, i8* %37, i64 %idxprom58
  %39 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %39 to i64
  %40 = load i32, i32* @z, align 4
  %inc61 = add nsw i32 %40, 1
  store i32 %inc61, i32* @z, align 4
  %idxprom62 = sext i32 %40 to i64
  %arrayidx63 = getelementptr inbounds [170000 x i64], [170000 x i64]* @g, i64 0, i64 %idxprom62
  store i64 %conv60, i64* %arrayidx63, align 8
  br label %if.end

if.end:                                           ; preds = %if.else57, %for.end55
  br label %if.end64

if.end64:                                         ; preds = %if.end
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then
  br label %for.inc66

for.inc66:                                        ; preds = %if.end65
  %41 = load i32, i32* @t, align 4
  %inc67 = add nsw i32 %41, 1
  store i32 %inc67, i32* @t, align 4
  br label %for.cond, !llvm.loop !7

for.end68:                                        ; preds = %for.cond
  %42 = load i32, i32* @z, align 4
  %43 = load i32, i32* %h, align 4
  %sub69 = sub nsw i32 %42, %43
  store i32 %sub69, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end68, %if.then14
  %44 = load i32, i32* %retval, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gr(i64 %x, i64 %y) #0 {
entry:
  %retval = alloca i64, align 8
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  store i64 %y, i64* %y.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %cmp = icmp sge i64 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %y.addr, align 8
  %cmp1 = icmp sge i64 %1, 0
  br i1 %cmp1, label %land.lhs.true2, label %if.else

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i64, i64* %x.addr, align 8
  %cmp3 = icmp slt i64 %2, 1000
  br i1 %cmp3, label %land.lhs.true4, label %if.else

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i64, i64* %y.addr, align 8
  %cmp5 = icmp slt i64 %3, 170
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true4
  %4 = load i64, i64* %y.addr, align 8
  %mul = mul nsw i64 %4, 1000
  %5 = load i64, i64* %x.addr, align 8
  %add = add nsw i64 %mul, %5
  %arrayidx = getelementptr inbounds [170000 x i64], [170000 x i64]* @g, i64 0, i64 %add
  %6 = load i64, i64* %arrayidx, align 8
  store i64 %6, i64* %retval, align 8
  br label %return

if.else:                                          ; preds = %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  store i64 0, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load i64, i64* %retval, align 8
  ret i64 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gw(i64 %x, i64 %y, i64 %v) #0 {
entry:
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  %v.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  store i64 %y, i64* %y.addr, align 8
  store i64 %v, i64* %v.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %cmp = icmp sge i64 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %y.addr, align 8
  %cmp1 = icmp sge i64 %1, 0
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %2 = load i64, i64* %x.addr, align 8
  %cmp3 = icmp slt i64 %2, 1000
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i64, i64* %y.addr, align 8
  %cmp5 = icmp slt i64 %3, 170
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true4
  %4 = load i64, i64* %v.addr, align 8
  %5 = load i64, i64* %y.addr, align 8
  %mul = mul nsw i64 %5, 1000
  %6 = load i64, i64* %x.addr, align 8
  %add = add nsw i64 %mul, %6
  %arrayidx = getelementptr inbounds [170000 x i64], [170000 x i64]* @g, i64 0, i64 %add
  store i64 %4, i64* %arrayidx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @td(i64 %a, i64 %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %b.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i64, i64* %a.addr, align 8
  %2 = load i64, i64* %b.addr, align 8
  %div = sdiv i64 %1, %2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %div, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tm(i64 %a, i64 %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %b.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i64, i64* %a.addr, align 8
  %2 = load i64, i64* %b.addr, align 8
  %rem = srem i64 %1, %2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %rem, %cond.false ]
  ret i64 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sp() #0 {
entry:
  %retval = alloca i64, align 8
  %0 = load i32, i32* @y, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64*, i64** @s, align 8
  %2 = load i32, i32* @y, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* @y, align 4
  %idxprom = sext i32 %dec to i64
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  store i64 %3, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i64, i64* %retval, align 8
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sa(i64 %v) #0 {
entry:
  %v.addr = alloca i64, align 8
  store i64 %v, i64* %v.addr, align 8
  %0 = load i32, i32* @q, align 4
  %1 = load i32, i32* @y, align 4
  %sub = sub nsw i32 %0, %1
  %cmp = icmp slt i32 %sub, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64*, i64** @s, align 8
  %3 = bitcast i64* %2 to i8*
  %4 = load i32, i32* @q, align 4
  %mul = mul nsw i32 %4, 2
  store i32 %mul, i32* @q, align 4
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 8
  %call = call align 16 i8* @realloc(i8* %3, i64 %mul1) #3
  %5 = bitcast i8* %call to i64*
  store i64* %5, i64** @s, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, i64* %v.addr, align 8
  %7 = load i64*, i64** @s, align 8
  %8 = load i32, i32* @y, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* @y, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i64, i64* %7, i64 %idxprom
  store i64 %6, i64* %arrayidx, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local align 16 i8* @realloc(i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sr() #0 {
entry:
  %retval = alloca i64, align 8
  %0 = load i32, i32* @y, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64*, i64** @s, align 8
  %2 = load i32, i32* @y, align 4
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  store i64 %3, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i64, i64* %retval, align 8
  ret i64 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %t0 = alloca i64, align 8
  %t1 = alloca i64, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %v037 = alloca i64, align 8
  %v093 = alloca i64, align 8
  %v195 = alloca i64, align 8
  %v097 = alloca i64, align 8
  %v0121 = alloca i64, align 8
  %v1123 = alloca i64, align 8
  %v0130 = alloca i64, align 8
  %v0168 = alloca i64, align 8
  %v1170 = alloca i64, align 8
  %v0172 = alloca i64, align 8
  %v0203 = alloca i64, align 8
  %v1205 = alloca i64, align 8
  %v0207 = alloca i64, align 8
  %v0231 = alloca i64, align 8
  %v1233 = alloca i64, align 8
  %v0240 = alloca i64, align 8
  %v0262 = alloca i64, align 8
  %v1264 = alloca i64, align 8
  %v0266 = alloca i64, align 8
  %v0294 = alloca i64, align 8
  %v1296 = alloca i64, align 8
  %v0301 = alloca i64, align 8
  %v1303 = alloca i64, align 8
  %v0310 = alloca i64, align 8
  %v1312 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  %call = call i32 @d()
  %0 = load i32, i32* @q, align 4
  %conv = sext i32 %0 to i64
  %call1 = call noalias align 16 i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call1 to i64*
  store i64* %1, i64** @s, align 8
  call void @gw(i64 1, i64 0, i64 1000)
  call void @gw(i64 2, i64 0, i64 150)
  call void @gw(i64 0, i64 0, i64 150000)
  call void @gw(i64 3, i64 0, i64 2)
  call void @gw(i64 0, i64 3, i64 32)
  call void @gw(i64 1, i64 3, i64 32)
  br label %_1

_1:                                               ; preds = %if.then49, %entry
  %call2 = call i64 @gr(i64 3, i64 0)
  %call3 = call i64 @gr(i64 1, i64 0)
  %call4 = call i64 @tm(i64 %call2, i64 %call3)
  %call5 = call i64 @gr(i64 3, i64 0)
  %call6 = call i64 @gr(i64 1, i64 0)
  %call7 = call i64 @td(i64 %call5, i64 %call6)
  %add = add nsw i64 %call7, 3
  call void @gw(i64 %call4, i64 %add, i64 88)
  %call8 = call i64 @gr(i64 3, i64 0)
  %call9 = call i64 @gr(i64 3, i64 0)
  %add10 = add nsw i64 %call8, %call9
  call void @sa(i64 %add10)
  %call11 = call i64 @gr(i64 3, i64 0)
  %call12 = call i64 @gr(i64 3, i64 0)
  %add13 = add nsw i64 %call11, %call12
  %call14 = call i64 @gr(i64 0, i64 0)
  %cmp = icmp slt i64 %add13, %call14
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  %conv16 = sext i32 %cond to i64
  call void @sa(i64 %conv16)
  br label %_2

_2:                                               ; preds = %_35, %_1
  %call17 = call i64 @sp()
  %cmp18 = icmp ne i64 %call17, 0
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %_2
  br label %_35

if.else:                                          ; preds = %_2
  br label %_3

_3:                                               ; preds = %if.else
  %call20 = call i64 @sp()
  br label %_4

_4:                                               ; preds = %if.else44, %_3
  %call21 = call i64 @gr(i64 3, i64 0)
  %add22 = add nsw i64 %call21, 1
  call void @sa(i64 %add22)
  %call23 = call i64 @gr(i64 3, i64 0)
  %add24 = add nsw i64 %call23, 1
  call void @sa(i64 %add24)
  %call25 = call i64 @gr(i64 3, i64 0)
  %add26 = add nsw i64 %call25, 1
  call void @gw(i64 3, i64 0, i64 %add26)
  %call27 = call i64 @sp()
  %call28 = call i64 @gr(i64 1, i64 0)
  %call29 = call i64 @tm(i64 %call27, i64 %call28)
  call void @sa(i64 %call29)
  %call30 = call i64 @sp()
  store i64 %call30, i64* %v0, align 8
  %call31 = call i64 @sp()
  store i64 %call31, i64* %v1, align 8
  %3 = load i64, i64* %v0, align 8
  call void @sa(i64 %3)
  %4 = load i64, i64* %v1, align 8
  call void @sa(i64 %4)
  %call32 = call i64 @sp()
  %call33 = call i64 @gr(i64 1, i64 0)
  %call34 = call i64 @td(i64 %call32, i64 %call33)
  call void @sa(i64 %call34)
  %call35 = call i64 @sp()
  %add36 = add nsw i64 %call35, 3
  call void @sa(i64 %add36)
  %call38 = call i64 @sp()
  store i64 %call38, i64* %v037, align 8
  %call39 = call i64 @sp()
  %5 = load i64, i64* %v037, align 8
  %call40 = call i64 @gr(i64 %call39, i64 %5)
  store i64 %call40, i64* %t0, align 8
  %6 = load i64, i64* %t0, align 8
  %sub = sub nsw i64 %6, 32
  store i64 %sub, i64* %t0, align 8
  %7 = load i64, i64* %t0, align 8
  %cmp41 = icmp ne i64 %7, 0
  br i1 %cmp41, label %if.then43, label %if.else44

if.then43:                                        ; preds = %_4
  br label %_6

if.else44:                                        ; preds = %_4
  br label %_4

_6:                                               ; preds = %if.then43
  %call45 = call i64 @gr(i64 0, i64 0)
  %call46 = call i64 @gr(i64 3, i64 0)
  %cmp47 = icmp sgt i64 %call45, %call46
  br i1 %cmp47, label %if.then49, label %if.else50

if.then49:                                        ; preds = %_6
  br label %_1

if.else50:                                        ; preds = %_6
  br label %_7

_7:                                               ; preds = %if.else50
  call void @gw(i64 3, i64 0, i64 1)
  call void @gw(i64 4, i64 0, i64 0)
  br label %_8

_8:                                               ; preds = %_34, %_33, %_7
  %call51 = call i64 @gr(i64 3, i64 0)
  %call52 = call i64 @gr(i64 1, i64 0)
  %call53 = call i64 @tm(i64 %call51, i64 %call52)
  %call54 = call i64 @gr(i64 3, i64 0)
  %call55 = call i64 @gr(i64 1, i64 0)
  %call56 = call i64 @td(i64 %call54, i64 %call55)
  %add57 = add nsw i64 %call56, 3
  %call58 = call i64 @gr(i64 %call53, i64 %add57)
  %sub59 = sub nsw i64 %call58, 32
  store i64 %sub59, i64* %t0, align 8
  %call60 = call i64 @gr(i64 0, i64 0)
  %call61 = call i64 @gr(i64 3, i64 0)
  %cmp62 = icmp sgt i64 %call60, %call61
  br i1 %cmp62, label %if.then64, label %if.else65

if.then64:                                        ; preds = %_8
  br label %_32

if.else65:                                        ; preds = %_8
  br label %_9

_9:                                               ; preds = %if.else65
  %call66 = call i64 @gr(i64 4, i64 0)
  %sub67 = sub nsw i64 %call66, 1
  call void @gw(i64 5, i64 0, i64 %sub67)
  call void @gw(i64 1, i64 2, i64 2)
  call void @gw(i64 2, i64 2, i64 2)
  call void @sa(i64 2)
  call void @sa(i64 0)
  br label %_10

_10:                                              ; preds = %_19, %_9
  %call68 = call i64 @sp()
  %cmp69 = icmp ne i64 %call68, 0
  br i1 %cmp69, label %if.then71, label %if.else72

if.then71:                                        ; preds = %_10
  br label %_23

if.else72:                                        ; preds = %_10
  br label %_11

_11:                                              ; preds = %if.else72
  %call73 = call i64 @sr()
  %add74 = add nsw i64 %call73, 1
  call void @sa(i64 %add74)
  %call75 = call i64 @sr()
  call void @sa(i64 %call75)
  %call76 = call i64 @sp()
  call void @gw(i64 0, i64 1, i64 %call76)
  %call77 = call i64 @sp()
  call void @gw(i64 3, i64 1, i64 %call77)
  call void @gw(i64 1, i64 1, i64 1)
  call void @sa(i64 0)
  %call78 = call i64 @gr(i64 0, i64 3)
  call void @sa(i64 %call78)
  %call79 = call i64 @gr(i64 0, i64 3)
  %call80 = call i64 @gr(i64 0, i64 3)
  %mul = mul nsw i64 %call79, %call80
  %call81 = call i64 @gr(i64 0, i64 1)
  %cmp82 = icmp sgt i64 %mul, %call81
  %8 = zext i1 %cmp82 to i64
  %cond84 = select i1 %cmp82, i32 1, i32 0
  %conv85 = sext i32 %cond84 to i64
  call void @sa(i64 %conv85)
  br label %_12

_12:                                              ; preds = %_16, %_11
  %call86 = call i64 @sp()
  %cmp87 = icmp ne i64 %call86, 0
  br i1 %cmp87, label %if.then89, label %if.else90

if.then89:                                        ; preds = %_12
  br label %_22

if.else90:                                        ; preds = %_12
  br label %_13

_13:                                              ; preds = %if.else90
  call void @gw(i64 2, i64 1, i64 1)
  br label %_14

_14:                                              ; preds = %_21, %_13
  %call91 = call i64 @gr(i64 3, i64 1)
  store i64 %call91, i64* %t0, align 8
  %call92 = call i64 @sr()
  call void @sa(i64 %call92)
  %9 = load i64, i64* %t0, align 8
  call void @sa(i64 %9)
  %call94 = call i64 @sp()
  store i64 %call94, i64* %v093, align 8
  %call96 = call i64 @sp()
  store i64 %call96, i64* %v195, align 8
  %10 = load i64, i64* %v093, align 8
  call void @sa(i64 %10)
  %11 = load i64, i64* %v195, align 8
  call void @sa(i64 %11)
  %call98 = call i64 @sp()
  store i64 %call98, i64* %v097, align 8
  %call99 = call i64 @sp()
  %12 = load i64, i64* %v097, align 8
  %call100 = call i64 @tm(i64 %call99, i64 %12)
  call void @sa(i64 %call100)
  %call101 = call i64 @sp()
  store i64 %call101, i64* %t1, align 8
  %13 = load i64, i64* %t1, align 8
  %cmp102 = icmp ne i64 %13, 0
  br i1 %cmp102, label %if.then104, label %if.else105

if.then104:                                       ; preds = %_14
  br label %_15

if.else105:                                       ; preds = %_14
  br label %_21

_15:                                              ; preds = %if.then104
  %call106 = call i64 @gr(i64 1, i64 1)
  %call107 = call i64 @gr(i64 2, i64 1)
  %mul108 = mul nsw i64 %call106, %call107
  call void @gw(i64 1, i64 1, i64 %mul108)
  %call109 = call i64 @gr(i64 3, i64 1)
  %cmp110 = icmp ne i64 %call109, 1
  br i1 %cmp110, label %if.then112, label %if.else113

if.then112:                                       ; preds = %_15
  br label %_16

if.else113:                                       ; preds = %_15
  br label %_17

_16:                                              ; preds = %if.then112
  %call114 = call i64 @sp()
  %call115 = call i64 @sp()
  %add116 = add nsw i64 %call115, 1
  call void @sa(i64 %add116)
  %call117 = call i64 @sr()
  call void @sa(i64 %call117)
  %call118 = call i64 @sr()
  %call119 = call i64 @gr(i64 1, i64 0)
  %call120 = call i64 @tm(i64 %call118, i64 %call119)
  call void @sa(i64 %call120)
  %call122 = call i64 @sp()
  store i64 %call122, i64* %v0121, align 8
  %call124 = call i64 @sp()
  store i64 %call124, i64* %v1123, align 8
  %14 = load i64, i64* %v0121, align 8
  call void @sa(i64 %14)
  %15 = load i64, i64* %v1123, align 8
  call void @sa(i64 %15)
  %call125 = call i64 @sp()
  %call126 = call i64 @gr(i64 1, i64 0)
  %call127 = call i64 @td(i64 %call125, i64 %call126)
  call void @sa(i64 %call127)
  %call128 = call i64 @sp()
  %add129 = add nsw i64 %call128, 3
  call void @sa(i64 %add129)
  %call131 = call i64 @sp()
  store i64 %call131, i64* %v0130, align 8
  %call132 = call i64 @sp()
  %16 = load i64, i64* %v0130, align 8
  %call133 = call i64 @gr(i64 %call132, i64 %16)
  call void @sa(i64 %call133)
  %call134 = call i64 @sr()
  call void @sa(i64 %call134)
  %call135 = call i64 @sr()
  call void @sa(i64 %call135)
  %call136 = call i64 @sp()
  %call137 = call i64 @sp()
  %mul138 = mul nsw i64 %call136, %call137
  call void @sa(i64 %mul138)
  %call139 = call i64 @sp()
  %call140 = call i64 @gr(i64 0, i64 1)
  %cmp141 = icmp sgt i64 %call139, %call140
  %17 = zext i1 %cmp141 to i64
  %cond143 = select i1 %cmp141, i32 1, i32 0
  %conv144 = sext i32 %cond143 to i64
  call void @sa(i64 %conv144)
  br label %_12

_17:                                              ; preds = %if.else113
  %call145 = call i64 @gr(i64 1, i64 1)
  call void @gw(i64 2, i64 2, i64 %call145)
  %call146 = call i64 @sp()
  %call147 = call i64 @sp()
  br label %_18

_18:                                              ; preds = %_31, %_29, %_22, %_17
  %call148 = call i64 @gr(i64 1, i64 2)
  %call149 = call i64 @gr(i64 2, i64 2)
  %mul150 = mul nsw i64 %call148, %call149
  %cmp151 = icmp sgt i64 %mul150, 500
  br i1 %cmp151, label %if.then153, label %if.else154

if.then153:                                       ; preds = %_18
  br label %_20

if.else154:                                       ; preds = %_18
  br label %_19

_19:                                              ; preds = %if.else154
  %call155 = call i64 @sp()
  %add156 = add nsw i64 %call155, 1
  call void @sa(i64 %add156)
  %call157 = call i64 @sr()
  %rem = srem i64 %call157, 2
  call void @sa(i64 %rem)
  br label %_10

_20:                                              ; preds = %if.then153
  store i64 1, i64* %t0, align 8
  store i64 1, i64* %t1, align 8
  %call158 = call i64 @sr()
  %add159 = add nsw i64 %call158, 1
  store i64 %add159, i64* %t0, align 8
  %call160 = call i64 @sp()
  %18 = load i64, i64* %t0, align 8
  %mul161 = mul nsw i64 %call160, %18
  call void @sa(i64 %mul161)
  %call162 = call i64 @sp()
  store i64 %call162, i64* %t1, align 8
  %19 = load i64, i64* %t1, align 8
  %div = sdiv i64 %19, 2
  store i64 %div, i64* %t1, align 8
  %20 = load i64, i64* %t1, align 8
  %call163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  ret i32 0

_21:                                              ; preds = %if.else105
  %call164 = call i64 @gr(i64 2, i64 1)
  %add165 = add nsw i64 %call164, 1
  call void @gw(i64 2, i64 1, i64 %add165)
  %call166 = call i64 @gr(i64 3, i64 1)
  store i64 %call166, i64* %t0, align 8
  %call167 = call i64 @sr()
  call void @sa(i64 %call167)
  %21 = load i64, i64* %t0, align 8
  call void @sa(i64 %21)
  %call169 = call i64 @sp()
  store i64 %call169, i64* %v0168, align 8
  %call171 = call i64 @sp()
  store i64 %call171, i64* %v1170, align 8
  %22 = load i64, i64* %v0168, align 8
  call void @sa(i64 %22)
  %23 = load i64, i64* %v1170, align 8
  call void @sa(i64 %23)
  %call173 = call i64 @sp()
  store i64 %call173, i64* %v0172, align 8
  %call174 = call i64 @sp()
  %24 = load i64, i64* %v0172, align 8
  %call175 = call i64 @td(i64 %call174, i64 %24)
  call void @sa(i64 %call175)
  %call176 = call i64 @sp()
  store i64 %call176, i64* %t1, align 8
  %25 = load i64, i64* %t1, align 8
  call void @gw(i64 3, i64 1, i64 %25)
  br label %_14

_22:                                              ; preds = %if.then89
  %call177 = call i64 @gr(i64 1, i64 1)
  %mul178 = mul nsw i64 %call177, 2
  call void @gw(i64 2, i64 2, i64 %mul178)
  %call179 = call i64 @sp()
  %call180 = call i64 @sp()
  br label %_18

_23:                                              ; preds = %if.then71
  %call181 = call i64 @sr()
  %add182 = add nsw i64 %call181, 1
  %div183 = sdiv i64 %add182, 2
  call void @sa(i64 %div183)
  %call184 = call i64 @sr()
  call void @sa(i64 %call184)
  %call185 = call i64 @sp()
  call void @gw(i64 0, i64 1, i64 %call185)
  %call186 = call i64 @sp()
  call void @gw(i64 3, i64 1, i64 %call186)
  call void @gw(i64 1, i64 1, i64 1)
  call void @sa(i64 0)
  %call187 = call i64 @gr(i64 0, i64 3)
  call void @sa(i64 %call187)
  %call188 = call i64 @gr(i64 0, i64 3)
  %call189 = call i64 @gr(i64 0, i64 3)
  %mul190 = mul nsw i64 %call188, %call189
  %call191 = call i64 @gr(i64 0, i64 1)
  %cmp192 = icmp sgt i64 %mul190, %call191
  %26 = zext i1 %cmp192 to i64
  %cond194 = select i1 %cmp192, i32 1, i32 0
  %conv195 = sext i32 %cond194 to i64
  call void @sa(i64 %conv195)
  br label %_24

_24:                                              ; preds = %_28, %_23
  %call196 = call i64 @sp()
  %cmp197 = icmp ne i64 %call196, 0
  br i1 %cmp197, label %if.then199, label %if.else200

if.then199:                                       ; preds = %_24
  br label %_31

if.else200:                                       ; preds = %_24
  br label %_25

_25:                                              ; preds = %if.else200
  call void @gw(i64 2, i64 1, i64 1)
  br label %_26

_26:                                              ; preds = %_30, %_25
  %call201 = call i64 @gr(i64 3, i64 1)
  store i64 %call201, i64* %t0, align 8
  %call202 = call i64 @sr()
  call void @sa(i64 %call202)
  %27 = load i64, i64* %t0, align 8
  call void @sa(i64 %27)
  %call204 = call i64 @sp()
  store i64 %call204, i64* %v0203, align 8
  %call206 = call i64 @sp()
  store i64 %call206, i64* %v1205, align 8
  %28 = load i64, i64* %v0203, align 8
  call void @sa(i64 %28)
  %29 = load i64, i64* %v1205, align 8
  call void @sa(i64 %29)
  %call208 = call i64 @sp()
  store i64 %call208, i64* %v0207, align 8
  %call209 = call i64 @sp()
  %30 = load i64, i64* %v0207, align 8
  %call210 = call i64 @tm(i64 %call209, i64 %30)
  call void @sa(i64 %call210)
  %call211 = call i64 @sp()
  store i64 %call211, i64* %t1, align 8
  %31 = load i64, i64* %t1, align 8
  %cmp212 = icmp ne i64 %31, 0
  br i1 %cmp212, label %if.then214, label %if.else215

if.then214:                                       ; preds = %_26
  br label %_27

if.else215:                                       ; preds = %_26
  br label %_30

_27:                                              ; preds = %if.then214
  %call216 = call i64 @gr(i64 1, i64 1)
  %call217 = call i64 @gr(i64 2, i64 1)
  %mul218 = mul nsw i64 %call216, %call217
  call void @gw(i64 1, i64 1, i64 %mul218)
  %call219 = call i64 @gr(i64 3, i64 1)
  %cmp220 = icmp ne i64 %call219, 1
  br i1 %cmp220, label %if.then222, label %if.else223

if.then222:                                       ; preds = %_27
  br label %_28

if.else223:                                       ; preds = %_27
  br label %_29

_28:                                              ; preds = %if.then222
  %call224 = call i64 @sp()
  %call225 = call i64 @sp()
  %add226 = add nsw i64 %call225, 1
  call void @sa(i64 %add226)
  %call227 = call i64 @sr()
  call void @sa(i64 %call227)
  %call228 = call i64 @sr()
  %call229 = call i64 @gr(i64 1, i64 0)
  %call230 = call i64 @tm(i64 %call228, i64 %call229)
  call void @sa(i64 %call230)
  %call232 = call i64 @sp()
  store i64 %call232, i64* %v0231, align 8
  %call234 = call i64 @sp()
  store i64 %call234, i64* %v1233, align 8
  %32 = load i64, i64* %v0231, align 8
  call void @sa(i64 %32)
  %33 = load i64, i64* %v1233, align 8
  call void @sa(i64 %33)
  %call235 = call i64 @sp()
  %call236 = call i64 @gr(i64 1, i64 0)
  %call237 = call i64 @td(i64 %call235, i64 %call236)
  call void @sa(i64 %call237)
  %call238 = call i64 @sp()
  %add239 = add nsw i64 %call238, 3
  call void @sa(i64 %add239)
  %call241 = call i64 @sp()
  store i64 %call241, i64* %v0240, align 8
  %call242 = call i64 @sp()
  %34 = load i64, i64* %v0240, align 8
  %call243 = call i64 @gr(i64 %call242, i64 %34)
  call void @sa(i64 %call243)
  %call244 = call i64 @sr()
  call void @sa(i64 %call244)
  %call245 = call i64 @sr()
  call void @sa(i64 %call245)
  %call246 = call i64 @sp()
  %call247 = call i64 @sp()
  %mul248 = mul nsw i64 %call246, %call247
  call void @sa(i64 %mul248)
  %call249 = call i64 @sp()
  %call250 = call i64 @gr(i64 0, i64 1)
  %cmp251 = icmp sgt i64 %call249, %call250
  %35 = zext i1 %cmp251 to i64
  %cond253 = select i1 %cmp251, i32 1, i32 0
  %conv254 = sext i32 %cond253 to i64
  call void @sa(i64 %conv254)
  br label %_24

_29:                                              ; preds = %if.else223
  %call255 = call i64 @gr(i64 1, i64 1)
  call void @gw(i64 1, i64 2, i64 %call255)
  %call256 = call i64 @sp()
  %call257 = call i64 @sp()
  br label %_18

_30:                                              ; preds = %if.else215
  %call258 = call i64 @gr(i64 2, i64 1)
  %add259 = add nsw i64 %call258, 1
  call void @gw(i64 2, i64 1, i64 %add259)
  %call260 = call i64 @gr(i64 3, i64 1)
  store i64 %call260, i64* %t0, align 8
  %call261 = call i64 @sr()
  call void @sa(i64 %call261)
  %36 = load i64, i64* %t0, align 8
  call void @sa(i64 %36)
  %call263 = call i64 @sp()
  store i64 %call263, i64* %v0262, align 8
  %call265 = call i64 @sp()
  store i64 %call265, i64* %v1264, align 8
  %37 = load i64, i64* %v0262, align 8
  call void @sa(i64 %37)
  %38 = load i64, i64* %v1264, align 8
  call void @sa(i64 %38)
  %call267 = call i64 @sp()
  store i64 %call267, i64* %v0266, align 8
  %call268 = call i64 @sp()
  %39 = load i64, i64* %v0266, align 8
  %call269 = call i64 @td(i64 %call268, i64 %39)
  call void @sa(i64 %call269)
  %call270 = call i64 @sp()
  store i64 %call270, i64* %t1, align 8
  %40 = load i64, i64* %t1, align 8
  call void @gw(i64 3, i64 1, i64 %40)
  br label %_26

_31:                                              ; preds = %if.then199
  %call271 = call i64 @gr(i64 1, i64 1)
  %mul272 = mul nsw i64 %call271, 2
  call void @gw(i64 1, i64 2, i64 %mul272)
  %call273 = call i64 @sp()
  %call274 = call i64 @sp()
  br label %_18

_32:                                              ; preds = %if.then64
  %41 = load i64, i64* %t0, align 8
  %cmp275 = icmp ne i64 %41, 0
  br i1 %cmp275, label %if.then277, label %if.else278

if.then277:                                       ; preds = %_32
  br label %_33

if.else278:                                       ; preds = %_32
  br label %_34

_33:                                              ; preds = %if.then277
  %call279 = call i64 @gr(i64 4, i64 0)
  %call280 = call i64 @gr(i64 1, i64 0)
  %call281 = call i64 @tm(i64 %call279, i64 %call280)
  %call282 = call i64 @gr(i64 4, i64 0)
  %call283 = call i64 @gr(i64 1, i64 0)
  %call284 = call i64 @td(i64 %call282, i64 %call283)
  %add285 = add nsw i64 %call284, 3
  %call286 = call i64 @gr(i64 3, i64 0)
  call void @gw(i64 %call281, i64 %add285, i64 %call286)
  %call287 = call i64 @gr(i64 4, i64 0)
  %add288 = add nsw i64 %call287, 1
  call void @gw(i64 4, i64 0, i64 %add288)
  %call289 = call i64 @gr(i64 3, i64 0)
  %add290 = add nsw i64 %call289, 1
  call void @gw(i64 3, i64 0, i64 %add290)
  br label %_8

_34:                                              ; preds = %if.else278
  %call291 = call i64 @gr(i64 3, i64 0)
  %add292 = add nsw i64 %call291, 1
  call void @gw(i64 3, i64 0, i64 %add292)
  br label %_8

_35:                                              ; preds = %if.then
  %call293 = call i64 @sr()
  call void @sa(i64 %call293)
  call void @sa(i64 32)
  %call295 = call i64 @sp()
  store i64 %call295, i64* %v0294, align 8
  %call297 = call i64 @sp()
  store i64 %call297, i64* %v1296, align 8
  %42 = load i64, i64* %v0294, align 8
  call void @sa(i64 %42)
  %43 = load i64, i64* %v1296, align 8
  call void @sa(i64 %43)
  %call298 = call i64 @sr()
  %call299 = call i64 @gr(i64 1, i64 0)
  %call300 = call i64 @tm(i64 %call298, i64 %call299)
  call void @sa(i64 %call300)
  %call302 = call i64 @sp()
  store i64 %call302, i64* %v0301, align 8
  %call304 = call i64 @sp()
  store i64 %call304, i64* %v1303, align 8
  %44 = load i64, i64* %v0301, align 8
  call void @sa(i64 %44)
  %45 = load i64, i64* %v1303, align 8
  call void @sa(i64 %45)
  %call305 = call i64 @sp()
  %call306 = call i64 @gr(i64 1, i64 0)
  %call307 = call i64 @td(i64 %call305, i64 %call306)
  call void @sa(i64 %call307)
  %call308 = call i64 @sp()
  %add309 = add nsw i64 %call308, 3
  call void @sa(i64 %add309)
  %call311 = call i64 @sp()
  store i64 %call311, i64* %v0310, align 8
  %call313 = call i64 @sp()
  store i64 %call313, i64* %v1312, align 8
  %46 = load i64, i64* %v1312, align 8
  %47 = load i64, i64* %v0310, align 8
  %call314 = call i64 @sp()
  call void @gw(i64 %46, i64 %47, i64 %call314)
  %call315 = call i64 @sp()
  %call316 = call i64 @gr(i64 3, i64 0)
  %add317 = add nsw i64 %call315, %call316
  call void @sa(i64 %add317)
  %call318 = call i64 @sr()
  %call319 = call i64 @gr(i64 0, i64 0)
  %cmp320 = icmp slt i64 %call318, %call319
  %48 = zext i1 %cmp320 to i64
  %cond322 = select i1 %cmp320, i32 1, i32 0
  %conv323 = sext i32 %cond322 to i64
  call void @sa(i64 %conv323)
  br label %_2
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @calloc(i64, i64) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
