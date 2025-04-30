; ModuleID = './code/199-106591_3.c'
source_filename = "./code/199-106591_3.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [8 x i8] c"1_3.txt\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"Sikeres \C3\A1tj\C3\A1r\C3\A1sok %.2f sz\C3\B3r\C3\A1sval\C3\B3sz\C3\ADn\C5\B1s\C3\A9g mellett: %.2f szazalek \0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%.2f %.2f\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"\1B[31m%2d \1B[0m\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"\1B[32m%2d \1B[0m\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"\1B[33m%2d \1B[0m\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"\1B[34m%2d \1B[0m\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"\1B[35m%2d \1B[0m\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"\1B[36m%2d \1B[0m\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"\1B[1;32m%2d \1B[0m\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%2d \00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %matrix = alloca [10 x [10 x i32]], align 4
  %atmente = alloca i32, align 4
  %segedvektor = alloca [2 x [20 x i32]], align 4
  %valosz = alloca float, align 4
  %fp = alloca ptr, align 8
  %j = alloca i32, align 4
  %p = alloca float, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv)
  %call1 = call ptr @"\01_fopen"(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %call1, ptr %fp, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %0 = load i32, ptr %j, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %atmente, align 4
  %1 = load i32, ptr %j, align 4
  %conv3 = sitofp i32 %1 to float
  %div = fdiv float %conv3, 1.000000e+02
  store float %div, ptr %p, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %2, 1000
  br i1 %cmp5, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond4
  %arraydecay = getelementptr inbounds [2 x [20 x i32]], ptr %segedvektor, i64 0, i64 0
  call void @vektorfeltoltes(ptr noundef %arraydecay)
  %arraydecay8 = getelementptr inbounds [10 x [10 x i32]], ptr %matrix, i64 0, i64 0
  %3 = load float, ptr %p, align 4
  call void @matrixfeltoltes(ptr noundef %arraydecay8, float noundef %3)
  %arraydecay9 = getelementptr inbounds [10 x [10 x i32]], ptr %matrix, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [2 x [20 x i32]], ptr %segedvektor, i64 0, i64 0
  call void @bejaras(ptr noundef %arraydecay9, ptr noundef %arraydecay10)
  %arraydecay11 = getelementptr inbounds [10 x [10 x i32]], ptr %matrix, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [2 x [20 x i32]], ptr %segedvektor, i64 0, i64 0
  call void @clusterjoin(ptr noundef %arraydecay11, ptr noundef %arraydecay12)
  %arraydecay13 = getelementptr inbounds [10 x [10 x i32]], ptr %matrix, i64 0, i64 0
  %call14 = call i32 @eldont(ptr noundef %arraydecay13)
  %4 = load i32, ptr %atmente, align 4
  %add = add nsw i32 %4, %call14
  store i32 %add, ptr %atmente, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond4, !llvm.loop !5

for.end:                                          ; preds = %for.cond4
  %6 = load i32, ptr %atmente, align 4
  %conv15 = sitofp i32 %6 to float
  %div16 = fdiv float %conv15, 1.000000e+03
  %mul = fmul float %div16, 1.000000e+02
  store float %mul, ptr %valosz, align 4
  %7 = load float, ptr %p, align 4
  %conv17 = fpext float %7 to double
  %8 = load float, ptr %valosz, align 4
  %conv18 = fpext float %8 to double
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %conv17, double noundef %conv18)
  %9 = load ptr, ptr %fp, align 8
  %10 = load float, ptr %p, align 4
  %conv20 = fpext float %10 to double
  %11 = load float, ptr %valosz, align 4
  %conv21 = fpext float %11 to double
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.3, double noundef %conv20, double noundef %conv21) #3
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %12 = load i32, ptr %j, align 4
  %inc24 = add nsw i32 %12, 1
  store i32 %inc24, ptr %j, align 4
  br label %for.cond, !llvm.loop !7

for.end25:                                        ; preds = %for.cond
  %13 = load ptr, ptr %fp, align 8
  %call26 = call i32 @fclose(ptr noundef %13)
  ret i32 0
}

declare void @srand(i32 noundef) #1

declare i64 @time(ptr noundef) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @vektorfeltoltes(ptr noundef %fvektor) #0 {
entry:
  %fvektor.addr = alloca ptr, align 8
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %fvektor, ptr %fvektor.addr, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, ptr %j, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %1, 20
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load ptr, ptr %fvektor.addr, align 8
  %3 = load i32, ptr %j, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [20 x i32], ptr %2, i64 %idxprom
  %4 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [20 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  store i32 0, ptr %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond1, !llvm.loop !8

for.end:                                          ; preds = %for.cond1
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %6 = load i32, ptr %j, align 4
  %inc7 = add nsw i32 %6, 1
  store i32 %inc7, ptr %j, align 4
  br label %for.cond, !llvm.loop !9

for.end8:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @matrixfeltoltes(ptr noundef %fmatrix, float noundef %fp) #0 {
entry:
  %fmatrix.addr = alloca ptr, align 8
  %fp.addr = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %irany = alloca float, align 4
  %kicsirand = alloca float, align 4
  store ptr %fmatrix, ptr %fmatrix.addr, align 8
  store float %fp, ptr %fp.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 10
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %call = call i32 @rand()
  %conv = sitofp i32 %call to float
  store float %conv, ptr %irany, align 4
  %2 = load float, ptr %irany, align 4
  %div = fdiv float %2, 0x41E0000000000000
  store float %div, ptr %kicsirand, align 4
  %3 = load float, ptr %kicsirand, align 4
  %4 = load float, ptr %fp.addr, align 4
  %cmp4 = fcmp olt float %3, %4
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  %5 = load ptr, ptr %fmatrix.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr %5, i64 %idxprom
  %7 = load i32, ptr %j, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [10 x i32], ptr %arrayidx, i64 0, i64 %idxprom6
  store i32 1, ptr %arrayidx7, align 4
  br label %if.end

if.else:                                          ; preds = %for.body3
  %8 = load ptr, ptr %fmatrix.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [10 x i32], ptr %8, i64 %idxprom8
  %10 = load i32, ptr %j, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [10 x i32], ptr %arrayidx9, i64 0, i64 %idxprom10
  store i32 0, ptr %arrayidx11, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !10

for.end:                                          ; preds = %for.cond1
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %12 = load i32, ptr %i, align 4
  %inc13 = add nsw i32 %12, 1
  store i32 %inc13, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end14:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @bejaras(ptr noundef %fmatrix, ptr noundef %fsegedvektor) #0 {
entry:
  %fmatrix.addr = alloca ptr, align 8
  %fsegedvektor.addr = alloca ptr, align 8
  %clusterszam = alloca i32, align 4
  %unioszam = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %up = alloca i32, align 4
  %left = alloca i32, align 4
  store ptr %fmatrix, ptr %fmatrix.addr, align 8
  store ptr %fsegedvektor, ptr %fsegedvektor.addr, align 8
  store i32 1, ptr %clusterszam, align 4
  store i32 0, ptr %unioszam, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc77, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end79

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 10
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load ptr, ptr %fmatrix.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr %2, i64 %idxprom
  %4 = load i32, ptr %j, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [10 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %5 = load i32, ptr %arrayidx5, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end75

if.then:                                          ; preds = %for.body3
  %6 = load i32, ptr %i, align 4
  %cmp6 = icmp eq i32 %6, 0
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %7 = load ptr, ptr %fmatrix.addr, align 8
  %8 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %8, 1
  %idxprom7 = sext i32 %sub to i64
  %arrayidx8 = getelementptr inbounds [10 x i32], ptr %7, i64 %idxprom7
  %9 = load i32, ptr %j, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [10 x i32], ptr %arrayidx8, i64 0, i64 %idxprom9
  %10 = load i32, ptr %arrayidx10, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %10, %cond.false ]
  store i32 %cond, ptr %up, align 4
  %11 = load i32, ptr %j, align 4
  %cmp11 = icmp eq i32 %11, 0
  br i1 %cmp11, label %cond.true12, label %cond.false13

cond.true12:                                      ; preds = %cond.end
  br label %cond.end19

cond.false13:                                     ; preds = %cond.end
  %12 = load ptr, ptr %fmatrix.addr, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [10 x i32], ptr %12, i64 %idxprom14
  %14 = load i32, ptr %j, align 4
  %sub16 = sub nsw i32 %14, 1
  %idxprom17 = sext i32 %sub16 to i64
  %arrayidx18 = getelementptr inbounds [10 x i32], ptr %arrayidx15, i64 0, i64 %idxprom17
  %15 = load i32, ptr %arrayidx18, align 4
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false13, %cond.true12
  %cond20 = phi i32 [ 0, %cond.true12 ], [ %15, %cond.false13 ]
  store i32 %cond20, ptr %left, align 4
  %16 = load i32, ptr %up, align 4
  %tobool21 = icmp ne i32 %16, 0
  %lnot = xor i1 %tobool21, true
  %lnot22 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot22 to i32
  %17 = load i32, ptr %left, align 4
  %tobool23 = icmp ne i32 %17, 0
  %lnot24 = xor i1 %tobool23, true
  %lnot26 = xor i1 %lnot24, true
  %lnot.ext27 = zext i1 %lnot26 to i32
  %add = add nsw i32 %lnot.ext, %lnot.ext27
  switch i32 %add, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb32
    i32 2, label %sw.bb42
  ]

sw.bb:                                            ; preds = %cond.end19
  %18 = load i32, ptr %clusterszam, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %clusterszam, align 4
  %19 = load ptr, ptr %fmatrix.addr, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %20 to i64
  %arrayidx29 = getelementptr inbounds [10 x i32], ptr %19, i64 %idxprom28
  %21 = load i32, ptr %j, align 4
  %idxprom30 = sext i32 %21 to i64
  %arrayidx31 = getelementptr inbounds [10 x i32], ptr %arrayidx29, i64 0, i64 %idxprom30
  store i32 %18, ptr %arrayidx31, align 4
  br label %sw.epilog

sw.bb32:                                          ; preds = %cond.end19
  %22 = load i32, ptr %up, align 4
  %23 = load i32, ptr %left, align 4
  %cmp33 = icmp sgt i32 %22, %23
  br i1 %cmp33, label %cond.true34, label %cond.false35

cond.true34:                                      ; preds = %sw.bb32
  %24 = load i32, ptr %up, align 4
  br label %cond.end36

cond.false35:                                     ; preds = %sw.bb32
  %25 = load i32, ptr %left, align 4
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false35, %cond.true34
  %cond37 = phi i32 [ %24, %cond.true34 ], [ %25, %cond.false35 ]
  %26 = load ptr, ptr %fmatrix.addr, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom38 = sext i32 %27 to i64
  %arrayidx39 = getelementptr inbounds [10 x i32], ptr %26, i64 %idxprom38
  %28 = load i32, ptr %j, align 4
  %idxprom40 = sext i32 %28 to i64
  %arrayidx41 = getelementptr inbounds [10 x i32], ptr %arrayidx39, i64 0, i64 %idxprom40
  store i32 %cond37, ptr %arrayidx41, align 4
  br label %sw.epilog

sw.bb42:                                          ; preds = %cond.end19
  %29 = load i32, ptr %up, align 4
  %30 = load i32, ptr %left, align 4
  %cmp43 = icmp ne i32 %29, %30
  br i1 %cmp43, label %if.then44, label %if.else69

if.then44:                                        ; preds = %sw.bb42
  %31 = load i32, ptr %up, align 4
  %32 = load i32, ptr %left, align 4
  %cmp45 = icmp slt i32 %31, %32
  br i1 %cmp45, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.then44
  %33 = load i32, ptr %up, align 4
  %34 = load ptr, ptr %fmatrix.addr, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom47 = sext i32 %35 to i64
  %arrayidx48 = getelementptr inbounds [10 x i32], ptr %34, i64 %idxprom47
  %36 = load i32, ptr %j, align 4
  %idxprom49 = sext i32 %36 to i64
  %arrayidx50 = getelementptr inbounds [10 x i32], ptr %arrayidx48, i64 0, i64 %idxprom49
  store i32 %33, ptr %arrayidx50, align 4
  %37 = load i32, ptr %up, align 4
  %38 = load ptr, ptr %fsegedvektor.addr, align 8
  %arrayidx51 = getelementptr inbounds [20 x i32], ptr %38, i64 0
  %39 = load i32, ptr %unioszam, align 4
  %idxprom52 = sext i32 %39 to i64
  %arrayidx53 = getelementptr inbounds [20 x i32], ptr %arrayidx51, i64 0, i64 %idxprom52
  store i32 %37, ptr %arrayidx53, align 4
  %40 = load i32, ptr %left, align 4
  %41 = load ptr, ptr %fsegedvektor.addr, align 8
  %arrayidx54 = getelementptr inbounds [20 x i32], ptr %41, i64 1
  %42 = load i32, ptr %unioszam, align 4
  %idxprom55 = sext i32 %42 to i64
  %arrayidx56 = getelementptr inbounds [20 x i32], ptr %arrayidx54, i64 0, i64 %idxprom55
  store i32 %40, ptr %arrayidx56, align 4
  %43 = load i32, ptr %unioszam, align 4
  %inc57 = add nsw i32 %43, 1
  store i32 %inc57, ptr %unioszam, align 4
  br label %if.end

if.else:                                          ; preds = %if.then44
  %44 = load i32, ptr %left, align 4
  %45 = load ptr, ptr %fmatrix.addr, align 8
  %46 = load i32, ptr %i, align 4
  %idxprom58 = sext i32 %46 to i64
  %arrayidx59 = getelementptr inbounds [10 x i32], ptr %45, i64 %idxprom58
  %47 = load i32, ptr %j, align 4
  %idxprom60 = sext i32 %47 to i64
  %arrayidx61 = getelementptr inbounds [10 x i32], ptr %arrayidx59, i64 0, i64 %idxprom60
  store i32 %44, ptr %arrayidx61, align 4
  %48 = load i32, ptr %left, align 4
  %49 = load ptr, ptr %fsegedvektor.addr, align 8
  %arrayidx62 = getelementptr inbounds [20 x i32], ptr %49, i64 0
  %50 = load i32, ptr %unioszam, align 4
  %idxprom63 = sext i32 %50 to i64
  %arrayidx64 = getelementptr inbounds [20 x i32], ptr %arrayidx62, i64 0, i64 %idxprom63
  store i32 %48, ptr %arrayidx64, align 4
  %51 = load i32, ptr %up, align 4
  %52 = load ptr, ptr %fsegedvektor.addr, align 8
  %arrayidx65 = getelementptr inbounds [20 x i32], ptr %52, i64 1
  %53 = load i32, ptr %unioszam, align 4
  %idxprom66 = sext i32 %53 to i64
  %arrayidx67 = getelementptr inbounds [20 x i32], ptr %arrayidx65, i64 0, i64 %idxprom66
  store i32 %51, ptr %arrayidx67, align 4
  %54 = load i32, ptr %unioszam, align 4
  %inc68 = add nsw i32 %54, 1
  store i32 %inc68, ptr %unioszam, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then46
  br label %if.end74

if.else69:                                        ; preds = %sw.bb42
  %55 = load i32, ptr %up, align 4
  %56 = load ptr, ptr %fmatrix.addr, align 8
  %57 = load i32, ptr %i, align 4
  %idxprom70 = sext i32 %57 to i64
  %arrayidx71 = getelementptr inbounds [10 x i32], ptr %56, i64 %idxprom70
  %58 = load i32, ptr %j, align 4
  %idxprom72 = sext i32 %58 to i64
  %arrayidx73 = getelementptr inbounds [10 x i32], ptr %arrayidx71, i64 0, i64 %idxprom72
  store i32 %55, ptr %arrayidx73, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.else69, %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end19, %if.end74, %cond.end36, %sw.bb
  br label %if.end75

if.end75:                                         ; preds = %sw.epilog, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end75
  %59 = load i32, ptr %j, align 4
  %inc76 = add nsw i32 %59, 1
  store i32 %inc76, ptr %j, align 4
  br label %for.cond1, !llvm.loop !12

for.end:                                          ; preds = %for.cond1
  br label %for.inc77

for.inc77:                                        ; preds = %for.end
  %60 = load i32, ptr %i, align 4
  %inc78 = add nsw i32 %60, 1
  store i32 %inc78, ptr %i, align 4
  br label %for.cond, !llvm.loop !13

for.end79:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @clusterjoin(ptr noundef %fmatrix, ptr noundef %fsegedvektor) #0 {
entry:
  %fmatrix.addr = alloca ptr, align 8
  %fsegedvektor.addr = alloca ptr, align 8
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %fmatrix, ptr %fmatrix.addr, align 8
  store ptr %fsegedvektor, ptr %fsegedvektor.addr, align 8
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc34, %entry
  %0 = load i32, ptr %k, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end36

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %fsegedvektor.addr, align 8
  %arrayidx = getelementptr inbounds [20 x i32], ptr %1, i64 1
  %2 = load i32, ptr %k, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx1 = getelementptr inbounds [20 x i32], ptr %arrayidx, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx1, align 4
  %cmp2 = icmp ne i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.end33

if.then:                                          ; preds = %for.body
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc30, %if.then
  %4 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %4, 10
  br i1 %cmp4, label %for.body5, label %for.end32

for.body5:                                        ; preds = %for.cond3
  store i32 0, ptr %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body5
  %5 = load i32, ptr %j, align 4
  %cmp7 = icmp slt i32 %5, 10
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %6 = load ptr, ptr %fmatrix.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [10 x i32], ptr %6, i64 %idxprom9
  %8 = load i32, ptr %j, align 4
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [10 x i32], ptr %arrayidx10, i64 0, i64 %idxprom11
  %9 = load i32, ptr %arrayidx12, align 4
  %cmp13 = icmp ne i32 %9, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body8
  %10 = load ptr, ptr %fmatrix.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [10 x i32], ptr %10, i64 %idxprom14
  %12 = load i32, ptr %j, align 4
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [10 x i32], ptr %arrayidx15, i64 0, i64 %idxprom16
  %13 = load i32, ptr %arrayidx17, align 4
  %14 = load ptr, ptr %fsegedvektor.addr, align 8
  %arrayidx18 = getelementptr inbounds [20 x i32], ptr %14, i64 1
  %15 = load i32, ptr %k, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [20 x i32], ptr %arrayidx18, i64 0, i64 %idxprom19
  %16 = load i32, ptr %arrayidx20, align 4
  %cmp21 = icmp eq i32 %13, %16
  br i1 %cmp21, label %if.then22, label %if.end

if.then22:                                        ; preds = %land.lhs.true
  %17 = load ptr, ptr %fsegedvektor.addr, align 8
  %arrayidx23 = getelementptr inbounds [20 x i32], ptr %17, i64 0
  %18 = load i32, ptr %k, align 4
  %idxprom24 = sext i32 %18 to i64
  %arrayidx25 = getelementptr inbounds [20 x i32], ptr %arrayidx23, i64 0, i64 %idxprom24
  %19 = load i32, ptr %arrayidx25, align 4
  %20 = load ptr, ptr %fmatrix.addr, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %21 to i64
  %arrayidx27 = getelementptr inbounds [10 x i32], ptr %20, i64 %idxprom26
  %22 = load i32, ptr %j, align 4
  %idxprom28 = sext i32 %22 to i64
  %arrayidx29 = getelementptr inbounds [10 x i32], ptr %arrayidx27, i64 0, i64 %idxprom28
  store i32 %19, ptr %arrayidx29, align 4
  br label %if.end

if.end:                                           ; preds = %if.then22, %land.lhs.true, %for.body8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, ptr %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond6, !llvm.loop !14

for.end:                                          ; preds = %for.cond6
  br label %for.inc30

for.inc30:                                        ; preds = %for.end
  %24 = load i32, ptr %i, align 4
  %inc31 = add nsw i32 %24, 1
  store i32 %inc31, ptr %i, align 4
  br label %for.cond3, !llvm.loop !15

for.end32:                                        ; preds = %for.cond3
  br label %if.end33

if.end33:                                         ; preds = %for.end32, %for.body
  br label %for.inc34

for.inc34:                                        ; preds = %if.end33
  %25 = load i32, ptr %k, align 4
  %inc35 = add nsw i32 %25, 1
  store i32 %inc35, ptr %k, align 4
  br label %for.cond, !llvm.loop !16

for.end36:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @eldont(ptr noundef %fmatrix) #0 {
entry:
  %retval = alloca i32, align 4
  %fmatrix.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %fmatrix, ptr %fmatrix.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %fmatrix.addr, align 8
  %arrayidx = getelementptr inbounds [10 x i32], ptr %1, i64 0
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx1 = getelementptr inbounds [10 x i32], ptr %arrayidx, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx1, align 4
  %cmp2 = icmp ne i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.end14

if.then:                                          ; preds = %for.body
  store i32 0, ptr %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %if.then
  %4 = load i32, ptr %j, align 4
  %cmp4 = icmp slt i32 %4, 10
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %5 = load ptr, ptr %fmatrix.addr, align 8
  %arrayidx6 = getelementptr inbounds [10 x i32], ptr %5, i64 9
  %6 = load i32, ptr %j, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [10 x i32], ptr %arrayidx6, i64 0, i64 %idxprom7
  %7 = load i32, ptr %arrayidx8, align 4
  %8 = load ptr, ptr %fmatrix.addr, align 8
  %arrayidx9 = getelementptr inbounds [10 x i32], ptr %8, i64 0
  %9 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [10 x i32], ptr %arrayidx9, i64 0, i64 %idxprom10
  %10 = load i32, ptr %arrayidx11, align 4
  %cmp12 = icmp eq i32 %7, %10
  br i1 %cmp12, label %if.then13, label %if.end

if.then13:                                        ; preds = %for.body5
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond3, !llvm.loop !17

for.end:                                          ; preds = %for.cond3
  br label %if.end14

if.end14:                                         ; preds = %for.end, %for.body
  br label %for.inc15

for.inc15:                                        ; preds = %if.end14
  %12 = load i32, ptr %i, align 4
  %inc16 = add nsw i32 %12, 1
  store i32 %inc16, ptr %i, align 4
  br label %for.cond, !llvm.loop !18

for.end17:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end17, %if.then13
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @fclose(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @matrixkiiratas2(ptr noundef %fsegedvektor) #0 {
entry:
  %fsegedvektor.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %fsegedvektor, ptr %fsegedvektor.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 2
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load ptr, ptr %fsegedvektor.addr, align 8
  %3 = load i32, ptr %j, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [20 x i32], ptr %2, i64 %idxprom
  %4 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [20 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %5 = load i32, ptr %arrayidx5, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, ptr %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !19

for.end:                                          ; preds = %for.cond1
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %7 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond, !llvm.loop !20

for.end9:                                         ; preds = %for.cond
  ret void
}

declare i32 @rand() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @matrixkiiratas(ptr noundef %fmatrix) #0 {
entry:
  %fmatrix.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %fmatrix, ptr %fmatrix.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc52, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end54

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 10
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load ptr, ptr %fmatrix.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr %2, i64 %idxprom
  %4 = load i32, ptr %j, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [10 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %5 = load i32, ptr %arrayidx5, align 4
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
    i32 3, label %sw.bb16
    i32 4, label %sw.bb22
    i32 5, label %sw.bb28
    i32 6, label %sw.bb34
    i32 7, label %sw.bb40
  ]

sw.bb:                                            ; preds = %for.body3
  %6 = load ptr, ptr %fmatrix.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [10 x i32], ptr %6, i64 %idxprom6
  %8 = load i32, ptr %j, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [10 x i32], ptr %arrayidx7, i64 0, i64 %idxprom8
  %9 = load i32, ptr %arrayidx9, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %9)
  br label %sw.epilog

sw.bb10:                                          ; preds = %for.body3
  %10 = load ptr, ptr %fmatrix.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [10 x i32], ptr %10, i64 %idxprom11
  %12 = load i32, ptr %j, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [10 x i32], ptr %arrayidx12, i64 0, i64 %idxprom13
  %13 = load i32, ptr %arrayidx14, align 4
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef %13)
  br label %sw.epilog

sw.bb16:                                          ; preds = %for.body3
  %14 = load ptr, ptr %fmatrix.addr, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [10 x i32], ptr %14, i64 %idxprom17
  %16 = load i32, ptr %j, align 4
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [10 x i32], ptr %arrayidx18, i64 0, i64 %idxprom19
  %17 = load i32, ptr %arrayidx20, align 4
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %17)
  br label %sw.epilog

sw.bb22:                                          ; preds = %for.body3
  %18 = load ptr, ptr %fmatrix.addr, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom23 = sext i32 %19 to i64
  %arrayidx24 = getelementptr inbounds [10 x i32], ptr %18, i64 %idxprom23
  %20 = load i32, ptr %j, align 4
  %idxprom25 = sext i32 %20 to i64
  %arrayidx26 = getelementptr inbounds [10 x i32], ptr %arrayidx24, i64 0, i64 %idxprom25
  %21 = load i32, ptr %arrayidx26, align 4
  %call27 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i32 noundef %21)
  br label %sw.epilog

sw.bb28:                                          ; preds = %for.body3
  %22 = load ptr, ptr %fmatrix.addr, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %23 to i64
  %arrayidx30 = getelementptr inbounds [10 x i32], ptr %22, i64 %idxprom29
  %24 = load i32, ptr %j, align 4
  %idxprom31 = sext i32 %24 to i64
  %arrayidx32 = getelementptr inbounds [10 x i32], ptr %arrayidx30, i64 0, i64 %idxprom31
  %25 = load i32, ptr %arrayidx32, align 4
  %call33 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i32 noundef %25)
  br label %sw.epilog

sw.bb34:                                          ; preds = %for.body3
  %26 = load ptr, ptr %fmatrix.addr, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom35 = sext i32 %27 to i64
  %arrayidx36 = getelementptr inbounds [10 x i32], ptr %26, i64 %idxprom35
  %28 = load i32, ptr %j, align 4
  %idxprom37 = sext i32 %28 to i64
  %arrayidx38 = getelementptr inbounds [10 x i32], ptr %arrayidx36, i64 0, i64 %idxprom37
  %29 = load i32, ptr %arrayidx38, align 4
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, i32 noundef %29)
  br label %sw.epilog

