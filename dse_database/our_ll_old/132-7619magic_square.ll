; ModuleID = './code/132-7619magic_square.c'
source_filename = "./code/132-7619magic_square.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [23 x i8] c"Searching up to %d...\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"sum=%d, centre=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%d, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"---------------------\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Finished. Reached the final stage %d times.\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
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
  %roots = alloca ptr, align 8
  %memory = alloca ptr, align 8
  %iterations = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 1000, ptr %N, align 4
  %0 = load i32, ptr %N, align 4
  %conv = zext i32 %0 to i64
  %mul = mul i64 2, %conv
  %1 = load i32, ptr %N, align 4
  %conv1 = zext i32 %1 to i64
  %mul2 = mul i64 %mul, %conv1
  %2 = load i32, ptr %N, align 4
  %conv3 = zext i32 %2 to i64
  %mul4 = mul i64 %mul2, %conv3
  %call = call ptr @malloc(i64 noundef %mul4) #3
  store ptr %call, ptr %memory, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %N, align 4
  %5 = load i32, ptr %N, align 4
  %mul5 = mul i32 %4, %5
  %6 = load i32, ptr %N, align 4
  %mul6 = mul i32 %mul5, %6
  %cmp = icmp ult i32 %3, %mul6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %memory, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds i16, ptr %7, i64 %idxprom
  store i16 0, ptr %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %add = add i32 %9, 1
  store i32 %add, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %10 = load i32, ptr %N, align 4
  %11 = load i32, ptr %N, align 4
  %mul8 = mul i32 %10, %11
  store i32 %mul8, ptr %max_root, align 4
  %12 = load i32, ptr %max_root, align 4
  %conv9 = zext i32 %12 to i64
  %mul10 = mul i64 4, %conv9
  %add11 = add i64 %mul10, 1
  %call12 = call ptr @malloc(i64 noundef %add11) #3
  store ptr %call12, ptr %roots, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc20, %for.end
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %max_root, align 4
  %add14 = add i32 %14, 1
  %cmp15 = icmp ult i32 %13, %add14
  br i1 %cmp15, label %for.body17, label %for.end22

for.body17:                                       ; preds = %for.cond13
  %15 = load ptr, ptr %roots, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom18 = zext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %15, i64 %idxprom18
  store i32 0, ptr %arrayidx19, align 4
  br label %for.inc20

for.inc20:                                        ; preds = %for.body17
  %17 = load i32, ptr %i, align 4
  %add21 = add i32 %17, 1
  store i32 %add21, ptr %i, align 4
  br label %for.cond13, !llvm.loop !7

for.end22:                                        ; preds = %for.cond13
  store i32 0, ptr %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc30, %for.end22
  %18 = load i32, ptr %i, align 4
  %19 = load i32, ptr %N, align 4
  %cmp24 = icmp ule i32 %18, %19
  br i1 %cmp24, label %for.body26, label %for.end32

for.body26:                                       ; preds = %for.cond23
  %20 = load i32, ptr %i, align 4
  %21 = load ptr, ptr %roots, align 8
  %22 = load i32, ptr %i, align 4
  %23 = load i32, ptr %i, align 4
  %mul27 = mul i32 %22, %23
  %idxprom28 = zext i32 %mul27 to i64
  %arrayidx29 = getelementptr inbounds i32, ptr %21, i64 %idxprom28
  store i32 %20, ptr %arrayidx29, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body26
  %24 = load i32, ptr %i, align 4
  %add31 = add i32 %24, 1
  store i32 %add31, ptr %i, align 4
  br label %for.cond23, !llvm.loop !8

for.end32:                                        ; preds = %for.cond23
  store i32 0, ptr %iterations, align 4
  %25 = load i32, ptr %N, align 4
  %call33 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %25)
  store i32 3, ptr %i, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc365, %for.end32
  %26 = load i32, ptr %i, align 4
  %27 = load i32, ptr %N, align 4
  %cmp35 = icmp ule i32 %26, %27
  br i1 %cmp35, label %for.body37, label %for.end367

for.body37:                                       ; preds = %for.cond34
  store i32 2, ptr %j, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc356, %for.body37
  %28 = load i32, ptr %j, align 4
  %29 = load i32, ptr %i, align 4
  %cmp39 = icmp ult i32 %28, %29
  br i1 %cmp39, label %for.body41, label %for.end358

for.body41:                                       ; preds = %for.cond38
  store i32 1, ptr %k, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc353, %for.body41
  %30 = load i32, ptr %k, align 4
  %31 = load i32, ptr %j, align 4
  %cmp43 = icmp ult i32 %30, %31
  br i1 %cmp43, label %for.body45, label %for.end355

