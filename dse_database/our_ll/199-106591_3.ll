; ModuleID = 'code/199-106591_3.c'
source_filename = "code/199-106591_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %matrix = alloca [10 x [10 x i32]], align 16
  %atmente = alloca i32, align 4
  %segedvektor = alloca [2 x [20 x i32]], align 16
  %valosz = alloca float, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %j = alloca i32, align 4
  %p = alloca float, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i64 @time(i64* null) #3
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #3
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %atmente, align 4
  %1 = load i32, i32* %j, align 4
  %conv3 = sitofp i32 %1 to float
  %div = fdiv float %conv3, 1.000000e+02
  store float %div, float* %p, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %2, 1000
  br i1 %cmp5, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond4
  %arraydecay = getelementptr inbounds [2 x [20 x i32]], [2 x [20 x i32]]* %segedvektor, i64 0, i64 0
  call void @vektorfeltoltes([20 x i32]* %arraydecay)
  %arraydecay8 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %matrix, i64 0, i64 0
  %3 = load float, float* %p, align 4
  call void @matrixfeltoltes([10 x i32]* %arraydecay8, float %3)
  %arraydecay9 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %matrix, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [2 x [20 x i32]], [2 x [20 x i32]]* %segedvektor, i64 0, i64 0
  call void @bejaras([10 x i32]* %arraydecay9, [20 x i32]* %arraydecay10)
  %arraydecay11 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %matrix, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [2 x [20 x i32]], [2 x [20 x i32]]* %segedvektor, i64 0, i64 0
  call void @clusterjoin([10 x i32]* %arraydecay11, [20 x i32]* %arraydecay12)
  %arraydecay13 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* %matrix, i64 0, i64 0
  %call14 = call i32 @eldont([10 x i32]* %arraydecay13)
  %4 = load i32, i32* %atmente, align 4
  %add = add nsw i32 %4, %call14
  store i32 %add, i32* %atmente, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond4, !llvm.loop !4

for.end:                                          ; preds = %for.cond4
  %6 = load i32, i32* %atmente, align 4
  %conv15 = sitofp i32 %6 to float
  %div16 = fdiv float %conv15, 1.000000e+03
  %mul = fmul float %div16, 1.000000e+02
  store float %mul, float* %valosz, align 4
  %7 = load float, float* %p, align 4
  %conv17 = fpext float %7 to double
  %8 = load float, float* %valosz, align 4
  %conv18 = fpext float %8 to double
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), double %conv17, double %conv18)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %10 = load float, float* %p, align 4
  %conv20 = fpext float %10 to double
  %11 = load float, float* %valosz, align 4
  %conv21 = fpext float %11 to double
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), double %conv20, double %conv21)
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %12 = load i32, i32* %j, align 4
  %inc24 = add nsw i32 %12, 1
  store i32 %inc24, i32* %j, align 4
  br label %for.cond, !llvm.loop !6

for.end25:                                        ; preds = %for.cond
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call26 = call i32 @fclose(%struct._IO_FILE* %13)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vektorfeltoltes([20 x i32]* %fvektor) #0 {
entry:
  %fvektor.addr = alloca [20 x i32]*, align 8
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  store [20 x i32]* %fvektor, [20 x i32]** %fvektor.addr, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %1, 20
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load [20 x i32]*, [20 x i32]** %fvektor.addr, align 8
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 %idxprom
  %4 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx, i64 0, i64 %idxprom4
  store i32 0, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond1, !llvm.loop !7

for.end:                                          ; preds = %for.cond1
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %6 = load i32, i32* %j, align 4
  %inc7 = add nsw i32 %6, 1
  store i32 %inc7, i32* %j, align 4
  br label %for.cond, !llvm.loop !8

