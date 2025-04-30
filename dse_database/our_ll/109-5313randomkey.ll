; ModuleID = 'code/109-5313randomkey.c'
source_filename = "code/109-5313randomkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"Error: Al abrir %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Key: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Uso: %s numero_de_bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"RandomKey %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"0.3\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Uso: %s numero_de_bytes archivo.txt\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Contacto: dalmemail@amaya.tk\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"%s error: %s no es valido\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @filekey(i32 %n_bytes, i8* %path) #0 {
entry:
  %retval = alloca i32, align 4
  %n_bytes.addr = alloca i32, align 4
  %path.addr = alloca i8*, align 8
  %fd = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  store i32 %n_bytes, i32* %n_bytes.addr, align 4
  store i8* %path, i8** %path.addr, align 8
  %0 = load i8*, i8** %path.addr, align 8
  %call = call i32 (i8*, i32, ...) @open(i8* %0, i32 1)
  store i32 %call, i32* %fd, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %path.addr, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %1)
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %n_bytes.addr, align 4
  %3 = zext i32 %2 to i64
  %4 = call i8* @llvm.stacksave()
  store i8* %4, i8** %saved_stack, align 8
  %vla = alloca i8, i64 %3, align 16
  store i64 %3, i64* %__vla_expr0, align 8
  %call2 = call i64 @time(i64* null) #5
  %conv = trunc i64 %call2 to i32
  call void @srand(i32 %conv) #5
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %n_bytes.addr, align 4
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call5 = call i32 @rand() #5
  %rem = srem i32 %call5, 126
  %add = add nsw i32 %rem, 33
  %conv6 = trunc i32 %add to i8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, i8* %vla, i64 %idxprom
  store i8 %conv6, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %fd, align 4
  %10 = load i32, i32* %n_bytes.addr, align 4
  %conv7 = sext i32 %10 to i64
  %call8 = call i64 @write(i32 %9, i8* %vla, i64 %conv7)
  %11 = load i32, i32* %fd, align 4
  %call9 = call i32 @close(i32 %11)
  store i32 0, i32* %retval, align 4
  %12 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %12)
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #3

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @makekey(i32 %n_bytes) #0 {
entry:
  %n_bytes.addr = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  store i32 %n_bytes, i32* %n_bytes.addr, align 4
  %0 = load i32, i32* %n_bytes.addr, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack, align 8
  %vla = alloca i8, i64 %1, align 16
  store i64 %1, i64* %__vla_expr0, align 8
  %call = call i64 @time(i64* null) #5
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #5
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n_bytes.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand() #5
  %rem = srem i32 %call2, 126
  %add = add nsw i32 %rem, 33
  %conv3 = trunc i32 %add to i8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, i8* %vla, i64 %idxprom
  store i8 %conv3, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n_bytes.addr, align 4
  %cmp5 = icmp slt i32 %7, %8
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %9, 1
  store i32 %inc7, i32* %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %vla, i64 %idxprom8
  %10 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %10 to i32
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %conv10)
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %call12 = call i32 @putchar(i32 10)
  %11 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %11)
  ret void
}

