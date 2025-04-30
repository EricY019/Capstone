; ModuleID = 'code/098-27452Euler_Problem-084.c'
source_filename = "code/098-27452Euler_Problem-084.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1100 x i8] c"v   XX{ }  i{=}  H    v      <     v<{ }  2{?}  H v<<   v<<<|-\22!\22:<|-+98:<{ }  *>040p\22;};}@\22**58*v{ }  -v   _v# -1<  v<10   v 10> v    <    <|<{ }  ,v{ }  +<{ }  20    |:+<2?^#*4<2?^#$<{ }  )^<{ }  ->1-:2+0\\1pv{ }  <{^3<    }  \22{ }  +-{ }  ,|:{ }  (<     >>>v >>>v v<{ }  ){>>>v   }  \22 >>>v{ }  (2{ }  )v $<{ }  /12 v 12 v #^p04<+55$<{01 v   }  \22 01 v >v     :{ }  )>40g::2+1g1+\\2+1p>#^?3>#^?3>++58*%:40p>#^?2>{4*#^?2>+}  \22|>:56*-{|{ }  )}  \22{ }  *>4^v<>4^ #v<{ }  'v<{>3^    }  \22 >3^{ }  2>$58vv{ }  -<v $<|-*94:<|-+*294:<|-7:  <    v p04+55${<      }  \22   #v *<{  >>>v }  \22^{    <  }  \22      <{ }  D:    ${ 01 v  }  \22#>v{   >v }  \22{  >v }  # #{>v   }  #> v{ }  '-    >#^?2>4*#^?2>+ :|>1-:|>1 {-:|>1}  '-:| #{ }  '1>1-::2v>3^    >3^   >55+v>56 +v>64*v>\22'\22v>5v  >0v  v    <    v    >40g3-   v |:p2+ <>::1+2g2+1g\\ 2+2g 2+1 g \\`{ }  9v>v{ }  '#  >62*v >$v    ^_v#:<-1p2\\g 05+2 :-1 p 2+2\\ g2+1 :: p 05 g    2+2:_^#>40g492*+-|{ }  '>0>:58* \\`|  >$22 g.32 g.4 2 g.@{ }  1>40g6%1+2/2*5*5+v$  >74*v     ^+1  <  >#<^#{ }  '># {   >#}  # >#   >#{ }  )#<      >{ }  'v^<{ }  2{<{ }  (}  \22{ }  -<{ }  1<  $p04<\00", align 1
@_g = dso_local global i8* getelementptr inbounds ([1100 x i8], [1100 x i8]* @.str, i32 0, i32 0), align 8
@t = dso_local global i32 0, align 4
@z = dso_local global i32 0, align 4
@g = dso_local global [1540 x i64] zeroinitializer, align 16
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
  %cmp = icmp slt i32 %1, 1099
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
  %arrayidx8 = getelementptr inbounds [1540 x i64], [1540 x i64]* @g, i64 0, i64 %idxprom7
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
  %arrayidx49 = getelementptr inbounds [1540 x i64], [1540 x i64]* @g, i64 0, i64 %idxprom48
  %33 = load i64, i64* %arrayidx49, align 8
  %34 = load i32, i32* @z, align 4
  %inc50 = add nsw i32 %34, 1
  store i32 %inc50, i32* @z, align 4
  %idxprom51 = sext i32 %34 to i64
  %arrayidx52 = getelementptr inbounds [1540 x i64], [1540 x i64]* @g, i64 0, i64 %idxprom51
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
  %arrayidx63 = getelementptr inbounds [1540 x i64], [1540 x i64]* @g, i64 0, i64 %idxprom62
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
  %cmp3 = icmp slt i64 %2, 77
  br i1 %cmp3, label %land.lhs.true4, label %if.else

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i64, i64* %y.addr, align 8
  %cmp5 = icmp slt i64 %3, 20
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true4
  %4 = load i64, i64* %y.addr, align 8
  %mul = mul nsw i64 %4, 77
  %5 = load i64, i64* %x.addr, align 8
  %add = add nsw i64 %mul, %5
  %arrayidx = getelementptr inbounds [1540 x i64], [1540 x i64]* @g, i64 0, i64 %add
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
  %cmp3 = icmp slt i64 %2, 77
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i64, i64* %y.addr, align 8
  %cmp5 = icmp slt i64 %3, 20
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true4
  %4 = load i64, i64* %v.addr, align 8
  %5 = load i64, i64* %y.addr, align 8
  %mul = mul nsw i64 %5, 77
  %6 = load i64, i64* %x.addr, align 8
  %add = add nsw i64 %mul, %6
  %arrayidx = getelementptr inbounds [1540 x i64], [1540 x i64]* @g, i64 0, i64 %add
  store i64 %4, i64* %arrayidx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true4, %land.lhs.true2, %land.lhs.true, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rd() #0 {
