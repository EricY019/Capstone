; ModuleID = './code/351-31195problem84.c'
source_filename = "./code/351-31195problem84.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.euler_problem_84.chance = private unnamed_addr constant [16 x i32] [i32 0, i32 10, i32 11, i32 24, i32 39, i32 5, i32 -1, i32 -1, i32 -2, i32 -3, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10], align 4
@__const.euler_problem_84.comchest = private unnamed_addr constant [16 x i32] [i32 0, i32 10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10], align 4
@.str = private unnamed_addr constant [14 x i8] c"%02d%02d%02d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ERROR\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @euler_problem_84() #0 {
entry:
  %retval = alloca i32, align 4
  %hits = alloca [40 x i64], align 8
  %chance = alloca [16 x i32], align 4
  %comchest = alloca [16 x i32], align 4
  %curpos = alloca i32, align 4
  %die0 = alloca i32, align 4
  %die1 = alloca i32, align 4
  %SIDES = alloca i32, align 4
  %doubles = alloca i32, align 4
  %ccpos = alloca i32, align 4
  %chpos = alloca i32, align 4
  %i = alloca i32, align 4
  %MAXROLLS = alloca i64, align 8
  %currolls = alloca i64, align 8
  %top0 = alloca i64, align 8
  %top1 = alloca i64, align 8
  %top2 = alloca i64, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %hits, i8 0, i64 320, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %chance, ptr align 4 @__const.euler_problem_84.chance, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %comchest, ptr align 4 @__const.euler_problem_84.comchest, i64 64, i1 false)
  store i32 0, ptr %curpos, align 4
  store i32 0, ptr %die0, align 4
  store i32 0, ptr %die1, align 4
  store i32 4, ptr %SIDES, align 4
  store i32 0, ptr %doubles, align 4
  store i32 0, ptr %ccpos, align 4
  store i32 0, ptr %chpos, align 4
  store i32 0, ptr %i, align 4
  store i64 10000000, ptr %MAXROLLS, align 8
  store i64 0, ptr %currolls, align 8
  store i64 0, ptr %top0, align 8
  store i64 0, ptr %top1, align 8
  store i64 0, ptr %top2, align 8
  %arraydecay = getelementptr inbounds [16 x i32], ptr %chance, i64 0, i64 0
  call void @shuffle(ptr noundef %arraydecay, i32 noundef 16)
  %arraydecay1 = getelementptr inbounds [16 x i32], ptr %comchest, i64 0, i64 0
  call void @shuffle(ptr noundef %arraydecay1, i32 noundef 16)
  store i64 0, ptr %currolls, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %currolls, align 8
  %1 = load i64, ptr %MAXROLLS, align 8
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %SIDES, align 4
  %call = call i32 @roll(i32 noundef %2)
  store i32 %call, ptr %die0, align 4
  %3 = load i32, ptr %SIDES, align 4
  %call2 = call i32 @roll(i32 noundef %3)
  store i32 %call2, ptr %die1, align 4
  %4 = load i32, ptr %curpos, align 4
  %5 = load i32, ptr %die0, align 4
  %add = add nsw i32 %4, %5
  %6 = load i32, ptr %die1, align 4
  %add3 = add nsw i32 %add, %6
  %cmp4 = icmp sgt i32 %add3, 39
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load i32, ptr %curpos, align 4
  %8 = load i32, ptr %die0, align 4
  %add5 = add nsw i32 %7, %8
  %9 = load i32, ptr %die1, align 4
  %add6 = add nsw i32 %add5, %9
  %sub = sub nsw i32 %add6, 39
  store i32 %sub, ptr %curpos, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %10 = load i32, ptr %curpos, align 4
  %11 = load i32, ptr %die0, align 4
  %add7 = add nsw i32 %10, %11
  %12 = load i32, ptr %die1, align 4
  %add8 = add nsw i32 %add7, %12
  store i32 %add8, ptr %curpos, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load i32, ptr %die0, align 4
  %14 = load i32, ptr %die1, align 4
  %cmp9 = icmp eq i32 %13, %14
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.end
  %15 = load i32, ptr %doubles, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %doubles, align 4
  br label %if.end12

if.else11:                                        ; preds = %if.end
  store i32 0, ptr %doubles, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.then10
  %16 = load i32, ptr %doubles, align 4
  %cmp13 = icmp eq i32 %16, 3
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  store i32 10, ptr %curpos, align 4
  store i32 0, ptr %doubles, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12
  %17 = load i32, ptr %curpos, align 4
  %cmp16 = icmp eq i32 %17, 2
  br i1 %cmp16, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end15
  %18 = load i32, ptr %curpos, align 4
  %cmp17 = icmp eq i32 %18, 17
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %19 = load i32, ptr %curpos, align 4
  %cmp19 = icmp eq i32 %19, 33
  br i1 %cmp19, label %if.then20, label %if.end27