for.end8:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrixfeltoltes([10 x i32]* %fmatrix, float %fp) #0 {
entry:
  %fmatrix.addr = alloca [10 x i32]*, align 8
  %fp.addr = alloca float, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %irany = alloca float, align 4
  %kicsirand = alloca float, align 4
  store [10 x i32]* %fmatrix, [10 x i32]** %fmatrix.addr, align 8
  store float %fp, float* %fp.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 10
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %call = call i32 @rand() #3
  %conv = sitofp i32 %call to float
  store float %conv, float* %irany, align 4
  %2 = load float, float* %irany, align 4
  %div = fdiv float %2, 0x41E0000000000000
  store float %div, float* %kicsirand, align 4
  %3 = load float, float* %kicsirand, align 4
  %4 = load float, float* %fp.addr, align 4
  %cmp4 = fcmp olt float %3, %4
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  %5 = load [10 x i32]*, [10 x i32]** %fmatrix.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 %idxprom
  %7 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx, i64 0, i64 %idxprom6
  store i32 1, i32* %arrayidx7, align 4
  br label %if.end

if.else:                                          ; preds = %for.body3
  %8 = load [10 x i32]*, [10 x i32]** %fmatrix.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 %idxprom8
  %10 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx9, i64 0, i64 %idxprom10
  store i32 0, i32* %arrayidx11, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %12 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %12, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond, !llvm.loop !10

for.end14:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bejaras([10 x i32]* %fmatrix, [20 x i32]* %fsegedvektor) #0 {
entry:
  %fmatrix.addr = alloca [10 x i32]*, align 8
  %fsegedvektor.addr = alloca [20 x i32]*, align 8
  %clusterszam = alloca i32, align 4
  %unioszam = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %up = alloca i32, align 4
  %left = alloca i32, align 4
  store [10 x i32]* %fmatrix, [10 x i32]** %fmatrix.addr, align 8
  store [20 x i32]* %fsegedvektor, [20 x i32]** %fsegedvektor.addr, align 8
  store i32 1, i32* %clusterszam, align 4
  store i32 0, i32* %unioszam, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc77, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end79

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 10
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load [10 x i32]*, [10 x i32]** %fmatrix.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 %idxprom
  %4 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx, i64 0, i64 %idxprom4
  %5 = load i32, i32* %arrayidx5, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end75

if.then:                                          ; preds = %for.body3
  %6 = load i32, i32* %i, align 4
  %cmp6 = icmp eq i32 %6, 0
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %7 = load [10 x i32]*, [10 x i32]** %fmatrix.addr, align 8
  %8 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %8, 1
  %idxprom7 = sext i32 %sub to i64
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %idxprom7
  %9 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx8, i64 0, i64 %idxprom9
  %10 = load i32, i32* %arrayidx10, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %10, %cond.false ]
  store i32 %cond, i32* %up, align 4
  %11 = load i32, i32* %j, align 4
  %cmp11 = icmp eq i32 %11, 0
  br i1 %cmp11, label %cond.true12, label %cond.false13

cond.true12:                                      ; preds = %cond.end
  br label %cond.end19

cond.false13:                                     ; preds = %cond.end
  %12 = load [10 x i32]*, [10 x i32]** %fmatrix.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 %idxprom14
  %14 = load i32, i32* %j, align 4
  %sub16 = sub nsw i32 %14, 1
  %idxprom17 = sext i32 %sub16 to i64
  %arrayidx18 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx15, i64 0, i64 %idxprom17
  %15 = load i32, i32* %arrayidx18, align 4
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false13, %cond.true12
  %cond20 = phi i32 [ 0, %cond.true12 ], [ %15, %cond.false13 ]
  store i32 %cond20, i32* %left, align 4
  %16 = load i32, i32* %up, align 4
  %tobool21 = icmp ne i32 %16, 0
  %lnot = xor i1 %tobool21, true
  %lnot22 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot22 to i32
  %17 = load i32, i32* %left, align 4
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
  %18 = load i32, i32* %clusterszam, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %clusterszam, align 4
  %19 = load [10 x i32]*, [10 x i32]** %fmatrix.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %20 to i64
  %arrayidx29 = getelementptr inbounds [10 x i32], [10 x i32]* %19, i64 %idxprom28
  %21 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %21 to i64
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx29, i64 0, i64 %idxprom30
  store i32 %18, i32* %arrayidx31, align 4
  br label %sw.epilog

