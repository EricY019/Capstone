; ModuleID = './code/066-34358Euler_Problem-037.c'
source_filename = "./code/066-34358Euler_Problem-037.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [646 x i8] c"v{ }  *// Project Euler - Problem 37{ } ^f{#}~~~{#}/l?{ } 5%>\22d\2245**:10p5\22d\22*:20p*00p230p\22 \22:03p13pv    v075320{ }  (p090<{ } 4Dv{ }  F<{ }  6_^#`g03g00<{ } 4;>\22X\2230g:10g%\\10g/3+p30g>30g+:00g\\`{ }  '#v_$>30g1+:30p:10g%\\10g/3+g\22 \22-|{ } 4>>90g\22= \22,,.@{ }  (^p+3/g01\\%g01:\\\22 \22:<  ^{ }  :<{ } 4;v{ }  K<{ } !'<{ } 3Yv{ }  ,>#{ }  7># $#{ }  vv# -1<{ } 3i$   >v{ }  I>$\\{ }  *v{ }  D< >::.55+,90g+90pv{ } 3Y>:!#v_70p9> :70g55+*+:00g\\`|>::10g%\\10g/3+g\22X\22-#^_::55+\\`#v_:55+/1\\:!#^_55+/\\55+*\\v>::10g%\\10g/3+g\22X\22-#v_\\:50p%50g55+/\\:|>|{ }  .>\\>:1-#^_$^{ } 3S>$\22= \22,,90g.@      ^   <{ }  >>${ }  *#^!:{ }  '#<{ }  4>$$0{ }  )>    ^>{ }  .^{ } 4n^1$$<{ } 3j\00", align 1
@_g = global ptr @.str, align 8
@t = global i32 0, align 4
@z = global i32 0, align 4
@g = global [1028000 x i64] zeroinitializer, align 8
@q = global i32 16384, align 4
@y = global i32 0, align 4
@s = global ptr null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c" =\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%lld \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

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
  %cmp = icmp slt i32 %1, 645
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
  %arrayidx8 = getelementptr inbounds [1028000 x i64], ptr @g, i64 0, i64 %idxprom7
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
  %arrayidx49 = getelementptr inbounds [1028000 x i64], ptr @g, i64 0, i64 %idxprom48
  %33 = load i64, ptr %arrayidx49, align 8
  %34 = load i32, ptr @z, align 4
  %inc50 = add nsw i32 %34, 1
  store i32 %inc50, ptr @z, align 4
  %idxprom51 = sext i32 %34 to i64
  %arrayidx52 = getelementptr inbounds [1028000 x i64], ptr @g, i64 0, i64 %idxprom51
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
  %arrayidx63 = getelementptr inbounds [1028000 x i64], ptr @g, i64 0, i64 %idxprom62
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
  %cmp3 = icmp slt i64 %2, 2000
  br i1 %cmp3, label %land.lhs.true4, label %if.else

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i64, ptr %y.addr, align 8
  %cmp5 = icmp slt i64 %3, 514
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true4
  %4 = load i64, ptr %y.addr, align 8
  %mul = mul nsw i64 %4, 2000
  %5 = load i64, ptr %x.addr, align 8
  %add = add nsw i64 %mul, %5
  %arrayidx = getelementptr inbounds [1028000 x i64], ptr @g, i64 0, i64 %add
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
  %cmp3 = icmp slt i64 %2, 2000
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i64, ptr %y.addr, align 8
  %cmp5 = icmp slt i64 %3, 514
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true4
  %4 = load i64, ptr %v.addr, align 8
  %5 = load i64, ptr %y.addr, align 8
  %mul = mul nsw i64 %5, 2000
  %6 = load i64, ptr %x.addr, align 8
  %add = add nsw i64 %mul, %6
  %arrayidx = getelementptr inbounds [1028000 x i64], ptr @g, i64 0, i64 %add
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
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %v037 = alloca i64, align 8
  %v080 = alloca i64, align 8
  %v182 = alloca i64, align 8
  %v089 = alloca i64, align 8
  %v0113 = alloca i64, align 8
  %v1115 = alloca i64, align 8
  %v0137 = alloca i64, align 8
  %v1139 = alloca i64, align 8
  %v0149 = alloca i64, align 8
  %v1151 = alloca i64, align 8
  %v0155 = alloca i64, align 8
  %v1157 = alloca i64, align 8
  %v0161 = alloca i64, align 8
  %v1163 = alloca i64, align 8
  %v0169 = alloca i64, align 8
  %v1171 = alloca i64, align 8
  %v0178 = alloca i64, align 8
  %v0187 = alloca i64, align 8
  %v1189 = alloca i64, align 8
  %v0193 = alloca i64, align 8
  %v0199 = alloca i64, align 8
  %v1201 = alloca i64, align 8
  %v0222 = alloca i64, align 8
  %v1224 = alloca i64, align 8
  %v0229 = alloca i64, align 8
  %v1231 = alloca i64, align 8
  %v0238 = alloca i64, align 8
  %v1240 = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  %call = call i32 @d()
  %0 = load i32, ptr @q, align 4
  %conv = sext i32 %0 to i64
  %call1 = call ptr @calloc(i64 noundef %conv, i64 noundef 8) #5
  store ptr %call1, ptr @s, align 8
  call void @gw(i64 noundef 1, i64 noundef 0, i64 noundef 2000)
  call void @gw(i64 noundef 2, i64 noundef 0, i64 noundef 500)
  call void @gw(i64 noundef 0, i64 noundef 0, i64 noundef 1000000)
  call void @gw(i64 noundef 3, i64 noundef 0, i64 noundef 2)
  call void @gw(i64 noundef 0, i64 noundef 3, i64 noundef 32)
  call void @gw(i64 noundef 1, i64 noundef 3, i64 noundef 32)
  br label %_1

