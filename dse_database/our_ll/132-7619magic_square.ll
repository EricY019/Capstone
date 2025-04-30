; ModuleID = 'code/132-7619magic_square.c'
source_filename = "code/132-7619magic_square.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Searching up to %d...\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"sum=%d, centre=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%d, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"---------------------\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Finished. Reached the final stage %d times.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %N = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %v = alloca i32, align 4
  %o = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %w = alloca i32, align 4
  %sum = alloca i32, align 4
  %centre_square = alloca i32, align 4
  %centre = alloca i32, align 4
  %count_i = alloca i32, align 4
  %count_j = alloca i32, align 4
  %count_k = alloca i32, align 4
  %count_l = alloca i32, align 4
  %count_m = alloca i32, align 4
  %count_n = alloca i32, align 4
  %count_x = alloca i32, align 4
  %count_y = alloca i32, align 4
  %count_z = alloca i32, align 4
  %count_w = alloca i32, align 4
  %max_root = alloca i32, align 4
  %tmp = alloca i32, align 4
  %remainder = alloca i32, align 4
  %l_square = alloca i32, align 4
  %m_square = alloca i32, align 4
  %n_square = alloca i32, align 4
  %x_square = alloca i32, align 4
  %y_square = alloca i32, align 4
  %z_square = alloca i32, align 4
  %w_square = alloca i32, align 4
  %roots = alloca i32*, align 8
  %memory = alloca i16*, align 8
  %iterations = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1000, i32* %N, align 4
  %0 = load i32, i32* %N, align 4
  %conv = zext i32 %0 to i64
  %mul = mul i64 2, %conv
  %1 = load i32, i32* %N, align 4
  %conv1 = zext i32 %1 to i64
  %mul2 = mul i64 %mul, %conv1
  %2 = load i32, i32* %N, align 4
  %conv3 = zext i32 %2 to i64
  %mul4 = mul i64 %mul2, %conv3
  %call = call noalias align 16 i8* @malloc(i64 %mul4) #3
  %3 = bitcast i8* %call to i16*
  store i16* %3, i16** %memory, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %N, align 4
  %6 = load i32, i32* %N, align 4
  %mul5 = mul i32 %5, %6
  %7 = load i32, i32* %N, align 4
  %mul6 = mul i32 %mul5, %7
  %cmp = icmp ult i32 %4, %mul6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i16*, i16** %memory, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %add = add i32 %10, 1
  store i32 %add, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %N, align 4
  %12 = load i32, i32* %N, align 4
  %mul8 = mul i32 %11, %12
  store i32 %mul8, i32* %max_root, align 4
  %13 = load i32, i32* %max_root, align 4
  %conv9 = zext i32 %13 to i64
  %mul10 = mul i64 4, %conv9
  %add11 = add i64 %mul10, 1
  %call12 = call noalias align 16 i8* @malloc(i64 %add11) #3
  %14 = bitcast i8* %call12 to i32*
  store i32* %14, i32** %roots, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc20, %for.end
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %max_root, align 4
  %add14 = add i32 %16, 1
  %cmp15 = icmp ult i32 %15, %add14
  br i1 %cmp15, label %for.body17, label %for.end22

for.body17:                                       ; preds = %for.cond13
  %17 = load i32*, i32** %roots, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom18 = zext i32 %18 to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %17, i64 %idxprom18
  store i32 0, i32* %arrayidx19, align 4
  br label %for.inc20

for.inc20:                                        ; preds = %for.body17
  %19 = load i32, i32* %i, align 4
  %add21 = add i32 %19, 1
  store i32 %add21, i32* %i, align 4
  br label %for.cond13, !llvm.loop !6

for.end22:                                        ; preds = %for.cond13
  store i32 0, i32* %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc30, %for.end22
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %N, align 4
  %cmp24 = icmp ule i32 %20, %21
  br i1 %cmp24, label %for.body26, label %for.end32

for.body26:                                       ; preds = %for.cond23
  %22 = load i32, i32* %i, align 4
  %23 = load i32*, i32** %roots, align 8
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %i, align 4
  %mul27 = mul i32 %24, %25
  %idxprom28 = zext i32 %mul27 to i64
  %arrayidx29 = getelementptr inbounds i32, i32* %23, i64 %idxprom28
  store i32 %22, i32* %arrayidx29, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body26
  %26 = load i32, i32* %i, align 4
  %add31 = add i32 %26, 1
  store i32 %add31, i32* %i, align 4
  br label %for.cond23, !llvm.loop !7

for.end32:                                        ; preds = %for.cond23
  store i32 0, i32* %iterations, align 4
  %27 = load i32, i32* %N, align 4
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 3, i32* %i, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc365, %for.end32
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %N, align 4
  %cmp35 = icmp ule i32 %28, %29
  br i1 %cmp35, label %for.body37, label %for.end367

for.body37:                                       ; preds = %for.cond34
  store i32 2, i32* %j, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc356, %for.body37
  %30 = load i32, i32* %j, align 4
  %31 = load i32, i32* %i, align 4
  %cmp39 = icmp ult i32 %30, %31
  br i1 %cmp39, label %for.body41, label %for.end358

