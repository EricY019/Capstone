; ModuleID = './code/116-1753wc.c'
source_filename = "./code/116-1753wc.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [5 x i8] c"cmlw\00", align 1
@optind = external global i32, align 4
@.str.1 = private unnamed_addr constant [162 x i8] c"Usage: wc [-c|-m][-lw][file...]\0A  -c\09Write the number of bytes\0A  -m\09Write the number of characters\0A  -l\09Write the number of lines\0A  -w\09Write the number of words\0A\00", align 1
@__stderrp = external global ptr, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@__stdinp = external global ptr, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"wc: \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@__stdoutp = external global ptr, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %o = alloca i32, align 4
  %flags = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %flags, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %call = call i32 @"\01_getopt"(i32 noundef %0, ptr noundef %1, ptr noundef @.str)
  store i32 %call, ptr %o, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %o, align 4
  switch i32 %2, label %sw.default [
    i32 99, label %sw.bb
    i32 109, label %sw.bb2
    i32 108, label %sw.bb9
    i32 119, label %sw.bb11
  ]

sw.bb:                                            ; preds = %while.body
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 2
  %cmp1 = icmp eq i32 %and, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %4 = load i32, ptr %flags, align 4
  %sub = sub nsw i32 %4, 2
  store i32 %sub, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, 1
  store i32 %or, ptr %flags, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.body
  %6 = load i32, ptr %flags, align 4
  %and3 = and i32 %6, 1
  %cmp4 = icmp eq i32 %and3, 1
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %sw.bb2
  %7 = load i32, ptr %flags, align 4
  %sub6 = sub nsw i32 %7, 1
  store i32 %sub6, ptr %flags, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %sw.bb2
  %8 = load i32, ptr %flags, align 4
  %or8 = or i32 %8, 2
  store i32 %or8, ptr %flags, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %while.body
  %9 = load i32, ptr %flags, align 4
  %or10 = or i32 %9, 4
  store i32 %or10, ptr %flags, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %while.body
  %10 = load i32, ptr %flags, align 4
  %or12 = or i32 %10, 8
  store i32 %or12, ptr %flags, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %call13 = call i32 @_usage()
  store i32 %call13, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb9, %if.end7, %if.end
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %11 = load i32, ptr %flags, align 4
  %12 = load i32, ptr %argc.addr, align 4
  %13 = load i32, ptr @optind, align 4
  %sub14 = sub nsw i32 %12, %13
  %14 = load ptr, ptr %argv.addr, align 8
  %15 = load i32, ptr @optind, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %14, i64 %idxprom
  %call15 = call i32 @_wc(i32 noundef %11, i32 noundef %sub14, ptr noundef %arrayidx)
  %cmp16 = icmp eq i32 %call15, 0
  %16 = zext i1 %cmp16 to i64
  %cond = select i1 %cmp16, i32 0, i32 2
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %sw.default
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

