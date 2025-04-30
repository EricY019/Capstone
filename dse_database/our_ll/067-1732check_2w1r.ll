; ModuleID = 'code/067-1732check_2w1r.c'
source_filename = "code/067-1732check_2w1r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Hi... \0A\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"This program checks that it is possible to open the driver for 2W and 1R \0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"-> main <no arg>\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"/dev/sound/dsp\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"[2 open in RDWR] Error at first opening\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"/dev/sound/dsp1\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"[2 open in RDWR] Error : 2RW allowed\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"[2 open in WR] Error at first opening\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"[2 open in WR] Error at second opening\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"[2 open in RD] Error at first opening\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"[2 open in RD] Error : 2RW allowed\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"[1 RD + 1 WR] Error at first opening\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"[1 RD + 1 WR] Error at second opening\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"[1 RDWR + 1 WR] Error at first opening\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"[1 RDWR + 1 WR] Error at second opening\0A\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"[1 RD + 1 RDWR] Error at first opening\0A\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"[1 RD + 1 RDWR] Error : second opening should fail\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"[1 RDWR + 1 RD] Error at first opening\0A\00", align 1
@.str.18 = private unnamed_addr constant [52 x i8] c"[1 RDWR + 1 RD] Error : second opening should fail\0A\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"\0A --> All the tests were passed successfully\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"\0AEncountered %i errors\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %ac, i8** %av) #0 {
entry:
  %retval = alloca i32, align 4
  %ac.addr = alloca i32, align 4
  %av.addr = alloca i8**, align 8
  %fd_audio = alloca [2 x i32], align 4
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %ac, i32* %ac.addr, align 4
  store i8** %av, i8*** %av.addr, align 8
  store i32 0, i32* %err, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call3 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 0
  store i32 %call3, i32* %arrayidx4, align 4
  %cmp5 = icmp slt i32 %call3, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %3 = load i32, i32* %err, align 4
  %inc7 = add nsw i32 %3, 1
  store i32 %inc7, i32* %err, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %call8 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %arrayidx9 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 1
  store i32 %call8, i32* %arrayidx9, align 4
  %cmp10 = icmp sge i32 %call8, 0
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %4 = load i32, i32* %err, align 4
  %inc13 = add nsw i32 %4, 1
  store i32 %inc13, i32* %err, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc28, %if.end14
  %5 = load i32, i32* %i, align 4
  %cmp16 = icmp slt i32 %5, 2
  br i1 %cmp16, label %for.body17, label %for.end30

for.body17:                                       ; preds = %for.cond15
  %6 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %6 to i64
  %arrayidx19 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 %idxprom18
  %7 = load i32, i32* %arrayidx19, align 4
  %cmp20 = icmp sge i32 %7, 0
  br i1 %cmp20, label %if.then21, label %if.end27

if.then21:                                        ; preds = %for.body17
  %8 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %8 to i64
  %arrayidx23 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 %idxprom22
  %9 = load i32, i32* %arrayidx23, align 4
  %call24 = call i32 @close(i32 %9)
  %10 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %10 to i64
  %arrayidx26 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 %idxprom25
  store i32 -1, i32* %arrayidx26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %for.body17
  br label %for.inc28

for.inc28:                                        ; preds = %if.end27
  %11 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %11, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond15, !llvm.loop !6

for.end30:                                        ; preds = %for.cond15
  %call31 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %arrayidx32 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 0
  store i32 %call31, i32* %arrayidx32, align 4
  %cmp33 = icmp slt i32 %call31, 0
  br i1 %cmp33, label %if.then34, label %if.end37

if.then34:                                        ; preds = %for.end30
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %12 = load i32, i32* %err, align 4
  %inc36 = add nsw i32 %12, 1
  store i32 %inc36, i32* %err, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %for.end30
  %call38 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %arrayidx39 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 1
  store i32 %call38, i32* %arrayidx39, align 4
  %cmp40 = icmp slt i32 %call38, 0
  br i1 %cmp40, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.end37
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %13 = load i32, i32* %err, align 4
  %inc43 = add nsw i32 %13, 1
  store i32 %inc43, i32* %err, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end37
  store i32 0, i32* %i, align 4
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc58, %if.end44
  %14 = load i32, i32* %i, align 4
  %cmp46 = icmp slt i32 %14, 2
  br i1 %cmp46, label %for.body47, label %for.end60