for.body41:                                       ; preds = %for.cond38
  store i32 1, i32* %k, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc353, %for.body41
  %32 = load i32, i32* %k, align 4
  %33 = load i32, i32* %j, align 4
  %cmp43 = icmp ult i32 %32, %33
  br i1 %cmp43, label %for.body45, label %for.end355

for.body45:                                       ; preds = %for.cond42
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %i, align 4
  %mul46 = mul i32 %34, %35
  %36 = load i32, i32* %j, align 4
  %37 = load i32, i32* %j, align 4
  %mul47 = mul i32 %36, %37
  %add48 = add i32 %mul46, %mul47
  %38 = load i32, i32* %k, align 4
  %39 = load i32, i32* %k, align 4
  %mul49 = mul i32 %38, %39
  %add50 = add i32 %add48, %mul49
  store i32 %add50, i32* %sum, align 4
  %40 = load i32, i32* %sum, align 4
  %rem = urem i32 %40, 3
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body45
  br label %for.inc353

if.end:                                           ; preds = %for.body45
  %41 = load i32, i32* %sum, align 4
  %div = udiv i32 %41, 3
  store i32 %div, i32* %centre_square, align 4
  %42 = load i32*, i32** %roots, align 8
  %43 = load i32, i32* %centre_square, align 4
  %idxprom51 = zext i32 %43 to i64
  %arrayidx52 = getelementptr inbounds i32, i32* %42, i64 %idxprom51
  %44 = load i32, i32* %arrayidx52, align 4
  store i32 %44, i32* %centre, align 4
  %45 = load i32, i32* %centre, align 4
  %tobool53 = icmp ne i32 %45, 0
  br i1 %tobool53, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end
  br label %for.inc353

if.end55:                                         ; preds = %if.end
  %46 = load i16*, i16** %memory, align 8
  %47 = load i32, i32* %centre_square, align 4
  %48 = load i32, i32* %i, align 4
  %add56 = add i32 %47, %48
  %idxprom57 = zext i32 %add56 to i64
  %arrayidx58 = getelementptr inbounds i16, i16* %46, i64 %idxprom57
  %49 = load i16, i16* %arrayidx58, align 2
  %conv59 = sext i16 %49 to i32
  %add60 = add nsw i32 %conv59, 1
  %conv61 = trunc i32 %add60 to i16
  store i16 %conv61, i16* %arrayidx58, align 2
  %conv62 = sext i16 %conv61 to i32
  store i32 %conv62, i32* %count_i, align 4
  %50 = load i16*, i16** %memory, align 8
  %51 = load i32, i32* %centre_square, align 4
  %52 = load i32, i32* %j, align 4
  %add63 = add i32 %51, %52
  %idxprom64 = zext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds i16, i16* %50, i64 %idxprom64
  %53 = load i16, i16* %arrayidx65, align 2
  %conv66 = sext i16 %53 to i32
  %add67 = add nsw i32 %conv66, 1
  %conv68 = trunc i32 %add67 to i16
  store i16 %conv68, i16* %arrayidx65, align 2
  %conv69 = sext i16 %conv68 to i32
  store i32 %conv69, i32* %count_j, align 4
  %54 = load i16*, i16** %memory, align 8
  %55 = load i32, i32* %centre_square, align 4
  %56 = load i32, i32* %k, align 4
  %add70 = add i32 %55, %56
  %idxprom71 = zext i32 %add70 to i64
  %arrayidx72 = getelementptr inbounds i16, i16* %54, i64 %idxprom71
  %57 = load i16, i16* %arrayidx72, align 2
  %conv73 = sext i16 %57 to i32
  %add74 = add nsw i32 %conv73, 1
  %conv75 = trunc i32 %add74 to i16
  store i16 %conv75, i16* %arrayidx72, align 2
  %conv76 = sext i16 %conv75 to i32
  store i32 %conv76, i32* %count_k, align 4
  %58 = load i16*, i16** %memory, align 8
  %59 = load i32, i32* %centre_square, align 4
  %60 = load i32, i32* %centre, align 4
  %add77 = add i32 %59, %60
  %idxprom78 = zext i32 %add77 to i64
  %arrayidx79 = getelementptr inbounds i16, i16* %58, i64 %idxprom78
  %61 = load i16, i16* %arrayidx79, align 2
  %conv80 = sext i16 %61 to i32
  %cmp81 = icmp slt i32 %conv80, 4
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end55
  br label %for.inc353

if.end84:                                         ; preds = %if.end55
  %62 = load i32, i32* %count_i, align 4
  %cmp85 = icmp ult i32 %62, 2
  br i1 %cmp85, label %land.lhs.true, label %if.end93

land.lhs.true:                                    ; preds = %if.end84
  %63 = load i32, i32* %count_j, align 4
  %cmp87 = icmp ult i32 %63, 2
  br i1 %cmp87, label %land.lhs.true89, label %if.end93

