; ModuleID = './code/013-25353Euler_Problem-038.c'
source_filename = "./code/013-25353Euler_Problem-038.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [435 x i8] c"v{#}  ){ } !`v{#}  )    v{ } !O<#     p145< {#}  ){ }  )v{ }  *+1<{ }  +v{ }  ,<  v{ }  /<{ }  1vp2\\0:<{ }  ){>v    }  \22      >$v   v\\g2:<{ }  =>\22ec\22*31p>241p>01-1>:31g*\\:41g-#^_$>\\10p01-\\>:55+%\\55+/:#^_$>10g55+*+10p:1+#^_$10g\\:1+#v_$:55+>  1-:|  >:55+%:|>:2g!|>1\\2p55+/:!| >55+> 1-:|>#v_$41g1-:41p1-#^_31g1-:31p|{ }  C^{ }  R\\<{ }  +$>$:^  {    $#}  \22{ }  *<v{+}  ($<{ } !J$${>     }  \22     $0>9-!\\$     ^ >.     @     ,,,,, \22RORRE\22<\00", align 1
@_g = global ptr @.str, align 8
@t = global i32 0, align 4
@z = global i32 0, align 4
@g = global [1014 x i64] zeroinitializer, align 8
@q = global i32 16384, align 4
@y = global i32 0, align 4
@s = global ptr null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"RORRE\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%lld \00", align 1

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
  %cmp = icmp slt i32 %1, 434
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
  %arrayidx8 = getelementptr inbounds [1014 x i64], ptr @g, i64 0, i64 %idxprom7
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
  %arrayidx49 = getelementptr inbounds [1014 x i64], ptr @g, i64 0, i64 %idxprom48
  %33 = load i64, ptr %arrayidx49, align 8
  %34 = load i32, ptr @z, align 4
  %inc50 = add nsw i32 %34, 1
  store i32 %inc50, ptr @z, align 4
  %idxprom51 = sext i32 %34 to i64
  %arrayidx52 = getelementptr inbounds [1014 x i64], ptr @g, i64 0, i64 %idxprom51
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
  %arrayidx63 = getelementptr inbounds [1014 x i64], ptr @g, i64 0, i64 %idxprom62
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
  %cmp3 = icmp slt i64 %2, 169
  br i1 %cmp3, label %land.lhs.true4, label %if.else

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i64, ptr %y.addr, align 8
  %cmp5 = icmp slt i64 %3, 6
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true4
  %4 = load i64, ptr %y.addr, align 8
  %mul = mul nsw i64 %4, 169
  %5 = load i64, ptr %x.addr, align 8
  %add = add nsw i64 %mul, %5
  %arrayidx = getelementptr inbounds [1014 x i64], ptr @g, i64 0, i64 %add
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
  %cmp3 = icmp slt i64 %2, 169
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %3 = load i64, ptr %y.addr, align 8
  %cmp5 = icmp slt i64 %3, 6
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true4
  %4 = load i64, ptr %v.addr, align 8
  %5 = load i64, ptr %y.addr, align 8
  %mul = mul nsw i64 %5, 169
  %6 = load i64, ptr %x.addr, align 8
  %add = add nsw i64 %mul, %6
  %arrayidx = getelementptr inbounds [1014 x i64], ptr @g, i64 0, i64 %add
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
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %v010 = alloca i64, align 8
  %v112 = alloca i64, align 8
  %v015 = alloca i64, align 8
  %v117 = alloca i64, align 8
  %v037 = alloca i64, align 8
  %v139 = alloca i64, align 8
  %v054 = alloca i64, align 8
  %v156 = alloca i64, align 8
  %v058 = alloca i64, align 8
  %v160 = alloca i64, align 8
  %v077 = alloca i64, align 8
  %v086 = alloca i64, align 8
  %v188 = alloca i64, align 8
  %v090 = alloca i64, align 8
  %v192 = alloca i64, align 8
  %v0110 = alloca i64, align 8
  %v0114 = alloca i64, align 8
  %v1116 = alloca i64, align 8
  %v0152 = alloca i64, align 8
  %v1154 = alloca i64, align 8
  %v0191 = alloca i64, align 8
  %v1193 = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  %call = call i32 @d()
  %0 = load i32, ptr @q, align 4
  %conv = sext i32 %0 to i64
  %call1 = call ptr @calloc(i64 noundef %conv, i64 noundef 8) #5
  store ptr %call1, ptr @s, align 8
  call void @gw(i64 noundef 3, i64 noundef 1, i64 noundef 9999)
  call void @gw(i64 noundef 4, i64 noundef 1, i64 noundef 2)
  br label %_1

_1:                                               ; preds = %_26, %if.then170, %entry
  call void @sa(i64 noundef -1)
  %call2 = call i64 @gr(i64 noundef 3, i64 noundef 1)
  call void @sa(i64 noundef %call2)
  call void @sa(i64 noundef 1)
  %call3 = call i64 @gr(i64 noundef 4, i64 noundef 1)
  %sub = sub nsw i64 1, %call3
  call void @sa(i64 noundef %sub)
  br label %_2

_2:                                               ; preds = %_29, %_1
  %call4 = call i64 @sp()
  %cmp = icmp ne i64 %call4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %_2
  br label %_29

if.else:                                          ; preds = %_2
  br label %_3

_3:                                               ; preds = %if.else
  %call6 = call i64 @sp()
  %call7 = call i64 @sp()
  store i64 %call7, ptr %v0, align 8
  %call8 = call i64 @sp()
  store i64 %call8, ptr %v1, align 8
  %1 = load i64, ptr %v0, align 8
  call void @sa(i64 noundef %1)
  %2 = load i64, ptr %v1, align 8
  call void @sa(i64 noundef %2)
  br label %_4

_4:                                               ; preds = %if.then44, %_3
  %call9 = call i64 @sp()
  call void @gw(i64 noundef 1, i64 noundef 0, i64 noundef %call9)
  call void @sa(i64 noundef -1)
  %call11 = call i64 @sp()
  store i64 %call11, ptr %v010, align 8
  %call13 = call i64 @sp()
  store i64 %call13, ptr %v112, align 8
  %3 = load i64, ptr %v010, align 8
  call void @sa(i64 noundef %3)
  %4 = load i64, ptr %v112, align 8
  call void @sa(i64 noundef %4)
  br label %_5

_5:                                               ; preds = %if.then24, %_4
  %call14 = call i64 @sr()
  %rem = srem i64 %call14, 10
  call void @sa(i64 noundef %rem)
  %call16 = call i64 @sp()
  store i64 %call16, ptr %v015, align 8
  %call18 = call i64 @sp()
  store i64 %call18, ptr %v117, align 8
  %5 = load i64, ptr %v015, align 8
  call void @sa(i64 noundef %5)
  %6 = load i64, ptr %v117, align 8
  call void @sa(i64 noundef %6)
  %call19 = call i64 @sp()
  %div = sdiv i64 %call19, 10
  call void @sa(i64 noundef %div)
  %call20 = call i64 @sr()
  call void @sa(i64 noundef %call20)
  %call21 = call i64 @sp()
  %cmp22 = icmp ne i64 %call21, 0
  br i1 %cmp22, label %if.then24, label %if.else25

if.then24:                                        ; preds = %_5
  br label %_5

if.else25:                                        ; preds = %_5
  br label %_7

_7:                                               ; preds = %if.else25
  %call26 = call i64 @sp()
  br label %_8

_8:                                               ; preds = %if.then33, %_7
  %call27 = call i64 @sp()
  %call28 = call i64 @gr(i64 noundef 1, i64 noundef 0)
  %mul = mul nsw i64 %call28, 10
  %add = add nsw i64 %call27, %mul
  call void @sa(i64 noundef %add)
  %call29 = call i64 @sp()
  call void @gw(i64 noundef 1, i64 noundef 0, i64 noundef %call29)
  %call30 = call i64 @sr()
  %cmp31 = icmp ne i64 %call30, -1
  br i1 %cmp31, label %if.then33, label %if.else34

if.then33:                                        ; preds = %_8
  br label %_8

if.else34:                                        ; preds = %_8
  br label %_10

_10:                                              ; preds = %if.else34
  %call35 = call i64 @sp()
  %call36 = call i64 @gr(i64 noundef 1, i64 noundef 0)
  call void @sa(i64 noundef %call36)
  %call38 = call i64 @sp()
  store i64 %call38, ptr %v037, align 8
  %call40 = call i64 @sp()
  store i64 %call40, ptr %v139, align 8
  %7 = load i64, ptr %v037, align 8
  call void @sa(i64 noundef %7)
  %8 = load i64, ptr %v139, align 8
  call void @sa(i64 noundef %8)
  %call41 = call i64 @sr()
  %cmp42 = icmp ne i64 %call41, -1
  br i1 %cmp42, label %if.then44, label %if.else45

if.then44:                                        ; preds = %_10
  br label %_4

if.else45:                                        ; preds = %_10
  br label %_11

_11:                                              ; preds = %if.else45
  %call46 = call i64 @sp()
  %call47 = call i64 @sr()
  call void @sa(i64 noundef %call47)
  call void @sa(i64 noundef 9)
  call void @sa(i64 noundef 9)
  br label %_12

_12:                                              ; preds = %_13, %_11
  %call48 = call i64 @sp()
  %cmp49 = icmp ne i64 %call48, 0
  br i1 %cmp49, label %if.then51, label %if.else52

if.then51:                                        ; preds = %_12
  br label %_13

if.else52:                                        ; preds = %_12
  br label %_14

_13:                                              ; preds = %if.then51
  %call53 = call i64 @sr()
  call void @sa(i64 noundef %call53)
  call void @sa(i64 noundef 0)
  %call55 = call i64 @sp()
  store i64 %call55, ptr %v054, align 8
  %call57 = call i64 @sp()
  store i64 %call57, ptr %v156, align 8
  %9 = load i64, ptr %v054, align 8
  call void @sa(i64 noundef %9)
  %10 = load i64, ptr %v156, align 8
  call void @sa(i64 noundef %10)
  call void @sa(i64 noundef 2)
  %call59 = call i64 @sp()
  store i64 %call59, ptr %v058, align 8
  %call61 = call i64 @sp()
  store i64 %call61, ptr %v160, align 8
  %11 = load i64, ptr %v160, align 8
  %12 = load i64, ptr %v058, align 8
  %call62 = call i64 @sp()
  call void @gw(i64 noundef %11, i64 noundef %12, i64 noundef %call62)
  %call63 = call i64 @sp()
  %sub64 = sub nsw i64 %call63, 1
  call void @sa(i64 noundef %sub64)
  %call65 = call i64 @sr()
  call void @sa(i64 noundef %call65)
  br label %_12

_14:                                              ; preds = %if.else52
  %call66 = call i64 @sp()
  %call67 = call i64 @sr()
  call void @sa(i64 noundef %call67)
  br label %_15

_15:                                              ; preds = %if.then101, %_14
  %call68 = call i64 @sr()
  %rem69 = srem i64 %call68, 10
  call void @sa(i64 noundef %rem69)
  %call70 = call i64 @sr()
  call void @sa(i64 noundef %call70)
  %call71 = call i64 @sp()
  %cmp72 = icmp ne i64 %call71, 0
  br i1 %cmp72, label %if.then74, label %if.else75

if.then74:                                        ; preds = %_15
  br label %_16

if.else75:                                        ; preds = %_15
  br label %_28

_16:                                              ; preds = %if.then74
  %call76 = call i64 @sr()
  call void @sa(i64 noundef %call76)
  call void @sa(i64 noundef 2)
  %call78 = call i64 @sp()
  store i64 %call78, ptr %v077, align 8
  %call79 = call i64 @sp()
  %13 = load i64, ptr %v077, align 8
  %call80 = call i64 @gr(i64 noundef %call79, i64 noundef %13)
  call void @sa(i64 noundef %call80)
  %call81 = call i64 @sp()
  %cmp82 = icmp ne i64 %call81, 0
  br i1 %cmp82, label %if.then84, label %if.else85

if.then84:                                        ; preds = %_16
  br label %_28

if.else85:                                        ; preds = %_16
  br label %_17

_17:                                              ; preds = %if.else85
  call void @sa(i64 noundef 1)
  %call87 = call i64 @sp()
  store i64 %call87, ptr %v086, align 8
  %call89 = call i64 @sp()
  store i64 %call89, ptr %v188, align 8
  %14 = load i64, ptr %v086, align 8
  call void @sa(i64 noundef %14)
  %15 = load i64, ptr %v188, align 8
  call void @sa(i64 noundef %15)
  call void @sa(i64 noundef 2)
  %call91 = call i64 @sp()
  store i64 %call91, ptr %v090, align 8
  %call93 = call i64 @sp()
  store i64 %call93, ptr %v192, align 8
  %16 = load i64, ptr %v192, align 8
  %17 = load i64, ptr %v090, align 8
  %call94 = call i64 @sp()
  call void @gw(i64 noundef %16, i64 noundef %17, i64 noundef %call94)
  %call95 = call i64 @sp()
  %div96 = sdiv i64 %call95, 10
  call void @sa(i64 noundef %div96)
  %call97 = call i64 @sr()
  call void @sa(i64 noundef %call97)
  %call98 = call i64 @sp()
  %cmp99 = icmp ne i64 %call98, 0
  br i1 %cmp99, label %if.then101, label %if.else102

if.then101:                                       ; preds = %_17
  br label %_15

if.else102:                                       ; preds = %_17
  br label %_18

_18:                                              ; preds = %if.else102
  %call103 = call i64 @sp()
  call void @sa(i64 noundef 9)
  call void @sa(i64 noundef 9)
  br label %_19

_19:                                              ; preds = %_20, %_18
  %call104 = call i64 @sp()
  %cmp105 = icmp ne i64 %call104, 0
  br i1 %cmp105, label %if.then107, label %if.else108

if.then107:                                       ; preds = %_19
  br label %_20

if.else108:                                       ; preds = %_19
  br label %_21

_20:                                              ; preds = %if.then107
  %call109 = call i64 @sr()
  call void @sa(i64 noundef %call109)
  call void @sa(i64 noundef 2)
  %call111 = call i64 @sp()
  store i64 %call111, ptr %v0110, align 8
  %call112 = call i64 @sp()
  %18 = load i64, ptr %v0110, align 8
  %call113 = call i64 @gr(i64 noundef %call112, i64 noundef %18)
  call void @sa(i64 noundef %call113)
  %call115 = call i64 @sp()
  store i64 %call115, ptr %v0114, align 8
  %call117 = call i64 @sp()
  store i64 %call117, ptr %v1116, align 8
  %19 = load i64, ptr %v0114, align 8
  call void @sa(i64 noundef %19)
  %20 = load i64, ptr %v1116, align 8
  call void @sa(i64 noundef %20)
  %call118 = call i64 @sp()
  %sub119 = sub nsw i64 %call118, 1
  call void @sa(i64 noundef %sub119)
  %call120 = call i64 @sr()
  call void @sa(i64 noundef %call120)
  br label %_19

_21:                                              ; preds = %if.else108
  %call121 = call i64 @sp()
  %call122 = call i64 @sp()
  %call123 = call i64 @sp()
  %add124 = add nsw i64 %call122, %call123
  call void @sa(i64 noundef %add124)
  %call125 = call i64 @sp()
  %call126 = call i64 @sp()
  %add127 = add nsw i64 %call125, %call126
  call void @sa(i64 noundef %add127)
  %call128 = call i64 @sp()
  %call129 = call i64 @sp()
  %add130 = add nsw i64 %call128, %call129
  call void @sa(i64 noundef %add130)
  %call131 = call i64 @sp()
  %call132 = call i64 @sp()
  %add133 = add nsw i64 %call131, %call132
  call void @sa(i64 noundef %add133)
  %call134 = call i64 @sp()
  %call135 = call i64 @sp()
  %add136 = add nsw i64 %call134, %call135
  call void @sa(i64 noundef %add136)
  %call137 = call i64 @sp()
  %call138 = call i64 @sp()
  %add139 = add nsw i64 %call137, %call138
  call void @sa(i64 noundef %add139)
  %call140 = call i64 @sp()
  %call141 = call i64 @sp()
  %add142 = add nsw i64 %call140, %call141
  call void @sa(i64 noundef %add142)
  %call143 = call i64 @sp()
  %call144 = call i64 @sp()
  %add145 = add nsw i64 %call143, %call144
  call void @sa(i64 noundef %add145)
  %call146 = call i64 @sp()
  %sub147 = sub nsw i64 %call146, 9
  call void @sa(i64 noundef %sub147)
  %call148 = call i64 @sp()
  %cmp149 = icmp ne i64 %call148, 0
  %21 = zext i1 %cmp149 to i64
  %cond = select i1 %cmp149, i32 0, i32 1
  %conv151 = sext i32 %cond to i64
  call void @sa(i64 noundef %conv151)
  br label %_22

_22:                                              ; preds = %_28, %_21
  %call153 = call i64 @sp()
  store i64 %call153, ptr %v0152, align 8
  %call155 = call i64 @sp()
  store i64 %call155, ptr %v1154, align 8
  %22 = load i64, ptr %v0152, align 8
  call void @sa(i64 noundef %22)
  %23 = load i64, ptr %v1154, align 8
  call void @sa(i64 noundef %23)
  %call156 = call i64 @sp()
  %call157 = call i64 @sp()
  %cmp158 = icmp ne i64 %call157, 0
  br i1 %cmp158, label %if.then160, label %if.else161

if.then160:                                       ; preds = %_22
  br label %_27

if.else161:                                       ; preds = %_22
  br label %_23

_23:                                              ; preds = %if.else161
  %call162 = call i64 @sp()
  %call163 = call i64 @gr(i64 noundef 4, i64 noundef 1)
  %sub164 = sub nsw i64 %call163, 2
  call void @sa(i64 noundef %sub164)
  %call165 = call i64 @gr(i64 noundef 4, i64 noundef 1)
  %sub166 = sub nsw i64 %call165, 1
  call void @gw(i64 noundef 4, i64 noundef 1, i64 noundef %sub166)
  %call167 = call i64 @sp()
  %cmp168 = icmp ne i64 %call167, 0
  br i1 %cmp168, label %if.then170, label %if.else171

if.then170:                                       ; preds = %_23
  br label %_1

if.else171:                                       ; preds = %_23
  br label %_24

_24:                                              ; preds = %if.else171
  %call172 = call i64 @gr(i64 noundef 3, i64 noundef 1)
  %sub173 = sub nsw i64 %call172, 1
  call void @sa(i64 noundef %sub173)
  %call174 = call i64 @gr(i64 noundef 3, i64 noundef 1)
  %sub175 = sub nsw i64 %call174, 1
  call void @gw(i64 noundef 3, i64 noundef 1, i64 noundef %sub175)
  %call176 = call i64 @sp()
  %cmp177 = icmp ne i64 %call176, 0
  br i1 %cmp177, label %if.then179, label %if.else180

if.then179:                                       ; preds = %_24
  br label %_26

if.else180:                                       ; preds = %_24
  br label %_25

_25:                                              ; preds = %if.else180
  %call181 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %retval, align 4
  br label %return

_26:                                              ; preds = %if.then179
  call void @gw(i64 noundef 4, i64 noundef 1, i64 noundef 5)
  br label %_1

_27:                                              ; preds = %if.then160
  %call182 = call i64 @sp()
  %call183 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i64 noundef %call182)
  store i32 0, ptr %retval, align 4
  br label %return

_28:                                              ; preds = %if.then84, %if.else75
  %call184 = call i64 @sp()
  %call185 = call i64 @sp()
  call void @sa(i64 noundef 0)
  br label %_22

_29:                                              ; preds = %if.then
  %call186 = call i64 @sp()
  %add187 = add nsw i64 %call186, 1
  call void @sa(i64 noundef %add187)
  %call188 = call i64 @sr()
  %call189 = call i64 @gr(i64 noundef 3, i64 noundef 1)
  %mul190 = mul nsw i64 %call188, %call189
  call void @sa(i64 noundef %mul190)
  %call192 = call i64 @sp()
  store i64 %call192, ptr %v0191, align 8
  %call194 = call i64 @sp()
  store i64 %call194, ptr %v1193, align 8
  %24 = load i64, ptr %v0191, align 8
  call void @sa(i64 noundef %24)
  %25 = load i64, ptr %v1193, align 8
  call void @sa(i64 noundef %25)
  %call195 = call i64 @sr()
  %call196 = call i64 @gr(i64 noundef 4, i64 noundef 1)
  %sub197 = sub nsw i64 %call195, %call196
  call void @sa(i64 noundef %sub197)
  br label %_2

return:                                           ; preds = %_27, %_25
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
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
