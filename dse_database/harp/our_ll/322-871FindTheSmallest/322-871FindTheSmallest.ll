; ModuleID = 'code/322-871FindTheSmallest.c'
source_filename = "code/322-871FindTheSmallest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%c%lld\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"n: %lld ; m_i: %d ; tmp: %d ; %c\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"step. Error. Expected \0A%s\0A but got \0A%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"strcmp(sact, expr) == 0\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"code/322-871FindTheSmallest.c\00", align 1
@__PRETTY_FUNCTION__.dotest = private unnamed_addr constant [31 x i8] c"void dotest(long long, char *)\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"126235, 2, 0\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"29917, 0, 1\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"238565, 3, 1\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"239687, 4, 1\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"26945, 3, 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smallest_idx_between(i8* %str, i32 %start, i32 %end) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %smallest = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %start, i32* %start.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %0 = load i32, i32* %start.addr, align 4
  store i32 %0, i32* %smallest, align 4
  %1 = load i32, i32* %start.addr, align 4
  store i32 %1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %end.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %str.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %sub = sub nsw i32 %conv, 48
  %7 = load i8*, i8** %str.addr, align 8
  %8 = load i32, i32* %smallest, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 %idxprom1
  %9 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %9 to i32
  %sub4 = sub nsw i32 %conv3, 48
  %cmp5 = icmp slt i32 %sub, %sub4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  store i32 %10, i32* %smallest, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %smallest, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @smallest(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %result = alloca i64*, align 8
  %temp = alloca [100 x i8], align 16
  %min_idx = alloca i32, align 4
  %tmp = alloca i32, align 4
  %temp_char = alloca i8, align 1
  %i = alloca i64, align 8
  %i25 = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  %call = call noalias align 16 i8* @malloc(i64 24) #5
  %0 = bitcast i8* %call to i64*
  store i64* %0, i64** %result, align 8
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %temp, i64 0, i64 0
  %1 = load i64, i64* %n.addr, align 8
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %1) #5
  store i32 0, i32* %min_idx, align 4
  store i32 -1, i32* %tmp, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %2 = load i32, i32* %tmp, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %tmp, align 4
  %arraydecay2 = getelementptr inbounds [100 x i8], [100 x i8]* %temp, i64 0, i64 0
  %3 = load i32, i32* %tmp, align 4
  %arraydecay3 = getelementptr inbounds [100 x i8], [100 x i8]* %temp, i64 0, i64 0
  %call4 = call i64 @strlen(i8* %arraydecay3) #6
  %conv = trunc i64 %call4 to i32
  %call5 = call i32 @smallest_idx_between(i8* %arraydecay2, i32 %3, i32 %conv)
  store i32 %call5, i32* %min_idx, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %4 = load i32, i32* %min_idx, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %5 = load i32, i32* %min_idx, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [100 x i8], [100 x i8]* %temp, i64 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  store i8 %6, i8* %temp_char, align 1
  %7 = load i32, i32* %min_idx, align 4
  %add = add nsw i32 %7, 1
  %conv7 = sext i32 %add to i64
  store i64 %conv7, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %8 = load i64, i64* %i, align 8
  %arraydecay8 = getelementptr inbounds [100 x i8], [100 x i8]* %temp, i64 0, i64 0
  %call9 = call i64 @strlen(i8* %arraydecay8) #6
  %cmp10 = icmp ult i64 %8, %call9
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, i64* %i, align 8
  %arrayidx12 = getelementptr inbounds [100 x i8], [100 x i8]* %temp, i64 0, i64 %9
  %10 = load i8, i8* %arrayidx12, align 1
  %11 = load i64, i64* %i, align 8
  %sub = sub i64 %11, 1
  %arrayidx13 = getelementptr inbounds [100 x i8], [100 x i8]* %temp, i64 0, i64 %sub
  store i8 %10, i8* %arrayidx13, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i64, i64* %i, align 8
  %inc14 = add i64 %12, 1
  store i64 %inc14, i64* %i, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %arraydecay15 = getelementptr inbounds [100 x i8], [100 x i8]* %temp, i64 0, i64 0
  %call16 = call i64 @strlen(i8* %arraydecay15) #6
  %sub17 = sub i64 %call16, 1
  %arrayidx18 = getelementptr inbounds [100 x i8], [100 x i8]* %temp, i64 0, i64 %sub17
  store i8 0, i8* %arrayidx18, align 1
  %13 = load i32, i32* %tmp, align 4
  %cmp19 = icmp sgt i32 %13, 0
  br i1 %cmp19, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %arraydecay21 = getelementptr inbounds [100 x i8], [100 x i8]* %temp, i64 0, i64 0
  %call22 = call i64 @strlen(i8* %arraydecay21) #6
  %add23 = add i64 %call22, 1
  %arrayidx24 = getelementptr inbounds [100 x i8], [100 x i8]* %temp, i64 0, i64 %add23
  store i8 0, i8* %arrayidx24, align 1
  %arraydecay26 = getelementptr inbounds [100 x i8], [100 x i8]* %temp, i64 0, i64 0
  %call27 = call i64 @strlen(i8* %arraydecay26) #6
  %conv28 = trunc i64 %call27 to i32
  store i32 %conv28, i32* %i25, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc39, %if.then
  %14 = load i32, i32* %i25, align 4
  %15 = load i32, i32* %tmp, align 4
  %add30 = add nsw i32 %15, 1
  %cmp31 = icmp sge i32 %14, %add30
  br i1 %cmp31, label %for.body33, label %for.end40