sw.bb40:                                          ; preds = %for.body3
  %30 = load ptr, ptr %fmatrix.addr, align 8
  %31 = load i32, ptr %i, align 4
  %idxprom41 = sext i32 %31 to i64
  %arrayidx42 = getelementptr inbounds [10 x i32], ptr %30, i64 %idxprom41
  %32 = load i32, ptr %j, align 4
  %idxprom43 = sext i32 %32 to i64
  %arrayidx44 = getelementptr inbounds [10 x i32], ptr %arrayidx42, i64 0, i64 %idxprom43
  %33 = load i32, ptr %arrayidx44, align 4
  %call45 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %33)
  br label %sw.epilog

sw.default:                                       ; preds = %for.body3
  %34 = load ptr, ptr %fmatrix.addr, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom46 = sext i32 %35 to i64
  %arrayidx47 = getelementptr inbounds [10 x i32], ptr %34, i64 %idxprom46
  %36 = load i32, ptr %j, align 4
  %idxprom48 = sext i32 %36 to i64
  %arrayidx49 = getelementptr inbounds [10 x i32], ptr %arrayidx47, i64 0, i64 %idxprom48
  %37 = load i32, ptr %arrayidx49, align 4
  %call50 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %37)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb40, %sw.bb34, %sw.bb28, %sw.bb22, %sw.bb16, %sw.bb10, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %38 = load i32, ptr %j, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !21

for.end:                                          ; preds = %for.cond1
  %call51 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %for.inc52

for.inc52:                                        ; preds = %for.end
  %39 = load i32, ptr %i, align 4
  %inc53 = add nsw i32 %39, 1
  store i32 %inc53, ptr %i, align 4
  br label %for.cond, !llvm.loop !22

for.end54:                                        ; preds = %for.cond
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind }

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
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
