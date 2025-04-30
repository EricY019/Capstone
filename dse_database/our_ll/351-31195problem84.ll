; ModuleID = 'code/351-31195problem84.c'
source_filename = "code/351-31195problem84.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.euler_problem_84.chance = private unnamed_addr constant [16 x i32] [i32 0, i32 10, i32 11, i32 24, i32 39, i32 5, i32 -1, i32 -1, i32 -2, i32 -3, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10], align 16
@__const.euler_problem_84.comchest = private unnamed_addr constant [16 x i32] [i32 0, i32 10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10], align 16
@.str = private unnamed_addr constant [14 x i8] c"%02d%02d%02d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ERROR\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @euler_problem_84() #0 {
entry:
  %retval = alloca i32, align 4
  %hits = alloca [40 x i64], align 16
  %chance = alloca [16 x i32], align 16
  %comchest = alloca [16 x i32], align 16
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
  %0 = bitcast [40 x i64]* %hits to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 320, i1 false)
  %1 = bitcast [16 x i32]* %chance to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([16 x i32]* @__const.euler_problem_84.chance to i8*), i64 64, i1 false)
  %2 = bitcast [16 x i32]* %comchest to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 bitcast ([16 x i32]* @__const.euler_problem_84.comchest to i8*), i64 64, i1 false)
  store i32 0, i32* %curpos, align 4
  store i32 0, i32* %die0, align 4
  store i32 0, i32* %die1, align 4
  store i32 4, i32* %SIDES, align 4
  store i32 0, i32* %doubles, align 4
  store i32 0, i32* %ccpos, align 4
  store i32 0, i32* %chpos, align 4
  store i32 0, i32* %i, align 4
  store i64 10000000, i64* %MAXROLLS, align 8
  store i64 0, i64* %currolls, align 8
  store i64 0, i64* %top0, align 8
  store i64 0, i64* %top1, align 8
  store i64 0, i64* %top2, align 8
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %chance, i64 0, i64 0
  call void @shuffle(i32* %arraydecay, i32 16)
  %arraydecay1 = getelementptr inbounds [16 x i32], [16 x i32]* %comchest, i64 0, i64 0
  call void @shuffle(i32* %arraydecay1, i32 16)
  store i64 0, i64* %currolls, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %currolls, align 8
  %4 = load i64, i64* %MAXROLLS, align 8
  %cmp = icmp slt i64 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %SIDES, align 4
  %call = call i32 @roll(i32 %5)
  store i32 %call, i32* %die0, align 4
  %6 = load i32, i32* %SIDES, align 4
  %call2 = call i32 @roll(i32 %6)
  store i32 %call2, i32* %die1, align 4
  %7 = load i32, i32* %curpos, align 4
  %8 = load i32, i32* %die0, align 4
  %add = add nsw i32 %7, %8
  %9 = load i32, i32* %die1, align 4
  %add3 = add nsw i32 %add, %9
  %cmp4 = icmp sgt i32 %add3, 39
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %curpos, align 4
  %11 = load i32, i32* %die0, align 4
  %add5 = add nsw i32 %10, %11
  %12 = load i32, i32* %die1, align 4
  %add6 = add nsw i32 %add5, %12
  %sub = sub nsw i32 %add6, 39
  store i32 %sub, i32* %curpos, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %13 = load i32, i32* %curpos, align 4
  %14 = load i32, i32* %die0, align 4
  %add7 = add nsw i32 %13, %14
  %15 = load i32, i32* %die1, align 4
  %add8 = add nsw i32 %add7, %15
  store i32 %add8, i32* %curpos, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load i32, i32* %die0, align 4
  %17 = load i32, i32* %die1, align 4
  %cmp9 = icmp eq i32 %16, %17
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %if.end
  %18 = load i32, i32* %doubles, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %doubles, align 4
  br label %if.end12

if.else11:                                        ; preds = %if.end
  store i32 0, i32* %doubles, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.then10
  %19 = load i32, i32* %doubles, align 4
  %cmp13 = icmp eq i32 %19, 3
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  store i32 10, i32* %curpos, align 4
  store i32 0, i32* %doubles, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12
  %20 = load i32, i32* %curpos, align 4
  %cmp16 = icmp eq i32 %20, 2
  br i1 %cmp16, label %if.then20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end15
  %21 = load i32, i32* %curpos, align 4
  %cmp17 = icmp eq i32 %21, 17
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false
  %22 = load i32, i32* %curpos, align 4
  %cmp19 = icmp eq i32 %22, 33
  br i1 %cmp19, label %if.then20, label %if.end27

