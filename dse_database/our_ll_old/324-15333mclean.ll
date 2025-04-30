; ModuleID = './code/324-15333mclean.c'
source_filename = "./code/324-15333mclean.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.anon = type { float, i64, i8, %struct.anon.0 }
%struct.anon.0 = type { i32, i32, i32, i32, i8 }

@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@state = internal global %struct.anon zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@__stdinp = external global ptr, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"%i:%i:%i:%i\00", align 1
@__stdoutp = external global ptr, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"[CROP] \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Crop Line: \22%s\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Percentage Line: \22%s\22\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Unknown Line: \22%s\22\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Read crop %i:%i:%i:%i\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Read percentage %f from \22%s\22\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"%s %s %04.1f%%\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %prefix = alloca ptr, align 8
  %buf = alloca [512 x i8], align 1
  %line = alloca [256 x i8], align 1
  %sz = alloca i64, align 8
  %linePos = alloca i64, align 8
  %barlen = alloca i32, align 4
  %printStatus = alloca i32, align 4
  %i = alloca i32, align 4
  %i39 = alloca i64, align 8
  %thisTime = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i64 0, ptr %linePos, align 8
  store i32 16, ptr %barlen, align 4
  store i32 1, ptr %printStatus, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %argc.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %argv.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @strcmp(ptr noundef %4, ptr noundef @.str) #4
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.end

if.else:                                          ; preds = %for.body
  %6 = load ptr, ptr %argv.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom2 = zext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds ptr, ptr %6, i64 %idxprom2
  %8 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.1) #4
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  %bf.load = load i8, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 2), align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 2), align 8
  br label %if.end28

if.else7:                                         ; preds = %if.else
  %9 = load ptr, ptr %argv.addr, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom8 = zext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %9, i64 %idxprom8
  %11 = load ptr, ptr %arrayidx9, align 8
  %call10 = call i32 @strcmp(ptr noundef %11, ptr noundef @.str.2) #4
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.else19

if.then12:                                        ; preds = %if.else7
  %12 = load i32, ptr %i, align 4
  %inc13 = add i32 %12, 1
  store i32 %inc13, ptr %i, align 4
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %argc.addr, align 4
  %cmp14 = icmp ult i32 %13, %14
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then12
  %15 = load ptr, ptr %argv.addr, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom16 = zext i32 %16 to i64
  %arrayidx17 = getelementptr inbounds ptr, ptr %15, i64 %idxprom16
  %17 = load ptr, ptr %arrayidx17, align 8
  %call18 = call i32 @atoi(ptr noundef %17)
  store i32 %call18, ptr %barlen, align 4
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then12
  br label %if.end27

if.else19:                                        ; preds = %if.else7
  %18 = load ptr, ptr %argv.addr, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom20 = zext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds ptr, ptr %18, i64 %idxprom20
  %20 = load ptr, ptr %arrayidx21, align 8
  %call22 = call i32 @strcmp(ptr noundef %20, ptr noundef @.str.3) #4
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.else25

if.then24:                                        ; preds = %if.else19
  store i32 0, ptr %printStatus, align 4
  br label %if.end26

if.else25:                                        ; preds = %if.else19
  br label %for.end

if.end26:                                         ; preds = %if.then24
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then6
  br label %if.end29

if.end29:                                         ; preds = %if.end28
  br label %for.inc

for.inc:                                          ; preds = %if.end29
  %21 = load i32, ptr %i, align 4
  %inc30 = add i32 %21, 1
  store i32 %inc30, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %if.else25, %if.then, %for.cond
  %22 = load i32, ptr %i, align 4
  %23 = load i32, ptr %argc.addr, align 4
  %cmp31 = icmp uge i32 %22, %23
  br i1 %cmp31, label %if.then32, label %if.else33

if.then32:                                        ; preds = %for.end
  store ptr @.str.4, ptr %prefix, align 8
  br label %if.end36