entry:
  %call = call i32 @rand() #3
  %rem = srem i32 %call, 2
  %cmp = icmp eq i32 %rem, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

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
  %t2 = alloca i64, align 8
  %v0 = alloca i64, align 8
  %v0129 = alloca i64, align 8
  %v0147 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %v0152 = alloca i64, align 8
  %v1154 = alloca i64, align 8
  %v0162 = alloca i64, align 8
  %v1164 = alloca i64, align 8
  %v0166 = alloca i64, align 8
  %v1168 = alloca i64, align 8
  %v0192 = alloca i64, align 8
  %v1194 = alloca i64, align 8
  %v0425 = alloca i64, align 8
  %v1427 = alloca i64, align 8
  %v0429 = alloca i64, align 8
  %v1431 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  %call = call i32 @d()
  %call1 = call i64 @time(i64* null) #3
  %conv = trunc i64 %call1 to i32
  call void @srand(i32 %conv) #3
  %0 = load i32, i32* @q, align 4
  %conv2 = sext i32 %0 to i64
  %call3 = call noalias align 16 i8* @calloc(i64 %conv2, i64 8) #3
  %1 = bitcast i8* %call3 to i64*
  store i64* %1, i64** @s, align 8
  call void @gw(i64 4, i64 0, i64 0)
  call void @gw(i64 41, i64 1, i64 0)
  call void @sa(i64 1000000)
  call void @sa(i64 39)
  call void @sa(i64 39)
  br label %_1

_1:                                               ; preds = %_98, %entry
  %call4 = call i64 @sp()
  %cmp = icmp ne i64 %call4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %_1
  br label %_98

if.else:                                          ; preds = %_1
  br label %_2

_2:                                               ; preds = %if.else
  %call6 = call i64 @sp()
  br label %_3

_3:                                               ; preds = %if.then96, %_2
  %call7 = call i64 @gr(i64 4, i64 0)
  call void @sa(i64 %call7)
  %call8 = call i64 @gr(i64 4, i64 0)
  %add = add nsw i64 %call8, 2
  %call9 = call i64 @gr(i64 4, i64 0)
  %add10 = add nsw i64 %call9, 2
  %call11 = call i64 @gr(i64 %add10, i64 1)
  %add12 = add nsw i64 %call11, 1
  call void @gw(i64 %add, i64 1, i64 %add12)
  %call13 = call i32 @rd()
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.then14, label %if.else19

if.then14:                                        ; preds = %_3
  %call15 = call i32 @rd()
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.then14
  br label %_97

if.else18:                                        ; preds = %if.then14
  br label %_96

if.else19:                                        ; preds = %_3
  %call20 = call i32 @rd()
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.else19
  br label %_95

if.else23:                                        ; preds = %if.else19
  br label %_5

_5:                                               ; preds = %if.else23
  call void @sa(i64 2)
  br label %_6

_6:                                               ; preds = %_97, %_96, %_95, %_5
  %call24 = call i32 @rd()
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then26, label %if.else31

if.then26:                                        ; preds = %_6
  %call27 = call i32 @rd()
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.then26
  br label %_94

if.else30:                                        ; preds = %if.then26
  br label %_93

if.else31:                                        ; preds = %_6
  %call32 = call i32 @rd()
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.else31
  br label %_92

if.else35:                                        ; preds = %if.else31
  br label %_7

_7:                                               ; preds = %if.else35
  %call36 = call i64 @sp()
  %add37 = add nsw i64 %call36, 3
  call void @sa(i64 %add37)
  br label %_8

_8:                                               ; preds = %_94, %_93, %_92, %_7
  %call38 = call i64 @sp()
  %call39 = call i64 @sp()
  %add40 = add nsw i64 %call38, %call39
  call void @sa(i64 %add40)
  %call41 = call i64 @sp()
  %rem = srem i64 %call41, 40
  call void @sa(i64 %rem)
  %call42 = call i64 @sr()
  call void @sa(i64 %call42)
  %call43 = call i64 @sp()
  call void @gw(i64 4, i64 0, i64 %call43)
  %call44 = call i32 @rd()
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then46, label %if.else51

if.then46:                                        ; preds = %_8
  %call47 = call i32 @rd()
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then49, label %if.else50

if.then49:                                        ; preds = %if.then46
  br label %_91

if.else50:                                        ; preds = %if.then46
  br label %_90

if.else51:                                        ; preds = %_8
  %call52 = call i32 @rd()
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then54, label %if.else55

if.then54:                                        ; preds = %if.else51
  br label %_89

if.else55:                                        ; preds = %if.else51
  br label %_10

_10:                                              ; preds = %if.else55
  call void @sa(i64 8)
  br label %_11

_11:                                              ; preds = %_91, %_90, %_89, %_10
  %call56 = call i32 @rd()
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then58, label %if.else63

if.then58:                                        ; preds = %_11
  %call59 = call i32 @rd()
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then61, label %if.else62

if.then61:                                        ; preds = %if.then58
  br label %_88

if.else62:                                        ; preds = %if.then58
  br label %_87

if.else63:                                        ; preds = %_11
  %call64 = call i32 @rd()
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then66, label %if.else67

if.then66:                                        ; preds = %if.else63
  br label %_86

