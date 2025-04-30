; ModuleID = './code/050-33543lcs.c'
source_filename = "./code/050-33543lcs.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%c \00", align 1
@__const.main.x = private unnamed_addr constant [100 x i8] c"ABCBDAB\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @LCSLength(ptr noundef %x, ptr noundef %y, i32 noundef %m, i32 noundef %n, ptr noundef %c, ptr noundef %b) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %c.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8
  store ptr %y, ptr %y.addr, align 8
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %c, ptr %c.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %m.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %c.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %2, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 0
  store i32 0, ptr %arrayidx1, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc8, %for.end
  %5 = load i32, ptr %j, align 4
  %6 = load i32, ptr %n.addr, align 4
  %cmp3 = icmp sle i32 %5, %6
  br i1 %cmp3, label %for.body4, label %for.end10

for.body4:                                        ; preds = %for.cond2
  %7 = load ptr, ptr %c.addr, align 8
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr %7, i64 0
  %8 = load i32, ptr %j, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], ptr %arrayidx5, i64 0, i64 %idxprom6
  store i32 0, ptr %arrayidx7, align 4
  br label %for.inc8

for.inc8:                                         ; preds = %for.body4
  %9 = load i32, ptr %j, align 4
  %inc9 = add nsw i32 %9, 1
  store i32 %inc9, ptr %j, align 4
  br label %for.cond2, !llvm.loop !7

for.end10:                                        ; preds = %for.cond2
  store i32 1, ptr %i, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc83, %for.end10
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %m.addr, align 4
  %cmp12 = icmp sle i32 %10, %11
  br i1 %cmp12, label %for.body13, label %for.end85

for.body13:                                       ; preds = %for.cond11
  store i32 1, ptr %j, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc80, %for.body13
  %12 = load i32, ptr %j, align 4
  %13 = load i32, ptr %n.addr, align 4
  %cmp15 = icmp sle i32 %12, %13
  br i1 %cmp15, label %for.body16, label %for.end82

for.body16:                                       ; preds = %for.cond14
  %14 = load ptr, ptr %x.addr, align 8
  %15 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %15, 1
  %idxprom17 = sext i32 %sub to i64
  %arrayidx18 = getelementptr inbounds i8, ptr %14, i64 %idxprom17
  %16 = load i8, ptr %arrayidx18, align 1
  %conv = sext i8 %16 to i32
  %17 = load ptr, ptr %y.addr, align 8
  %18 = load i32, ptr %j, align 4
  %sub19 = sub nsw i32 %18, 1
  %idxprom20 = sext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %17, i64 %idxprom20
  %19 = load i8, ptr %arrayidx21, align 1
  %conv22 = sext i8 %19 to i32
  %cmp23 = icmp eq i32 %conv, %conv22
  br i1 %cmp23, label %if.then, label %if.else

if.then:                                          ; preds = %for.body16
  %20 = load ptr, ptr %c.addr, align 8
  %21 = load i32, ptr %i, align 4
  %sub25 = sub nsw i32 %21, 1
  %idxprom26 = sext i32 %sub25 to i64
  %arrayidx27 = getelementptr inbounds [100 x i32], ptr %20, i64 %idxprom26
  %22 = load i32, ptr %j, align 4
  %sub28 = sub nsw i32 %22, 1
  %idxprom29 = sext i32 %sub28 to i64
  %arrayidx30 = getelementptr inbounds [100 x i32], ptr %arrayidx27, i64 0, i64 %idxprom29
  %23 = load i32, ptr %arrayidx30, align 4
  %add = add nsw i32 %23, 1
  %24 = load ptr, ptr %c.addr, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom31 = sext i32 %25 to i64
  %arrayidx32 = getelementptr inbounds [100 x i32], ptr %24, i64 %idxprom31
  %26 = load i32, ptr %j, align 4
  %idxprom33 = sext i32 %26 to i64
  %arrayidx34 = getelementptr inbounds [100 x i32], ptr %arrayidx32, i64 0, i64 %idxprom33
  store i32 %add, ptr %arrayidx34, align 4
  %27 = load ptr, ptr %b.addr, align 8
  %28 = load i32, ptr %i, align 4
  %idxprom35 = sext i32 %28 to i64
  %arrayidx36 = getelementptr inbounds [100 x i32], ptr %27, i64 %idxprom35
  %29 = load i32, ptr %j, align 4
  %idxprom37 = sext i32 %29 to i64
  %arrayidx38 = getelementptr inbounds [100 x i32], ptr %arrayidx36, i64 0, i64 %idxprom37
  store i32 0, ptr %arrayidx38, align 4
  br label %if.end79