if.else33:                                        ; preds = %for.end
  %24 = load ptr, ptr %argv.addr, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom34 = zext i32 %25 to i64
  %arrayidx35 = getelementptr inbounds ptr, ptr %24, i64 %idxprom34
  %26 = load ptr, ptr %arrayidx35, align 8
  store ptr %26, ptr %prefix, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.else33, %if.then32
  br label %while.cond

while.cond:                                       ; preds = %for.end76, %if.end36
  %arraydecay = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 0
  %27 = load ptr, ptr @__stdinp, align 8
  %call37 = call i64 @fread(ptr noundef %arraydecay, i64 noundef 1, i64 noundef 512, ptr noundef %27)
  store i64 %call37, ptr %sz, align 8
  %cmp38 = icmp ne i64 %call37, 0
  br i1 %cmp38, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i64 0, ptr %i39, align 8
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc74, %while.body
  %28 = load i64, ptr %i39, align 8
  %29 = load i64, ptr %sz, align 8
  %cmp41 = icmp ult i64 %28, %29
  br i1 %cmp41, label %for.body42, label %for.end76

for.body42:                                       ; preds = %for.cond40
  %30 = load i64, ptr %linePos, align 8
  %cmp43 = icmp eq i64 %30, 256
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %for.body42
  store i64 0, ptr %linePos, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %for.body42
  %31 = load i64, ptr %i39, align 8
  %arrayidx46 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 %31
  %32 = load i8, ptr %arrayidx46, align 1
  %conv = sext i8 %32 to i32
  %cmp47 = icmp eq i32 %conv, 10
  br i1 %cmp47, label %if.then53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end45
  %33 = load i64, ptr %i39, align 8
  %arrayidx49 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 %33
  %34 = load i8, ptr %arrayidx49, align 1
  %conv50 = sext i8 %34 to i32
  %cmp51 = icmp eq i32 %conv50, 13
  br i1 %cmp51, label %if.then53, label %if.else56

if.then53:                                        ; preds = %lor.lhs.false, %if.end45
  %35 = load i64, ptr %linePos, align 8
  %arrayidx54 = getelementptr inbounds [256 x i8], ptr %line, i64 0, i64 %35
  store i8 0, ptr %arrayidx54, align 1
  store i64 0, ptr %linePos, align 8
  %arraydecay55 = getelementptr inbounds [256 x i8], ptr %line, i64 0, i64 0
  call void @parseLine(ptr noundef %arraydecay55)
  br label %if.end60

if.else56:                                        ; preds = %lor.lhs.false
  %36 = load i64, ptr %i39, align 8
  %arrayidx57 = getelementptr inbounds [512 x i8], ptr %buf, i64 0, i64 %36
  %37 = load i8, ptr %arrayidx57, align 1
  %38 = load i64, ptr %linePos, align 8
  %inc58 = add i64 %38, 1
  store i64 %inc58, ptr %linePos, align 8
  %arrayidx59 = getelementptr inbounds [256 x i8], ptr %line, i64 0, i64 %38
  store i8 %37, ptr %arrayidx59, align 1
  br label %if.end60

if.end60:                                         ; preds = %if.else56, %if.then53
  %bf.load61 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 2), align 8
  %bf.clear62 = and i8 %bf.load61, 1
  %bf.cast = zext i8 %bf.clear62 to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %land.lhs.true, label %if.end73

land.lhs.true:                                    ; preds = %if.end60
  %39 = load i32, ptr %printStatus, align 4
  %tobool63 = icmp ne i32 %39, 0
  br i1 %tobool63, label %if.then64, label %if.end73

