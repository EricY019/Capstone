; ModuleID = 'code/079-28615Euler_Problem-073.c'
source_filename = "code/079-28615Euler_Problem-073.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [322 x i8] c"v{ }  *// Project Euler - Problem 73{ } 4]XX  ????{ } J!{{#}~~~}  ;{#}~Ow{ } 5%>\22;}`\22*11p051p0v{ } 4uvp12*\22(2\22     <     v+1{ }  4{<{ }  1}  \22{ } 45>1+:1+2/61p:71p:3/1+>:61g\\`!#v_:21g%71g3+g!|>81g11g`91g11g`+#^_081g21gv{ } 4=|-g11:{ }  2>#$ #<{ }  .^p19+g19g17p18+g18:p+3g19%<{ } 4=>$51g.@{ }  1^p19g17p18:p15+1g15<{ } 4X\00", align 1
@_g = dso_local global i8* getelementptr inbounds ([322 x i8], [322 x i8]* @.str, i32 0, i32 0), align 8
@t = dso_local global i32 0, align 4
@z = dso_local global i32 0, align 4
@g = dso_local global [24020000 x i64] zeroinitializer, align 16
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
  %cmp = icmp slt i32 %1, 321
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
  %arrayidx8 = getelementptr inbounds [24020000 x i64], [24020000 x i64]* @g, i64 0, i64 %idxprom7
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
  %arrayidx49 = getelementptr inbounds [24020000 x i64], [24020000 x i64]* @g, i64 0, i64 %idxprom48
  %33 = load i64, i64* %arrayidx49, align 8
  %34 = load i32, i32* @z, align 4
  %inc50 = add nsw i32 %34, 1
  store i32 %inc50, i32* @z, align 4
  %idxprom51 = sext i32 %34 to i64
  %arrayidx52 = getelementptr inbounds [24020000 x i64], [24020000 x i64]* @g, i64 0, i64 %idxprom51
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
  %arrayidx63 = getelementptr inbounds [24020000 x i64], [24020000 x i64]* @g, i64 0, i64 %idxprom62
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
  %cmp3 = icmp slt i64 %2, 2000
  br i1 %cmp3, label %land.lhs.true4, label %if.else

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i64, i64* %y.addr, align 8
  %cmp5 = icmp slt i64 %3, 12010
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true4
  %4 = load i64, i64* %y.addr, align 8
  %mul = mul nsw i64 %4, 2000
  %5 = load i64, i64* %x.addr, align 8
  %add = add nsw i64 %mul, %5
  %arrayidx = getelementptr inbounds [24020000 x i64], [24020000 x i64]* @g, i64 0, i64 %add
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
  %cmp3 = icmp slt i64 %2, 2000
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i64, i64* %y.addr, align 8
  %cmp5 = icmp slt i64 %3, 12010
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true4
  %4 = load i64, i64* %v.addr, align 8
  %5 = load i64, i64* %y.addr, align 8
  %mul = mul nsw i64 %5, 2000
  %6 = load i64, i64* %x.addr, align 8
  %add = add nsw i64 %mul, %6
  %arrayidx = getelementptr inbounds [24020000 x i64], [24020000 x i64]* @g, i64 0, i64 %add
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
  store i32 0, i32* %retval, align 4
  %call = call i32 @d()
  %0 = load i32, i32* @q, align 4
  %conv = sext i32 %0 to i64
  %call1 = call noalias align 16 i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call1 to i64*
  store i64* %1, i64** @s, align 8
  call void @gw(i64 1, i64 1, i64 12000)
  call void @gw(i64 5, i64 1, i64 0)
  call void @gw(i64 2, i64 1, i64 2000)
  call void @gw(i64 6, i64 1, i64 1)
  call void @gw(i64 7, i64 1, i64 1)
  call void @sa(i64 1)
  call void @sa(i64 1)
  %call2 = call i64 @gr(i64 6, i64 1)
  %cmp = icmp slt i64 1, %call2
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  %conv4 = sext i32 %cond to i64
  call void @sa(i64 %conv4)
  br label %_1

_1:                                               ; preds = %_9, %_4, %entry
  %call5 = call i64 @sp()
  %cmp6 = icmp ne i64 %call5, 0
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %_1
  br label %_5

if.else:                                          ; preds = %_1
  br label %_2

_2:                                               ; preds = %if.else
  %call8 = call i64 @sp()
  %call9 = call i64 @sr()
  %call10 = call i64 @gr(i64 1, i64 1)
  %sub = sub nsw i64 %call9, %call10
  %cmp11 = icmp ne i64 %sub, 0
  br i1 %cmp11, label %if.then13, label %if.else14

if.then13:                                        ; preds = %_2
  br label %_4

if.else14:                                        ; preds = %_2
  br label %_3

_3:                                               ; preds = %if.else14
  %call15 = call i64 @gr(i64 5, i64 1)
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %call15)
  %call17 = call i64 @sp()
  ret i32 0