if.else:                                          ; preds = %for.body16
  %30 = load ptr, ptr %c.addr, align 8
  %31 = load i32, ptr %i, align 4
  %sub39 = sub nsw i32 %31, 1
  %idxprom40 = sext i32 %sub39 to i64
  %arrayidx41 = getelementptr inbounds [100 x i32], ptr %30, i64 %idxprom40
  %32 = load i32, ptr %j, align 4
  %idxprom42 = sext i32 %32 to i64
  %arrayidx43 = getelementptr inbounds [100 x i32], ptr %arrayidx41, i64 0, i64 %idxprom42
  %33 = load i32, ptr %arrayidx43, align 4
  %34 = load ptr, ptr %c.addr, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom44 = sext i32 %35 to i64
  %arrayidx45 = getelementptr inbounds [100 x i32], ptr %34, i64 %idxprom44
  %36 = load i32, ptr %j, align 4
  %sub46 = sub nsw i32 %36, 1
  %idxprom47 = sext i32 %sub46 to i64
  %arrayidx48 = getelementptr inbounds [100 x i32], ptr %arrayidx45, i64 0, i64 %idxprom47
  %37 = load i32, ptr %arrayidx48, align 4
  %cmp49 = icmp sge i32 %33, %37
  br i1 %cmp49, label %if.then51, label %if.else65

if.then51:                                        ; preds = %if.else
  %38 = load ptr, ptr %c.addr, align 8
  %39 = load i32, ptr %i, align 4
  %sub52 = sub nsw i32 %39, 1
  %idxprom53 = sext i32 %sub52 to i64
  %arrayidx54 = getelementptr inbounds [100 x i32], ptr %38, i64 %idxprom53
  %40 = load i32, ptr %j, align 4
  %idxprom55 = sext i32 %40 to i64
  %arrayidx56 = getelementptr inbounds [100 x i32], ptr %arrayidx54, i64 0, i64 %idxprom55
  %41 = load i32, ptr %arrayidx56, align 4
  %42 = load ptr, ptr %c.addr, align 8
  %43 = load i32, ptr %i, align 4
  %idxprom57 = sext i32 %43 to i64
  %arrayidx58 = getelementptr inbounds [100 x i32], ptr %42, i64 %idxprom57
  %44 = load i32, ptr %j, align 4
  %idxprom59 = sext i32 %44 to i64
  %arrayidx60 = getelementptr inbounds [100 x i32], ptr %arrayidx58, i64 0, i64 %idxprom59
  store i32 %41, ptr %arrayidx60, align 4
  %45 = load ptr, ptr %b.addr, align 8
  %46 = load i32, ptr %i, align 4
  %idxprom61 = sext i32 %46 to i64
  %arrayidx62 = getelementptr inbounds [100 x i32], ptr %45, i64 %idxprom61
  %47 = load i32, ptr %j, align 4
  %idxprom63 = sext i32 %47 to i64
  %arrayidx64 = getelementptr inbounds [100 x i32], ptr %arrayidx62, i64 0, i64 %idxprom63
  store i32 1, ptr %arrayidx64, align 4
  br label %if.end