if.then64:                                        ; preds = %land.lhs.true
  %call65 = call i64 @time(ptr noundef null)
  store i64 %call65, ptr %thisTime, align 8
  %40 = load i64, ptr %thisTime, align 8
  %41 = load i64, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 1), align 8
  %sub = sub nsw i64 %40, %41
  %cmp66 = icmp sgt i64 %sub, 2
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.then64
  %42 = load ptr, ptr %prefix, align 8
  %43 = load i32, ptr %barlen, align 4
  call void @print(ptr noundef %42, i32 noundef %43)
  %44 = load i64, ptr %thisTime, align 8
  store i64 %44, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 1), align 8
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.then64
  %bf.load70 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 2), align 8
  %bf.clear71 = and i8 %bf.load70, -2
  %bf.set72 = or i8 %bf.clear71, 0
  store i8 %bf.set72, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 2), align 8
  br label %if.end73

if.end73:                                         ; preds = %if.end69, %land.lhs.true, %if.end60
  br label %for.inc74

for.inc74:                                        ; preds = %if.end73
  %45 = load i64, ptr %i39, align 8
  %inc75 = add i64 %45, 1
  store i64 %inc75, ptr %i39, align 8
  br label %for.cond40, !llvm.loop !7

for.end76:                                        ; preds = %for.cond40
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %bf.load77 = load i8, ptr getelementptr inbounds (%struct.anon.0, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 3), i32 0, i32 4), align 4
  %bf.clear78 = and i8 %bf.load77, 1
  %bf.cast79 = zext i8 %bf.clear78 to i32
  %tobool80 = icmp ne i32 %bf.cast79, 0
  br i1 %tobool80, label %if.then81, label %if.end84

if.then81:                                        ; preds = %while.end
  %46 = load i32, ptr getelementptr inbounds (%struct.anon.0, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 3), i32 0, i32 2), align 4
  %47 = load i32, ptr getelementptr inbounds (%struct.anon.0, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 3), i32 0, i32 3), align 4
  %48 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 3), align 4
  %49 = load i32, ptr getelementptr inbounds (%struct.anon.0, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 3), i32 0, i32 1), align 4
  %call82 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %46, i32 noundef %47, i32 noundef %48, i32 noundef %49)
  %50 = load ptr, ptr @__stdoutp, align 8
  %call83 = call i32 @fflush(ptr noundef %50)
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %while.end
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #1

declare i32 @atoi(ptr noundef) #2

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @parseLine(ptr noundef %line) #0 {
entry:
  %line.addr = alloca ptr, align 8
  %pos = alloca ptr, align 8
  store ptr %line, ptr %line.addr, align 8
  %0 = load ptr, ptr %line.addr, align 8
  %call = call i32 @strncmp(ptr noundef %0, ptr noundef @.str.6, i64 noundef 7) #4
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %line.addr, align 8
  call void @parseCropLine(ptr noundef %1)
  %bf.load = load i8, ptr getelementptr inbounds (%struct.anon.0, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 3), i32 0, i32 4), align 4
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, ptr getelementptr inbounds (%struct.anon.0, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 3), i32 0, i32 4), align 4
  %bf.load1 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 2), align 8
  %bf.lshr = lshr i8 %bf.load1, 1
  %bf.clear2 = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear2 to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %2 = load ptr, ptr %line.addr, align 8
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, ptr noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end26

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %line.addr, align 8
  %call5 = call ptr @strchr(ptr noundef %3, i32 noundef 37) #4
  store ptr %call5, ptr %pos, align 8
  %cmp6 = icmp ne ptr %call5, null
  br i1 %cmp6, label %if.then7, label %if.else16

if.then7:                                         ; preds = %if.else
  %4 = load ptr, ptr %pos, align 8
  store i8 0, ptr %4, align 1
  %5 = load ptr, ptr %line.addr, align 8
  %6 = load ptr, ptr %pos, align 8
  call void @parseStatusLine(ptr noundef %5, ptr noundef %6)
  %bf.load8 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 2), align 8
  %bf.lshr9 = lshr i8 %bf.load8, 1
  %bf.clear10 = and i8 %bf.lshr9, 1
  %bf.cast11 = zext i8 %bf.clear10 to i32
  %tobool12 = icmp ne i32 %bf.cast11, 0
  br i1 %tobool12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then7
  %7 = load ptr, ptr %line.addr, align 8
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, ptr noundef %7)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then7
  br label %if.end25