declare i32 @"\01_getopt"(i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @_usage() #0 {
entry:
  %0 = load ptr, ptr @__stderrp, align 8
  %call = call i32 @"\01_fputs"(ptr noundef @.str.1, ptr noundef %0)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @_wc(i32 noundef %flags, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cm = alloca i32, align 4
  %l = alloca i32, align 4
  %w = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %flags, ptr %flags.addr, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %ret, align 4
  store i32 0, ptr %cm, align 4
  store i32 0, ptr %l, align 4
  store i32 0, ptr %w, align 4
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4
  %call = call i32 @_wc_do(i32 noundef %1, ptr noundef %cm, ptr noundef %l, ptr noundef %w, ptr noundef null)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %flags.addr, align 4
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx, align 8
  %call3 = call i32 @_wc_do(i32 noundef %3, ptr noundef %cm, ptr noundef %l, ptr noundef %w, ptr noundef %5)
  store i32 %call3, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %argc.addr, align 4
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %flags.addr, align 4
  %9 = load ptr, ptr %argv.addr, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %9, i64 %idxprom
  %11 = load ptr, ptr %arrayidx6, align 8
  %call7 = call i32 @_wc_do(i32 noundef %8, ptr noundef %cm, ptr noundef %l, ptr noundef %w, ptr noundef %11)
  %12 = load i32, ptr %ret, align 4
  %or = or i32 %12, %call7
  store i32 %or, ptr %ret, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %14 = load i32, ptr %flags.addr, align 4
  %15 = load i32, ptr %cm, align 4
  %16 = load i32, ptr %l, align 4
  %17 = load i32, ptr %w, align 4
  call void @_wc_print(i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17, ptr noundef @.str.2)
  %18 = load i32, ptr %ret, align 4
  store i32 %18, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then2, %if.then
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

declare i32 @"\01_fputs"(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @_wc_do(i32 noundef %flags, ptr noundef %cm, ptr noundef %l, ptr noundef %w, ptr noundef %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %cm.addr = alloca ptr, align 8
  %l.addr = alloca ptr, align 8
  %w.addr = alloca ptr, align 8
  %filename.addr = alloca ptr, align 8
  %fp = alloca ptr, align 8
  %lcm = alloca i32, align 4
  %ll = alloca i32, align 4
  %lw = alloca i32, align 4
  %c = alloca i32, align 4
  %oldc = alloca i32, align 4
  store i32 %flags, ptr %flags.addr, align 4
  store ptr %cm, ptr %cm.addr, align 8
  store ptr %l, ptr %l.addr, align 8
  store ptr %w, ptr %w.addr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store i32 0, ptr %lcm, align 4
  store i32 0, ptr %ll, align 4
  store i32 0, ptr %lw, align 4
  store i32 32, ptr %oldc, align 4
  %0 = load ptr, ptr %filename.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stdinp, align 8
  store ptr %1, ptr %fp, align 8
  br label %if.end4

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %filename.addr, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %2, ptr noundef @.str.3)
  store ptr %call, ptr %fp, align 8
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %3 = load ptr, ptr %filename.addr, align 8
  %call3 = call i32 @_wc_error(ptr noundef %3, i32 noundef 1)
  store i32 %call3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end15, %if.end4
  %4 = load ptr, ptr %fp, align 8
  %call5 = call i32 @fgetc(ptr noundef %4)
  store i32 %call5, ptr %c, align 4
  %cmp6 = icmp ne i32 %call5, -1
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, ptr %c, align 4
  %cmp7 = icmp eq i32 %5, 10
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.body
  %6 = load i32, ptr %ll, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %ll, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %while.body
  %7 = load i32, ptr %oldc, align 4
  %call10 = call i32 @isspace(i32 noundef %7) #4
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end9
  %8 = load i32, ptr %c, align 4
  %call11 = call i32 @isalnum(i32 noundef %8) #4
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %land.lhs.true
  %9 = load i32, ptr %lw, align 4
  %inc14 = add i32 %9, 1
  store i32 %inc14, ptr %lw, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true, %if.end9
  %10 = load i32, ptr %c, align 4
  store i32 %10, ptr %oldc, align 4
  %11 = load i32, ptr %lcm, align 4
  %inc16 = add i32 %11, 1
  store i32 %inc16, ptr %lcm, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %12 = load i32, ptr %flags.addr, align 4
  %13 = load i32, ptr %lcm, align 4
  %14 = load i32, ptr %ll, align 4
  %15 = load i32, ptr %lw, align 4
  %16 = load ptr, ptr %filename.addr, align 8
  call void @_wc_print(i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, ptr noundef %16)
  %17 = load ptr, ptr %filename.addr, align 8
  %cmp17 = icmp ne ptr %17, null
  br i1 %cmp17, label %land.lhs.true18, label %if.end23

land.lhs.true18:                                  ; preds = %while.end
  %18 = load ptr, ptr %fp, align 8
  %call19 = call i32 @fclose(ptr noundef %18)
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %land.lhs.true18
  %19 = load ptr, ptr %filename.addr, align 8
  %call22 = call i32 @_wc_error(ptr noundef %19, i32 noundef 1)
  store i32 %call22, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %land.lhs.true18, %while.end
  %20 = load i32, ptr %lcm, align 4
  %21 = load ptr, ptr %cm.addr, align 8
  %22 = load i32, ptr %21, align 4
  %add = add i32 %22, %20
  store i32 %add, ptr %21, align 4
  %23 = load i32, ptr %ll, align 4
  %24 = load ptr, ptr %l.addr, align 8
  %25 = load i32, ptr %24, align 4
  %add24 = add i32 %25, %23
  store i32 %add24, ptr %24, align 4
  %26 = load i32, ptr %lw, align 4
  %27 = load ptr, ptr %w.addr, align 8
  %28 = load i32, ptr %27, align 4
  %add25 = add i32 %28, %26
  store i32 %add25, ptr %27, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then21, %if.then2
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @_wc_print(i32 noundef %flags, i32 noundef %cm, i32 noundef %l, i32 noundef %w, ptr noundef %filename) #0 {
entry:
  %flags.addr = alloca i32, align 4
  %cm.addr = alloca i32, align 4
  %l.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %filename.addr = alloca ptr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  store i32 %cm, ptr %cm.addr, align 4
  store i32 %l, ptr %l.addr, align 4
  store i32 %w, ptr %w.addr, align 4
  store ptr %filename, ptr %filename.addr, align 8
  %0 = load i32, ptr %flags.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %l.addr, align 4
  %2 = load i32, ptr %w.addr, align 4
  %3 = load i32, ptr %cm.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %flags.addr, align 4
  %and = and i32 %4, 1
  %cmp1 = icmp eq i32 %and, 1
  br i1 %cmp1, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, ptr %flags.addr, align 4
  %and2 = and i32 %5, 2
  %cmp3 = icmp eq i32 %and2, 2
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %6 = load i32, ptr %cm.addr, align 4
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %6)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %lor.lhs.false
  %7 = load i32, ptr %flags.addr, align 4
  %and7 = and i32 %7, 4
  %cmp8 = icmp eq i32 %and7, 4
  br i1 %cmp8, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.end6
  %8 = load i32, ptr %flags.addr, align 4
  %and10 = and i32 %8, 1
  %cmp11 = icmp eq i32 %and10, 1
  br i1 %cmp11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then9
  %9 = load i32, ptr %flags.addr, align 4
  %and12 = and i32 %9, 2
  %cmp13 = icmp eq i32 %and12, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then9
  %10 = phi i1 [ true, %if.then9 ], [ %cmp13, %lor.rhs ]
  %11 = zext i1 %10 to i64
  %cond = select i1 %10, ptr @.str.8, ptr @.str.9
  %12 = load i32, ptr %l.addr, align 4
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, ptr noundef %cond, i32 noundef %12)
  br label %if.end15

if.end15:                                         ; preds = %lor.end, %if.end6
  %13 = load i32, ptr %flags.addr, align 4
  %and16 = and i32 %13, 8
  %cmp17 = icmp eq i32 %and16, 8
  br i1 %cmp17, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end15
  %14 = load i32, ptr %flags.addr, align 4
  %cmp19 = icmp ne i32 %14, 8
  %15 = zext i1 %cmp19 to i64
  %cond20 = select i1 %cmp19, ptr @.str.8, ptr @.str.9
  %16 = load i32, ptr %w.addr, align 4
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, ptr noundef %cond20, i32 noundef %16)
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end15
  %17 = load ptr, ptr %filename.addr, align 8
  %cmp23 = icmp ne ptr %17, null
  br i1 %cmp23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end22
  %18 = load ptr, ptr %filename.addr, align 8
  %call25 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, ptr noundef %18)
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end22
  %19 = load ptr, ptr @__stdoutp, align 8
  %call27 = call i32 @fputc(i32 noundef 10, ptr noundef %19)
  ret void
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @_wc_error(ptr noundef %message, i32 noundef %ret) #0 {
entry:
  %message.addr = alloca ptr, align 8
  %ret.addr = alloca i32, align 4
  store ptr %message, ptr %message.addr, align 8
  store i32 %ret, ptr %ret.addr, align 4
  %0 = load ptr, ptr @__stderrp, align 8
  %call = call i32 @"\01_fputs"(ptr noundef @.str.4, ptr noundef %0)
  %1 = load ptr, ptr %message.addr, align 8
  call void @perror(ptr noundef %1) #5
  %2 = load i32, ptr %ret.addr, align 4
  ret i32 %2
}

declare i32 @fgetc(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isalnum(i32 noundef) #2

declare i32 @fclose(ptr noundef) #1

; Function Attrs: cold
declare void @perror(ptr noundef) #3

declare i32 @printf(ptr noundef, ...) #1

declare i32 @fputc(i32 noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { cold "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind willreturn memory(read) }
attributes #5 = { cold }

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