if.then20:                                        ; preds = %lor.lhs.false18, %lor.lhs.false, %if.end15
  %20 = load i32, ptr %ccpos, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr %comchest, i64 0, i64 %idxprom
  %21 = load i32, ptr %arrayidx, align 4
  switch i32 %21, label %sw.default [
    i32 -10, label %sw.bb
    i32 0, label %sw.bb21
    i32 10, label %sw.bb22
  ]

sw.bb:                                            ; preds = %if.then20
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.then20
  store i32 0, ptr %curpos, align 4
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.then20
  store i32 10, ptr %curpos, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then20
  store i32 1, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb22, %sw.bb21, %sw.bb
  %22 = load i32, ptr %ccpos, align 4
  %inc23 = add nsw i32 %22, 1
  store i32 %inc23, ptr %ccpos, align 4
  %23 = load i32, ptr %ccpos, align 4
  %cmp24 = icmp eq i32 %23, 16
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %sw.epilog
  store i32 0, ptr %ccpos, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %sw.epilog
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %lor.lhs.false18
  %24 = load i32, ptr %curpos, align 4
  %cmp28 = icmp eq i32 %24, 7
  br i1 %cmp28, label %if.then33, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.end27
  %25 = load i32, ptr %curpos, align 4
  %cmp30 = icmp eq i32 %25, 22
  br i1 %cmp30, label %if.then33, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false29
  %26 = load i32, ptr %curpos, align 4
  %cmp32 = icmp eq i32 %26, 36
  br i1 %cmp32, label %if.then33, label %if.end63

if.then33:                                        ; preds = %lor.lhs.false31, %lor.lhs.false29, %if.end27
  %27 = load i32, ptr %chpos, align 4
  %idxprom34 = sext i32 %27 to i64
  %arrayidx35 = getelementptr inbounds [16 x i32], ptr %chance, i64 0, i64 %idxprom34
  %28 = load i32, ptr %arrayidx35, align 4
  switch i32 %28, label %sw.default57 [
    i32 -10, label %sw.bb36
    i32 0, label %sw.bb37
    i32 10, label %sw.bb38
    i32 11, label %sw.bb39
    i32 24, label %sw.bb40
    i32 39, label %sw.bb41
    i32 5, label %sw.bb42
    i32 -1, label %sw.bb43
    i32 -2, label %sw.bb47
    i32 -3, label %sw.bb55
  ]

sw.bb36:                                          ; preds = %if.then33
  br label %sw.epilog58

sw.bb37:                                          ; preds = %if.then33
  store i32 0, ptr %curpos, align 4
  br label %sw.epilog58

sw.bb38:                                          ; preds = %if.then33
  store i32 10, ptr %curpos, align 4
  br label %sw.epilog58

sw.bb39:                                          ; preds = %if.then33
  store i32 11, ptr %curpos, align 4
  br label %sw.epilog58

sw.bb40:                                          ; preds = %if.then33
  store i32 24, ptr %curpos, align 4
  br label %sw.epilog58

sw.bb41:                                          ; preds = %if.then33
  store i32 39, ptr %curpos, align 4
  br label %sw.epilog58

sw.bb42:                                          ; preds = %if.then33
  store i32 5, ptr %curpos, align 4
  br label %sw.epilog58

sw.bb43:                                          ; preds = %if.then33
  %29 = load i32, ptr %curpos, align 4
  %cmp44 = icmp eq i32 %29, 7
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb43
  br label %cond.end