declare dso_local i32 @putchar(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @checkarg(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i32 0, i32* %ret, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load i8*, i8** %arg.addr, align 8
  %call = call i64 @strlen(i8* %1) #6
  %cmp = icmp ult i64 %conv, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %arg.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp ne i32 %conv2, 48
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load i8*, i8** %arg.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds i8, i8* %5, i64 %idxprom5
  %7 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp ne i32 %conv7, 49
  br i1 %cmp8, label %land.lhs.true10, label %if.end

land.lhs.true10:                                  ; preds = %land.lhs.true
  %8 = load i8*, i8** %arg.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds i8, i8* %8, i64 %idxprom11
  %10 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %10 to i32
  %cmp14 = icmp ne i32 %conv13, 50
  br i1 %cmp14, label %land.lhs.true16, label %if.end

land.lhs.true16:                                  ; preds = %land.lhs.true10
  %11 = load i8*, i8** %arg.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %12 to i64
  %arrayidx18 = getelementptr inbounds i8, i8* %11, i64 %idxprom17
  %13 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %13 to i32
  %cmp20 = icmp ne i32 %conv19, 51
  br i1 %cmp20, label %land.lhs.true22, label %if.end

land.lhs.true22:                                  ; preds = %land.lhs.true16
  %14 = load i8*, i8** %arg.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %15 to i64
  %arrayidx24 = getelementptr inbounds i8, i8* %14, i64 %idxprom23
  %16 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %16 to i32
  %cmp26 = icmp ne i32 %conv25, 52
  br i1 %cmp26, label %land.lhs.true28, label %if.end

land.lhs.true28:                                  ; preds = %land.lhs.true22
  %17 = load i8*, i8** %arg.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %18 to i64
  %arrayidx30 = getelementptr inbounds i8, i8* %17, i64 %idxprom29
  %19 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %19 to i32
  %cmp32 = icmp ne i32 %conv31, 53
  br i1 %cmp32, label %land.lhs.true34, label %if.end

land.lhs.true34:                                  ; preds = %land.lhs.true28
  %20 = load i8*, i8** %arg.addr, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %21 to i64
  %arrayidx36 = getelementptr inbounds i8, i8* %20, i64 %idxprom35
  %22 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %22 to i32
  %cmp38 = icmp ne i32 %conv37, 54
  br i1 %cmp38, label %land.lhs.true40, label %if.end

land.lhs.true40:                                  ; preds = %land.lhs.true34
  %23 = load i8*, i8** %arg.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %24 to i64
  %arrayidx42 = getelementptr inbounds i8, i8* %23, i64 %idxprom41
  %25 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %25 to i32
  %cmp44 = icmp ne i32 %conv43, 55
  br i1 %cmp44, label %land.lhs.true46, label %if.end

land.lhs.true46:                                  ; preds = %land.lhs.true40
  %26 = load i8*, i8** %arg.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %27 to i64
  %arrayidx48 = getelementptr inbounds i8, i8* %26, i64 %idxprom47
  %28 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %28 to i32
  %cmp50 = icmp ne i32 %conv49, 56
  br i1 %cmp50, label %land.lhs.true52, label %if.end

land.lhs.true52:                                  ; preds = %land.lhs.true46
  %29 = load i8*, i8** %arg.addr, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %30 to i64
  %arrayidx54 = getelementptr inbounds i8, i8* %29, i64 %idxprom53
  %31 = load i8, i8* %arrayidx54, align 1
  %conv55 = sext i8 %31 to i32
  %cmp56 = icmp ne i32 %conv55, 57
  br i1 %cmp56, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true52
  store i32 -1, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true52, %land.lhs.true46, %land.lhs.true40, %land.lhs.true34, %land.lhs.true28, %land.lhs.true22, %land.lhs.true16, %land.lhs.true10, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %33 = load i32, i32* %ret, align 4
  %cmp58 = icmp eq i32 %33, 0
  br i1 %cmp58, label %land.lhs.true60, label %if.end65

land.lhs.true60:                                  ; preds = %for.end
  %34 = load i8*, i8** %arg.addr, align 8
  %call61 = call i32 @atoi(i8* %34) #6
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %land.lhs.true60
  store i32 -1, i32* %ret, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %land.lhs.true60, %for.end
  %35 = load i32, i32* %ret, align 4
  ret i32 %35
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp ne i32 %1, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = load i8*, i8** %arrayidx, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %3)
  br label %if.end32

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %4, i64 1
  %5 = load i8*, i8** %arrayidx2, align 8
  %call3 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #6
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.else12

if.then5:                                         ; preds = %if.else
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %6 = load i8**, i8*** %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %6, i64 0
  %7 = load i8*, i8** %arrayidx7, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %7)
  %8 = load i8**, i8*** %argv.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %8, i64 0
  %9 = load i8*, i8** %arrayidx9, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i8* %9)
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %if.end31

if.else12:                                        ; preds = %if.else
  %10 = load i8**, i8*** %argv.addr, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %10, i64 1
  %11 = load i8*, i8** %arrayidx13, align 8
  %call14 = call i32 @checkarg(i8* %11)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.else20

if.then16:                                        ; preds = %if.else12
  %12 = load i8**, i8*** %argv.addr, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %12, i64 0
  %13 = load i8*, i8** %arrayidx17, align 8
  %14 = load i8**, i8*** %argv.addr, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %14, i64 1
  %15 = load i8*, i8** %arrayidx18, align 8
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8* %13, i8* %15)
  store i32 1, i32* %ret, align 4
  br label %if.end30

if.else20:                                        ; preds = %if.else12
  %16 = load i8**, i8*** %argv.addr, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %16, i64 2
  %17 = load i8*, i8** %arrayidx21, align 8
  %tobool = icmp ne i8* %17, null
  br i1 %tobool, label %if.then22, label %if.else27

if.then22:                                        ; preds = %if.else20
  %18 = load i8**, i8*** %argv.addr, align 8
  %arrayidx23 = getelementptr inbounds i8*, i8** %18, i64 1
  %19 = load i8*, i8** %arrayidx23, align 8
  %call24 = call i32 @atoi(i8* %19) #6
  %20 = load i8**, i8*** %argv.addr, align 8
  %arrayidx25 = getelementptr inbounds i8*, i8** %20, i64 2
  %21 = load i8*, i8** %arrayidx25, align 8
  %call26 = call i32 @filekey(i32 %call24, i8* %21)
  store i32 %call26, i32* %ret, align 4
  br label %if.end

if.else27:                                        ; preds = %if.else20
  %22 = load i8**, i8*** %argv.addr, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %22, i64 1
  %23 = load i8*, i8** %arrayidx28, align 8
  %call29 = call i32 @atoi(i8* %23) #6
  call void @makekey(i32 %call29)
  br label %if.end

if.end:                                           ; preds = %if.else27, %if.then22
  br label %if.end30

if.end30:                                         ; preds = %if.end, %if.then16
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then5
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then
  %24 = load i32, i32* %ret, align 4
  ret i32 %24
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

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