_1:                                               ; preds = %if.then49, %entry
  %call2 = call i64 @gr(i64 noundef 3, i64 noundef 0)
  %call3 = call i64 @gr(i64 noundef 1, i64 noundef 0)
  %call4 = call i64 @tm(i64 noundef %call2, i64 noundef %call3)
  %call5 = call i64 @gr(i64 noundef 3, i64 noundef 0)
  %call6 = call i64 @gr(i64 noundef 1, i64 noundef 0)
  %call7 = call i64 @td(i64 noundef %call5, i64 noundef %call6)
  %add = add nsw i64 %call7, 3
  call void @gw(i64 noundef %call4, i64 noundef %add, i64 noundef 88)
  %call8 = call i64 @gr(i64 noundef 3, i64 noundef 0)
  %call9 = call i64 @gr(i64 noundef 3, i64 noundef 0)
  %add10 = add nsw i64 %call8, %call9
  call void @sa(i64 noundef %add10)
  %call11 = call i64 @gr(i64 noundef 3, i64 noundef 0)
  %call12 = call i64 @gr(i64 noundef 3, i64 noundef 0)
  %add13 = add nsw i64 %call11, %call12
  %call14 = call i64 @gr(i64 noundef 0, i64 noundef 0)
  %cmp = icmp slt i64 %add13, %call14
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 1, i32 0
  %conv16 = sext i32 %cond to i64
  call void @sa(i64 noundef %conv16)
  br label %_2

_2:                                               ; preds = %_29, %_1
  %call17 = call i64 @sp()
  %cmp18 = icmp ne i64 %call17, 0
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %_2
  br label %_29

if.else:                                          ; preds = %_2
  br label %_3

_3:                                               ; preds = %if.else
  %call20 = call i64 @sp()
  br label %_4