for.body47:                                       ; preds = %for.cond45
  %15 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %15 to i64
  %arrayidx49 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 %idxprom48
  %16 = load i32, i32* %arrayidx49, align 4
  %cmp50 = icmp sge i32 %16, 0
  br i1 %cmp50, label %if.then51, label %if.end57

if.then51:                                        ; preds = %for.body47
  %17 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %17 to i64
  %arrayidx53 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 %idxprom52
  %18 = load i32, i32* %arrayidx53, align 4
  %call54 = call i32 @close(i32 %18)
  %19 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %19 to i64
  %arrayidx56 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 %idxprom55
  store i32 -1, i32* %arrayidx56, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then51, %for.body47
  br label %for.inc58

for.inc58:                                        ; preds = %if.end57
  %20 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %20, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond45, !llvm.loop !7

for.end60:                                        ; preds = %for.cond45
  %call61 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %arrayidx62 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 0
  store i32 %call61, i32* %arrayidx62, align 4
  %cmp63 = icmp slt i32 %call61, 0
  br i1 %cmp63, label %if.then64, label %if.end67

if.then64:                                        ; preds = %for.end60
  %call65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %21 = load i32, i32* %err, align 4
  %inc66 = add nsw i32 %21, 1
  store i32 %inc66, i32* %err, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %for.end60
  %call68 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %arrayidx69 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 1
  store i32 %call68, i32* %arrayidx69, align 4
  %cmp70 = icmp sge i32 %call68, 0
  br i1 %cmp70, label %if.then71, label %if.end74

if.then71:                                        ; preds = %if.end67
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %22 = load i32, i32* %err, align 4
  %inc73 = add nsw i32 %22, 1
  store i32 %inc73, i32* %err, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then71, %if.end67
  store i32 0, i32* %i, align 4
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc88, %if.end74
  %23 = load i32, i32* %i, align 4
  %cmp76 = icmp slt i32 %23, 2
  br i1 %cmp76, label %for.body77, label %for.end90

for.body77:                                       ; preds = %for.cond75
  %24 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %24 to i64
  %arrayidx79 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 %idxprom78
  %25 = load i32, i32* %arrayidx79, align 4
  %cmp80 = icmp sge i32 %25, 0
  br i1 %cmp80, label %if.then81, label %if.end87

if.then81:                                        ; preds = %for.body77
  %26 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %26 to i64
  %arrayidx83 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 %idxprom82
  %27 = load i32, i32* %arrayidx83, align 4
  %call84 = call i32 @close(i32 %27)
  %28 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %28 to i64
  %arrayidx86 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 %idxprom85
  store i32 -1, i32* %arrayidx86, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then81, %for.body77
  br label %for.inc88

for.inc88:                                        ; preds = %if.end87
  %29 = load i32, i32* %i, align 4
  %inc89 = add nsw i32 %29, 1
  store i32 %inc89, i32* %i, align 4
  br label %for.cond75, !llvm.loop !8

for.end90:                                        ; preds = %for.cond75
  %call91 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %arrayidx92 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 0
  store i32 %call91, i32* %arrayidx92, align 4
  %cmp93 = icmp slt i32 %call91, 0
  br i1 %cmp93, label %if.then94, label %if.end97

if.then94:                                        ; preds = %for.end90
  %call95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  %30 = load i32, i32* %err, align 4
  %inc96 = add nsw i32 %30, 1
  store i32 %inc96, i32* %err, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then94, %for.end90
  %call98 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %arrayidx99 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 1
  store i32 %call98, i32* %arrayidx99, align 4
  %cmp100 = icmp slt i32 %call98, 0
  br i1 %cmp100, label %if.then101, label %if.end104

if.then101:                                       ; preds = %if.end97
  %call102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  %31 = load i32, i32* %err, align 4
  %inc103 = add nsw i32 %31, 1
  store i32 %inc103, i32* %err, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %if.end97
  store i32 0, i32* %i, align 4
  br label %for.cond105

for.cond105:                                      ; preds = %for.inc118, %if.end104
  %32 = load i32, i32* %i, align 4
  %cmp106 = icmp slt i32 %32, 2
  br i1 %cmp106, label %for.body107, label %for.end120

for.body107:                                      ; preds = %for.cond105
  %33 = load i32, i32* %i, align 4
  %idxprom108 = sext i32 %33 to i64
  %arrayidx109 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 %idxprom108
  %34 = load i32, i32* %arrayidx109, align 4
  %cmp110 = icmp sge i32 %34, 0
  br i1 %cmp110, label %if.then111, label %if.end117