for.body45:                                       ; preds = %for.cond42
  %32 = load i32, ptr %i, align 4
  %33 = load i32, ptr %i, align 4
  %mul46 = mul i32 %32, %33
  %34 = load i32, ptr %j, align 4
  %35 = load i32, ptr %j, align 4
  %mul47 = mul i32 %34, %35
  %add48 = add i32 %mul46, %mul47
  %36 = load i32, ptr %k, align 4
  %37 = load i32, ptr %k, align 4
  %mul49 = mul i32 %36, %37
  %add50 = add i32 %add48, %mul49
  store i32 %add50, ptr %sum, align 4
  %38 = load i32, ptr %sum, align 4
  %rem = urem i32 %38, 3
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body45
  br label %for.inc353

if.end:                                           ; preds = %for.body45
  %39 = load i32, ptr %sum, align 4
  %div = udiv i32 %39, 3
  store i32 %div, ptr %centre_square, align 4
  %40 = load ptr, ptr %roots, align 8
  %41 = load i32, ptr %centre_square, align 4
  %idxprom51 = zext i32 %41 to i64
  %arrayidx52 = getelementptr inbounds i32, ptr %40, i64 %idxprom51
  %42 = load i32, ptr %arrayidx52, align 4
  store i32 %42, ptr %centre, align 4
  %43 = load i32, ptr %centre, align 4
  %tobool53 = icmp ne i32 %43, 0
  br i1 %tobool53, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end
  br label %for.inc353

if.end55:                                         ; preds = %if.end
  %44 = load ptr, ptr %memory, align 8
  %45 = load i32, ptr %centre_square, align 4
  %46 = load i32, ptr %i, align 4
  %add56 = add i32 %45, %46
  %idxprom57 = zext i32 %add56 to i64
  %arrayidx58 = getelementptr inbounds i16, ptr %44, i64 %idxprom57
  %47 = load i16, ptr %arrayidx58, align 2
  %conv59 = sext i16 %47 to i32
  %add60 = add nsw i32 %conv59, 1
  %conv61 = trunc i32 %add60 to i16
  store i16 %conv61, ptr %arrayidx58, align 2
  %conv62 = sext i16 %conv61 to i32
  store i32 %conv62, ptr %count_i, align 4
  %48 = load ptr, ptr %memory, align 8
  %49 = load i32, ptr %centre_square, align 4
  %50 = load i32, ptr %j, align 4
  %add63 = add i32 %49, %50
  %idxprom64 = zext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds i16, ptr %48, i64 %idxprom64
  %51 = load i16, ptr %arrayidx65, align 2
  %conv66 = sext i16 %51 to i32
  %add67 = add nsw i32 %conv66, 1
  %conv68 = trunc i32 %add67 to i16
  store i16 %conv68, ptr %arrayidx65, align 2
  %conv69 = sext i16 %conv68 to i32
  store i32 %conv69, ptr %count_j, align 4
  %52 = load ptr, ptr %memory, align 8
  %53 = load i32, ptr %centre_square, align 4
  %54 = load i32, ptr %k, align 4
  %add70 = add i32 %53, %54
  %idxprom71 = zext i32 %add70 to i64
  %arrayidx72 = getelementptr inbounds i16, ptr %52, i64 %idxprom71
  %55 = load i16, ptr %arrayidx72, align 2
  %conv73 = sext i16 %55 to i32
  %add74 = add nsw i32 %conv73, 1
  %conv75 = trunc i32 %add74 to i16
  store i16 %conv75, ptr %arrayidx72, align 2
  %conv76 = sext i16 %conv75 to i32
  store i32 %conv76, ptr %count_k, align 4
  %56 = load ptr, ptr %memory, align 8
  %57 = load i32, ptr %centre_square, align 4
  %58 = load i32, ptr %centre, align 4
  %add77 = add i32 %57, %58
  %idxprom78 = zext i32 %add77 to i64
  %arrayidx79 = getelementptr inbounds i16, ptr %56, i64 %idxprom78
  %59 = load i16, ptr %arrayidx79, align 2
  %conv80 = sext i16 %59 to i32
  %cmp81 = icmp slt i32 %conv80, 4
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.end55
  br label %for.inc353

if.end84:                                         ; preds = %if.end55
  %60 = load i32, ptr %count_i, align 4
  %cmp85 = icmp ult i32 %60, 2
  br i1 %cmp85, label %land.lhs.true, label %if.end93

land.lhs.true:                                    ; preds = %if.end84
  %61 = load i32, ptr %count_j, align 4
  %cmp87 = icmp ult i32 %61, 2
  br i1 %cmp87, label %land.lhs.true89, label %if.end93

land.lhs.true89:                                  ; preds = %land.lhs.true
  %62 = load i32, ptr %count_k, align 4
  %cmp90 = icmp ult i32 %62, 2
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %land.lhs.true89
  br label %for.inc353

