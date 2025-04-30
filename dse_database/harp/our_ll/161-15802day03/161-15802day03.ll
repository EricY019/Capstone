; ModuleID = 'code/161-15802day03.c'
source_filename = "code/161-15802day03.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [20 x i8] c"Houses visited: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @max(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @min(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @read_instructions(%struct._IO_FILE* %in) #0 {
entry:
  %retval = alloca i8*, align 8
  %in.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %ret = alloca i8*, align 8
  %c = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 64, i32* %len, align 4
  %0 = load i32, i32* %len, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 1, %conv
  %call = call noalias align 16 i8* @malloc(i64 %mul) #5
  store i8* %call, i8** %ret, align 8
  %1 = load i8*, i8** %ret, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %ret, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end18, %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call2 = call i32 @fgetc(%struct._IO_FILE* %3)
  store i32 %call2, i32* %c, align 4
  %cmp3 = icmp ne i32 %call2, -1
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %c, align 4
  switch i32 %4, label %sw.epilog [
    i32 94, label %sw.bb
    i32 118, label %sw.bb
    i32 60, label %sw.bb
    i32 62, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body, %while.body, %while.body, %while.body
  %5 = load i32, i32* %c, align 4
  %conv5 = trunc i32 %5 to i8
  %6 = load i8*, i8** %ret, align 8
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds i8, i8* %6, i64 %idxprom
  store i8 %conv5, i8* %arrayidx6, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %while.body
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %len, align 4
  %cmp7 = icmp eq i32 %8, %9
  br i1 %cmp7, label %if.then9, label %if.end18

if.then9:                                         ; preds = %sw.epilog
  %10 = load i32, i32* %len, align 4
  %mul10 = mul nsw i32 %10, 2
  store i32 %mul10, i32* %len, align 4
  %11 = load i8*, i8** %ret, align 8
  %12 = load i32, i32* %len, align 4
  %conv11 = sext i32 %12 to i64
  %mul12 = mul i64 1, %conv11
  %call13 = call align 16 i8* @realloc(i8* %11, i64 %mul12) #5
  store i8* %call13, i8** %tmp, align 8
  %13 = load i8*, i8** %tmp, align 8
  %cmp14 = icmp eq i8* %13, null
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then9
  %14 = load i8*, i8** %ret, align 8
  call void @free(i8* %14) #5
  store i8* null, i8** %retval, align 8
  br label %return

if.end17:                                         ; preds = %if.then9
  %15 = load i8*, i8** %tmp, align 8
  store i8* %15, i8** %ret, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %sw.epilog
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %16 = load i8*, i8** %ret, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds i8, i8* %16, i64 %idxprom19
  store i8 0, i8* %arrayidx20, align 1
  %18 = load i8*, i8** %ret, align 8
  store i8* %18, i8** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then16, %if.then
  %19 = load i8*, i8** %retval, align 8
  ret i8* %19
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

declare dso_local i32 @fgetc(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local align 16 i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %santas = alloca i32, align 4
  %x_pos = alloca i32*, align 8
  %y_pos = alloca i32*, align 8
  %instructions = alloca i8*, align 8
  %inslen = alloca i64, align 8
  %turn = alloca i32, align 4
  %x_lo = alloca i32, align 4
  %x_hi = alloca i32, align 4
  %y_lo = alloca i32, align 4
  %y_hi = alloca i32, align 4
  %i = alloca i64, align 8
  %x_off = alloca i32, align 4
  %y_off = alloca i32, align 4
  %cols = alloca i32, align 4
  %rows = alloca i32, align 4
  %map = alloca i32*, align 8
  %i57 = alloca i32, align 4
  %houses = alloca i32, align 4
  %loc = alloca i32*, align 8
  %i69 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %santas, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #6
  %call1 = call i32 @max(i32 1, i32 %call)
  store i32 %call1, i32* %santas, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %santas, align 4
  %conv = sext i32 %3 to i64
  %call2 = call noalias align 16 i8* @calloc(i64 %conv, i64 4) #5
  %4 = bitcast i8* %call2 to i32*
  store i32* %4, i32** %x_pos, align 8
  %5 = load i32, i32* %santas, align 4
  %conv3 = sext i32 %5 to i64
  %call4 = call noalias align 16 i8* @calloc(i64 %conv3, i64 4) #5
  %6 = bitcast i8* %call4 to i32*
  store i32* %6, i32** %y_pos, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call5 = call i8* @read_instructions(%struct._IO_FILE* %7)
  store i8* %call5, i8** %instructions, align 8
  %8 = load i32*, i32** %x_pos, align 8
  %cmp6 = icmp eq i32* %8, null
  br i1 %cmp6, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i32*, i32** %y_pos, align 8
  %cmp8 = icmp eq i32* %9, null
  br i1 %cmp8, label %if.then13, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %10 = load i8*, i8** %instructions, align 8
  %cmp11 = icmp eq i8* %10, null
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false10, %lor.lhs.false, %if.end
  %11 = load i32*, i32** %x_pos, align 8
  %12 = bitcast i32* %11 to i8*
  call void @free(i8* %12) #5
  %13 = load i32*, i32** %y_pos, align 8
  %14 = bitcast i32* %13 to i8*
  call void @free(i8* %14) #5
  %15 = load i8*, i8** %instructions, align 8
  call void @free(i8* %15) #5
  store i32 1, i32* %retval, align 4
  br label %return

if.end14:                                         ; preds = %lor.lhs.false10
  %16 = load i8*, i8** %instructions, align 8
  %call15 = call i64 @strlen(i8* %16) #6
  store i64 %call15, i64* %inslen, align 8
  store i32 0, i32* %turn, align 4
  store i32 0, i32* %x_lo, align 4
  store i32 0, i32* %x_hi, align 4
  store i32 0, i32* %y_lo, align 4
  store i32 0, i32* %y_hi, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end14
  %17 = load i64, i64* %i, align 8
  %18 = load i64, i64* %inslen, align 8
  %cmp16 = icmp ult i64 %17, %18
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i8*, i8** %instructions, align 8
  %20 = load i64, i64* %i, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %19, i64 %20
  %21 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %21 to i32
  switch i32 %conv19, label %sw.default [
    i32 94, label %sw.bb
    i32 118, label %sw.bb22
    i32 62, label %sw.bb26
    i32 60, label %sw.bb31
  ]

sw.bb:                                            ; preds = %for.body
  %22 = load i32, i32* %y_hi, align 4
  %23 = load i32*, i32** %y_pos, align 8
  %24 = load i32, i32* %turn, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx20 = getelementptr inbounds i32, i32* %23, i64 %idxprom
  %25 = load i32, i32* %arrayidx20, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %arrayidx20, align 4
  %call21 = call i32 @max(i32 %22, i32 %inc)
  store i32 %call21, i32* %y_hi, align 4
  br label %sw.epilog

sw.bb22:                                          ; preds = %for.body
  %26 = load i32, i32* %y_lo, align 4
  %27 = load i32*, i32** %y_pos, align 8
  %28 = load i32, i32* %turn, align 4
  %idxprom23 = sext i32 %28 to i64
  %arrayidx24 = getelementptr inbounds i32, i32* %27, i64 %idxprom23
  %29 = load i32, i32* %arrayidx24, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %arrayidx24, align 4
  %call25 = call i32 @min(i32 %26, i32 %dec)
  store i32 %call25, i32* %y_lo, align 4
  br label %sw.epilog

sw.bb26:                                          ; preds = %for.body
  %30 = load i32, i32* %x_hi, align 4
  %31 = load i32*, i32** %x_pos, align 8
  %32 = load i32, i32* %turn, align 4
  %idxprom27 = sext i32 %32 to i64
  %arrayidx28 = getelementptr inbounds i32, i32* %31, i64 %idxprom27
  %33 = load i32, i32* %arrayidx28, align 4
  %inc29 = add nsw i32 %33, 1
  store i32 %inc29, i32* %arrayidx28, align 4
  %call30 = call i32 @max(i32 %30, i32 %inc29)
  store i32 %call30, i32* %x_hi, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %for.body
  %34 = load i32, i32* %x_lo, align 4
  %35 = load i32*, i32** %x_pos, align 8
  %36 = load i32, i32* %turn, align 4
  %idxprom32 = sext i32 %36 to i64
  %arrayidx33 = getelementptr inbounds i32, i32* %35, i64 %idxprom32
  %37 = load i32, i32* %arrayidx33, align 4
  %dec34 = add nsw i32 %37, -1
  store i32 %dec34, i32* %arrayidx33, align 4
  %call35 = call i32 @min(i32 %34, i32 %dec34)
  store i32 %call35, i32* %x_lo, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br label %for.inc

sw.epilog:                                        ; preds = %sw.bb31, %sw.bb26, %sw.bb22, %sw.bb
  %38 = load i32, i32* %turn, align 4
  %inc36 = add nsw i32 %38, 1
  store i32 %inc36, i32* %turn, align 4
  %39 = load i32, i32* %santas, align 4
  %40 = load i32, i32* %turn, align 4
  %rem = srem i32 %40, %39
  store i32 %rem, i32* %turn, align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %sw.default
  %41 = load i64, i64* %i, align 8
  %inc37 = add i64 %41, 1
  store i64 %inc37, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %42 = load i32, i32* %x_lo, align 4
  %call38 = call i32 @abs(i32 %42) #7
  store i32 %call38, i32* %x_off, align 4
  %43 = load i32, i32* %y_lo, align 4
  %call39 = call i32 @abs(i32 %43) #7
  store i32 %call39, i32* %y_off, align 4
  %44 = load i32, i32* %x_off, align 4
  %45 = load i32, i32* %x_hi, align 4
  %call40 = call i32 @abs(i32 %45) #7
  %add = add nsw i32 %44, %call40
  %add41 = add nsw i32 %add, 1
  store i32 %add41, i32* %cols, align 4
  %46 = load i32, i32* %y_off, align 4
  %47 = load i32, i32* %y_hi, align 4
  %call42 = call i32 @abs(i32 %47) #7
  %add43 = add nsw i32 %46, %call42
  %add44 = add nsw i32 %add43, 1
  store i32 %add44, i32* %rows, align 4
  %48 = load i32, i32* %cols, align 4
  %add45 = add nsw i32 %48, 1
  %49 = load i32, i32* %rows, align 4
  %add46 = add nsw i32 %49, 1
  %mul = mul nsw i32 %add45, %add46
  %conv47 = sext i32 %mul to i64
  %call48 = call noalias align 16 i8* @calloc(i64 %conv47, i64 4) #5
  %50 = bitcast i8* %call48 to i32*
  store i32* %50, i32** %map, align 8
  %51 = load i32*, i32** %map, align 8
  %cmp49 = icmp eq i32* %51, null
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %for.end
  %52 = load i32*, i32** %x_pos, align 8
  %53 = bitcast i32* %52 to i8*
  call void @free(i8* %53) #5
  %54 = load i32*, i32** %y_pos, align 8
  %55 = bitcast i32* %54 to i8*
  call void @free(i8* %55) #5
  %56 = load i8*, i8** %instructions, align 8
  call void @free(i8* %56) #5
  store i32 1, i32* %retval, align 4
  br label %return

if.end52:                                         ; preds = %for.end
  %57 = load i32*, i32** %map, align 8
  %58 = load i32, i32* %y_off, align 4
  %59 = load i32, i32* %cols, align 4
  %mul53 = mul nsw i32 %58, %59
  %60 = load i32, i32* %x_off, align 4
  %add54 = add nsw i32 %mul53, %60
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds i32, i32* %57, i64 %idxprom55
  store i32 1, i32* %arrayidx56, align 4
  store i32 0, i32* %turn, align 4
  store i32 0, i32* %i57, align 4
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc66, %if.end52
  %61 = load i32, i32* %i57, align 4
  %62 = load i32, i32* %santas, align 4
  %cmp59 = icmp slt i32 %61, %62
  br i1 %cmp59, label %for.body61, label %for.end68

for.body61:                                       ; preds = %for.cond58
  %63 = load i32, i32* %x_off, align 4
  %64 = load i32*, i32** %x_pos, align 8
  %65 = load i32, i32* %i57, align 4
  %idxprom62 = sext i32 %65 to i64
  %arrayidx63 = getelementptr inbounds i32, i32* %64, i64 %idxprom62
  store i32 %63, i32* %arrayidx63, align 4
  %66 = load i32, i32* %y_off, align 4
  %67 = load i32*, i32** %y_pos, align 8
  %68 = load i32, i32* %i57, align 4
  %idxprom64 = sext i32 %68 to i64
  %arrayidx65 = getelementptr inbounds i32, i32* %67, i64 %idxprom64
  store i32 %66, i32* %arrayidx65, align 4
  br label %for.inc66

for.inc66:                                        ; preds = %for.body61
  %69 = load i32, i32* %i57, align 4
  %inc67 = add nsw i32 %69, 1
  store i32 %inc67, i32* %i57, align 4
  br label %for.cond58, !llvm.loop !7

for.end68:                                        ; preds = %for.cond58
  store i32 1, i32* %houses, align 4
  store i64 0, i64* %i69, align 8
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc110, %for.end68
  %70 = load i64, i64* %i69, align 8
  %71 = load i64, i64* %inslen, align 8
  %cmp71 = icmp ult i64 %70, %71
  br i1 %cmp71, label %for.body73, label %for.end112

for.body73:                                       ; preds = %for.cond70
  %72 = load i8*, i8** %instructions, align 8
  %73 = load i64, i64* %i69, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %72, i64 %73
  %74 = load i8, i8* %arrayidx74, align 1
  %conv75 = sext i8 %74 to i32
  switch i32 %conv75, label %sw.default92 [
    i32 94, label %sw.bb76
    i32 118, label %sw.bb80
    i32 62, label %sw.bb84
    i32 60, label %sw.bb88
  ]

sw.bb76:                                          ; preds = %for.body73
  %75 = load i32*, i32** %y_pos, align 8
  %76 = load i32, i32* %turn, align 4
  %idxprom77 = sext i32 %76 to i64
  %arrayidx78 = getelementptr inbounds i32, i32* %75, i64 %idxprom77
  %77 = load i32, i32* %arrayidx78, align 4
  %inc79 = add nsw i32 %77, 1
  store i32 %inc79, i32* %arrayidx78, align 4
  br label %sw.epilog93

sw.bb80:                                          ; preds = %for.body73
  %78 = load i32*, i32** %y_pos, align 8
  %79 = load i32, i32* %turn, align 4
  %idxprom81 = sext i32 %79 to i64
  %arrayidx82 = getelementptr inbounds i32, i32* %78, i64 %idxprom81
  %80 = load i32, i32* %arrayidx82, align 4
  %dec83 = add nsw i32 %80, -1
  store i32 %dec83, i32* %arrayidx82, align 4
  br label %sw.epilog93

sw.bb84:                                          ; preds = %for.body73
  %81 = load i32*, i32** %x_pos, align 8
  %82 = load i32, i32* %turn, align 4
  %idxprom85 = sext i32 %82 to i64
  %arrayidx86 = getelementptr inbounds i32, i32* %81, i64 %idxprom85
  %83 = load i32, i32* %arrayidx86, align 4
  %inc87 = add nsw i32 %83, 1
  store i32 %inc87, i32* %arrayidx86, align 4
  br label %sw.epilog93

sw.bb88:                                          ; preds = %for.body73
  %84 = load i32*, i32** %x_pos, align 8
  %85 = load i32, i32* %turn, align 4
  %idxprom89 = sext i32 %85 to i64
  %arrayidx90 = getelementptr inbounds i32, i32* %84, i64 %idxprom89
  %86 = load i32, i32* %arrayidx90, align 4
  %dec91 = add nsw i32 %86, -1
  store i32 %dec91, i32* %arrayidx90, align 4
  br label %sw.epilog93

sw.default92:                                     ; preds = %for.body73
  br label %for.inc110

sw.epilog93:                                      ; preds = %sw.bb88, %sw.bb84, %sw.bb80, %sw.bb76
  %87 = load i32*, i32** %map, align 8
  %88 = load i32*, i32** %y_pos, align 8
  %89 = load i32, i32* %turn, align 4
  %idxprom94 = sext i32 %89 to i64
  %arrayidx95 = getelementptr inbounds i32, i32* %88, i64 %idxprom94
  %90 = load i32, i32* %arrayidx95, align 4
  %91 = load i32, i32* %cols, align 4
  %mul96 = mul nsw i32 %90, %91
  %92 = load i32*, i32** %x_pos, align 8
  %93 = load i32, i32* %turn, align 4
  %idxprom97 = sext i32 %93 to i64
  %arrayidx98 = getelementptr inbounds i32, i32* %92, i64 %idxprom97
  %94 = load i32, i32* %arrayidx98, align 4
  %add99 = add nsw i32 %mul96, %94
  %idxprom100 = sext i32 %add99 to i64
  %arrayidx101 = getelementptr inbounds i32, i32* %87, i64 %idxprom100
  store i32* %arrayidx101, i32** %loc, align 8
  %95 = load i32*, i32** %loc, align 8
  %96 = load i32, i32* %95, align 4
  %cmp102 = icmp eq i32 %96, 0
  br i1 %cmp102, label %if.then104, label %if.end106

if.then104:                                       ; preds = %sw.epilog93
  %97 = load i32, i32* %houses, align 4
  %inc105 = add nsw i32 %97, 1
  store i32 %inc105, i32* %houses, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %sw.epilog93
  %98 = load i32*, i32** %loc, align 8
  %99 = load i32, i32* %98, align 4
  %inc107 = add nsw i32 %99, 1
  store i32 %inc107, i32* %98, align 4
  %100 = load i32, i32* %turn, align 4
  %inc108 = add nsw i32 %100, 1
  store i32 %inc108, i32* %turn, align 4
  %101 = load i32, i32* %santas, align 4
  %102 = load i32, i32* %turn, align 4
  %rem109 = srem i32 %102, %101
  store i32 %rem109, i32* %turn, align 4
  br label %for.inc110

for.inc110:                                       ; preds = %if.end106, %sw.default92
  %103 = load i64, i64* %i69, align 8
  %inc111 = add i64 %103, 1
  store i64 %inc111, i64* %i69, align 8
  br label %for.cond70, !llvm.loop !8

for.end112:                                       ; preds = %for.cond70
  %104 = load i32, i32* %houses, align 4
  %call113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %104)
  %105 = load i8*, i8** %instructions, align 8
  call void @free(i8* %105) #5
  %106 = load i32*, i32** %x_pos, align 8
  %107 = bitcast i32* %106 to i8*
  call void @free(i8* %107) #5
  %108 = load i32*, i32** %y_pos, align 8
  %109 = bitcast i32* %108 to i8*
  call void @free(i8* %109) #5
  %110 = load i32*, i32** %map, align 8
  %111 = bitcast i32* %110 to i8*
  call void @free(i8* %111) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end112, %if.then51, %if.then13
  %112 = load i32, i32* %retval, align 4
  ret i32 %112
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #3

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @calloc(i64, i64) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local i32 @abs(i32) #4

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind readnone willreturn }

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