if.else67:                                        ; preds = %if.else63
  br label %_12

_12:                                              ; preds = %if.else67
  %call68 = call i64 @sp()
  %add69 = add nsw i64 %call68, 2
  call void @sa(i64 %add69)
  br label %_13

_13:                                              ; preds = %_88, %_87, %_86, %_12
  %call70 = call i64 @sp()
  %mul = mul nsw i64 %call70, 4
  call void @sa(i64 %mul)
  %call71 = call i32 @rd()
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then73, label %if.else78

if.then73:                                        ; preds = %_13
  %call74 = call i32 @rd()
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then76, label %if.else77

if.then76:                                        ; preds = %if.then73
  br label %_85

if.else77:                                        ; preds = %if.then73
  br label %_84

if.else78:                                        ; preds = %_13
  %call79 = call i32 @rd()
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then81, label %if.else82

if.then81:                                        ; preds = %if.else78
  br label %_83

if.else82:                                        ; preds = %if.else78
  br label %_15

_15:                                              ; preds = %if.else82
  %call83 = call i64 @sp()
  %add84 = add nsw i64 %call83, 2
  call void @sa(i64 %add84)
  br label %_16

_16:                                              ; preds = %_85, %_84, %_83, %_15
  %call85 = call i64 @sp()
  %cmp86 = icmp ne i64 %call85, 0
  br i1 %cmp86, label %if.then88, label %if.else89

if.then88:                                        ; preds = %_16
  br label %_29

if.else89:                                        ; preds = %_16
  br label %_17

_17:                                              ; preds = %if.else240, %if.else202, %if.else89
  call void @gw(i64 4, i64 0, i64 10)
  %call90 = call i64 @sp()
  br label %_18

_18:                                              ; preds = %_63, %_38, %if.then246, %_17
  %call91 = call i64 @sp()
  %sub = sub nsw i64 %call91, 1
  call void @sa(i64 %sub)
  %call92 = call i64 @sr()
  call void @sa(i64 %call92)
  %call93 = call i64 @sp()
  %cmp94 = icmp ne i64 %call93, 0
  br i1 %cmp94, label %if.then96, label %if.else97

if.then96:                                        ; preds = %_18
  br label %_3

if.else97:                                        ; preds = %_18
  br label %_19

_19:                                              ; preds = %if.else97
  call void @gw(i64 41, i64 2, i64 39)
  %call98 = call i64 @sp()
  call void @sa(i64 39)
  call void @sa(i64 39)
  br label %_20

_20:                                              ; preds = %_28, %_19
  %call99 = call i64 @sp()
  %cmp100 = icmp ne i64 %call99, 0
  br i1 %cmp100, label %if.then102, label %if.else103

if.then102:                                       ; preds = %_20
  br label %_28

if.else103:                                       ; preds = %_20
  br label %_21

_21:                                              ; preds = %if.else103
  %call104 = call i64 @sp()
  call void @sa(i64 0)
  call void @sa(i64 1)
  br label %_22

_22:                                              ; preds = %_26, %_21
  %call105 = call i64 @sp()
  %cmp106 = icmp ne i64 %call105, 0
  br i1 %cmp106, label %if.then108, label %if.else109

if.then108:                                       ; preds = %_22
  br label %_23

if.else109:                                       ; preds = %_22
  br label %_27

_23:                                              ; preds = %_25, %if.then108
  %call110 = call i64 @sr()
  call void @sa(i64 %call110)
  %call111 = call i64 @sp()
  %cmp112 = icmp ne i64 %call111, 0
  br i1 %cmp112, label %if.then114, label %if.else115

if.then114:                                       ; preds = %_23
  br label %_24

if.else115:                                       ; preds = %_23
  br label %_26

_24:                                              ; preds = %if.then114
  %call116 = call i64 @sr()
  call void @sa(i64 %call116)
  %call117 = call i64 @sr()
  %add118 = add nsw i64 %call117, 1
  %call119 = call i64 @gr(i64 %add118, i64 2)
  %add120 = add nsw i64 %call119, 2
  %call121 = call i64 @gr(i64 %add120, i64 1)
  store i64 %call121, i64* %t0, align 8
  %call122 = call i64 @sp()
  %add123 = add nsw i64 %call122, 2
  call void @sa(i64 %add123)
  call void @sa(i64 2)
  %call124 = call i64 @sp()
  store i64 %call124, i64* %v0, align 8
  %call125 = call i64 @sp()
  %2 = load i64, i64* %v0, align 8
  %call126 = call i64 @gr(i64 %call125, i64 %2)
  call void @sa(i64 %call126)
  %call127 = call i64 @sp()
  %add128 = add nsw i64 %call127, 2
  call void @sa(i64 %add128)
  call void @sa(i64 1)
  %call130 = call i64 @sp()
  store i64 %call130, i64* %v0129, align 8
  %call131 = call i64 @sp()
  %3 = load i64, i64* %v0129, align 8
  %call132 = call i64 @gr(i64 %call131, i64 %3)
  store i64 %call132, i64* %t1, align 8
  %4 = load i64, i64* %t0, align 8
  %5 = load i64, i64* %t1, align 8
  %cmp133 = icmp slt i64 %4, %5
  %6 = zext i1 %cmp133 to i64
  %cond = select i1 %cmp133, i32 1, i32 0
  %conv135 = sext i32 %cond to i64
  store i64 %conv135, i64* %t2, align 8
  %7 = load i64, i64* %t2, align 8
  %cmp136 = icmp ne i64 %7, 0
  br i1 %cmp136, label %if.then138, label %if.else139