if.end93:                                         ; preds = %land.lhs.true89, %land.lhs.true, %if.end84
  %63 = load i32, ptr %sum, align 4
  %64 = load i32, ptr %centre_square, align 4
  %sub = sub i32 %63, %64
  %65 = load i32, ptr %i, align 4
  %66 = load i32, ptr %i, align 4
  %mul94 = mul i32 %65, %66
  %sub95 = sub i32 %sub, %mul94
  store i32 %sub95, ptr %l_square, align 4
  %67 = load i32, ptr %sum, align 4
  %68 = load i32, ptr %centre_square, align 4
  %sub96 = sub i32 %67, %68
  %69 = load i32, ptr %j, align 4
  %70 = load i32, ptr %j, align 4
  %mul97 = mul i32 %69, %70
  %sub98 = sub i32 %sub96, %mul97
  store i32 %sub98, ptr %m_square, align 4
  %71 = load i32, ptr %sum, align 4
  %72 = load i32, ptr %centre_square, align 4
  %sub99 = sub i32 %71, %72
  %73 = load i32, ptr %k, align 4
  %74 = load i32, ptr %k, align 4
  %mul100 = mul i32 %73, %74
  %sub101 = sub i32 %sub99, %mul100
  store i32 %sub101, ptr %n_square, align 4
  %75 = load i32, ptr %l_square, align 4
  %cmp102 = icmp sgt i32 %75, 0
  br i1 %cmp102, label %land.lhs.true104, label %cond.false

land.lhs.true104:                                 ; preds = %if.end93
  %76 = load i32, ptr %l_square, align 4
  %77 = load i32, ptr %max_root, align 4
  %cmp105 = icmp ule i32 %76, %77
  br i1 %cmp105, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true104
  %78 = load ptr, ptr %roots, align 8
  %79 = load i32, ptr %l_square, align 4
  %idxprom107 = sext i32 %79 to i64
  %arrayidx108 = getelementptr inbounds i32, ptr %78, i64 %idxprom107
  %80 = load i32, ptr %arrayidx108, align 4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true104, %if.end93
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %80, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %l, align 4
  %81 = load i32, ptr %m_square, align 4
  %cmp109 = icmp sgt i32 %81, 0
  br i1 %cmp109, label %land.lhs.true111, label %cond.false117

land.lhs.true111:                                 ; preds = %cond.end
  %82 = load i32, ptr %m_square, align 4
  %83 = load i32, ptr %max_root, align 4
  %cmp112 = icmp ule i32 %82, %83
  br i1 %cmp112, label %cond.true114, label %cond.false117

cond.true114:                                     ; preds = %land.lhs.true111
  %84 = load ptr, ptr %roots, align 8
  %85 = load i32, ptr %m_square, align 4
  %idxprom115 = sext i32 %85 to i64
  %arrayidx116 = getelementptr inbounds i32, ptr %84, i64 %idxprom115
  %86 = load i32, ptr %arrayidx116, align 4
  br label %cond.end118

cond.false117:                                    ; preds = %land.lhs.true111, %cond.end
  br label %cond.end118

cond.end118:                                      ; preds = %cond.false117, %cond.true114
  %cond119 = phi i32 [ %86, %cond.true114 ], [ 0, %cond.false117 ]
  store i32 %cond119, ptr %m, align 4
  %87 = load i32, ptr %n_square, align 4
  %cmp120 = icmp sgt i32 %87, 0
  br i1 %cmp120, label %land.lhs.true122, label %cond.false128

land.lhs.true122:                                 ; preds = %cond.end118
  %88 = load i32, ptr %n_square, align 4
  %89 = load i32, ptr %max_root, align 4
  %cmp123 = icmp ule i32 %88, %89
  br i1 %cmp123, label %cond.true125, label %cond.false128

cond.true125:                                     ; preds = %land.lhs.true122
  %90 = load ptr, ptr %roots, align 8
  %91 = load i32, ptr %n_square, align 4
  %idxprom126 = sext i32 %91 to i64
  %arrayidx127 = getelementptr inbounds i32, ptr %90, i64 %idxprom126
  %92 = load i32, ptr %arrayidx127, align 4
  br label %cond.end129

cond.false128:                                    ; preds = %land.lhs.true122, %cond.end118
  br label %cond.end129

cond.end129:                                      ; preds = %cond.false128, %cond.true125
  %cond130 = phi i32 [ %92, %cond.true125 ], [ 0, %cond.false128 ]
  store i32 %cond130, ptr %n, align 4
  %93 = load i32, ptr %i, align 4
  %94 = load i32, ptr %l, align 4
  %cmp131 = icmp eq i32 %93, %94
  br i1 %cmp131, label %cond.true133, label %cond.false134

cond.true133:                                     ; preds = %cond.end129
  br label %cond.end135

cond.false134:                                    ; preds = %cond.end129
  %95 = load i32, ptr %l, align 4
  br label %cond.end135

cond.end135:                                      ; preds = %cond.false134, %cond.true133
  %cond136 = phi i32 [ 0, %cond.true133 ], [ %95, %cond.false134 ]
  store i32 %cond136, ptr %l, align 4
  %96 = load i32, ptr %j, align 4
  %97 = load i32, ptr %m, align 4
  %cmp137 = icmp eq i32 %96, %97
  br i1 %cmp137, label %cond.true139, label %cond.false140

