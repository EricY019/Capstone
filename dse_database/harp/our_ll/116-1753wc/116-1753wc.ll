; ModuleID = 'code/116-1753wc.c'
source_filename = "code/116-1753wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"cmlw\00", align 1
@optind = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [162 x i8] c"Usage: wc [-c|-m][-lw][file...]\0A  -c\09Write the number of bytes\0A  -m\09Write the number of characters\0A  -l\09Write the number of lines\0A  -w\09Write the number of words\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"wc: \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %o = alloca i32, align 4
  %flags = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %flags, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @getopt(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #4
  store i32 %call, i32* %o, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %o, align 4
  switch i32 %2, label %sw.default [
    i32 99, label %sw.bb
    i32 109, label %sw.bb2
    i32 108, label %sw.bb9
    i32 119, label %sw.bb11
  ]

sw.bb:                                            ; preds = %while.body
  %3 = load i32, i32* %flags, align 4
  %and = and i32 %3, 2
  %cmp1 = icmp eq i32 %and, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %4 = load i32, i32* %flags, align 4
  %sub = sub nsw i32 %4, 2
  store i32 %sub, i32* %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %5 = load i32, i32* %flags, align 4
  %or = or i32 %5, 1
  store i32 %or, i32* %flags, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.body
  %6 = load i32, i32* %flags, align 4
  %and3 = and i32 %6, 1
  %cmp4 = icmp eq i32 %and3, 1
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %sw.bb2
  %7 = load i32, i32* %flags, align 4
  %sub6 = sub nsw i32 %7, 1
  store i32 %sub6, i32* %flags, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %sw.bb2
  %8 = load i32, i32* %flags, align 4
  %or8 = or i32 %8, 2
  store i32 %or8, i32* %flags, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %while.body
  %9 = load i32, i32* %flags, align 4
  %or10 = or i32 %9, 4
  store i32 %or10, i32* %flags, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %while.body
  %10 = load i32, i32* %flags, align 4
  %or12 = or i32 %10, 8
  store i32 %or12, i32* %flags, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %call13 = call i32 @_usage()
  store i32 %call13, i32* %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb9, %if.end7, %if.end
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %flags, align 4
  %12 = load i32, i32* %argc.addr, align 4
  %13 = load i32, i32* @optind, align 4
  %sub14 = sub nsw i32 %12, %13
  %14 = load i8**, i8*** %argv.addr, align 8
  %15 = load i32, i32* @optind, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %14, i64 %idxprom
  %call15 = call i32 @_wc(i32 %11, i32 %sub14, i8** %arrayidx)
  %cmp16 = icmp eq i32 %call15, 0
  %16 = zext i1 %cmp16 to i64
  %cond = select i1 %cmp16, i32 0, i32 2
  store i32 %cond, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %sw.default
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind
declare dso_local i32 @getopt(i32, i8**, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_usage() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.1, i64 0, i64 0), %struct._IO_FILE* %0)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_wc(i32 %flags, i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  %cm = alloca i32, align 4
  %l = alloca i32, align 4
  %w = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %ret, align 4
  store i32 0, i32* %cm, align 4
  store i32 0, i32* %l, align 4
  store i32 0, i32* %w, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %flags.addr, align 4
  %call = call i32 @_wc_do(i32 %1, i32* %cm, i32* %l, i32* %w, i8* null)
  store i32 %call, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load i32, i32* %flags.addr, align 4
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = load i8*, i8** %arrayidx, align 8
  %call3 = call i32 @_wc_do(i32 %3, i32* %cm, i32* %l, i32* %w, i8* %5)
  store i32 %call3, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %argc.addr, align 4
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %flags.addr, align 4
  %9 = load i8**, i8*** %argv.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds i8*, i8** %9, i64 %idxprom
  %11 = load i8*, i8** %arrayidx6, align 8
  %call7 = call i32 @_wc_do(i32 %8, i32* %cm, i32* %l, i32* %w, i8* %11)
  %12 = load i32, i32* %ret, align 4
  %or = or i32 %12, %call7
  store i32 %or, i32* %ret, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %flags.addr, align 4
  %15 = load i32, i32* %cm, align 4
  %16 = load i32, i32* %l, align 4
  %17 = load i32, i32* %w, align 4
  call void @_wc_print(i32 %14, i32 %15, i32 %16, i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32, i32* %ret, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then2, %if.then
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_wc_do(i32 %flags, i32* %cm, i32* %l, i32* %w, i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %cm.addr = alloca i32*, align 8
  %l.addr = alloca i32*, align 8
  %w.addr = alloca i32*, align 8
  %filename.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %lcm = alloca i32, align 4
  %ll = alloca i32, align 4
  %lw = alloca i32, align 4
  %c = alloca i32, align 4
  %oldc = alloca i32, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32* %cm, i32** %cm.addr, align 8
  store i32* %l, i32** %l.addr, align 8
  store i32* %w, i32** %w.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 0, i32* %lcm, align 4
  store i32 0, i32* %ll, align 4
  store i32 0, i32* %lw, align 4
  store i32 32, i32* %oldc, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %fp, align 8
  br label %if.end4

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %cmp1 = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %3 = load i8*, i8** %filename.addr, align 8
  %call3 = call i32 @_wc_error(i8* %3, i32 1)
  store i32 %call3, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end19, %if.end4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call5 = call i32 @fgetc(%struct._IO_FILE* %4)
  store i32 %call5, i32* %c, align 4
  %cmp6 = icmp ne i32 %call5, -1
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %c, align 4
  %cmp7 = icmp eq i32 %5, 10
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %while.body
  %6 = load i32, i32* %ll, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %ll, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %while.body
  %call10 = call i16** @__ctype_b_loc() #5
  %7 = load i16*, i16** %call10, align 8
  %8 = load i32, i32* %oldc, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 %idxprom
  %9 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %9 to i32
  %and = and i32 %conv, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %if.end9
  %call11 = call i16** @__ctype_b_loc() #5
  %10 = load i16*, i16** %call11, align 8
  %11 = load i32, i32* %c, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds i16, i16* %10, i64 %idxprom12
  %12 = load i16, i16* %arrayidx13, align 2
  %conv14 = zext i16 %12 to i32
  %and15 = and i32 %conv14, 8
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %land.lhs.true
  %13 = load i32, i32* %lw, align 4
  %inc18 = add i32 %13, 1
  store i32 %inc18, i32* %lw, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %land.lhs.true, %if.end9
  %14 = load i32, i32* %c, align 4
  store i32 %14, i32* %oldc, align 4
  %15 = load i32, i32* %lcm, align 4
  %inc20 = add i32 %15, 1
  store i32 %inc20, i32* %lcm, align 4
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* %flags.addr, align 4
  %17 = load i32, i32* %lcm, align 4
  %18 = load i32, i32* %ll, align 4
  %19 = load i32, i32* %lw, align 4
  %20 = load i8*, i8** %filename.addr, align 8
  call void @_wc_print(i32 %16, i32 %17, i32 %18, i32 %19, i8* %20)
  %21 = load i8*, i8** %filename.addr, align 8
  %cmp21 = icmp ne i8* %21, null
  br i1 %cmp21, label %land.lhs.true23, label %if.end29

land.lhs.true23:                                  ; preds = %while.end
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call24 = call i32 @fclose(%struct._IO_FILE* %22)
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %land.lhs.true23
  %23 = load i8*, i8** %filename.addr, align 8
  %call28 = call i32 @_wc_error(i8* %23, i32 1)
  store i32 %call28, i32* %retval, align 4
  br label %return

if.end29:                                         ; preds = %land.lhs.true23, %while.end
  %24 = load i32, i32* %lcm, align 4
  %25 = load i32*, i32** %cm.addr, align 8
  %26 = load i32, i32* %25, align 4
  %add = add i32 %26, %24
  store i32 %add, i32* %25, align 4
  %27 = load i32, i32* %ll, align 4
  %28 = load i32*, i32** %l.addr, align 8
  %29 = load i32, i32* %28, align 4
  %add30 = add i32 %29, %27
  store i32 %add30, i32* %28, align 4
  %30 = load i32, i32* %lw, align 4
  %31 = load i32*, i32** %w.addr, align 8
  %32 = load i32, i32* %31, align 4
  %add31 = add i32 %32, %30
  store i32 %add31, i32* %31, align 4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.then27, %if.then2
  %33 = load i32, i32* %retval, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_wc_print(i32 %flags, i32 %cm, i32 %l, i32 %w, i8* %filename) #0 {
entry:
  %flags.addr = alloca i32, align 4
  %cm.addr = alloca i32, align 4
  %l.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %cm, i32* %cm.addr, align 4
  store i32 %l, i32* %l.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i32, i32* %flags.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %l.addr, align 4
  %2 = load i32, i32* %w.addr, align 4
  %3 = load i32, i32* %cm.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %1, i32 %2, i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %flags.addr, align 4
  %and = and i32 %4, 1
  %cmp1 = icmp eq i32 %and, 1
  br i1 %cmp1, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, i32* %flags.addr, align 4
  %and2 = and i32 %5, 2
  %cmp3 = icmp eq i32 %and2, 2
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %6 = load i32, i32* %cm.addr, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %6)
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %lor.lhs.false
  %7 = load i32, i32* %flags.addr, align 4
  %and7 = and i32 %7, 4
  %cmp8 = icmp eq i32 %and7, 4
  br i1 %cmp8, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.end6
  %8 = load i32, i32* %flags.addr, align 4
  %and10 = and i32 %8, 1
  %cmp11 = icmp eq i32 %and10, 1
  br i1 %cmp11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then9
  %9 = load i32, i32* %flags.addr, align 4
  %and12 = and i32 %9, 2
  %cmp13 = icmp eq i32 %and12, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then9
  %10 = phi i1 [ true, %if.then9 ], [ %cmp13, %lor.rhs ]
  %11 = zext i1 %10 to i64
  %cond = select i1 %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %12 = load i32, i32* %l.addr, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %cond, i32 %12)
  br label %if.end15

if.end15:                                         ; preds = %lor.end, %if.end6
  %13 = load i32, i32* %flags.addr, align 4
  %and16 = and i32 %13, 8
  %cmp17 = icmp eq i32 %and16, 8
  br i1 %cmp17, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end15
  %14 = load i32, i32* %flags.addr, align 4
  %cmp19 = icmp ne i32 %14, 8
  %15 = zext i1 %cmp19 to i64
  %cond20 = select i1 %cmp19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %16 = load i32, i32* %w.addr, align 4
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %cond20, i32 %16)
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end15
  %17 = load i8*, i8** %filename.addr, align 8
  %cmp23 = icmp ne i8* %17, null
  br i1 %cmp23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end22
  %18 = load i8*, i8** %filename.addr, align 8
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %18)
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end22
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call27 = call i32 @fputc(i32 10, %struct._IO_FILE* %19)
  ret void
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_wc_error(i8* %message, i32 %ret) #0 {
entry:
  %message.addr = alloca i8*, align 8
  %ret.addr = alloca i32, align 4
  store i8* %message, i8** %message.addr, align 8
  store i32 %ret, i32* %ret.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* %0)
  %1 = load i8*, i8** %message.addr, align 8
  call void @perror(i8* %1)
  %2 = load i32, i32* %ret.addr, align 4
  ret i32 %2
}

declare dso_local i32 @fgetc(%struct._IO_FILE*) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

declare dso_local void @perror(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone willreturn }

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