if.then138:                                       ; preds = %_24
  br label %_25

if.else139:                                       ; preds = %_24
  br label %_26

_25:                                              ; preds = %if.then138
  %call140 = call i64 @sr()
  %add141 = add nsw i64 %call140, 2
  %call142 = call i64 @gr(i64 %add141, i64 2)
  call void @gw(i64 5, i64 0, i64 %call142)
  %call143 = call i64 @sr()
  call void @sa(i64 %call143)
  %call144 = call i64 @sr()
  %add145 = add nsw i64 %call144, 1
  %call146 = call i64 @gr(i64 %add145, i64 2)
  call void @sa(i64 %call146)
  %call148 = call i64 @sp()
  store i64 %call148, i64* %v0147, align 8
  %call149 = call i64 @sp()
  store i64 %call149, i64* %v1, align 8
  %8 = load i64, i64* %v0147, align 8
  call void @sa(i64 %8)
  %9 = load i64, i64* %v1, align 8
  call void @sa(i64 %9)
  %call150 = call i64 @sp()
  %add151 = add nsw i64 %call150, 2
  call void @sa(i64 %add151)
  call void @sa(i64 2)
  %call153 = call i64 @sp()
  store i64 %call153, i64* %v0152, align 8
  %call155 = call i64 @sp()
  store i64 %call155, i64* %v1154, align 8
  %10 = load i64, i64* %v1154, align 8
  %11 = load i64, i64* %v0152, align 8
  %call156 = call i64 @sp()
  call void @gw(i64 %10, i64 %11, i64 %call156)
  %call157 = call i64 @sp()
  %sub158 = sub nsw i64 %call157, 1
  call void @sa(i64 %sub158)
  %call159 = call i64 @sr()
  %add160 = add nsw i64 %call159, 2
  call void @sa(i64 %add160)
  %call161 = call i64 @gr(i64 5, i64 0)
  call void @sa(i64 %call161)
  %call163 = call i64 @sp()
  store i64 %call163, i64* %v0162, align 8
  %call165 = call i64 @sp()
  store i64 %call165, i64* %v1164, align 8
  %12 = load i64, i64* %v0162, align 8
  call void @sa(i64 %12)
  %13 = load i64, i64* %v1164, align 8
  call void @sa(i64 %13)
  call void @sa(i64 2)
  %call167 = call i64 @sp()
  store i64 %call167, i64* %v0166, align 8
  %call169 = call i64 @sp()
  store i64 %call169, i64* %v1168, align 8
  %14 = load i64, i64* %v1168, align 8
  %15 = load i64, i64* %v0166, align 8
  %call170 = call i64 @sp()
  call void @gw(i64 %14, i64 %15, i64 %call170)
  %call171 = call i64 @sp()
  %sub172 = sub nsw i64 %call171, 1
  call void @sa(i64 %sub172)
  br label %_23

_26:                                              ; preds = %if.else139, %if.else115
  %call173 = call i64 @sp()
  %add174 = add nsw i64 %call173, 1
  call void @sa(i64 %add174)
  %call175 = call i64 @sr()
  %cmp176 = icmp slt i64 %call175, 40
  %16 = zext i1 %cmp176 to i64
  %cond178 = select i1 %cmp176, i32 1, i32 0
  %conv179 = sext i32 %cond178 to i64
  call void @sa(i64 %conv179)
  br label %_22

_27:                                              ; preds = %if.else109
  %call180 = call i64 @gr(i64 2, i64 2)
  %call181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %call180)
  %call182 = call i64 @gr(i64 3, i64 2)
  %call183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %call182)
  %call184 = call i64 @gr(i64 4, i64 2)
  %call185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %call184)
  %call186 = call i64 @sp()
  ret i32 0

_28:                                              ; preds = %if.then102
  %call187 = call i64 @sp()
  %sub188 = sub nsw i64 %call187, 1
  call void @sa(i64 %sub188)
  %call189 = call i64 @sr()
  call void @sa(i64 %call189)
  %call190 = call i64 @sr()
  %add191 = add nsw i64 %call190, 2
  call void @sa(i64 %add191)
  call void @sa(i64 2)
  %call193 = call i64 @sp()
  store i64 %call193, i64* %v0192, align 8
  %call195 = call i64 @sp()
  store i64 %call195, i64* %v1194, align 8
  %17 = load i64, i64* %v1194, align 8
  %18 = load i64, i64* %v0192, align 8
  %call196 = call i64 @sp()
  call void @gw(i64 %17, i64 %18, i64 %call196)
  %call197 = call i64 @sr()
  call void @sa(i64 %call197)
  br label %_20