cond.true139:                                     ; preds = %cond.end135
  br label %cond.end141

cond.false140:                                    ; preds = %cond.end135
  %98 = load i32, ptr %m, align 4
  br label %cond.end141

cond.end141:                                      ; preds = %cond.false140, %cond.true139
  %cond142 = phi i32 [ 0, %cond.true139 ], [ %98, %cond.false140 ]
  store i32 %cond142, ptr %m, align 4
  %99 = load i32, ptr %k, align 4
  %100 = load i32, ptr %n, align 4
  %cmp143 = icmp eq i32 %99, %100
  br i1 %cmp143, label %cond.true145, label %cond.false146

cond.true145:                                     ; preds = %cond.end141
  br label %cond.end147

cond.false146:                                    ; preds = %cond.end141
  %101 = load i32, ptr %n, align 4
  br label %cond.end147

cond.end147:                                      ; preds = %cond.false146, %cond.true145
  %cond148 = phi i32 [ 0, %cond.true145 ], [ %101, %cond.false146 ]
  store i32 %cond148, ptr %n, align 4
  %102 = load ptr, ptr %memory, align 8
  %103 = load i32, ptr %centre_square, align 4
  %104 = load i32, ptr %l, align 4
  %add149 = add i32 %103, %104
  %idxprom150 = zext i32 %add149 to i64
  %arrayidx151 = getelementptr inbounds i16, ptr %102, i64 %idxprom150
  %105 = load i16, ptr %arrayidx151, align 2
  %conv152 = sext i16 %105 to i32
  store i32 %conv152, ptr %count_l, align 4
  %106 = load ptr, ptr %memory, align 8
  %107 = load i32, ptr %centre_square, align 4
  %108 = load i32, ptr %m, align 4
  %add153 = add i32 %107, %108
  %idxprom154 = zext i32 %add153 to i64
  %arrayidx155 = getelementptr inbounds i16, ptr %106, i64 %idxprom154
  %109 = load i16, ptr %arrayidx155, align 2
  %conv156 = sext i16 %109 to i32
  store i32 %conv156, ptr %count_m, align 4
  %110 = load ptr, ptr %memory, align 8
  %111 = load i32, ptr %centre_square, align 4
  %112 = load i32, ptr %n, align 4
  %add157 = add i32 %111, %112
  %idxprom158 = zext i32 %add157 to i64
  %arrayidx159 = getelementptr inbounds i16, ptr %110, i64 %idxprom158
  %113 = load i16, ptr %arrayidx159, align 2
  %conv160 = sext i16 %113 to i32
  store i32 %conv160, ptr %count_n, align 4
  %114 = load i32, ptr %count_l, align 4
  %cmp161 = icmp ult i32 %114, 2
  br i1 %cmp161, label %cond.true163, label %cond.false164

cond.true163:                                     ; preds = %cond.end147
  br label %cond.end165

cond.false164:                                    ; preds = %cond.end147
  %115 = load i32, ptr %l, align 4
  br label %cond.end165

cond.end165:                                      ; preds = %cond.false164, %cond.true163
  %cond166 = phi i32 [ 0, %cond.true163 ], [ %115, %cond.false164 ]
  store i32 %cond166, ptr %l, align 4
  %116 = load i32, ptr %count_m, align 4
  %cmp167 = icmp ult i32 %116, 2
  br i1 %cmp167, label %cond.true169, label %cond.false170

cond.true169:                                     ; preds = %cond.end165
  br label %cond.end171

cond.false170:                                    ; preds = %cond.end165
  %117 = load i32, ptr %m, align 4
  br label %cond.end171

cond.end171:                                      ; preds = %cond.false170, %cond.true169
  %cond172 = phi i32 [ 0, %cond.true169 ], [ %117, %cond.false170 ]
  store i32 %cond172, ptr %m, align 4
  %118 = load i32, ptr %count_n, align 4
  %cmp173 = icmp ult i32 %118, 2
  br i1 %cmp173, label %cond.true175, label %cond.false176

cond.true175:                                     ; preds = %cond.end171
  br label %cond.end177

cond.false176:                                    ; preds = %cond.end171
  %119 = load i32, ptr %n, align 4
  br label %cond.end177

cond.end177:                                      ; preds = %cond.false176, %cond.true175
  %cond178 = phi i32 [ 0, %cond.true175 ], [ %119, %cond.false176 ]
  store i32 %cond178, ptr %n, align 4
  %120 = load i32, ptr %l, align 4
  %tobool179 = icmp ne i32 %120, 0
  br i1 %tobool179, label %if.end184, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end177
  %121 = load i32, ptr %m, align 4
  %tobool180 = icmp ne i32 %121, 0
  br i1 %tobool180, label %if.end184, label %lor.lhs.false181

lor.lhs.false181:                                 ; preds = %lor.lhs.false
  %122 = load i32, ptr %n, align 4
  %tobool182 = icmp ne i32 %122, 0
  br i1 %tobool182, label %if.end184, label %if.then183

