; ModuleID = './code/109-5313randomkey.c'
source_filename = "./code/109-5313randomkey.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

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

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @filekey(i32 noundef %n_bytes, ptr noundef %path) #0 {
entry:
  %retval = alloca i32, align 4
  %n_bytes.addr = alloca i32, align 4
  %path.addr = alloca ptr, align 8
  %fd = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  store i32 %n_bytes, ptr %n_bytes.addr, align 4
  store ptr %path, ptr %path.addr, align 8
  %0 = load ptr, ptr %path.addr, align 8
  %call = call i32 (ptr, i32, ...) @"\01_open"(ptr noundef %0, i32 noundef 1)
  store i32 %call, ptr %fd, align 4
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %path.addr, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %1)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %n_bytes.addr, align 4
  %3 = zext i32 %2 to i64
  %4 = call ptr @llvm.stacksave.p0()
  store ptr %4, ptr %saved_stack, align 8
  %vla = alloca i8, i64 %3, align 1
  store i64 %3, ptr %__vla_expr0, align 8
  %call2 = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call2 to i32
  call void @srand(i32 noundef %conv)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %n_bytes.addr, align 4
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call5 = call i32 @rand()
  %rem = srem i32 %call5, 126
  %add = add nsw i32 %rem, 33
  %conv6 = trunc i32 %add to i8
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %vla, i64 %idxprom
  store i8 %conv6, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %fd, align 4
  %10 = load i32, ptr %n_bytes.addr, align 4
  %conv7 = sext i32 %10 to i64
  %call8 = call i64 @"\01_write"(i32 noundef %9, ptr noundef %vla, i64 noundef %conv7)
  %11 = load i32, ptr %fd, align 4
  %call9 = call i32 @"\01_close"(i32 noundef %11)
  store i32 0, ptr %retval, align 4
  %12 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %12)
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

declare i32 @"\01_open"(ptr noundef, i32 noundef, ...) #1

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #2

declare void @srand(i32 noundef) #1

declare i64 @time(ptr noundef) #1

declare i32 @rand() #1

declare i64 @"\01_write"(i32 noundef, ptr noundef, i64 noundef) #1

declare i32 @"\01_close"(i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @makekey(i32 noundef %n_bytes) #0 {
entry:
  %n_bytes.addr = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  store i32 %n_bytes, ptr %n_bytes.addr, align 4
  %0 = load i32, ptr %n_bytes.addr, align 4
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  store ptr %2, ptr %saved_stack, align 8
  %vla = alloca i8, i64 %1, align 1
  store i64 %1, ptr %__vla_expr0, align 8
  %call = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %n_bytes.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand()
  %rem = srem i32 %call2, 126
  %add = add nsw i32 %rem, 33
  %conv3 = trunc i32 %add to i8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %vla, i64 %idxprom
  store i8 %conv3, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %n_bytes.addr, align 4
  %cmp5 = icmp slt i32 %7, %8
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, ptr %i, align 4
  %inc7 = add nsw i32 %9, 1
  store i32 %inc7, ptr %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %vla, i64 %idxprom8
  %10 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %10 to i32
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %conv10)
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %call12 = call i32 @putchar(i32 noundef 10)
  %11 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %11)
  ret void
}