_29:                                              ; preds = %if.then88
  %call198 = call i64 @sr()
  %cmp199 = icmp ne i64 %call198, 30
  br i1 %cmp199, label %if.then201, label %if.else202

if.then201:                                       ; preds = %_29
  br label %_30

if.else202:                                       ; preds = %_29
  br label %_17

_30:                                              ; preds = %if.then201
  %call203 = call i64 @sr()
  %cmp204 = icmp ne i64 %call203, 2
  br i1 %cmp204, label %if.then206, label %if.else207

if.then206:                                       ; preds = %_30
  br label %_45

if.else207:                                       ; preds = %_30
  br label %_31

_31:                                              ; preds = %if.else263, %if.else258, %if.else207
  %call208 = call i64 @sp()
  %call209 = call i32 @rd()
  %tobool210 = icmp ne i32 %call209, 0
  br i1 %tobool210, label %if.then211, label %if.else216

if.then211:                                       ; preds = %_31
  %call212 = call i32 @rd()
  %tobool213 = icmp ne i32 %call212, 0
  br i1 %tobool213, label %if.then214, label %if.else215

if.then214:                                       ; preds = %if.then211
  br label %_44

if.else215:                                       ; preds = %if.then211
  br label %_43

if.else216:                                       ; preds = %_31
  %call217 = call i32 @rd()
  %tobool218 = icmp ne i32 %call217, 0
  br i1 %tobool218, label %if.then219, label %if.else220

if.then219:                                       ; preds = %if.else216
  br label %_42

if.else220:                                       ; preds = %if.else216
  br label %_33

_33:                                              ; preds = %if.else220
  call void @sa(i64 8)
  br label %_34

_34:                                              ; preds = %_44, %_43, %_42, %_33
  %call221 = call i32 @rd()
  %tobool222 = icmp ne i32 %call221, 0
  br i1 %tobool222, label %if.then223, label %if.else228

if.then223:                                       ; preds = %_34
  %call224 = call i32 @rd()
  %tobool225 = icmp ne i32 %call224, 0
  br i1 %tobool225, label %if.then226, label %if.else227

if.then226:                                       ; preds = %if.then223
  br label %_41

if.else227:                                       ; preds = %if.then223
  br label %_40

if.else228:                                       ; preds = %_34
  %call229 = call i32 @rd()
  %tobool230 = icmp ne i32 %call229, 0
  br i1 %tobool230, label %if.then231, label %if.else232

if.then231:                                       ; preds = %if.else228
  br label %_39

if.else232:                                       ; preds = %if.else228
  br label %_35

_35:                                              ; preds = %if.else232
  %call233 = call i64 @sp()
  %add234 = add nsw i64 %call233, 2
  call void @sa(i64 %add234)
  br label %_36

_36:                                              ; preds = %_41, %_40, %_39, %_35
  %call235 = call i64 @sr()
  call void @sa(i64 %call235)
  %call236 = call i64 @sp()
  %cmp237 = icmp ne i64 %call236, 0
  br i1 %cmp237, label %if.then239, label %if.else240

if.then239:                                       ; preds = %_36
  br label %_37

if.else240:                                       ; preds = %_36
  br label %_17

_37:                                              ; preds = %if.then239
  %call241 = call i64 @sp()
  %sub242 = sub nsw i64 %call241, 1
  call void @sa(i64 %sub242)
  %call243 = call i64 @sp()
  %cmp244 = icmp ne i64 %call243, 0
  br i1 %cmp244, label %if.then246, label %if.else247

if.then246:                                       ; preds = %_37
  br label %_18

if.else247:                                       ; preds = %_37
  br label %_38

_38:                                              ; preds = %if.else247
  call void @gw(i64 4, i64 0, i64 0)
  br label %_18

_39:                                              ; preds = %if.then231
  %call248 = call i64 @sp()
  %add249 = add nsw i64 %call248, 1
  call void @sa(i64 %add249)
  br label %_36

_40:                                              ; preds = %if.else227
  %call250 = call i64 @sp()
  %add251 = add nsw i64 %call250, 0
  call void @sa(i64 %add251)
  br label %_36

_41:                                              ; preds = %if.then226
  %call252 = call i64 @sp()
  %add253 = add nsw i64 %call252, 3
  call void @sa(i64 %add253)
  br label %_36

_42:                                              ; preds = %if.then219
  call void @sa(i64 4)
  br label %_34

_43:                                              ; preds = %if.else215
  call void @sa(i64 0)
  br label %_34

_44:                                              ; preds = %if.then214
  call void @sa(i64 12)
  br label %_34

_45:                                              ; preds = %if.then206
  %call254 = call i64 @sr()
  %cmp255 = icmp ne i64 %call254, 17
  br i1 %cmp255, label %if.then257, label %if.else258

if.then257:                                       ; preds = %_45
  br label %_46

if.else258:                                       ; preds = %_45
  br label %_31