land.lhs.true89:                                  ; preds = %land.lhs.true
  %64 = load i32, i32* %count_k, align 4
  %cmp90 = icmp ult i32 %64, 2
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %land.lhs.true89
  br label %for.inc353

if.end93:                                         ; preds = %land.lhs.true89, %land.lhs.true, %if.end84
  %65 = load i32, i32* %sum, align 4
  %66 = load i32, i32* %centre_square, align 4
  %sub = sub i32 %65, %66
  %67 = load i32, i32* %i, align 4
  %68 = load i32, i32* %i, align 4
  %mul94 = mul i32 %67, %68
  %sub95 = sub i32 %sub, %mul94
  store i32 %sub95, i32* %l_square, align 4
  %69 = load i32, i32* %sum, align 4
  %70 = load i32, i32* %centre_square, align 4
  %sub96 = sub i32 %69, %70
  %71 = load i32, i32* %j, align 4
  %72 = load i32, i32* %j, align 4
  %mul97 = mul i32 %71, %72
  %sub98 = sub i32 %sub96, %mul97
  store i32 %sub98, i32* %m_square, align 4
  %73 = load i32, i32* %sum, align 4
  %74 = load i32, i32* %centre_square, align 4
  %sub99 = sub i32 %73, %74
  %75 = load i32, i32* %k, align 4
  %76 = load i32, i32* %k, align 4
  %mul100 = mul i32 %75, %76
  %sub101 = sub i32 %sub99, %mul100
  store i32 %sub101, i32* %n_square, align 4
  %77 = load i32, i32* %l_square, align 4
  %cmp102 = icmp sgt i32 %77, 0
  br i1 %cmp102, label %land.lhs.true104, label %cond.false

land.lhs.true104:                                 ; preds = %if.end93
  %78 = load i32, i32* %l_square, align 4
  %79 = load i32, i32* %max_root, align 4
  %cmp105 = icmp ule i32 %78, %79
  br i1 %cmp105, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true104
  %80 = load i32*, i32** %roots, align 8
  %81 = load i32, i32* %l_square, align 4
  %idxprom107 = sext i32 %81 to i64
  %arrayidx108 = getelementptr inbounds i32, i32* %80, i64 %idxprom107
  %82 = load i32, i32* %arrayidx108, align 4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true104, %if.end93
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %82, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %l, align 4
  %83 = load i32, i32* %m_square, align 4
  %cmp109 = icmp sgt i32 %83, 0
  br i1 %cmp109, label %land.lhs.true111, label %cond.false117

land.lhs.true111:                                 ; preds = %cond.end
  %84 = load i32, i32* %m_square, align 4
  %85 = load i32, i32* %max_root, align 4
  %cmp112 = icmp ule i32 %84, %85
  br i1 %cmp112, label %cond.true114, label %cond.false117

cond.true114:                                     ; preds = %land.lhs.true111
  %86 = load i32*, i32** %roots, align 8
  %87 = load i32, i32* %m_square, align 4
  %idxprom115 = sext i32 %87 to i64
  %arrayidx116 = getelementptr inbounds i32, i32* %86, i64 %idxprom115
  %88 = load i32, i32* %arrayidx116, align 4
  br label %cond.end118

cond.false117:                                    ; preds = %land.lhs.true111, %cond.end
  br label %cond.end118

cond.end118:                                      ; preds = %cond.false117, %cond.true114
  %cond119 = phi i32 [ %88, %cond.true114 ], [ 0, %cond.false117 ]
  store i32 %cond119, i32* %m, align 4
  %89 = load i32, i32* %n_square, align 4
  %cmp120 = icmp sgt i32 %89, 0
  br i1 %cmp120, label %land.lhs.true122, label %cond.false128

land.lhs.true122:                                 ; preds = %cond.end118
  %90 = load i32, i32* %n_square, align 4
  %91 = load i32, i32* %max_root, align 4
  %cmp123 = icmp ule i32 %90, %91
  br i1 %cmp123, label %cond.true125, label %cond.false128

cond.true125:                                     ; preds = %land.lhs.true122
  %92 = load i32*, i32** %roots, align 8
  %93 = load i32, i32* %n_square, align 4
  %idxprom126 = sext i32 %93 to i64
  %arrayidx127 = getelementptr inbounds i32, i32* %92, i64 %idxprom126
  %94 = load i32, i32* %arrayidx127, align 4
  br label %cond.end129

cond.false128:                                    ; preds = %land.lhs.true122, %cond.end118
  br label %cond.end129

cond.end129:                                      ; preds = %cond.false128, %cond.true125
  %cond130 = phi i32 [ %94, %cond.true125 ], [ 0, %cond.false128 ]
  store i32 %cond130, i32* %n, align 4
  %95 = load i32, i32* %i, align 4
  %96 = load i32, i32* %l, align 4
  %cmp131 = icmp eq i32 %95, %96
  br i1 %cmp131, label %cond.true133, label %cond.false134

cond.true133:                                     ; preds = %cond.end129
  br label %cond.end135

cond.false134:                                    ; preds = %cond.end129
  %97 = load i32, i32* %l, align 4
  br label %cond.end135