if.else16:                                        ; preds = %if.else
  %bf.load17 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 2), align 8
  %bf.lshr18 = lshr i8 %bf.load17, 1
  %bf.clear19 = and i8 %bf.lshr18, 1
  %bf.cast20 = zext i8 %bf.clear19 to i32
  %tobool21 = icmp ne i32 %bf.cast20, 0
  br i1 %tobool21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.else16
  %8 = load ptr, ptr %line.addr, align 8
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, ptr noundef %8)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.else16
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end15
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end
  ret void
}

declare i64 @time(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @print(ptr noundef %prefix, i32 noundef %barlen) #0 {
entry:
  %prefix.addr = alloca ptr, align 8
  %barlen.addr = alloca i32, align 4
  %nbars = alloca i32, align 4
  %pcbar = alloca [67 x i8], align 1
  %i = alloca i32, align 4
  store ptr %prefix, ptr %prefix.addr, align 8
  store i32 %barlen, ptr %barlen.addr, align 4
  %0 = load float, ptr @state, align 8
  %cmp = fcmp olt float %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store float 0.000000e+00, ptr @state, align 8
  br label %if.end3

if.else:                                          ; preds = %entry
  %1 = load float, ptr @state, align 8
  %cmp1 = fcmp ogt float %1, 1.000000e+02
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  store float 1.000000e+02, ptr @state, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  %2 = load i32, ptr %barlen.addr, align 4
  %cmp4 = icmp ugt i32 %2, 64
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i32 64, ptr %barlen.addr, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %3 = load i32, ptr %barlen.addr, align 4
  %conv = uitofp i32 %3 to float
  %4 = load float, ptr @state, align 8
  %div = fdiv float %4, 1.000000e+02
  %mul = fmul float %conv, %div
  %conv7 = fptoui float %mul to i32
  store i32 %conv7, ptr %nbars, align 4
  %arrayidx = getelementptr inbounds [67 x i8], ptr %pcbar, i64 0, i64 0
  store i8 91, ptr %arrayidx, align 1
  %5 = load i32, ptr %barlen.addr, align 4
  %add = add i32 %5, 1
  %idxprom = zext i32 %add to i64
  %arrayidx8 = getelementptr inbounds [67 x i8], ptr %pcbar, i64 0, i64 %idxprom
  store i8 93, ptr %arrayidx8, align 1
  %6 = load i32, ptr %barlen.addr, align 4
  %add9 = add i32 %6, 2
  %idxprom10 = zext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds [67 x i8], ptr %pcbar, i64 0, i64 %idxprom10
  store i8 0, ptr %arrayidx11, align 1
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %barlen.addr, align 4
  %cmp12 = icmp ule i32 %7, %8
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %nbars, align 4
  %cmp14 = icmp ule i32 %9, %10
  br i1 %cmp14, label %if.then16, label %if.else19

if.then16:                                        ; preds = %for.body
  %11 = load i32, ptr %i, align 4
  %idxprom17 = zext i32 %11 to i64
  %arrayidx18 = getelementptr inbounds [67 x i8], ptr %pcbar, i64 0, i64 %idxprom17
  store i8 61, ptr %arrayidx18, align 1
  br label %if.end22

if.else19:                                        ; preds = %for.body
  %12 = load i32, ptr %i, align 4
  %idxprom20 = zext i32 %12 to i64
  %arrayidx21 = getelementptr inbounds [67 x i8], ptr %pcbar, i64 0, i64 %idxprom20
  store i8 32, ptr %arrayidx21, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.else19, %if.then16
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %13 = load i32, ptr %i, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %prefix.addr, align 8
  %arraydecay = getelementptr inbounds [67 x i8], ptr %pcbar, i64 0, i64 0
  %15 = load float, ptr @state, align 8
  %conv23 = fpext float %15 to double
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.12, ptr noundef %14, ptr noundef %arraydecay, double noundef %conv23)
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