_46:                                              ; preds = %if.then257
  %call259 = call i64 @sr()
  %cmp260 = icmp ne i64 %call259, 33
  br i1 %cmp260, label %if.then262, label %if.else263

if.then262:                                       ; preds = %_46
  br label %_47

if.else263:                                       ; preds = %_46
  br label %_31

_47:                                              ; preds = %if.then262
  %call264 = call i64 @sr()
  %cmp265 = icmp ne i64 %call264, 7
  br i1 %cmp265, label %if.then267, label %if.else268

if.then267:                                       ; preds = %_47
  br label %_81

if.else268:                                       ; preds = %_47
  br label %_48

_48:                                              ; preds = %if.else402, %if.else397, %if.else268
  %call269 = call i64 @sp()
  %call270 = call i32 @rd()
  %tobool271 = icmp ne i32 %call270, 0
  br i1 %tobool271, label %if.then272, label %if.else277

if.then272:                                       ; preds = %_48
  %call273 = call i32 @rd()
  %tobool274 = icmp ne i32 %call273, 0
  br i1 %tobool274, label %if.then275, label %if.else276

if.then275:                                       ; preds = %if.then272
  br label %_80

if.else276:                                       ; preds = %if.then272
  br label %_79

if.else277:                                       ; preds = %_48
  %call278 = call i32 @rd()
  %tobool279 = icmp ne i32 %call278, 0
  br i1 %tobool279, label %if.then280, label %if.else281

if.then280:                                       ; preds = %if.else277
  br label %_78

if.else281:                                       ; preds = %if.else277
  br label %_50

_50:                                              ; preds = %if.else281
  call void @sa(i64 8)
  br label %_51

_51:                                              ; preds = %_80, %_79, %_78, %_50
  %call282 = call i32 @rd()
  %tobool283 = icmp ne i32 %call282, 0
  br i1 %tobool283, label %if.then284, label %if.else289

if.then284:                                       ; preds = %_51
  %call285 = call i32 @rd()
  %tobool286 = icmp ne i32 %call285, 0
  br i1 %tobool286, label %if.then287, label %if.else288

if.then287:                                       ; preds = %if.then284
  br label %_77

if.else288:                                       ; preds = %if.then284
  br label %_76

if.else289:                                       ; preds = %_51
  %call290 = call i32 @rd()
  %tobool291 = icmp ne i32 %call290, 0
  br i1 %tobool291, label %if.then292, label %if.else293

if.then292:                                       ; preds = %if.else289
  br label %_75

if.else293:                                       ; preds = %if.else289
  br label %_52

_52:                                              ; preds = %if.else293
  %call294 = call i64 @sp()
  %add295 = add nsw i64 %call294, 2
  call void @sa(i64 %add295)
  br label %_53

_53:                                              ; preds = %_77, %_76, %_75, %_52
  %call296 = call i64 @sr()
  call void @sa(i64 %call296)
  %call297 = call i64 @sp()
  %cmp298 = icmp ne i64 %call297, 0
  br i1 %cmp298, label %if.then300, label %if.else301

if.then300:                                       ; preds = %_53
  br label %_54

if.else301:                                       ; preds = %_53
  br label %_74

_54:                                              ; preds = %if.then300
  %call302 = call i64 @sp()
  %sub303 = sub nsw i64 %call302, 1
  call void @sa(i64 %sub303)
  %call304 = call i64 @sr()
  call void @sa(i64 %call304)
  %call305 = call i64 @sp()
  %cmp306 = icmp ne i64 %call305, 0
  br i1 %cmp306, label %if.then308, label %if.else309

if.then308:                                       ; preds = %_54
  br label %_55

if.else309:                                       ; preds = %_54
  br label %_73

_55:                                              ; preds = %if.then308
  %call310 = call i64 @sp()
  %sub311 = sub nsw i64 %call310, 1
  call void @sa(i64 %sub311)
  %call312 = call i64 @sr()
  call void @sa(i64 %call312)
  %call313 = call i64 @sp()
  %cmp314 = icmp ne i64 %call313, 0
  br i1 %cmp314, label %if.then316, label %if.else317

if.then316:                                       ; preds = %_55
  br label %_56

if.else317:                                       ; preds = %_55
  br label %_72

_56:                                              ; preds = %if.then316
  %call318 = call i64 @sp()
  %sub319 = sub nsw i64 %call318, 1
  call void @sa(i64 %sub319)
  %call320 = call i64 @sr()
  call void @sa(i64 %call320)
  %call321 = call i64 @sp()
  %cmp322 = icmp ne i64 %call321, 0
  br i1 %cmp322, label %if.then324, label %if.else325

if.then324:                                       ; preds = %_56
  br label %_57

if.else325:                                       ; preds = %_56
  br label %_71

_57:                                              ; preds = %if.then324
  %call326 = call i64 @sp()
  %sub327 = sub nsw i64 %call326, 1
  call void @sa(i64 %sub327)
  %call328 = call i64 @sr()
  call void @sa(i64 %call328)
  %call329 = call i64 @sp()
  %cmp330 = icmp ne i64 %call329, 0
  br i1 %cmp330, label %if.then332, label %if.else333