cond.end135:                                      ; preds = %cond.false134, %cond.true133
  %cond136 = phi i32 [ 0, %cond.true133 ], [ %97, %cond.false134 ]
  store i32 %cond136, i32* %l, align 4
  %98 = load i32, i32* %j, align 4
  %99 = load i32, i32* %m, align 4
  %cmp137 = icmp eq i32 %98, %99
  br i1 %cmp137, label %cond.true139, label %cond.false140

cond.true139:                                     ; preds = %cond.end135
  br label %cond.end141

cond.false140:                                    ; preds = %cond.end135
  %100 = load i32, i32* %m, align 4
  br label %cond.end141

cond.end141:                                      ; preds = %cond.false140, %cond.true139
  %cond142 = phi i32 [ 0, %cond.true139 ], [ %100, %cond.false140 ]
  store i32 %cond142, i32* %m, align 4
  %101 = load i32, i32* %k, align 4
  %102 = load i32, i32* %n, align 4
  %cmp143 = icmp eq i32 %101, %102
  br i1 %cmp143, label %cond.true145, label %cond.false146

cond.true145:                                     ; preds = %cond.end141
  br label %cond.end147

cond.false146:                                    ; preds = %cond.end141
  %103 = load i32, i32* %n, align 4
  br label %cond.end147

cond.end147:                                      ; preds = %cond.false146, %cond.true145
  %cond148 = phi i32 [ 0, %cond.true145 ], [ %103, %cond.false146 ]
  store i32 %cond148, i32* %n, align 4
  %104 = load i16*, i16** %memory, align 8
  %105 = load i32, i32* %centre_square, align 4
  %106 = load i32, i32* %l, align 4
  %add149 = add i32 %105, %106
  %idxprom150 = zext i32 %add149 to i64
  %arrayidx151 = getelementptr inbounds i16, i16* %104, i64 %idxprom150
  %107 = load i16, i16* %arrayidx151, align 2
  %conv152 = sext i16 %107 to i32
  store i32 %conv152, i32* %count_l, align 4
  %108 = load i16*, i16** %memory, align 8
  %109 = load i32, i32* %centre_square, align 4
  %110 = load i32, i32* %m, align 4
  %add153 = add i32 %109, %110
  %idxprom154 = zext i32 %add153 to i64
  %arrayidx155 = getelementptr inbounds i16, i16* %108, i64 %idxprom154
  %111 = load i16, i16* %arrayidx155, align 2
  %conv156 = sext i16 %111 to i32
  store i32 %conv156, i32* %count_m, align 4
  %112 = load i16*, i16** %memory, align 8
  %113 = load i32, i32* %centre_square, align 4
  %114 = load i32, i32* %n, align 4
  %add157 = add i32 %113, %114
  %idxprom158 = zext i32 %add157 to i64
  %arrayidx159 = getelementptr inbounds i16, i16* %112, i64 %idxprom158
  %115 = load i16, i16* %arrayidx159, align 2
  %conv160 = sext i16 %115 to i32
  store i32 %conv160, i32* %count_n, align 4
  %116 = load i32, i32* %count_l, align 4
  %cmp161 = icmp ult i32 %116, 2
  br i1 %cmp161, label %cond.true163, label %cond.false164

cond.true163:                                     ; preds = %cond.end147
  br label %cond.end165

cond.false164:                                    ; preds = %cond.end147
  %117 = load i32, i32* %l, align 4
  br label %cond.end165

cond.end165:                                      ; preds = %cond.false164, %cond.true163
  %cond166 = phi i32 [ 0, %cond.true163 ], [ %117, %cond.false164 ]
  store i32 %cond166, i32* %l, align 4
  %118 = load i32, i32* %count_m, align 4
  %cmp167 = icmp ult i32 %118, 2
  br i1 %cmp167, label %cond.true169, label %cond.false170

cond.true169:                                     ; preds = %cond.end165
  br label %cond.end171

cond.false170:                                    ; preds = %cond.end165
  %119 = load i32, i32* %m, align 4
  br label %cond.end171

cond.end171:                                      ; preds = %cond.false170, %cond.true169
  %cond172 = phi i32 [ 0, %cond.true169 ], [ %119, %cond.false170 ]
  store i32 %cond172, i32* %m, align 4
  %120 = load i32, i32* %count_n, align 4
  %cmp173 = icmp ult i32 %120, 2
  br i1 %cmp173, label %cond.true175, label %cond.false176

cond.true175:                                     ; preds = %cond.end171
  br label %cond.end177

cond.false176:                                    ; preds = %cond.end171
  %121 = load i32, i32* %n, align 4
  br label %cond.end177

cond.end177:                                      ; preds = %cond.false176, %cond.true175
  %cond178 = phi i32 [ 0, %cond.true175 ], [ %121, %cond.false176 ]
  store i32 %cond178, i32* %n, align 4
  %122 = load i32, i32* %l, align 4
  %tobool179 = icmp ne i32 %122, 0
  br i1 %tobool179, label %if.end184, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end177
  %123 = load i32, i32* %m, align 4
  %tobool180 = icmp ne i32 %123, 0
  br i1 %tobool180, label %if.end184, label %lor.lhs.false181