declare i32 @fflush(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @parseCropLine(ptr noundef %line) #0 {
entry:
  %line.addr = alloca ptr, align 8
  %pos = alloca ptr, align 8
  %args = alloca [4 x i32], align 4
  %i = alloca i32, align 4
  %next = alloca ptr, align 8
  store ptr %line, ptr %line.addr, align 8
  %0 = load ptr, ptr %line.addr, align 8
  %call = call ptr @strrchr(ptr noundef %0, i32 noundef 61) #4
  store ptr %call, ptr %pos, align 8
  %1 = load ptr, ptr %pos, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end52

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pos, align 8
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 1
  store ptr %add.ptr, ptr %pos, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4
  %cmp1 = icmp ult i32 %3, 4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %pos, align 8
  %call2 = call i64 @strtol(ptr noundef %4, ptr noundef %next, i32 noundef 0)
  %conv = trunc i64 %call2 to i32
  %5 = load i32, ptr %i, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %args, i64 0, i64 %idxprom
  store i32 %conv, ptr %arrayidx, align 4
  %6 = load ptr, ptr %next, align 8
  %7 = load ptr, ptr %pos, align 8
  %cmp3 = icmp eq ptr %6, %7
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.body
  br label %if.end52

if.end6:                                          ; preds = %for.body
  %8 = load ptr, ptr %next, align 8
  %add.ptr7 = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %add.ptr7, ptr %pos, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %9 = load i32, ptr %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %bf.load = load i8, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 2), align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then8, label %if.end14

if.then8:                                         ; preds = %for.end
  %arrayidx9 = getelementptr inbounds [4 x i32], ptr %args, i64 0, i64 0
  %10 = load i32, ptr %arrayidx9, align 4
  %arrayidx10 = getelementptr inbounds [4 x i32], ptr %args, i64 0, i64 1
  %11 = load i32, ptr %arrayidx10, align 4
  %arrayidx11 = getelementptr inbounds [4 x i32], ptr %args, i64 0, i64 2
  %12 = load i32, ptr %arrayidx11, align 4
  %arrayidx12 = getelementptr inbounds [4 x i32], ptr %args, i64 0, i64 3
  %13 = load i32, ptr %arrayidx12, align 4
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13)
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %for.end
  %bf.load15 = load i8, ptr getelementptr inbounds (%struct.anon.0, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 3), i32 0, i32 4), align 4
  %bf.clear16 = and i8 %bf.load15, 1
  %bf.cast17 = zext i8 %bf.clear16 to i32
  %tobool18 = icmp ne i32 %bf.cast17, 0
  br i1 %tobool18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end14
  %arrayidx20 = getelementptr inbounds [4 x i32], ptr %args, i64 0, i64 0
  %14 = load i32, ptr %arrayidx20, align 4
  %15 = load i32, ptr getelementptr inbounds (%struct.anon.0, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 3), i32 0, i32 2), align 4
  %cmp21 = icmp sgt i32 %14, %15
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then19
  %arrayidx23 = getelementptr inbounds [4 x i32], ptr %args, i64 0, i64 0
  %16 = load i32, ptr %arrayidx23, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then19
  %17 = load i32, ptr getelementptr inbounds (%struct.anon.0, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 3), i32 0, i32 2), align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %17, %cond.false ]
  store i32 %cond, ptr getelementptr inbounds (%struct.anon.0, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 3), i32 0, i32 2), align 4
  %arrayidx24 = getelementptr inbounds [4 x i32], ptr %args, i64 0, i64 1
  %18 = load i32, ptr %arrayidx24, align 4
  %19 = load i32, ptr getelementptr inbounds (%struct.anon.0, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 3), i32 0, i32 3), align 4
  %cmp25 = icmp sgt i32 %18, %19
  br i1 %cmp25, label %cond.true27, label %cond.false29