if.else65:                                        ; preds = %if.else
  %48 = load ptr, ptr %c.addr, align 8
  %49 = load i32, ptr %i, align 4
  %idxprom66 = sext i32 %49 to i64
  %arrayidx67 = getelementptr inbounds [100 x i32], ptr %48, i64 %idxprom66
  %50 = load i32, ptr %j, align 4
  %sub68 = sub nsw i32 %50, 1
  %idxprom69 = sext i32 %sub68 to i64
  %arrayidx70 = getelementptr inbounds [100 x i32], ptr %arrayidx67, i64 0, i64 %idxprom69
  %51 = load i32, ptr %arrayidx70, align 4
  %52 = load ptr, ptr %c.addr, align 8
  %53 = load i32, ptr %i, align 4
  %idxprom71 = sext i32 %53 to i64
  %arrayidx72 = getelementptr inbounds [100 x i32], ptr %52, i64 %idxprom71
  %54 = load i32, ptr %j, align 4
  %idxprom73 = sext i32 %54 to i64
  %arrayidx74 = getelementptr inbounds [100 x i32], ptr %arrayidx72, i64 0, i64 %idxprom73
  store i32 %51, ptr %arrayidx74, align 4
  %55 = load ptr, ptr %b.addr, align 8
  %56 = load i32, ptr %i, align 4
  %idxprom75 = sext i32 %56 to i64
  %arrayidx76 = getelementptr inbounds [100 x i32], ptr %55, i64 %idxprom75
  %57 = load i32, ptr %j, align 4
  %idxprom77 = sext i32 %57 to i64
  %arrayidx78 = getelementptr inbounds [100 x i32], ptr %arrayidx76, i64 0, i64 %idxprom77
  store i32 -1, ptr %arrayidx78, align 4
  br label %if.end

if.end:                                           ; preds = %if.else65, %if.then51
  br label %if.end79

if.end79:                                         ; preds = %if.end, %if.then
  br label %for.inc80

for.inc80:                                        ; preds = %if.end79
  %58 = load i32, ptr %j, align 4
  %inc81 = add nsw i32 %58, 1
  store i32 %inc81, ptr %j, align 4
  br label %for.cond14, !llvm.loop !8

for.end82:                                        ; preds = %for.cond14
  br label %for.inc83

for.inc83:                                        ; preds = %for.end82
  %59 = load i32, ptr %i, align 4
  %inc84 = add nsw i32 %59, 1
  store i32 %inc84, ptr %i, align 4
  br label %for.cond11, !llvm.loop !9

for.end85:                                        ; preds = %for.cond11
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @PrintLCS(ptr noundef %b, ptr noundef %x, i32 noundef %i, i32 noundef %j) #0 {
entry:
  %b.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  store i32 %i, ptr %i.addr, align 4
  store i32 %j, ptr %j.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %j.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end21

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %b.addr, align 8
  %3 = load i32, ptr %i.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %2, i64 %idxprom
  %4 = load i32, ptr %j.addr, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom2
  %5 = load i32, ptr %arrayidx3, align 4
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %b.addr, align 8
  %7 = load ptr, ptr %x.addr, align 8
  %8 = load i32, ptr %i.addr, align 4
  %sub = sub nsw i32 %8, 1
  %9 = load i32, ptr %j.addr, align 4
  %sub6 = sub nsw i32 %9, 1
  call void @PrintLCS(ptr noundef %6, ptr noundef %7, i32 noundef %sub, i32 noundef %sub6)
  %10 = load ptr, ptr %x.addr, align 8
  %11 = load i32, ptr %i.addr, align 4
  %sub7 = sub nsw i32 %11, 1
  %idxprom8 = sext i32 %sub7 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %10, i64 %idxprom8
  %12 = load i8, ptr %arrayidx9, align 1
  %conv = sext i8 %12 to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv)
  br label %if.end21