sw.bb32:                                          ; preds = %cond.end19
  %22 = load i32, i32* %up, align 4
  %23 = load i32, i32* %left, align 4
  %cmp33 = icmp sgt i32 %22, %23
  br i1 %cmp33, label %cond.true34, label %cond.false35

cond.true34:                                      ; preds = %sw.bb32
  %24 = load i32, i32* %up, align 4
  br label %cond.end36

cond.false35:                                     ; preds = %sw.bb32
  %25 = load i32, i32* %left, align 4
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false35, %cond.true34
  %cond37 = phi i32 [ %24, %cond.true34 ], [ %25, %cond.false35 ]
  %26 = load [10 x i32]*, [10 x i32]** %fmatrix.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %27 to i64
  %arrayidx39 = getelementptr inbounds [10 x i32], [10 x i32]* %26, i64 %idxprom38
  %28 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %28 to i64
  %arrayidx41 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx39, i64 0, i64 %idxprom40
  store i32 %cond37, i32* %arrayidx41, align 4
  br label %sw.epilog

sw.bb42:                                          ; preds = %cond.end19
  %29 = load i32, i32* %up, align 4
  %30 = load i32, i32* %left, align 4
  %cmp43 = icmp ne i32 %29, %30
  br i1 %cmp43, label %if.then44, label %if.else69

if.then44:                                        ; preds = %sw.bb42
  %31 = load i32, i32* %up, align 4
  %32 = load i32, i32* %left, align 4
  %cmp45 = icmp slt i32 %31, %32
  br i1 %cmp45, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.then44
  %33 = load i32, i32* %up, align 4
  %34 = load [10 x i32]*, [10 x i32]** %fmatrix.addr, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %35 to i64
  %arrayidx48 = getelementptr inbounds [10 x i32], [10 x i32]* %34, i64 %idxprom47
  %36 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %36 to i64
  %arrayidx50 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx48, i64 0, i64 %idxprom49
  store i32 %33, i32* %arrayidx50, align 4
  %37 = load i32, i32* %up, align 4
  %38 = load [20 x i32]*, [20 x i32]** %fsegedvektor.addr, align 8
  %arrayidx51 = getelementptr inbounds [20 x i32], [20 x i32]* %38, i64 0
  %39 = load i32, i32* %unioszam, align 4
  %idxprom52 = sext i32 %39 to i64
  %arrayidx53 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx51, i64 0, i64 %idxprom52
  store i32 %37, i32* %arrayidx53, align 4
  %40 = load i32, i32* %left, align 4
  %41 = load [20 x i32]*, [20 x i32]** %fsegedvektor.addr, align 8
  %arrayidx54 = getelementptr inbounds [20 x i32], [20 x i32]* %41, i64 1
  %42 = load i32, i32* %unioszam, align 4
  %idxprom55 = sext i32 %42 to i64
  %arrayidx56 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx54, i64 0, i64 %idxprom55
  store i32 %40, i32* %arrayidx56, align 4
  %43 = load i32, i32* %unioszam, align 4
  %inc57 = add nsw i32 %43, 1
  store i32 %inc57, i32* %unioszam, align 4
  br label %if.end