lor.lhs.false181:                                 ; preds = %lor.lhs.false
  %124 = load i32, i32* %n, align 4
  %tobool182 = icmp ne i32 %124, 0
  br i1 %tobool182, label %if.end184, label %if.then183

if.then183:                                       ; preds = %lor.lhs.false181
  br label %for.inc353

if.end184:                                        ; preds = %lor.lhs.false181, %lor.lhs.false, %cond.end177
  %125 = load i32, i32* %l, align 4
  %tobool185 = icmp ne i32 %125, 0
  br i1 %tobool185, label %if.then186, label %if.end187

if.then186:                                       ; preds = %if.end184
  %126 = load i32, i32* %i, align 4
  store i32 %126, i32* %v, align 4
  %127 = load i32, i32* %l, align 4
  store i32 %127, i32* %o, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.then186, %if.end184
  %128 = load i32, i32* %m, align 4
  %tobool188 = icmp ne i32 %128, 0
  br i1 %tobool188, label %if.then189, label %if.end190

if.then189:                                       ; preds = %if.end187
  %129 = load i32, i32* %j, align 4
  store i32 %129, i32* %v, align 4
  %130 = load i32, i32* %m, align 4
  store i32 %130, i32* %o, align 4
  br label %if.end190

if.end190:                                        ; preds = %if.then189, %if.end187
  %131 = load i32, i32* %n, align 4
  %tobool191 = icmp ne i32 %131, 0
  br i1 %tobool191, label %if.then192, label %if.end193

if.then192:                                       ; preds = %if.end190
  %132 = load i32, i32* %k, align 4
  store i32 %132, i32* %v, align 4
  %133 = load i32, i32* %n, align 4
  store i32 %133, i32* %o, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.then192, %if.end190
  %134 = load i32, i32* %v, align 4
  %135 = load i32, i32* %o, align 4
  %cmp194 = icmp ugt i32 %134, %135
  br i1 %cmp194, label %if.then196, label %if.end197

if.then196:                                       ; preds = %if.end193
  %136 = load i32, i32* %v, align 4
  store i32 %136, i32* %tmp, align 4
  %137 = load i32, i32* %o, align 4
  store i32 %137, i32* %v, align 4
  %138 = load i32, i32* %tmp, align 4
  store i32 %138, i32* %o, align 4
  br label %if.end197

if.end197:                                        ; preds = %if.then196, %if.end193
  store i32 1, i32* %x, align 4
  br label %for.cond198

for.cond198:                                      ; preds = %for.inc350, %if.end197
  %139 = load i32, i32* %x, align 4
  %140 = load i32, i32* %N, align 4
  %cmp199 = icmp ule i32 %139, %140
  br i1 %cmp199, label %for.body201, label %for.end352

for.body201:                                      ; preds = %for.cond198
  %141 = load i32, i32* %x, align 4
  %142 = load i32, i32* %v, align 4
  %cmp202 = icmp eq i32 %141, %142
  br i1 %cmp202, label %if.then207, label %lor.lhs.false204

lor.lhs.false204:                                 ; preds = %for.body201
  %143 = load i32, i32* %x, align 4
  %144 = load i32, i32* %o, align 4
  %cmp205 = icmp eq i32 %143, %144
  br i1 %cmp205, label %if.then207, label %if.end208

if.then207:                                       ; preds = %lor.lhs.false204, %for.body201
  br label %for.inc350

if.end208:                                        ; preds = %lor.lhs.false204
  %145 = load i16*, i16** %memory, align 8
  %146 = load i32, i32* %centre_square, align 4
  %147 = load i32, i32* %x, align 4
  %add209 = add i32 %146, %147
  %idxprom210 = zext i32 %add209 to i64
  %arrayidx211 = getelementptr inbounds i16, i16* %145, i64 %idxprom210
  %148 = load i16, i16* %arrayidx211, align 2
  %conv212 = sext i16 %148 to i32
  store i32 %conv212, i32* %count_x, align 4
  %149 = load i32, i32* %count_x, align 4
  %cmp213 = icmp ult i32 %149, 2
  br i1 %cmp213, label %if.then215, label %if.end216

if.then215:                                       ; preds = %if.end208
  br label %for.inc350

if.end216:                                        ; preds = %if.end208
  %150 = load i32, i32* %x, align 4
  %151 = load i32, i32* %x, align 4
  %mul217 = mul i32 %150, %151
  store i32 %mul217, i32* %x_square, align 4
  %152 = load i32, i32* %sum, align 4
  %153 = load i32, i32* %centre_square, align 4
  %sub218 = sub i32 %152, %153
  %154 = load i32, i32* %x_square, align 4
  %sub219 = sub i32 %sub218, %154
  store i32 %sub219, i32* %y_square, align 4
  %155 = load i32, i32* %x_square, align 4
  %156 = load i32, i32* %y_square, align 4
  %cmp220 = icmp sge i32 %155, %156
  br i1 %cmp220, label %if.then222, label %if.end223