_4:                                               ; preds = %if.else44, %_3
  %call21 = call i64 @gr(i64 noundef 3, i64 noundef 0)
  %add22 = add nsw i64 %call21, 1
  call void @sa(i64 noundef %add22)
  %call23 = call i64 @gr(i64 noundef 3, i64 noundef 0)
  %add24 = add nsw i64 %call23, 1
  call void @sa(i64 noundef %add24)
  %call25 = call i64 @gr(i64 noundef 3, i64 noundef 0)
  %add26 = add nsw i64 %call25, 1
  call void @gw(i64 noundef 3, i64 noundef 0, i64 noundef %add26)
  %call27 = call i64 @sp()
  %call28 = call i64 @gr(i64 noundef 1, i64 noundef 0)
  %call29 = call i64 @tm(i64 noundef %call27, i64 noundef %call28)
  call void @sa(i64 noundef %call29)
  %call30 = call i64 @sp()
  store i64 %call30, ptr %v0, align 8
  %call31 = call i64 @sp()
  store i64 %call31, ptr %v1, align 8
  %2 = load i64, ptr %v0, align 8
  call void @sa(i64 noundef %2)
  %3 = load i64, ptr %v1, align 8
  call void @sa(i64 noundef %3)
  %call32 = call i64 @sp()
  %call33 = call i64 @gr(i64 noundef 1, i64 noundef 0)
  %call34 = call i64 @td(i64 noundef %call32, i64 noundef %call33)
  call void @sa(i64 noundef %call34)
  %call35 = call i64 @sp()
  %add36 = add nsw i64 %call35, 3
  call void @sa(i64 noundef %add36)
  %call38 = call i64 @sp()
  store i64 %call38, ptr %v037, align 8
  %call39 = call i64 @sp()
  %4 = load i64, ptr %v037, align 8
  %call40 = call i64 @gr(i64 noundef %call39, i64 noundef %4)
  store i64 %call40, ptr %t0, align 8
  %5 = load i64, ptr %t0, align 8
  %sub = sub nsw i64 %5, 32
  store i64 %sub, ptr %t0, align 8
  %6 = load i64, ptr %t0, align 8
  %cmp41 = icmp ne i64 %6, 0
  br i1 %cmp41, label %if.then43, label %if.else44

if.then43:                                        ; preds = %_4
  br label %_6

if.else44:                                        ; preds = %_4
  br label %_4

_6:                                               ; preds = %if.then43
  %call45 = call i64 @gr(i64 noundef 0, i64 noundef 0)
  %call46 = call i64 @gr(i64 noundef 3, i64 noundef 0)
  %cmp47 = icmp sgt i64 %call45, %call46
  br i1 %cmp47, label %if.then49, label %if.else50

if.then49:                                        ; preds = %_6
  br label %_1

if.else50:                                        ; preds = %_6
  br label %_7

_7:                                               ; preds = %if.else50
  call void @gw(i64 noundef 9, i64 noundef 0, i64 noundef 0)
  store i64 0, ptr %t0, align 8
  call void @sa(i64 noundef 0)
  call void @sa(i64 noundef 2)
  call void @sa(i64 noundef 3)
  call void @sa(i64 noundef 5)
  call void @sa(i64 noundef 7)
  call void @sa(i64 noundef 7)
  br label %_8

_8:                                               ; preds = %_18, %_7
  %call51 = call i64 @sp()
  %cmp52 = icmp ne i64 %call51, 0
  br i1 %cmp52, label %if.then54, label %if.else55

if.then54:                                        ; preds = %_8
  br label %_10

if.else55:                                        ; preds = %_8
  br label %_9

_9:                                               ; preds = %if.else55
  %call56 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %call57 = call i64 @gr(i64 noundef 9, i64 noundef 0)
  %call58 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i64 noundef %call57)
  %call59 = call i64 @sp()
  ret i32 0