if.then332:                                       ; preds = %_57
  br label %_58

if.else333:                                       ; preds = %_57
  br label %_70

_58:                                              ; preds = %if.then332
  %call334 = call i64 @sp()
  %sub335 = sub nsw i64 %call334, 1
  call void @sa(i64 %sub335)
  %call336 = call i64 @sr()
  call void @sa(i64 %call336)
  %call337 = call i64 @sp()
  %cmp338 = icmp ne i64 %call337, 0
  br i1 %cmp338, label %if.then340, label %if.else341

if.then340:                                       ; preds = %_58
  br label %_59

if.else341:                                       ; preds = %_58
  br label %_69

_59:                                              ; preds = %if.then340
  %call342 = call i64 @sp()
  %sub343 = sub nsw i64 %call342, 1
  call void @sa(i64 %sub343)
  %call344 = call i64 @sr()
  call void @sa(i64 %call344)
  %call345 = call i64 @sp()
  %cmp346 = icmp ne i64 %call345, 0
  br i1 %cmp346, label %if.then348, label %if.else349

if.then348:                                       ; preds = %_59
  br label %_60

if.else349:                                       ; preds = %_59
  br label %_68

_60:                                              ; preds = %if.then348
  %call350 = call i64 @sp()
  %sub351 = sub nsw i64 %call350, 1
  call void @sa(i64 %sub351)
  %call352 = call i64 @sr()
  call void @sa(i64 %call352)
  %call353 = call i64 @sp()
  %cmp354 = icmp ne i64 %call353, 0
  br i1 %cmp354, label %if.then356, label %if.else357

if.then356:                                       ; preds = %_60
  br label %_61

if.else357:                                       ; preds = %_60
  br label %_68

_61:                                              ; preds = %if.then356
  %call358 = call i64 @sp()
  %sub359 = sub nsw i64 %call358, 1
  call void @sa(i64 %sub359)
  %call360 = call i64 @sr()
  call void @sa(i64 %call360)
  %call361 = call i64 @sp()
  %cmp362 = icmp ne i64 %call361, 0
  br i1 %cmp362, label %if.then364, label %if.else365

if.then364:                                       ; preds = %_61
  br label %_62

if.else365:                                       ; preds = %_61
  br label %_65

_62:                                              ; preds = %if.then364
  %call366 = call i64 @sp()
  %sub367 = sub nsw i64 %call366, 1
  call void @sa(i64 %sub367)
  %call368 = call i64 @sr()
  call void @sa(i64 %call368)
  %call369 = call i64 @sp()
  %cmp370 = icmp ne i64 %call369, 0
  br i1 %cmp370, label %if.then372, label %if.else373

if.then372:                                       ; preds = %_62
  br label %_63

if.else373:                                       ; preds = %_62
  br label %_64

_63:                                              ; preds = %if.then401, %_74, %_73, %_72, %_71, %_70, %_69, %_68, %_67, %_66, %_64, %if.then372
  %call374 = call i64 @sp()
  br label %_18

_64:                                              ; preds = %if.else373
  %call375 = call i64 @gr(i64 4, i64 0)
  %sub376 = sub nsw i64 %call375, 3
  call void @gw(i64 4, i64 0, i64 %sub376)
  br label %_63

_65:                                              ; preds = %if.else365
  %call377 = call i64 @gr(i64 4, i64 0)
  %cmp378 = icmp ne i64 %call377, 22
  br i1 %cmp378, label %if.then380, label %if.else381

if.then380:                                       ; preds = %_65
  br label %_66

if.else381:                                       ; preds = %_65
  br label %_67

_66:                                              ; preds = %if.then380
  call void @gw(i64 4, i64 0, i64 12)
  br label %_63

_67:                                              ; preds = %if.else381
  call void @gw(i64 4, i64 0, i64 28)
  br label %_63

_68:                                              ; preds = %if.else357, %if.else349
  %call382 = call i64 @gr(i64 4, i64 0)
  %rem383 = srem i64 %call382, 6
  %add384 = add nsw i64 %rem383, 1
  %div = sdiv i64 %add384, 2
  %mul385 = mul nsw i64 10, %div
  %add386 = add nsw i64 %mul385, 5
  call void @gw(i64 4, i64 0, i64 %add386)
  br label %_63

_69:                                              ; preds = %if.else341
  call void @gw(i64 4, i64 0, i64 0)
  br label %_63

_70:                                              ; preds = %if.else333
  call void @gw(i64 4, i64 0, i64 5)
  br label %_63

_71:                                              ; preds = %if.else325
  call void @gw(i64 4, i64 0, i64 39)
  br label %_63

_72:                                              ; preds = %if.else317
  call void @gw(i64 4, i64 0, i64 24)
  br label %_63

_73:                                              ; preds = %if.else309
  call void @gw(i64 4, i64 0, i64 11)
  br label %_63