cond.true27:                                      ; preds = %cond.end
  %arrayidx28 = getelementptr inbounds [4 x i32], ptr %args, i64 0, i64 1
  %20 = load i32, ptr %arrayidx28, align 4
  br label %cond.end30

cond.false29:                                     ; preds = %cond.end
  %21 = load i32, ptr getelementptr inbounds (%struct.anon.0, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 3), i32 0, i32 3), align 4
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false29, %cond.true27
  %cond31 = phi i32 [ %20, %cond.true27 ], [ %21, %cond.false29 ]
  store i32 %cond31, ptr getelementptr inbounds (%struct.anon.0, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 3), i32 0, i32 3), align 4
  %arrayidx32 = getelementptr inbounds [4 x i32], ptr %args, i64 0, i64 2
  %22 = load i32, ptr %arrayidx32, align 4
  %23 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 3), align 4
  %cmp33 = icmp slt i32 %22, %23
  br i1 %cmp33, label %cond.true35, label %cond.false37

cond.true35:                                      ; preds = %cond.end30
  %arrayidx36 = getelementptr inbounds [4 x i32], ptr %args, i64 0, i64 2
  %24 = load i32, ptr %arrayidx36, align 4
  br label %cond.end38

cond.false37:                                     ; preds = %cond.end30
  %25 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 3), align 4
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false37, %cond.true35
  %cond39 = phi i32 [ %24, %cond.true35 ], [ %25, %cond.false37 ]
  store i32 %cond39, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 3), align 4
  %arrayidx40 = getelementptr inbounds [4 x i32], ptr %args, i64 0, i64 3
  %26 = load i32, ptr %arrayidx40, align 4
  %27 = load i32, ptr getelementptr inbounds (%struct.anon.0, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 3), i32 0, i32 1), align 4
  %cmp41 = icmp slt i32 %26, %27
  br i1 %cmp41, label %cond.true43, label %cond.false45

cond.true43:                                      ; preds = %cond.end38
  %arrayidx44 = getelementptr inbounds [4 x i32], ptr %args, i64 0, i64 3
  %28 = load i32, ptr %arrayidx44, align 4
  br label %cond.end46

cond.false45:                                     ; preds = %cond.end38
  %29 = load i32, ptr getelementptr inbounds (%struct.anon.0, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 3), i32 0, i32 1), align 4
  br label %cond.end46

cond.end46:                                       ; preds = %cond.false45, %cond.true43
  %cond47 = phi i32 [ %28, %cond.true43 ], [ %29, %cond.false45 ]
  store i32 %cond47, ptr getelementptr inbounds (%struct.anon.0, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 3), i32 0, i32 1), align 4
  br label %if.end52

if.else:                                          ; preds = %if.end14
  %arrayidx48 = getelementptr inbounds [4 x i32], ptr %args, i64 0, i64 0
  %30 = load i32, ptr %arrayidx48, align 4
  store i32 %30, ptr getelementptr inbounds (%struct.anon.0, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 3), i32 0, i32 2), align 4
  %arrayidx49 = getelementptr inbounds [4 x i32], ptr %args, i64 0, i64 1
  %31 = load i32, ptr %arrayidx49, align 4
  store i32 %31, ptr getelementptr inbounds (%struct.anon.0, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 3), i32 0, i32 3), align 4
  %arrayidx50 = getelementptr inbounds [4 x i32], ptr %args, i64 0, i64 2
  %32 = load i32, ptr %arrayidx50, align 4
  store i32 %32, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 3), align 4
  %arrayidx51 = getelementptr inbounds [4 x i32], ptr %args, i64 0, i64 3
  %33 = load i32, ptr %arrayidx51, align 4
  store i32 %33, ptr getelementptr inbounds (%struct.anon.0, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 3), i32 0, i32 1), align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then, %if.then5, %if.else, %cond.end46
  ret void
}