_10:                                              ; preds = %if.then54
  %call60 = call i64 @sp()
  call void @gw(i64 noundef 7, i64 noundef 0, i64 noundef %call60)
  call void @sa(i64 noundef 9)
  %call61 = call i64 @gr(i64 noundef 7, i64 noundef 0)
  %mul = mul nsw i64 %call61, 10
  %add62 = add nsw i64 9, %mul
  call void @sa(i64 noundef %add62)
  %call63 = call i64 @gr(i64 noundef 7, i64 noundef 0)
  %mul64 = mul nsw i64 %call63, 10
  %add65 = add nsw i64 9, %mul64
  %call66 = call i64 @gr(i64 noundef 0, i64 noundef 0)
  %cmp67 = icmp slt i64 %add65, %call66
  %7 = zext i1 %cmp67 to i64
  %cond69 = select i1 %cmp67, i32 1, i32 0
  %conv70 = sext i32 %cond69 to i64
  call void @sa(i64 noundef %conv70)
  br label %_11

_11:                                              ; preds = %_19, %_10
  %call71 = call i64 @sp()
  %cmp72 = icmp ne i64 %call71, 0
  br i1 %cmp72, label %if.then74, label %if.else75

if.then74:                                        ; preds = %_11
  br label %_12

if.else75:                                        ; preds = %_11
  br label %_28

_12:                                              ; preds = %if.then74
  %call76 = call i64 @sr()
  call void @sa(i64 noundef %call76)
  %call77 = call i64 @sr()
  %call78 = call i64 @gr(i64 noundef 1, i64 noundef 0)
  %call79 = call i64 @tm(i64 noundef %call77, i64 noundef %call78)
  call void @sa(i64 noundef %call79)
  %call81 = call i64 @sp()
  store i64 %call81, ptr %v080, align 8
  %call83 = call i64 @sp()
  store i64 %call83, ptr %v182, align 8
  %8 = load i64, ptr %v080, align 8
  call void @sa(i64 noundef %8)
  %9 = load i64, ptr %v182, align 8
  call void @sa(i64 noundef %9)
  %call84 = call i64 @sp()
  %call85 = call i64 @gr(i64 noundef 1, i64 noundef 0)
  %call86 = call i64 @td(i64 noundef %call84, i64 noundef %call85)
  call void @sa(i64 noundef %call86)
  %call87 = call i64 @sp()
  %add88 = add nsw i64 %call87, 3
  call void @sa(i64 noundef %add88)
  %call90 = call i64 @sp()
  store i64 %call90, ptr %v089, align 8
  %call91 = call i64 @sp()
  %10 = load i64, ptr %v089, align 8
  %call92 = call i64 @gr(i64 noundef %call91, i64 noundef %10)
  store i64 %call92, ptr %t0, align 8
  %11 = load i64, ptr %t0, align 8
  %sub93 = sub nsw i64 %11, 88
  store i64 %sub93, ptr %t0, align 8
  %12 = load i64, ptr %t0, align 8
  %cmp94 = icmp ne i64 %12, 0
  br i1 %cmp94, label %if.then96, label %if.else97

if.then96:                                        ; preds = %_12
  br label %_27

if.else97:                                        ; preds = %_12
  br label %_13

_13:                                              ; preds = %if.else97
  %call98 = call i64 @sr()
  call void @sa(i64 noundef %call98)
  %call99 = call i64 @sr()
  %cmp100 = icmp slt i64 %call99, 10
  br i1 %cmp100, label %if.then102, label %if.else103

if.then102:                                       ; preds = %_13
  br label %_14

if.else103:                                       ; preds = %_13
  br label %_20

_14:                                              ; preds = %if.then102
  %call104 = call i64 @sp()
  %call105 = call i64 @sp()
  %cmp106 = icmp ne i64 %call105, 0
  %13 = zext i1 %cmp106 to i64
  %cond108 = select i1 %cmp106, i32 0, i32 1
  %conv109 = sext i32 %cond108 to i64
  call void @sa(i64 noundef %conv109)
  %call110 = call i64 @sr()
  call void @sa(i64 noundef %call110)
  br label %_15

_15:                                              ; preds = %if.then185, %_14
  %call111 = call i64 @sp()
  %call112 = call i64 @sp()
  br label %_16

