; ModuleID = 'code/050-33543lcs.c'
source_filename = "code/050-33543lcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%c \00", align 1
@__const.main.x = private unnamed_addr constant [100 x i8] c"ABCBDAB\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LCSLength(i8* %x, i8* %y, i32 %m, i32 %n, [100 x i32]* %c, [100 x i32]* %b) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %c.addr = alloca [100 x i32]*, align 8
  %b.addr = alloca [100 x i32]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %x, i8** %x.addr, align 8
  store i8* %y, i8** %y.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store [100 x i32]* %c, [100 x i32]** %c.addr, align 8
  store [100 x i32]* %b, [100 x i32]** %b.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %m.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load [100 x i32]*, [100 x i32]** %c.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx, i64 0, i64 0
  store i32 0, i32* %arrayidx1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc8, %for.end
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %n.addr, align 4
  %cmp3 = icmp sle i32 %5, %6
  br i1 %cmp3, label %for.body4, label %for.end10

for.body4:                                        ; preds = %for.cond2
  %7 = load [100 x i32]*, [100 x i32]** %c.addr, align 8
  %arrayidx5 = getelementptr inbounds [100 x i32], [100 x i32]* %7, i64 0
  %8 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx5, i64 0, i64 %idxprom6
  store i32 0, i32* %arrayidx7, align 4
  br label %for.inc8

for.inc8:                                         ; preds = %for.body4
  %9 = load i32, i32* %j, align 4
  %inc9 = add nsw i32 %9, 1
  store i32 %inc9, i32* %j, align 4
  br label %for.cond2, !llvm.loop !6

for.end10:                                        ; preds = %for.cond2
  store i32 1, i32* %i, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc83, %for.end10
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %m.addr, align 4
  %cmp12 = icmp sle i32 %10, %11
  br i1 %cmp12, label %for.body13, label %for.end85

for.body13:                                       ; preds = %for.cond11
  store i32 1, i32* %j, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc80, %for.body13
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %n.addr, align 4
  %cmp15 = icmp sle i32 %12, %13
  br i1 %cmp15, label %for.body16, label %for.end82

for.body16:                                       ; preds = %for.cond14
  %14 = load i8*, i8** %x.addr, align 8
  %15 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %15, 1
  %idxprom17 = sext i32 %sub to i64
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %idxprom17
  %16 = load i8, i8* %arrayidx18, align 1
  %conv = sext i8 %16 to i32
  %17 = load i8*, i8** %y.addr, align 8
  %18 = load i32, i32* %j, align 4
  %sub19 = sub nsw i32 %18, 1
  %idxprom20 = sext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds i8, i8* %17, i64 %idxprom20
  %19 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %19 to i32
  %cmp23 = icmp eq i32 %conv, %conv22
  br i1 %cmp23, label %if.then, label %if.else

if.then:                                          ; preds = %for.body16
  %20 = load [100 x i32]*, [100 x i32]** %c.addr, align 8
  %21 = load i32, i32* %i, align 4
  %sub25 = sub nsw i32 %21, 1
  %idxprom26 = sext i32 %sub25 to i64
  %arrayidx27 = getelementptr inbounds [100 x i32], [100 x i32]* %20, i64 %idxprom26
  %22 = load i32, i32* %j, align 4
  %sub28 = sub nsw i32 %22, 1
  %idxprom29 = sext i32 %sub28 to i64
  %arrayidx30 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx27, i64 0, i64 %idxprom29
  %23 = load i32, i32* %arrayidx30, align 4
  %add = add nsw i32 %23, 1
  %24 = load [100 x i32]*, [100 x i32]** %c.addr, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %25 to i64
  %arrayidx32 = getelementptr inbounds [100 x i32], [100 x i32]* %24, i64 %idxprom31
  %26 = load i32, i32* %j, align 4
  %idxprom33 = sext i32 %26 to i64
  %arrayidx34 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx32, i64 0, i64 %idxprom33
  store i32 %add, i32* %arrayidx34, align 4
  %27 = load [100 x i32]*, [100 x i32]** %b.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %28 to i64
  %arrayidx36 = getelementptr inbounds [100 x i32], [100 x i32]* %27, i64 %idxprom35
  %29 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %29 to i64
  %arrayidx38 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx36, i64 0, i64 %idxprom37
  store i32 0, i32* %arrayidx38, align 4
  br label %if.end79