if.else:                                          ; preds = %if.then44
  %44 = load i32, i32* %left, align 4
  %45 = load [10 x i32]*, [10 x i32]** %fmatrix.addr, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %46 to i64
  %arrayidx59 = getelementptr inbounds [10 x i32], [10 x i32]* %45, i64 %idxprom58
  %47 = load i32, i32* %j, align 4
  %idxprom60 = sext i32 %47 to i64
  %arrayidx61 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx59, i64 0, i64 %idxprom60
  store i32 %44, i32* %arrayidx61, align 4
  %48 = load i32, i32* %left, align 4
  %49 = load [20 x i32]*, [20 x i32]** %fsegedvektor.addr, align 8
  %arrayidx62 = getelementptr inbounds [20 x i32], [20 x i32]* %49, i64 0
  %50 = load i32, i32* %unioszam, align 4
  %idxprom63 = sext i32 %50 to i64
  %arrayidx64 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx62, i64 0, i64 %idxprom63
  store i32 %48, i32* %arrayidx64, align 4
  %51 = load i32, i32* %up, align 4
  %52 = load [20 x i32]*, [20 x i32]** %fsegedvektor.addr, align 8
  %arrayidx65 = getelementptr inbounds [20 x i32], [20 x i32]* %52, i64 1
  %53 = load i32, i32* %unioszam, align 4
  %idxprom66 = sext i32 %53 to i64
  %arrayidx67 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx65, i64 0, i64 %idxprom66
  store i32 %51, i32* %arrayidx67, align 4
  %54 = load i32, i32* %unioszam, align 4
  %inc68 = add nsw i32 %54, 1
  store i32 %inc68, i32* %unioszam, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then46
  br label %if.end74

if.else69:                                        ; preds = %sw.bb42
  %55 = load i32, i32* %up, align 4
  %56 = load [10 x i32]*, [10 x i32]** %fmatrix.addr, align 8
  %57 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %57 to i64
  %arrayidx71 = getelementptr inbounds [10 x i32], [10 x i32]* %56, i64 %idxprom70
  %58 = load i32, i32* %j, align 4
  %idxprom72 = sext i32 %58 to i64
  %arrayidx73 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx71, i64 0, i64 %idxprom72
  store i32 %55, i32* %arrayidx73, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.else69, %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end19, %if.end74, %cond.end36, %sw.bb
  br label %if.end75

if.end75:                                         ; preds = %sw.epilog, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end75
  %59 = load i32, i32* %j, align 4
  %inc76 = add nsw i32 %59, 1
  store i32 %inc76, i32* %j, align 4
  br label %for.cond1, !llvm.loop !11

for.end:                                          ; preds = %for.cond1
  br label %for.inc77

for.inc77:                                        ; preds = %for.end
  %60 = load i32, i32* %i, align 4
  %inc78 = add nsw i32 %60, 1
  store i32 %inc78, i32* %i, align 4
  br label %for.cond, !llvm.loop !12

for.end79:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterjoin([10 x i32]* %fmatrix, [20 x i32]* %fsegedvektor) #0 {
entry:
  %fmatrix.addr = alloca [10 x i32]*, align 8
  %fsegedvektor.addr = alloca [20 x i32]*, align 8
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store [10 x i32]* %fmatrix, [10 x i32]** %fmatrix.addr, align 8
  store [20 x i32]* %fsegedvektor, [20 x i32]** %fsegedvektor.addr, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc34, %entry
  %0 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end36

for.body:                                         ; preds = %for.cond
  %1 = load [20 x i32]*, [20 x i32]** %fsegedvektor.addr, align 8
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* %1, i64 1
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx1 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx1, align 4
  %cmp2 = icmp ne i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.end33

if.then:                                          ; preds = %for.body
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc30, %if.then
  %4 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %4, 10
  br i1 %cmp4, label %for.body5, label %for.end32

for.body5:                                        ; preds = %for.cond3
  store i32 0, i32* %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body5
  %5 = load i32, i32* %j, align 4
  %cmp7 = icmp slt i32 %5, 10
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %6 = load [10 x i32]*, [10 x i32]** %fmatrix.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %idxprom9
  %8 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx10, i64 0, i64 %idxprom11
  %9 = load i32, i32* %arrayidx12, align 4
  %cmp13 = icmp ne i32 %9, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body8
  %10 = load [10 x i32]*, [10 x i32]** %fmatrix.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 %idxprom14
  %12 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx15, i64 0, i64 %idxprom16
  %13 = load i32, i32* %arrayidx17, align 4
  %14 = load [20 x i32]*, [20 x i32]** %fsegedvektor.addr, align 8
  %arrayidx18 = getelementptr inbounds [20 x i32], [20 x i32]* %14, i64 1
  %15 = load i32, i32* %k, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx18, i64 0, i64 %idxprom19
  %16 = load i32, i32* %arrayidx20, align 4
  %cmp21 = icmp eq i32 %13, %16
  br i1 %cmp21, label %if.then22, label %if.end