if.then20:                                        ; preds = %lor.lhs.false18, %lor.lhs.false, %if.end15
  %23 = load i32, i32* %ccpos, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* %comchest, i64 0, i64 %idxprom
  %24 = load i32, i32* %arrayidx, align 4
  switch i32 %24, label %sw.default [
    i32 -10, label %sw.bb
    i32 0, label %sw.bb21
    i32 10, label %sw.bb22
  ]

sw.bb:                                            ; preds = %if.then20
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.then20
  store i32 0, i32* %curpos, align 4
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.then20
  store i32 10, i32* %curpos, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then20
  store i32 1, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb22, %sw.bb21, %sw.bb
  %25 = load i32, i32* %ccpos, align 4
  %inc23 = add nsw i32 %25, 1
  store i32 %inc23, i32* %ccpos, align 4
  %26 = load i32, i32* %ccpos, align 4
  %cmp24 = icmp eq i32 %26, 16
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %sw.epilog
  store i32 0, i32* %ccpos, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %sw.epilog
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %lor.lhs.false18
  %27 = load i32, i32* %curpos, align 4
  %cmp28 = icmp eq i32 %27, 7
  br i1 %cmp28, label %if.then33, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.end27
  %28 = load i32, i32* %curpos, align 4
  %cmp30 = icmp eq i32 %28, 22
  br i1 %cmp30, label %if.then33, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %lor.lhs.false29
  %29 = load i32, i32* %curpos, align 4
  %cmp32 = icmp eq i32 %29, 36
  br i1 %cmp32, label %if.then33, label %if.end63