if.else:                                          ; preds = %for.body16
  %30 = load [100 x i32]*, [100 x i32]** %c.addr, align 8
  %31 = load i32, i32* %i, align 4
  %sub39 = sub nsw i32 %31, 1
  %idxprom40 = sext i32 %sub39 to i64
  %arrayidx41 = getelementptr inbounds [100 x i32], [100 x i32]* %30, i64 %idxprom40
  %32 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %32 to i64
  %arrayidx43 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx41, i64 0, i64 %idxprom42
  %33 = load i32, i32* %arrayidx43, align 4
  %34 = load [100 x i32]*, [100 x i32]** %c.addr, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %35 to i64
  %arrayidx45 = getelementptr inbounds [100 x i32], [100 x i32]* %34, i64 %idxprom44
  %36 = load i32, i32* %j, align 4
  %sub46 = sub nsw i32 %36, 1
  %idxprom47 = sext i32 %sub46 to i64
  %arrayidx48 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx45, i64 0, i64 %idxprom47
  %37 = load i32, i32* %arrayidx48, align 4
  %cmp49 = icmp sge i32 %33, %37
  br i1 %cmp49, label %if.then51, label %if.else65

if.then51:                                        ; preds = %if.else
  %38 = load [100 x i32]*, [100 x i32]** %c.addr, align 8
  %39 = load i32, i32* %i, align 4
  %sub52 = sub nsw i32 %39, 1
  %idxprom53 = sext i32 %sub52 to i64
  %arrayidx54 = getelementptr inbounds [100 x i32], [100 x i32]* %38, i64 %idxprom53
  %40 = load i32, i32* %j, align 4
  %idxprom55 = sext i32 %40 to i64
  %arrayidx56 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx54, i64 0, i64 %idxprom55
  %41 = load i32, i32* %arrayidx56, align 4
  %42 = load [100 x i32]*, [100 x i32]** %c.addr, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %43 to i64
  %arrayidx58 = getelementptr inbounds [100 x i32], [100 x i32]* %42, i64 %idxprom57
  %44 = load i32, i32* %j, align 4
  %idxprom59 = sext i32 %44 to i64
  %arrayidx60 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx58, i64 0, i64 %idxprom59
  store i32 %41, i32* %arrayidx60, align 4
  %45 = load [100 x i32]*, [100 x i32]** %b.addr, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %46 to i64
  %arrayidx62 = getelementptr inbounds [100 x i32], [100 x i32]* %45, i64 %idxprom61
  %47 = load i32, i32* %j, align 4
  %idxprom63 = sext i32 %47 to i64
  %arrayidx64 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx62, i64 0, i64 %idxprom63
  store i32 1, i32* %arrayidx64, align 4
  br label %if.end

if.else65:                                        ; preds = %if.else
  %48 = load [100 x i32]*, [100 x i32]** %c.addr, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %49 to i64
  %arrayidx67 = getelementptr inbounds [100 x i32], [100 x i32]* %48, i64 %idxprom66
  %50 = load i32, i32* %j, align 4
  %sub68 = sub nsw i32 %50, 1
  %idxprom69 = sext i32 %sub68 to i64
  %arrayidx70 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx67, i64 0, i64 %idxprom69
  %51 = load i32, i32* %arrayidx70, align 4
  %52 = load [100 x i32]*, [100 x i32]** %c.addr, align 8
  %53 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %53 to i64
  %arrayidx72 = getelementptr inbounds [100 x i32], [100 x i32]* %52, i64 %idxprom71
  %54 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %54 to i64
  %arrayidx74 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx72, i64 0, i64 %idxprom73
  store i32 %51, i32* %arrayidx74, align 4
  %55 = load [100 x i32]*, [100 x i32]** %b.addr, align 8
  %56 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %56 to i64
  %arrayidx76 = getelementptr inbounds [100 x i32], [100 x i32]* %55, i64 %idxprom75
  %57 = load i32, i32* %j, align 4
  %idxprom77 = sext i32 %57 to i64
  %arrayidx78 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx76, i64 0, i64 %idxprom77
  store i32 -1, i32* %arrayidx78, align 4
  br label %if.end

if.end:                                           ; preds = %if.else65, %if.then51
  br label %if.end79

if.end79:                                         ; preds = %if.end, %if.then
  br label %for.inc80

for.inc80:                                        ; preds = %if.end79
  %58 = load i32, i32* %j, align 4
  %inc81 = add nsw i32 %58, 1
  store i32 %inc81, i32* %j, align 4
  br label %for.cond14, !llvm.loop !7

for.end82:                                        ; preds = %for.cond14
  br label %for.inc83

for.inc83:                                        ; preds = %for.end82
  %59 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %59, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond11, !llvm.loop !8

for.end85:                                        ; preds = %for.cond11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintLCS([100 x i32]* %b, i8* %x, i32 %i, i32 %j) #0 {
entry:
  %b.addr = alloca [100 x i32]*, align 8
  %x.addr = alloca i8*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  store [100 x i32]* %b, [100 x i32]** %b.addr, align 8
  store i8* %x, i8** %x.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %j.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end21