if.then22:                                        ; preds = %land.lhs.true
  %17 = load [20 x i32]*, [20 x i32]** %fsegedvektor.addr, align 8
  %arrayidx23 = getelementptr inbounds [20 x i32], [20 x i32]* %17, i64 0
  %18 = load i32, i32* %k, align 4
  %idxprom24 = sext i32 %18 to i64
  %arrayidx25 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx23, i64 0, i64 %idxprom24
  %19 = load i32, i32* %arrayidx25, align 4
  %20 = load [10 x i32]*, [10 x i32]** %fmatrix.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %21 to i64
  %arrayidx27 = getelementptr inbounds [10 x i32], [10 x i32]* %20, i64 %idxprom26
  %22 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %22 to i64
  %arrayidx29 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx27, i64 0, i64 %idxprom28
  store i32 %19, i32* %arrayidx29, align 4
  br label %if.end

if.end:                                           ; preds = %if.then22, %land.lhs.true, %for.body8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond6, !llvm.loop !13

for.end:                                          ; preds = %for.cond6
  br label %for.inc30

for.inc30:                                        ; preds = %for.end
  %24 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %24, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond3, !llvm.loop !14

for.end32:                                        ; preds = %for.cond3
  br label %if.end33

if.end33:                                         ; preds = %for.end32, %for.body
  br label %for.inc34

for.inc34:                                        ; preds = %if.end33
  %25 = load i32, i32* %k, align 4
  %inc35 = add nsw i32 %25, 1
  store i32 %inc35, i32* %k, align 4
  br label %for.cond, !llvm.loop !15

for.end36:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eldont([10 x i32]* %fmatrix) #0 {
entry:
  %retval = alloca i32, align 4
  %fmatrix.addr = alloca [10 x i32]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store [10 x i32]* %fmatrix, [10 x i32]** %fmatrix.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  %1 = load [10 x i32]*, [10 x i32]** %fmatrix.addr, align 8
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %1, i64 0
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx1 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx1, align 4
  %cmp2 = icmp ne i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.end14

if.then:                                          ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %if.then
  %4 = load i32, i32* %j, align 4
  %cmp4 = icmp slt i32 %4, 10
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %5 = load [10 x i32]*, [10 x i32]** %fmatrix.addr, align 8
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 9
  %6 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx6, i64 0, i64 %idxprom7
  %7 = load i32, i32* %arrayidx8, align 4
  %8 = load [10 x i32]*, [10 x i32]** %fmatrix.addr, align 8
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0
  %9 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx9, i64 0, i64 %idxprom10
  %10 = load i32, i32* %arrayidx11, align 4
  %cmp12 = icmp eq i32 %7, %10
  br i1 %cmp12, label %if.then13, label %if.end

if.then13:                                        ; preds = %for.body5
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !16

for.end:                                          ; preds = %for.cond3
  br label %if.end14

if.end14:                                         ; preds = %for.end, %for.body
  br label %for.inc15

for.inc15:                                        ; preds = %if.end14
  %12 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %12, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond, !llvm.loop !17

for.end17:                                        ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end17, %if.then13
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrixkiiratas2([20 x i32]* %fsegedvektor) #0 {
entry:
  %fsegedvektor.addr = alloca [20 x i32]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store [20 x i32]* %fsegedvektor, [20 x i32]** %fsegedvektor.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 2
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load [20 x i32]*, [20 x i32]** %fsegedvektor.addr, align 8
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* %2, i64 %idxprom
  %4 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [20 x i32], [20 x i32]* %arrayidx, i64 0, i64 %idxprom4
  %5 = load i32, i32* %arrayidx5, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, i32* %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !18