_16:                                              ; preds = %_26, %_15
  %call114 = call i64 @sp()
  store i64 %call114, ptr %v0113, align 8
  %call116 = call i64 @sp()
  store i64 %call116, ptr %v1115, align 8
  %14 = load i64, ptr %v0113, align 8
  call void @sa(i64 noundef %14)
  %15 = load i64, ptr %v1115, align 8
  call void @sa(i64 noundef %15)
  br label %_17

_17:                                              ; preds = %_27, %_16
  %call117 = call i64 @sr()
  %cmp118 = icmp ne i64 %call117, 1
  br i1 %cmp118, label %if.then120, label %if.else121

if.then120:                                       ; preds = %_17
  br label %_19

if.else121:                                       ; preds = %_17
  br label %_18

_18:                                              ; preds = %if.else121
  %call122 = call i64 @sp()
  %call123 = call i64 @sr()
  call void @sa(i64 noundef %call123)
  br label %_8

_19:                                              ; preds = %if.then120
  %call124 = call i64 @sp()
  %sub125 = sub nsw i64 %call124, 1
  call void @sa(i64 noundef %sub125)
  %call126 = call i64 @sr()
  %call127 = call i64 @gr(i64 noundef 7, i64 noundef 0)
  %mul128 = mul nsw i64 %call127, 10
  %add129 = add nsw i64 %call126, %mul128
  call void @sa(i64 noundef %add129)
  %call130 = call i64 @sr()
  %call131 = call i64 @gr(i64 noundef 0, i64 noundef 0)
  %cmp132 = icmp slt i64 %call130, %call131
  %16 = zext i1 %cmp132 to i64
  %cond134 = select i1 %cmp132, i32 1, i32 0
  %conv135 = sext i32 %cond134 to i64
  call void @sa(i64 noundef %conv135)
  br label %_11

_20:                                              ; preds = %if.else103
  %call136 = call i64 @sr()
  %div = sdiv i64 %call136, 10
  call void @sa(i64 noundef %div)
  call void @sa(i64 noundef 1)
  %call138 = call i64 @sp()
  store i64 %call138, ptr %v0137, align 8
  %call140 = call i64 @sp()
  store i64 %call140, ptr %v1139, align 8
  %17 = load i64, ptr %v0137, align 8
  call void @sa(i64 noundef %17)
  %18 = load i64, ptr %v1139, align 8
  call void @sa(i64 noundef %18)
  %call141 = call i64 @sr()
  call void @sa(i64 noundef %call141)
  br label %_21

_21:                                              ; preds = %_22, %_20
  %call142 = call i64 @sp()
  %cmp143 = icmp ne i64 %call142, 0
  br i1 %cmp143, label %if.then145, label %if.else146

if.then145:                                       ; preds = %_21
  br label %_22

if.else146:                                       ; preds = %_21
  br label %_23

_22:                                              ; preds = %if.then145
  %call147 = call i64 @sp()
  %div148 = sdiv i64 %call147, 10
  call void @sa(i64 noundef %div148)
  %call150 = call i64 @sp()
  store i64 %call150, ptr %v0149, align 8
  %call152 = call i64 @sp()
  store i64 %call152, ptr %v1151, align 8
  %19 = load i64, ptr %v0149, align 8
  call void @sa(i64 noundef %19)
  %20 = load i64, ptr %v1151, align 8
  call void @sa(i64 noundef %20)
  %call153 = call i64 @sp()
  %mul154 = mul nsw i64 %call153, 10
  call void @sa(i64 noundef %mul154)
  %call156 = call i64 @sp()
  store i64 %call156, ptr %v0155, align 8
  %call158 = call i64 @sp()
  store i64 %call158, ptr %v1157, align 8
  %21 = load i64, ptr %v0155, align 8
  call void @sa(i64 noundef %21)
  %22 = load i64, ptr %v1157, align 8
  call void @sa(i64 noundef %22)
  %call159 = call i64 @sr()
  call void @sa(i64 noundef %call159)
  br label %_21