declare i32 @putchar(i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @checkarg(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  store i32 0, ptr %ret, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load ptr, ptr %arg.addr, align 8
  %call = call i64 @strlen(ptr noundef %1) #4
  %cmp = icmp ult i64 %conv, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %arg.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv2 = sext i8 %4 to i32
  %cmp3 = icmp ne i32 %conv2, 48
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load ptr, ptr %arg.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %5, i64 %idxprom5
  %7 = load i8, ptr %arrayidx6, align 1
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp ne i32 %conv7, 49
  br i1 %cmp8, label %land.lhs.true10, label %if.end

land.lhs.true10:                                  ; preds = %land.lhs.true
  %8 = load ptr, ptr %arg.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds i8, ptr %8, i64 %idxprom11
  %10 = load i8, ptr %arrayidx12, align 1
  %conv13 = sext i8 %10 to i32
  %cmp14 = icmp ne i32 %conv13, 50
  br i1 %cmp14, label %land.lhs.true16, label %if.end

land.lhs.true16:                                  ; preds = %land.lhs.true10
  %11 = load ptr, ptr %arg.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %12 to i64
  %arrayidx18 = getelementptr inbounds i8, ptr %11, i64 %idxprom17
  %13 = load i8, ptr %arrayidx18, align 1
  %conv19 = sext i8 %13 to i32
  %cmp20 = icmp ne i32 %conv19, 51
  br i1 %cmp20, label %land.lhs.true22, label %if.end

land.lhs.true22:                                  ; preds = %land.lhs.true16
  %14 = load ptr, ptr %arg.addr, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom23 = sext i32 %15 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %14, i64 %idxprom23
  %16 = load i8, ptr %arrayidx24, align 1
  %conv25 = sext i8 %16 to i32
  %cmp26 = icmp ne i32 %conv25, 52
  br i1 %cmp26, label %land.lhs.true28, label %if.end

land.lhs.true28:                                  ; preds = %land.lhs.true22
  %17 = load ptr, ptr %arg.addr, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom29 = sext i32 %18 to i64
  %arrayidx30 = getelementptr inbounds i8, ptr %17, i64 %idxprom29
  %19 = load i8, ptr %arrayidx30, align 1
  %conv31 = sext i8 %19 to i32
  %cmp32 = icmp ne i32 %conv31, 53
  br i1 %cmp32, label %land.lhs.true34, label %if.end

land.lhs.true34:                                  ; preds = %land.lhs.true28
  %20 = load ptr, ptr %arg.addr, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom35 = sext i32 %21 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %20, i64 %idxprom35
  %22 = load i8, ptr %arrayidx36, align 1
  %conv37 = sext i8 %22 to i32
  %cmp38 = icmp ne i32 %conv37, 54
  br i1 %cmp38, label %land.lhs.true40, label %if.end

land.lhs.true40:                                  ; preds = %land.lhs.true34
  %23 = load ptr, ptr %arg.addr, align 8
  %24 = load i32, ptr %i, align 4
  %idxprom41 = sext i32 %24 to i64
  %arrayidx42 = getelementptr inbounds i8, ptr %23, i64 %idxprom41
  %25 = load i8, ptr %arrayidx42, align 1
  %conv43 = sext i8 %25 to i32
  %cmp44 = icmp ne i32 %conv43, 55
  br i1 %cmp44, label %land.lhs.true46, label %if.end

land.lhs.true46:                                  ; preds = %land.lhs.true40
  %26 = load ptr, ptr %arg.addr, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom47 = sext i32 %27 to i64
  %arrayidx48 = getelementptr inbounds i8, ptr %26, i64 %idxprom47
  %28 = load i8, ptr %arrayidx48, align 1
  %conv49 = sext i8 %28 to i32
  %cmp50 = icmp ne i32 %conv49, 56
  br i1 %cmp50, label %land.lhs.true52, label %if.end

land.lhs.true52:                                  ; preds = %land.lhs.true46
  %29 = load ptr, ptr %arg.addr, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom53 = sext i32 %30 to i64
  %arrayidx54 = getelementptr inbounds i8, ptr %29, i64 %idxprom53
  %31 = load i8, ptr %arrayidx54, align 1
  %conv55 = sext i8 %31 to i32
  %cmp56 = icmp ne i32 %conv55, 57
  br i1 %cmp56, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true52
  store i32 -1, ptr %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true52, %land.lhs.true46, %land.lhs.true40, %land.lhs.true34, %land.lhs.true28, %land.lhs.true22, %land.lhs.true16, %land.lhs.true10, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %32 = load i32, ptr %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %33 = load i32, ptr %ret, align 4
  %cmp58 = icmp eq i32 %33, 0
  br i1 %cmp58, label %land.lhs.true60, label %if.end65

land.lhs.true60:                                  ; preds = %for.end
  %34 = load ptr, ptr %arg.addr, align 8
  %call61 = call i32 @atoi(ptr noundef %34)
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %land.lhs.true60
  store i32 -1, ptr %ret, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %land.lhs.true60, %for.end
  %35 = load i32, ptr %ret, align 4
  ret i32 %35
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #3

declare i32 @atoi(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %ret, align 4
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp ne i32 %1, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %3)
  br label %if.end32

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx2, align 8
  %call3 = call i32 @strcmp(ptr noundef %5, ptr noundef @.str.4) #4
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.else12

if.then5:                                         ; preds = %if.else
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, ptr noundef @.str.6)
  %6 = load ptr, ptr %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %6, i64 0
  %7 = load ptr, ptr %arrayidx7, align 8
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %7)
  %8 = load ptr, ptr %argv.addr, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %8, i64 0
  %9 = load ptr, ptr %arrayidx9, align 8
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, ptr noundef %9)
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  br label %if.end31

if.else12:                                        ; preds = %if.else
  %10 = load ptr, ptr %argv.addr, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %10, i64 1
  %11 = load ptr, ptr %arrayidx13, align 8
  %call14 = call i32 @checkarg(ptr noundef %11)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.else20

if.then16:                                        ; preds = %if.else12
  %12 = load ptr, ptr %argv.addr, align 8
  %arrayidx17 = getelementptr inbounds ptr, ptr %12, i64 0
  %13 = load ptr, ptr %arrayidx17, align 8
  %14 = load ptr, ptr %argv.addr, align 8
  %arrayidx18 = getelementptr inbounds ptr, ptr %14, i64 1
  %15 = load ptr, ptr %arrayidx18, align 8
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, ptr noundef %13, ptr noundef %15)
  store i32 1, ptr %ret, align 4
  br label %if.end30

if.else20:                                        ; preds = %if.else12
  %16 = load ptr, ptr %argv.addr, align 8
  %arrayidx21 = getelementptr inbounds ptr, ptr %16, i64 2
  %17 = load ptr, ptr %arrayidx21, align 8
  %tobool = icmp ne ptr %17, null
  br i1 %tobool, label %if.then22, label %if.else27

if.then22:                                        ; preds = %if.else20
  %18 = load ptr, ptr %argv.addr, align 8
  %arrayidx23 = getelementptr inbounds ptr, ptr %18, i64 1
  %19 = load ptr, ptr %arrayidx23, align 8
  %call24 = call i32 @atoi(ptr noundef %19)
  %20 = load ptr, ptr %argv.addr, align 8
  %arrayidx25 = getelementptr inbounds ptr, ptr %20, i64 2
  %21 = load ptr, ptr %arrayidx25, align 8
  %call26 = call i32 @filekey(i32 noundef %call24, ptr noundef %21)
  store i32 %call26, ptr %ret, align 4
  br label %if.end

if.else27:                                        ; preds = %if.else20
  %22 = load ptr, ptr %argv.addr, align 8
  %arrayidx28 = getelementptr inbounds ptr, ptr %22, i64 1
  %23 = load ptr, ptr %arrayidx28, align 8
  %call29 = call i32 @atoi(ptr noundef %23)
  call void @makekey(i32 noundef %call29)
  br label %if.end

if.end:                                           ; preds = %if.else27, %if.then22
  br label %if.end30

if.end30:                                         ; preds = %if.end, %if.then16
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then5
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then
  %24 = load i32, ptr %ret, align 4
  ret i32 %24
}

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind }

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