if.then222:                                       ; preds = %if.end216
  br label %for.end352

if.end223:                                        ; preds = %if.end216
  %157 = load i32, i32* %y_square, align 4
  %cmp224 = icmp sgt i32 %157, 0
  br i1 %cmp224, label %land.lhs.true226, label %cond.false232

land.lhs.true226:                                 ; preds = %if.end223
  %158 = load i32, i32* %y_square, align 4
  %159 = load i32, i32* %max_root, align 4
  %cmp227 = icmp ule i32 %158, %159
  br i1 %cmp227, label %cond.true229, label %cond.false232

cond.true229:                                     ; preds = %land.lhs.true226
  %160 = load i32*, i32** %roots, align 8
  %161 = load i32, i32* %y_square, align 4
  %idxprom230 = sext i32 %161 to i64
  %arrayidx231 = getelementptr inbounds i32, i32* %160, i64 %idxprom230
  %162 = load i32, i32* %arrayidx231, align 4
  br label %cond.end233

cond.false232:                                    ; preds = %land.lhs.true226, %if.end223
  br label %cond.end233

cond.end233:                                      ; preds = %cond.false232, %cond.true229
  %cond234 = phi i32 [ %162, %cond.true229 ], [ 0, %cond.false232 ]
  store i32 %cond234, i32* %y, align 4
  %163 = load i16*, i16** %memory, align 8
  %164 = load i32, i32* %centre_square, align 4
  %165 = load i32, i32* %y, align 4
  %add235 = add i32 %164, %165
  %idxprom236 = zext i32 %add235 to i64
  %arrayidx237 = getelementptr inbounds i16, i16* %163, i64 %idxprom236
  %166 = load i16, i16* %arrayidx237, align 2
  %conv238 = sext i16 %166 to i32
  store i32 %conv238, i32* %count_y, align 4
  %167 = load i32, i32* %count_y, align 4
  %cmp239 = icmp ult i32 %167, 2
  br i1 %cmp239, label %if.then241, label %if.end242

if.then241:                                       ; preds = %cond.end233
  br label %for.inc350

if.end242:                                        ; preds = %cond.end233
  %168 = load i32, i32* %x, align 4
  %add243 = add i32 %168, 1
  store i32 %add243, i32* %z, align 4
  br label %for.cond244

for.cond244:                                      ; preds = %for.inc347, %if.end242
  %169 = load i32, i32* %z, align 4
  %170 = load i32, i32* %N, align 4
  %cmp245 = icmp ule i32 %169, %170
  br i1 %cmp245, label %for.body247, label %for.end349

for.body247:                                      ; preds = %for.cond244
  %171 = load i32, i32* %z, align 4
  %172 = load i32, i32* %v, align 4
  %cmp248 = icmp eq i32 %171, %172
  br i1 %cmp248, label %if.then256, label %lor.lhs.false250

lor.lhs.false250:                                 ; preds = %for.body247
  %173 = load i32, i32* %z, align 4
  %174 = load i32, i32* %o, align 4
  %cmp251 = icmp eq i32 %173, %174
  br i1 %cmp251, label %if.then256, label %lor.lhs.false253

lor.lhs.false253:                                 ; preds = %lor.lhs.false250
  %175 = load i32, i32* %z, align 4
  %176 = load i32, i32* %y, align 4
  %cmp254 = icmp eq i32 %175, %176
  br i1 %cmp254, label %if.then256, label %if.end257

if.then256:                                       ; preds = %lor.lhs.false253, %lor.lhs.false250, %for.body247
  br label %for.inc347

if.end257:                                        ; preds = %lor.lhs.false253
  %177 = load i16*, i16** %memory, align 8
  %178 = load i32, i32* %centre_square, align 4
  %179 = load i32, i32* %z, align 4
  %add258 = add i32 %178, %179
  %idxprom259 = zext i32 %add258 to i64
  %arrayidx260 = getelementptr inbounds i16, i16* %177, i64 %idxprom259
  %180 = load i16, i16* %arrayidx260, align 2
  %conv261 = sext i16 %180 to i32
  store i32 %conv261, i32* %count_z, align 4
  %181 = load i32, i32* %count_z, align 4
  %cmp262 = icmp ult i32 %181, 2
  br i1 %cmp262, label %if.then264, label %if.end265

if.then264:                                       ; preds = %if.end257
  br label %for.inc347

if.end265:                                        ; preds = %if.end257
  %182 = load i32, i32* %z, align 4
  %183 = load i32, i32* %z, align 4
  %mul266 = mul i32 %182, %183
  store i32 %mul266, i32* %z_square, align 4
  %184 = load i32, i32* %sum, align 4
  %185 = load i32, i32* %centre_square, align 4
  %sub267 = sub i32 %184, %185
  %186 = load i32, i32* %z_square, align 4
  %sub268 = sub i32 %sub267, %186
  store i32 %sub268, i32* %w_square, align 4
  %187 = load i32, i32* %z_square, align 4
  %188 = load i32, i32* %w_square, align 4
  %cmp269 = icmp sge i32 %187, %188
  br i1 %cmp269, label %if.then271, label %if.end272