_23:                                              ; preds = %if.else146
  %call160 = call i64 @sp()
  %call162 = call i64 @sp()
  store i64 %call162, ptr %v0161, align 8
  %call164 = call i64 @sp()
  store i64 %call164, ptr %v1163, align 8
  %23 = load i64, ptr %v0161, align 8
  call void @sa(i64 noundef %23)
  %24 = load i64, ptr %v1163, align 8
  call void @sa(i64 noundef %24)
  br label %_24

_24:                                              ; preds = %if.then207, %_23
  %call165 = call i64 @sr()
  call void @sa(i64 noundef %call165)
  %call166 = call i64 @sr()
  %call167 = call i64 @gr(i64 noundef 1, i64 noundef 0)
  %call168 = call i64 @tm(i64 noundef %call166, i64 noundef %call167)
  call void @sa(i64 noundef %call168)
  %call170 = call i64 @sp()
  store i64 %call170, ptr %v0169, align 8
  %call172 = call i64 @sp()
  store i64 %call172, ptr %v1171, align 8
  %25 = load i64, ptr %v0169, align 8
  call void @sa(i64 noundef %25)
  %26 = load i64, ptr %v1171, align 8
  call void @sa(i64 noundef %26)
  %call173 = call i64 @sp()
  %call174 = call i64 @gr(i64 noundef 1, i64 noundef 0)
  %call175 = call i64 @td(i64 noundef %call173, i64 noundef %call174)
  call void @sa(i64 noundef %call175)
  %call176 = call i64 @sp()
  %add177 = add nsw i64 %call176, 3
  call void @sa(i64 noundef %add177)
  %call179 = call i64 @sp()
  store i64 %call179, ptr %v0178, align 8
  %call180 = call i64 @sp()
  %27 = load i64, ptr %v0178, align 8
  %call181 = call i64 @gr(i64 noundef %call180, i64 noundef %27)
  store i64 %call181, ptr %t0, align 8
  %28 = load i64, ptr %t0, align 8
  %sub182 = sub nsw i64 %28, 88
  store i64 %sub182, ptr %t0, align 8
  %29 = load i64, ptr %t0, align 8
  %cmp183 = icmp ne i64 %29, 0
  br i1 %cmp183, label %if.then185, label %if.else186

if.then185:                                       ; preds = %_24
  br label %_15

if.else186:                                       ; preds = %_24
  br label %_25

_25:                                              ; preds = %if.else186
  %call188 = call i64 @sp()
  store i64 %call188, ptr %v0187, align 8
  %call190 = call i64 @sp()
  store i64 %call190, ptr %v1189, align 8
  %30 = load i64, ptr %v0187, align 8
  call void @sa(i64 noundef %30)
  %31 = load i64, ptr %v1189, align 8
  call void @sa(i64 noundef %31)
  %call191 = call i64 @sr()
  call void @sa(i64 noundef %call191)
  %call192 = call i64 @sp()
  call void @gw(i64 noundef 5, i64 noundef 0, i64 noundef %call192)
  %call194 = call i64 @sp()
  store i64 %call194, ptr %v0193, align 8
  %call195 = call i64 @sp()
  %32 = load i64, ptr %v0193, align 8
  %call196 = call i64 @tm(i64 noundef %call195, i64 noundef %32)
  call void @sa(i64 noundef %call196)
  %call197 = call i64 @gr(i64 noundef 5, i64 noundef 0)
  %div198 = sdiv i64 %call197, 10
  call void @sa(i64 noundef %div198)
  %call200 = call i64 @sp()
  store i64 %call200, ptr %v0199, align 8
  %call202 = call i64 @sp()
  store i64 %call202, ptr %v1201, align 8
  %33 = load i64, ptr %v0199, align 8
  call void @sa(i64 noundef %33)
  %34 = load i64, ptr %v1201, align 8
  call void @sa(i64 noundef %34)
  %call203 = call i64 @sr()
  call void @sa(i64 noundef %call203)
  %call204 = call i64 @sp()
  %cmp205 = icmp ne i64 %call204, 0
  br i1 %cmp205, label %if.then207, label %if.else208