if.then183:                                       ; preds = %lor.lhs.false181
  br label %for.inc353

if.end184:                                        ; preds = %lor.lhs.false181, %lor.lhs.false, %cond.end177
  %123 = load i32, ptr %l, align 4
  %tobool185 = icmp ne i32 %123, 0
  br i1 %tobool185, label %if.then186, label %if.end187

if.then186:                                       ; preds = %if.end184
  %124 = load i32, ptr %i, align 4
  store i32 %124, ptr %v, align 4
  %125 = load i32, ptr %l, align 4
  store i32 %125, ptr %o, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.then186, %if.end184
  %126 = load i32, ptr %m, align 4
  %tobool188 = icmp ne i32 %126, 0
  br i1 %tobool188, label %if.then189, label %if.end190

if.then189:                                       ; preds = %if.end187
  %127 = load i32, ptr %j, align 4
  store i32 %127, ptr %v, align 4
  %128 = load i32, ptr %m, align 4
  store i32 %128, ptr %o, align 4
  br label %if.end190

if.end190:                                        ; preds = %if.then189, %if.end187
  %129 = load i32, ptr %n, align 4
  %tobool191 = icmp ne i32 %129, 0
  br i1 %tobool191, label %if.then192, label %if.end193

if.then192:                                       ; preds = %if.end190
  %130 = load i32, ptr %k, align 4
  store i32 %130, ptr %v, align 4
  %131 = load i32, ptr %n, align 4
  store i32 %131, ptr %o, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.then192, %if.end190
  %132 = load i32, ptr %v, align 4
  %133 = load i32, ptr %o, align 4
  %cmp194 = icmp ugt i32 %132, %133
  br i1 %cmp194, label %if.then196, label %if.end197

if.then196:                                       ; preds = %if.end193
  %134 = load i32, ptr %v, align 4
  store i32 %134, ptr %tmp, align 4
  %135 = load i32, ptr %o, align 4
  store i32 %135, ptr %v, align 4
  %136 = load i32, ptr %tmp, align 4
  store i32 %136, ptr %o, align 4
  br label %if.end197

if.end197:                                        ; preds = %if.then196, %if.end193
  store i32 1, ptr %x, align 4
  br label %for.cond198

for.cond198:                                      ; preds = %for.inc350, %if.end197
  %137 = load i32, ptr %x, align 4
  %138 = load i32, ptr %N, align 4
  %cmp199 = icmp ule i32 %137, %138
  br i1 %cmp199, label %for.body201, label %for.end352

for.body201:                                      ; preds = %for.cond198
  %139 = load i32, ptr %x, align 4
  %140 = load i32, ptr %v, align 4
  %cmp202 = icmp eq i32 %139, %140
  br i1 %cmp202, label %if.then207, label %lor.lhs.false204

lor.lhs.false204:                                 ; preds = %for.body201
  %141 = load i32, ptr %x, align 4
  %142 = load i32, ptr %o, align 4
  %cmp205 = icmp eq i32 %141, %142
  br i1 %cmp205, label %if.then207, label %if.end208

if.then207:                                       ; preds = %lor.lhs.false204, %for.body201
  br label %for.inc350

if.end208:                                        ; preds = %lor.lhs.false204
  %143 = load ptr, ptr %memory, align 8
  %144 = load i32, ptr %centre_square, align 4
  %145 = load i32, ptr %x, align 4
  %add209 = add i32 %144, %145
  %idxprom210 = zext i32 %add209 to i64
  %arrayidx211 = getelementptr inbounds i16, ptr %143, i64 %idxprom210
  %146 = load i16, ptr %arrayidx211, align 2
  %conv212 = sext i16 %146 to i32
  store i32 %conv212, ptr %count_x, align 4
  %147 = load i32, ptr %count_x, align 4
  %cmp213 = icmp ult i32 %147, 2
  br i1 %cmp213, label %if.then215, label %if.end216

if.then215:                                       ; preds = %if.end208
  br label %for.inc350

if.end216:                                        ; preds = %if.end208
  %148 = load i32, ptr %x, align 4
  %149 = load i32, ptr %x, align 4
  %mul217 = mul i32 %148, %149
  store i32 %mul217, ptr %x_square, align 4
  %150 = load i32, ptr %sum, align 4
  %151 = load i32, ptr %centre_square, align 4
  %sub218 = sub i32 %150, %151
  %152 = load i32, ptr %x_square, align 4
  %sub219 = sub i32 %sub218, %152
  store i32 %sub219, ptr %y_square, align 4
  %153 = load i32, ptr %x_square, align 4
  %154 = load i32, ptr %y_square, align 4
  %cmp220 = icmp sge i32 %153, %154
  br i1 %cmp220, label %if.then222, label %if.end223

if.then222:                                       ; preds = %if.end216
  br label %for.end352

if.end223:                                        ; preds = %if.end216
  %155 = load i32, ptr %y_square, align 4
  %cmp224 = icmp sgt i32 %155, 0
  br i1 %cmp224, label %land.lhs.true226, label %cond.false232