if.end:                                           ; preds = %lor.lhs.false
  %2 = load [100 x i32]*, [100 x i32]** %b.addr, align 8
  %3 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 %idxprom
  %4 = load i32, i32* %j.addr, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx, i64 0, i64 %idxprom2
  %5 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %6 = load [100 x i32]*, [100 x i32]** %b.addr, align 8
  %7 = load i8*, i8** %x.addr, align 8
  %8 = load i32, i32* %i.addr, align 4
  %sub = sub nsw i32 %8, 1
  %9 = load i32, i32* %j.addr, align 4
  %sub6 = sub nsw i32 %9, 1
  call void @PrintLCS([100 x i32]* %6, i8* %7, i32 %sub, i32 %sub6)
  %10 = load i8*, i8** %x.addr, align 8
  %11 = load i32, i32* %i.addr, align 4
  %sub7 = sub nsw i32 %11, 1
  %idxprom8 = sext i32 %sub7 to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %10, i64 %idxprom8
  %12 = load i8, i8* %arrayidx9, align 1
  %conv = sext i8 %12 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %conv)
  br label %if.end21

if.else:                                          ; preds = %if.end
  %13 = load [100 x i32]*, [100 x i32]** %b.addr, align 8
  %14 = load i32, i32* %i.addr, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], [100 x i32]* %13, i64 %idxprom10
  %15 = load i32, i32* %j.addr, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx11, i64 0, i64 %idxprom12
  %16 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp eq i32 %16, 1
  br i1 %cmp14, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.else
  %17 = load [100 x i32]*, [100 x i32]** %b.addr, align 8
  %18 = load i8*, i8** %x.addr, align 8
  %19 = load i32, i32* %i.addr, align 4
  %sub17 = sub nsw i32 %19, 1
  %20 = load i32, i32* %j.addr, align 4
  call void @PrintLCS([100 x i32]* %17, i8* %18, i32 %sub17, i32 %20)
  br label %if.end20

if.else18:                                        ; preds = %if.else
  %21 = load [100 x i32]*, [100 x i32]** %b.addr, align 8
  %22 = load i8*, i8** %x.addr, align 8
  %23 = load i32, i32* %i.addr, align 4
  %24 = load i32, i32* %j.addr, align 4
  %sub19 = sub nsw i32 %24, 1
  call void @PrintLCS([100 x i32]* %21, i8* %22, i32 %23, i32 %sub19)
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.then16
  br label %if.end21

if.end21:                                         ; preds = %if.then, %if.end20, %if.then5
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %x = alloca [100 x i8], align 16
  %y = alloca [100 x i8], align 16
  %b = alloca [100 x [100 x i32]], align 16
  %c = alloca [100 x [100 x i32]], align 16
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [100 x i8]* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([100 x i8], [100 x i8]* @__const.main.x, i32 0, i32 0), i64 100, i1 false)
  %1 = bitcast [100 x i8]* %y to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 100, i1 false)
  %2 = bitcast i8* %1 to [100 x i8]*
  %3 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i32 0, i32 0
  store i8 66, i8* %3, align 16
  %4 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i32 0, i32 1
  store i8 68, i8* %4, align 1
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i32 0, i32 2
  store i8 67, i8* %5, align 2
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i32 0, i32 3
  store i8 65, i8* %6, align 1
  %7 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i32 0, i32 4
  store i8 66, i8* %7, align 4
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %2, i32 0, i32 5
  store i8 65, i8* %8, align 1
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %x, i64 0, i64 0
  %call = call i64 @strlen(i8* %arraydecay) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %m, align 4
  %arraydecay1 = getelementptr inbounds [100 x i8], [100 x i8]* %y, i64 0, i64 0
  %call2 = call i64 @strlen(i8* %arraydecay1) #5
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, i32* %n, align 4
  %arraydecay4 = getelementptr inbounds [100 x i8], [100 x i8]* %x, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [100 x i8], [100 x i8]* %y, i64 0, i64 0
  %9 = load i32, i32* %m, align 4
  %10 = load i32, i32* %n, align 4
  %arraydecay6 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* %c, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* %b, i64 0, i64 0
  call void @LCSLength(i8* %arraydecay4, i8* %arraydecay5, i32 %9, i32 %10, [100 x i32]* %arraydecay6, [100 x i32]* %arraydecay7)
  %arraydecay8 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* %b, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [100 x i8], [100 x i8]* %x, i64 0, i64 0
  %11 = load i32, i32* %m, align 4
  %12 = load i32, i32* %n, align 4
  call void @PrintLCS([100 x i32]* %arraydecay8, i8* %arraydecay9, i32 %11, i32 %12)
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }

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