if.then111:                                       ; preds = %for.body107
  %35 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %35 to i64
  %arrayidx113 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 %idxprom112
  %36 = load i32, i32* %arrayidx113, align 4
  %call114 = call i32 @close(i32 %36)
  %37 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %37 to i64
  %arrayidx116 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 %idxprom115
  store i32 -1, i32* %arrayidx116, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.then111, %for.body107
  br label %for.inc118

for.inc118:                                       ; preds = %if.end117
  %38 = load i32, i32* %i, align 4
  %inc119 = add nsw i32 %38, 1
  store i32 %inc119, i32* %i, align 4
  br label %for.cond105, !llvm.loop !9

for.end120:                                       ; preds = %for.cond105
  %call121 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %arrayidx122 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 0
  store i32 %call121, i32* %arrayidx122, align 4
  %cmp123 = icmp slt i32 %call121, 0
  br i1 %cmp123, label %if.then124, label %if.end127

if.then124:                                       ; preds = %for.end120
  %call125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  %39 = load i32, i32* %err, align 4
  %inc126 = add nsw i32 %39, 1
  store i32 %inc126, i32* %err, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then124, %for.end120
  %call128 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %arrayidx129 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 1
  store i32 %call128, i32* %arrayidx129, align 4
  %cmp130 = icmp slt i32 %call128, 0
  br i1 %cmp130, label %if.then131, label %if.end134

if.then131:                                       ; preds = %if.end127
  %call132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  %40 = load i32, i32* %err, align 4
  %inc133 = add nsw i32 %40, 1
  store i32 %inc133, i32* %err, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.then131, %if.end127
  store i32 0, i32* %i, align 4
  br label %for.cond135

for.cond135:                                      ; preds = %for.inc148, %if.end134
  %41 = load i32, i32* %i, align 4
  %cmp136 = icmp slt i32 %41, 2
  br i1 %cmp136, label %for.body137, label %for.end150

for.body137:                                      ; preds = %for.cond135
  %42 = load i32, i32* %i, align 4
  %idxprom138 = sext i32 %42 to i64
  %arrayidx139 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 %idxprom138
  %43 = load i32, i32* %arrayidx139, align 4
  %cmp140 = icmp sge i32 %43, 0
  br i1 %cmp140, label %if.then141, label %if.end147

if.then141:                                       ; preds = %for.body137
  %44 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %44 to i64
  %arrayidx143 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 %idxprom142
  %45 = load i32, i32* %arrayidx143, align 4
  %call144 = call i32 @close(i32 %45)
  %46 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %46 to i64
  %arrayidx146 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 %idxprom145
  store i32 -1, i32* %arrayidx146, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.then141, %for.body137
  br label %for.inc148

for.inc148:                                       ; preds = %if.end147
  %47 = load i32, i32* %i, align 4
  %inc149 = add nsw i32 %47, 1
  store i32 %inc149, i32* %i, align 4
  br label %for.cond135, !llvm.loop !10

for.end150:                                       ; preds = %for.cond135
  %call151 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %arrayidx152 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 0
  store i32 %call151, i32* %arrayidx152, align 4
  %cmp153 = icmp slt i32 %call151, 0
  br i1 %cmp153, label %if.then154, label %if.end157

if.then154:                                       ; preds = %for.end150
  %call155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0))
  %48 = load i32, i32* %err, align 4
  %inc156 = add nsw i32 %48, 1
  store i32 %inc156, i32* %err, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.then154, %for.end150
  %call158 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %arrayidx159 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 1
  store i32 %call158, i32* %arrayidx159, align 4
  %cmp160 = icmp sge i32 %call158, 0
  br i1 %cmp160, label %if.then161, label %if.end164

if.then161:                                       ; preds = %if.end157
  %call162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.16, i64 0, i64 0))
  %49 = load i32, i32* %err, align 4
  %inc163 = add nsw i32 %49, 1
  store i32 %inc163, i32* %err, align 4
  br label %if.end164

if.end164:                                        ; preds = %if.then161, %if.end157
  store i32 0, i32* %i, align 4
  br label %for.cond165

for.cond165:                                      ; preds = %for.inc177, %if.end164
  %50 = load i32, i32* %i, align 4
  %cmp166 = icmp slt i32 %50, 2
  br i1 %cmp166, label %for.body167, label %for.end179