; Function Attrs: nounwind
declare ptr @strchr(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @parseStatusLine(ptr noundef %line, ptr noundef %pcpos) #0 {
entry:
  %line.addr = alloca ptr, align 8
  %pcpos.addr = alloca ptr, align 8
  %strt = alloca ptr, align 8
  %next = alloca ptr, align 8
  %pc = alloca float, align 4
  store ptr %line, ptr %line.addr, align 8
  store ptr %pcpos, ptr %pcpos.addr, align 8
  %0 = load ptr, ptr %pcpos.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 -1
  store ptr %add.ptr, ptr %strt, align 8
  %1 = load ptr, ptr %pcpos.addr, align 8
  %2 = load ptr, ptr %line.addr, align 8
  %cmp = icmp eq ptr %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end25

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %if.end
  %3 = load ptr, ptr %strt, align 8
  %4 = load ptr, ptr %line.addr, align 8
  %cmp1 = icmp ne ptr %3, %4
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %strt, align 8
  %6 = load i8, ptr %5, align 1
  %conv = sext i8 %6 to i32
  %call = call i32 @isdigit(i32 noundef %conv) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %7 = load ptr, ptr %strt, align 8
  %8 = load i8, ptr %7, align 1
  %conv2 = sext i8 %8 to i32
  %cmp3 = icmp eq i32 %conv2, 46
  br i1 %cmp3, label %if.end6, label %if.then5

if.then5:                                         ; preds = %lor.lhs.false
  br label %while.end

if.end6:                                          ; preds = %lor.lhs.false, %while.body
  %9 = load ptr, ptr %strt, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 -1
  store ptr %incdec.ptr, ptr %strt, align 8
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %if.then5, %while.cond
  %10 = load ptr, ptr %strt, align 8
  %11 = load ptr, ptr %pcpos.addr, align 8
  %cmp7 = icmp eq ptr %10, %11
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %while.end
  br label %if.end25

if.end10:                                         ; preds = %while.end
  %12 = load ptr, ptr %strt, align 8
  %call11 = call double @"\01_strtod"(ptr noundef %12, ptr noundef %next)
  %conv12 = fptrunc double %call11 to float
  store float %conv12, ptr %pc, align 4
  %bf.load = load i8, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 2), align 8
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool13 = icmp ne i32 %bf.cast, 0
  br i1 %tobool13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  %13 = load float, ptr %pc, align 4
  %conv15 = fpext float %13 to double
  %14 = load ptr, ptr %strt, align 8
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, double noundef %conv15, ptr noundef %14)
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end10
  %15 = load ptr, ptr %next, align 8
  %16 = load ptr, ptr %pcpos.addr, align 8
  %cmp18 = icmp eq ptr %15, %16
  br i1 %cmp18, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.end17
  %17 = load float, ptr %pc, align 4
  %18 = load float, ptr @state, align 8
  %cmp20 = fcmp une float %17, %18
  br i1 %cmp20, label %if.then22, label %if.end25

if.then22:                                        ; preds = %land.lhs.true
  %19 = load float, ptr %pc, align 4
  store float %19, ptr @state, align 8
  %bf.load23 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 2), align 8
  %bf.clear24 = and i8 %bf.load23, -2
  %bf.set = or i8 %bf.clear24, 1
  store i8 %bf.set, ptr getelementptr inbounds (%struct.anon, ptr @state, i32 0, i32 2), align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then, %if.then9, %if.then22, %land.lhs.true, %if.end17
  ret void
}

; Function Attrs: nounwind
declare ptr @strrchr(ptr noundef, i32 noundef) #1

declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isdigit(i32 noundef) #3

declare double @"\01_strtod"(ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

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
