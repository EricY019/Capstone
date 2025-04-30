; ModuleID = './code/104-35133matrix.c'
source_filename = "./code/104-35133matrix.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"clear\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca [10 x [10 x i32]], align 4
  store i32 0, ptr %retval, align 4
  %arraydecay = getelementptr inbounds [10 x [10 x i32]], ptr %x, i64 0, i64 0
  call void @initialize(ptr noundef %arraydecay, i32 noundef 1)
  %arraydecay1 = getelementptr inbounds [10 x [10 x i32]], ptr %x, i64 0, i64 0
  call void @print(ptr noundef %arraydecay1)
  %arraydecay2 = getelementptr inbounds [10 x [10 x i32]], ptr %x, i64 0, i64 0
  call void @play(ptr noundef %arraydecay2, i32 noundef 10)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @initialize(ptr noundef %array, i32 noundef %t) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %t.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  store i32 %t, ptr %t.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 10
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %i, align 4
  %rem = srem i32 %2, 2
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body3
  %3 = load i32, ptr %j, align 4
  %rem5 = srem i32 %3, 2
  %cmp6 = icmp eq i32 %rem5, 0
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, ptr %t.addr, align 4
  %5 = load ptr, ptr %array.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr %5, i64 %idxprom
  %7 = load i32, ptr %j, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [10 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  store i32 %4, ptr %arrayidx8, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body3
  %8 = load ptr, ptr %array.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [10 x i32], ptr %8, i64 %idxprom9
  %10 = load i32, ptr %j, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [10 x i32], ptr %arrayidx10, i64 0, i64 %idxprom11
  store i32 1, ptr %arrayidx12, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %12 = load i32, ptr %i, align 4
  %inc14 = add nsw i32 %12, 1
  store i32 %inc14, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end15:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print(ptr noundef %array) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 10
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load ptr, ptr %array.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr %2, i64 %idxprom
  %4 = load i32, ptr %j, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [10 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %5 = load i32, ptr %arrayidx5, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, ptr %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !8

for.end:                                          ; preds = %for.cond1
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %7 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @play(ptr noundef %array, i32 noundef %t) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %t.addr = alloca i32, align 4
  %final = alloca [10 x [10 x i32]], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  store i32 %t, ptr %t.addr, align 4
  %0 = load i32, ptr %t.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc129, %if.end
  %1 = load i32, ptr %i, align 4
  %cmp1 = icmp slt i32 %1, 10
  br i1 %cmp1, label %for.body, label %for.end131

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4
  %cmp3 = icmp slt i32 %2, 10
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %3 = load ptr, ptr %array.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr %3, i64 %idxprom
  %5 = load i32, ptr %j, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [10 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %6 = load i32, ptr %arrayidx6, align 4
  %7 = load ptr, ptr %array.addr, align 8
  %8 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %8, 1
  %rem = srem i32 %sub, 10
  %idxprom7 = sext i32 %rem to i64
  %arrayidx8 = getelementptr inbounds [10 x i32], ptr %7, i64 %idxprom7
  %9 = load i32, ptr %j, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [10 x i32], ptr %arrayidx8, i64 0, i64 %idxprom9
  %10 = load i32, ptr %arrayidx10, align 4
  %add = add nsw i32 %6, %10
  %rem11 = srem i32 %add, 10
  %11 = load ptr, ptr %array.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [10 x i32], ptr %11, i64 %idxprom12
  %13 = load i32, ptr %j, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [10 x i32], ptr %arrayidx13, i64 0, i64 %idxprom14
  %14 = load i32, ptr %arrayidx15, align 4
  %15 = load ptr, ptr %array.addr, align 8
  %16 = load i32, ptr %i, align 4
  %add16 = add nsw i32 %16, 1
  %rem17 = srem i32 %add16, 10
  %idxprom18 = sext i32 %rem17 to i64
  %arrayidx19 = getelementptr inbounds [10 x i32], ptr %15, i64 %idxprom18
  %17 = load i32, ptr %j, align 4
  %idxprom20 = sext i32 %17 to i64
  %arrayidx21 = getelementptr inbounds [10 x i32], ptr %arrayidx19, i64 0, i64 %idxprom20
  %18 = load i32, ptr %arrayidx21, align 4
  %add22 = add nsw i32 %14, %18
  %rem23 = srem i32 %add22, 10
  %mul = mul nsw i32 %rem11, %rem23
  %19 = load ptr, ptr %array.addr, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %20 to i64
  %arrayidx25 = getelementptr inbounds [10 x i32], ptr %19, i64 %idxprom24
  %21 = load i32, ptr %j, align 4
  %idxprom26 = sext i32 %21 to i64
  %arrayidx27 = getelementptr inbounds [10 x i32], ptr %arrayidx25, i64 0, i64 %idxprom26
  %22 = load i32, ptr %arrayidx27, align 4
  %23 = load ptr, ptr %array.addr, align 8
  %24 = load i32, ptr %i, align 4
  %sub28 = sub nsw i32 %24, 1
  %rem29 = srem i32 %sub28, 10
  %idxprom30 = sext i32 %rem29 to i64
  %arrayidx31 = getelementptr inbounds [10 x i32], ptr %23, i64 %idxprom30
  %25 = load i32, ptr %j, align 4
  %sub32 = sub nsw i32 %25, 1
  %rem33 = srem i32 %sub32, 10
  %idxprom34 = sext i32 %rem33 to i64
  %arrayidx35 = getelementptr inbounds [10 x i32], ptr %arrayidx31, i64 0, i64 %idxprom34
  %26 = load i32, ptr %arrayidx35, align 4
  %add36 = add nsw i32 %22, %26
  %rem37 = srem i32 %add36, 10
  %mul38 = mul nsw i32 %mul, %rem37
  %27 = load ptr, ptr %array.addr, align 8
  %28 = load i32, ptr %i, align 4
  %idxprom39 = sext i32 %28 to i64
  %arrayidx40 = getelementptr inbounds [10 x i32], ptr %27, i64 %idxprom39
  %29 = load i32, ptr %j, align 4
  %idxprom41 = sext i32 %29 to i64
  %arrayidx42 = getelementptr inbounds [10 x i32], ptr %arrayidx40, i64 0, i64 %idxprom41
  %30 = load i32, ptr %arrayidx42, align 4
  %31 = load ptr, ptr %array.addr, align 8
  %32 = load i32, ptr %i, align 4
  %sub43 = sub nsw i32 %32, 1
  %rem44 = srem i32 %sub43, 10
  %idxprom45 = sext i32 %rem44 to i64
  %arrayidx46 = getelementptr inbounds [10 x i32], ptr %31, i64 %idxprom45
  %33 = load i32, ptr %j, align 4
  %add47 = add nsw i32 %33, 1
  %rem48 = srem i32 %add47, 10
  %idxprom49 = sext i32 %rem48 to i64
  %arrayidx50 = getelementptr inbounds [10 x i32], ptr %arrayidx46, i64 0, i64 %idxprom49
  %34 = load i32, ptr %arrayidx50, align 4
  %add51 = add nsw i32 %30, %34
  %rem52 = srem i32 %add51, 10
  %mul53 = mul nsw i32 %mul38, %rem52
  %35 = load ptr, ptr %array.addr, align 8
  %36 = load i32, ptr %i, align 4
  %idxprom54 = sext i32 %36 to i64
  %arrayidx55 = getelementptr inbounds [10 x i32], ptr %35, i64 %idxprom54
  %37 = load i32, ptr %j, align 4
  %idxprom56 = sext i32 %37 to i64
  %arrayidx57 = getelementptr inbounds [10 x i32], ptr %arrayidx55, i64 0, i64 %idxprom56
  %38 = load i32, ptr %arrayidx57, align 4
  %39 = load ptr, ptr %array.addr, align 8
  %40 = load i32, ptr %i, align 4
  %add58 = add nsw i32 %40, 1
  %rem59 = srem i32 %add58, 10
  %idxprom60 = sext i32 %rem59 to i64
  %arrayidx61 = getelementptr inbounds [10 x i32], ptr %39, i64 %idxprom60
  %41 = load i32, ptr %j, align 4
  %sub62 = sub nsw i32 %41, 1
  %rem63 = srem i32 %sub62, 10
  %idxprom64 = sext i32 %rem63 to i64
  %arrayidx65 = getelementptr inbounds [10 x i32], ptr %arrayidx61, i64 0, i64 %idxprom64
  %42 = load i32, ptr %arrayidx65, align 4
  %add66 = add nsw i32 %38, %42
  %rem67 = srem i32 %add66, 10
  %mul68 = mul nsw i32 %mul53, %rem67
  %43 = load ptr, ptr %array.addr, align 8
  %44 = load i32, ptr %i, align 4
  %idxprom69 = sext i32 %44 to i64
  %arrayidx70 = getelementptr inbounds [10 x i32], ptr %43, i64 %idxprom69
  %45 = load i32, ptr %j, align 4
  %idxprom71 = sext i32 %45 to i64
  %arrayidx72 = getelementptr inbounds [10 x i32], ptr %arrayidx70, i64 0, i64 %idxprom71
  %46 = load i32, ptr %arrayidx72, align 4
  %47 = load ptr, ptr %array.addr, align 8
  %48 = load i32, ptr %i, align 4
  %add73 = add nsw i32 %48, 1
  %rem74 = srem i32 %add73, 10
  %idxprom75 = sext i32 %rem74 to i64
  %arrayidx76 = getelementptr inbounds [10 x i32], ptr %47, i64 %idxprom75
  %49 = load i32, ptr %j, align 4
  %add77 = add nsw i32 %49, 1
  %rem78 = srem i32 %add77, 10
  %idxprom79 = sext i32 %rem78 to i64
  %arrayidx80 = getelementptr inbounds [10 x i32], ptr %arrayidx76, i64 0, i64 %idxprom79
  %50 = load i32, ptr %arrayidx80, align 4
  %add81 = add nsw i32 %46, %50
  %rem82 = srem i32 %add81, 10
  %mul83 = mul nsw i32 %mul68, %rem82
  %51 = load ptr, ptr %array.addr, align 8
  %52 = load i32, ptr %i, align 4
  %idxprom84 = sext i32 %52 to i64
  %arrayidx85 = getelementptr inbounds [10 x i32], ptr %51, i64 %idxprom84
  %53 = load i32, ptr %j, align 4
  %idxprom86 = sext i32 %53 to i64
  %arrayidx87 = getelementptr inbounds [10 x i32], ptr %arrayidx85, i64 0, i64 %idxprom86
  %54 = load i32, ptr %arrayidx87, align 4
  %55 = load ptr, ptr %array.addr, align 8
  %56 = load i32, ptr %i, align 4
  %idxprom88 = sext i32 %56 to i64
  %arrayidx89 = getelementptr inbounds [10 x i32], ptr %55, i64 %idxprom88
  %57 = load i32, ptr %j, align 4
  %sub90 = sub nsw i32 %57, 1
  %rem91 = srem i32 %sub90, 10
  %idxprom92 = sext i32 %rem91 to i64
  %arrayidx93 = getelementptr inbounds [10 x i32], ptr %arrayidx89, i64 0, i64 %idxprom92
  %58 = load i32, ptr %arrayidx93, align 4
  %add94 = add nsw i32 %54, %58
  %rem95 = srem i32 %add94, 10
  %mul96 = mul nsw i32 %mul83, %rem95
  %59 = load ptr, ptr %array.addr, align 8
  %60 = load i32, ptr %i, align 4
  %idxprom97 = sext i32 %60 to i64
  %arrayidx98 = getelementptr inbounds [10 x i32], ptr %59, i64 %idxprom97
  %61 = load i32, ptr %j, align 4
  %idxprom99 = sext i32 %61 to i64
  %arrayidx100 = getelementptr inbounds [10 x i32], ptr %arrayidx98, i64 0, i64 %idxprom99
  %62 = load i32, ptr %arrayidx100, align 4
  %63 = load ptr, ptr %array.addr, align 8
  %64 = load i32, ptr %i, align 4
  %idxprom101 = sext i32 %64 to i64
  %arrayidx102 = getelementptr inbounds [10 x i32], ptr %63, i64 %idxprom101
  %65 = load i32, ptr %j, align 4
  %sub103 = sub nsw i32 %65, 1
  %rem104 = srem i32 %sub103, 10
  %idxprom105 = sext i32 %rem104 to i64
  %arrayidx106 = getelementptr inbounds [10 x i32], ptr %arrayidx102, i64 0, i64 %idxprom105
  %66 = load i32, ptr %arrayidx106, align 4
  %add107 = add nsw i32 %62, %66
  %rem108 = srem i32 %add107, 10
  %mul109 = mul nsw i32 %mul96, %rem108
  %67 = load i32, ptr %i, align 4
  %idxprom110 = sext i32 %67 to i64
  %arrayidx111 = getelementptr inbounds [10 x [10 x i32]], ptr %final, i64 0, i64 %idxprom110
  %68 = load i32, ptr %j, align 4
  %idxprom112 = sext i32 %68 to i64
  %arrayidx113 = getelementptr inbounds [10 x i32], ptr %arrayidx111, i64 0, i64 %idxprom112
  store i32 %mul109, ptr %arrayidx113, align 4
  %69 = load i32, ptr %i, align 4
  %idxprom114 = sext i32 %69 to i64
  %arrayidx115 = getelementptr inbounds [10 x [10 x i32]], ptr %final, i64 0, i64 %idxprom114
  %70 = load i32, ptr %j, align 4
  %idxprom116 = sext i32 %70 to i64
  %arrayidx117 = getelementptr inbounds [10 x i32], ptr %arrayidx115, i64 0, i64 %idxprom116
  %71 = load i32, ptr %arrayidx117, align 4
  %rem118 = srem i32 %71, 10
  %72 = load i32, ptr %i, align 4
  %idxprom119 = sext i32 %72 to i64
  %arrayidx120 = getelementptr inbounds [10 x [10 x i32]], ptr %final, i64 0, i64 %idxprom119
  %73 = load i32, ptr %j, align 4
  %idxprom121 = sext i32 %73 to i64
  %arrayidx122 = getelementptr inbounds [10 x i32], ptr %arrayidx120, i64 0, i64 %idxprom121
  %74 = load i32, ptr %arrayidx122, align 4
  %rem123 = srem i32 %74, 10
  %mul124 = mul nsw i32 %rem118, %rem123
  %75 = load i32, ptr %i, align 4
  %idxprom125 = sext i32 %75 to i64
  %arrayidx126 = getelementptr inbounds [10 x [10 x i32]], ptr %final, i64 0, i64 %idxprom125
  %76 = load i32, ptr %j, align 4
  %idxprom127 = sext i32 %76 to i64
  %arrayidx128 = getelementptr inbounds [10 x i32], ptr %arrayidx126, i64 0, i64 %idxprom127
  store i32 %mul124, ptr %arrayidx128, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %77 = load i32, ptr %j, align 4
  %inc = add nsw i32 %77, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond2, !llvm.loop !10

for.end:                                          ; preds = %for.cond2
  br label %for.inc129

for.inc129:                                       ; preds = %for.end
  %78 = load i32, ptr %i, align 4
  %inc130 = add nsw i32 %78, 1
  store i32 %inc130, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end131:                                       ; preds = %for.cond
  %arraydecay = getelementptr inbounds [10 x [10 x i32]], ptr %final, i64 0, i64 0
  store ptr %arraydecay, ptr %array.addr, align 8
  %call = call i32 @"\01_system"(ptr noundef @.str.2)
  %79 = load ptr, ptr %array.addr, align 8
  call void @print(ptr noundef %79)
  %call132 = call i32 @"\01_sleep"(i32 noundef 1)
  %80 = load ptr, ptr %array.addr, align 8
  %81 = load i32, ptr %t.addr, align 4
  %sub133 = sub nsw i32 %81, 1
  call void @play(ptr noundef %80, i32 noundef %sub133)
  br label %return

return:                                           ; preds = %for.end131, %if.then
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @"\01_system"(ptr noundef) #1

declare i32 @"\01_sleep"(i32 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