_4:                                               ; preds = %if.then13
  %call18 = call i64 @sp()
  %add = add nsw i64 %call18, 1
  call void @sa(i64 %add)
  %call19 = call i64 @sr()
  %add20 = add nsw i64 %call19, 1
  %div = sdiv i64 %add20, 2
  call void @gw(i64 6, i64 1, i64 %div)
  %call21 = call i64 @sr()
  call void @sa(i64 %call21)
  %call22 = call i64 @sp()
  call void @gw(i64 7, i64 1, i64 %call22)
  %call23 = call i64 @sr()
  %div24 = sdiv i64 %call23, 3
  %add25 = add nsw i64 %div24, 1
  call void @sa(i64 %add25)
  %call26 = call i64 @sr()
  %call27 = call i64 @gr(i64 6, i64 1)
  %cmp28 = icmp slt i64 %call26, %call27
  %3 = zext i1 %cmp28 to i64
  %cond30 = select i1 %cmp28, i32 1, i32 0
  %conv31 = sext i32 %cond30 to i64
  call void @sa(i64 %conv31)
  br label %_1

_5:                                               ; preds = %if.then
  %call32 = call i64 @sr()
  %call33 = call i64 @gr(i64 2, i64 1)
  %call34 = call i64 @tm(i64 %call32, i64 %call33)
  %call35 = call i64 @gr(i64 7, i64 1)
  %add36 = add nsw i64 %call35, 3
  %call37 = call i64 @gr(i64 %call34, i64 %add36)
  %cmp38 = icmp ne i64 %call37, 0
  br i1 %cmp38, label %if.then40, label %if.else41

if.then40:                                        ; preds = %_5
  br label %_6

if.else41:                                        ; preds = %_5
  br label %_9

_6:                                               ; preds = %if.then40
  %call42 = call i64 @gr(i64 5, i64 1)
  %add43 = add nsw i64 %call42, 1
  call void @gw(i64 5, i64 1, i64 %add43)
  %call44 = call i64 @sr()
  call void @sa(i64 %call44)
  %call45 = call i64 @sp()
  call void @gw(i64 8, i64 1, i64 %call45)
  %call46 = call i64 @gr(i64 7, i64 1)
  call void @gw(i64 9, i64 1, i64 %call46)
  br label %_7

_7:                                               ; preds = %_8, %_6
  %call47 = call i64 @gr(i64 8, i64 1)
  %call48 = call i64 @gr(i64 1, i64 1)
  %cmp49 = icmp sgt i64 %call47, %call48
  %4 = zext i1 %cmp49 to i64
  %cond51 = select i1 %cmp49, i32 1, i32 0
  %conv52 = sext i32 %cond51 to i64
  %call53 = call i64 @gr(i64 9, i64 1)
  %call54 = call i64 @gr(i64 1, i64 1)
  %cmp55 = icmp sgt i64 %call53, %call54
  %5 = zext i1 %cmp55 to i64
  %cond57 = select i1 %cmp55, i64 1, i64 0
  %add58 = add nsw i64 %conv52, %cond57
  %cmp59 = icmp ne i64 %add58, 0
  br i1 %cmp59, label %if.then61, label %if.else62

if.then61:                                        ; preds = %_7
  br label %_9

if.else62:                                        ; preds = %_7
  br label %_8

_8:                                               ; preds = %if.else62
  %call63 = call i64 @gr(i64 8, i64 1)
  %call64 = call i64 @gr(i64 2, i64 1)
  %call65 = call i64 @tm(i64 %call63, i64 %call64)
  %call66 = call i64 @gr(i64 9, i64 1)
  %add67 = add nsw i64 %call66, 3
  call void @gw(i64 %call65, i64 %add67, i64 0)
  %call68 = call i64 @sr()
  %call69 = call i64 @gr(i64 8, i64 1)
  %add70 = add nsw i64 %call68, %call69
  call void @gw(i64 8, i64 1, i64 %add70)
  %call71 = call i64 @gr(i64 7, i64 1)
  %call72 = call i64 @gr(i64 9, i64 1)
  %add73 = add nsw i64 %call71, %call72
  call void @gw(i64 9, i64 1, i64 %add73)
  br label %_7

_9:                                               ; preds = %if.then61, %if.else41
  %call74 = call i64 @sp()
  %add75 = add nsw i64 %call74, 1
  call void @sa(i64 %add75)
  %call76 = call i64 @sr()
  %call77 = call i64 @gr(i64 6, i64 1)
  %cmp78 = icmp slt i64 %call76, %call77
  %6 = zext i1 %cmp78 to i64
  %cond80 = select i1 %cmp78, i32 1, i32 0
  %conv81 = sext i32 %cond80 to i64
  call void @sa(i64 %conv81)
  br label %_1
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