land.lhs.true226:                                 ; preds = %if.end223
  %156 = load i32, ptr %y_square, align 4
  %157 = load i32, ptr %max_root, align 4
  %cmp227 = icmp ule i32 %156, %157
  br i1 %cmp227, label %cond.true229, label %cond.false232

cond.true229:                                     ; preds = %land.lhs.true226
  %158 = load ptr, ptr %roots, align 8
  %159 = load i32, ptr %y_square, align 4
  %idxprom230 = sext i32 %159 to i64
  %arrayidx231 = getelementptr inbounds i32, ptr %158, i64 %idxprom230
  %160 = load i32, ptr %arrayidx231, align 4
  br label %cond.end233

cond.false232:                                    ; preds = %land.lhs.true226, %if.end223
  br label %cond.end233

cond.end233:                                      ; preds = %cond.false232, %cond.true229
  %cond234 = phi i32 [ %160, %cond.true229 ], [ 0, %cond.false232 ]
  store i32 %cond234, ptr %y, align 4
  %161 = load ptr, ptr %memory, align 8
  %162 = load i32, ptr %centre_square, align 4
  %163 = load i32, ptr %y, align 4
  %add235 = add i32 %162, %163
  %idxprom236 = zext i32 %add235 to i64
  %arrayidx237 = getelementptr inbounds i16, ptr %161, i64 %idxprom236
  %164 = load i16, ptr %arrayidx237, align 2
  %conv238 = sext i16 %164 to i32
  store i32 %conv238, ptr %count_y, align 4
  %165 = load i32, ptr %count_y, align 4
  %cmp239 = icmp ult i32 %165, 2
  br i1 %cmp239, label %if.then241, label %if.end242

if.then241:                                       ; preds = %cond.end233
  br label %for.inc350

if.end242:                                        ; preds = %cond.end233
  %166 = load i32, ptr %x, align 4
  %add243 = add i32 %166, 1
  store i32 %add243, ptr %z, align 4
  br label %for.cond244

for.cond244:                                      ; preds = %for.inc347, %if.end242
  %167 = load i32, ptr %z, align 4
  %168 = load i32, ptr %N, align 4
  %cmp245 = icmp ule i32 %167, %168
  br i1 %cmp245, label %for.body247, label %for.end349

for.body247:                                      ; preds = %for.cond244
  %169 = load i32, ptr %z, align 4
  %170 = load i32, ptr %v, align 4
  %cmp248 = icmp eq i32 %169, %170
  br i1 %cmp248, label %if.then256, label %lor.lhs.false250

lor.lhs.false250:                                 ; preds = %for.body247
  %171 = load i32, ptr %z, align 4
  %172 = load i32, ptr %o, align 4
  %cmp251 = icmp eq i32 %171, %172
  br i1 %cmp251, label %if.then256, label %lor.lhs.false253

lor.lhs.false253:                                 ; preds = %lor.lhs.false250
  %173 = load i32, ptr %z, align 4
  %174 = load i32, ptr %y, align 4
  %cmp254 = icmp eq i32 %173, %174
  br i1 %cmp254, label %if.then256, label %if.end257

if.then256:                                       ; preds = %lor.lhs.false253, %lor.lhs.false250, %for.body247
  br label %for.inc347

if.end257:                                        ; preds = %lor.lhs.false253
  %175 = load ptr, ptr %memory, align 8
  %176 = load i32, ptr %centre_square, align 4
  %177 = load i32, ptr %z, align 4
  %add258 = add i32 %176, %177
  %idxprom259 = zext i32 %add258 to i64
  %arrayidx260 = getelementptr inbounds i16, ptr %175, i64 %idxprom259
  %178 = load i16, ptr %arrayidx260, align 2
  %conv261 = sext i16 %178 to i32
  store i32 %conv261, ptr %count_z, align 4
  %179 = load i32, ptr %count_z, align 4
  %cmp262 = icmp ult i32 %179, 2
  br i1 %cmp262, label %if.then264, label %if.end265

if.then264:                                       ; preds = %if.end257
  br label %for.inc347

if.end265:                                        ; preds = %if.end257
  %180 = load i32, ptr %z, align 4
  %181 = load i32, ptr %z, align 4
  %mul266 = mul i32 %180, %181
  store i32 %mul266, ptr %z_square, align 4
  %182 = load i32, ptr %sum, align 4
  %183 = load i32, ptr %centre_square, align 4
  %sub267 = sub i32 %182, %183
  %184 = load i32, ptr %z_square, align 4
  %sub268 = sub i32 %sub267, %184
  store i32 %sub268, ptr %w_square, align 4
  %185 = load i32, ptr %z_square, align 4
  %186 = load i32, ptr %w_square, align 4
  %cmp269 = icmp sge i32 %185, %186
  br i1 %cmp269, label %if.then271, label %if.end272