if.then271:                                       ; preds = %if.end265
  br label %for.end349

if.end272:                                        ; preds = %if.end265
  %189 = load i32, i32* %w_square, align 4
  %cmp273 = icmp sgt i32 %189, 0
  br i1 %cmp273, label %land.lhs.true275, label %cond.false281

land.lhs.true275:                                 ; preds = %if.end272
  %190 = load i32, i32* %w_square, align 4
  %191 = load i32, i32* %max_root, align 4
  %cmp276 = icmp ule i32 %190, %191
  br i1 %cmp276, label %cond.true278, label %cond.false281

cond.true278:                                     ; preds = %land.lhs.true275
  %192 = load i32*, i32** %roots, align 8
  %193 = load i32, i32* %w_square, align 4
  %idxprom279 = sext i32 %193 to i64
  %arrayidx280 = getelementptr inbounds i32, i32* %192, i64 %idxprom279
  %194 = load i32, i32* %arrayidx280, align 4
  br label %cond.end282

cond.false281:                                    ; preds = %land.lhs.true275, %if.end272
  br label %cond.end282

cond.end282:                                      ; preds = %cond.false281, %cond.true278
  %cond283 = phi i32 [ %194, %cond.true278 ], [ 0, %cond.false281 ]
  store i32 %cond283, i32* %w, align 4
  %195 = load i16*, i16** %memory, align 8
  %196 = load i32, i32* %centre_square, align 4
  %197 = load i32, i32* %w, align 4
  %add284 = add i32 %196, %197
  %idxprom285 = zext i32 %add284 to i64
  %arrayidx286 = getelementptr inbounds i16, i16* %195, i64 %idxprom285
  %198 = load i16, i16* %arrayidx286, align 2
  %conv287 = sext i16 %198 to i32
  store i32 %conv287, i32* %count_w, align 4
  %199 = load i32, i32* %count_w, align 4
  %cmp288 = icmp ult i32 %199, 2
  br i1 %cmp288, label %if.then290, label %if.end291

if.then290:                                       ; preds = %cond.end282
  br label %for.inc347

if.end291:                                        ; preds = %cond.end282
  %200 = load i32, i32* %v, align 4
  %201 = load i32, i32* %x, align 4
  %add292 = add i32 %200, %201
  %202 = load i32, i32* %w, align 4
  %add293 = add i32 %add292, %202
  %203 = load i32, i32* %sum, align 4
  %cmp294 = icmp eq i32 %add293, %203
  br i1 %cmp294, label %if.then321, label %lor.lhs.false296

lor.lhs.false296:                                 ; preds = %if.end291
  %204 = load i32, i32* %v, align 4
  %205 = load i32, i32* %y, align 4
  %add297 = add i32 %204, %205
  %206 = load i32, i32* %z, align 4
  %add298 = add i32 %add297, %206
  %207 = load i32, i32* %sum, align 4
  %cmp299 = icmp eq i32 %add298, %207
  br i1 %cmp299, label %if.then321, label %lor.lhs.false301

lor.lhs.false301:                                 ; preds = %lor.lhs.false296
  %208 = load i32, i32* %v, align 4
  %209 = load i32, i32* %y, align 4
  %add302 = add i32 %208, %209
  %210 = load i32, i32* %w, align 4
  %add303 = add i32 %add302, %210
  %211 = load i32, i32* %sum, align 4
  %cmp304 = icmp eq i32 %add303, %211
  br i1 %cmp304, label %if.then321, label %lor.lhs.false306

lor.lhs.false306:                                 ; preds = %lor.lhs.false301
  %212 = load i32, i32* %o, align 4
  %213 = load i32, i32* %x, align 4
  %add307 = add i32 %212, %213
  %214 = load i32, i32* %z, align 4
  %add308 = add i32 %add307, %214
  %215 = load i32, i32* %sum, align 4
  %cmp309 = icmp eq i32 %add308, %215
  br i1 %cmp309, label %if.then321, label %lor.lhs.false311

lor.lhs.false311:                                 ; preds = %lor.lhs.false306
  %216 = load i32, i32* %o, align 4
  %217 = load i32, i32* %x, align 4
  %add312 = add i32 %216, %217
  %218 = load i32, i32* %w, align 4
  %add313 = add i32 %add312, %218
  %219 = load i32, i32* %sum, align 4
  %cmp314 = icmp eq i32 %add313, %219
  br i1 %cmp314, label %if.then321, label %lor.lhs.false316

lor.lhs.false316:                                 ; preds = %lor.lhs.false311
  %220 = load i32, i32* %o, align 4
  %221 = load i32, i32* %y, align 4
  %add317 = add i32 %220, %221
  %222 = load i32, i32* %z, align 4
  %add318 = add i32 %add317, %222
  %223 = load i32, i32* %sum, align 4
  %cmp319 = icmp eq i32 %add318, %223
  br i1 %cmp319, label %if.then321, label %if.end327