if.then207:                                       ; preds = %_25
  br label %_24

if.else208:                                       ; preds = %_25
  br label %_26

_26:                                              ; preds = %if.else208
  %call209 = call i64 @sp()
  %call210 = call i64 @sp()
  %call211 = call i64 @sr()
  call void @sa(i64 noundef %call211)
  %call212 = call i64 @sr()
  call void @sa(i64 noundef %call212)
  %call213 = call i64 @sp()
  %call214 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i64 noundef %call213)
  %call215 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %call216 = call i64 @sp()
  %call217 = call i64 @gr(i64 noundef 9, i64 noundef 0)
  %add218 = add nsw i64 %call216, %call217
  call void @sa(i64 noundef %add218)
  %call219 = call i64 @sp()
  call void @gw(i64 noundef 9, i64 noundef 0, i64 noundef %call219)
  br label %_16

_27:                                              ; preds = %_28, %if.then96
  %call220 = call i64 @sp()
  br label %_17

_28:                                              ; preds = %if.else75
  store i64 0, ptr %t0, align 8
  br label %_27

_29:                                              ; preds = %if.then
  %call221 = call i64 @sr()
  call void @sa(i64 noundef %call221)
  call void @sa(i64 noundef 32)
  %call223 = call i64 @sp()
  store i64 %call223, ptr %v0222, align 8
  %call225 = call i64 @sp()
  store i64 %call225, ptr %v1224, align 8
  %35 = load i64, ptr %v0222, align 8
  call void @sa(i64 noundef %35)
  %36 = load i64, ptr %v1224, align 8
  call void @sa(i64 noundef %36)
  %call226 = call i64 @sr()
  %call227 = call i64 @gr(i64 noundef 1, i64 noundef 0)
  %call228 = call i64 @tm(i64 noundef %call226, i64 noundef %call227)
  call void @sa(i64 noundef %call228)
  %call230 = call i64 @sp()
  store i64 %call230, ptr %v0229, align 8
  %call232 = call i64 @sp()
  store i64 %call232, ptr %v1231, align 8
  %37 = load i64, ptr %v0229, align 8
  call void @sa(i64 noundef %37)
  %38 = load i64, ptr %v1231, align 8
  call void @sa(i64 noundef %38)
  %call233 = call i64 @sp()
  %call234 = call i64 @gr(i64 noundef 1, i64 noundef 0)
  %call235 = call i64 @td(i64 noundef %call233, i64 noundef %call234)
  call void @sa(i64 noundef %call235)
  %call236 = call i64 @sp()
  %add237 = add nsw i64 %call236, 3
  call void @sa(i64 noundef %add237)
  %call239 = call i64 @sp()
  store i64 %call239, ptr %v0238, align 8
  %call241 = call i64 @sp()
  store i64 %call241, ptr %v1240, align 8
  %39 = load i64, ptr %v1240, align 8
  %40 = load i64, ptr %v0238, align 8
  %call242 = call i64 @sp()
  call void @gw(i64 noundef %39, i64 noundef %40, i64 noundef %call242)
  %call243 = call i64 @sp()
  %call244 = call i64 @gr(i64 noundef 3, i64 noundef 0)
  %add245 = add nsw i64 %call243, %call244
  call void @sa(i64 noundef %add245)
  %call246 = call i64 @sr()
  %call247 = call i64 @gr(i64 noundef 0, i64 noundef 0)
  %cmp248 = icmp slt i64 %call246, %call247
  %41 = zext i1 %cmp248 to i64
  %cond250 = select i1 %cmp248, i32 1, i32 0
  %conv251 = sext i32 %cond250 to i64
  call void @sa(i64 noundef %conv251)
  br label %_2
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