if.then271:                                       ; preds = %if.end265
  br label %for.end349

if.end272:                                        ; preds = %if.end265
  %187 = load i32, ptr %w_square, align 4
  %cmp273 = icmp sgt i32 %187, 0
  br i1 %cmp273, label %land.lhs.true275, label %cond.false281

land.lhs.true275:                                 ; preds = %if.end272
  %188 = load i32, ptr %w_square, align 4
  %189 = load i32, ptr %max_root, align 4
  %cmp276 = icmp ule i32 %188, %189
  br i1 %cmp276, label %cond.true278, label %cond.false281

cond.true278:                                     ; preds = %land.lhs.true275
  %190 = load ptr, ptr %roots, align 8
  %191 = load i32, ptr %w_square, align 4
  %idxprom279 = sext i32 %191 to i64
  %arrayidx280 = getelementptr inbounds i32, ptr %190, i64 %idxprom279
  %192 = load i32, ptr %arrayidx280, align 4
  br label %cond.end282

cond.false281:                                    ; preds = %land.lhs.true275, %if.end272
  br label %cond.end282

cond.end282:                                      ; preds = %cond.false281, %cond.true278
  %cond283 = phi i32 [ %192, %cond.true278 ], [ 0, %cond.false281 ]
  store i32 %cond283, ptr %w, align 4
  %193 = load ptr, ptr %memory, align 8
  %194 = load i32, ptr %centre_square, align 4
  %195 = load i32, ptr %w, align 4
  %add284 = add i32 %194, %195
  %idxprom285 = zext i32 %add284 to i64
  %arrayidx286 = getelementptr inbounds i16, ptr %193, i64 %idxprom285
  %196 = load i16, ptr %arrayidx286, align 2
  %conv287 = sext i16 %196 to i32
  store i32 %conv287, ptr %count_w, align 4
  %197 = load i32, ptr %count_w, align 4
  %cmp288 = icmp ult i32 %197, 2
  br i1 %cmp288, label %if.then290, label %if.end291

if.then290:                                       ; preds = %cond.end282
  br label %for.inc347

if.end291:                                        ; preds = %cond.end282
  %198 = load i32, ptr %v, align 4
  %199 = load i32, ptr %x, align 4
  %add292 = add i32 %198, %199
  %200 = load i32, ptr %w, align 4
  %add293 = add i32 %add292, %200
  %201 = load i32, ptr %sum, align 4
  %cmp294 = icmp eq i32 %add293, %201
  br i1 %cmp294, label %if.then321, label %lor.lhs.false296

lor.lhs.false296:                                 ; preds = %if.end291
  %202 = load i32, ptr %v, align 4
  %203 = load i32, ptr %y, align 4
  %add297 = add i32 %202, %203
  %204 = load i32, ptr %z, align 4
  %add298 = add i32 %add297, %204
  %205 = load i32, ptr %sum, align 4
  %cmp299 = icmp eq i32 %add298, %205
  br i1 %cmp299, label %if.then321, label %lor.lhs.false301

lor.lhs.false301:                                 ; preds = %lor.lhs.false296
  %206 = load i32, ptr %v, align 4
  %207 = load i32, ptr %y, align 4
  %add302 = add i32 %206, %207
  %208 = load i32, ptr %w, align 4
  %add303 = add i32 %add302, %208
  %209 = load i32, ptr %sum, align 4
  %cmp304 = icmp eq i32 %add303, %209
  br i1 %cmp304, label %if.then321, label %lor.lhs.false306

lor.lhs.false306:                                 ; preds = %lor.lhs.false301
  %210 = load i32, ptr %o, align 4
  %211 = load i32, ptr %x, align 4
  %add307 = add i32 %210, %211
  %212 = load i32, ptr %z, align 4
  %add308 = add i32 %add307, %212
  %213 = load i32, ptr %sum, align 4
  %cmp309 = icmp eq i32 %add308, %213
  br i1 %cmp309, label %if.then321, label %lor.lhs.false311

lor.lhs.false311:                                 ; preds = %lor.lhs.false306
  %214 = load i32, ptr %o, align 4
  %215 = load i32, ptr %x, align 4
  %add312 = add i32 %214, %215
  %216 = load i32, ptr %w, align 4
  %add313 = add i32 %add312, %216
  %217 = load i32, ptr %sum, align 4
  %cmp314 = icmp eq i32 %add313, %217
  br i1 %cmp314, label %if.then321, label %lor.lhs.false316

lor.lhs.false316:                                 ; preds = %lor.lhs.false311
  %218 = load i32, ptr %o, align 4
  %219 = load i32, ptr %y, align 4
  %add317 = add i32 %218, %219
  %220 = load i32, ptr %z, align 4
  %add318 = add i32 %add317, %220
  %221 = load i32, ptr %sum, align 4
  %cmp319 = icmp eq i32 %add318, %221
  br i1 %cmp319, label %if.then321, label %if.end327