_74:                                              ; preds = %if.else301
  call void @gw(i64 4, i64 0, i64 10)
  br label %_63

_75:                                              ; preds = %if.then292
  %call387 = call i64 @sp()
  %add388 = add nsw i64 %call387, 1
  call void @sa(i64 %add388)
  br label %_53

_76:                                              ; preds = %if.else288
  %call389 = call i64 @sp()
  %add390 = add nsw i64 %call389, 3
  call void @sa(i64 %add390)
  br label %_53

_77:                                              ; preds = %if.then287
  %call391 = call i64 @sp()
  %add392 = add nsw i64 %call391, 0
  call void @sa(i64 %add392)
  br label %_53

_78:                                              ; preds = %if.then280
  call void @sa(i64 4)
  br label %_51

_79:                                              ; preds = %if.else276
  call void @sa(i64 12)
  br label %_51

_80:                                              ; preds = %if.then275
  call void @sa(i64 0)
  br label %_51

_81:                                              ; preds = %if.then267
  %call393 = call i64 @sr()
  %cmp394 = icmp ne i64 %call393, 22
  br i1 %cmp394, label %if.then396, label %if.else397

if.then396:                                       ; preds = %_81
  br label %_82

if.else397:                                       ; preds = %_81
  br label %_48

_82:                                              ; preds = %if.then396
  %call398 = call i64 @sr()
  %cmp399 = icmp ne i64 %call398, 36
  br i1 %cmp399, label %if.then401, label %if.else402

if.then401:                                       ; preds = %_82
  br label %_63

if.else402:                                       ; preds = %_82
  br label %_48

_83:                                              ; preds = %if.then81
  %call403 = call i64 @sp()
  %add404 = add nsw i64 %call403, 1
  call void @sa(i64 %add404)
  br label %_16

_84:                                              ; preds = %if.else77
  %call405 = call i64 @sp()
  %add406 = add nsw i64 %call405, 3
  call void @sa(i64 %add406)
  br label %_16

_85:                                              ; preds = %if.then76
  %call407 = call i64 @sp()
  %add408 = add nsw i64 %call407, 0
  call void @sa(i64 %add408)
  br label %_16

_86:                                              ; preds = %if.then66
  %call409 = call i64 @sp()
  %add410 = add nsw i64 %call409, 1
  call void @sa(i64 %add410)
  br label %_13

_87:                                              ; preds = %if.else62
  %call411 = call i64 @sp()
  %add412 = add nsw i64 %call411, 3
  call void @sa(i64 %add412)
  br label %_13

_88:                                              ; preds = %if.then61
  %call413 = call i64 @sp()
  %add414 = add nsw i64 %call413, 0
  call void @sa(i64 %add414)
  br label %_13

_89:                                              ; preds = %if.then54
  call void @sa(i64 4)
  br label %_11

_90:                                              ; preds = %if.else50
  call void @sa(i64 12)
  br label %_11

_91:                                              ; preds = %if.then49
  call void @sa(i64 0)
  br label %_11

_92:                                              ; preds = %if.then34
  %call415 = call i64 @sp()
  %add416 = add nsw i64 %call415, 2
  call void @sa(i64 %add416)
  br label %_8

_93:                                              ; preds = %if.else30
  %call417 = call i64 @sp()
  %add418 = add nsw i64 %call417, 4
  call void @sa(i64 %add418)
  br label %_8

_94:                                              ; preds = %if.then29
  %call419 = call i64 @sp()
  %add420 = add nsw i64 %call419, 1
  call void @sa(i64 %add420)
  br label %_8

_95:                                              ; preds = %if.then22
  call void @sa(i64 3)
  br label %_6

_96:                                              ; preds = %if.else18
  call void @sa(i64 4)
  br label %_6

_97:                                              ; preds = %if.then17
  call void @sa(i64 1)
  br label %_6

_98:                                              ; preds = %if.then
  %call421 = call i64 @sp()
  %sub422 = sub nsw i64 %call421, 1
  call void @sa(i64 %sub422)
  %call423 = call i64 @sr()
  %add424 = add nsw i64 %call423, 2
  call void @sa(i64 %add424)
  call void @sa(i64 0)
  %call426 = call i64 @sp()
  store i64 %call426, i64* %v0425, align 8
  %call428 = call i64 @sp()
  store i64 %call428, i64* %v1427, align 8
  %19 = load i64, i64* %v0425, align 8
  call void @sa(i64 %19)
  %20 = load i64, i64* %v1427, align 8
  call void @sa(i64 %20)
  call void @sa(i64 1)
  %call430 = call i64 @sp()
  store i64 %call430, i64* %v0429, align 8
  %call432 = call i64 @sp()
  store i64 %call432, i64* %v1431, align 8
  %21 = load i64, i64* %v1431, align 8
  %22 = load i64, i64* %v0429, align 8
  %call433 = call i64 @sp()
  call void @gw(i64 %21, i64 %22, i64 %call433)
  %call434 = call i64 @sr()
  call void @sa(i64 %call434)
  br label %_1
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

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