if.else:                                          ; preds = %if.end
  %13 = load ptr, ptr %b.addr, align 8
  %14 = load i32, ptr %i.addr, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %13, i64 %idxprom10
  %15 = load i32, ptr %j.addr, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [100 x i32], ptr %arrayidx11, i64 0, i64 %idxprom12
  %16 = load i32, ptr %arrayidx13, align 4
  %cmp14 = icmp eq i32 %16, 1
  br i1 %cmp14, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.else
  %17 = load ptr, ptr %b.addr, align 8
  %18 = load ptr, ptr %x.addr, align 8
  %19 = load i32, ptr %i.addr, align 4
  %sub17 = sub nsw i32 %19, 1
  %20 = load i32, ptr %j.addr, align 4
  call void @PrintLCS(ptr noundef %17, ptr noundef %18, i32 noundef %sub17, i32 noundef %20)
  br label %if.end20

if.else18:                                        ; preds = %if.else
  %21 = load ptr, ptr %b.addr, align 8
  %22 = load ptr, ptr %x.addr, align 8
  %23 = load i32, ptr %i.addr, align 4
  %24 = load i32, ptr %j.addr, align 4
  %sub19 = sub nsw i32 %24, 1
  call void @PrintLCS(ptr noundef %21, ptr noundef %22, i32 noundef %23, i32 noundef %sub19)
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.then16
  br label %if.end21

if.end21:                                         ; preds = %if.then, %if.end20, %if.then5
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %x = alloca [100 x i8], align 1
  %y = alloca [100 x i8], align 1
  %b = alloca [100 x [100 x i32]], align 4
  %c = alloca [100 x [100 x i32]], align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %x, ptr align 1 @__const.main.x, i64 100, i1 false)
  call void @llvm.memset.p0.i64(ptr align 1 %y, i8 0, i64 100, i1 false)
  %0 = getelementptr inbounds [100 x i8], ptr %y, i32 0, i32 0
  store i8 66, ptr %0, align 1
  %1 = getelementptr inbounds [100 x i8], ptr %y, i32 0, i32 1
  store i8 68, ptr %1, align 1
  %2 = getelementptr inbounds [100 x i8], ptr %y, i32 0, i32 2
  store i8 67, ptr %2, align 1
  %3 = getelementptr inbounds [100 x i8], ptr %y, i32 0, i32 3
  store i8 65, ptr %3, align 1
  %4 = getelementptr inbounds [100 x i8], ptr %y, i32 0, i32 4
  store i8 66, ptr %4, align 1
  %5 = getelementptr inbounds [100 x i8], ptr %y, i32 0, i32 5
  store i8 65, ptr %5, align 1
  %arraydecay = getelementptr inbounds [100 x i8], ptr %x, i64 0, i64 0
  %call = call i64 @strlen(ptr noundef %arraydecay) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %m, align 4
  %arraydecay1 = getelementptr inbounds [100 x i8], ptr %y, i64 0, i64 0
  %call2 = call i64 @strlen(ptr noundef %arraydecay1) #5
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, ptr %n, align 4
  %arraydecay4 = getelementptr inbounds [100 x i8], ptr %x, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [100 x i8], ptr %y, i64 0, i64 0
  %6 = load i32, ptr %m, align 4
  %7 = load i32, ptr %n, align 4
  %arraydecay6 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [100 x [100 x i32]], ptr %b, i64 0, i64 0
  call void @LCSLength(ptr noundef %arraydecay4, ptr noundef %arraydecay5, i32 noundef %6, i32 noundef %7, ptr noundef %arraydecay6, ptr noundef %arraydecay7)
  %arraydecay8 = getelementptr inbounds [100 x [100 x i32]], ptr %b, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [100 x i8], ptr %x, i64 0, i64 0
  %8 = load i32, ptr %m, align 4
  %9 = load i32, ptr %n, align 4
  call void @PrintLCS(ptr noundef %arraydecay8, ptr noundef %arraydecay9, i32 noundef %8, i32 noundef %9)
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #4

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { nounwind }

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