if.then321:                                       ; preds = %lor.lhs.false316, %lor.lhs.false311, %lor.lhs.false306, %lor.lhs.false301, %lor.lhs.false296, %if.end291
  %222 = load i32, ptr %sum, align 4
  %223 = load i32, ptr %centre_square, align 4
  %call322 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %222, i32 noundef %223)
  %224 = load i32, ptr %v, align 4
  %225 = load i32, ptr %o, align 4
  %call323 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %224, i32 noundef %225)
  %226 = load i32, ptr %x, align 4
  %227 = load i32, ptr %y, align 4
  %call324 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %226, i32 noundef %227)
  %228 = load i32, ptr %z, align 4
  %229 = load i32, ptr %w, align 4
  %call325 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %228, i32 noundef %229)
  %call326 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end327

if.end327:                                        ; preds = %if.then321, %lor.lhs.false316
  %230 = load i32, ptr %sum, align 4
  %mul328 = mul i32 3, %230
  %231 = load i32, ptr %v, align 4
  %sub329 = sub i32 %mul328, %231
  %232 = load i32, ptr %o, align 4
  %add330 = add i32 %sub329, %232
  %233 = load i32, ptr %x, align 4
  %add331 = add i32 %add330, %233
  %234 = load i32, ptr %y, align 4
  %add332 = add i32 %add331, %234
  %235 = load i32, ptr %z, align 4
  %add333 = add i32 %add332, %235
  %236 = load i32, ptr %w, align 4
  %add334 = add i32 %add333, %236
  store i32 %add334, ptr %remainder, align 4
  %237 = load i32, ptr %remainder, align 4
  %mul335 = mul i32 %237, 3
  %div336 = udiv i32 %mul335, 2
  %238 = load i32, ptr %sum, align 4
  %cmp337 = icmp eq i32 %div336, %238
  br i1 %cmp337, label %if.then339, label %if.end345

if.then339:                                       ; preds = %if.end327
  %239 = load i32, ptr %sum, align 4
  %240 = load i32, ptr %centre_square, align 4
  %call340 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %239, i32 noundef %240)
  %241 = load i32, ptr %v, align 4
  %242 = load i32, ptr %o, align 4
  %call341 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %241, i32 noundef %242)
  %243 = load i32, ptr %x, align 4
  %244 = load i32, ptr %y, align 4
  %call342 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %243, i32 noundef %244)
  %245 = load i32, ptr %z, align 4
  %246 = load i32, ptr %w, align 4
  %call343 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %245, i32 noundef %246)
  %call344 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end345

if.end345:                                        ; preds = %if.then339, %if.end327
  %247 = load i32, ptr %iterations, align 4
  %add346 = add nsw i32 %247, 1
  store i32 %add346, ptr %iterations, align 4
  br label %for.inc347

for.inc347:                                       ; preds = %if.end345, %if.then290, %if.then264, %if.then256
  %248 = load i32, ptr %z, align 4
  %add348 = add i32 %248, 1
  store i32 %add348, ptr %z, align 4
  br label %for.cond244, !llvm.loop !9

for.end349:                                       ; preds = %if.then271, %for.cond244
  br label %for.inc350

for.inc350:                                       ; preds = %for.end349, %if.then241, %if.then215, %if.then207
  %249 = load i32, ptr %x, align 4
  %add351 = add i32 %249, 1
  store i32 %add351, ptr %x, align 4
  br label %for.cond198, !llvm.loop !10

for.end352:                                       ; preds = %if.then222, %for.cond198
  br label %for.inc353

for.inc353:                                       ; preds = %for.end352, %if.then183, %if.then92, %if.then83, %if.then54, %if.then
  %250 = load i32, ptr %k, align 4
  %add354 = add i32 %250, 1
  store i32 %add354, ptr %k, align 4
  br label %for.cond42, !llvm.loop !11

for.end355:                                       ; preds = %for.cond42
  br label %for.inc356

for.inc356:                                       ; preds = %for.end355
  %251 = load i32, ptr %j, align 4
  %add357 = add i32 %251, 1
  store i32 %add357, ptr %j, align 4
  br label %for.cond38, !llvm.loop !12

for.end358:                                       ; preds = %for.cond38
  %252 = load i32, ptr %i, align 4
  %rem359 = urem i32 %252, 1000
  %cmp360 = icmp eq i32 %rem359, 0
  br i1 %cmp360, label %if.then362, label %if.end364

if.then362:                                       ; preds = %for.end358
  %253 = load i32, ptr %i, align 4
  %call363 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %253)
  br label %if.end364

if.end364:                                        ; preds = %if.then362, %for.end358
  br label %for.inc365

for.inc365:                                       ; preds = %if.end364
  %254 = load i32, ptr %i, align 4
  %add366 = add i32 %254, 1
  store i32 %add366, ptr %i, align 4
  br label %for.cond34, !llvm.loop !13

for.end367:                                       ; preds = %for.cond34
  %255 = load i32, ptr %iterations, align 4
  %call368 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %255)
  ret i32 0
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

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
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