for.body33:                                       ; preds = %for.cond29
  %16 = load i32, i32* %i25, align 4
  %sub34 = sub nsw i32 %16, 1
  %idxprom35 = sext i32 %sub34 to i64
  %arrayidx36 = getelementptr inbounds [100 x i8], [100 x i8]* %temp, i64 0, i64 %idxprom35
  %17 = load i8, i8* %arrayidx36, align 1
  %18 = load i32, i32* %i25, align 4
  %idxprom37 = sext i32 %18 to i64
  %arrayidx38 = getelementptr inbounds [100 x i8], [100 x i8]* %temp, i64 0, i64 %idxprom37
  store i8 %17, i8* %arrayidx38, align 1
  br label %for.inc39

for.inc39:                                        ; preds = %for.body33
  %19 = load i32, i32* %i25, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %i25, align 4
  br label %for.cond29, !llvm.loop !8

for.end40:                                        ; preds = %for.cond29
  %20 = load i8, i8* %temp_char, align 1
  %21 = load i32, i32* %i25, align 4
  %idxprom41 = sext i32 %21 to i64
  %arrayidx42 = getelementptr inbounds [100 x i8], [100 x i8]* %temp, i64 0, i64 %idxprom41
  store i8 %20, i8* %arrayidx42, align 1
  %arraydecay43 = getelementptr inbounds [100 x i8], [100 x i8]* %temp, i64 0, i64 0
  %call44 = call i32 @atoi(i8* %arraydecay43) #6
  %conv45 = sext i32 %call44 to i64
  %22 = load i64*, i64** %result, align 8
  %arrayidx46 = getelementptr inbounds i64, i64* %22, i64 0
  store i64 %conv45, i64* %arrayidx46, align 8
  br label %if.end

if.else:                                          ; preds = %for.end
  %arraydecay47 = getelementptr inbounds [100 x i8], [100 x i8]* %temp, i64 0, i64 0
  %call48 = call i32 @atoi(i8* %arraydecay47) #6
  %conv49 = sext i32 %call48 to i64
  %23 = load i64*, i64** %result, align 8
  %arrayidx50 = getelementptr inbounds i64, i64* %23, i64 0
  store i64 %conv49, i64* %arrayidx50, align 8
  %arraydecay51 = getelementptr inbounds [100 x i8], [100 x i8]* %temp, i64 0, i64 0
  %24 = load i8, i8* %temp_char, align 1
  %conv52 = sext i8 %24 to i32
  %25 = load i64*, i64** %result, align 8
  %arrayidx53 = getelementptr inbounds i64, i64* %25, i64 0
  %26 = load i64, i64* %arrayidx53, align 8
  %call54 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %conv52, i64 %26) #5
  %arraydecay55 = getelementptr inbounds [100 x i8], [100 x i8]* %temp, i64 0, i64 0
  %call56 = call i32 @atoi(i8* %arraydecay55) #6
  %conv57 = sext i32 %call56 to i64
  %27 = load i64*, i64** %result, align 8
  %arrayidx58 = getelementptr inbounds i64, i64* %27, i64 0
  store i64 %conv57, i64* %arrayidx58, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end40
  %28 = load i8, i8* %temp_char, align 1
  %conv59 = sext i8 %28 to i32
  %cmp60 = icmp ne i32 %conv59, 48
  br i1 %cmp60, label %if.then64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %29 = load i32, i32* %min_idx, align 4
  %cmp62 = icmp sgt i32 %29, 1
  br i1 %cmp62, label %if.then64, label %if.else69

if.then64:                                        ; preds = %lor.lhs.false, %if.end
  %30 = load i32, i32* %min_idx, align 4
  %conv65 = sext i32 %30 to i64
  %31 = load i64*, i64** %result, align 8
  %arrayidx66 = getelementptr inbounds i64, i64* %31, i64 1
  store i64 %conv65, i64* %arrayidx66, align 8
  %32 = load i32, i32* %tmp, align 4
  %conv67 = sext i32 %32 to i64
  %33 = load i64*, i64** %result, align 8
  %arrayidx68 = getelementptr inbounds i64, i64* %33, i64 2
  store i64 %conv67, i64* %arrayidx68, align 8
  br label %if.end73