for.end:                                          ; preds = %for.cond1
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %7 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !19

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrixkiiratas([10 x i32]* %fmatrix) #0 {
entry:
  %fmatrix.addr = alloca [10 x i32]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store [10 x i32]* %fmatrix, [10 x i32]** %fmatrix.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc52, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end54

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 10
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load [10 x i32]*, [10 x i32]** %fmatrix.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %2, i64 %idxprom
  %4 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx, i64 0, i64 %idxprom4
  %5 = load i32, i32* %arrayidx5, align 4
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
  %6 = load [10 x i32]*, [10 x i32]** %fmatrix.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 %idxprom6
  %8 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx7, i64 0, i64 %idxprom8
  %9 = load i32, i32* %arrayidx9, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %9)
  br label %sw.epilog

sw.bb10:                                          ; preds = %for.body3
  %10 = load [10 x i32]*, [10 x i32]** %fmatrix.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 %idxprom11
  %12 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx12, i64 0, i64 %idxprom13
  %13 = load i32, i32* %arrayidx14, align 4
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %13)
  br label %sw.epilog

sw.bb16:                                          ; preds = %for.body3
  %14 = load [10 x i32]*, [10 x i32]** %fmatrix.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 %idxprom17
  %16 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx18, i64 0, i64 %idxprom19
  %17 = load i32, i32* %arrayidx20, align 4
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %17)
  br label %sw.epilog

sw.bb22:                                          ; preds = %for.body3
  %18 = load [10 x i32]*, [10 x i32]** %fmatrix.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %19 to i64
  %arrayidx24 = getelementptr inbounds [10 x i32], [10 x i32]* %18, i64 %idxprom23
  %20 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %20 to i64
  %arrayidx26 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx24, i64 0, i64 %idxprom25
  %21 = load i32, i32* %arrayidx26, align 4
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %21)
  br label %sw.epilog

sw.bb28:                                          ; preds = %for.body3
  %22 = load [10 x i32]*, [10 x i32]** %fmatrix.addr, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %23 to i64
  %arrayidx30 = getelementptr inbounds [10 x i32], [10 x i32]* %22, i64 %idxprom29
  %24 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %24 to i64
  %arrayidx32 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx30, i64 0, i64 %idxprom31
  %25 = load i32, i32* %arrayidx32, align 4
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %25)
  br label %sw.epilog

sw.bb34:                                          ; preds = %for.body3
  %26 = load [10 x i32]*, [10 x i32]** %fmatrix.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %27 to i64
  %arrayidx36 = getelementptr inbounds [10 x i32], [10 x i32]* %26, i64 %idxprom35
  %28 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %28 to i64
  %arrayidx38 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx36, i64 0, i64 %idxprom37
  %29 = load i32, i32* %arrayidx38, align 4
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %29)
  br label %sw.epilog

sw.bb40:                                          ; preds = %for.body3
  %30 = load [10 x i32]*, [10 x i32]** %fmatrix.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %31 to i64
  %arrayidx42 = getelementptr inbounds [10 x i32], [10 x i32]* %30, i64 %idxprom41
  %32 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %32 to i64
  %arrayidx44 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx42, i64 0, i64 %idxprom43
  %33 = load i32, i32* %arrayidx44, align 4
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %33)
  br label %sw.epilog

sw.default:                                       ; preds = %for.body3
  %34 = load [10 x i32]*, [10 x i32]** %fmatrix.addr, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %35 to i64
  %arrayidx47 = getelementptr inbounds [10 x i32], [10 x i32]* %34, i64 %idxprom46
  %36 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %36 to i64
  %arrayidx49 = getelementptr inbounds [10 x i32], [10 x i32]* %arrayidx47, i64 0, i64 %idxprom48
  %37 = load i32, i32* %arrayidx49, align 4
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %37)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb40, %sw.bb34, %sw.bb28, %sw.bb22, %sw.bb16, %sw.bb10, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %38 = load i32, i32* %j, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !20

for.end:                                          ; preds = %for.cond1
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %for.inc52

for.inc52:                                        ; preds = %for.end
  %39 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %39, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond, !llvm.loop !21

for.end54:                                        ; preds = %for.cond
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  ret void
}

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
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