for.body167:                                      ; preds = %for.cond165
  %51 = load i32, i32* %i, align 4
  %idxprom168 = sext i32 %51 to i64
  %arrayidx169 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 %idxprom168
  %52 = load i32, i32* %arrayidx169, align 4
  %tobool = icmp ne i32 %52, 0
  br i1 %tobool, label %if.then170, label %if.end176

if.then170:                                       ; preds = %for.body167
  %53 = load i32, i32* %i, align 4
  %idxprom171 = sext i32 %53 to i64
  %arrayidx172 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 %idxprom171
  %54 = load i32, i32* %arrayidx172, align 4
  %call173 = call i32 @close(i32 %54)
  %55 = load i32, i32* %i, align 4
  %idxprom174 = sext i32 %55 to i64
  %arrayidx175 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 %idxprom174
  store i32 -1, i32* %arrayidx175, align 4
  br label %if.end176

if.end176:                                        ; preds = %if.then170, %for.body167
  br label %for.inc177

for.inc177:                                       ; preds = %if.end176
  %56 = load i32, i32* %i, align 4
  %inc178 = add nsw i32 %56, 1
  store i32 %inc178, i32* %i, align 4
  br label %for.cond165, !llvm.loop !11

for.end179:                                       ; preds = %for.cond165
  %call180 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %arrayidx181 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 0
  store i32 %call180, i32* %arrayidx181, align 4
  %cmp182 = icmp slt i32 %call180, 0
  br i1 %cmp182, label %if.then183, label %if.end186

if.then183:                                       ; preds = %for.end179
  %call184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0))
  %57 = load i32, i32* %err, align 4
  %inc185 = add nsw i32 %57, 1
  store i32 %inc185, i32* %err, align 4
  br label %if.end186

if.end186:                                        ; preds = %if.then183, %for.end179
  %call187 = call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %arrayidx188 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 1
  store i32 %call187, i32* %arrayidx188, align 4
  %cmp189 = icmp sge i32 %call187, 0
  br i1 %cmp189, label %if.then190, label %if.end193

if.then190:                                       ; preds = %if.end186
  %call191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.18, i64 0, i64 0))
  %58 = load i32, i32* %err, align 4
  %inc192 = add nsw i32 %58, 1
  store i32 %inc192, i32* %err, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.then190, %if.end186
  store i32 0, i32* %i, align 4
  br label %for.cond194

for.cond194:                                      ; preds = %for.inc207, %if.end193
  %59 = load i32, i32* %i, align 4
  %cmp195 = icmp slt i32 %59, 2
  br i1 %cmp195, label %for.body196, label %for.end209

for.body196:                                      ; preds = %for.cond194
  %60 = load i32, i32* %i, align 4
  %idxprom197 = sext i32 %60 to i64
  %arrayidx198 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 %idxprom197
  %61 = load i32, i32* %arrayidx198, align 4
  %cmp199 = icmp sge i32 %61, 0
  br i1 %cmp199, label %if.then200, label %if.end206

if.then200:                                       ; preds = %for.body196
  %62 = load i32, i32* %i, align 4
  %idxprom201 = sext i32 %62 to i64
  %arrayidx202 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 %idxprom201
  %63 = load i32, i32* %arrayidx202, align 4
  %call203 = call i32 @close(i32 %63)
  %64 = load i32, i32* %i, align 4
  %idxprom204 = sext i32 %64 to i64
  %arrayidx205 = getelementptr inbounds [2 x i32], [2 x i32]* %fd_audio, i64 0, i64 %idxprom204
  store i32 -1, i32* %arrayidx205, align 4
  br label %if.end206

if.end206:                                        ; preds = %if.then200, %for.body196
  br label %for.inc207

for.inc207:                                       ; preds = %if.end206
  %65 = load i32, i32* %i, align 4
  %inc208 = add nsw i32 %65, 1
  store i32 %inc208, i32* %i, align 4
  br label %for.cond194, !llvm.loop !12

for.end209:                                       ; preds = %for.cond194
  %66 = load i32, i32* %err, align 4
  %cmp210 = icmp eq i32 %66, 0
  br i1 %cmp210, label %if.then211, label %if.else

if.then211:                                       ; preds = %for.end209
  %call212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i64 0, i64 0))
  br label %if.end214

if.else:                                          ; preds = %for.end209
  %67 = load i32, i32* %err, align 4
  %call213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i32 %67)
  br label %if.end214

if.end214:                                        ; preds = %if.else, %if.then211
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