if.then321:                                       ; preds = %lor.lhs.false316, %lor.lhs.false311, %lor.lhs.false306, %lor.lhs.false301, %lor.lhs.false296, %if.end291
  %224 = load i32, i32* %sum, align 4
  %225 = load i32, i32* %centre_square, align 4
  %call322 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %224, i32 %225)
  %226 = load i32, i32* %v, align 4
  %227 = load i32, i32* %o, align 4
  %call323 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %226, i32 %227)
  %228 = load i32, i32* %x, align 4
  %229 = load i32, i32* %y, align 4
  %call324 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %228, i32 %229)
  %230 = load i32, i32* %z, align 4
  %231 = load i32, i32* %w, align 4
  %call325 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %230, i32 %231)
  %call326 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end327

if.end327:                                        ; preds = %if.then321, %lor.lhs.false316
  %232 = load i32, i32* %sum, align 4
  %mul328 = mul i32 3, %232
  %233 = load i32, i32* %v, align 4
  %sub329 = sub i32 %mul328, %233
  %234 = load i32, i32* %o, align 4
  %add330 = add i32 %sub329, %234
  %235 = load i32, i32* %x, align 4
  %add331 = add i32 %add330, %235
  %236 = load i32, i32* %y, align 4
  %add332 = add i32 %add331, %236
  %237 = load i32, i32* %z, align 4
  %add333 = add i32 %add332, %237
  %238 = load i32, i32* %w, align 4
  %add334 = add i32 %add333, %238
  store i32 %add334, i32* %remainder, align 4
  %239 = load i32, i32* %remainder, align 4
  %mul335 = mul i32 %239, 3
  %div336 = udiv i32 %mul335, 2
  %240 = load i32, i32* %sum, align 4
  %cmp337 = icmp eq i32 %div336, %240
  br i1 %cmp337, label %if.then339, label %if.end345

if.then339:                                       ; preds = %if.end327
  %241 = load i32, i32* %sum, align 4
  %242 = load i32, i32* %centre_square, align 4
  %call340 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %241, i32 %242)
  %243 = load i32, i32* %v, align 4
  %244 = load i32, i32* %o, align 4
  %call341 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %243, i32 %244)
  %245 = load i32, i32* %x, align 4
  %246 = load i32, i32* %y, align 4
  %call342 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %245, i32 %246)
  %247 = load i32, i32* %z, align 4
  %248 = load i32, i32* %w, align 4
  %call343 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %247, i32 %248)
  %call344 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end345

if.end345:                                        ; preds = %if.then339, %if.end327
  %249 = load i32, i32* %iterations, align 4
  %add346 = add nsw i32 %249, 1
  store i32 %add346, i32* %iterations, align 4
  br label %for.inc347

for.inc347:                                       ; preds = %if.end345, %if.then290, %if.then264, %if.then256
  %250 = load i32, i32* %z, align 4
  %add348 = add i32 %250, 1
  store i32 %add348, i32* %z, align 4
  br label %for.cond244, !llvm.loop !8

for.end349:                                       ; preds = %if.then271, %for.cond244
  br label %for.inc350

for.inc350:                                       ; preds = %for.end349, %if.then241, %if.then215, %if.then207
  %251 = load i32, i32* %x, align 4
  %add351 = add i32 %251, 1
  store i32 %add351, i32* %x, align 4
  br label %for.cond198, !llvm.loop !9

for.end352:                                       ; preds = %if.then222, %for.cond198
  br label %for.inc353

for.inc353:                                       ; preds = %for.end352, %if.then183, %if.then92, %if.then83, %if.then54, %if.then
  %252 = load i32, i32* %k, align 4
  %add354 = add i32 %252, 1
  store i32 %add354, i32* %k, align 4
  br label %for.cond42, !llvm.loop !10

for.end355:                                       ; preds = %for.cond42
  br label %for.inc356

for.inc356:                                       ; preds = %for.end355
  %253 = load i32, i32* %j, align 4
  %add357 = add i32 %253, 1
  store i32 %add357, i32* %j, align 4
  br label %for.cond38, !llvm.loop !11

for.end358:                                       ; preds = %for.cond38
  %254 = load i32, i32* %i, align 4
  %rem359 = urem i32 %254, 1000
  %cmp360 = icmp eq i32 %rem359, 0
  br i1 %cmp360, label %if.then362, label %if.end364

if.then362:                                       ; preds = %for.end358
  %255 = load i32, i32* %i, align 4
  %call363 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %255)
  br label %if.end364

if.end364:                                        ; preds = %if.then362, %for.end358
  br label %for.inc365

for.inc365:                                       ; preds = %if.end364
  %256 = load i32, i32* %i, align 4
  %add366 = add i32 %256, 1
  store i32 %add366, i32* %i, align 4
  br label %for.cond34, !llvm.loop !12

for.end367:                                       ; preds = %for.cond34
  %257 = load i32, i32* %iterations, align 4
  %call368 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %257)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