if.else69:                                        ; preds = %lor.lhs.false
  %34 = load i64*, i64** %result, align 8
  %arrayidx70 = getelementptr inbounds i64, i64* %34, i64 1
  store i64 0, i64* %arrayidx70, align 8
  %35 = load i32, i32* %min_idx, align 4
  %conv71 = sext i32 %35 to i64
  %36 = load i64*, i64** %result, align 8
  %arrayidx72 = getelementptr inbounds i64, i64* %36, i64 2
  store i64 %conv71, i64* %arrayidx72, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.else69, %if.then64
  %37 = load i64, i64* %n.addr, align 8
  %38 = load i32, i32* %min_idx, align 4
  %39 = load i32, i32* %tmp, align 4
  %40 = load i8, i8* %temp_char, align 1
  %conv74 = sext i8 %40 to i32
  %call75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %37, i32 %38, i32 %39, i32 %conv74)
  %41 = load i64*, i64** %result, align 8
  ret i64* %41
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @array2StringLongLong(i64* %arr, i32 %size) #0 {
entry:
  %arr.addr = alloca i64*, align 8
  %size.addr = alloca i32, align 4
  %result = alloca i8*, align 8
  %temp = alloca [50 x i8], align 16
  %i = alloca i32, align 4
  store i64* %arr, i64** %arr.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %mul = mul nsw i32 %0, 7
  %conv = sext i32 %mul to i64
  %call = call noalias align 16 i8* @malloc(i64 %conv) #5
  store i8* %call, i8** %result, align 8
  %1 = load i8*, i8** %result, align 8
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)) #5
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %temp, i64 0, i64 0
  %call2 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)) #5
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay4 = getelementptr inbounds [50 x i8], [50 x i8]* %temp, i64 0, i64 0
  %4 = load i64*, i64** %arr.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i64, i64* %4, i64 %idxprom
  %6 = load i64, i64* %arrayidx, align 8
  %call5 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %6) #5
  %7 = load i8*, i8** %result, align 8
  %arraydecay6 = getelementptr inbounds [50 x i8], [50 x i8]* %temp, i64 0, i64 0
  %call7 = call i8* @strcat(i8* %7, i8* %arraydecay6) #5
  %8 = load i8*, i8** %result, align 8
  %call8 = call i8* @strcat(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #5
  %arraydecay9 = getelementptr inbounds [50 x i8], [50 x i8]* %temp, i64 0, i64 0
  %call10 = call i8* @strcpy(i8* %arraydecay9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %10 = load i8*, i8** %result, align 8
  %11 = load i8*, i8** %result, align 8
  %call11 = call i64 @strlen(i8* %11) #6
  %sub = sub i64 %call11, 2
  %arrayidx12 = getelementptr inbounds i8, i8* %10, i64 %sub
  store i8 0, i8* %arrayidx12, align 1
  %12 = load i8*, i8** %result, align 8
  ret i8* %12
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dotest(i64 %n, i8* %expr) #0 {
entry:
  %n.addr = alloca i64, align 8
  %expr.addr = alloca i8*, align 8
  %act = alloca i64*, align 8
  %sact = alloca i8*, align 8
  store i64 %n, i64* %n.addr, align 8
  store i8* %expr, i8** %expr.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %call = call i64* @smallest(i64 %0)
  store i64* %call, i64** %act, align 8
  %1 = load i64*, i64** %act, align 8
  %call1 = call i8* @array2StringLongLong(i64* %1, i32 3)
  store i8* %call1, i8** %sact, align 8
  %2 = load i8*, i8** %sact, align 8
  %3 = load i8*, i8** %expr.addr, align 8
  %call2 = call i32 @strcmp(i8* %2, i8* %3) #6
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %expr.addr, align 8
  %5 = load i8*, i8** %sact, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* %4, i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %sact, align 8
  %7 = load i8*, i8** %expr.addr, align 8
  %call4 = call i32 @strcmp(i8* %6, i8* %7) #6
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 86, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.dotest, i64 0, i64 0)) #7
  unreachable

8:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %8, %cond.true
  %9 = load i64*, i64** %act, align 8
  %10 = bitcast i64* %9 to i8*
  call void @free(i8* %10) #5
  store i64* null, i64** %act, align 8
  %11 = load i8*, i8** %sact, align 8
  call void @free(i8* %11) #5
  store i8* null, i8** %sact, align 8
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  call void @dotest(i64 261235, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  call void @dotest(i64 209917, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  call void @dotest(i64 285365, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  call void @dotest(i64 296837, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  call void @dotest(i64 269045, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { noreturn nounwind }

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