if.then33:                                        ; preds = %lor.lhs.false31, %lor.lhs.false29, %if.end27
  %30 = load i32, i32* %chpos, align 4
  %idxprom34 = sext i32 %30 to i64
  %arrayidx35 = getelementptr inbounds [16 x i32], [16 x i32]* %chance, i64 0, i64 %idxprom34
  %31 = load i32, i32* %arrayidx35, align 4
  switch i32 %31, label %sw.default57 [
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
  store i32 0, i32* %curpos, align 4
  br label %sw.epilog58

sw.bb38:                                          ; preds = %if.then33
  store i32 10, i32* %curpos, align 4
  br label %sw.epilog58

sw.bb39:                                          ; preds = %if.then33
  store i32 11, i32* %curpos, align 4
  br label %sw.epilog58

sw.bb40:                                          ; preds = %if.then33
  store i32 24, i32* %curpos, align 4
  br label %sw.epilog58

sw.bb41:                                          ; preds = %if.then33
  store i32 39, i32* %curpos, align 4
  br label %sw.epilog58

sw.bb42:                                          ; preds = %if.then33
  store i32 5, i32* %curpos, align 4
  br label %sw.epilog58

sw.bb43:                                          ; preds = %if.then33
  %32 = load i32, i32* %curpos, align 4
  %cmp44 = icmp eq i32 %32, 7
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb43
  br label %cond.end

cond.false:                                       ; preds = %sw.bb43
  %33 = load i32, i32* %curpos, align 4
  %cmp45 = icmp eq i32 %33, 22
  %34 = zext i1 %cmp45 to i64
  %cond = select i1 %cmp45, i32 25, i32 5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond46 = phi i32 [ 15, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond46, i32* %curpos, align 4
  br label %sw.epilog58

sw.bb47:                                          ; preds = %if.then33
  %35 = load i32, i32* %curpos, align 4
  %cmp48 = icmp eq i32 %35, 7
  br i1 %cmp48, label %cond.true49, label %cond.false50

cond.true49:                                      ; preds = %sw.bb47
  br label %cond.end53

cond.false50:                                     ; preds = %sw.bb47
  %36 = load i32, i32* %curpos, align 4
  %cmp51 = icmp eq i32 %36, 22
  %37 = zext i1 %cmp51 to i64
  %cond52 = select i1 %cmp51, i32 28, i32 12
  br label %cond.end53

cond.end53:                                       ; preds = %cond.false50, %cond.true49
  %cond54 = phi i32 [ 12, %cond.true49 ], [ %cond52, %cond.false50 ]
  store i32 %cond54, i32* %curpos, align 4
  br label %sw.epilog58

sw.bb55:                                          ; preds = %if.then33
  %38 = load i32, i32* %curpos, align 4
  %sub56 = sub nsw i32 %38, 3
  store i32 %sub56, i32* %curpos, align 4
  br label %sw.epilog58

sw.default57:                                     ; preds = %if.then33
  store i32 2, i32* %retval, align 4
  br label %return

sw.epilog58:                                      ; preds = %sw.bb55, %cond.end53, %cond.end, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36
  %39 = load i32, i32* %chpos, align 4
  %inc59 = add nsw i32 %39, 1
  store i32 %inc59, i32* %chpos, align 4
  %40 = load i32, i32* %chpos, align 4
  %cmp60 = icmp eq i32 %40, 16
  br i1 %cmp60, label %if.then61, label %if.end62

if.then61:                                        ; preds = %sw.epilog58
  store i32 0, i32* %chpos, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %sw.epilog58
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %lor.lhs.false31
  %41 = load i32, i32* %curpos, align 4
  %cmp64 = icmp eq i32 %41, 30
  br i1 %cmp64, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.end63
  store i32 10, i32* %curpos, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end63
  %42 = load i32, i32* %curpos, align 4
  %idxprom67 = sext i32 %42 to i64
  %arrayidx68 = getelementptr inbounds [40 x i64], [40 x i64]* %hits, i64 0, i64 %idxprom67
  %43 = load i64, i64* %arrayidx68, align 8
  %inc69 = add nsw i64 %43, 1
  store i64 %inc69, i64* %arrayidx68, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end66
  %44 = load i64, i64* %currolls, align 8
  %inc70 = add nsw i64 %44, 1
  store i64 %inc70, i64* %currolls, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc80, %for.end
  %45 = load i32, i32* %i, align 4
  %cmp72 = icmp slt i32 %45, 40
  br i1 %cmp72, label %for.body73, label %for.end82

for.body73:                                       ; preds = %for.cond71
  %46 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %46 to i64
  %arrayidx75 = getelementptr inbounds [40 x i64], [40 x i64]* %hits, i64 0, i64 %idxprom74
  %47 = load i64, i64* %arrayidx75, align 8
  %48 = load i64, i64* %top0, align 8
  %arrayidx76 = getelementptr inbounds [40 x i64], [40 x i64]* %hits, i64 0, i64 %48
  %49 = load i64, i64* %arrayidx76, align 8
  %cmp77 = icmp sgt i64 %47, %49
  br i1 %cmp77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %for.body73
  %50 = load i32, i32* %i, align 4
  %conv = sext i32 %50 to i64
  store i64 %conv, i64* %top0, align 8
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %for.body73
  br label %for.inc80

for.inc80:                                        ; preds = %if.end79
  %51 = load i32, i32* %i, align 4
  %inc81 = add nsw i32 %51, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond71, !llvm.loop !6

for.end82:                                        ; preds = %for.cond71
  store i32 0, i32* %i, align 4
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc98, %for.end82
  %52 = load i32, i32* %i, align 4
  %cmp84 = icmp slt i32 %52, 40
  br i1 %cmp84, label %for.body86, label %for.end100

for.body86:                                       ; preds = %for.cond83
  %53 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %53 to i64
  %arrayidx88 = getelementptr inbounds [40 x i64], [40 x i64]* %hits, i64 0, i64 %idxprom87
  %54 = load i64, i64* %arrayidx88, align 8
  %55 = load i64, i64* %top1, align 8
  %arrayidx89 = getelementptr inbounds [40 x i64], [40 x i64]* %hits, i64 0, i64 %55
  %56 = load i64, i64* %arrayidx89, align 8
  %cmp90 = icmp sgt i64 %54, %56
  br i1 %cmp90, label %land.lhs.true, label %if.end97

land.lhs.true:                                    ; preds = %for.body86
  %57 = load i32, i32* %i, align 4
  %conv92 = sext i32 %57 to i64
  %58 = load i64, i64* %top0, align 8
  %cmp93 = icmp ne i64 %conv92, %58
  br i1 %cmp93, label %if.then95, label %if.end97

if.then95:                                        ; preds = %land.lhs.true
  %59 = load i32, i32* %i, align 4
  %conv96 = sext i32 %59 to i64
  store i64 %conv96, i64* %top1, align 8
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %land.lhs.true, %for.body86
  br label %for.inc98

for.inc98:                                        ; preds = %if.end97
  %60 = load i32, i32* %i, align 4
  %inc99 = add nsw i32 %60, 1
  store i32 %inc99, i32* %i, align 4
  br label %for.cond83, !llvm.loop !7

for.end100:                                       ; preds = %for.cond83
  store i32 0, i32* %i, align 4
  br label %for.cond101

for.cond101:                                      ; preds = %for.inc121, %for.end100
  %61 = load i32, i32* %i, align 4
  %cmp102 = icmp slt i32 %61, 40
  br i1 %cmp102, label %for.body104, label %for.end123

for.body104:                                      ; preds = %for.cond101
  %62 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %62 to i64
  %arrayidx106 = getelementptr inbounds [40 x i64], [40 x i64]* %hits, i64 0, i64 %idxprom105
  %63 = load i64, i64* %arrayidx106, align 8
  %64 = load i64, i64* %top2, align 8
  %arrayidx107 = getelementptr inbounds [40 x i64], [40 x i64]* %hits, i64 0, i64 %64
  %65 = load i64, i64* %arrayidx107, align 8
  %cmp108 = icmp sgt i64 %63, %65
  br i1 %cmp108, label %land.lhs.true110, label %if.end120

land.lhs.true110:                                 ; preds = %for.body104
  %66 = load i32, i32* %i, align 4
  %conv111 = sext i32 %66 to i64
  %67 = load i64, i64* %top0, align 8
  %cmp112 = icmp ne i64 %conv111, %67
  br i1 %cmp112, label %land.lhs.true114, label %if.end120

land.lhs.true114:                                 ; preds = %land.lhs.true110
  %68 = load i32, i32* %i, align 4
  %conv115 = sext i32 %68 to i64
  %69 = load i64, i64* %top1, align 8
  %cmp116 = icmp ne i64 %conv115, %69
  br i1 %cmp116, label %if.then118, label %if.end120

if.then118:                                       ; preds = %land.lhs.true114
  %70 = load i32, i32* %i, align 4
  %conv119 = sext i32 %70 to i64
  store i64 %conv119, i64* %top2, align 8
  br label %if.end120

if.end120:                                        ; preds = %if.then118, %land.lhs.true114, %land.lhs.true110, %for.body104
  br label %for.inc121

for.inc121:                                       ; preds = %if.end120
  %71 = load i32, i32* %i, align 4
  %inc122 = add nsw i32 %71, 1
  store i32 %inc122, i32* %i, align 4
  br label %for.cond101, !llvm.loop !8

for.end123:                                       ; preds = %for.cond101
  %72 = load i64, i64* %top0, align 8
  %73 = load i64, i64* %top1, align 8
  %74 = load i64, i64* %top2, align 8
  %call124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %72, i64 %73, i64 %74)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end123, %sw.default57, %sw.default
  %75 = load i32, i32* %retval, align 4
  ret i32 %75
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shuffle(i32* %arr, i32 %n) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call i32 @rand() #5
  %1 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %n.addr, align 4
  %rem = srem i32 %call, %1
  store i32 %rem, i32* %k, align 4
  %2 = load i32*, i32** %arr.addr, align 8
  %3 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %tmp, align 4
  %5 = load i32*, i32** %arr.addr, align 8
  %6 = load i32, i32* %k, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %8 = load i32*, i32** %arr.addr, align 8
  %9 = load i32, i32* %n.addr, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 %idxprom3
  store i32 %7, i32* %arrayidx4, align 4
  %10 = load i32, i32* %tmp, align 4
  %11 = load i32*, i32** %arr.addr, align 8
  %12 = load i32, i32* %k, align 4
  %idxprom5 = sext i32 %12 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %11, i64 %idxprom5
  store i32 %10, i32* %arrayidx6, align 4
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @roll(i32 %sides) #0 {
entry:
  %sides.addr = alloca i32, align 4
  store i32 %sides, i32* %sides.addr, align 4
  %call = call i32 @rand() #5
  %0 = load i32, i32* %sides.addr, align 4
  %rem = srem i32 %call, %0
  %add = add nsw i32 %rem, 1
  ret i32 %add
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare dso_local i32 @rand() #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @euler_problem_84()
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