cond.false:                                       ; preds = %sw.bb43
  %30 = load i32, ptr %curpos, align 4
  %cmp45 = icmp eq i32 %30, 22
  %31 = zext i1 %cmp45 to i64
  %cond = select i1 %cmp45, i32 25, i32 5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond46 = phi i32 [ 15, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond46, ptr %curpos, align 4
  br label %sw.epilog58

sw.bb47:                                          ; preds = %if.then33
  %32 = load i32, ptr %curpos, align 4
  %cmp48 = icmp eq i32 %32, 7
  br i1 %cmp48, label %cond.true49, label %cond.false50

cond.true49:                                      ; preds = %sw.bb47
  br label %cond.end53

cond.false50:                                     ; preds = %sw.bb47
  %33 = load i32, ptr %curpos, align 4
  %cmp51 = icmp eq i32 %33, 22
  %34 = zext i1 %cmp51 to i64
  %cond52 = select i1 %cmp51, i32 28, i32 12
  br label %cond.end53

cond.end53:                                       ; preds = %cond.false50, %cond.true49
  %cond54 = phi i32 [ 12, %cond.true49 ], [ %cond52, %cond.false50 ]
  store i32 %cond54, ptr %curpos, align 4
  br label %sw.epilog58

sw.bb55:                                          ; preds = %if.then33
  %35 = load i32, ptr %curpos, align 4
  %sub56 = sub nsw i32 %35, 3
  store i32 %sub56, ptr %curpos, align 4
  br label %sw.epilog58

sw.default57:                                     ; preds = %if.then33
  store i32 2, ptr %retval, align 4
  br label %return

sw.epilog58:                                      ; preds = %sw.bb55, %cond.end53, %cond.end, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36
  %36 = load i32, ptr %chpos, align 4
  %inc59 = add nsw i32 %36, 1
  store i32 %inc59, ptr %chpos, align 4
  %37 = load i32, ptr %chpos, align 4
  %cmp60 = icmp eq i32 %37, 16
  br i1 %cmp60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %sw.epilog58
  store i32 0, ptr %chpos, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %sw.epilog58
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %lor.lhs.false31
  %38 = load i32, ptr %curpos, align 4
  %cmp64 = icmp eq i32 %38, 30
  br i1 %cmp64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end63
  store i32 10, ptr %curpos, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end63
  %39 = load i32, ptr %curpos, align 4
  %idxprom67 = sext i32 %39 to i64
  %arrayidx68 = getelementptr inbounds [40 x i64], ptr %hits, i64 0, i64 %idxprom67
  %40 = load i64, ptr %arrayidx68, align 8
  %inc69 = add nsw i64 %40, 1
  store i64 %inc69, ptr %arrayidx68, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end66
  %41 = load i64, ptr %currolls, align 8
  %inc70 = add nsw i64 %41, 1
  store i64 %inc70, ptr %currolls, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc80, %for.end
  %42 = load i32, ptr %i, align 4
  %cmp72 = icmp slt i32 %42, 40
  br i1 %cmp72, label %for.body73, label %for.end82

for.body73:                                       ; preds = %for.cond71
  %43 = load i32, ptr %i, align 4
  %idxprom74 = sext i32 %43 to i64
  %arrayidx75 = getelementptr inbounds [40 x i64], ptr %hits, i64 0, i64 %idxprom74
  %44 = load i64, ptr %arrayidx75, align 8
  %45 = load i64, ptr %top0, align 8
  %arrayidx76 = getelementptr inbounds [40 x i64], ptr %hits, i64 0, i64 %45
  %46 = load i64, ptr %arrayidx76, align 8
  %cmp77 = icmp sgt i64 %44, %46
  br i1 %cmp77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %for.body73
  %47 = load i32, ptr %i, align 4
  %conv = sext i32 %47 to i64
  store i64 %conv, ptr %top0, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %for.body73
  br label %for.inc80

for.inc80:                                        ; preds = %if.end79
  %48 = load i32, ptr %i, align 4
  %inc81 = add nsw i32 %48, 1
  store i32 %inc81, ptr %i, align 4
  br label %for.cond71, !llvm.loop !7

for.end82:                                        ; preds = %for.cond71
  store i32 0, ptr %i, align 4
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc98, %for.end82
  %49 = load i32, ptr %i, align 4
  %cmp84 = icmp slt i32 %49, 40
  br i1 %cmp84, label %for.body86, label %for.end100

for.body86:                                       ; preds = %for.cond83
  %50 = load i32, ptr %i, align 4
  %idxprom87 = sext i32 %50 to i64
  %arrayidx88 = getelementptr inbounds [40 x i64], ptr %hits, i64 0, i64 %idxprom87
  %51 = load i64, ptr %arrayidx88, align 8
  %52 = load i64, ptr %top1, align 8
  %arrayidx89 = getelementptr inbounds [40 x i64], ptr %hits, i64 0, i64 %52
  %53 = load i64, ptr %arrayidx89, align 8
  %cmp90 = icmp sgt i64 %51, %53
  br i1 %cmp90, label %land.lhs.true, label %if.end97

land.lhs.true:                                    ; preds = %for.body86
  %54 = load i32, ptr %i, align 4
  %conv92 = sext i32 %54 to i64
  %55 = load i64, ptr %top0, align 8
  %cmp93 = icmp ne i64 %conv92, %55
  br i1 %cmp93, label %if.then95, label %if.end97

if.then95:                                        ; preds = %land.lhs.true
  %56 = load i32, ptr %i, align 4
  %conv96 = sext i32 %56 to i64
  store i64 %conv96, ptr %top1, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %land.lhs.true, %for.body86
  br label %for.inc98

for.inc98:                                        ; preds = %if.end97
  %57 = load i32, ptr %i, align 4
  %inc99 = add nsw i32 %57, 1
  store i32 %inc99, ptr %i, align 4
  br label %for.cond83, !llvm.loop !8

for.end100:                                       ; preds = %for.cond83
  store i32 0, ptr %i, align 4
  br label %for.cond101

for.cond101:                                      ; preds = %for.inc121, %for.end100
  %58 = load i32, ptr %i, align 4
  %cmp102 = icmp slt i32 %58, 40
  br i1 %cmp102, label %for.body104, label %for.end123

for.body104:                                      ; preds = %for.cond101
  %59 = load i32, ptr %i, align 4
  %idxprom105 = sext i32 %59 to i64
  %arrayidx106 = getelementptr inbounds [40 x i64], ptr %hits, i64 0, i64 %idxprom105
  %60 = load i64, ptr %arrayidx106, align 8
  %61 = load i64, ptr %top2, align 8
  %arrayidx107 = getelementptr inbounds [40 x i64], ptr %hits, i64 0, i64 %61
  %62 = load i64, ptr %arrayidx107, align 8
  %cmp108 = icmp sgt i64 %60, %62
  br i1 %cmp108, label %land.lhs.true110, label %if.end120

land.lhs.true110:                                 ; preds = %for.body104
  %63 = load i32, ptr %i, align 4
  %conv111 = sext i32 %63 to i64
  %64 = load i64, ptr %top0, align 8
  %cmp112 = icmp ne i64 %conv111, %64
  br i1 %cmp112, label %land.lhs.true114, label %if.end120

land.lhs.true114:                                 ; preds = %land.lhs.true110
  %65 = load i32, ptr %i, align 4
  %conv115 = sext i32 %65 to i64
  %66 = load i64, ptr %top1, align 8
  %cmp116 = icmp ne i64 %conv115, %66
  br i1 %cmp116, label %if.then118, label %if.end120

if.then118:                                       ; preds = %land.lhs.true114
  %67 = load i32, ptr %i, align 4
  %conv119 = sext i32 %67 to i64
  store i64 %conv119, ptr %top2, align 8
  br label %if.end120

if.end120:                                        ; preds = %if.then118, %land.lhs.true114, %land.lhs.true110, %for.body104
  br label %for.inc121

for.inc121:                                       ; preds = %if.end120
  %68 = load i32, ptr %i, align 4
  %inc122 = add nsw i32 %68, 1
  store i32 %inc122, ptr %i, align 4
  br label %for.cond101, !llvm.loop !9

for.end123:                                       ; preds = %for.cond101
  %69 = load i64, ptr %top0, align 8
  %70 = load i64, ptr %top1, align 8
  %71 = load i64, ptr %top2, align 8
  %call124 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %69, i64 noundef %70, i64 noundef %71)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end123, %sw.default57, %sw.default
  %72 = load i32, ptr %retval, align 4
  ret i32 %72
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @shuffle(ptr noundef %arr, i32 noundef %n) #0 {
entry:
  %arr.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %arr, ptr %arr.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call i32 @rand()
  %1 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %n.addr, align 4
  %rem = srem i32 %call, %1
  store i32 %rem, ptr %k, align 4
  %2 = load ptr, ptr %arr.addr, align 8
  %3 = load i32, ptr %n.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  store i32 %4, ptr %tmp, align 4
  %5 = load ptr, ptr %arr.addr, align 8
  %6 = load i32, ptr %k, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %5, i64 %idxprom1
  %7 = load i32, ptr %arrayidx2, align 4
  %8 = load ptr, ptr %arr.addr, align 8
  %9 = load i32, ptr %n.addr, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %8, i64 %idxprom3
  store i32 %7, ptr %arrayidx4, align 4
  %10 = load i32, ptr %tmp, align 4
  %11 = load ptr, ptr %arr.addr, align 8
  %12 = load i32, ptr %k, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %11, i64 %idxprom5
  store i32 %10, ptr %arrayidx6, align 4
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @roll(i32 noundef %sides) #0 {
entry:
  %sides.addr = alloca i32, align 4
  store i32 %sides, ptr %sides.addr, align 4
  %call = call i32 @rand()
  %0 = load i32, ptr %sides.addr, align 4
  %rem = srem i32 %call, %0
  %add = add nsw i32 %rem, 1
  ret i32 %add
}

declare i32 @printf(ptr noundef, ...) #3

declare i32 @rand() #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @euler_problem_84()
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
